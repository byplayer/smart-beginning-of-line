;;; smart-beginning-of-line.el --- provide smart beginning of line function

;; Copyright (C) 2024-2020 byplayer

;; Author: byplayer <byplayer100@gmail.com>
;; Maintainer: byplayer <byplayer100@gmail.com>
;; Homepage: https://github.com/byplayer/smart-beginning-of-line
;; Version: 0.1
;; Package-Requires:

;;; Commentary:

;; 'smart-beginning-of-line.el' is a simple library to toggle cussor position
;; between `back-to-indentation' and `beginning-of-line'.

(defun smart-beginning-of-line ()
  "Move point to `back-to-indentation'. If cursor is already `back-to-indentation'
   position, move to `beginning-of-line'."
  (interactive "^")
  (let
      ((old_pos 0))
    (setq old_pos (point))
    (back-to-indentation)
    (if 
	(= old_pos (point))
	(beginning-of-line))))


(provide 'smart-beginning-of-line)

;;; smart-beginning-of-line.el ends here
