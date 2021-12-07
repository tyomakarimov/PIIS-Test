(setv array [23 46 48 17 1876 345 -4 32 76 900 261 894])

(print array)

(defn find_max [array even_indices]
  (setv max 0)
  (if (not even_indices) (setv max 1))
  (setv i (+ max 2))
  (setv number_of_elements (len array))
  (while (< i (- number_of_elements 1))
    (if (> (get array i) (get array max))
      (setv max i)
    )
    (setv i (+ i 2))
  )
  (return (get array max))
)

(print "The max element of given array among elements with even indices is" (find_max array True))
(print "The max element of given array among elements with odd indices is" (find_max array False))
