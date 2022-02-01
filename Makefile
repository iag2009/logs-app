run:
	# docker run -d -p 80:4200 --name logsapp --env-file ./config/.env logsapp:1.1
	docker run -d -p 80:3000 --rm -v logs:/app/data --rm --name logsapp logsapp:1.2
run-dev:
	docker run -d -p 80:3000 --rm -v "/Users/alexander.ilves/projects/logs-app:/app" -v /app/node_modules -v logs:/app/data --name logsapp logsapp:1.2
stop:
	docker stop logsapp
