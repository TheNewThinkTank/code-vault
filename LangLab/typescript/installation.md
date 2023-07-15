# TypeScript Installation

install, load and activate `nvm`
```BASH
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. ~/.nvm/nvm.sh
```

install `node.js` version 16 (compatible with `aws cdk`)
```BASH
nvm install 16
npm install -g npm@9.8.0
```

check versions
```BASH
node -v
npm -v
```

global typescript installation<br>
`npm i -g typescript`
<!-- `npm -g install typescript` -->
