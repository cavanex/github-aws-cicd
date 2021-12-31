cd /home/ec2-user/express-app
sudo chmod -R 777 /home/ec2-user/express-app

# Add npm and node to path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

#install node modules
npm install 

#start node app
node app.js > app.out.log 2> app.err.log < /dev/null &