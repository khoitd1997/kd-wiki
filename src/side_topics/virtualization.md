# Virtualization

Lots of things moving in this space right now, two tools that stand out:

- Vagrant: good for local development, can spin up a vm similar to Virtualbox but without the hassle. Used a lot for devops testings like testing ansible scripts.
- Docker: good for deployment and local development as well, probably use this most of the time.

Hard to run virtualized instance on the server of your own unless the server supports nested virtualization(which is usually expensive) or you rent your own bare metal server(there are some not as famous but cheap vendors for this).

## GPU Passthrough for Windows Guest

In the interest of not dual booting to use CAD software, GPU passthrough should be explored. Testing shows that even with the Ryzen machine but no GPU passthrough, Fusion360 complains. Sharing a single GPU between host and guest is possible but is fairly complicated so should probably get a cheap card for the host and use the 1050 for the guest.

Fedora is noted to be the easiest host OS to set up these things since things are up-to-date and RedHat wrote a lot of these things.

The tool to use is `virsh`, the command line of `libvirt`, don't use virt-manager(the GUI) since it doesn't have enough expressiveness for things like CPU pinning, fake kvm off etc.

The machine is specified in an xml file and `virsh create` is used to bring it up.

[Show complete process, but probably doesn't work for consumer card](1)
[Arch Super Detailed Guide](2)
[Make Nvidia card not realize it's in a VM](3)
[Guide for Fedora, missing some stuffs](4)
[B350 Pro4 IOMMU Group Notes](5)

[1]: https://access.redhat.com/documentation/en-us/red_hat_virtualization/4.3/html/setting_up_an_nvidia_gpu_for_a_virtual_machine_in_red_hat_virtualization/proc_nvidia_gpu_passthrough_nvidia_gpu_passthrough
[2]: https://wiki.archlinux.org/index.php/PCI_passthrough_via_OVMF
[3]: https://mathiashueber.com/fighting-error-43-nvidia-gpu-virtual-machine/
[4]: https://level1techs.com/article/ryzen-gpu-passthrough-setup-guide-fedora-26-windows-gaming-linux
[5]: https://www.reddit.com/r/VFIO/comments/8iy5ps/asrock_ab350m_pro_4_passtrough_possibilities/
