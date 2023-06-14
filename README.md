# P7-BileMo API
BileMo API project built with Symfony & API Platform
## Installation
This project uses composer and docker.

1. Clone the repository.
2. Run `docker-compose up -d` to install & initiate the mysql database.
3. Run `composer install` to install the dependencies.
4. In the file .env, configure `JWT_PASSPHRASE=` using whatever passphrase you want. You may also create a new file called .env.local and paste it in to prevent committing it accidentally.
5. Generate the SSL keys for the JWT authentication using `php bin/console lexik:jwt:generate-keypair`
6. Launch symfony server with `symfony serve -d`
7. The api documentation is available on : `localhost:8000/api`

You can use clients ivah.haley@gmail.com or sydni.jast@cartwright.info for tests. All clients have "password" as password.
