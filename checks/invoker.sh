#!/bin/sh
# A GET on the invoker servlet returns a serialized Java object (no payload is sent).
set -e
curl -fsS http://jboss:8080/ | grep -qi 'jboss'
curl -fsS http://jboss:8080/invoker/JMXInvokerServlet | od -An -tx1 | head -1 | grep -q 'ac ed 00 05'
