(define (problem objectMoveProb)
   (:domain objectMoveDom)
   (:objects room1 room2 room3 room4 room5 room6 room7 room8 room9 obj3 obj2 obj1 grip)
   (:init (room room1)
          (room room2)
	  (room room3)
	  (room room4)
	  (room room5)
	  (room room6)
	  (room room7)
	  (room room8)
	  (room room9)
          (object obj3)
          (object obj2)
          (object obj1)
          (gripAtRoom room1)
	  (free grip)
          (objInRoom obj3 room7)
          (objInRoom obj2 room4)
          (objInRoom obj1 room6)
	  (canMoveBetween room1 room4)
	  (canMoveBetween room4 room1)
	  (canMoveBetween room4 room5)
	  (canMoveBetween room5 room4)
	  (canMoveBetween room5 room8)
	  (canMoveBetween room8 room5)
	  (canMoveBetween room8 room7)
	  (canMoveBetween room7 room8)
	  (canMoveBetween room5 room6)
	  (canMoveBetween room6 room5)
	  (canMoveBetween room6 room9)
	  (canMoveBetween room9 room6)
	  (canMoveBetween room6 room3)
	  (canMoveBetween room3 room6)
	  (canMoveBetween room3 room2)
	  (canMoveBetween room2 room3)
	  (occupied room7)
	  (occupied room4)
	  (occupied room6)
          (gripper grip))
   (:goal (and (objInRoom obj3 room9)
               (objInRoom obj2 room2)
               (objInRoom obj1 room7))))
