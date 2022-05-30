(define-module (texlab)
   #:use-module (guix packages)
   #:use-module (guix download)
   #:use-module (guix licenses)
   #:use-module (guix build-system cargo)
   #:use-module (guix build-system texlive)
   #:use-module (gnu packages crates-io)
   #:use-module (gnu packages tex))

;; (use-modules (guix packages)
;; 	     (guix download)
;; 	     (guix licenses)
;; 	     (guix build-system cargo)
;; 	     (gnu packages rust))


(define-public rust-unindent-0.1
  (package
    (name "rust-unindent")
    (version "0.1.9")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unindent" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0i1sjxlhw7rbvq47xgk0lixgpnswfyks21ks6zgzfw75lccybzjj"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/dtolnay/indoc")
    (synopsis "Remove a column of leading whitespace from a string")
    (description "Remove a column of leading whitespace from a string")
    (license (list expat asl2.0))))

(define-public rust-typed-builder-0.10
  (package
    (name "rust-typed-builder")
    (version "0.10.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "typed-builder" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "036v5045xsc8akqbqm0npyxw9pvxwqiq9aix7cwpx4vvnqb1g1c9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/idanarye/rust-typed-builder")
    (synopsis "Compile-time type-checked builder derive")
    (description "Compile-time type-checked builder derive")
    (license (list expat asl2.0))))

(define-public rust-similar-2
  (package
    (name "rust-similar")
    (version "2.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "similar" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1lw33na01r35h09s47jqhjgz3m29wapl20f6ybsla5d1cfgrf91f"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bstr" ,rust-bstr-0.2)
         ("rust-serde" ,rust-serde-1)
         ("rust-unicode-segmentation" ,rust-unicode-segmentation-1))))
    (home-page "https://github.com/mitsuhiko/similar")
    (synopsis "A diff library for Rust")
    (description "This package provides a diff library for Rust")
    (license asl2.0)))

(define-public rust-ron-0.7
  (package
    (name "rust-ron")
    (version "0.7.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ron" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0y6n0cpgkv9cnj411ipk86gvwrhxs1hb64m5hrwcjfp4mp51x1hv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-base64" ,rust-base64-0.13)
         ("rust-bitflags" ,rust-bitflags-1)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/ron-rs/ron")
    (synopsis "Rusty Object Notation")
    (description "Rusty Object Notation")
    (license (list expat asl2.0))))

(define-public rust-insta-1
  (package
    (name "rust-insta")
    (version "1.14.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "insta" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "154f3ncpibbljkz4yvfqk5299asmdyybcpw01ijh2g64hzqn16b8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-console" ,rust-console-0.15)
         ("rust-csv" ,rust-csv-1)
         ("rust-globset" ,rust-globset-0.4)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-pest" ,rust-pest-2)
         ("rust-pest-derive" ,rust-pest-derive-2)
         ("rust-ron" ,rust-ron-0.7)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-serde-yaml" ,rust-serde-yaml-0.8)
         ("rust-similar" ,rust-similar-2)
         ("rust-toml" ,rust-toml-0.5)
         ("rust-walkdir" ,rust-walkdir-2))))
    (home-page "https://insta.rs/")
    (synopsis "A snapshot testing library for Rust")
    (description "This package provides a snapshot testing library for Rust")
    (license asl2.0)))

(define-public rust-indoc-1
  (package
    (name "rust-indoc")
    (version "1.0.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "indoc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0vkxja3mdjgq9hjbsvq4ql9dbfdphw01hmbqndldkr9rjc0vv805"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/dtolnay/indoc")
    (synopsis "Indented document literals")
    (description "Indented document literals")
    (license (list expat asl2.0))))

(define-public rust-zerocopy-derive-0.3 ;; LICENSE: https://fuchsia.googlesource.com/fuchsia/+/HEAD/LICENSE#5
  (package
    (name "rust-zerocopy-derive")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "zerocopy-derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "17rab2i1vwmxcr7c6r6xv55nhy41wlay0lpfcyl4vqpgh8mwiyx0"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-syn" ,rust-syn-1)
         ("rust-synstructure" ,rust-synstructure-0.12))))
    (home-page
      "https://fuchsia.googlesource.com/fuchsia/+/HEAD/src/lib/zerocopy/zerocopy-derive")
    (synopsis "Custom derive for traits from the zerocopy crate")
    (description "Custom derive for traits from the zerocopy crate")
    (license non-copyleft)))

(define-public rust-zerocopy-0.6 ;; LICENSE: https://fuchsia.googlesource.com/fuchsia/+/HEAD/LICENSE#5
  (package
    (name "rust-zerocopy")
    (version "0.6.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "zerocopy" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0dpj4nd9v56wy93ahjkp95znjzj91waqvidqch8gxwdwq661hbrk"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-byteorder" ,rust-byteorder-1)
         ("rust-zerocopy-derive" ,rust-zerocopy-derive-0.3))))
    (home-page
      "https://fuchsia.googlesource.com/fuchsia/+/HEAD/src/lib/zerocopy")
    (synopsis "Utilities for zero-copy parsing and serialization")
    (description "Utilities for zero-copy parsing and serialization")
    (license non-copyleft)))

(define-public rust-quote-1
  (package
    (name "rust-quote")
    (version "1.0.18")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "quote" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1lca4xnwdc2sp76bf4n50kifmi5phhxr9520w623mfcksr7bbzm1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1))))
    (home-page "https://github.com/dtolnay/quote")
    (synopsis "Quasi-quoting macro quote!(...)")
    (description "Quasi-quoting macro quote!(...)")
    (license (list expat asl2.0))))

(define-public rust-uuid-macro-internal-1
  (package
    (name "rust-uuid-macro-internal")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "uuid-macro-internal" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1r2iq70dn8yir4rs5kky17h4ivs43zja1y3a7ci19hsh5j54xh07"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "")
    (synopsis "Private implementation details of the uuid! macro.")
    (description "Private implementation details of the uuid! macro.")
    (license (list asl2.0 expat))))

(define-public rust-sha1-smol-1
  (package
    (name "rust-sha1-smol")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "sha1_smol" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04nhbhvsk5ms1zbshs80iq5r1vjszp2xnm9f0ivj38q3dhc4f6mf"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/mitsuhiko/sha1-smol")
    (synopsis "Minimal dependency free implementation of SHA1 for Rust.")
    (description "Minimal dependency free implementation of SHA1 for Rust.")
    (license bsd-3)))

