(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (and custom-file
           (file-exists-p custom-file))
  (load custom-file nil :nomessage))

;; (use-package 'no-littering)
;; (require 'no-littering)
(load "~/emacsen/my-crafted-emacs/modules/crafted-init-config")

;; Load crafted-osx configuration
(require 'crafted-osx-config)
(crafted-osx-transparent-titlebar)

;; Can't use alt to type hashtag unless we make command key 'meta
;; (setq mac-command-modifier 'meta)
;; (setq mac-option-modifier 'none)

(setq inhibit-startup-message t  ; Don't show the splash screen
                            visible-bell t)          ; Flash when the bell rings

    ;; Turn off some unneeded UI elements
              (menu-bar-mode 1)  ; Leave this one on if you're a beginner!
              (tool-bar-mode -1)
              (scroll-bar-mode 1)

              ;; Display line numbers in every buffer
              (global-display-line-numbers-mode 1)


  ;; Configure the Modus Themes' appearance
(setq modus-themes-mode-line '(accented borderless)
      modus-themes-bold-constructs t
      modus-themes-italic-constructs t
      modus-themes-fringes 'subtle
      modus-themes-tabs-accented t
      modus-themes-paren-match '(bold intense)
      modus-themes-prompts '(bold intense)
      modus-themes-org-blocks 'tinted-background
      modus-themes-scale-headings t
      modus-themes-region '(bg-only)
      modus-themes-headings
      '((1 . (rainbow overline background 1.4))
        (2 . (rainbow background 1.3))
        (3 . (rainbow bold 1.2))
        (t . (semilight 1.1))))

(setq modus-themes-completions
    '((matches . (extrabold underline))
      (selection . (extrabold underline))))

;; Load the dark theme by default
(load-theme 'modus-vivendi t)



              ;; If you're using Emacs 27, either install Modus themes or use this one!
              ;(load-theme 'deeper-blue t)

              (hl-line-mode 1)
              (blink-cursor-mode 1)

              ;; Remember recently edited files
              (recentf-mode 1)

              ;; Save what you enter into minibuffer prompts
              (setq history-length 100
                    history-delete-duplicates 1)
              (savehist-mode 1)

              ;; Remember and restore the last cursor location of opened files
              (save-place-mode 1)

              ;; Don't pop up UI dialogs when prompting
            (setq use-dialog-box nil)

            ;; Revert buffers when the underlying file has changed
          (global-auto-revert-mode 1)

          ;; Revert Dired and other buffers
        (setq global-auto-revert-non-file-buffers t)
