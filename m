Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C82316963
	for <lists+usrp-users@lfdr.de>; Wed, 10 Feb 2021 15:48:07 +0100 (CET)
Received: from [::1] (port=46116 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l9qmj-0002eT-O3; Wed, 10 Feb 2021 09:48:05 -0500
Received: from p-impout001aa.msg.pkvw.co.charter.net ([47.43.26.132]:41130
 helo=p-impout001.msg.pkvw.co.charter.net)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <dtrask1@tampabay.rr.com>)
 id 1l9qmf-0002VI-Fq
 for usrp-users@lists.ettus.com; Wed, 10 Feb 2021 09:48:01 -0500
Received: from localhost ([34.233.51.36]) by cmsmtp with ESMTP
 id 9qlzlLCEMuntO9qm0lgu3r; Wed, 10 Feb 2021 14:47:20 +0000
X-Authority-Analysis: v=2.3 cv=H72lPNQi c=1 sm=1 tr=0
 a=TrnfHZhGi+cGSPqA0dbxTQ==:117 a=TrnfHZhGi+cGSPqA0dbxTQ==:17
 a=Jp7JS-XeckIA:10 a=kMekCo5aZDoA:10 a=ayC55rCoAAAA:8 a=etiEgX_XAAAA:8
 a=e5mUnYsNAAAA:8 a=DAYTqiaHm6BNtVE0ujEA:9 a=QEXdDO2ut3YA:10 a=9WetUmklGzQA:10
 a=DR68m8585aQA:10 a=pGLkceISAAAA:8 a=199DOO9bXe88qiDSW-0A:9
 a=OSCzxePNnae9ob6xQ8NeqTRz0K8=:19 a=Z7BUCNPd6AoAA8e9:21 a=_W_S_7VecoQA:10
 a=B_RyunTPg8udlmYm5Cu2:22 a=MLbIUA-Bjd6y1alW9qBG:22 a=Vxmtnl_E_bksehYqCbjh:22
Message-Id: <dc7956e4d464ca7111db615edccaeb34506348a5@webmail>
To: "'Marcus D. Leech'" <patchvonbraun@gmail.com>
Cc: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 
X-Originating-IP: [65.35.179.59]
X-Priority: 3
Importance: Normal
X-MSMail-Priority: Normal
Date: Wed, 10 Feb 2021 14:47:19 +0000
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfLkyVUfroyduQw2xFOcEcKf+xiudNgGHf/9hFBCfnC5B82Qfz0S3yWlVafw2oQupTISiQteG2Prcu2EaCAODvXeovRqzqyyRlDv4WXUZr+gondmlfdXn
 p3+cWWDAGaW9gAecrwIHv3WxO8AC6GRfyrro+6FVHMnKcLZoP4wIg1ppbXRGRMUWtvy/Bh+Ok7mvMuoR74VVMgDZYMoQSqlpubg=
Subject: Re: [USRP-users] E310 with v4.0.0.0 Image: Configure Static IP
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Dennis Trask via USRP-users <usrp-users@lists.ettus.com>
Reply-To: dtrask1@tampabay.rr.com
Content-Type: multipart/mixed; boundary="===============7284761684166888006=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============7284761684166888006==
Content-Type: multipart/alternative;
 boundary="=_e2e6b54926062b783893ac58bcbe58e1"

--=_e2e6b54926062b783893ac58bcbe58e1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Here are the results....=0Aroot@ni-e31x-3199693:~# systemctl | grep -i=
=0Anetsys-devices-soc0-amba-e000b000.ethernet-net-eth0.device loaded=0Aa=
ctive plugged=0A/sys/devices/soc0/amba/e000b000.ethernet/net/eth0sys-sub=
system-net-devices-eth0.device=0Aloaded active plugged=0A/sys/subsystem/=
net/devices/eth0systemd-networkd.service loaded active=0Arunning Network=
 Servicesystemd-resolved.service loaded active running=0ANetwork Name Re=
solutionsystemd-timesyncd.service loaded active running=0ANetwork Time S=
ynchronizationsystemd-networkd.socket loaded active=0Arunning Network Se=
rvice Netlink Socketnetwork-pre.target loaded active=0Aactive Network (P=
re)network.target loaded active active=0ANetworknss-lookup.target loaded=
 active active Host and Network Name=0ALookupsroot@ni-e31x-3199693:~# ip=
 link1: lo:  mtu 65536 qdisc noqueue=0Aqlen 1000 link/loopback 00:00:00:=
00:00:00 brd 00:00:00:00:00:002:=0Aeth0:  mtu 1500 qdisc pfifo_fast qlen=
 1000 link/ether=0A00:80:2f:26:50:06 brd ff:ff:ff:ff:ff:ff=0A=0A=09-----=
------------------------------------From: "Marcus D. Leech" =0A=0ATo: dt=
rask1@tampabay.rr.com=0ACc: "usrp-users@lists.ettus.com"=0ASent: Tuesday=
 February 9 2021 5:40:32PM=0ASubject: Re: [USRP-users] E310 with v4.0.0.=
