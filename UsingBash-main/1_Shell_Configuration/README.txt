#alias
alias srcCode='cd ./src'

#source apikeys
export apikeys='/home/cloudshell-user/apikeys.sh'
source $apikeys

#source python
python3 -m venv ~/.venv
source ~/.venv/bin/activate
