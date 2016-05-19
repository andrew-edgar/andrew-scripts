pushd $HOME
  wget https://github.com/pivotal-cf-experimental/veritas/releases/download/latest/veritas -O ./veritas 2>/dev/null
  chmod +x ./veritas

  echo "export PATH=$PATH:$PWD" > veritas.bash
  echo "export DROPSONDE_ORIGIN=veritas" >> veritas.bash
  echo "export DROPSONDE_DESTINATION=localhost:3457" >> veritas.bash
  ./veritas autodetect >> veritas.bash
  ./veritas completions >> veritas.bash

  source veritas.bash
popd

export BBS_ENDPOINT=https://bbs.service.cf.internal:8889; \
export BBS_CERT_FILE=/var/vcap/jobs/rep/config/certs/bbs/client.crt; \
export BBS_KEY_FILE=/var/vcap/jobs/rep/config/certs/bbs/client.key

veritas $1
