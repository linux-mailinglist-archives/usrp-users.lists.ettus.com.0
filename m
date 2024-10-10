Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8D7998C5C
	for <lists+usrp-users@lfdr.de>; Thu, 10 Oct 2024 17:52:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC78B385A57
	for <lists+usrp-users@lfdr.de>; Thu, 10 Oct 2024 11:52:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728575553; bh=nzMlQaJt5ejlnpmB7moPgDXGPBFHEnwn7VfSGdOT8K4=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=WBhzyicE6d1i8uxwoSWASNCAWD/XuMHy+ihTSeDlqlp33/FSfuefWPvK+Cll8KgHQ
	 f0GlPThDE3geYrKRf8BxIkmJeuq0bX89PoT1fC9xi2wmZdmNkZnGZlmgtGse8PlxAm
	 fAvu4W8KEkMKYnEBHGL1dVyCDpDhkFHeHBnuCZr03R0SBoob7YWLkmShYyoqKrKi79
	 bwyCQ14KrguGICsTBvdo95Z+3UumpFacMI6e3G82Mh8MT4z2xWjU7dBCA9u0EZczlW
	 BEDqR2ro3prEvsDXw3lWqJi+kzOX24tle57W7v0TmICcckboxQPHNBAm7N9jxK5oRr
	 JxEIEAKlpqIiw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 494CD38595F
	for <usrp-users@lists.ettus.com>; Thu, 10 Oct 2024 11:51:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728575500; bh=irmrf4UZf84KlqalU9dKPF8rGE/vUw5VLUK6PO3zyMw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=j2KxdNepkzN6hUaM+NtHLMbGEkvsCD7gSsyt02xEONwZaFGKHnx7HwptNxL5Hshat
	 h6MxGDQweq/GjlZphZ57f4oPOx6m1yxDZXUHWMQ5ZKIm+C7Fhg1r0HjPp12XAi7Qup
	 YncoWxVTP3Co9m4QmNQtiwzKqqtpnQRJFNEhJDaQArAFuWWn/QsKlDw+OugqNCU6Bs
	 jyNVtkJTzHze9NKv+dgn8UyLeV0J7Fe2565kVVTjvVkMho28+Ct03J5NQZptjmaLzj
	 G4u1sywAG6Ao8m1hAzObdTCYTftemJNiDdn7rTZUz+Qx6o8J8+145NWoCEJ8uxgK5I
	 w6bm5gQPHK+tA==
Date: Thu, 10 Oct 2024 15:51:40 +0000
To: usrp-users@lists.ettus.com
Message-ID: <JYdfRN2IVvGdaIxRpj3sGBkRCxe4CW2pgIJx7Bql0g@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: AG5jQ18ShLdWjOQf42E2WZpqXCJXo45yUnXiagkGL5g@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: ESKZLIB2IO4OBB7F6BZYZML7J5T3EAY4
X-Message-ID-Hash: ESKZLIB2IO4OBB7F6BZYZML7J5T3EAY4
X-MailFrom: mruane@silveredge-gs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ESKZLIB2IO4OBB7F6BZYZML7J5T3EAY4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mruane--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mruane@silveredge-gs.com
Content-Type: multipart/mixed; boundary="===============1618936718767114561=="

This is a multi-part message in MIME format.

--===============1618936718767114561==
Content-Type: multipart/alternative;
 boundary="b1_JYdfRN2IVvGdaIxRpj3sGBkRCxe4CW2pgIJx7Bql0g"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_JYdfRN2IVvGdaIxRpj3sGBkRCxe4CW2pgIJx7Bql0g
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Piotr!

So sorry for the delay!

