(setq prelude-user-init-file load-file-name)
(global-linum-mode t)
(prelude-require-packages '(yasnippet))
(require 'yasnippet)
(yas-global-mode t)
(add-to-list 'load-path "~/.emacs.d/personal/jdee-2.4.1/lisp")
(load "jde")
(global-set-key (kbd "C-z") 'compile)
(column-number-mode)
(global-linum-mode)

(setq jde-mode-line-format '("-" mode-line-mule-info mode-line-modified mode-line-frame-identification mode-line-buffer-identification " " global-mode-string
                             (line-number-mode "(%l,")
                             (column-number-mode "%c)")
                             (jde-which-method-mode
                              ("  " jde-which-method-format "  "))
                             "%[(" mode-name mode-line-process minor-mode-alist "%n" ")%] "
                             (-3 . "%p")))
