(setq prelude-user-init-file load-file-name)

;; enables some std modes
(global-linum-mode t)
(column-number-mode)
(global-linum-mode)

(prelude-require-packages '(yasnippet java-snippets))
(require 'yasnippet)

(yas-global-mode t)

;; commented out JDE since I am not doing it right now, and it loads every time
;;(add-to-list 'load-path "~/.emacs.d/personal/jdee-2.4.1/lisp")
;;(load "jde")

;; KEY BINDINGS
(global-set-key (kbd "C-z") 'compile)
;; Magit rules!
(global-set-key (kbd "C-x g") 'magit-status)


;; fixes JDE lin num mode credit: Geoff Shannon
(setq jde-mode-line-format '("-" mode-line-mule-info mode-line-modified mode-line-frame-identification mode-line-buffer-identification " " global-mode-string
                             (line-number-mode "(%l,")
                             (column-number-mode "%c)")
                             (jde-which-method-mode
                              ("  " jde-which-method-format "  "))
                             "%[(" mode-name mode-line-process minor-mode-alist "%n" ")%] "
                             (-3 . "%p")))
(require 'js-comint)
(setq inferior-js-program-command "node --interactive")
(setq scroll-margin 5)


;; initial window (This seems janky)
;;(setq initial-frame-alist
;;      '(
;;        (width . 112) ; character
;;        (height . 60) ; lines
;;        ))

;; default/sebsequent window
;;(setq default-frame-alist
;;      '(
;;        (width . 110) ; character
;;        (height . 58) ; lines
;;        ))


;;; settings.el ends here
