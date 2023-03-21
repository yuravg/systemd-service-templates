# systemd-service-templates

Systemd service file templates.

## Create a systemd service

- Create `your-service-name.service` service file:

```bash
[Unit]
Description=Simple Service

[Service]
ExecStart=/complete_path/command arg1 arg2

[Install]
WantedBy=multi-user.target
```
- Move the service file to /etc/systemd/system

```bash
sudo mv -v your-service-name.service /etc/systemd/system/
```

- Set permission 644
```bash
sudo chmod /etc/systemd/system/your-service-name.service
```
- Run and enable the service
```bash
sudo systemctl enable your-service-name
sudo systemctl start your-service-name
```

## Systemd journal

```bash
journalctl
# recent log
journalctl -r
# print new entries
journalctl -f
# print recent lines
journalctl -n 10
# print error only
journalctl -p 3 -xb
# Show logs for specific service
journalctl -u <service-name>
journalctl -b -u <service-name>

systemd-analyze plot > systemd.svg
```

## Man

```bash
man systemd.unitc
man systemd.service
man systemd-run
```

## Links
- [freedesktop.org/software/systemd/man/systemd.directives](https://www.freedesktop.org/software/systemd/man/systemd.directives.html)
- [freedesktop.org/wiki/Software/systemd](https://www.freedesktop.org/wiki/Software/systemd/)
- [github.com/systemd/systemd](https://github.com/systemd/systemd)
- [docs.fedoraproject.org/en-US/quick-docs/understanding-and-administering-systemd](https://docs.fedoraproject.org/en-US/quick-docs/understanding-and-administering-systemd/)
- [docs.fedoraproject.org/en-US/packaging-guidelines/Systemd](https://docs.fedoraproject.org/en-US/packaging-guidelines/Systemd/)
- [digitalocean.com/community/tutorials/how-to-use-systemctl-to-manage-systemd-services-and-units](https://www.digitalocean.com/community/tutorials/how-to-use-systemctl-to-manage-systemd-services-and-units)
- [howtogeek.com/499623/how-to-use-journalctl-to-read-linux-system-logs](https://www.howtogeek.com/499623/how-to-use-journalctl-to-read-linux-system-logs/)
- [seb.jambor.dev/posts/systemd-by-example-part-1-minimization](https://seb.jambor.dev/posts/systemd-by-example-part-1-minimization/)
