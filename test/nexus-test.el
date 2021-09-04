;;; nexus-test.el --- Emacs Nexus tests              -*- lexical-binding: t; -*-

;; Copyright (C) 2021  Jürgen Hötzel

;; Author: Jürgen Hötzel <juergen@hoetzel.info>
;; Keywords: test

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:

(require 'buttercup)
(require 'nexus)


(describe "nexus-find-by-coordinates"
  (before-each
    (spy-on 'nexus--search-coordinates-internal :and-call-through))

  (it "Returns a list of clojure artifacts"
    (nexus-search-coordinates "org.clojure" "clojure" "1.10.3" "jar" "")
    (expect
     (spy-context-return-value
      (spy-calls-most-recent 'nexus--search-coordinates-internal))
     :to-equal '(((:artifactId "clojure") (:groupId "org.clojure") (:resourceURI nil) (:version "1.10.3") (:classifier nil)))))
  (it "Returns nil on non existing clojure artifacts"
    (nexus-search-coordinates "org.clojure" "clojure" "1.10.3-special-edition" "jar" "")
    (expect
     (spy-context-return-value
      (spy-calls-most-recent 'nexus--search-coordinates-internal))
     :to-equal nil)))

(provide 'nexus-test)
;;; nexus-test.el ends here
