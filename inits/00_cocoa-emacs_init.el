;; font
(set-face-attribute 'default nil
                    :family "monaco"
                    :height 110)
(set-fontset-font
 (frame-parameter nil 'font)
 'japanese-jisx0208
 '("Hiragino Maru Gothic Pro" . "iso10646-1"))
(set-fontset-font
 (frame-parameter nil 'font)
 'japanese-jisx0212
 '("Hiragino Maru Gothic Pro" . "iso10646-1"))
(set-fontset-font
 (frame-parameter nil 'font)
 'katakana-jisx0201
 '("Hiragino Maru Gothic Pro" . "iso10646-1"))
(set-fontset-font
 (frame-parameter nil 'font)
 'mule-unicode-0100-24ff
 '("monaco" . "iso10646-1"))
(setq face-font-rescale-alist
      '(("^-apple-hiragino.*" . 1.2)
        (".*osaka-bold.*" . 1.2)
        (".*osaka-medium.*" . 1.2)
        (".*courier-bold-.*-mac-roman" . 1.0)
        (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
        (".*monaco-bold-.*-mac-roman" . 0.9)
        ("-cdac$" . 1.3)))

;; encoding
(require 'ucs-normalize)
(setq file-name-conding-system 'utf-8-hfs)
(setq locale-coding-system 'utf-8-hfs)
(set-terminal-coding-system 'utf-8-hfs)
(prefer-coding-system 'utf-8-emacs)
(set-default-coding-systems 'utf-8-emacs-unix)

;; command -> meta
(setq ns-command-modifier (quote meta))
