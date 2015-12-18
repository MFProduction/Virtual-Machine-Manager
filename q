  UNIT                      LOAD   ACTIVE SUB       DESCRIPTION
  proc-sys-fs-binfmt_misc.automount loaded active waiting   Arbitrary Executable File Formats File System Automount Point
  sys-devices-pci0000:00-0000:00:02.0-backlight-acpi_video0.device loaded active plugged   /sys/devices/pci0000:00/0000:00:02.0/backlight/acpi_video0
  sys-devices-pci0000:00-0000:00:19.0-net-eno1.device loaded active plugged   82579LM Gigabit Network Connection
  sys-devices-pci0000:00-0000:00:1b.0-sound-card0.device loaded active plugged   6 Series/C200 Series Chipset Family High Definition Audio Controller
  sys-devices-pci0000:00-0000:00:1f.2-ata1-host0-target0:0:0-0:0:0:0-block-sda-sda1.device loaded active plugged   ST3250312AS 1
  sys-devices-pci0000:00-0000:00:1f.2-ata1-host0-target0:0:0-0:0:0:0-block-sda-sda2.device loaded active plugged   ST3250312AS 2
  sys-devices-pci0000:00-0000:00:1f.2-ata1-host0-target0:0:0-0:0:0:0-block-sda.device loaded active plugged   ST3250312AS
  sys-devices-pci0000:00-0000:00:1f.2-ata2-host1-target1:0:0-1:0:0:0-block-sr0.device loaded active plugged   TSSTcorp_DVD+_-RW_TS-H653G
  sys-devices-platform-serial8250-tty-ttyS1.device loaded active plugged   /sys/devices/platform/serial8250/tty/ttyS1
  sys-devices-platform-serial8250-tty-ttyS2.device loaded active plugged   /sys/devices/platform/serial8250/tty/ttyS2
  sys-devices-platform-serial8250-tty-ttyS3.device loaded active plugged   /sys/devices/platform/serial8250/tty/ttyS3
  sys-devices-pnp0-00:03-tty-ttyS0.device loaded active plugged   /sys/devices/pnp0/00:03/tty/ttyS0
  sys-module-configfs.device loaded active plugged   /sys/module/configfs
  sys-module-fuse.device    loaded active plugged   /sys/module/fuse
  sys-subsystem-net-devices-eno1.device loaded active plugged   82579LM Gigabit Network Connection
  -.mount                   loaded active mounted   /
  boot.mount                loaded active mounted   /boot
  dev-hugepages.mount       loaded active mounted   Huge Pages File System
  dev-mqueue.mount          loaded active mounted   POSIX Message Queue File System
  run-user-1000-gvfs.mount  loaded active mounted   /run/user/1000/gvfs
  run-user-1000.mount       loaded active mounted   /run/user/1000
  run-user-120-gvfs.mount   loaded active mounted   /run/user/120/gvfs
  run-user-120.mount        loaded active mounted   /run/user/120
  sys-fs-fuse-connections.mount loaded active mounted   FUSE Control File System
  sys-kernel-config.mount   loaded active mounted   Configuration File System
  sys-kernel-debug.mount    loaded active mounted   Debug File System
  tmp.mount                 loaded active mounted   Temporary Directory
  systemd-ask-password-console.path loaded active waiting   Dispatch Password Requests to Console Directory Watch
  systemd-ask-password-wall.path loaded active waiting   Forward Password Requests to Wall Directory Watch
  init.scope                loaded active running   System and Service Manager
  session-c1.scope          loaded active running   Session c1 of user gdm
  session-c2.scope          loaded active running   Session c2 of user mrstain
  accounts-daemon.service   loaded active running   Accounts Service
  alsa-restore.service      loaded active exited    Save/Restore Sound Card State
  colord.service            loaded active running   Manage, Install and Generate Color Profiles
  dbus.service              loaded active running   D-Bus System Message Bus
  gdm.service               loaded active running   GNOME Display Manager
  geoclue.service           loaded active running   Location Lookup Service
  kmod-static-nodes.service loaded active exited    Create list of required static device nodes for the current kernel
  NetworkManager.service    loaded active running   Network Manager
  packagekit.service        loaded active running   PackageKit Daemon
  polkit.service            loaded active running   Authorization Manager
  rtkit-daemon.service      loaded active running   RealtimeKit Scheduling Policy Service
  systemd-backlight@backlight:acpi_video0.service loaded active exited    Load/Save Screen Backlight Brightness of backlight:acpi_video0
  systemd-fsck@dev-disk-by\x2duuid-C0A4\x2dA19F.service loaded active exited    File System Check on /dev/disk/by-uuid/C0A4-A19F
  systemd-journal-flush.service loaded active exited    Flush Journal to Persistent Storage
  systemd-journald.service  loaded active running   Journal Service
  systemd-logind.service    loaded active running   Login Service
  systemd-random-seed.service loaded active exited    Load/Save Random Seed
  systemd-remount-fs.service loaded active exited    Remount Root and Kernel File Systems
  systemd-sysctl.service    loaded active exited    Apply Kernel Variables
  systemd-timesyncd.service loaded active running   Network Time Synchronization
  systemd-tmpfiles-setup-dev.service loaded active exited    Create Static Device Nodes in /dev
  systemd-tmpfiles-setup.service loaded active exited    Create Volatile Files and Directories
  systemd-udev-trigger.service loaded active exited    udev Coldplug all Devices
  systemd-udevd.service     loaded active running   udev Kernel Device Manager
  systemd-update-utmp.service loaded active exited    Update UTMP about System Boot/Shutdown
  systemd-user-sessions.service loaded active exited    Permit User Sessions
