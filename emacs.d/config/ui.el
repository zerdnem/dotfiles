(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(setq visible-bell nil)
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(setq ring-bell-function 'ignore)
(set-fringe-mode 0)
(setq make-backup-files nil)
(set-fringe-mode 0)
(setq linum-format "%d ")
(show-paren-mode 1)
(require 'linum)
(defun linum-update-window-scale-fix (win)
  "fix linum for scaled text"
  (set-window-margins win
		      (ceiling (* (if (boundp 'text-scale-mode-step)
				      (expt text-scale-mode-step
					    text-scale-mode-amount) 1)
				  (if (car (window-margins))
				      (car (window-margins)) 1)
				  ))))
(advice-add #'linum-update-window :after #'linum-update-window-scale-fix)