Wow, that=E2=80=99s a lot of good information!   Thanks for the starting =
point information.   I spent some time trying to find a common starting p=
oint.   I have also been looking at the kernel config parameters in the d=
efconfig and .cfg files.   In the linux-xlnx kernel, there is a CONFIG_XI=
LINX_DPU=3Dy parameter that is be added to a .cfg file in the kernel reci=
pe that magically enables certain DPU-related features.   I knew it could=
n=E2=80=99t be as simple as just adding that to the x410 defconfig=E2=80=A6=
but I HAD to try it. :-)   Needless to say, It didn=E2=80=99t work.   I i=
nitially tried to go through all of the Kconfig stuff to see if I could f=
igure out what actual kernel parameters CONFIG_XILINX_DPU translated to, =
but that was a pretty deep rabbit hole that didn=E2=80=99t seem very prom=
ising.   So I=E2=80=99m back to comparing the repositories.

Thanks for the scripts.   This truly is a HUGE amount of help.

Regarding network boot:   Now that I=E2=80=99ve seen them again, the tftp=
boot steps are familiar.   I haven=E2=80=99t done it in a while, and for =
some reason, I didn=E2=80=99t remember that the bootloader was part of th=
e process.   So it=E2=80=99s the same except for NFS mounting the rootfs.=
   I=E2=80=99ll start setting that up today.   My build process is slight=
ly different, so I=E2=80=99ll have to adapt some things.

I=E2=80=99m using kas to build, but not in a container.   I just set up a=
 conda environment, and build using the kas commands, like =E2=80=98kas b=
uild <path-to-custom-x410.yml>=E2=80=99.   Unfortunately, I can=E2=80=99t=
 build the Mender images because there is a bug in either the Mender reci=
pes or the recipe for graphviz_2.50.0.bb that causes a PSEUDO_ABORT error=
.   It seems that one of the graphviz package directories is deleted outs=
ide of PSEUDO, and that causes an inode conflict.

I don=E2=80=99t think it is in the graphviz recipe, even though the pkg_p=
ostrm:${PN} task removes the config6 file that is the cause of the confli=
ct.   That task doesn=E2=80=99t seem to run before I get the error.   I h=
ave narrowed it down to mender-setup-image.inc, in which the cleanup_excl=
uded_directories function removes the excluded dirs.   For some reason, r=
ootfs.image_tar is getting deleted, and it shouldn=E2=80=99t be.  In the =
file, mender-part-image.bbclass, all of the Mender-related image tasks ar=
e being set to NOT respect the exclude paths, like so:

```
# So that we can use the files from excluded paths in the full images.
do_image_sdimg[respect_exclude_path] =3D "0"
do_image_uefiimg[respect_exclude_path] =3D "0"
do_image_biosimg[respect_exclude_path] =3D "0"
do_image_gptimg[respect_exclude_path] =3D "0"
```

To fix it, I think I just need to let Mender know about the do_image_tar =
task, and then set that flag to 0.

For now, though, I=E2=80=99m building the non-Mender recipe.

perper@o2.pl wrote:

> mruane@silveredge-gs.com wrote:
>
> > Hi Martin,
> >
> > > Be advised that bad configurations of kernel and/or FPGA (or device=
 tree\
> > > info) can lead to boot loops which are pretty annoying to auto-fix.
> > >
> > > \--M
> >
> > \:-)  You caught me daydreaming about automating the tedious debug I=E2=
=80=99m about to start. :-)
>
> Hello,
>
> Regarding kernel versions (5.15 vs 5.10) I messed that. At the time new=
est linux-xlnx was 5.15 and USRP X410 used 5.10.
>
> I did my bisecting by starting from xlnx_rebase_v5.10 branch, finding t=
he common commit of NI=E2=80=99s kernel and linux-xlnx (2c85ebc57b3e) and=
 some working commit (top of xlnx_rebase_v5.10 branch). It looked like th=
is:\
> cd kernel_souces/linux-xlnx/
>
> git bisect reset\
> git checkout xlnx_rebase_v5.10\
> git bisect start\
> git bisect bad\
> git bisect good 2c85ebc57b3e\
> git bisect run check_not_working
>
> I=E2=80=99m attaching the scripts used for bisecting in case anyone is =
interested. They were written ad hoc and not meant to be used by anyone e=
lse than me. I.e. =E2=80=98git bisect good 2c85ebc57b3e=E2=80=99 means a =
commit for which ZCU111 failed to boot, so actually opposite of good. But=
 I=E2=80=99m posting them in case anyone finds them helpful. Boot loops w=
