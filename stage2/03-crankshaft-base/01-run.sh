#!/bin/bash -e

# /boot
install -d "${ROOTFS_DIR}/boot/crankshaft"
install -m 644 files/boot/crankshaft/gpio2kbd.cfg                       "${ROOTFS_DIR}/boot/crankshaft/"
install -m 644 files/boot/crankshaft/openauto.ini                       "${ROOTFS_DIR}/boot/crankshaft/"
install -m 644 files/boot/crankshaft/startup.py                         "${ROOTFS_DIR}/boot/crankshaft/"
install -m 644 files/boot/crankshaft/startup.sh                         "${ROOTFS_DIR}/boot/crankshaft/"
install -m 644 files/boot/crankshaft/triggerhappy.conf                  "${ROOTFS_DIR}/boot/crankshaft/"
install -m 755 files/opt/crankshaft/crankshaft_default_env.sh           "${ROOTFS_DIR}/boot/crankshaft/crankshaft_env.sh"
install -d "${ROOTFS_DIR}/boot/crankshaft/custom"

# /etc
install -m 644 files/etc/pulse/csng_daemon.conf                         "${ROOTFS_DIR}/etc/pulse/"
install -m 644 files/etc/pulse/csng_default.pa                          "${ROOTFS_DIR}/etc/pulse/"
install -m 644 files/etc/pulse/csng_system.pa                           "${ROOTFS_DIR}/etc/pulse/"
install -m 644 files/etc/systemd/system/openauto.service                "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/crankshaft.service              "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/daymode.service                 "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/daymode.timer                   "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/devmode.service                 "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/debugmode.service               "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/disconnect.service              "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/disconnect.timer                "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/display.service                 "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/gpio2kbd.service                "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/gpiotrigger.service             "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/shutdown.service                "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/shutdown.timer                  "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/tap2wake.service                "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/timerstart.service              "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/update.service                  "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/usbrestore.service              "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/usbdetect.service               "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/usbunmount.service              "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/rpicamserver.service            "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/hwclock-load.service            "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/hwclock-save.service            "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/nightmode.service               "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/nightmode.timer                 "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/user_startup.service            "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/wifisetup.service               "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/hotspot.service                 "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/regensshkeys.service            "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/kodimonitor.service             "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/custombrightness.service        "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/pulseaudio.service              "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/systemd/system/pulseaudio-debug.service        "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/etc/udev/rules.d/10-gpio2kbd.rules                 "${ROOTFS_DIR}/etc/udev/rules.d/"
install -m 644 files/etc/udev/rules.d/51-android.rules                  "${ROOTFS_DIR}/etc/udev/rules.d/"
install -m 644 files/etc/udev/rules.d/51-android.master                 "${ROOTFS_DIR}/etc/udev/rules.d/"
install -m 755 files/etc/rc.local                                       "${ROOTFS_DIR}/etc/"
install -m 644 files/etc/issue                                          "${ROOTFS_DIR}/etc/"
install -m 644 files/etc/issue.net                                      "${ROOTFS_DIR}/etc/"
install -m 644 files/etc/motd                                           "${ROOTFS_DIR}/etc/"
install -m 644 files/etc/rsyslog.d/disable-logspam.conf                 "${ROOTFS_DIR}/etc/rsyslog.d/"

install -d "${ROOTFS_DIR}/etc/initramfs-tools/conf.d"
install -d "${ROOTFS_DIR}/etc/initramfs-tools/hooks"
install -d "${ROOTFS_DIR}/etc/initramfs-tools/scripts/local-top"
install -m 644 files/etc/initramfs-tools/conf.d/local.conf              "${ROOTFS_DIR}/etc/initramfs-tools/conf.d/"
install -m 755 files/etc/initramfs-tools/hooks/pv                       "${ROOTFS_DIR}/etc/initramfs-tools/hooks/"
install -m 755 files/etc/initramfs-tools/scripts/local-top/local.sh     "${ROOTFS_DIR}/etc/initramfs-tools/scripts/local-top/"

install -m 644 files/etc/default/hostapd                                "${ROOTFS_DIR}/etc/default/"
install -m 644 files/etc/hostapd/hostapd.conf                           "${ROOTFS_DIR}/etc/hostapd/"
install -m 644 files/etc/dnsmasq.conf                                   "${ROOTFS_DIR}/etc/"

