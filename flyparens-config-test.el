(add-to-list 'load-path (file-name-directory (or load-file-name buffer-file-name)))
(setq debug-on-error t)

(load "flyparens-config-example-1.el")

(find-file "~/t/pink.el")
(find-file "~/t/pink2.el")
