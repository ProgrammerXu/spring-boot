source ./test-functions.sh
mkdir ./pid
install_service
echo 'PID_FOLDER=./pid' > /test-service/spring-boot-app.conf
start_service
echo "PID: $(cat /test-service/pid/spring-boot-app/spring-boot-app.pid)"
await_app
curl -s http://127.0.0.1:8080/
status_service
stop_service
