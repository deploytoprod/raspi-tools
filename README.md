Repository used for raspberry pi sysprep and automation. Ideally the rc.local in this repository should be symlinked to /etc/rc.local on the raspberry pi.

Usually it checks if <code>/boot/firstrun</code> exists, if yes, than it do a sysprep on the unit.