(define-public rust-md5-asm-0.5
  (package
    (name "rust-md5-asm")
    (version "0.5.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "md5-asm" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ixmkg8j7sqy9zln6pz9xi2dl2d9zpm8pz6p49za47n1bvradfbk"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t #:cargo-inputs (("rust-cc" ,rust-cc-1))))
    (home-page "https://github.com/RustCrypto/asm-hashes")
    (synopsis "Assembly implementation of MD5 compression function")
    (description "Assembly implementation of MD5 compression function")
    (license expat)))

(define-public rust-typenum-1
  (package
    (name "rust-typenum")
    (version "1.15.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "typenum" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "11yrvz1vd43gqv738yw1v75rzngjbs7iwcgzjy3cq5ywkv2imy6w"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-scale-info" ,rust-scale-info-1))))
    (home-page "https://github.com/paholg/typenum")
    (synopsis
      "Typenum is a Rust library for type-level numbers evaluated at
    compile time. It currently supports bits, unsigned integers, and signed
    integers. It also provides a type-level array of type-level numbers, but its
    implementation is incomplete.")
    (description
      "Typenum is a Rust library for type-level numbers evaluated at     compile time.
It currently supports bits, unsigned integers, and signed     integers.  It also
provides a type-level array of type-level numbers, but its     implementation is
incomplete.")
    (license (list expat asl2.0))))

(define-public rust-crypto-common-0.1
  (package
    (name "rust-crypto-common")
    (version "0.1.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crypto-common" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1s1wpm88qlrp079mzh3dlxm9vbqs4ch016yp9pzhcdjygfi2r5ap"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-generic-array" ,rust-generic-array-0.14)
         ("rust-rand-core" ,rust-rand-core-0.6)
         ("rust-typenum" ,rust-typenum-1))))
    (home-page "https://github.com/RustCrypto/traits")
    (synopsis "Common cryptographic traits")
    (description "Common cryptographic traits")
    (license (list expat asl2.0))))

(define-public rust-digest-0.10
  (package
    (name "rust-digest")
    (version "0.10.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "digest" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "01nmj9cci5qdm4q4wlmz104rzr68d5m823kdzd95bypslq68dyzj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-blobby" ,rust-blobby-0.3)
         ("rust-block-buffer" ,rust-block-buffer-0.10)
         ("rust-crypto-common" ,rust-crypto-common-0.1)
         ("rust-subtle" ,rust-subtle-2))))
    (home-page "https://github.com/RustCrypto/traits")
    (synopsis "Traits for cryptographic hash functions")
    (description "Traits for cryptographic hash functions")
    (license (list expat asl2.0))))

(define-public rust-md-5-0.10
  (package
    (name "rust-md-5")
    (version "0.10.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "md-5" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "10h5kna43cpggp9hy1hz4zb1qpixdl4anf3hdj3gfwhb3sr4d1k5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-digest" ,rust-digest-0.10)
         ("rust-md5-asm" ,rust-md5-asm-0.5))))
    (home-page "https://github.com/RustCrypto/hashes")
    (synopsis "MD5 hash function")
    (description "MD5 hash function")
    (license (list expat asl2.0))))

(define-public rust-atomic-0.5
  (package
    (name "rust-atomic")
    (version "0.5.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "atomic" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0k135q1qfmxxyzrlhr47r0j38r5fnd4163rgl552qxyagrk853dq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-autocfg" ,rust-autocfg-1))))
    (home-page "https://github.com/Amanieu/atomic-rs")
    (synopsis "Generic Atomic<T> wrapper type")
    (description "Generic Atomic<T> wrapper type")
    (license (list asl2.0 expat))))

(define-public rust-uuid-1
  (package
    (name "rust-uuid")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "uuid" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0rb3i1wnvcfssrm8hwkmz8i38ca96szia38d837k6j2sclgcdfwk"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-arbitrary" ,rust-arbitrary-1)
         ("rust-atomic" ,rust-atomic-0.5)
         ("rust-getrandom" ,rust-getrandom-0.2)
         ("rust-md-5" ,rust-md-5-0.10)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-serde" ,rust-serde-1)
         ("rust-sha1-smol" ,rust-sha1-smol-1)
         ("rust-slog" ,rust-slog-2)
         ("rust-uuid-macro-internal" ,rust-uuid-macro-internal-1)
         ("rust-zerocopy" ,rust-zerocopy-0.6))))
    (home-page "https://github.com/uuid-rs/uuid")
    (synopsis "A library to generate and parse UUIDs.")
    (description
      "This package provides a library to generate and parse UUIDs.")
    (license (list asl2.0 expat))))

(define-public rust-threadpool-1
  (package
    (name "rust-threadpool")
    (version "1.8.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "threadpool" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1amgfyzvynbm8pacniivzq9r0fh3chhs7kijic81j76l6c5ycl6h"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-num-cpus" ,rust-num-cpus-1))))
    (home-page "https://github.com/rust-threadpool/rust-threadpool")
    (synopsis
      "A thread pool for running a number of jobs on a fixed set of worker threads.
")
    (description
      "This package provides a thread pool for running a number of jobs on a fixed set
of worker threads.")
    (license (list expat asl2.0))))

(define-public rust-strum-macros-0.24
  (package
    (name "rust-strum-macros")
    (version "0.24.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "strum_macros" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1vyh8m1skr8h4f2lnhnq1r7v3mah545bp4k1p8z4svj42ydhfy38"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-heck" ,rust-heck-0.4)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-rustversion" ,rust-rustversion-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/Peternator7/strum")
    (synopsis "Helpful macros for working with enums and strings")
    (description "Helpful macros for working with enums and strings")
    (license expat)))

(define-public rust-strum-0.24
  (package
    (name "rust-strum")
    (version "0.24.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "strum" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1y77vshrhm1grlgcfmnm0nxpsv0pb5zcb97zy6rbh106nz0wysp9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-strum-macros" ,rust-strum-macros-0.24))))
    (home-page "https://github.com/Peternator7/strum")
    (synopsis "Helpful macros for working with enums and strings")
    (description "Helpful macros for working with enums and strings")
    (license expat)))

(define-public rust-arbitrary-1
  (package
    (name "rust-arbitrary")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "arbitrary" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "14148yi6hmkycacdrvykkky2ymnph9xmny1y39gc4wgng5mnp2y3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-derive-arbitrary" ,rust-derive-arbitrary-1))))
    (home-page "https://github.com/rust-fuzz/arbitrary/")
    (synopsis
      "The trait for generating structured data from unstructured data")
    (description
      "The trait for generating structured data from unstructured data")
    (license (list expat asl2.0))))

