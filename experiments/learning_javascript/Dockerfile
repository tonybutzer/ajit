from node


workdir /home/node
run git clone https://github.com/n-riesco/ijavascript.git && mkdir /home/jovyan

#run apt-get install jupyter

run apt-get -y update && apt-get install -y python3-pip python3-dev && pip3 install --upgrade pip && pip install jupyter

run (cd /home/node/ijavascript ; npm install) && /home/node/ijavascript/bin/ijsinstall.js --spec-path=full
#run npm config set prefix $HOME

#run npm install -g ijavscript && ijsinstall

#workdir /home/jovyan
#user 1000

run mkdir /home/node/0notebooks

cmd jupyter notebook --allow-root --ip="0.0.0.0" --NotebookApp.token='yaml'