[0;1;31m●[0m [0;1;31msystemd-vconsole-setup.service[0m loaded [0;1;31mfailed failed   [0m Setup Virtual Console
  udisks2.service           loaded active running   Disk Manager
  upower.service            loaded active running   Daemon for power management
  user@1000.service         loaded active running   User Manager for UID 1000
  user@120.service          loaded active running   User Manager for UID 120
  wpa_supplicant.service    loaded active running   WPA supplicant
  -.slice                   loaded active active    Root Slice
  system-getty.slice        loaded active active    system-getty.slice
  system-systemd\x2dbacklight.slice loaded active active    system-systemd\x2dbacklight.slice
  system-systemd\x2dfsck.slice loaded active active    system-systemd\x2dfsck.slice
  system.slice              loaded active active    System Slice
  user-1000.slice           loaded active active    User Slice of mrstain
  user-120.slice            loaded active active    User Slice of gdm
  user.slice                loaded active active    User and Session Slice
  dbus.socket               loaded active running   D-Bus System Message Bus Socket
  dm-event.socket           loaded active listening Device-mapper event daemon FIFOs
  lvm2-lvmetad.socket       loaded active listening LVM2 metadata daemon socket
  systemd-initctl.socket    loaded active listening /dev/initctl Compatibility Named Pipe
  systemd-journald-dev-log.socket loaded active running   Journal Socket (/dev/log)
  systemd-journald.socket   loaded active running   Journal Socket
  systemd-udevd-control.socket loaded active running   udev Control Socket
  systemd-udevd-kernel.socket loaded active running   udev Kernel Socket
  basic.target              loaded active active    Basic System
  cryptsetup.target         loaded active active    Encrypted Volumes
  getty.target              loaded active active    Login Prompts
  graphical.target          loaded active active    Graphical Interface
  local-fs-pre.target       loaded active active    Local File Systems (Pre)
  local-fs.target           loaded active active    Local File Systems
  multi-user.target         loaded active active    Multi-User System
  network.target            loaded active active    Network
  nss-user-lookup.target    loaded active active    User and Group Name Lookups
  paths.target              loaded active active    Paths
  remote-fs.target          loaded active active    Remote File Systems
  slices.target             loaded active active    Slices
  sockets.target            loaded active active    Sockets
  sound.target              loaded active active    Sound Card
  swap.target               loaded active active    Swap
  sysinit.target            loaded active active    System Initialization
  time-sync.target          loaded active active    System Time Synchronized
  timers.target             loaded active active    Timers
  logrotate.timer           loaded active waiting   Daily rotation of log files
  man-db.timer              loaded active waiting   Daily man-db cache update
  shadow.timer              loaded active waiting   Daily verification of password and group files
  systemd-tmpfiles-clean.timer loaded active waiting   Daily Cleanup of Temporary Directories

LOAD   = Reflects whether the unit definition was properly loaded.
ACTIVE = The high-level unit activation state, i.e. generalization of SUB.
SUB    = The low-level unit activation state, values depend on unit type.

[0;1;39m102 loaded units listed.[0m Pass --all to see loaded but inactive units, too.
To show all installed unit files use 'systemctl list-unit-files'.
