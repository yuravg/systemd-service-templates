# An example showing the use of a script with systemd

- [systemd service](service-script-example.service)
- [service script](service_script_example.sh)
- [installation make-file](Makefile)

Usage:

```bash
sudo make src_install
make start
journalctl -f
make src_remove
```
