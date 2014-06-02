#!/usr/bin/env bats

load test_helper

setup() {
  export CFENV_ROOT="${TMP}/cfenv"
  export HOOK_PATH="${TMP}/i has hooks"
  mkdir -p "$HOOK_PATH"
}

# @test "cfenv-create hooks" {
#   cat > "${HOOK_PATH}/create.bash" <<OUT
# before_create 'echo before: \$PREFIX'
# after_create 'echo after: \$STATUS'
# OUT
#   stub cfenv-hooks "create : echo '$HOOK_PATH'/create.bash"
#   stub cfenv-rehash "echo rehashed"

#   definition="${TMP}/2.0.0"
#   cat > "$definition" <<<"echo cf-build"
#   run cfenv-create "$definition"

#   assert_success
#   assert_output <<-OUT
# before: ${CFENV_ROOT}/environments/2.0.0
# cf-build
# after: 0
# rehashed
# OUT
# }

@test "cfenv-destroy hooks" {
  cat > "${HOOK_PATH}/destroy.bash" <<OUT
before_destroy 'echo before: \$PREFIX'
after_destroy 'echo after.'
rm() {
  echo "rm \$@"
  command rm "\$@"
}
OUT
  stub cfenv-hooks "destroy : echo '$HOOK_PATH'/destroy.bash"
  stub cfenv-rehash "echo rehashed"

  mkdir -p "${CFENV_ROOT}/environments/2.0.0"
  run cfenv-destroy -f 2.0.0

  assert_success
  assert_output <<-OUT
before: ${CFENV_ROOT}/environments/2.0.0
rm -rf ${CFENV_ROOT}/environments/2.0.0
rehashed
after.
OUT

  assert [ ! -d "${CFENV_ROOT}/environments/2.0.0" ]
}
