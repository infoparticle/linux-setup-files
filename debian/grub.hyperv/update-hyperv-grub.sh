
_emit_grub_config(){
	cat <<EOM
GRUB_DEFAULT=0
GRUB_TIMEOUT=5
GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
GRUB_CMDLINE_LINUX_DEFAULT="quiet video=hyperv_fb:1900x1080"
GRUB_CMDLINE_LINUX=""
EOM
}
TS=$(date +"%y%m%d")
mv /etc/default/gru{b,b.old.$TS}

_emit_grub_config > /etc/default/grub

export PATH="$PATH:/bin/sbin"
update-grub
