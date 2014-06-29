# flyparens.el

FlyParens provides a minor mode called `flyparens-mode` which checks for unbalanced parens (a.k.a. parentheses) (or braces) on the fly in Lisp code and highlights the first mismatched paren, whether it be at point or not. Also, you can customize to make it tell you whether or not the parens in the buffer are balanced, via text cursor color or other means.

If you are a beginner, then this package is for you, and you are encouraged to think of this package as a training wheel and eventually move on to paredit.

Check out the following minor modes too, which you can use together with `flyparens-mode`:

-   show-paren-mode (Emacs built-in. highlights the paren that matches the paren at point)
-   rainbow-delimiters-mode (highlights parens by depth and highlights unmatched close parens.)

Alternatively, you can just run the following command to find the first mismatch paren:

    M-x check-parens

That command is an Emacs built-in. FlyParens is essentially an on-the-fly wrapper on that command.

# Recommended configuration for beginners

Install the package and then copy the code from [flyparens-config-example-1.el](./flyparens-config-example-1.el) and paste it in your emacs init file.

# Advanced usage

Users well versed in elisp may customize flyparens-function in more radical ways and share with others.

# Limitations

Only one mismatched paren in only one buffer (current buffer) is highlighted.

# Inspired by

The idle-highlight-mode package and the check-parens command
