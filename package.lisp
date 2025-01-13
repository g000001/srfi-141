;;;; package.lisp

(cl:in-package cl-user)


(defpackage "https://github.com/g000001/srfi-141"
  (:use)
  (:export ceiling/ ceiling-quotient ceiling-remainder)
  (:export floor/ floor-quotient floor-remainder)
  (:export truncate/ truncate-quotient truncate-remainder)
  (:export round/ round-quotient round-remainder)
  (:export euclidean/ euclidean-quotient euclidean-remainder)
  (:export balanced/ balanced-quotient balanced-remainder)
  (:export ceiling/ ceiling-quotient ceiling-remainder))


(defpackage "https://github.com/g000001/srfi-141#internals"
  (:use "https://github.com/g000001/r7rs-compat"
        "https://github.com/g000001/srfi-141")
  (:shadow truncate/ floor-remainder floor-quotient floor/ truncate-remainder truncate-quotient))

 
;;; *EOF*
