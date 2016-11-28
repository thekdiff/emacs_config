(setq load-path (cons "d:/emacs-24.3/site-lisp/org-8.2.10/lisp"
		      load-path))
(setq load-path (cons "c:/Users/xuzhixin/.emacs.d/sr-speedbar"
		      load-path))
(require 'org-install)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (wheatgrass)))
 '(debug-on-error t)
 '(display-time-mode t)
 '(font-latex-deactivated-keyword-classes nil)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(org-pretty-entities t)
 '(package-archives
   (quote
    (("elpy" . "http://jorgenschaefer.github.io/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/")
     ("MELPA Stable" . "http://stable.melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (ace-window markdown-mode py-autopep8 flycheck elpy magit w3 svg-clock smart-operator rainbow-mode lmc lex abl-mode)))
 '(reftex-toc-include-context nil)
 '(reftex-toc-include-file-boundaries nil)
 '(reftex-toc-split-windows-horizontally t)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(truncate-partial-width-windows nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "azure3" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "outline" :family "Consolas"))))
 '(custom-modified ((t (:background "DodgerBlue1" :foreground "white"))))
 '(custom-themed ((t (:background "DodgerBlue1" :foreground "white"))))
 '(flyspell-incorrect ((t (:foreground "red3" :underline t :weight bold))))
 '(font-latex-sectioning-0-face ((t (:inherit font-latex-sectioning-1-face :height 1.1))) t)
 '(font-latex-sectioning-5-face ((t (:inherit variable-pitch :foreground "yellow green" :weight bold))) t)
 '(font-lock-builtin-face ((t (:foreground "IndianRed4"))))
 '(font-lock-comment-face ((t (:foreground "dark goldenrod"))))
 '(font-lock-constant-face ((t (:foreground "thistle4"))))
 '(font-lock-doc-face ((t (:inherit font-lock-string-face))))
 '(font-lock-function-name-face ((t (:foreground "light sea green"))))
 '(font-lock-keyword-face ((t (:foreground "forest green"))))
 '(font-lock-negation-char-face ((t (:foreground "chocolate"))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit bold :foreground "lawn green"))))
 '(font-lock-regexp-grouping-construct ((t (:inherit bold :foreground "green yellow"))))
 '(font-lock-type-face ((t (:foreground "DodgerBlue4" :weight bold))))
 '(highlight ((t (:background "NavajoWhite3" :foreground "blue" :width normal))))
 '(linum ((t (:inherit (default default) :foreground "NavajoWhite3"))))
 '(match ((t (:background "chocolate"))))
 '(mode-line ((t (:background "grey75" :foreground "black" :box (:line-width -1 :style pressed-button)))))
 '(region ((t (:background "NavajoWhite3" :foreground "medium blue"))))
 '(semantic-tag-boundary-face ((t (:foreground "lawn green"))) t)
 '(semantic-unmatched-syntax-face ((t (:foreground "lawn green"))))
 '(show-paren-match ((t (:background "chocolate"))))
 '(table-cell ((t (:background "bisque" :foreground "blue" :inverse-video nil))) t)
 '(variable-pitch ((t (:foreground "green" :family "Sans Serif")))))

(setq visible-bell t) 

(global-linum-mode t) 

(global-set-key (kbd "RET") 'newline-and-indent)


;;中文界面 
;;(require 'english-menu) 
(require 'flyspell) 
;;(require 'mule-menu) 

;;ibuffer 
(require 'ibuffer) 
(global-set-key [(meta n)] 'ibuffer)
(global-set-key [(f4)] 'ibuffer) 

;;ispell 
(require 'ispell) 

;;自动补全括号 

( defun my-c-mode-auto-pair () 
  (interactive) 
  (c-toggle-auto-newline);自动开新行 
  
  (c-toggle-hungry-state);饥饿的删除键 
  (make-local-variable 'skeleton-pair-alist) 
  (setq skeleton-pair-alist  '( 
			       (?{ \n > _ \n ?} >)           
			       )) 
  (setq skeleton-pair t) 
					;  (local-set-key (kbd "{") 'skeleton-pair-insert-maybe) 
  ) 
(add-hook 'java-mode-hook 'my-c-mode-auto-pair)
(add-hook 'c-mode-hook 'my-c-mode-auto-pair) 
(add-hook 'c++-mode-hook 'my-c-mode-auto-pair)
(add-hook 'asy-mode-hook 'my-c-mode-auto-pair)

(add-hook 'c-mode-common-hook ( lambda() ( c-set-style "k&r" ) ) )  
;;设置C语言默认格式 

(add-hook 'c++-mode-common-hook ( lambda() ( c-set-style "k&r" ) ) )  
;;设置C++语言默认格式 

(display-time) 
;;显示时间 

(fset 'yes-or-no-p 'y-or-n-p) 
;; 改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes，n 表示 no。 

(setq kill-ring-max 200) 
;;设置粘贴缓冲条目数量.用一个很大的kill ring(最多的记录个数). 这样防止我不小心删掉重要的东西 

(setq scroll-margin 3 scroll-conservatively 10000) 
;;防止页面滚动时跳动， scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动，可以很好的看到上下文。 

(add-hook 'c-mode-hook 'hs-minor-mode) 
(add-hook 'c++-mode-hook 'hs-minor-mode)  

;;代码折叠 


(set-frame-parameter (selected-frame) 'alpha (list 85 50))  
(add-to-list 'default-frame-alist (cons 'alpha (list 85 50)))  
;;窗口透明化 

(global-font-lock-mode  t)  
(setq font-lock-maximum-decoration t) 

(show-paren-mode 't) 
;;括号匹配 

(global-set-key [f1] (lambda () (interactive) (manual-entry (current-word))))  
;;查找这个单词的manpage. 


(require 'cc-mode) 
(c-set-offset 'inline-open 0) 
(c-set-offset 'friend '-) 
(c-set-offset 'substatement-open 0) 
;;cc-mode配置 
(put 'downcase-region 'disabled nil) 


(defvar   jr-compile-pre-flag   " "  
  "jr-compile的前缀参数 ")  
(defvar   jr-compile-pos-flag   "   "  
  "jr-compile的后缀参数 ")  
(defun   jr-compile-current-file   ()  
  "编译当前文件，应用常有的模式 "  
  (interactive)  
  (let*   ((filename   (buffer-file-name   (current-buffer)))  
	   (progname   (cond   ((string-match   ".c$ "   filename)   "gcc ")  
			       ((string-match   ".cxx$ "   filename)   "g++ ")  
			       ((string-match   ".cpp$ "   filename)   "g++ ")  
			       ( "g++ ")  
			       ))  
	   (proarg   "-g -o ")  
	   (cmdstr     (read-string   "compile:"  
				      (concat   progname  
						proarg  
						(file-name-sans-extension   (file-name-nondirectory   filename))  
						jr-compile-pre-flag  
						(file-name-nondirectory   filename)  
						jr-compile-pos-flag)))  
	   )  
    (compile   cmdstr)))  
(defvar   jr-run-pos-flag   "   "  
  "jr-run的后缀参数 ")  
(defun   jr-run-current-file   (&optional   comint)  
  "编译当前文件，应用常有的模式 "  
  (interactive   "P ")  
  (let*   ((filename   (buffer-file-name   (current-buffer)))  
	   (cmdstr   (concat   (file-name-sans-extension   filename)  
			       jr-run-pos-flag  
			       jr-compile-pre-flag)))  
    (compilation-start   cmdstr   (if   comint   t   nil))))  
					;单文件编译热键  
(setq   compilation-scroll-output   1)  
(global-set-key   [(f10)]   'jr-run-current-file)  
(global-set-key   [(f9)]   'jr-compile-current-file)  
(global-set-key   [(f7)]   'compile) 
(define-key emacs-lisp-mode-map   [(f5)]   'eval-buffer)
 

(require 'cedet)  

;;(require 'browse-kill-ring) 
;;(global-set-key [(control c)(k)] 'browse-kill-ring) 
;;(browse-kill-ring-default-keybindings) 

;;单词拼写检查 
(put 'upcase-region 'disabled nil) 

;;(add-to-list 'load-path "d:\\emacs-24.3\\site-lisp\\html-helper" load-path) 
;;(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t) 
;;(setq auto-mode-alist (cons '("\\.html$" . html-helper-mode) auto-mode-alist)) 

;;(load "preview-latex.el" nil t t) 

;;open reftex 
(add-hook 'latex-mode-hook 'turn-on-reftex) 
(add-hook 'LaTeX-mode-hook 'turn-on-reftex) 
(setq reftex-plug-into-auctex t) 

;;compiled by xelatex by default 
(add-hook 'LaTeX-mode-hook (lambda()
			     
			     (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
			     ;;(TeX-fold-mode 1)                          
			     (setq TeX-command-default "XeLaTeX")
			     
			     (setq TeX-save-query  nil )
			     
			     ;;(setq TeX-show-compilation t)
			     
			     )) 

;;(prefer-coding-system 'utf-8) 

;;set the default text coding system 
(setq default-buffer-file-coding-system 'utf-8) 

(setq visible-bell nil)

(require 'cedet)

(setq-default make-backup-files nil)


;;(require 'org-html5presentation)


(add-to-list 'load-path "D:/Asymptote")
;;(add-to-list 'load-path "/usr/local/share/asymptote")
(autoload 'asy-mode "asy-mode.el" "Asymptote major mode." t)
(autoload 'lasy-mode "asy-mode.el" "hybrid Asymptote/Latex major mode." t)
(autoload 'asy-insinuate-latex "asy-mode.el" "Asymptote insinuate LaTeX." t)
(add-to-list 'auto-mode-alist '("\\.asy$" . asy-mode))

;;edit chrome with emacs
;;(require 'edit-server)
;;(edit-server-start)

;;to encode the file
;;(require 'epa-file)
;;(epa-file-enable)

(global-set-key (kbd "M-p d") 'make-directory) 

;;使用 xelatex 编译生成 PDF 文件

(setq org-latex-to-pdf-process
      '("xelatex -interaction nonstopmode %b"
	"xelatex -interaction nonstopmode %b"))

;; ;;the style of org2latex
;; ;;report,title and toc are in the same page

;;bmc

;; (add-to-list 'org-export-latex-classes
;;              '("bmc"
;;                "\\documentclass[11pt,a4paper]{article}
;; \\usepackage{xeCJK}
;; \\usepackage{graphicx}
;; \\usepackage{float} 
;; \\usepackage{xunicode,xltxtra}
;; \\usepackage{amsmath}
;; \\usepackage[top=3.6cm,bottom=3.2cm,left=2.8cm,right=2.8cm]{geometry}
;; \\usepackage[colorlinks,linkcolor=blue]{hyperref}
;; \\setmainfont[BoldFont=Times New Roman]{Times New Roman}
;; \\XeTeXlinebreaklocale "zh"
;; \\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt
;; \\linespread{1.3}                %设置行距
;; \\usepackage{titling}
;; \\usepackage{sectsty}
;; \\usepackage[titletoc,title]{appendix}
;; \\renewcommand\contentsname{目录}
;; \\newcommand{\figcapfont}[1]{\fontspec{宋体}{\small#1}}
;; \\renewcommand\figurename{\figcapfont{图片}}
;; \\renewcommand\refname{参考文献}
;; \\renewcommand\appendixname{附录}
;; \\setlength{\parindent}{2em}
;; \\usepackage[notlof]{tocbibind}
;; \\usepackage{indentfirst}
;; \\allsectionsfont{\fontspec{微软雅黑}}
;; \\usepackage{mathptmx}
;; \\usepackage{caption}
;; \\usepackage{listings}
;; \\usepackage{xcolor}
;; "
;; ))


;; iimage mode
;; (autoload 'iimage-mode "iimage" "Support Inline image minor mode." t)
;; (autoload 'turn-on-iimage-mode "iimage" "Turn on Inline image minor mode." t)

;; hippie-expand
;; to complete the rest contents with M-/
(global-set-key [(meta ?/)] 'hippie-expand)

(setq hippie-expand-try-functions-list 
      '(try-expand-dabbrev
	try-expand-dabbrev-visible
	try-expand-dabbrev-all-buffers
	try-expand-dabbrev-from-kill
	try-complete-file-name-partially
	try-complete-file-name
	try-expand-all-abbrevs
	try-expand-list
	try-expand-line
	try-complete-lisp-symbol-partially
	try-complete-lisp-symbol))

;;设置默认字体
;; Setting English Font
(set-face-attribute
 'default nil :font "Consolas 11")
;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
		    charset
		    (font-spec :family "Microsoft Yahei" :size 16)))


(defun w32-restore-frame (&optional arg) 
  "Restore a minimized frame" 
  (interactive) 
  (w32-send-sys-command 61728 arg)) 
(defun w32-maximize-frame (&optional arg) 
  "Maximize the current frame" 
  (interactive) 
  (w32-send-sys-command 61488 arg)) 
(w32-maximize-frame) 
(add-hook 'after-make-frame-functions 'w32-maximize-frame) 
;;这可以使得每一个新打开的frame都自动最大化。 


(require 'color-moccur)

;;(speedbar 1)

(setq org-ditaa-jar-path "d:/ditaa.jar")

(add-hook 'org-babel-after-execute-hook 'bh/display-inline-images 'append)

; Make babel results blocks lowercase
(setq org-babel-results-keyword "results")

(defun bh/display-inline-images ()
  (condition-case nil
      (org-display-inline-images)
    (error nil)))

(org-babel-do-load-languages
 (quote org-babel-load-languages)
 (quote ((emacs-lisp . t)
         (dot . t)
         (ditaa . t)
         (R . t)
         (python . t)
         (ruby . t)
         (gnuplot . t)
         (clojure . t)
         (sh . t)
         (ledger . t)
         (org . t)
         (plantuml . t)
         (latex . t))))

; Do not prompt to confirm evaluation
; This may be dangerous - make sure you understand the consequences
; of setting this -- see the docstring for details
(setq org-confirm-babel-evaluate nil)

; Use fundamental mode when editing plantuml blocks with C-c '
(add-to-list 'org-src-lang-modes (quote ("plantuml" . fundamental)))


;;;;;配置org-mode

;;but why

(global-auto-revert-mode 1)

(require 'hexview-mode)

(setq default-directory "X:/code/" )

;;the template of org to latex
(require 'org-latex)
(add-to-list 'org-export-latex-classes
	     '("cn-article"
	       "\\documentclass[12pt,a4paper]{article}
\\usepackage{graphicx}
\\usepackage{xcolor}
\\usepackage{xeCJK}
\\usepackage{lmodern}
\\usepackage{verbatim}
\\usepackage{fixltx2e}
\\usepackage{longtable}
\\usepackage{float}
\\usepackage{tikz}
\\usepackage{wrapfig}
\\usepackage{soul}
\\usepackage{textcomp}
\\usepackage{listings}
\\usepackage{geometry}
\\usepackage{algorithm}
\\usepackage{algorithmic}
\\usepackage{marvosym}
\\usepackage{wasysym}
\\usepackage{latexsym}
\\usepackage{natbib}
\\usepackage{fancyhdr}
\\usepackage[xetex,colorlinks=true,CJKbookmarks=true,
linkcolor=blue,
urlcolor=blue,
menucolor=blue]{hyperref}
\\usepackage{xunicode}
\\usepackage[slantfont,boldfont]{xeCJK}
\\setCJKmainfont{宋体}
\\setCJKmonofont{宋体}
\\setmainfont{TeX Gyre Pagella}
\\setsansfont{Trebuchet MS}
\\setCJKfamilyfont{song}{宋体}
\\newcommand*{\\songti}{\\CJKfamily{song}}
\\setCJKfamilyfont{hei}{黑体}
\\newcommand*{\\heiti}{\\CJKfamily{hei}}
\\renewcommand\\figurename{图片}
\\renewcommand\\tablename{表格}
\\renewcommand\\contentsname{目录}
\\linespread{1.5}
\\setlength{\\parindent}{2.5em}
\\hypersetup{unicode=true}
\\geometry{left=2.6cm,right=2.6cm,top=2.6cm,bottom=2.5cm}
\\punctstyle{kaiming}
\\title{}
\\fancyfoot[C]{\\bfseries\\thepage}
\\chead{\\MakeUppercase\\sectionmark}
\\pagestyle{fancy}
\\tolerance=1000
[NO-DEFAULT-PACKAGES]
[NO-PACKAGES]"
("\\section{%s}" . "\\section*{%s}")
("\\subsection{%s}" . "\\subsection*{%s}")
("\\subsubsection{%s}" . "\\subsubsection*{%s}")
("\\paragraph{%s}" . "\\paragraph*{%s}")
("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(require 'highlight-indentation)

(global-set-key [(control o)] 'vi-open-next-line)
(defun vi-open-next-line (arg)
 "Move to the next line (like vi) and then opens a line."
 (interactive "p")
 (end-of-line)
 (open-line arg)
 (next-line 1)
 (indent-according-to-mode))

(setq default-fill-column 72)

;; undo-tree
(require 'undo-tree)
(global-undo-tree-mode)

;; folding-mode
(load "folding" 'nomessage 'noerror)
(folding-mode-add-find-file-hook)

;; (desktop-save-mode 1)

;;打开上次的文件记录
;;(load "desktop") 
;;(desktop-load-default)
;;(desktop-read)

;;当emacs退出时保存文件打开状态
;;(add-hook 'kill-emacs-hook
;;          '(lambda()(desktop-save "~/")))

;;session
(require 'session)
(add-hook 'after-init-hook
          'session-initialize)

(add-to-list 'session-globals-exclude
             'org-mark-ring)

;; set user full name
(setq user-full-name "xuzhixin")

(add-to-list 'load-path "/path/to/svg-clock.el")
(autoload 'svg-clock "svg-clock" "Start/stop svg-clock" t)

(require 'package)
;;(add-to-list 'package-archives 
;;	     '("marmalade"
;;	       . "https://marmalade-repo.org/packages/"))
(package-initialize)
(setq font-latex-do-multi-line nil)

(setq-default line-spacing 5)
(electric-pair-mode t) ;; complete the pair(){}[]...

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(defvar myPackages
;;  '(better-defaults
;;    elpy ;; add the elpy package
;;    material-theme))

;;(elpy-enable);;install elpy for python
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(package-initialize)
(elpy-enable)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; use flycheck
(defvar myPackages
  '(better-defaults
    elpy
    flycheck ;; add the flycheck package
    material-theme
    py-autopep8
)) ;; add the autopep8 package

(when (require 'flycheck nil t)
 (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
 (add-hook 'elpy-mode-hook 'flycheck-mode))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; autopep8 enabled when saving files
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; use ipython
;;; (elpy-use-ipython)  ;;; use ipython instead of python
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'sr-speedbar)
(setq speedbar-use-images nil)
(setq sr-speedbar-right-side nil)
;; (setq sr-speedbar-width 25)
;; (setq dframe-update-speed t)
(global-set-key (kbd "<f8>") (lambda()
          (interactive)
          (sr-speedbar-toggle)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; using ace-window
(global-set-key (kbd "C-x o") 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
(setq aw-background nil)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; it's a test of git
