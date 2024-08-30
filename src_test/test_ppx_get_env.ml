open OUnit2

let test_ppx_get_env_nuevo _ = assert_equal "42" [%get_env "PPX_GETENV_CHECK"]

let suite =
  "Test ppx_get_env_nuevo"
  >::: [ "ppx_get_env_nuevo" >:: test_ppx_get_env_nuevo ]

let _ = run_test_tt_main suite
