(ns clojure-status.core
  (:require
    [clojure-status.print :as p])
  (:gen-class))

(defn -main []
    (p/prt "Sum: " (+ 2 4)))
