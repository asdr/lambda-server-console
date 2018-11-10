#|
  This file is a part of lambda-server-console project.
|#

(defsystem "lambda-server-console-test"
  :defsystem-depends-on ("prove-asdf")
  :author ""
  :license ""
  :depends-on ("lambda-server-console"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "lambda-server-console"))))
  :description "Test system for lambda-server-console"

  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
