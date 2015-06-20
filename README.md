# flocker-volumes-docker
A Docker image for the `flocker-volumes` command from ClusterHQ/unofficial-docker-tools.

## Usage

`flocker-volumes` requires two parameters: The location of certificates directory, containing `user.crt` and `user.key`, and the IP address of the control service.
These are supplied through a volume and environment variable:

    docker run -v /path/to/your/certs:/certs -e CONTROL_SERVICE=1.2.3.4

Optionally the control service port can be specified with the `CONTROL_PORT` environment variable.

## Example

    docker run -v .:/certs -e CONTROL_SERVICE=1.2.3.4 robhaswell/flocker-volumes --help
    Usage: flocker-volumes [options]
    Options:
          --cluster-yml=      Location of cluster.yml file (makes other options
                              unnecessary) [default: ./cluster.yml]
          --certs-path=       Path to certificates folder [default: .]
          --user=             Name of user for which .key and .crt files exist
                              [default: user]
          --cluster-crt=      Name of cluster cert file [default: cluster.crt]
          --control-service=  Hostname or IP of control service
          --control-port=     Port for control service REST API [default: 4523]
          --version           Display Twisted version and exit.
          --help              Display this help and exit.
    Commands:
        create          create a flocker dataset
        destroy         mark a dataset to be deleted
        list            list flocker datasets
        list-nodes      show list of nodes in the cluster
        move            move a dataset from one node to another
        version         show version information
