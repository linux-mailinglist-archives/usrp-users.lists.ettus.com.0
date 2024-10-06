Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC8F992016
	for <lists+usrp-users@lfdr.de>; Sun,  6 Oct 2024 19:43:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BF92A38559C
	for <lists+usrp-users@lfdr.de>; Sun,  6 Oct 2024 13:43:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728236625; bh=dTbT8YB0jhNe7vz4U1FEUWu5fx3bqQXUF93t+gpgu9A=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Lpen+GniGNXFNQNlQOx0+rrauj3aHeqMZ6CpP1kxG2ZfCbULnV9BbgbzpzRwfb3rK
	 j4L/51y2ly4Qhi48V3BFH3lJ7pjTHejVmCgZqmfrxYOS5x0yPBgMOc14X7OkFyT6Ky
	 B93eVw/SUTCOQXboOZ9mdn7VNkOZyOg/E7DfDJ3fI0bP7gZWiYXPgPiBrlZvk8yY6h
	 9COLdshi7QJEhh9SM88WmP/GT1SPQVdP2PvavBDpSJCTzeukK4CLb5Zht9H3lHiW+6
	 0EdkeJxIKnpNx0jFYZy68I81DiqyAreelwgSDEoRejEwCbQtpGUwiartQJbHa5AOrc
	 PwxlP2TkCiT1w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 29D8D385527
	for <usrp-users@lists.ettus.com>; Sun,  6 Oct 2024 13:43:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728236604; bh=wjKRC44dVnbP/V1ko+jwXYGM07CZTAd5O/6cXyZdL1Y=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=d/PQD5El6Th1AJU6LkxCeLGFjzt3XmmzORZBkYvBb+5bsyt8iUNM4KU8/ryBBrsuI
	 ig/lS97/rkl6rxJ9oSiff9Cwcw/tNwhP78kP6Mezhcgr73I9kBKo3LW7L7HzxuXTQy
	 raC/5LlY9vqRYAYrVckbhHbBBcsXf4uQhloOpKIOfa2k38zHts6Ys2e+b6g/ukOGiZ
	 9/fkMD76T7HJ58P0FUYQsFIZM64HhKuQ2iA1n0IH6jHGAW6ptF4A2ZTBgGTDhXNsV0
	 hS0us0LnLG32P4KpJnmFBgTRDY3BNXIcWN4P4ZMD4efBhlxrovxrJizl38EuKtiQqa
	 9q3OEvaUYvYcg==
Date: Sun, 6 Oct 2024 17:43:24 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <AG5jQ18ShLdWjOQf42E2WZpqXCJXo45yUnXiagkGL5g@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: gIKhdxUdqEnux08RuvzgkV4rBz3T2pbo3dIcg@lists.ettus.com
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="b1_AG5jQ18ShLdWjOQf42E2WZpqXCJXo45yUnXiagkGL5g"
Content-Transfer-Encoding: 7bit
Message-ID-Hash: ARTQMCCZHK3ERTYTR3PKPT4CWFX53DLN
X-Message-ID-Hash: ARTQMCCZHK3ERTYTR3PKPT4CWFX53DLN
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ARTQMCCZHK3ERTYTR3PKPT4CWFX53DLN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

This is a multi-part message in MIME format.

--b1_AG5jQ18ShLdWjOQf42E2WZpqXCJXo45yUnXiagkGL5g
Content-Type: multipart/alternative;
 boundary="b2_AG5jQ18ShLdWjOQf42E2WZpqXCJXo45yUnXiagkGL5g"

--b2_AG5jQ18ShLdWjOQf42E2WZpqXCJXo45yUnXiagkGL5g
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

mruane@silveredge-gs.com wrote:

> Hi Martin,
>
> > Be advised that bad configurations of kernel and/or FPGA (or device t=
ree\
> > info) can lead to boot loops which are pretty annoying to auto-fix.
> >
> > \--M
>
> \:-)  You caught me daydreaming about automating the tedious debug I=E2=
=80=99m about to start. :-)

Hello,

Regarding kernel versions (5.15 vs 5.10) I messed that. At the time newes=
t linux-xlnx was 5.15 and USRP X410 used 5.10.

I did my bisecting by starting from xlnx_rebase_v5.10 branch, finding the=
 common commit of NI=E2=80=99s kernel and linux-xlnx (2c85ebc57b3e) and s=
