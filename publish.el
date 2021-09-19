(require 'package)
(package-initialize)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-refresh-contents)
(package-install 'ox-hugo)

(require 'org)
(require 'ox)
(require 'ox-hugo)

(setq org-export-use-babel 'inline-only
      org-confirm-babel-evaluate nil)

(defun ymhg/link (arg1 arg2)
  (cond
   ((eq 'hugo org-export-current-backend) arg1)
   (t arg2)))

(org-hugo-export-wim-to-md :all-subtrees)
