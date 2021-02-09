Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6B3315915
	for <lists+usrp-users@lfdr.de>; Tue,  9 Feb 2021 23:05:34 +0100 (CET)
Received: from [::1] (port=38996 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l9b8W-0007gI-KF; Tue, 09 Feb 2021 17:05:32 -0500
Received: from p-impout003aa.msg.pkvw.co.charter.net ([47.43.26.134]:50092
 helo=p-impout003.msg.pkvw.co.charter.net)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <dtrask1@tampabay.rr.com>)
 id 1l9b8T-0007ar-BA
 for usrp-users@lists.ettus.com; Tue, 09 Feb 2021 17:05:29 -0500
Received: from localhost ([34.233.51.36]) by cmsmtp with ESMTP
 id 9b7nlHTh05iY29b7olk8BQ; Tue, 09 Feb 2021 22:04:48 +0000
X-Authority-Analysis: v=2.3 cv=Tr6Yewfh c=1 sm=1 tr=0
 a=TrnfHZhGi+cGSPqA0dbxTQ==:117 a=TrnfHZhGi+cGSPqA0dbxTQ==:17
 a=Jp7JS-XeckIA:10 a=kMekCo5aZDoA:10 a=e5mUnYsNAAAA:8 a=etiEgX_XAAAA:8
 a=JysDcNkzKzoW7CSM2p0A:9 a=QEXdDO2ut3YA:10 a=9WetUmklGzQA:10
 a=DR68m8585aQA:10 a=Z9hU4ZlMKHQZj48QKAoA:9 a=HrPll1dRLVYBlRFm:21
 a=_W_S_7VecoQA:10 a=Vxmtnl_E_bksehYqCbjh:22 a=MLbIUA-Bjd6y1alW9qBG:22
Message-Id: <c8adce8fc66a02147695ffdfc9ee380542a5bca1@webmail>
To: "'Marcus D. Leech'" <patchvonbraun@gmail.com>
Cc: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 
X-Originating-IP: [65.35.179.59]
X-Priority: 3
Importance: Normal
X-MSMail-Priority: Normal
Date: Tue, 09 Feb 2021 22:04:47 +0000
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfGL5aaGvCyiXrqttHuROZQapXdRmLgv49Bk4kRf3CgSjNS/HZZxLPcVlhCyvwCPlpkTvyT7yPPXVe+QA6ovAdp+AIdxXpdYVRXDAv/vKA5NtDhWA/ClF
 b0C1KpJgIUsq4kSNAcDSxdGvU7T2/nL5zsFjwj6rNIAjB0v4kjvworVXGyZ7BTlr14P/5t45qc3lrl/gMlU0GeEf0P2xvUf4ARw=
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
Content-Type: multipart/mixed; boundary="===============8446221385456271389=="
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

--===============8446221385456271389==
Content-Type: multipart/alternative;
 boundary="=_66fe995a1068df6159b74eceedce8b7a"

--=_66fe995a1068df6159b74eceedce8b7a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks, Marcus.=0AThat was actually what I attempted first. As described=
 in the man page=0A(https://www.freedesktop.org/software/systemd/man/sys=
temd.network.html)=0AI created eth0.network under /etc/systemd/network/,=
 with these=0Acontents:=0A[Match]Name=3Deth0=0A[Network]Address=3D192.16=
8.200.2/24=0AThe system seemed to ignore this configuration, however.=0A=
=0A=09-----------------------------------------From: "Marcus D. Leech vi=
a=0AUSRP-users" =0ATo: usrp-users@lists.ettus.com=0ACc: =0ASent: Tuesday=
 February 9 2021 4:42:34PM=0ASubject: Re: [USRP-users] E310 with v4.0.0.=
0 Image: Configure Static=0AIP=0A=0A On 02/09/2021 04:35 PM, Dennis Tras=
k via USRP-users wrote:=0A  I have re-imaged the SD card for my E310 wit=
h the v4.0.0.0 image. I=0Acannot figure out how to set a static IP addre=
ss on eth0 at boot-up. I=0Acreated an /etc/network/interfaces file that=
 looks like this: =0A  auto eth0 iface eth0 inet static address 192.168.=
200.2 netmask=0A255.255.255.0  =0A I can run the command "ifup eth0" and=
 bring up the interface with the=0Adesired configuration, but it does no=