ome working commit (top of xlnx_rebase_v5.10 branch). It looked like this=
:\
cd kernel_souces/linux-xlnx/

git bisect reset\
git checkout xlnx_rebase_v5.10\
git bisect start\
git bisect bad\
git bisect good 2c85ebc57b3e\
git bisect run check_not_working

I=E2=80=99m attaching the scripts used for bisecting in case anyone is in=
terested. They were written ad hoc and not meant to be used by anyone els=
e than me. I.e. =E2=80=98git bisect good 2c85ebc57b3e=E2=80=99 means a co=
mmit for which ZCU111 failed to boot, so actually opposite of good. But I=
=E2=80=99m posting them in case anyone finds them helpful. Boot loops wer=
e not a problem as the failure to boot was confirmed based on exceeding a=
 timeout.

Regarding the description how to boot X410 over the network - I have writ=
ten it below, but keep in mind that I didn=E2=80=99t go through all of th=
e steps before writing them down. So most probably I have missed somethin=
g. When (or if) I=E2=80=99ll have a well tested description, I=E2=80=99ll=
 put it on some webpage and post a link here.

It goes like this (for Ubuntu 20.04):

Install nfs and tftp servers + docker:\
sudo apt install nfs-kernel-server tftpd-hpa isc-dhcp-server docker.io

Configure nfs server by putting this in /etc/exports:\
/nfsroot \*(rw,sync,no_root_squash)\
sudo systemctl restart nfs-server

Configure DHCP server. In file /etc/dhcp/dhcpd.conf you need to check if =
you have something like this for subnet 192.168.0.0:\
subnet 192.168.0.0 netmask 255.255.255.0 {\
  range 192.168.0.20 192.168.0.120;\
  option subnet-mask 255.255.255.0;\
  option routers 192.168.0.1;\
}

Then restart DHCP server:\
sudo systemctl restart isc-dhcp-server

If you need to have constant IP in the USRP add something like to /etc/dh=
cp/dhcpd.conf:\
host x410 {\
  hardware ethernet 00:80:2f:31:11:0c;\
  fixed-address 192.168.0.15;\
  option subnet-mask 255.255.255.0;\
  option broadcast-address 192.168.0.255;\
  option routers 192.168.0.1;\
}\
(replace 00:80:2f:31:11:0c with your USRP=E2=80=99s 1Gb ethernet interfac=
e MAC address).

Prepare kernel+bootloaders and rootfs. All of these things are in SD card=
 images provided by NI/Ettus (can be mounted with i.e. kpartx), but I was=
n=E2=80=99t able to boot the board over network with use of the kernel pr=
ovided there. So I=E2=80=99m building whole image myself from meta-ettus =
repo like this (will take a while):

git clone https://github.com/EttusResearch/meta-ettus\
docker run --rm -it -w "$PWD" --mount type=3Dbind,source=3D"$PWD",target=3D=
"$PWD" \\\
         --net=3Dhost \\\
         --env "USER_ID=3D$(id -u)" \\\
         --env "GROUP_ID=3D$(id -g)" \\\
         ghcr.io/siemens/kas/kas:2.6.2 \\\
         bash -c "sudo apt update ; sudo apt install -y zip && ./meta-ett=
us/contrib/kas_build_imgs_package.sh x4xx v4.7.0.0"

Unzip bootloaders to /tftpboot:\
sudo unzip build/tmp-glibc/deploy/images/ni-titanium-rev5-mender/u-boot-j=
tag-files.zip -d /tftpboot

Copy kernel image to /tftpboot:\
sudo cp build/tmp-glibc/deploy/images/ni-titanium-rev5-mender/fitImage /t=
ftpboot

Unpack the rootfs to directory exposed by nfs server:\
mkdir rootfs_mount_dir\
sudo mount build/tmp-glibc/deploy/images/ni-titanium-rev5-mender/gnuradio=
-image-ni-titanium-rev5-mender-20241005135100.ext4 rootfs_mount_dir -o lo=
op\
sudo mkdir /nfsroot/x410\
sudo cp -rp rootfs_mount_dir/\* /nfsroot/x410

\
Configure pxelinux to mount rootfs over NFS:\
mkdir /tftpboot/x410/pxelinux.cfg\
touch /tftpboot/x410/pxelinux.cfg/default