(define-public rust-smol-str-0.1
  (package
    (name "rust-smol-str")
    (version "0.1.23")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "smol_str" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0i5b6mm2hbmvyvch3rhfx6bfl9jmijx320ffazhs5qxp52512xbl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-arbitrary" ,rust-arbitrary-1) ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/rust-analyzer/smol_str")
    (synopsis "small-string optimized string type with O(1) clone")
    (description "small-string optimized string type with O(1) clone")
    (license (list expat asl2.0))))

(define-public rust-serde-repr-0.1
  (package
    (name "rust-serde-repr")
    (version "0.1.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde_repr" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1vas1ay6b8dp4p5g6v2qzvfxdwl7a17pmvbzvqii58r8fgj89bd2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/dtolnay/serde-repr")
    (synopsis
      "Derive Serialize and Deserialize that delegates to the underlying repr of a C-like enum.")
    (description
      "Derive Serialize and Deserialize that delegates to the underlying repr of a
C-like enum.")
    (license (list expat asl2.0))))

(define-public rust-serde-json-1
  (package
    (name "rust-serde-json")
    (version "1.0.81")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde_json" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0p7100hlvw4azgcalzf1vgray5cg6b6saqfwb32h7v8s5ary4z4v"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-indexmap" ,rust-indexmap-1)
         ("rust-itoa" ,rust-itoa-1)
         ("rust-ryu" ,rust-ryu-1)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/serde-rs/json")
    (synopsis "A JSON serialization file format")
    (description "This package provides a JSON serialization file format")
    (license (list expat asl2.0))))

(define-public rust-hashbrown-0.12
  (package
    (name "rust-hashbrown")
    (version "0.12.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "hashbrown" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1hycsz4nbnxcma1lngl66q7hlrwn1scdqdj4jqghiw5bk3w4q3fv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ahash" ,rust-ahash-0.7)
         ("rust-bumpalo" ,rust-bumpalo-3)
         ("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
         ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/rust-lang/hashbrown")
    (synopsis "A Rust port of Google's SwissTable hash map")
    (description
      "This package provides a Rust port of Google's SwissTable hash map")
    (license (list expat asl2.0))))

(define-public rust-rowan-0.15
  (package
    (name "rust-rowan")
    (version "0.15.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rowan" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0kv1psn7kip4aqdv6mqv8sqrc7dphr429bhd7az01j13gcni3hd4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-countme" ,rust-countme-3)
         ("rust-hashbrown" ,rust-hashbrown-0.12)
         ("rust-memoffset" ,rust-memoffset-0.6)
         ("rust-rustc-hash" ,rust-rustc-hash-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-text-size" ,rust-text-size-1))))
    (home-page "https://github.com/rust-analyzer/rowan")
    (synopsis "Library for generic lossless syntax trees")
    (description "Library for generic lossless syntax trees")
    (license (list expat asl2.0))))

(define-public rust-regex-syntax-0.6
  (package
    (name "rust-regex-syntax")
    (version "0.6.26")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "regex-syntax" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0r6vplrklxq7yx7x4zqf04apr699swbsn6ipv8bk82nwqngdxcs9"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/rust-lang/regex")
    (synopsis "A regular expression parser.")
    (description "This package provides a regular expression parser.")
    (license (list expat asl2.0))))

(define-public rust-regex-1
  (package
    (name "rust-regex")
    (version "1.5.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "regex" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wczbykw6fas7359j9lhkkv13dplhiphzrf2ii6dmg5xjiyi4gyq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-aho-corasick" ,rust-aho-corasick-0.7)
         ("rust-memchr" ,rust-memchr-2)
         ("rust-regex-syntax" ,rust-regex-syntax-0.6))))
    (home-page "https://github.com/rust-lang/regex")
    (synopsis
      "An implementation of regular expressions for Rust. This implementation uses
finite automata and guarantees linear time matching on all inputs.
")
    (description
      "An implementation of regular expressions for Rust.  This implementation uses
finite automata and guarantees linear time matching on all inputs.")
    (license (list expat asl2.0))))

(define-public rust-once-cell-1
  (package
    (name "rust-once-cell")
    (version "1.12.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "once_cell" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "09a2gb4sls2d3762jsps81s5y270465s0ip7cvv5h7qc7zwcw2bp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-atomic-polyfill" ,rust-atomic-polyfill-0.1)
         ("rust-parking-lot-core" ,rust-parking-lot-core-0.9))))
    (home-page "https://github.com/matklad/once_cell")
    (synopsis "Single assignment cells and lazy values.")
    (description "Single assignment cells and lazy values.")
    (license (list expat asl2.0))))

(define-public rust-lsp-types-0.93
  (package
    (name "rust-lsp-types")
    (version "0.93.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lsp-types" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04i29ha2phiryn865xl6jd1kzhasnjs28dykan31zcxjfchlxivh"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-serde-repr" ,rust-serde-repr-0.1)
         ("rust-url" ,rust-url-2))))
    (home-page "https://github.com/gluon-lang/lsp-types")
    (synopsis
      "Types for interaction with a language server, using VSCode's Language Server Protocol")
    (description
      "Types for interaction with a language server, using VSCode's Language Server
Protocol")
    (license expat)))

(define-public rust-lsp-server-0.6
  (package
    (name "rust-lsp-server")
    (version "0.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lsp-server" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0nkp6sy5dmvishsg5rjvv3q57h87ald21zmq5506bxlwqb0p01gp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5)
         ("rust-log" ,rust-log-0.4)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1))))
    (home-page "https://github.com/rust-analyzer/lsp-server")
    (synopsis "Generic LSP server scaffold.")
    (description "Generic LSP server scaffold.")
    (license (list expat asl2.0))))

