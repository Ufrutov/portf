# portf
Port forwarding tool for ssh tunnel

## Linux OS usage

Make `portf.sh` script executable and use it via shell script call.

#### Command line alias

Add alias to `.bashrc` file at Home derictory to access portf utility via command line:
```
# port forwarding utility
alias portf='/usr/local/lib/scripts/portf.sh'
```

> Prefered place for it - `/usr/local/lib/scripts/portf.sh`, or anything else.

In terminal it can be launched via command:
```
$ portf 127.0.0.1
```

###### #TODO

> Add ability to work with multiple arguments (ex. multiple passed ip-addresses)