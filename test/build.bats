#!/usr/bin/env bats

load test_helper

@test "cf is installed" {
  run "bin/cf-build" "${TMP}"
  assert_success

  assert [ -x ${TMP}/bin/cf ]
}