(define-public rust-logos-derive-0.12
  (package
    (name "rust-logos-derive")
    (version "0.12.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "logos-derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0vf38d1pvy3w7qdpl7yr9ds5azaahy51r6pi25dzghrazn3x59sn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-beef" ,rust-beef-0.5)
         ("rust-fnv" ,rust-fnv-1)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-regex-syntax" ,rust-regex-syntax-0.6)
         ("rust-syn" ,rust-syn-1)
         ("rust-utf8-ranges" ,rust-utf8-ranges-1))))
    (home-page "https://github.com/maciejhirsz/logos")
    (synopsis "Create ridiculously fast Lexers")
    (description "Create ridiculously fast Lexers")
    (license (list expat asl2.0))))

(define-public rust-logos-0.12
  (package
    (name "rust-logos")
    (version "0.12.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "logos" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0idklzd8afh87c82n3yp3l0djjmkwrsginxgm5ni64xylny2lzj2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-logos-derive" ,rust-logos-derive-0.12))))
    (home-page "https://github.com/maciejhirsz/logos")
    (synopsis "Create ridiculously fast Lexers")
    (description "Create ridiculously fast Lexers")
    (license (list expat asl2.0))))

(define-public rust-value-bag-1
  (package
    (name "rust-value-bag")
    (version "1.0.0-alpha.9")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "value-bag" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0mgc2vlqikx16gabp4ghbm3fs773kxvwjmrn57rydxs92a6vf292"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-ctor" ,rust-ctor-0.1)
         ("rust-erased-serde" ,rust-erased-serde-0.3)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-fmt" ,rust-serde-fmt-1)
         ("rust-sval" ,rust-sval-1)
         ("rust-version-check" ,rust-version-check-0.9))))
    (home-page "https://github.com/sval-rs/value-bag")
    (synopsis "Anonymous structured values")
    (description "Anonymous structured values")
    (license (list asl2.0 expat))))

(define-public rust-log-0.4
  (package
    (name "rust-log")
    (version "0.4.17")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "log" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0biqlaaw1lsr8bpnmbcc0fvgjj34yy79ghqzyi0ali7vgil2xcdb"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-sval" ,rust-sval-1)
         ("rust-value-bag" ,rust-value-bag-1))))
    (home-page "https://github.com/rust-lang/log")
    (synopsis "A lightweight logging facade for Rust
")
    (description "This package provides a lightweight logging facade for Rust")
    (license (list expat asl2.0))))

(define-public rust-itertools-0.10
  (package
    (name "rust-itertools")
    (version "0.10.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "itertools" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1qy55fqbaisr9qgbn7cvdvqlfqbh1f4ddf99zwan56z7l6gx3ad9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-either" ,rust-either-1))))
    (home-page "https://github.com/rust-itertools/itertools")
    (synopsis
      "Extra iterator adaptors, iterator methods, free functions, and macros.")
    (description
      "Extra iterator adaptors, iterator methods, free functions, and macros.")
    (license (list expat asl2.0))))

(define-public rust-isocountry-0.3
  (package
    (name "rust-isocountry")
    (version "0.3.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "isocountry" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "011y6sb6rs2i85g2jvifx5s54clw7nprinzzhfx08jgvy15xr88y"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde" ,rust-serde-1) ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/sifton/isocountry-rs")
    (synopsis "ISO 3166-1 enumeration for Rust")
    (description "ISO 3166-1 enumeration for Rust")
    (license expat)))

(define-public rust-unidecode-0.3
  (package
    (name "rust-unidecode")
    (version "0.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unidecode" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1p0sm8j9223kw3iincv60s746s88k09xcaqf8nkx3w83isfv2as0"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/chowdhurya/rust-unidecode/")
    (synopsis "Provides pure ASCII transliterations of Unicode strings.")
    (description
      "This package provides pure ASCII transliterations of Unicode strings.")
    (license bsd-3)))

(define-public rust-smallvec-1
  (package
    (name "rust-smallvec")
    (version "1.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "smallvec" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "10zf4fn63p2d6sx8qap3jvyarcfw563308x3431hd4c34r35gpgj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-arbitrary" ,rust-arbitrary-1) ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/servo/rust-smallvec")
    (synopsis
      "'Small vector' optimization: store up to a small number of items on the stack")
    (description
      "'Small vector' optimization: store up to a small number of items on the stack")
    (license (list expat asl2.0))))

(define-public rust-smallstr-0.2
  (package
    (name "rust-smallstr")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "smallstr" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0kxfwlpjg6l33glnckl1cnf2250sfa173q67zwlqfrv8s6a2g4hy"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde" ,rust-serde-1) ("rust-smallvec" ,rust-smallvec-1))))
    (home-page "https://github.com/murarth/smallstr")
    (synopsis "String-like container based on smallvec")
    (description "String-like container based on smallvec")
    (license (list expat asl2.0))))

(define-public rust-human-name-1
  (package
    (name "rust-human-name")
    (version "1.0.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "human_name" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0cmkrh4w6kpim5bciha9np5bxg651zphs97wd1p2wp5r1l1w1m19"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-libc" ,rust-libc-0.2)
         ("rust-phf" ,rust-phf-0.10)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-derive" ,rust-serde-derive-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-smallstr" ,rust-smallstr-0.2)
         ("rust-smallvec" ,rust-smallvec-1)
         ("rust-unicode-normalization" ,rust-unicode-normalization-0.1)
         ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
         ("rust-unidecode" ,rust-unidecode-0.3))))
    (home-page "https://github.com/djudd/human-name")
    (synopsis "A library for parsing and comparing human names")
    (description
      "This package provides a library for parsing and comparing human names")
    (license asl2.0)))

(define-public rust-libz-sys-1
  (package
    (name "rust-libz-sys")
    (version "1.1.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "libz-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1gqb8nk7j4ngvlcll8plm2fvjwic40p2g4qp20pwry1m74f7c0lp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cc" ,rust-cc-1)
         ("rust-cmake" ,rust-cmake-0.1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-pkg-config" ,rust-pkg-config-0.3)
         ("rust-vcpkg" ,rust-vcpkg-0.2))))
    (home-page "https://github.com/rust-lang/libz-sys")
    (synopsis
      "Low-level bindings to the system libz library (also known as zlib).")
    (description
      "Low-level bindings to the system libz library (also known as zlib).")
    (license (list expat asl2.0))))

