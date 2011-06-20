;; package manager repos

;;(require 'package)
;;(mapc '(lambda (item) (add-to-list 'package-archives item))
;;     '(("elpa" . "http://tromey.com/elpa/")
;;       ("technomancy" . "http://repo.technomancy.us/emacs/")
;;       ("marmalade" . "http://marmalade-repo.org/packages/")))
;;(package-initialize)

;; load everything in elisp

(add-to-list 'load-path "~/.emacs.d/elisp")

;; load nxhtml

(load "~/.emacs.d/nxhtml/autostart.el")

;; load javascript mode

(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))
(autoload 'javascript-mode "javascript" nil t)

;; coffeescript mode

(add-to-list 'load-path "~/.emacs.d/elisp/coffee-mode")

(require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("\\Cakefile" . coffee-mode))

;; load css mode

(add-to-list 'auto-mode-alist '("\\.css" . css-mode))
(autoload 'css-mode "css-mode" "Mode for editing CSS files" t)

;; load ruby-mode and other ruby things here

(autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

;; load haml mode

(require 'haml-mode)
(add-hook 'haml-mode-hook
          '(lambda ()
             (setq indent-tabs-mode nil)
             (define-key haml-mode-map "\C-m" 'newline-and-indent)))

;; load sass mode

(require 'sass-mode)


(add-to-list 'auto-mode-alist '("\\.scss$" . sass-mode))

;; kill the evil startup message before it takes over the world

; key-bindings stuffs

(eval-after-load 'tramp
  '(progn (define-key ido-common-completion-map (kbd "C-p") 'ido-prev-match)
          (define-key ido-common-completion-map (kbd "C-n") 'ido-next-match)))

(setq inhibit-startup-message t)

; window switching keybindings

(global-set-key [M-left] 'windmove-left)          ; move to left windnow
(global-set-key [M-right] 'windmove-right)        ; move to right window
(global-set-key [M-up] 'windmove-up)              ; move to upper window
(global-set-key [M-down] 'windmove-down)          ; move to downer window

;; Turn transient-mark mode on
(setq transient-mark-mode t)

;; Display line and column numbers
(setq line-number-mode t)
(setq column-number-mode t)

;; Remove unnecessary GUI stuff
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode 1))

;; turn blinking cursor off

(blink-cursor-mode 0)

;; custom color scheme

(set-background-color "black")
(set-face-background 'default "black")
(set-face-background 'region "black")
(set-face-foreground 'default "white")
(set-face-foreground 'region "gray60")
(set-foreground-color "white")
(set-cursor-color "blue")


;; start the emacs server
(server-start)

;; start emacs maximized

(defun toggle-fullscreen ()
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
                                                 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
                         '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0)))
;; (toggle-fullscreen)


(define-derived-mode prog-mode fundamental-mode "Prog"
  "Major mode for editing programming language source code."
  (set (make-local-variable 'require-final-newline) mode-require-final-newline)
  (set (make-local-variable 'parse-sexp-ignore-comments) t)
  ;; Any programming language is always written left to right.
  (setq bidi-paragraph-direction 'left-to-right))


;; initialize the emacs package handler

(load "~/.emacs.d/elpa/package.el")
(package-initialize)


;; custom, emacs-generated stuff below

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(before-save-hook (quote (whitespace-cleanup)))
 '(coffee-tab-width 2)
 '(global-linum-mode t)
 '(ido-enable-flex-matching t)
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 '(ido-save-directory-list-file "~/.emacs.d/tmp/ido.last")
 '(indent-tabs-mode nil)
 '(standard-indent 2)
 '(tab-stop-list (quote (2 4 6 8 10 12 14 16 18 20 22 24 26 28 30)))
 '(tab-width 2))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; nxhtml stuff

;; (load "./nxhtml/autostart.el")