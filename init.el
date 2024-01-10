(require 'package)

(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(add-to-list 'load-path "~/.emacs.d/site-lisp/")


; list the packages you want
(setq package-list
    '(flymd magit nasm-mode masm-mode astyle format-all clang-format flycheck zenburn-theme undo-fu smex gruber-darker-theme flymake flx-ido company-c-headers activity-watch-mode  chess avy auto-complete-clang))


; activate all the packages
(package-initialize)


; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
    
    (setq make-backup-files nil)

(delete-selection-mode 1)
(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z")   'undo-fu-only-undo)
(global-set-key (kbd "C-S-z") 'undo-fu-only-redo)
(setq select-enable-clipboard t)
;(setq interprogram-paste-function 'x-selection-value)



(require 'ido)
;;(ido-mode t)
(global-set-key (kbd "M-x") 'smex)
(ido-everywhere t)
(flyspell-mode t)
(setq flyspell-prog-mode t)
(flymake-mode t)
(global-flycheck-mode t)
(global-display-line-numbers-mode t)

(global-activity-watch-mode)

(global-set-key (kbd "C-<") 'format-all-buffer)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e27c9668d7eddf75373fa6b07475ae2d6892185f07ebed037eedf783318761d7" default))
 '(package-selected-packages
   '(magit activity-watch-mode zenburn-theme undo-fu smex nasm-mode masm-mode gruber-darker-theme format-all flymd flycheck flx-ido company-c-headers clang-format chess avy auto-complete-clang astyle)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