(define-public rust-libz-ng-sys-1
  (package
    (name "rust-libz-ng-sys")
    (version "1.1.8")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "libz-ng-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wp0aya5hh76h1acspvrrsvq2fl0kyb8dpi6wy0zaswnm6bax6a3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cmake" ,rust-cmake-0.1) ("rust-libc" ,rust-libc-0.2))))
    (home-page "https://github.com/rust-lang/libz-sys")
    (synopsis
      "Low-level bindings to zlib-ng (libz-ng), a high-performance zlib library.")
    (description
      "Low-level bindings to zlib-ng (libz-ng), a high-performance zlib library.")
    (license (list expat asl2.0))))

(define-public rust-flate2-1
  (package
    (name "rust-flate2")
    (version "1.0.24")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "flate2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1xmzzg91c0hdl39qz0hwph0w629bva1dh21j3zyqp7xd4x60yazq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cloudflare-zlib-sys" ,rust-cloudflare-zlib-sys-0.3)
         ("rust-crc32fast" ,rust-crc32fast-1)
         ("rust-libz-ng-sys" ,rust-libz-ng-sys-1)
         ("rust-libz-sys" ,rust-libz-sys-1)
         ("rust-miniz-oxide" ,rust-miniz-oxide-0.5))))
    (home-page "https://github.com/rust-lang/flate2-rs")
    (synopsis
      "DEFLATE compression and decompression exposed as Read/BufRead/Write streams.
Supports miniz_oxide and multiple zlib implementations. Supports zlib, gzip,
and raw deflate streams.
")
    (description
      "DEFLATE compression and decompression exposed as Read/BufRead/Write streams.
Supports miniz_oxide and multiple zlib implementations.  Supports zlib, gzip,
and raw deflate streams.")
    (license (list expat asl2.0))))

(define-public rust-encoding-rs-0.8 ;; licensed (Apache 2.0 OR MIT) AND BSD-3
  (package
    (name "rust-encoding-rs")
    (version "0.8.31")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "encoding_rs" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0azc6rblf75vd862ymjahdfch27j1sshb7zynshrx7ywi5an6llq"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-packed-simd-2" ,rust-packed-simd-2-0.3)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://docs.rs/encoding_rs/")
    (synopsis "A Gecko-oriented implementation of the Encoding Standard")
    (description
      "This package provides a Gecko-oriented implementation of the Encoding Standard")
    (license (list expat bsd-3))))

(define-public rust-unicode-ident-1
  (package
    (name "rust-unicode-ident")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-ident" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1vlksh7rxnkakdc5qiwxix6fng9a5cw9v8dfnkf5xsx1zdlg0anj"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/dtolnay/unicode-ident")
    (synopsis
      "Determine whether characters have the XID_Start or XID_Continue properties according to Unicode Standard Annex #31")
    (description
      "Determine whether characters have the XID_Start or XID_Continue properties
according to Unicode Standard Annex #31")
    (license (list expat asl2.0))))

(define-public rust-proc-macro2-1
  (package
    (name "rust-proc-macro2")
    (version "1.0.39")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "proc-macro2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0vzm2m7rq6sym9w73ca3hpc5m9wkwm500hyya6bgrdr5j1b2ajy5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-unicode-ident" ,rust-unicode-ident-1))))
    (home-page "https://github.com/dtolnay/proc-macro2")
    (synopsis
      "A substitute implementation of the compiler's `proc_macro` API to decouple
token-based libraries from the procedural macro use case.
")
    (description
      "This package provides a substitute implementation of the compiler's `proc_macro`
API to decouple token-based libraries from the procedural macro use case.")
    (license (list expat asl2.0))))

(define-public rust-syn-1
  (package
    (name "rust-syn")
    (version "1.0.95")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "syn" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0hprqgqywlv4z9piq6ygjh0shq7xfkxkc8braafz6949mcb63bzv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-unicode-ident" ,rust-unicode-ident-1))))
    (home-page "https://github.com/dtolnay/syn")
    (synopsis "Parser for Rust source code")
    (description "Parser for Rust source code")
    (license (list expat asl2.0))))

(define-public rust-serde-derive-1
  (package
    (name "rust-serde-derive")
    (version "1.0.137")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde_derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1gkqhpw86zvppd0lwa8ljzpglwczxq3d7cnkfwirfn9r1jxgl9hz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://serde.rs")
    (synopsis "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]")
    (description
      "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]")
    (license (list expat asl2.0))))

(define-public rust-serde-1
  (package
    (name "rust-serde")
    (version "1.0.137")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1l8pynxnmld179a33l044yvkigq3fhiwgx0518a1b0vzqxa8vsk1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde-derive" ,rust-serde-derive-1))))
    (home-page "https://serde.rs")
    (synopsis "A generic serialization/deserialization framework")
    (description
      "This package provides a generic serialization/deserialization framework")
    (license (list expat asl2.0))))

