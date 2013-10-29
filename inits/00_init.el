;; startup message
(setq inhibit-startup-screen t)

;; hide menu-bar
(menu-bar-mode 0)

;; hide tool-bar
(tool-bar-mode 0)

;; hide scroll-bar
(scroll-bar-mode 0)

;; color-theme
(when (require 'color-theme nil t)
  (color-theme-initialize)
    (when (require 'color-theme-solarized)
      (color-theme-solarized-light)))

;; indent
(setq-default indent-tabs-mode nil)

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; ベルを鳴らさない
(setq ring-bell-function 'ignore)

;; yes -> y
(defalias 'yes-or-no-p 'y-or-n-p)

(global-auto-revert-mode 1)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; ignore case
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;; 保存時に行末の余計な空白を削除する
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; paren-mode 対応する括弧を強調して表示する(default:0.125)
(setq show-paren-delay 0)
(show-paren-mode t)
;; paren style
(setq show-paren-style 'expression)
;; face
(set-face-background 'show-paren-match-face nil)

(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8-unix)

(cd "~/")
