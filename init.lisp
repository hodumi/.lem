(in-package :lem-user)

; Load Inits from asd
(let ((asdf:*central-registry* (cons #P"~/.lem/" asdf:*central-registry*)))
  (ql:quickload :lem-my-init))


(defun run-shell-command (cmd)
  (with-output-to-string (out)
    (uiop:run-program cmd :output out :if-input-does-not-exist :supersede)))

(defun insert-newline (point)
  (insert-character point #\newline ))

(defun shell-command (cmd)
  (let ((buffer (make-buffer "*shell-result*")))
    (insert-newline (buffer-end-point buffer))
    (insert-string (buffer-end-point buffer) "====================================")
    (insert-newline (buffer-end-point buffer))
    (insert-string (buffer-end-point buffer) (run-shell-command cmd))
    (insert-newline (buffer-end-point buffer))

    (select-buffer buffer)
    ))

;(shell-command "git")
;(shell-command "ls")