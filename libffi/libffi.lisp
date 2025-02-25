;;;; -*- Mode: lisp; indent-tabs-mode: nil -*-
;;;
;;; libffi.lisp --- Load libffi
;;;
;;; Copyright (C) 2009, 2011 Liam M. Healy
;;;
;;; Permission is hereby granted, free of charge, to any person
;;; obtaining a copy of this software and associated documentation
;;; files (the "Software"), to deal in the Software without
;;; restriction, including without limitation the rights to use, copy,
;;; modify, merge, publish, distribute, sublicense, and/or sell copies
;;; of the Software, and to permit persons to whom the Software is
;;; furnished to do so, subject to the following conditions:
;;;
;;; The above copyright notice and this permission notice shall be
;;; included in all copies or substantial portions of the Software.
;;;
;;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;;; NONINFRINGEMENT.  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
;;; HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
;;; WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
;;; DEALINGS IN THE SOFTWARE.
;;;

(in-package #:cffi)

(define-foreign-library (libffi)
  (:darwin (:or "libffi.dylib" "libffi32.dylib" "/usr/lib/libffi.dylib"))
  (:solaris (:or "/usr/lib/amd64/libffi.so" "/usr/lib/libffi.so"))
  ((:or :freebsd :openbsd) "libffi.so")
  (:unix (:or "libffi.so.8" "libffi32.so.8" "libffi.so.7" "libffi32.so.7" "libffi.so.6" "libffi32.so.6" "libffi.so.5" "libffi32.so.5" "libffi.so" "libffi32.so"))
  (:windows (:or "libffi-8.dll" "libffi-7.dll" "libffi-6.dll" "libffi-5.dll" "libffi.dll"))
  (t (:default "libffi")))

(load-foreign-library 'libffi)
