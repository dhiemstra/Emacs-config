;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ruby

(add-hook 'ruby-mode-hook '(lambda ()
                             ;; work around possible elpa bug
                             (ignore-errors (require 'ruby-compilation))

                             (setq ruby-use-encoding-map nil)
                             (setq ruby-deep-arglist t)
                             (setq ruby-deep-indent-paren nil)
                             (setq c-tab-always-indent nil)

                             ;; (require 'inf-ruby)
                             ;; (add-hook 'ruby-mode-hook 'inf-ruby-keys)
                             (define-key ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
                             (define-key ruby-mode-map (kbd "C-M-h") 'backward-kill-word)))


;; Rake files are ruby, too, as are gemspecs, rackup files, etc.
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rjs$" . ruby-mode))
(add-to-list 'auto-mode-alist '(".irbrc$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rabl" . ruby-mode))
