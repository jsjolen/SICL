(cl:in-package #:sicl-boot)

(defun fill-boot ()
  (phase1)
  (phase2)
  (phase3))

(defmethod initialize-instance :after ((boot boot) &key &allow-other-keys)
  (let ((*pristine-env* (c1 boot))
	(*phase1-mop-accessor-env* (r2 boot))
	(*phase1-mop-class-env* (r1 boot))
	(*phase2-mop-accessor-env* (r3 boot))
	(*phase2-mop-class-env* (r2 boot)))
    (fill-boot)))
