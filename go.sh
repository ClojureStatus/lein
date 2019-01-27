#!/bin/bash -euo pipefail

if [ ! -f ${HOME}/bin/lein ]; then
  echo "Fetching lein command..."
  mkdir -p "${HOME}/bin" # force creation of bin folder
  curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein -o lein
  chmod 755 lein
  PATH=${HOME}/bin:${PATH}
else
  echo "Lein already present..."
fi

lein run | tee actual.txt
diff actual.txt expected.txt