# /opt
install -d "${ROOTFS_DIR}/opt/crankshaft"
install -m 755 files/opt/crankshaft/crankshaft_default_env.sh           "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/crankshaft_system_env.sh            "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/service_crankshaft.sh               "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/cameraserver.py                     "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/cameracontrol.py                    "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/service_debugmode.sh                "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/service_devmode.sh                  "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/service_display.sh                  "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/service_daynight.sh                 "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/service_gpiotrigger.sh              "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/service_openauto.sh                 "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/service_tap2wake.sh                 "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/service_timerstart.sh               "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/service_wifisetup.sh                "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/service_update.sh                   "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/service_usbrestore.sh               "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/service_usbdetect.sh                "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/service_usbunmount.sh               "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/service_user_startup.sh             "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/service_hotspot.sh                  "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/service_kodimonitor.sh              "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/service_custombrightness.sh         "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/gpio2kbd                            "${ROOTFS_DIR}/opt/crankshaft/"
install -m 644 files/opt/crankshaft/triggerhappy.conf                   "${ROOTFS_DIR}/opt/crankshaft/"
install -m 755 files/opt/crankshaft/usb_action.sh                       "${ROOTFS_DIR}/opt/crankshaft/"
install -m 644 files/opt/crankshaft/start_order                         "${ROOTFS_DIR}/opt/crankshaft/"

install -d "${ROOTFS_DIR}/opt/crankshaft/wallpaper"
install -m 644 files/opt/crankshaft/wallpaper/wallpaper.png                   "${ROOTFS_DIR}/opt/crankshaft/wallpaper/"
install -m 644 files/opt/crankshaft/wallpaper/wallpaper-night.png             "${ROOTFS_DIR}/opt/crankshaft/wallpaper/"
install -m 644 files/opt/crankshaft/wallpaper/wallpaper-classic.png           "${ROOTFS_DIR}/opt/crankshaft/wallpaper/"
install -m 644 files/opt/crankshaft/wallpaper/wallpaper-classic-night.png     "${ROOTFS_DIR}/opt/crankshaft/wallpaper/"
install -m 644 files/opt/crankshaft/wallpaper/camera-overlay.png              "${ROOTFS_DIR}/opt/crankshaft/wallpaper/"

# /usr
install -m 755 files/usr/local/bin/pulseaudio-debug.sh                  "${ROOTFS_DIR}/usr/local/bin/"
install -m 755 files/usr/local/bin/autoapp                              "${ROOTFS_DIR}/usr/local/bin/"
install -m 755 files/usr/local/bin/btservice                            "${ROOTFS_DIR}/usr/local/bin/"
install -m 755 files/usr/local/bin/crankshaft                           "${ROOTFS_DIR}/usr/local/bin/"
install -m 755 files/usr/local/bin/autoapp_helper                       "${ROOTFS_DIR}/usr/local/bin/"
install -m 755 files/usr/local/lib/libaasdk.so                          "${ROOTFS_DIR}/usr/local/lib/"
install -m 755 files/usr/local/lib/libaasdk_proto.so                    "${ROOTFS_DIR}/usr/local/lib/"

# plymouth
install -d "${ROOTFS_DIR}/usr/share/plymouth/themes/crankshaft"
install -m 644 files/usr/share/plymouth/themes/crankshaft/crankshaft.plymouth   "${ROOTFS_DIR}/usr/share/plymouth/themes/crankshaft/"
install -m 644 files/usr/share/plymouth/themes/crankshaft/crankshaft.script     "${ROOTFS_DIR}/usr/share/plymouth/themes/crankshaft/"
install -m 644 files/usr/share/plymouth/themes/crankshaft/splash.png            "${ROOTFS_DIR}/usr/share/plymouth/themes/crankshaft/"
install -m 644 files/usr/share/plymouth/themes/crankshaft/shutdown.png          "${ROOTFS_DIR}/usr/share/plymouth/themes/crankshaft/"
install -m 644 files/usr/share/plymouth/themes/crankshaft/progress_bar.png      "${ROOTFS_DIR}/usr/share/plymouth/themes/crankshaft/"
install -m 644 files/usr/share/plymouth/themes/crankshaft/progress_box.png      "${ROOTFS_DIR}/usr/share/plymouth/themes/crankshaft/"

#qt5
pv -p  -w 80 files/qt5/Qt5_OpenGLES2.tar.xz | tar -xf - -C ${ROOTFS_DIR}/
pv -p  -w 80 files/qt5/Qt5_libs_OpenGLES2.tar.xz | tar -xf - -C ${ROOTFS_DIR}/