;; (define-public rust-windows-x86-64-msvc-0.36
;;   (package
;;     (name "rust-windows-x86-64-msvc")
;;     (version "0.36.1")
;;     (source
;;       (origin
;;         (method url-fetch)
;;         (uri (crate-uri "windows_x86_64_msvc" version))
;;         (file-name (string-append name "-" version ".tar.gz"))
;;         (sha256
;;           (base32 "103n3xijm5vr7qxr1dps202ckfnv7njjnnfqmchg8gl5ii5cl4f8"))))
;;     (build-system cargo-build-system)
;;     (arguments `(#:skip-build? #t))
;;     (home-page "https://github.com/microsoft/windows-rs")
;;     (synopsis "Code gen support for the windows crate")
;;     (description "Code gen support for the windows crate")
;;     (license (list expat asl2.0))))

;; (define-public rust-windows-x86-64-gnu-0.36
;;   (package
;;     (name "rust-windows-x86-64-gnu")
;;     (version "0.36.1")
;;     (source
;;       (origin
;;         (method url-fetch)
;;         (uri (crate-uri "windows_x86_64_gnu" version))
;;         (file-name (string-append name "-" version ".tar.gz"))
;;         (sha256
;;           (base32 "1qfrck3jnihymfrd01s8260d4snql8ks2p8yaabipi3nhwdigkad"))))
;;     (build-system cargo-build-system)
;;     (arguments `(#:skip-build? #t))
;;     (home-page "https://github.com/microsoft/windows-rs")
;;     (synopsis "Code gen support for the windows crate")
;;     (description "Code gen support for the windows crate")
;;     (license (list expat asl2.0))))

;; (define-public rust-windows-i686-msvc-0.36
;;   (package
;;     (name "rust-windows-i686-msvc")
;;     (version "0.36.1")
;;     (source
;;       (origin
;;         (method url-fetch)
;;         (uri (crate-uri "windows_i686_msvc" version))
;;         (file-name (string-append name "-" version ".tar.gz"))
;;         (sha256
;;           (base32 "097h2a7wig04wbmpi3rz1akdy4s8gslj5szsx8g2v0dj91qr3rz2"))))
;;     (build-system cargo-build-system)
;;     (arguments `(#:skip-build? #t))
;;     (home-page "https://github.com/microsoft/windows-rs")
;;     (synopsis "Code gen support for the windows crate")
;;     (description "Code gen support for the windows crate")
;;     (license (list expat asl2.0))))

;; (define-public rust-windows-i686-gnu-0.36
;;   (package
;;     (name "rust-windows-i686-gnu")
;;     (version "0.36.1")
;;     (source
;;       (origin
;;         (method url-fetch)
;;         (uri (crate-uri "windows_i686_gnu" version))
;;         (file-name (string-append name "-" version ".tar.gz"))
;;         (sha256
;;           (base32 "1dm3svxfzamrv6kklyda9c3qylgwn5nwdps6p0kc9x6s077nq3hq"))))
;;     (build-system cargo-build-system)
;;     (arguments `(#:skip-build? #t))
;;     (home-page "https://github.com/microsoft/windows-rs")
;;     (synopsis "Code gen support for the windows crate")
;;     (description "Code gen support for the windows crate")
;;     (license (list expat asl2.0))))

;; (define-public rust-windows-aarch64-msvc-0.36
;;   (package
;;     (name "rust-windows-aarch64-msvc")
;;     (version "0.36.1")
;;     (source
;;       (origin
;;         (method url-fetch)
;;         (uri (crate-uri "windows_aarch64_msvc" version))
;;         (file-name (string-append name "-" version ".tar.gz"))
;;         (sha256
;;           (base32 "0ixaxs2c37ll2smprzh0xq5p238zn8ylzb3lk1zddqmd77yw7f4v"))))
;;     (build-system cargo-build-system)
;;     (arguments `(#:skip-build? #t))
;;     (home-page "https://github.com/microsoft/windows-rs")
;;     (synopsis "Code gen support for the windows crate")
;;     (description "Code gen support for the windows crate")
;;     (license (list expat asl2.0))))

;; (define-public rust-windows-sys-0.36
;;   (package
;;     (name "rust-windows-sys")
;;     (version "0.36.1")
;;     (source
;;       (origin
;;         (method url-fetch)
;;         (uri (crate-uri "windows-sys" version))
;;         (file-name (string-append name "-" version ".tar.gz"))
;;         (sha256
;;           (base32 "1lmqangv0zg1l46xiq7rfnqwsx8f8m52mqbgg2mrx7x52rd1a17a"))))
;;     (build-system cargo-build-system)
;;     (arguments
;;       `(#:skip-build?
;;         #t
;;         #:cargo-inputs
;;         (("rust-windows-aarch64-msvc" ,rust-windows-aarch64-msvc-0.36)
;;          ("rust-windows-i686-gnu" ,rust-windows-i686-gnu-0.36)
;;          ("rust-windows-i686-msvc" ,rust-windows-i686-msvc-0.36)
;;          ("rust-windows-x86-64-gnu" ,rust-windows-x86-64-gnu-0.36)
;;          ("rust-windows-x86-64-msvc" ,rust-windows-x86-64-msvc-0.36))))
;;     (home-page "https://github.com/microsoft/windows-rs")
;;     (synopsis "Rust for Windows")
;;     (description "Rust for Windows")
;;     (license (list expat asl2.0))))

(define-public rust-simd-adler32-0.3
  (package
    (name "rust-simd-adler32")
    (version "0.3.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "simd-adler32" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "060b9v15s3miq06582cj2ywam92ph6xs34s62mc8az3xc4wxz98l"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/mcountryman/simd-adler32")
    (synopsis
      "A SIMD-accelerated Adler-32 rolling hash algorithm implementation.")
    (description
      "This package provides a SIMD-accelerated Adler-32 rolling hash algorithm
implementation.")
    (license expat)))

(define-public rust-adler-1
  (package
    (name "rust-adler")
    (version "1.0.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "adler" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1zim79cvzd5yrkzl3nyfx0avijwgk9fqv3yrscdy1cc79ih02qpj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
         ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
    (home-page "https://github.com/jonas-schievink/adler.git")
    (synopsis "A simple clean-room implementation of the Adler-32 checksum")
    (description
      "This package provides a simple clean-room implementation of the Adler-32
checksum")
    (license (list bsd-0 expat asl2.0))))

(define-public rust-miniz-oxide-0.5
  (package
    (name "rust-miniz-oxide")
    (version "0.5.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "miniz_oxide" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "10phz3ppw4p8pz4rwniy3qkw95wiq64kbvpb0l8kjcrzpka9pcnj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-adler" ,rust-adler-1)
         ("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
         ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
         ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
         ("rust-simd-adler32" ,rust-simd-adler32-0.3))))
    (home-page "https://github.com/Frommi/miniz_oxide/tree/master/miniz_oxide")
    (synopsis
      "DEFLATE compression and decompression library rewritten in Rust based on miniz")
    (description
      "DEFLATE compression and decompression library rewritten in Rust based on miniz")
    (license (list expat zlib asl2.0))))

(define-public rust-object-0.27
  (package
    (name "rust-object")
    (version "0.27.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "object" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ygv9zgi9wz6q5f2z9xn72i0c97jjr1dgj30kbyicdhxk8zivb37"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
         ("rust-crc32fast" ,rust-crc32fast-1)
         ("rust-flate2" ,rust-flate2-1)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-memchr" ,rust-memchr-2)
         ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
         ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
         ("rust-wasmparser" ,rust-wasmparser-0.57))))
    (home-page "https://github.com/gimli-rs/object")
    (synopsis
      "A unified interface for reading and writing object file formats.")
    (description
      "This package provides a unified interface for reading and writing object file
formats.")
    (license (list asl2.0 expat))))

(define-public rust-gimli-0.26
  (package
    (name "rust-gimli")
    (version "0.26.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gimli" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1m0vi36ypv4gx9gzcw6y456yqnlypizhwlcqrmg6vkwd0lnkgk3q"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
         ("rust-fallible-iterator" ,rust-fallible-iterator-0.2)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
         ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
         ("rust-stable-deref-trait" ,rust-stable-deref-trait-1))))
    (home-page "https://github.com/gimli-rs/gimli")
    (synopsis "A library for reading and writing the DWARF debugging format.")
    (description
      "This package provides a library for reading and writing the DWARF debugging
format.")
    (license (list asl2.0 expat))))

(define-public rust-addr2line-0.17
  (package
    (name "rust-addr2line")
    (version "0.17.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "addr2line" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0sw16zqy6w0ar633z69m7lw6gb0k1y7xj3387a8wly43ij5div5r"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
         ("rust-cpp-demangle" ,rust-cpp-demangle-0.3)
         ("rust-fallible-iterator" ,rust-fallible-iterator-0.2)
         ("rust-gimli" ,rust-gimli-0.26)
         ("rust-object" ,rust-object-0.27)
         ("rust-rustc-demangle" ,rust-rustc-demangle-0.1)
         ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
         ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
         ("rust-smallvec" ,rust-smallvec-1))))
    (home-page "https://github.com/gimli-rs/addr2line")
    (synopsis
      "A cross-platform symbolication library written in Rust, using `gimli`")
    (description
      "This package provides a cross-platform symbolication library written in Rust,
using `gimli`")
    (license (list asl2.0 expat))))

(define-public rust-backtrace-0.3
  (package
    (name "rust-backtrace")
    (version "0.3.65")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "backtrace" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0qggp0d8pbw5vfnpm0r7lrn6wmh5yjiz4yc4bzynb8l26i2pv88i"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-addr2line" ,rust-addr2line-0.17)
         ("rust-cc" ,rust-cc-1)
         ("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-cpp-demangle" ,rust-cpp-demangle-0.3)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-miniz-oxide" ,rust-miniz-oxide-0.5)
         ("rust-object" ,rust-object-0.28)
         ("rust-rustc-demangle" ,rust-rustc-demangle-0.1)
         ("rust-rustc-serialize" ,rust-rustc-serialize-0.3)
         ("rust-serde" ,rust-serde-1)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/rust-lang/backtrace-rs")
    (synopsis
      "A library to acquire a stack trace (backtrace) at runtime in a Rust program.
")
    (description
      "This package provides a library to acquire a stack trace (backtrace) at runtime
in a Rust program.")
    (license (list expat asl2.0))))

(define-public rust-parking-lot-core-0.9
  (package
    (name "rust-parking-lot-core")
    (version "0.9.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "parking_lot_core" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0ab95rljb99rm51wcic16jgbajcr6lgbqkrr21w7bc2wyb5pk8h9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-backtrace" ,rust-backtrace-0.3)
         ("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-petgraph" ,rust-petgraph-0.6)
         ("rust-redox-syscall" ,rust-redox-syscall-0.2)
         ("rust-smallvec" ,rust-smallvec-1)
         ("rust-thread-id" ,rust-thread-id-4))))
    (home-page "https://github.com/Amanieu/parking_lot")
    (synopsis
      "An advanced API for creating custom synchronization primitives.")
    (description
      "An advanced API for creating custom synchronization primitives.")
    (license (list expat asl2.0))))

(define-public rust-autocfg-1
  (package
    (name "rust-autocfg")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "autocfg" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1ylp3cb47ylzabimazvbz9ms6ap784zhb6syaz6c1jqpmcmq0s6l"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/cuviper/autocfg")
    (synopsis "Automatic cfg for Rust compiler features")
    (description "Automatic cfg for Rust compiler features")
    (license (list asl2.0 expat))))

