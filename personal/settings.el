(setq prelude-user-init-file load-file-name)
(global-linum-mode t)
(prelude-require-packages '(yasnippet))
(require 'yasnippet)
(yas-global-mode t)
(add-to-list 'load-path "~/.emacs.d/personal/jdee-2.4.1/lisp")
(load "jde")
(global-set-key (kbd "C-z") 'compile)