ere not a problem as the failure to boot was confirmed based on exceeding=
 a timeout.
>
> Regarding the description how to boot X410 over the network - I have wr=
itten it below, but keep in mind that I didn=E2=80=99t go through all of =
the steps before writing them down. So most probably I have missed someth=
ing. When (or if) I=E2=80=99ll have a well tested description, I=E2=80=99=
ll put it on some webpage and post a link here.
>
> It goes like this (for Ubuntu 20.04):
>
> Install nfs and tftp servers + docker:\
> sudo apt install nfs-kernel-server tftpd-hpa isc-dhcp-server docker.io
>
> Configure nfs server by putting this in /etc/exports:\
> /nfsroot \*(rw,sync,no_root_squash)\
> sudo systemctl restart nfs-server
>
> Configure DHCP server. In file /etc/dhcp/dhcpd.conf you need to check i=
f you have something like this for subnet 192.168.0.0:\
> subnet 192.168.0.0 netmask 255.255.255.0 {\
> range 192.168.0.20 192.168.0.120;\
> option subnet-mask 255.255.255.0;\
> option routers 192.168.0.1;\
> }
>
> Then restart DHCP server:\
> sudo systemctl restart isc-dhcp-server
>
> If you need to have constant IP in the USRP add something like to /etc/=
dhcp/dhcpd.conf:\
> host x410 {\
> hardware ethernet 00:80:2f:31:11:0c;\
> fixed-address 192.168.0.15;\
> option subnet-mask 255.255.255.0;\
> option broadcast-address 192.168.0.255;\
> option routers 192.168.0.1;\
> }\
> (replace 00:80:2f:31:11:0c with your USRP=E2=80=99s 1Gb ethernet interf=
ace MAC address).
>
> Prepare kernel+bootloaders and rootfs. All of these things are in SD ca=
rd images provided by NI/Ettus (can be mounted with i.e. kpartx), but I w=
asn=E2=80=99t able to boot the board over network with use of the kernel =
provided there. So I=E2=80=99m building whole image myself from meta-ettu=
s repo like this (will take a while):
>
> git clone https://github.com/EttusResearch/meta-ettus\
> docker run --rm -it -w "$PWD" --mount type=3Dbind,source=3D"$PWD",targe=
t=3D"$PWD" \\\
> \--net=3Dhost \\\
> \--env "USER_ID=3D$(id -u)" \\\
> \--env "GROUP_ID=3D$(id -g)" \\\
> ghcr.io/siemens/kas/kas:2.6.2 \\\
> bash -c "sudo apt update ; sudo apt install -y zip && ./meta-ettus/cont=
rib/kas_build_imgs_package.sh x4xx v4.7.0.0"
>
> Unzip bootloaders to /tftpboot:\
> sudo unzip build/tmp-glibc/deploy/images/ni-titanium-rev5-mender/u-boot=
-jtag-files.zip -d /tftpboot
>
> Copy kernel image to /tftpboot:\
> sudo cp build/tmp-glibc/deploy/images/ni-titanium-rev5-mender/fitImage =
/tftpboot
>
> Unpack the rootfs to directory exposed by nfs server:\
> mkdir rootfs_mount_dir\
> sudo mount build/tmp-glibc/deploy/images/ni-titanium-rev5-mender/gnurad=
io-image-ni-titanium-rev5-mender-20241005135100.ext4 rootfs_mount_dir -o =
loop\
> sudo mkdir /nfsroot/x410\
> sudo cp -rp rootfs_mount_dir/\* /nfsroot/x410
>
> \
> Configure pxelinux to mount rootfs over NFS:\
> mkdir /tftpboot/x410/pxelinux.cfg\
> touch /tftpboot/x410/pxelinux.cfg/default
>
> edit file =E2=80=98/tftpboot/x410/pxelinux.cfg/default=E2=80=99 and put=
 inside following content (this was taken from Petalinux and edited to mo=
unt rootfs from NFS and to have UIO name good for USRP X410):\
> LABEL Linux\
> KERNEL fitImage\
> APPEND earlycon console=3DttyPS0,115200 root=3D/dev/nfs nfsroot=3D192.1=
68.0.1:/nfsroot/x410,v3,tcp uio_pdrv_genirq.of_id=3Dusrp-uio at24.io_limi=
t=3D64 rootwait clk_ignore_unused ip=3Ddhcp rw
>
> You need to connect 1Gb Ethernet and JTAG USB port of your X410 to the =
PC. I assume that the PC=E2=80=99s address on the Ethernet interface conn=
ected to X410 is 192.168.0.1 (otherwise change the address in /tftpboot/x=
410/pxelinux.cfg/default).
>
> Booting:\
> Rreset the USRP. You can do it over USRP=E2=80=99s microcontroller UART=
:\
> \
> stm_uart=3D$(ls /dev/serial/by-id/usb-Digilent_Digilent_USB_Device_\*-i=
f02-port0 | head -n 1)\
> echo reboot > "$stm_uart"\
> sleep 0.5\
> echo zynqmp bootmode jtag > "$stm_uart"\
> sleep 0.5\
> echo powerbtn > "$stm_uart"\
> \
> Then boot the USRP:\
> cd /tftpboot\
> source /tools/Xilinx/Vivado/2021.1/settings64.sh\
> \#any other Vivado installation should do, it is only needed for xsdb p=
rogram that sends bootloaders to ARM=E2=80=99s memory over JTAG\
> xsdb "boot_u-boot.tcl"
>
> For ZCU111 I did write some u-boot configuration for jtagboot. On X410 =
the code is not modified to make the netboot easier. You=E2=80=99ll need =
to connect over UART to the X410:\
> zynq_uart=3D$(ls /dev/serial/by-id/usb-Digilent_Digilent_USB_Device_\*-=
if03-port0 | head -n 1)\
> picocom -b 115200 =E2=80=9C$zynq_uart=E2=80=9D
>
> So when you=E2=80=99ll see some text written by u-boot type =E2=80=98no=
autoboot=E2=80=98 to go to u-boot prompt. Then do:\
> setenv jtagboot 'run netboot'\
> setenv nfsroot '/nfsroot/x410=E2=80=99\
> setenv tftproot ''\
> saveenv\
> \
> Reset the USRP and boot over JTAG again. Now is a tricky part that I di=
dn=E2=80=99t solve completely for X410 (and for ZCU111 it works well). If=
 everything to this step will go well u-boot will start to look for files=
 in some strange directories in /tftpboot directory. What I did was putti=