0 Image: Configure Static=0AIP=0A=0A On 02/09/2021 05:04 PM, dtrask1@tam=
pabay.rr.com wrote:=0A  Thanks, Marcus. =0A That was actually what I att=
empted first. As described in the man=0Apage (=0A[1]https://www.freedesk=
top.org/software/systemd/man/systemd.network.html=0A[2]) I created eth0.=
network under /etc/systemd/network/, with these=0Acontents: =0A  [Match]=
 Name=3Deth0 =0A [Network] Address=3D192.168.200.2/24 =0A The system see=
med to ignore this configuration, however. =0A=0A  OK, what does:=0A=0A=
 systemctl |grep -i net=0A=0A Yield?=0A=0A What does:=0A=0A ip link=0A=
=0A Return?=0A=0A=09----------------------------------------- From: "Mar=
cus D. Leech via=0AUSRP-users"=0A To: usrp-users@lists.ettus.com=0A Cc:=
=0A Sent: Tuesday February 9 2021 4:42:34PM=0A Subject: Re: [USRP-users]=
 E310 with v4.0.0.0 Image: Configure Static=0AIP=0A=0AOn 02/09/2021 04:3=
5 PM, Dennis Trask via USRP-users wrote:=0A I have re-imaged the SD card=
 for my E310 with the v4.0.0.0 image. I=0Acannot figure out how to set a=
 static IP address on eth0 at boot-up. I=0Acreated an /etc/network/inter=
faces file that looks like this: =0A  auto eth0 iface eth0 inet static a=
ddress 192.168.200.2 netmask=0A255.255.255.0  =0A I can run the command=
 "ifup eth0" and bring up the interface with the=0Adesired configuration=
, but it does not initialize when I reboot. =0A The SD image I am using=
 was obtained with the command:=0Auhd_images_downloader -t e310 -t sg3=
 =0A I built the uhd_images_downloder from source, and it's version is=
=0A4.0.0.HEAD-0-g90ce6062. =0A Dennis =0A=0A ___________________________=
____________________=0A USRP-users mailing list=0A"mailto:USRP-users@lis=
ts.ettus.com">USRP-users@lists.ettus.com=0A "=0A[3]http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com"=0A[4]> target=3D=0A "_bla=
nk">=0A[5]http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
.com=0A[6]=0A It almost certainly is running systemd/networkd=0A=0A So l=
ook under /etc/systemd/networkd=0A=0A In Linux, there have historically=
 been many different ways to=0Aconfigure network devices, and even under=
 systemd, there are a couple=0Aof=0A different schemes "out there". I be=
lieve that in a UHD 4 system image=0Aon E310, it is based on Networkd.=
=0A=0A=0A=0ALinks:=0A------=0A[1]=0Ahttps://www.freedesktop.org/software=
/systemd/man/systemd.network.html=0A[2]=0Ahttps://www.freedesktop.org/so=
ftware/systemd/man/systemd.network.html=0A[3] http://lists.ettus.com/mai=
lman/listinfo/usrp-users_lists.ettus.com=0A[4] http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com=0A[5] http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com=0A[6] http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com=0A

--=_e2e6b54926062b783893ac58bcbe58e1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>Here are the results....<div><br></div><div><div>root@ni-e31=
x-3199693:~# systemctl | grep -i net</div><div>sys-devices-soc0-amba-e00=
0b000.ethernet-net-eth0.device&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;loaded active plugged&nbsp; &nbsp;/sys/devices/soc0/amba/e00=
0b000.ethernet/net/eth0</div><div>sys-subsystem-net-devices-eth0.device&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;loaded active plugged&nbsp; &=
nbsp;/sys/subsystem/net/devices/eth0</div><div>systemd-networkd.service&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; loaded active running&nbsp; &nbsp;Network Service</div><d=
iv>systemd-resolved.service&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; loaded active running&nbsp; &=
nbsp;Network Name Resolution</div><div>systemd-timesyncd.service&nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;loaded active running&nbsp; &nbsp;Network Time Synchronization</d=
iv><div>systemd-networkd.socket&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;loaded active runnin=
g&nbsp; &nbsp;Network Service Netlink Socket</div><div>network-pre.targe=
t&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; loaded active active&nbsp; &nbsp; N=
etwork (Pre)</div><div>network.target&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; loaded active active&nbsp; &nbsp; Network</div><div>nss-=
lookup.target&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;loaded active ac=
tive&nbsp; &nbsp; Host and Network Name Lookups</div><div>root@ni-e31x-3=
199693:~# ip link</div><div>1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 6553=
6 qdisc noqueue qlen 1000</div><div>&nbsp; &nbsp; link/loopback 00:00:00=
:00:00:00 brd 00:00:00:00:00:00</div><div>2: eth0: &lt;BROADCAST,MULTICA=
ST,UP,LOWER_UP&gt; mtu 1500 qdisc pfifo_fast qlen 1000</div><div>&nbsp;=
 &nbsp; link/ether 00:80:2f:26:50:06 brd ff:ff:ff:ff:ff:ff</div><div><br=
