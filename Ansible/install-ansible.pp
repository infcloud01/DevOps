#The epel-package works on centos but not rhel; install the epel from rpm if you're using redhat then run the puppet file
#package { 'epel-release':
#}
package { 'python':
}
package { 'ansible':
}
