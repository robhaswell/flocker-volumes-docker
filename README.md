# flocker-volumes-docker
A Docker image for the `flocker-volumes` command from ClusterHQ/unofficial-docker-tools.

## Usage

`flocker-volumes` requires two parameters: The location of certificates directory, containing `user.crt` and `user.key`, and the IP address of the control service.
These are supplied through a volume and environment variable:

    docker run -v /path/to/your/certs:/certs -e CONTROL_SERVICE=1.2.3.4

Optionally the control service port can be specified with the `CONTROL_PORT` environment variable.

## Example

    docker run -v .:/certs -e CONTROL_SERVICE=1.2.3.4 move a1b2c3 d4e5f6
