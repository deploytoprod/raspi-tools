Repository used for raspberry pi sysprep and automation. Ideally the <code>rc.local</code> in this repository should be symlinked to <code>/etc/rc.local</code> on the raspberry pi.

Usually it checks if <code>/boot/firstrun</code> exists, if yes, than it do a sysprep on the unit. When you clone the microSD card make sure to have that file otherwise the sysprep won't be performed.
