(require 'package)
(package-initialize)
(add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/nongnu/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-refresh-contents)
(package-install 'ox-hugo)

(package-install 'org)
(package-install 'org-contrib)
(require 'ox)
(require 'ox-hugo)

(setq org-confirm-babel-evaluate nil
      org-export-with-broken-links t)

(org-hugo-export-wim-to-md :all-subtrees)
