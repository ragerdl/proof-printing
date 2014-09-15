; acl2h

; Setup gtfl

(include-book "centaur/quicklisp/top" :dir :system)

:q

(ql:quickload 'gtfl)

(asdf:operate 'asdf:load-op :gtfl)

; Start the server

(gtfl::start-gtfl)

; (gtfl::gtfl-out (:h1 "hello world"))

