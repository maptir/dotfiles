RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
NC='\033[0m'

echoGreen(){
  printf "${GREEN}${1}${NC}\n"
}

echoRed(){
  printf "${RED}${1}${NC}\n"
}

echoYellow(){
  printf "${YELLOW}${1}${NC}\n"
}

install(){
  echoYellow "Checking ${1}..."
  if [ -z "$(command -v ${1})" ]; then
    echoGreen "[ Installing ${1}... ]"
    sudo apt install ${1}
    echoGreen "[ Done installing ${1} ]"
  else
    echoGreen "${1} is already installed."
  fi
}
