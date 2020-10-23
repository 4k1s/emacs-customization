;; set default theme

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load-theme 'tango-dark t)

;; start fullscreen
(toggle-frame-maximized)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; don't show startup screen
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (## web-mode virtualenv multi-web-mode js2-mode jedi go-complete flymake-shell flymake-gjshint flymake-css flatland-black-theme ecb company-php ac-php ac-html-bootstrap ac-html ac-capf ac-anaconda))))

;; set default working directory
(setq default-directory "~/coding")

;; auto-complete
(ac-config-default)

;; Open .v files with Proof General's Coq mode
(load "~/.emacs.d/lisp/PG/generic/proof-site")

(defadvice js-jsx-indent-line (after js-jsx-indent-line-after-hack activate)
  "Workaround sgml-mode and follow airbnb component style."
  (save-excursion
    (beginning-of-line)
    (if (looking-at-p "^ +\/?> *$")
        (delete-char sgml-basic-offset))))

;; activate js2-mode for .js files
;;(autoload 'js2-mode "js2" "js2 mode" t)
;;(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; node auto-complete
;;(add-to-list 'load-path "~/.emacs.d/node-ac")
;;(require 'node-ac-mode)
;;(setq node-ac-node-modules-path "/usr/lib/node_modules/npm/node_modules")

;; solidity
(add-to-list 'load-path "~/.emacs.d/emacs-solidity")
(require 'solidity-mode)

;; for qml
;;(autoload 'qml-mode "qml-mode" "Editing Qt Declarative." t)
''(add-to-list 'auto-mode-alist '("\\.qml$" . qml-mode))

;; neotree
(add-to-list 'load-path "~/.emacs.d/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; tabs
(add-to-list 'load-path "~/.emacs.d/plugins/awesometab")
(require 'awesome-tab)
(awesome-tab-mode t)
(global-set-key [M-down] 'awesome-tab-backward-tab)
(global-set-key [M-up] 'awesome-tab-forward-tab)
