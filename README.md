# ppx_get_env_nuevo

This project contains an example of a very simple ppx rewriter that will expand
`[%get_env_nuevo "SOME_ENV_VAR"]` into the value of the env variable `SOME_ENV_VAR` at compile time,
as a string.

E.g., assuming we set `MY_VAR="foo"`, it will turn:

```ocaml
let () = print_string [%get_env_nuevo "MY_VAR"]
```

into:

```ocaml
let () = print_string "foo"
```

Note that this is just a toy example and we'd actually advise you against this type of ppx
that have side effects or rely heavily on the file system or env variables unless you absolutely know
what you are doing.

In particular in this case it won't work well with dune since dune won't know about the dependency
on the env variables specified in the extension's payload.

## Origin
This is a standalone, packaged, version of the [more recently updated ppx_get_env provided in the ppxlib samples](https://github.com/ocaml-ppx/ppxlib/tree/main/examples/simple-extension-rewriter) vs the [older ppx_getenv package](https://github.com/ocaml-ppx/ppx_getenv).
