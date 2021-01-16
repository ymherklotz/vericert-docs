(require 'package)
(package-initialize)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-refresh-contents)
(package-install 'org-plus-contrib)
(package-install 'ox-hugo)

(require 'org)
(require 'ox)
(require 'ox-hugo)

(find-file-literally "documentation.org")
(org-hugo-export-wim-to-md :all-subtrees)