(define-public rust-lock-api-0.4
  (package
    (name "rust-lock-api")
    (version "0.4.7")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "lock_api" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0lwckl9l51y69bwf854kmdmmr1543spbxaa9xjclc3lllsvaazrj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-autocfg" ,rust-autocfg-1)
         ("rust-owning-ref" ,rust-owning-ref-0.4)
         ("rust-scopeguard" ,rust-scopeguard-1)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/Amanieu/parking_lot")
    (synopsis
      "Wrappers to create fully-featured Mutex and RwLock types. Compatible with no_std.")
    (description
      "Wrappers to create fully-featured Mutex and RwLock types.  Compatible with
no_std.")
    (license (list expat asl2.0))))

(define-public rust-parking-lot-0.12
  (package
    (name "rust-parking-lot")
    (version "0.12.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "parking_lot" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0n7gp0cnfghglc370cxhawwfijvhj3wrjh8gdi8c06m6jcjfrxc7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-lock-api" ,rust-lock-api-0.4)
         ("rust-parking-lot-core" ,rust-parking-lot-core-0.9))))
    (home-page "https://github.com/Amanieu/parking_lot")
    (synopsis
      "More compact and efficient implementations of the standard synchronization primitives.")
    (description
      "More compact and efficient implementations of the standard synchronization
primitives.")
    (license (list asl2.0 expat))))

(define-public rust-dashmap-5
  (package
    (name "rust-dashmap")
    (version "5.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "dashmap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "172kdsmd1j7y8i1w2l42cdcv0ilw8ir9x8wyacp350bp3y1mi22c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-num-cpus" ,rust-num-cpus-1)
         ("rust-parking-lot" ,rust-parking-lot-0.12)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/xacrimon/dashmap")
    (synopsis "Blazing fast concurrent HashMap for Rust.")
    (description "Blazing fast concurrent HashMap for Rust.")
    (license expat)))

(define-public rust-crossbeam-channel-0.5
  (package
    (name "rust-crossbeam-channel")
    (version "0.5.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "crossbeam-channel" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0lvcpv6hg1g1r6aamiq9b4958p4hjy8dsqzrnmj6hp36zgappajs"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8))))
    (home-page
      "https://github.com/crossbeam-rs/crossbeam/tree/master/crossbeam-channel")
    (synopsis "Multi-producer multi-consumer channels for message passing")
    (description "Multi-producer multi-consumer channels for message passing")
    (license (list expat asl2.0))))

