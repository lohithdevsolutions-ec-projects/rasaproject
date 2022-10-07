rm -rf ./models/*
rm -rf /opt/rasatest3/*
cp -r ./* /opt/rasatest3/ && cd /opt/rasatest3/ && docker run --user 996 -v $(pwd):/app rasa/rasa:latest-full train --fixed-model-name reg_$(date +%d%m%y_%H:%M) && cp ./models/*.tar.gz /var/lib/jenkins/workspace/rasafreestyle/
sleep 20
docker rm -f $(docker ps -a -q)
sleep 5
docker ps -a
