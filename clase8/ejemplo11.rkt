#lang racket
(regexp-match* #rx"a(a|b)*b(a|b)*b(a|b)*a" "abaaaba")