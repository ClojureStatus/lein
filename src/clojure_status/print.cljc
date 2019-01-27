(ns clojure-status.print)

(defn prt
  [& args]
  (prn (apply str args)))
