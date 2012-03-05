;; This is needed for Erlang mode setup
(setq erlang-root-dir "/usr/local/lib/erlang")
(setq load-path (cons "/usr/local/lib/erlang/lib/tools-2.6.6.6/emacs" load-path))
(setq exec-path (cons "/usr/local/lib/erlang/bin" exec-path))
(require 'erlang-start)
