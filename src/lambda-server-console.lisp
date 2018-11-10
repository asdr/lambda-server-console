(in-package :cl-user)

(defpackage lambda-server-console
  (:use :cl)
  (:export :*web-context-root*))
(in-package :lambda-server-console)

(defparameter *web-context-root* "console")
