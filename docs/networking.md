# networking notes

## switching between wifi

```console
$ sudo netctl switch-to <config>
```

or use `sudo wifi-menu` to choose a network to join.

> make sure to not have dashes in the name of the config when it prompts

## configuring the machine to work with everything

* use `systemd-networkd`
* use `systemd-resolved`
* edit `/etc/nsswitch.conf` and remove `[!UNAVAIL=return]` from `hosts:` line; this makes searchdomain work
* set `nameserver 127.0.0.53` in `resolv.conf`

