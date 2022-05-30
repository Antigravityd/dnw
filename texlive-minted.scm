(use-modules (guix packages)
	     (guix download)
	     (guix build-system texlive)
	     (guix build-system gnu)
	     (guix build utils)
	     (guix licenses)
	     (ice-9 match)
	     ((srfi srfi-1) #:hide (zip))
	     (gnu packages python-xyz))

(define-module (texlive-minted)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system texlive)
  #:use-module (guix build-system gnu)
  #:use-module (guix build utils)
  #:use-module (guix licenses)
  #:use-module (ice-9 match)
  #:use-module ((srfi srfi-1) #:hide (zip))
  #:use-module (gnu packages python-xyz))

(define* (simple-texlive-package name locations hash ;; from (gnu packages tex)
                                 #:key trivial?)
  "Return a template for a simple TeX Live package with the given NAME,
downloading from a list of LOCATIONS in the TeX Live repository, and expecting
the provided output HASH.  If TRIVIAL? is provided, all files will simply be
copied to their outputs; otherwise the TEXLIVE-BUILD-SYSTEM is used."
  (define with-documentation?
    (and trivial?
         (any (lambda (location)
                (string-prefix? "/doc" location))
              locations)))
  (package
   (name name)
   (version (number->string %texlive-revision))
   (source (texlive-origin name version
                           locations hash))
   (outputs (if with-documentation?
                '("out" "doc")
                '("out")))
   (build-system (if trivial?
                     gnu-build-system
                     texlive-build-system))
   (arguments
    (let ((copy-files
           `(lambda* (#:key outputs inputs #:allow-other-keys)
              (let (,@(if with-documentation?
                          `((doc (string-append (assoc-ref outputs "doc")
                                                "/share/texmf-dist/")))
                          '())
                    (out (string-append (assoc-ref outputs "out")
                                        "/share/texmf-dist/")))
                ,@(if with-documentation?
                      '((mkdir-p doc)
                        (copy-recursively
                         (string-append (assoc-ref inputs "source") "/doc")
                         (string-append doc "/doc")))
                      '())
                (mkdir-p out)
                (copy-recursively "." out)
                ,@(if with-documentation?
                      '((delete-file-recursively (string-append out "/doc")))
                      '())
                #t))))
      (if trivial?
          `(#:tests? #f
            #:phases
            (modify-phases %standard-phases
			   (delete 'configure)
			   (replace 'build (const #t))
			   (replace 'install ,copy-files)))
          `(#:phases
            (modify-phases %standard-phases
			   (add-after 'install 'copy-files ,copy-files))))))
   (home-page #f)
   (synopsis #f)
   (description #f)
   (license #f)))

(define-public texlive-minted
  (package
   (inherit
    (simple-texlive-package
     "texlive-minted"
     (list "doc/latex/minted/" "source/latex/minted/" "tex/latex/minted/")
     (base32 "13cjsjb3b04n9arwp46ayk8fcicylxq5g1864cpxl1lxjxh1yi0l")
     #:trivial? "t"))
   (propagated-inputs `(("python-pygments" ,python-pygments)))
   (home-page "https://ctan.org/macros/latex/contrib/minted")
   (synopsis "Highlighted source code for LaTeX")
   (description
    "The package that facilitates expressive syntax highlighting in LaTeX using the
powerful Pygments library.  The package also provides options to customize the
highlighted source code output using fancyvrb.")
   (license lppl1.3+)))
