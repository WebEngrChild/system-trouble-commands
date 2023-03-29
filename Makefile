init:
	@make build
	@make up
	@make start
build:
	docker-compose build --no-cache
up:
	docker-compose up -d
start:
	docker-compose exec ubuntu service nginx start
# 強制的にエラーを発生させるため設定ファイルを削除
delete-conf:
	docker-compose exec ubuntu rm /etc/nginx/nginx.conf
test:
	docker-compose exec ubuntu nginx -t
down:
	docker-compose down