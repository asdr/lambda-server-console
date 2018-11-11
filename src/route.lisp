(in-package :cl-user)

(defpackage lambda-server-console.route
  (:use :cl)
  (:shadowing-import-from :lambda-server-console :*web-context-root*))

(in-package :lambda-server-console.route)

;; start defining routes for the console application
(lambda-server.api:defroute ("/")
  (set-response-header "content-type" "text/html")
  (format nil "<h2>Welcome to Lambda Server Console Application</h2"))

(lambda-server.api:defroute ("/info" :method :post)
  (add-response-header "content-type" "text/plain")
  (concatenate 'string
               (format nil "Env: - ~a~%" (get-env))
               (format nil "Uri: - ~a~%" (get-uri))
               (format nil "Method: - ~a~%" (get-method))
               (format nil "Content: - ~a~%" (get-content))
               (format nil "Cookies: - ~a~%" (get-cookies))
               (format nil "Raw Body: - ~a~%" (get-raw-body))
               (format nil "Path Info: - ~a~%" (get-path-info))
               (format nil "Parameters: - ~a~%" (get-parameters))
               (format nil "Uri Scheme: - ~a~%" (get-uri-scheme))
               (format nil "Remote Addr: - ~a~%" (get-remote-addr))
               (format nil "Remote Port: - ~a~%" (get-remote-port))
               (format nil "Script Name: - ~a~%" (get-script-name))
               (format nil "Server Name: - ~a~%" (get-server-name))
               (format nil "Server Port: - ~a~%" (get-server-port))
               (format nil "Content Type: - ~a~%" (get-content-type))
               (format nil "Query String: - ~a~%" (get-query-string))
               (format nil "Content Length: - ~a~%" (get-content-length))
               (format nil "Body Parameters: - ~a~%" (get-body-parameters))
               (format nil "Server Protocol: - ~a~%" (get-server-protocol))
               (format nil "Query Parameters: - ~a~%" (get-query-parameters))))
