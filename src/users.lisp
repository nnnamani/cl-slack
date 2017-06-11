(in-package :cl-slack.users)

(defmethod list ((client cl-slack.core:slack-client)
                 (optionals cl:list))
  (cl-slack.core:send "users.list"
                      (format nil "?token=~A~A"
                              (cl-slack.core:token client)
                              (cl-slack.core:to-param optionals))))
                              


