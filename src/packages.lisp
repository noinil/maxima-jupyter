
(defpackage #:fredokun-utilities
  (:nicknames #:fredo-utils)
  (:use #:cl)
  (:export *example-enabled*
           *example-equal-predicate*
           example
           example-progn
           *logg-enabled*
           *logg-level*
           logg
           vbinds
           afetch
	   while
	   read-file-lines
	   read-binary-file))

(defpackage #:myjson
  (:use #:cl #:fredo-utils)
  (:export parse-json
	   parse-json-from-string
	   encode-json
	   encode-json-to-string))

(defpackage #:fishbowl
  (:use #:cl #:fredo-utils #:myjson)
  (:export 
   display
   display-plain render-plain
   display-html render-html
   display-markdown render-markdown
   display-latex render-latex
   display-png render-png
   display-jpeg render-jpeg
   display-svg render-svg
   display-json render-json
   display-javascript render-javascript
   kernel-start))

(defpackage #:fishbowl-user
  (:use #:cl #:fredo-utils #:common-lisp-user)
  (:export 
   display
   display-plain render-plain
   display-html render-html
   display-markdown render-markdown
   display-latex render-latex
   display-png render-png
   display-jpeg render-jpeg
   display-svg render-svg
   display-json render-json
   display-javascript render-javascript
   png-from-file
   quit))

(in-package #:fishbowl)
