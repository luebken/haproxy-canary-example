A simple example doing traffic shapping / canary releases.

Start two webserver:
$ docker run --rm -P --name webserver1 giantswarm/helloworld
$ docker run --rm -P --name webserver2 giantswarm/helloworld

Build and start the haproxy:
$ docker build -t my-haproxy .
$ docker run -P --link webserver1 --link webserver2 my-haproxy

Questions / Issues:
* How to log with HAProxy to stdout?
* HAProxy instances not reacting to signals