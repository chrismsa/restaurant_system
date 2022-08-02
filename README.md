# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


sudo apt install postgresql postgresql-contrib

service postgresql status
12/main (port 5432): online

sudo service postgresql start

pg_lsclusters
Ver Cluster Port Status Owner    Data directory              Log file
12  main    5432 online postgres /var/lib/postgresql/12/main /var/log/postgresql/postgresql-12-main.log

sudo pg_ctlcluster 12 main start

bundle i

rake db:setup
FATAL:  role "User" does not exist 

sudo -u postgres psql
postgres=# create role user login createdb;
postgres=# \q

rake db:setup



rake db:migrate:reset

rake db:seed

if bootstrap not work
rails javascript:install:esbuild
rails css:install:bootstrap

./bin/dev
