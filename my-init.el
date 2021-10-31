(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (setq package-archives '(("gnu" . "http://elpa.emacs-china.org/gnu/")
               	      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像

;; 关闭工具栏
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode t)

;; 关闭启动帮助界面
(setq inhibit-splash-screen -1)

;; 开启全局Company补全
(global-company-mode t)

;; 设置光标的样式
(setq-default cursor-type 'bar)

;; 关闭自动备份
(setq make-backup-files -1)

;; 打开最近编辑过的文件
(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 10)

;; 开启“输入一个字符替换掉选中的区域”功能
(delete-selection-mode t)

;; 开启默认全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; 开启自动括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 高亮显示当前行
(global-hl-line-mode t)

;; 打开emacs配置文件
(defun open-config-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
