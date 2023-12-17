TRANSFER_REPOSITORY := https://github.com/t-sakurai816/ms-bank-transfer
ACCOUNTS_REPOSITORY := https://github.com/t-sakurai816/ms-bank-accounts

clone:
		git clone ${TRANSFER_REPOSITORY} ./services/ms-bank-transfer
		git clone ${ACCOUNTS_REPOSITORY} ./services/ms-bank-accounts

pull:

		cd ./services/ms-bank-transfer && git pull
		cd ./services/ms-bank-accounts && git pull

build:
		docker-compose build

up:
		docker-compose up -d

down:
		docker-compose down

seed:
		docker-compose exec accounts node /app/scripts/initialize.js
