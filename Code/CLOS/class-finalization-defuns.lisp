(cl:in-package #:sicl-clos)

(defun finalize-inheritance (class)
  (finalize-inheritance-default class))

(defun compute-default-initargs (class)
  (compute-default-initargs-default class))

(defun compute-slots (class)
  (let ((slots (compute-slots-default class)))
    (compute-slots-around-default slots)
    slots))

(defun compute-effective-slot-definition (class name direct-slot-definitions)
  (compute-effective-slot-definition-default
   name
   direct-slot-definitions
   (effective-slot-definition-class class)))
  
(defun compute-class-precedence-list (class)
  (compute-class-precedence-list-default class))