edit file =E2=80=98/tftpboot/x410/pxelinux.cfg/default=E2=80=99 and put i=
nside following content (this was taken from Petalinux and edited to moun=
t rootfs from NFS and to have UIO name good for USRP X410):\
LABEL Linux\
KERNEL fitImage\
APPEND earlycon console=3DttyPS0,115200 root=3D/dev/nfs nfsroot=3D192.168=
.0.1:/nfsroot/x410,v3,tcp uio_pdrv_genirq.of_id=3Dusrp-uio at24.io_limit=3D=
64 rootwait clk_ignore_unused ip=3Ddhcp rw

You need to connect 1Gb Ethernet and JTAG USB port of your X410 to the PC=
. I assume that the PC=E2=80=99s address on the Ethernet interface connec=
ted to X410 is 192.168.0.1 (otherwise change the address in /tftpboot/x41=
0/pxelinux.cfg/default).

Booting:\
Rreset the USRP. You can do it over USRP=E2=80=99s microcontroller UART:\
\
stm_uart=3D$(ls /dev/serial/by-id/usb-Digilent_Digilent_USB_Device_\*-if0=
2-port0 | head -n 1)\
echo reboot > "$stm_uart"\
sleep 0.5\
echo zynqmp bootmode jtag > "$stm_uart"\
sleep 0.5\
echo powerbtn > "$stm_uart"\
\
Then boot the USRP:\
cd /tftpboot\
source /tools/Xilinx/Vivado/2021.1/settings64.sh\
\#any other Vivado installation should do, it is only needed for xsdb pro=
gram that sends bootloaders to ARM=E2=80=99s memory over JTAG\
xsdb "boot_u-boot.tcl"

For ZCU111 I did write some u-boot configuration for jtagboot. On X410 th=
e code is not modified to make the netboot easier. You=E2=80=99ll need to=
 connect over UART to the X410:\
zynq_uart=3D$(ls /dev/serial/by-id/usb-Digilent_Digilent_USB_Device_\*-if=
03-port0 | head -n 1)\
picocom -b 115200 =E2=80=9C$zynq_uart=E2=80=9D

So when you=E2=80=99ll see some text written by u-boot type =E2=80=98noau=
toboot=E2=80=98 to go to u-boot prompt. Then do:\
setenv jtagboot 'run netboot'\
setenv nfsroot '/nfsroot/x410=E2=80=99\
setenv tftproot ''\
saveenv\
\
Reset the USRP and boot over JTAG again. Now is a tricky part that I didn=
=E2=80=99t solve completely for X410 (and for ZCU111 it works well). If e=
verything to this step will go well u-boot will start to look for files i=
n some strange directories in /tftpboot directory. What I did was putting=
 those files there after seeing that u-boot looks for them. At the moment=
 I don=E2=80=99t have a better solution than to show how it looks on my s=
ide. So here is content of my /tftpboot (actually I put files for differe=
nt boards in subdirectories of /tftpboot, but here in order to not compli=
cate this description even more I didn=E2=80=99t add that):\
https://ln5.sync.com/dl/1ceadcae0/98ggqg92-7d8mv5cq-txweneu5-pdaqzx26/vie=
w/default/14313095050001

Best Regards,\
Piotr Krysik

--b2_AG5jQ18ShLdWjOQf42E2WZpqXCJXo45yUnXiagkGL5g
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>mruane@silveredge-gs.com wrote:</p><blockquote><p>Hi Martin,</p><blockqu=
ote><p>Be advised that bad configurations of kernel and/or FPGA (or device =
tree<br>info) can lead to boot loops which are pretty annoying to auto-fix.=
</p><p>--M</p></blockquote><p>:-)  You caught me daydreaming about automati=
ng the tedious debug I=E2=80=99m about to start. :-)</p></blockquote><p>Hel=
lo,</p><p>Regarding kernel versions (5.15 vs 5.10) I messed that. At the ti=
me newest linux-xlnx was 5.15 and USRP X410 used 5.10.</p><p class=3D"">I d=
id my bisecting by starting from xlnx_rebase_v5.10 branch, finding the comm=
on commit of NI=E2=80=99s kernel and linux-xlnx (2c85ebc57b3e) and some wor=
king commit (top of xlnx_rebase_v5.10 branch). It looked like this:<br>cd k=
ernel_souces/linux-xlnx/</p><p>git bisect reset<br>git checkout xlnx_rebase=
_v5.10<br>git bisect start<br>git bisect bad<br>git bisect good 2c85ebc57b3=
e<br>git bisect run check_not_working</p><p>I=E2=80=99m attaching the scrip=
ts used for bisecting in case anyone is interested. They were written ad ho=
c and not meant to be used by anyone else than me. I.e. =E2=80=98git bisect=
 good 2c85ebc57b3e=E2=80=99 means a commit for which ZCU111 failed to boot,=
 so actually opposite of good. But I=E2=80=99m posting them in case anyone =
