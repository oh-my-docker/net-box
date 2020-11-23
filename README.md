# Net-Box

[![Docker Repository on Quay](https://quay.io/repository/omd/net-box/status "Docker Repository on Quay")](https://quay.io/repository/omd/net-box)

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/xiaopeng163/net-box?style=plastic)

Provide some network tools for network engineers.

## How to use

You can build the image by yourselves, or pull the image from quay.io

```
$ docker pull quay.io/omd/net-box
```

or from docker hub

```
$ docker pull xiaopeng163/net-box
```

Some examples like:

SSH

```
$ docker run --rm -it quay.io/omd/net-box ssh pengxiao@192.168.1.1
The authenticity of host '192.168.1.1 (192.168.1.1)' can't be established.
ECDSA key fingerprint is SHA256:CAGkNVP0v5CIIVMXd2L24B+n+eGuhLRnTY1+W3tncaQ.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added '192.168.1.1' (ECDSA) to the list of known hosts.

*** Unauthorized access to this system/network is prohibited. ***
User Authentication
Enter password:

<aa-bb-cc-r1>
```

SNMP

```
$ docker run --rm -it quay.io/omd/net-box snmpwalk -v 2c -c abc123 192.168.1.1 sysName.0
Created directory: /var/lib/net-snmp
Created directory: /var/lib/net-snmp/mib_indexes
SNMPv2-MIB::sysName.0 = STRING: aa-bb-cc-r1
```

**it will be handy to use alias**

```
$ alias netbox="docker run --rm -it quay.io/omd/net-box"
```

then just use 

```
$ netbox snmpget -v 2c -c public 1.1.1.1 sysName.0
```

## Tools include

Tools include:

    ping
    ping6
    traceroute
    traceroute6
    mtr

    iperf3
    dig
    whois
    nslookup
    nmap

    ssh
    ssh-add
    ssh-agent
    ssh-copy-id
    ssh-keygen
    ssh-keyscan
    ssh-pkcs11-helper
    scanssh

    telnet

    net-snmp-create-v3-user
    snmpbulkget
    snmpbulkwalk
    snmpconf
    snmpdelta
    snmpdf
    snmpget
    snmpgetnext
    snmpinform
    snmpnetstat
    snmpping
    snmpps
    snmpset
    snmpstatus
    snmptable
    snmptest
    snmptop
    snmptranslate
    snmptrap
    snmpusm
    snmpvacm
    snmpwalk
    snmptt

    curl
    wget


## Welcome to Contribute

welcome to contribute and add some useful tools for network engineers.