ng those files there after seeing that u-boot looks for them. At the mome=
nt I don=E2=80=99t have a better solution than to show how it looks on my=
 side. So here is content of my /tftpboot (actually I put files for diffe=
rent boards in subdirectories of /tftpboot, but here in order to not comp=
licate this description even more I didn=E2=80=99t add that):\
> https://ln5.sync.com/dl/1ceadcae0/98ggqg92-7d8mv5cq-txweneu5-pdaqzx26/v=
iew/default/14313095050001
>
> Best Regards,\
> Piotr Krysik

--b1_JYdfRN2IVvGdaIxRpj3sGBkRCxe4CW2pgIJx7Bql0g
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Piotr!</p><p>So sorry for the delay!</p><p>Wow, that=E2=80=99s a lot =
of good information!   Thanks for the starting point information.   I spent=
 some time trying to find a common starting point.   I have also been looki=
ng at the kernel config parameters in the defconfig and .cfg files.   In th=
e linux-xlnx kernel, there is a CONFIG_XILINX_DPU=3Dy parameter that is be =
added to a .cfg file in the kernel recipe that magically enables certain DP=
U-related features.   I knew it couldn=E2=80=99t be as simple as just addin=
g that to the x410 defconfig=E2=80=A6but I HAD to try it. :-)   Needless to=
 say, It didn=E2=80=99t work.   I initially tried to go through all of the =
