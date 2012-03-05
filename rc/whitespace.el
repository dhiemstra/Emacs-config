;; whitespace mode
(require 'whitespace)

(setq whitespace-line-column 80)
(setq whitespace-style '(face tabs trailing lines-tailface))

;; face for long lines' tails
(set-face-attribute 'whitespace-line nil
                    :background "red1"
                    :foreground "yellow"
                    :weight 'bold)

;; face for Tabs
(set-face-attribute 'whitespace-tab nil
                    :background "red1"
                    :foreground "yellow"
                    :weight 'bold)

(global-whitespace-mode 1)
(whitespace-mode 1)

(add-hook 'write-file-hooks 'delete-trailing-whitespace)

