# flyparens.el

flyparens provides a minor mode called `flyparens-mode` which checks for unbalanced parens (a.k.a. parentheses) (or braces) on the fly in Lisp code and highlights the first mismatched paren, whether it be at point or not. Also, you can customize to make it tell you whether or not the parens in the buffer are balanced, via text cursor color or other means.

If you are a beginner, then this package is for you, and you are encouraged to think of this package as a training wheel and eventually move on to paredit.

Check out the following minor modes too, which you can use together with `flyparens-mode`:

-   show-paren-mode (Emacs built-in. highlights the paren that matches the paren at point)
-   rainbow-delimiters-mode (highlights parens by depth and highlights unmatched close parens.)

Alternatively, you can just run the following command to find the first mismatch paren:

    M-x check-parens

That command is an Emacs built-in.

# Recommended configuration for beginners

    (require 'flyparens)
    
    Enabling the minor mode for all Lisp buffers
    (add-hook 'emacs-lisp-mode-hook 'flyparens-mode)
    (add-hook 'lisp-mode-hook 'flyparens-mode)
    (add-hook 'scheme-mode-hook 'flyparens-mode)
    (add-hook 'clojure-mode-hook 'flyparens-mode)
    
    additional indication by the color of the text cursor
    blue cursor if any mismatched paren
    (defun my-flyparens-function (position)
      (flyparens-default-function position)
      (set-cursor-color (if position "blue" "black")))
    (setq flyparens-function
          'my-flyparens-function)

# Advanced usage

Users well versed in elisp may customize flyparens-function in more radical ways and share with others.

# Limitations

Only one mismatched paren in only one buffer (current buffer) is highlighted.

# Inspired by

The idle-highlight-mode package and the check-parens command
