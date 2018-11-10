(in-package :cl-user)

(defpackage lambda-server-console.route
  (:use :cl)
  (:shadowing-import-from :lambda-server-console :*web-context-root*))

(in-package :lambda-server-console.route)

;; start defining routes for the console application
(lambda-server.api:defroute ("/")
  "<h2>Welcome to Lambda Server Console Application</h2>")
