(lang dune 3.12)

(name ppx_get_env_nuevo)

(generate_opam_files true)

(source
 (github jevinskie/ppx_gppx_get_env_nuevoetenv_test))

(authors "ppxlib authors" "Jevin Sweval")

(maintainers "ppxlib authors" "Jevin Sweval")

(license MIT)

(documentation https://github.com/jevinskie/ppx_get_env_nuevo)

(package
 (name ppx_get_env_nuevo)
 (synopsis
  "Standalone, packaged, version of the more recently updated ppx_get_env provided in the ppxlib samples vs the older ppx_getenv package. Provides '[%get_env \"MY_VAR\"]'.")
 (depends
  ocaml
  dune
  ppxlib
  (ounit2 :with-test)
  (odoc :with-doc))
 (tags
  (ppx ppxlib ppx_getenv ppx_get_env)))
