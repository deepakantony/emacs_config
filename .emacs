; This is where I will place my downloaded emacs elisp files
(add-to-list 'load-path (expand-file-name "~/workspace/emacs_config/elisp"))

; Load auto-install 
; - this will locate->download->install elisp files automatically
(require 'auto-install)

; enable column number and line number mode
(line-number-mode 1)
(column-number-mode 1)

; 