Kconfig stuff to see if I could figure out what actual kernel parameters CO=
NFIG_XILINX_DPU translated to, but that was a pretty deep rabbit hole that =
didn=E2=80=99t seem very promising.   So I=E2=80=99m back to comparing the =
repositories.</p><p>Thanks for the scripts.   This truly is a HUGE amount o=
f help.</p><p>Regarding network boot:   Now that I=E2=80=99ve seen them aga=
in, the tftpboot steps are familiar.   I haven=E2=80=99t done it in a while=
, and for some reason, I didn=E2=80=99t remember that the bootloader was pa=
rt of the process.   So it=E2=80=99s the same except for NFS mounting the r=
ootfs.   I=E2=80=99ll start setting that up today.   My build process is sl=
ightly different, so I=E2=80=99ll have to adapt some things.</p><p>I=
=E2=80=99m using kas to build, but not in a container.   I just set up a co=
nda environment, and build using the kas commands, like =E2=80=98kas build =
&lt;path-to-custom-x410.yml&gt;=E2=80=99.   Unfortunately, I can=E2=80=
=99t build the Mender images because there is a bug in either the Mender re=
cipes or the recipe for graphviz_2.50.0.bb that causes a PSEUDO_ABORT error=
.   It seems that one of the graphviz package directories is deleted outsid=
e of PSEUDO, and that causes an inode conflict.</p><p>I don=E2=80=99t think=
 it is in the graphviz recipe, even though the pkg_postrm:${PN} task remove=
s the config6 file that is the cause of the conflict.   That task doesn=
=E2=80=99t seem to run before I get the error.   I have narrowed it down to=
 mender-setup-image.inc, in which the cleanup_excluded_directories function=
 removes the excluded dirs.   For some reason, rootfs.image_tar is getting =
deleted, and it shouldn=E2=80=99t be.  In the file, mender-part-image.bbcla=
ss, all of the Mender-related image tasks are being set to NOT respect the =
exclude paths, like so:</p><pre><code># So that we can use the files from e=
xcluded paths in the full images.
do_image_sdimg[respect_exclude_path] =3D "0"
do_image_uefiimg[respect_exclude_path] =3D "0"
do_image_biosimg[respect_exclude_path] =3D "0"
do_image_gptimg[respect_exclude_path] =3D "0"</code></pre><p>To fix it, I t=
hink I just need to let Mender know about the do_image_tar task, and then s=
et that flag to 0.</p><p>For now, though, I=E2=80=99m building the non-Mend=
er recipe.</p><p>perper@o2.pl wrote:</p><blockquote><p>mruane@silveredge-gs=
.com wrote:</p><blockquote><p>Hi Martin,</p><blockquote><p>Be advised that =
bad configurations of kernel and/or FPGA (or device tree<br>info) can lead =
to boot loops which are pretty annoying to auto-fix.</p><p>--M</p></blockqu=
ote><p>:-)  You caught me daydreaming about automating the tedious debug I=
=E2=80=99m about to start. :-)</p></blockquote><p>Hello,</p><p>Regarding ke=
rnel versions (5.15 vs 5.10) I messed that. At the time newest linux-xlnx w=
as 5.15 and USRP X410 used 5.10.</p><p>I did my bisecting by starting from =
xlnx_rebase_v5.10 branch, finding the common commit of NI=E2=80=99s kernel =
and linux-xlnx (2c85ebc57b3e) and some working commit (top of xlnx_rebase_v=
5.10 branch). It looked like this:<br>cd kernel_souces/linux-xlnx/</p><p>gi=
t bisect reset<br>git checkout xlnx_rebase_v5.10<br>git bisect start<br>git=
 bisect bad<br>git bisect good 2c85ebc57b3e<br>git bisect run check_not_wor=
