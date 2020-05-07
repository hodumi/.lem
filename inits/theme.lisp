(defpackage #:lem-my-init/theme
  (:use #:cl
        #:lem))
(in-package #:lem-my-init/theme)


(load-library "pygments-colorthemes")
(load-theme   "monokai")

(setf (lem:variable-value 'lem.line-numbers:line-numbers :global) t)