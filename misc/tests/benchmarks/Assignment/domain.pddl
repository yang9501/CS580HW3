(define (domain objectMoveDom)
   (:predicates (room ?r)
		(object ?o)
		(gripper ?g)
		(gripAtRoom ?r)
		(objInRoom ?o ?r)
		(wallBetween ?r1 ?r2)
		(free ?g)
		(carry ?o ?g)
		(occupied ?r))

   (:action MoveWithoutObject
       :parameters  (?from ?to ?grip)
       :precondition (and  (room ?from) (room ?to) (gripAtRoom ?from) (gripper ?grip) (free ?grip) (not (wallBetween ?from ?to)))
       :effect (and  (gripAtRoom ?to)
		     (not (gripAtRoom ?from))))

   (:action MoveWithObject
       :parameters  (?from ?to ?grip)
       :precondition (and  (room ?from) (room ?to) (gripAtRoom ?from) (gripper ?grip) (not (free ?grip)) (not (wallBetween ?from ?to)) (not (occupied ?to)))
       :effect (and  (gripAtRoom ?to)
		     (not (gripAtRoom ?from))))

   (:action Pickup
       :parameters (?obj ?room ?gripper)
       :precondition  (and  (object ?obj) (room ?room) (gripper ?gripper)
			    (objInRoom ?obj ?room) (gripAtRoom ?room) (free ?gripper))
       :effect (and (carry ?obj ?gripper)
		    (not (occupied ?room))
		    (not (objInRoom ?obj ?room)) 
		    (not (free ?gripper))))

   (:action Release
       :parameters  (?obj ?room ?gripper)
       :precondition  (and  (object ?obj) (room ?room) (gripper ?gripper)
			    (carry ?obj ?gripper) (gripAtRoom ?room) (not(objInRoom ?obj ?room)))
       :effect (and (objInRoom ?obj ?room)
		    (free ?gripper)
                    (occupied ?room)
		    (not (carry ?obj ?gripper)))))