t initialize when I reboot. =0A The SD image I am using was obtained wit=
h the command:=0Auhd_images_downloader -t e310 -t sg3 =0A I built the uh=
d_images_downloder from source, and it's version is=0A4.0.0.HEAD-0-g90ce=
6062. =0A Dennis =0A=0A _______________________________________________=
=0A USRP-users mailing list=0A "mailto:USRP-users@lists.ettus.com">USRP-=
users@lists.ettus.com=0A "http://lists.ettus.com/mailman/listinfo/usrp-u=
sers_lists.ettus.com">=0A[1] target=3D=0A "_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com=0A It almost certainly is=
 running systemd/networkd=0A=0A So look under /etc/systemd/networkd=0A=
=0A In Linux, there have historically been many different ways to=0Aconf=
igure network devices, and even under systemd, there are a couple=0Aof=
=0A different schemes "out there". I believe that in a UHD 4 system imag=
e=0Aon E310, it is based on Networkd.=0A=0A=0A=0ALinks:=0A------=0A[1] h=
ttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=0A

--=_66fe995a1068df6159b74eceedce8b7a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>Thanks, Marcus.<div><br></div><div>That was actually what I=
 attempted first. As described in the man page (https://www.freedesktop.=
org/software/systemd/man/systemd.network.html) I created eth0.network un=
der /etc/systemd/network/, with these contents:</div><div><br></div><div=
><div>[Match]</div><div>Name=3Deth0</div><div><br></div><div>[Network]</=
div><div>Address=3D192.168.200.2/24</div><div><br></div><div>The system=
 seemed to ignore this configuration, however.</div><div><br></div><div>=
<br></div><br><div class=3D"reply-new-signature"></div><p>--------------=
---------------------------</p>From: "Marcus D. Leech via USRP-users" <u=
srp-users@lists.ettus.com><br>To: usrp-users@lists.ettus.com<br>Cc: <br>=
Sent: Tuesday February 9 2021 4:42:34PM<br>Subject: Re: [USRP-users] E31=
0 with v4.0.0.0 Image: Configure Static IP<br><br>=0A<div class=3D"moz-c=
ite-prefix">On 02/09/2021 04:35 PM, Dennis Trask=0Avia USRP-users wrote:=
<br></div>=0A<blockquote>=0AI have re-imaged the SD card for my E310 wit=
h the v4.0.0.0 image. I=0Acannot figure out how to set a static IP addre=
ss on eth0 at=0Aboot-up. I created an /etc/network/interfaces file that=
 looks like=0Athis:=0A<div><br></div>=0A<div>=0A<div>auto eth0</div>=0A<=
div>iface eth0 inet static</div>=0A<div>address 192.168.200.2</div>=0A<d=
iv>netmask 255.255.255.0</div>=0A</div>=0A<div><br></div>=0A<div>I can r=
un the command "ifup eth0" and bring up the interface=0Awith the desired=
 configuration, but it does not initialize when I=0Areboot.</div>=0A<div=
><br></div>=0A<div>The SD image I am using was obtained with the command=
:=0Auhd_images_downloader -t e310 -t sg3</div>=0A<div><br></div>=0A<div>=
I built the uhd_images_downloder from source, and it's version=0Ais&nbsp=
;4.0.0.HEAD-0-g90ce6062.</div>=0A<div><br></div>=0A<div>Dennis</div>=0A<=
div><br></div>=0A<br><br>=0A____________________________________________=
___<br>=0AUSRP-users mailing list<br><a class=3D"moz-txt-link-abbreviate=
d" href=3D""></a>=0A"mailto:USRP-users@lists.ettus.com"&gt;USRP-users@li=
sts.ettus.com<br><a class=3D"moz-txt-link-freetext" href=3D""></a>=0A"ht=
tp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"&gt;<a=
 href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com"></a>=0Atarget=3D<br>=0A"_blank"&gt;http://lists.ettus.com/mailman/l=
istinfo/usrp-users_lists.ettus.com<br></blockquote>=0AIt almost certainl=
y is running systemd/networkd<br><br>=0ASo look under /etc/systemd/netwo=
rkd<br><br>=0AIn Linux, there have historically been many different ways=
 to=0Aconfigure network devices, and even under systemd, there are a=0Ac=
ouple of<br>=0A&nbsp; different schemes "out there".&nbsp; I believe tha=
t in a UHD=0A4 system image on E310, it is based on Networkd.<br><br><br=
></usrp-users@lists.ettus.com></div></body></html>

--=_66fe995a1068df6159b74eceedce8b7a--



--===============8446221385456271389==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8446221385456271389==--


