# should be the same as the one specified in create-app.sh
random="chocolate"

# set honest config
heroku config:set --app "$random-honest-node-1" HONEST=true DUMMY=true CHAIN_SIZE=2048 COMMITTEE_SIZE=512 

# set dishonest config
for index in {1..13}
do
    name="$random-dishonest-node-$index"
    heroku config:set --app "$name" HONEST=false DUMMY=true CHAIN_SIZE=2048  COMMITTEE_SIZE=512
done