;;
;; highlight lines exceeding 80 characters and trailing whitespace.
(require 'whitespace)
(setq whitespace-style '(face empty lines-tail trailing))
(global-whitespace-mode t)
					;disable backup
(setq backup-inhibited t)
					;disable auto save
(setq auto-save-default nil)
;; make {copy, cut, paste, undo} have {C-c, C-x, C-v, C-z} keys
(cua-mode 1)
;;auto insert closing bracket
(electric-pair-mode 1)
;; make cursor movement stop in between camelCase words.
(global-subword-mode 1)
;; make typing delete/overwrites selected text
(delete-selection-mode 1)
;; turn on bracket match highlight
(show-paren-mode 1)
;; remember curso position. When file is opened, put cursor at last position
(if (version< emacs-version "25.0")
    (progn
      (require 'saveplace)
      (setq-default save-place t))
  (save-place-mode 1))
;; UTF-8 as default encoding
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
;; diplay line numbers
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))
;; show cursor position within line
(column-number-mode 1)
;; display line number by default
(global-linum-mode t)
;; Display line number wider
(setq linum-format "%3d\u2502 ")
;; set default style for c code
(setq c-default-style "linux"
      c-basic-offset 4)
;; Set line tabs
(setq c-basic-offset 8
      tab-width 8)
;; make tab key always call a indent command.
(setq-default tab-always-indent t)
;; make tab key call indent command or insert tab character, depending on cursor position
(setq-default tab-always-indent nil)
;; make tab key do indent first then completion.
(setq-default tab-always-indent 'complete)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(custom-safe-themes
   (quote
    ("e9fe0bf9b5f6f44297ea8fe8112c6888cdc85bda679b6108a843f4423cd30c85" "f6e0c932260c81afa6aea6e8514fbdb8faff738bf7303850a68aae4e1c57f316")))
 '(global-whitespace-mode t)
 '(menu-bar-mode nil)
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white smoke" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 1 :width normal :foundry "default" :family "default"))))
 '(bold ((t (:weight bold :family "Consolas Bold"))))
 '(button ((t (:foreground "color-178" :overline t :underline t))))
 '(custom-button-pressed-unraised ((t (:inherit custom-button-unraised :foreground "color-94"))))
 '(custom-face-tag ((t (:foreground "color-136"))))
 '(custom-group-tag ((t (:inherit variable-pitch :foreground "color-136" :weight bold :height 1.2))))
 '(custom-group-tag-1 ((t (:inherit variable-pitch :foreground "color-94" :weight bold :height 1.2))))
 '(custom-state ((t (:foreground "color-47"))))
 '(custom-variable-tag ((t (:foreground "color-136" :weight bold))))
 '(eieio-custom-slot-tag-face ((t (:foreground "color-136"))))
 '(error ((t (:foreground "brightred" :weight bold))))
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
 '(link ((t (:foreground "color-178" :underline t))))
 '(link-visited ((t (:inherit link :foreground "color-94"))))
 '(linum ((t (:inherit (shadow default) :foreground "color-243"))))
 '(menu ((t (:background "color-235"))))
 '(mode-line ((t (:background "color-236" :foreground "brightwhite" :box (:line-width -1 :color "red" :style released-button) :family "DejaVu Sans"))))
 '(mode-line-buffer-id ((t (:foreground "color-178" :weight bold))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((t (:box (:line-width 2 :color "grey40" :style released-button)))))
 '(mode-line-inactive ((t (:inherit mode-line :background "color-235" :foreground "color-243" :box (:line-width -1 :color "grey40") :weight light))))
 '(region ((t (:inverse-video t))))
 '(trailing-whitespace ((t (:background "brightred"))))
 '(whitespace-line ((t (:background "color-234" :foreground "brightred" :inverse-video t)))))
