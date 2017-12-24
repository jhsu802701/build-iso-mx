#!/bin/bash

THEME_DIR=$(dirname $(readlink -f $0))
source $THEME_DIR/../theme-functions.sh
start_theme "$@"

copy_file grub                  /etc/default/
copy_file 10_linux              /etc/grub.d/
copy_dir desktop-base/               /usr/share/desktop-base/          --create
copy_dir conky/               /etc/skel/.conky/          --create
copy_dir fonts/               /etc/skel/.fonts/          --create
copy_file alsamixer.desktop /usr/share/applications/
#copy_file conky-toggle.desktop /usr/share/applications/
#copy_file conkytoggle.sh /usr/local/bin/
copy_file conky.desktop  /etc/skel/.config/autostart/
copy_file rc.local              /etc/
copy_file libuser.conf          /etc/
copy_file modules               /etc/
copy_file timezone		/etc/
copy_file 98vboxadd-xclient     /etc/X11/Xsession.d/
copy_file catfish.desktop	/usr/share/applications/ 
copy_file display-im6.desktop		/usr/share/applications/ 
copy_file display-im6.q16.desktop	/usr/share/applications/
#copy_file Window_Buttons.desktop	/usr/share/applications/
copy_file synaptic.desktop 		/usr/share/applications/
copy_file synaptic-kde.desktop		/usr/share/applications/
copy_file nano.desktop		/usr/share/applications/
copy_file lightdm.conf		/etc/lightdm/
copy_file pc-speaker.conf	/etc/modprobe.d/
copy_file desktop.data          /usr/local/share/boot-menus/
copy_file desktop.menu          /usr/local/share/boot-menus/
copy_file 20-thinkpad.conf      /usr/share/X11/xorg.conf.d/
copy_file pppoeconf.desktop     /usr/share/applications/
#copy_file daemon.conf 		/etc/pulse/
#copy_file i915-power-saving.conf 	/etc/modprobe.d/
#copy_file hang-on-shutdown.conf  	/etc/modprobe.d/
copy_file 98qtconfig /etc/X11/Xsession.d/
copy_file compton.desktop /etc/skel/.local/share/applications/
copy_file compton-conf.desktop /etc/skel/.local/share/applications/
copy_file ndisgtk.desktop /usr/share/applications/
copy_file uswsusp.conf /etc/

copy_dir Desktop/               /etc/skel/Desktop/           --create

exit