(define-public rust-textwrap-0.15
  (package
    (name "rust-textwrap")
    (version "0.15.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "textwrap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1yw513k61lfiwgqrfvsjw1a5wpvm0azhpjr2kr0jhnq9c56is55i"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-hyphenation" ,rust-hyphenation-0.8)
         ("rust-smawk" ,rust-smawk-0.3)
         ("rust-terminal-size" ,rust-terminal-size-0.1)
         ("rust-unicode-linebreak" ,rust-unicode-linebreak-0.1)
         ("rust-unicode-width" ,rust-unicode-width-0.1))))
    (home-page "https://github.com/mgeisler/textwrap")
    (synopsis
      "Powerful library for word wrapping, indenting, and dedenting strings")
    (description
      "Powerful library for word wrapping, indenting, and dedenting strings")
    (license expat)))

(define-public rust-clap-lex-0.2
  (package
    (name "rust-clap-lex")
    (version "0.2.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "clap_lex" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04wjgd1d3rxsng70rczfzhc7lj87hmwzznhs1dp5xb9d27qkaz53"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-os-str-bytes" ,rust-os-str-bytes-6))))
    (home-page "https://github.com/clap-rs/clap/tree/master/clap_lex")
    (synopsis "Minimal, flexible command line parser")
    (description "Minimal, flexible command line parser")
    (license (list expat asl2.0))))

(define-public rust-clap-derive-3
  (package
    (name "rust-clap-derive")
    (version "3.1.18")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "clap_derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0g53w6qkqcc122bqh51jzfg51147il643idvq1czxkr2x5306ci5"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-heck" ,rust-heck-0.4)
         ("rust-proc-macro-error" ,rust-proc-macro-error-1)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/clap-rs/clap/tree/master/clap_derive")
    (synopsis
      "Parse command line argument by defining a struct, derive crate.")
    (description
      "Parse command line argument by defining a struct, derive crate.")
    (license (list expat asl2.0))))

(define-public rust-clap-3
  (package
    (name "rust-clap")
    (version "3.1.18")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "clap" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "02s4hk9hrmm2s1j7dkbwpyd75mfzx3p8ks2chmp4ccybv95xznyj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-atty" ,rust-atty-0.2)
         ("rust-backtrace" ,rust-backtrace-0.3)
         ("rust-bitflags" ,rust-bitflags-1)
         ("rust-clap-derive" ,rust-clap-derive-3)
         ("rust-clap-lex" ,rust-clap-lex-0.2)
         ("rust-indexmap" ,rust-indexmap-1)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-regex" ,rust-regex-1)
         ("rust-strsim" ,rust-strsim-0.10)
         ("rust-termcolor" ,rust-termcolor-1)
         ("rust-terminal-size" ,rust-terminal-size-0.1)
         ("rust-textwrap" ,rust-textwrap-0.15)
         ("rust-unicase" ,rust-unicase-2)
         ("rust-yaml-rust" ,rust-yaml-rust-0.4))))
    (home-page "https://github.com/clap-rs/clap")
    (synopsis
      "A simple to use, efficient, and full-featured Command Line Argument Parser")
    (description
      "This package provides a simple to use, efficient, and full-featured Command Line
Argument Parser")
    (license (list expat asl2.0))))

(define-public rust-anyhow-1
  (package
    (name "rust-anyhow")
    (version "1.0.57")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "anyhow" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1p4w5a6izznpv0kxwrs6r5kz9khf5dmyck3c3mx6idycim8biy88"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-backtrace" ,rust-backtrace-0.3))))
    (home-page "https://github.com/dtolnay/anyhow")
    (synopsis "Flexible concrete Error type built on std::error::Error")
    (description "Flexible concrete Error type built on std::error::Error")
    (license (list expat asl2.0))))

(define-public rust-texlab-4
  (package
    (name "rust-texlab")
    (version "4.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "texlab" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0aaxj9j3c40xphynyvsikpphh4bvlycw1mzgbh1rsjrmfw1iffks"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-anyhow" ,rust-anyhow-1)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-clap" ,rust-clap-3)
         ("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5)
         ("rust-dashmap" ,rust-dashmap-5)
         ("rust-derive-more" ,rust-derive-more-0.99)
         ("rust-encoding-rs" ,rust-encoding-rs-0.8)
         ("rust-encoding-rs-io" ,rust-encoding-rs-io-0.1)
         ("rust-fern" ,rust-fern-0.6)
         ("rust-flate2" ,rust-flate2-1)
         ("rust-fuzzy-matcher" ,rust-fuzzy-matcher-0.3)
         ("rust-human-name" ,rust-human-name-1)
         ("rust-isocountry" ,rust-isocountry-0.3)
         ("rust-itertools" ,rust-itertools-0.10)
         ("rust-log" ,rust-log-0.4)
         ("rust-logos" ,rust-logos-0.12)
         ("rust-lsp-server" ,rust-lsp-server-0.6)
         ("rust-lsp-types" ,rust-lsp-types-0.93)
         ("rust-multimap" ,rust-multimap-0.8)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-petgraph" ,rust-petgraph-0.6)
         ("rust-regex" ,rust-regex-1)
         ("rust-rowan" ,rust-rowan-0.15)
         ("rust-rustc-hash" ,rust-rustc-hash-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-serde-repr" ,rust-serde-repr-0.1)
         ("rust-smol-str" ,rust-smol-str-0.1)
         ("rust-strum" ,rust-strum-0.24)
         ("rust-tempfile" ,rust-tempfile-3)
         ("rust-threadpool" ,rust-threadpool-1)
         ("rust-titlecase" ,rust-titlecase-1)
         ("rust-unicode-normalization" ,rust-unicode-normalization-0.1)
         ("rust-url" ,rust-url-2)
         ("rust-uuid" ,rust-uuid-1))
        #:cargo-development-inputs
        (("rust-criterion" ,rust-criterion-0.3)
         ("rust-indoc" ,rust-indoc-1)
         ("rust-insta" ,rust-insta-1)
         ("rust-typed-builder" ,rust-typed-builder-0.10)
         ("rust-unindent" ,rust-unindent-0.1))))
    (home-page "https://github.com/latex-lsp/texlab")
    (synopsis "LaTeX Language Server")
    (description "LaTeX Language Server")
    (license gpl3)))
