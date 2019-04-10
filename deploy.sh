dotnet publish -c Release 

cp dockerfile ./bin/release/netcoreapp2.2/publish

docker build -t docker-job-image ./bin/release/netcoreapp2.2/publish

docker tag docker-job-image registry.heroku.com/sdg-docker-scheduler/web

docker push registry.heroku.com/sdg-docker-scheduler/web

heroku container:release web -a  sdg-docker-scheduler

# sudo chmod 755 deploy.sh
# ./deploy.sh