finds them helpful. Boot loops were not a problem as the failure to boot wa=
s confirmed based on exceeding a timeout.</p><p>Regarding the description h=
ow to boot X410 over the network - I have written it below, but keep in min=
d that I didn=E2=80=99t go through all of the steps before writing them dow=
n. So most probably I have missed something. When (or if) I=E2=80=99ll have=
 a well tested description, I=E2=80=99ll put it on some webpage and post a =
link here.</p><p>It goes like this (for Ubuntu 20.04):</p><p>Install nfs an=
d tftp servers + docker:<br>sudo apt install nfs-kernel-server tftpd-hpa is=
c-dhcp-server docker.io</p><p>Configure nfs server by putting this in /etc/=
exports:<br>/nfsroot *(rw,sync,no_root_squash)<br>sudo systemctl restart nf=
s-server</p><p>Configure DHCP server. In file /etc/dhcp/dhcpd.conf you need=
 to check if you have something like this for subnet 192.168.0.0:<br>subnet=
 192.168.0.0 netmask 255.255.255.0 {<br>  range 192.168.0.20 192.168.0.120;=
<br>  option subnet-mask 255.255.255.0;<br>  option routers 192.168.0.1;<br=
>}</p><p>Then restart DHCP server:<br>sudo systemctl restart isc-dhcp-serve=
r</p><p>If you need to have constant IP in the USRP add something like to /=
etc/dhcp/dhcpd.conf:<br>host x410 {<br>  hardware ethernet 00:80:2f:31:11:0=
c;<br>  fixed-address 192.168.0.15;<br>  option subnet-mask 255.255.255.0;<=
br>  option broadcast-address 192.168.0.255;<br>  option routers 192.168.0.=
1;<br>}<br>(replace 00:80:2f:31:11:0c with your USRP=E2=80=99s 1Gb ethernet=
 interface MAC address).</p><p>Prepare kernel+bootloaders and rootfs. All o=
f these things are in SD card images provided by NI/Ettus (can be mounted w=
ith i.e. kpartx), but I wasn=E2=80=99t able to boot the board over network =
with use of the kernel provided there. So I=E2=80=99m building whole image =
myself from meta-ettus repo like this (will take a while):</p><p>git clone =
https://github.com/EttusResearch/meta-ettus<br>docker run --rm -it -w "$PWD=
" --mount type=3Dbind,source=3D"$PWD",target=3D"$PWD" \<br>         --net=
=3Dhost \<br>         --env "USER_ID=3D$(id -u)" \<br>         --env "GROUP=
_ID=3D$(id -g)" \<br>         ghcr.io/siemens/kas/kas:2.6.2 \<br>         b=
ash -c "sudo apt update ; sudo apt install -y zip &amp;&amp; ./meta-ettus/c=
ontrib/kas_build_imgs_package.sh x4xx v4.7.0.0"</p><p>Unzip bootloaders to =
/tftpboot:<br>sudo unzip build/tmp-glibc/deploy/images/ni-titanium-rev5-men=
der/u-boot-jtag-files.zip -d /tftpboot</p><p>Copy kernel image to /tftpboot=
:<br>sudo cp build/tmp-glibc/deploy/images/ni-titanium-rev5-mender/fitImage=
 /tftpboot</p><p>Unpack the rootfs to directory exposed by nfs server:<br>m=
