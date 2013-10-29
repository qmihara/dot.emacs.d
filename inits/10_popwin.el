(when (require 'popwin nil, t)
  (setq display-buffer-function 'popwin:display-buffer))