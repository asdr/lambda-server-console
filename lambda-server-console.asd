#|
  This file is a part of lambda-server-console project.
|#

(defsystem "lambda-server-console"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "lambda-server-console")
                 (:file "route"))))
  :description ""
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "lambda-server-console-test"))))
