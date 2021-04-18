while true; do { \
  echo -ne "HTTP/1.1 200 OK\r\n"; sh web_body.sh; } \
  | nc -l -k -q 2 8080; \
done
