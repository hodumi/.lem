;; don't edit !!!
(asdf/parse-defsystem:defsystem "lem-site-init"
  :components
  ((:file "inits/auto-save") (:file "inits/key") (:file "inits/theme")))