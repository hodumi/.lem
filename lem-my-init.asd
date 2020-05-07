(defsystem "lem-my-init"
  :author "Hodumi"
  :license "BSD 2-Clause"
  :description "Configurations for lem"
  :serial t
  :depends-on ("lem-trailing-spaces"
               "lem-lisp-mode")
  :components ((:file "inits/theme")
               (:file "inits/auto-save")
               (:file "inits/key")))