></div><br><div class=3D"reply-new-signature"></div><p>-----------------=
------------------------</p>From: "Marcus D. Leech" <patchvonbraun@gmail=
.com><br>To: dtrask1@tampabay.rr.com<br>Cc: "usrp-users@lists.ettus.com"=
<br>Sent: Tuesday February 9 2021 5:40:32PM<br>Subject: Re: [USRP-users]=
 E310 with v4.0.0.0 Image: Configure Static IP<br><br>=0A<div class=3D"m=
oz-cite-prefix">On 02/09/2021 05:04 PM, <a class=3D"moz-txt-link-abbrevi=
ated">dtrask1@tampabay.rr.com</a>=0Awrote:<br></div>=0A<blockquote>=0ATh=
anks, Marcus.=0A<div><br></div>=0A<div>That was actually what I attempte=
d first. As described in the=0Aman page (<a class=3D"moz-txt-link-freete=
xt" href=3D"https://www.freedesktop.org/software/systemd/man/systemd.net=
work.html"></a><a href=3D"https://www.freedesktop.org/software/systemd/m=
an/systemd.network.html">https://www.freedesktop.org/software/systemd/ma=
n/systemd.network.html</a>)=0AI created eth0.network under /etc/systemd/=
network/, with these=0Acontents:</div>=0A<div><br></div>=0A<div>=0A<div>=
[Match]</div>=0A<div>Name=3Deth0</div>=0A<div><br></div>=0A<div>[Network=
]</div>=0A<div>Address=3D192.168.200.2/24</div>=0A<div><br></div>=0A<div=
>The system seemed to ignore this configuration, however.</div>=0A<div><=
br></div>=0A<div><br></div>=0A<br></div>=0A</blockquote>=0AOK, what does=
:<br><br>=0Asystemctl |grep -i net<br><br>=0AYield?<br><br>=0AWhat does:=
<br><br>=0Aip link<br><br>=0AReturn?<br><br><br><br><blockquote>=0A<div>=
=0A<p>-----------------------------------------</p>=0AFrom: "Marcus D. L=
eech via USRP-users"<br>=0ATo: <a class=3D"moz-txt-link-abbreviated">usr=
p-users@lists.ettus.com</a><br>=0A=0ACc:<br>=0ASent: Tuesday February 9=
 2021 4:42:34PM<br>=0ASubject: Re: [USRP-users] E310 with v4.0.0.0 Image=
: Configure=0AStatic IP<br><br><div class=3D"moz-cite-prefix">On 02/09/2=
021 04:35 PM, Dennis Trask=0Avia USRP-users wrote:<br></div>=0A<blockquo=
te>I have re-imaged the SD card for my E310 with the=0Av4.0.0.0 image. I=
 cannot figure out how to set a static IP address=0Aon eth0 at boot-up.=
 I created an /etc/network/interfaces file that=0Alooks like this:=0A<di=
v><br></div>=0A<div>=0A<div>auto eth0</div>=0A<div>iface eth0 inet stati=
c</div>=0A<div>address 192.168.200.2</div>=0A<div>netmask 255.255.255.0<=
/div>=0A</div>=0A<div><br></div>=0A<div>I can run the command "ifup eth0=
" and bring up the interface=0Awith the desired configuration, but it do=
es not initialize when I=0Areboot.</div>=0A<div><br></div>=0A<div>The SD=
 image I am using was obtained with the command:=0Auhd_images_downloader=
 -t e310 -t sg3</div>=0A<div><br></div>=0A<div>I built the uhd_images_do=
wnloder from source, and it's version=0Ais&nbsp;4.0.0.HEAD-0-g90ce6062.<=
/div>=0A<div><br></div>=0A<div>Dennis</div>=0A<div><br></div>=0A<br><br>=
=0A_______________________________________________<br>=0AUSRP-users mail=
ing list<br><a class=3D"moz-txt-link-rfc2396E">"mailto:USRP-users@lists.=
ettus.com"</a>&gt;<a class=3D"moz-txt-link-abbreviated">USRP-users@lists=
.ettus.com</a><br><a class=3D"moz-txt-link-rfc2396E" href=3D"http://list=
s.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">=0A"</a><a href=
=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">=
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"</a>&=
gt;=0Atarget=3D<br>=0A"_blank"&gt;<a class=3D"moz-txt-link-freetext" hre=
f=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"=
></a><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists=
.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ett=
us.com</a><br></blockquote>=0AIt almost certainly is running systemd/net=
workd<br><br>=0ASo look under /etc/systemd/networkd<br><br>=0AIn Linux,=
 there have historically been many different ways to=0Aconfigure network=
 devices, and even under systemd, there are a=0Acouple of<br>=0A&nbsp; d=
ifferent schemes "out there".&nbsp; I believe that in a UHD=0A4 system i=
mage on E310, it is based on Networkd.<br><br><br></div>=0A</blockquote>=
=0A<br></patchvonbraun@gmail.com></div></body></html>

--=_e2e6b54926062b783893ac58bcbe58e1--



--===============7284761684166888006==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7284761684166888006==--


