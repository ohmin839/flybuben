A server app built using [Shelf](https://pub.dev/packages/shelf),
configured to enable running with [Docker](https://www.docker.com/).

This sample code handles HTTP GET requests to `/` and `/echo/<message>`

# Running the sample

## Running with the Dart SDK

You can run the example with the [Dart SDK](https://dart.dev/get-dart)
like this:

```
$ dart run bin/server.dart
Server listening on port 8080
```

And then from a second terminal:
```
$ curl http://0.0.0.0:8080
Բարև Ձեզ։
$ curl http://0.0.0.0:8080/echo/Barev%20Dzez:
Բարև Ձեզ։
```

## Running with Docker

If you have [Docker Desktop](https://www.docker.com/get-started) installed, you
can build and run with the `docker` command:

```
$ docker build . -t myserver
$ docker run -it -p 8080:8080 myserver
Server listening on port 8080
```

And then from a second terminal:
```
$ curl http://0.0.0.0:8080
Բարև Ձեզ։
$ curl http://0.0.0.0:8080/echo/Barev%20Dzez:
Բարև Ձեզ։
```

You should see the logging printed in the first terminal:
```
2022-09-15T13:17:32.227011  0:00:00.015073 GET     [200] /
2022-09-15T13:18:03.885658  0:00:00.017569 GET     [200] /echo/Barev%20Dzez:
```
