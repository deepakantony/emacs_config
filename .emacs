; This is where I will place my downloaded emacs elisp files
(add-to-list 'load-path (expand-file-name "~/workspace/emacs_config/elisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/auto-install"))

; enable column number and line number mode
(line-number-mode 1)
(column-number-mode 1)

; Load auto-install 
; - this will locate->download->install elisp files automatically
(require 'auto-install)

; Load vline
; - can highlight the current column
(require 'vline)

; This module marks my 80'th column 
(require 'fill-column-indicator)
; Automatically start fci-mode automatically 
(add-hook 'after-change-major-mode-hook 'fci-mode)
; By defaults this value is 70; changing it to 80
(setq-default fill-column 78)

; USELESS STUFFS BELOW

;(fci-mode 1)
;(if (< emacs-major-version 23)
;(defun characterp (obj)
;(and (char-or-string-p obj) (not (stringp obj)))))

; Load column-marker
; - this lets me highlight a column (vertical line)
;(require 'column-marker)
; Mark the 80'th column
;(add-hook 'col-mark-mode-hook (lambda () (interactive) (column-marker-1 80)))
; Use 'C-c m' interactively to highlight with 'column-marker-1-face'
;(global-set-key [?\C-c ?m] 'column-marker-1)

; whitespace module
;(require 'whitespace)
 
; http://groups.google.com/group/
; .emacs/browse_thread/thread/c921bfe302211dae?pli=1
;(let ((whitespace-line-column 80)
;      (whitespace-style '(lines-tail)))
;  (whitespace-mode 1))

; TODO - add more stuff