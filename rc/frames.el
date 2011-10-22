;; Settings for Frames and Windows

; disable tool bar
(tool-bar-mode -1)
; disable scroll bar
(scroll-bar-mode -1)

;; size and position of the initial frame
(setq initial-frame-alist '((top . 0) (left . 0)
			    (width . 83) (height . 46)
			    (cursor-type . box)))

;; size and position of the new frames
(setq default-frame-alist '((width . 83) (height . 46)
			    (cursor-type . box)))

(setq-default cursor-type 'box)

(defun toggle-fullscreen () 
  (interactive) 
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen) 
                                           nil 
					 'fullboth))) 

