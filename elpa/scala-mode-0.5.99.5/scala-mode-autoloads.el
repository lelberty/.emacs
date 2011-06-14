;;; scala-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (scala-mode) "scala-mode" "scala-mode.el" (19752
;;;;;;  52675))
;;; Generated autoloads from scala-mode.el

(autoload 'scala-mode "scala-mode" "\
Major mode for editing Scala code.
\\{scala-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode))

(modify-coding-system-alist 'file "\\.scala$" 'utf-8)

;;;***

;;;### (autoloads (scala-quit-interpreter scala-load-file scala-eval-buffer
;;;;;;  scala-eval-definition scala-eval-region scala-switch-to-interpreter
;;;;;;  scala-run-scala scala-interpreter-running-p-1) "scala-mode-inf"
;;;;;;  "scala-mode-inf.el" (19752 52674))
;;; Generated autoloads from scala-mode-inf.el

(autoload 'scala-interpreter-running-p-1 "scala-mode-inf" "\
True iff a Scala interpreter is currently running in a buffer.

\(fn)" nil nil)

(autoload 'scala-run-scala "scala-mode-inf" "\
Run a Scala interpreter in an Emacs buffer.
Use the command CMD-LINE, which defaults to `scala-interpreter'
unless a prefix argument is given.

\(fn CMD-LINE)" t nil)

(autoload 'scala-switch-to-interpreter "scala-mode-inf" "\
Switch to buffer containing the interpreter.

\(fn)" t nil)

(autoload 'scala-eval-region "scala-mode-inf" "\
Send current region to Scala interpreter.
Send the active region or between START and END, if called non-interactively.

\(fn START END)" t nil)

(autoload 'scala-eval-definition "scala-mode-inf" "\
Send the current 'definition' to the Scala interpreter.
This function's idea of a definition is the block of text ending
in the current line (or the first non-empty line going
backwards), and begins in the first line that is not empty and
does not start with whitespace or '{'.

For example:

println( \"aja\")
println( \"hola\" )

if the cursor is somewhere in the second print statement, the
interpreter should output 'hola'.

In the following case, if the cursor is in the second line, then
the complete function definition will be send to the interpreter:

def foo =
  1 + 2

\(fn)" t nil)

(autoload 'scala-eval-buffer "scala-mode-inf" "\
Send whole buffer to Scala interpreter.

\(fn)" t nil)

(autoload 'scala-load-file "scala-mode-inf" "\
Load FILE-NAME in the Scala interpreter.

\(fn FILE-NAME)" t nil)

(autoload 'scala-quit-interpreter "scala-mode-inf" "\
Quit Scala interpreter.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("scala-mode-constants.el" "scala-mode-feature-electric.el"
;;;;;;  "scala-mode-feature-speedbar.el" "scala-mode-feature-tags.el"
;;;;;;  "scala-mode-feature.el" "scala-mode-fontlock.el" "scala-mode-indent.el"
;;;;;;  "scala-mode-lib.el" "scala-mode-navigation.el" "scala-mode-pkg.el"
;;;;;;  "scala-mode-ui.el" "scala-mode-variables.el") (19752 52675
;;;;;;  247377))

;;;***

(provide 'scala-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; scala-mode-autoloads.el ends here
