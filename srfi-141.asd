;;;; srfi-229.asd

(cl:in-package :asdf)


(defsystem :srfi-141
  :version "20240804"
  :description "SRFI 141 for CL: Integer division"
  :long-description "SRFI 141 for CL: Integer division
https://srfi.schemers.org/srfi-141"
  :author "Taylor R. Campbell, William D Clinger"
  :maintainer "CHIBA Masaomi"
  :serial t
  :depends-on (r7rs-compat)
  :components ((:file "package")
               (:file "srfi-141")))


(defmethod perform :after ((o load-op) (c (eql (find-system :srfi-141))))
  (let ((name "https://github.com/g000001/srfi-141")
        (nickname :srfi-141))
    (if (and (find-package nickname)
             (not (eq (find-package nickname)
                      (find-package name))))
        (warn "~A: A package with name ~A already exists." name nickname)
        (rename-package name name `(,nickname)))))

;;; *EOF*
