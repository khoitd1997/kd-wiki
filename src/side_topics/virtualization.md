# Virtualization

Lots of things moving in this space right now, two tools that stand out:

- Vagrant: good for local development, can spin up a vm similar to Virtualbox but without the hassle. Used a lot for devops testings like testing ansible scripts.
- Docker: good for deployment and local development as well, probably use this most of the time.

Hard to run virtualized instance on the server of your own unless the server supports nested virtualization(which is usually expensive) or you rent your own bare metal server(there are some not as famous but cheap vendors for this).

## GPU Passthrough for Windows Guest

[Moved here][1]

[1]: https://github.com/khoitd1997/fedora_kd/tree/master/userland/misc/kvm_vm