kdir rootfs_mount_dir<br>sudo mount build/tmp-glibc/deploy/images/ni-titani=
um-rev5-mender/gnuradio-image-ni-titanium-rev5-mender-20241005135100.ext4 r=
ootfs_mount_dir -o loop<br>sudo mkdir /nfsroot/x410<br>sudo cp -rp rootfs_m=
ount_dir/* /nfsroot/x410</p><p><br>Configure pxelinux to mount rootfs over =
NFS:<br>mkdir /tftpboot/x410/pxelinux.cfg<br>touch /tftpboot/x410/pxelinux.=
cfg/default</p><p>edit file =E2=80=98/tftpboot/x410/pxelinux.cfg/default=
=E2=80=99 and put inside following content (this was taken from Petalinux a=
nd edited to mount rootfs from NFS and to have UIO name good for USRP X410)=
:<br>LABEL Linux<br>KERNEL fitImage<br>APPEND earlycon console=3DttyPS0,115=
200 root=3D/dev/nfs nfsroot=3D192.168.0.1:/nfsroot/x410,v3,tcp uio_pdrv_gen=
irq.of_id=3Dusrp-uio at24.io_limit=3D64 rootwait clk_ignore_unused ip=3Ddhc=
p rw</p><p>You need to connect 1Gb Ethernet and JTAG USB port of your X410 =
to the PC. I assume that the PC=E2=80=99s address on the Ethernet interface=
 connected to X410 is 192.168.0.1 (otherwise change the address in /tftpboo=
t/x410/pxelinux.cfg/default).<br><br></p><p>Booting:<br>Rreset the USRP. Yo=
u can do it over USRP=E2=80=99s microcontroller UART:<br><br>stm_uart=3D$(l=
s /dev/serial/by-id/usb-Digilent_Digilent_USB_Device_*-if02-port0 | head -n=
 1)<br>echo reboot &gt; "$stm_uart"<br>sleep 0.5<br>echo zynqmp bootmode jt=
ag &gt; "$stm_uart"<br>sleep 0.5<br>echo powerbtn &gt; "$stm_uart"<br><br>T=
hen boot the USRP:<br>cd /tftpboot<br>source /tools/Xilinx/Vivado/2021.1/se=
ttings64.sh<br>#any other Vivado installation should do, it is only needed =
for xsdb program that sends bootloaders to ARM=E2=80=99s memory over JTAG<b=
r>xsdb "boot_u-boot.tcl"<br><br></p><p>For ZCU111 I did write some u-boot c=
onfiguration for jtagboot. On X410 the code is not modified to make the net=
boot easier. You=E2=80=99ll need to connect over UART to the X410:<br>zynq_=
uart=3D$(ls /dev/serial/by-id/usb-Digilent_Digilent_USB_Device_*-if03-port0=
 | head -n 1)<br>picocom -b 115200 =E2=80=9C$zynq_uart=E2=80=9D</p><p>So wh=
en you=E2=80=99ll see some text written by u-boot type =E2=80=98noautoboot=
=E2=80=98 to go to u-boot prompt. Then do:<br>setenv jtagboot 'run netboot'=
<br>setenv nfsroot '/nfsroot/x410=E2=80=99<br>setenv tftproot ''<br>saveenv=
<br><br>Reset the USRP and boot over JTAG again. Now is a tricky part that =
I didn=E2=80=99t solve completely for X410 (and for ZCU111 it works well). =
If everything to this step will go well u-boot will start to look for files=
 in some strange directories in /tftpboot directory. What I did was putting=
 those files there after seeing that u-boot looks for them. At the moment I=
 don=E2=80=99t have a better solution than to show how it looks on my side.=
 So here is content of my /tftpboot (actually I put files for different boa=
rds in subdirectories of /tftpboot, but here in order to not complicate thi=
s description even more I didn=E2=80=99t add that):<br>https://ln5.sync.com=
/dl/1ceadcae0/98ggqg92-7d8mv5cq-txweneu5-pdaqzx26/view/default/143130950500=
01</p><p>Best Regards,<br>Piotr Krysik</p>

--b2_AG5jQ18ShLdWjOQf42E2WZpqXCJXo45yUnXiagkGL5g--

--b1_AG5jQ18ShLdWjOQf42E2WZpqXCJXo45yUnXiagkGL5g
Content-Type: text/x-shellscript; name=check_not_working
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=check_not_working

IyEvYmluL2Jhc2gKCnNvdXJjZSAvb3B0L29lY29yZS1zZGsvZW52aXJvbm1lbnQtc2V0dXAtYWFy
Y2g2NC1vZS1saW51eApjZCBrZXJuZWxfc291cmNlcy9saW51eC14bG54CmNwIGNvbmZpZ19iYXNl
IC5jb25maWcKeWVzICIiIHwgbWFrZSBvbGRjb25maWcKbWFrZSAtaiA2NAoKaWYgWyAkPyAtbmUg
MCBdOyB0aGVuCiAgICBlY2hvICJGYWlsZWQgYnVpbGQgLSBpZ25vcmluZyBjb21taXQiCiAgICBl
eGl0IDEyNTsKZmkKCmNwIGtlcm5lbF9zb3VyY2VzL2xpbnV4LXhsbngvYXJjaC9hcm02NC9ib290
L0ltYWdlIC90ZnRwYm9vdC94bG54Mgpzb3VyY2UgL29wdC9YaWxpbngvVml2YWRvLzIwMTkuMS9z
ZXR0aW5nczY0LnNoCmJvb3RfcmZzb2NfbGludXgKY2hlY2tfYm9vdF9sb2cucHkKZXhpdCAkPwo=

--b1_AG5jQ18ShLdWjOQf42E2WZpqXCJXo45yUnXiagkGL5g
Content-Type: text/x-python; name=check_boot_log.py
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=check_boot_log.py

IyEvdXNyL2Jpbi9weXRob24zCgpmcm9tIGFyZ3BhcnNlIGltcG9ydCBBcmd1bWVudFBhcnNlcgpp
bXBvcnQgc2VyaWFsCmltcG9ydCByZQppbXBvcnQgc3lzCgpkZWYgcGFyc2VfYXJncygpOgogICAg
cGFyc2VyID0gQXJndW1lbnRQYXJzZXIocHJvZz0iIikKICAgIG5vcm1hbF9ncm91cCA9IHBhcnNl
ci5hZGRfYXJndW1lbnRfZ3JvdXAoIiIpCgogICAgbm9ybWFsX2dyb3VwLmFkZF9hcmd1bWVudCgK
ICAgICAgICAiLXAiLAogICAgICAgICItLXNlcmlhbC1wb3J0IiwKICAgICAgICBkZXN0PSJzZXJp
YWxfcG9ydCIsCiAgICAgICAgdHlwZT1zdHIsCiAgICAgICAgZGVmYXVsdD0iL2Rldi90dHlVU0Ix
IiwKICAgICAgICBoZWxwPSJTZXQgc2VyaWFsIHBvcnQgKGRlZmF1bHQgJShkZWZhdWx0KXMpIikK
ICAgIG5vcm1hbF9ncm91cC5hZGRfYXJndW1lbnQoCiAgICAgICAgIi1mIiwKICAgICAgICAiLS1m
aWxlLW5hbWUiLAogICAgICAgIGRlc3Q9ImZpbGVfbmFtZSIsCiAgICAgICAgdHlwZT1zdHIsCiAg
ICAgICAgZGVmYXVsdD0iYm9vdC5sb2ciLAogICAgICAgIGhlbHA9IkxvZyBmaWxlIG5hbWUgKGRl
ZmF1bHQgJShkZWZhdWx0KXMpIikKICAgIHJldHVybiBwYXJzZXIucGFyc2VfYXJncygpCgppZiBf
X25hbWVfXyA9PSAiX19tYWluX18iOgogICAgYXJncyA9IHBhcnNlX2FyZ3MoKQogICAgZW5kaW5n
ID0gIm5pLXg0eHggbG9naW46IgoKICAgIHBvcnQgPSBzZXJpYWwuU2VyaWFsKHBvcnQ9YXJncy5z
ZXJpYWxfcG9ydCwgYmF1ZHJhdGU9MTE1MjAwLCB0aW1lb3V0PTQwKQogICAgcmVzdWx0X3R4dCA9
IHBvcnQucmVhZF91bnRpbCgKICAgICAgICAgICAgICAgICAgZW5kaW5nLmVuY29kZSgpKS5kZWNv
ZGUoJ3V0Zi04JykKCiAgICBwcmludChyZXN1bHRfdHh0KQogICAgaWYgZW5kaW5nIGluIHJlc3Vs
dF90eHQ6CiAgICAgICAgcHJpbnQoIkJvb3RlZCIpCiAgICAgICAgc3lzLmV4aXQoMTApCiAgICBl
bHNlOgogICAgICAgIHByaW50KCJGYWlsZWQgYm9vdCIpCiAgICAgICAgc3lzLmV4aXQoMCkK

--b1_AG5jQ18ShLdWjOQf42E2WZpqXCJXo45yUnXiagkGL5g
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--b1_AG5jQ18ShLdWjOQf42E2WZpqXCJXo45yUnXiagkGL5g--