king</p><p>I=E2=80=99m attaching the scripts used for bisecting in case any=
one is interested. They were written ad hoc and not meant to be used by any=
one else than me. I.e. =E2=80=98git bisect good 2c85ebc57b3e=E2=80=99 means=
 a commit for which ZCU111 failed to boot, so actually opposite of good. Bu=
t I=E2=80=99m posting them in case anyone finds them helpful. Boot loops we=
re not a problem as the failure to boot was confirmed based on exceeding a =
timeout.</p><p>Regarding the description how to boot X410 over the network =
- I have written it below, but keep in mind that I didn=E2=80=99t go throug=
h all of the steps before writing them down. So most probably I have missed=
 something. When (or if) I=E2=80=99ll have a well tested description, I=
=E2=80=99ll put it on some webpage and post a link here.</p><p>It goes like=
 this (for Ubuntu 20.04):</p><p>Install nfs and tftp servers + docker:<br>s=
udo apt install nfs-kernel-server tftpd-hpa isc-dhcp-server docker.io</p><p=
>Configure nfs server by putting this in /etc/exports:<br>/nfsroot *(rw,syn=
c,no_root_squash)<br>sudo systemctl restart nfs-server</p><p>Configure DHCP=
 server. In file /etc/dhcp/dhcpd.conf you need to check if you have somethi=
ng like this for subnet 192.168.0.0:<br>subnet 192.168.0.0 netmask 255.255.=
255.0 {<br>range 192.168.0.20 192.168.0.120;<br>option subnet-mask 255.255.=
255.0;<br>option routers 192.168.0.1;<br>}</p><p>Then restart DHCP server:<=
br>sudo systemctl restart isc-dhcp-server</p><p>If you need to have constan=
t IP in the USRP add something like to /etc/dhcp/dhcpd.conf:<br>host x410 {=
<br>hardware ethernet 00:80:2f:31:11:0c;<br>fixed-address 192.168.0.15;<br>=
option subnet-mask 255.255.255.0;<br>option broadcast-address 192.168.0.255=
;<br>option routers 192.168.0.1;<br>}<br>(replace 00:80:2f:31:11:0c with yo=
ur USRP=E2=80=99s 1Gb ethernet interface MAC address).</p><p>Prepare kernel=
+bootloaders and rootfs. All of these things are in SD card images provided=
 by NI/Ettus (can be mounted with i.e. kpartx), but I wasn=E2=80=99t able t=
o boot the board over network with use of the kernel provided there. So I=
=E2=80=99m building whole image myself from meta-ettus repo like this (will=
 take a while):</p><p>git clone https://github.com/EttusResearch/meta-ettus=
<br>docker run --rm -it -w "$PWD" --mount type=3Dbind,source=3D"$PWD",targe=
t=3D"$PWD" \<br>--net=3Dhost \<br>--env "USER_ID=3D$(id -u)" \<br>--env "GR=
OUP_ID=3D$(id -g)" \<br>ghcr.io/siemens/kas/kas:2.6.2 \<br>bash -c "sudo ap=
t update ; sudo apt install -y zip &amp;&amp; ./meta-ettus/contrib/kas_buil=
d_imgs_package.sh x4xx v4.7.0.0"</p><p>Unzip bootloaders to /tftpboot:<br>s=
udo unzip build/tmp-glibc/deploy/images/ni-titanium-rev5-mender/u-boot-jtag=
-files.zip -d /tftpboot</p><p>Copy kernel image to /tftpboot:<br>sudo cp bu=
ild/tmp-glibc/deploy/images/ni-titanium-rev5-mender/fitImage /tftpboot</p><=
p>Unpack the rootfs to directory exposed by nfs server:<br>mkdir rootfs_mou=
nt_dir<br>sudo mount build/tmp-glibc/deploy/images/ni-titanium-rev5-mender/=
gnuradio-image-ni-titanium-rev5-mender-20241005135100.ext4 rootfs_mount_dir=
 -o loop<br>sudo mkdir /nfsroot/x410<br>sudo cp -rp rootfs_mount_dir/* /nfs=
root/x410</p><p><br>Configure pxelinux to mount rootfs over NFS:<br>mkdir /=
tftpboot/x410/pxelinux.cfg<br>touch /tftpboot/x410/pxelinux.cfg/default</p>=
<p>edit file =E2=80=98/tftpboot/x410/pxelinux.cfg/default=E2=80=99 and put =
inside following content (this was taken from Petalinux and edited to mount=
 rootfs from NFS and to have UIO name good for USRP X410):<br>LABEL Linux<b=
r>KERNEL fitImage<br>APPEND earlycon console=3DttyPS0,115200 root=3D/dev/nf=
s nfsroot=3D192.168.0.1:/nfsroot/x410,v3,tcp uio_pdrv_genirq.of_id=3Dusrp-u=
io at24.io_limit=3D64 rootwait clk_ignore_unused ip=3Ddhcp rw</p><p>You nee=
d to connect 1Gb Ethernet and JTAG USB port of your X410 to the PC. I assum=
e that the PC=E2=80=99s address on the Ethernet interface connected to X410=
 is 192.168.0.1 (otherwise change the address in /tftpboot/x410/pxelinux.cf=
g/default).</p><p>Booting:<br>Rreset the USRP. You can do it over USRP=
=E2=80=99s microcontroller UART:<br><br>stm_uart=3D$(ls /dev/serial/by-id/u=
sb-Digilent_Digilent_USB_Device_*-if02-port0 | head -n 1)<br>echo reboot &g=
t; "$stm_uart"<br>sleep 0.5<br>echo zynqmp bootmode jtag &gt; "$stm_uart"<b=
r>sleep 0.5<br>echo powerbtn &gt; "$stm_uart"<br><br>Then boot the USRP:<br=
>cd /tftpboot<br>source /tools/Xilinx/Vivado/2021.1/settings64.sh<br>#any o=
ther Vivado installation should do, it is only needed for xsdb program that=
 sends bootloaders to ARM=E2=80=99s memory over JTAG<br>xsdb "boot_u-boot.t=
cl"</p><p>For ZCU111 I did write some u-boot configuration for jtagboot. On=
 X410 the code is not modified to make the netboot easier. You=E2=80=99ll n=
eed to connect over UART to the X410:<br>zynq_uart=3D$(ls /dev/serial/by-id=
/usb-Digilent_Digilent_USB_Device_*-if03-port0 | head -n 1)<br>picocom -b 1=
15200 =E2=80=9C$zynq_uart=E2=80=9D</p><p>So when you=E2=80=99ll see some te=
xt written by u-boot type =E2=80=98noautoboot=E2=80=98 to go to u-boot prom=
pt. Then do:<br>setenv jtagboot 'run netboot'<br>setenv nfsroot '/nfsroot/x=
410=E2=80=99<br>setenv tftproot ''<br>saveenv<br><br>Reset the USRP and boo=
t over JTAG again. Now is a tricky part that I didn=E2=80=99t solve complet=
ely for X410 (and for ZCU111 it works well). If everything to this step wil=
l go well u-boot will start to look for files in some strange directories i=
n /tftpboot directory. What I did was putting those files there after seein=
g that u-boot looks for them. At the moment I don=E2=80=99t have a better s=
olution than to show how it looks on my side. So here is content of my /tft=
pboot (actually I put files for different boards in subdirectories of /tftp=
boot, but here in order to not complicate this description even more I didn=
=E2=80=99t add that):<br>https://ln5.sync.com/dl/1ceadcae0/98ggqg92-7d8mv5c=
q-txweneu5-pdaqzx26/view/default/14313095050001</p><p>Best Regards,<br>Piot=
r Krysik</p></blockquote>

--b1_JYdfRN2IVvGdaIxRpj3sGBkRCxe4CW2pgIJx7Bql0g--

--===============1618936718767114561==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1618936718767114561==--
