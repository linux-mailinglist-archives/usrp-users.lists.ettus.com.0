Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2B5A21F49
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jan 2025 15:36:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 15781386256
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jan 2025 09:36:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738161366; bh=AOuoKr0RsR3tSTfZVN+NyoqbAdciMREvpxibV99uXpE=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=uKNNf1odR4kYBi4DaA4ltuAV5JEP5+kdQiIR6TyRQqQQ+WMj3x3Ys9qMSlCoiV48O
	 tBBQoZHim+/EitVo+zwMiqi/4+A9QvVDyZBenLYtDABBobVM8DBN6d9WQWAuxVdIzK
	 +wvxiy3a4jnxXm87QIqtKBvhQk+RFjTHWJgHYfZN9NkoOC5XZ/b0FxcCt6ATRc22Oa
	 FH7GAaWIW2AKgh4Q2O9VNlX4V9PX43d3Yikh3Y91zvSg7rS2Cd+myphxPqqhhw5Qgr
	 cdPE1BSI8zhxn1icyqUdKE5+r3N9+9y9Zagrhl55tRIz5xd/FRa1AujR9sRZKkj7av
	 S4kjiPDmLCQ7g==
Received: from ironboyv.h-da.de (ironboyv.h-da.de [141.100.10.230])
	by mm2.emwd.com (Postfix) with ESMTPS id D82E3385F11
	for <usrp-users@lists.ettus.com>; Wed, 29 Jan 2025 09:35:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=h-da.de header.i=@h-da.de header.b="pXEMGykz";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=h-da.de; i=@h-da.de; l=512; q=dns/txt; s=s1;
  t=1738161354; x=1769697354;
  h=from:to:subject:date:message-id:mime-version;
  bh=DXmnGpZqsN//xE+D9GMEwjSTyiy+IFWeNJYTY2W4NYE=;
  b=pXEMGykz0nxs8GzM8oHpEy3R8XXPcwcN8GUy0U3abFhlBAoartVPnWZc
   JxClFPps45qPQk+C2JzrjzC0b7HdsgxnbyRyXGQWqQfpy02Yc7Yfy+Oe/
   J587HLUbZT6DbNmIgc5+2/spCqvxElfE3c4Iu/6l+WEAvbkCSK9KfV9/4
   8=;
X-CSE-ConnectionGUID: Dlk4jl8ETTC1JLZ2PHyxbA==
X-CSE-MsgGUID: RBX0A2tVSwmTMFKeWPHDlw==
X-IPAS-Result: =?us-ascii?q?A2EsAwCkO5pncsMBZI1agQmBU4FBhAGWKZdEhlaBfg8BA?=
 =?us-ascii?q?Q8BRAQBAYUHingnNAkOAQIEAQEBAQMCAwEBAQEBAQEBAQEBCwEBBgEBAQEBA?=
 =?us-ascii?q?QYHAhABgQyFNUcMhxBkAX8nBBuFFw07tjeBATOBAYR72yWBSIhOASqBMoQPO?=
 =?us-ascii?q?IVBgQpDgRWBfH2FaoYMBIIvgUSCY4EMhlSFeYRBhGeLRSyBG0szLAEPRhMXC?=
 =?us-ascii?q?wcFgXEDKjYVHIFJRDc5gg5pSToCDQI1gh4kWIIrhFyERYRRhVuCFIRHhDIdQ?=
 =?us-ascii?q?AMLB2Y9NxQbBgIBgTWbeAoQhCiBbUQbDyEHNaQRgXuMXpURAwQDgjWBZgWhS?=
 =?us-ascii?q?S4Xl1KTAZh8IqM5D4UZAgQCBAUCF4FnghZxgzdRFwIPjioDFs1DgTQCBwsBA?=
 =?us-ascii?q?QMJkEUBgRwBAQ?=
IronPort-Data: A9a23:7J+QVK38QT3++sMRLfbD5dZxkn2cJEfYwER7XKvMYLTBsI5bpzxVy
 mZKUGzXP62JNmWmeYx/a9yw9kNSvJLcx4BqQANv3Hw8FHgiRegppTi6wuYcGwvIc6UvmWo+t
 512hv/ocp9sFhcwgT/0a+O69RGQ7YnRGPykTraCYn0pLeNdYH9JoQp5nOIkiZJfj9G8Agec0
 fv/uMS31GWNglaYD0pNg069gEMy1BjNkGtwUmwWPZhjoFLYnn8JO5MTTYnZB2f4WIRdAtmhT
 O/FyryjlkuBl/v6Ior4+lpTWhRiro/6ZWBiuFIPM0SRqkAqShgJ70oOHKF0hXG7K9m+t4sZJ
 N1l7fRcQOqyV0HGsLx1vxJwS0mSMUDakVNuzLfWXcG7liX7n3XQL/pGIEU1YY8cqstLPUoX1
 9gqcggtfwCJrrfjqF67YrEEasULKcD1MZkesXImzXTVBLAiRpvKR80m5/cBgG5235gWW6+YP
 ptEAdZsRE2ojxlnNlASCZQ/n6Goi3j5YRVY7V6c46Y6i4TW5FIpjeW0boa9ltqif+9lxm/Cu
 lz94GHFJz85OeOn6RaB7Sf57gPItXmiA9lNT+XQGuRRqECI3HRWFQYbT0CTpfiillX4Vs5DN
 ldS8S0rxZXe72SuR8fwRRyzoziFohIVHdoVH+R85AzlJrfoDxixKmwHEjxFOPEaiORvZxgYj
 GepjsPjLGk62FGKck61+rCRpDK0HCEaK24eeCMJJTfpBfG/+OnfaTqTFr5e/L6JszHjJd3n6
 xynxBXSap0WhNAGzaSw/hbGnz6l4JiMQgdz6gi/soOZAuFROdXNi2+AsAazARN8wGCxFQPpU
 J8swZj20Qz2JcvR/BFhuc1UdF1T296LMSfHnXlkFIQ7+jKm9haLJN8LsGkudR4wbZ9aKVcFh
 XM/XysNvPe/21P2McdKj36ZW6zGMIC+SIm+CJg4kPISOvCdizNrDAk0PBXLgDu1+KTduaE4M
 peAesaxCXtSBa19ySGqTusBuYLHNQhjrV4/savTkU/9uZLAPyH9dFvwGALSBgzPxPrY+F2Nm
 zueXuPWoyhivBrWOHCOqddJcg5UdxDWx/ne8qRqSwJKGSI+cElJNhMb6epJl1BN90iNqtr1w
 w==
IronPort-HdrOrdr: A9a23:p84lHqn3OoCl6LdGuC8uDFUd373pDfIX3DAbv31ZSRFFG/Fwz/
 re/sjzpiWE7Qr5OUtQ4OxoV5PhfZqxz/NICOoqTM+ftWvdyQiVxehZhOOIqQEIcBeQygcp78
 Zdmt9FZuEYY2IXsS+w2njdLz9p+qjhzEmHv5a580tQ
X-Talos-CUID: =?us-ascii?q?9a23=3A59KAQmrU0pQeePw49Zmko4TmUewhcSHfyCf9H3O?=
 =?us-ascii?q?TUERNeuetaU6A8ooxxg=3D=3D?=
X-Talos-MUID: 9a23:dMxPbArIzeTQAroEca8ezwtIBJ9BubiQM18IrbAomMS7DQxcPyjI2Q==
X-IronPort-Anti-Spam-Filtered: true
Received: from maverick.itda.h-da.de (HELO maverick.h-da.local) ([141.100.1.195])
  by ironboyv.h-da.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jan 2025 15:35:52 +0100
Received: from maverick.h-da.local (141.100.1.195) by maverick.h-da.local
 (141.100.1.195) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Wed, 29 Jan
 2025 15:35:51 +0100
Received: from maverick.h-da.local ([fe80::1726:ede5:c5da:108c]) by
 maverick.h-da.local ([fe80::1726:ede5:c5da:108c%7]) with mapi id
 15.02.1544.011; Wed, 29 Jan 2025 15:35:51 +0100
From: "Heinz, Dominik" <dominik.heinz@h-da.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Connection to X310 fails but pinging works?
Thread-Index: AQHbclsYxu72L11M90yDK46nVwcMNg==
Date: Wed, 29 Jan 2025 14:35:51 +0000
Message-ID: <48f69cc0cee24dd48f6441f4d72e4c0b@h-da.de>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [141.100.104.19]
MIME-Version: 1.0
Message-ID-Hash: XRLKXE3ANCFVWSIK6GJIQAZOFZYC4IW7
X-Message-ID-Hash: XRLKXE3ANCFVWSIK6GJIQAZOFZYC4IW7
X-MailFrom: dominik.heinz@h-da.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Connection to X310 fails but pinging works?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XRLKXE3ANCFVWSIK6GJIQAZOFZYC4IW7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5408909458272672997=="

--===============5408909458272672997==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_48f69cc0cee24dd48f6441f4d72e4c0bhdade_"

--_000_48f69cc0cee24dd48f6441f4d72e4c0bhdade_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have a system running Ubuntu 22.04, and a Ettus X310 is connected to said=
 system via two SFP+ cables.
The latest uhd drivers are installed on the system.
The latest XG firmware image has been flashed onto the X310.

The main issue is that I can't seem to interact with the device, despite ha=
ving the correct IP configurations set.
I assume it is a network configuration issue of some kind.

A few important notes for context:
- The two SFP+ interfaces show up fine when running ip a\
- I did set the MTU to 9000
- I configured the IP address for both interfaces by manually adding an eth=
ernet configuration via Ubuntu's network settings
- I am successfully able to ping the device via 192.168.30.2 and via 192.16=
8.40.2
- I am NOT ABLE to interact with the X310. Both, uhd_find_devices and uhd_u=
srp_probe mention no device connected.
- The green lights for the links on the back of the SDR light up (aka link =
is present)

I don't understand what I am missing to be able to interact with the device=
.
See the output below.


gnb@xgoss-host:~$ ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group d=
efault qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: enp77s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state=
 UP group default qlen 1000
    link/ether 9c:6b:00:56:a3:a5 brd ff:ff:ff:ff:ff:ff
3: enp1s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq state UP g=
roup default qlen 1000
    link/ether f8:f2:1e:9b:f1:60 brd ff:ff:ff:ff:ff:ff
    inet 192.168.30.2/24 brd 192.168.30.255 scope global noprefixroute enp1=
s0f0
       valid_lft forever preferred_lft forever
    inet6 fe80::a1a4:f18c:ce2c:bbf1/64 scope link noprefixroute
       valid_lft forever preferred_lft forever
4: enp1s0f1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq state UP g=
roup default qlen 1000
    link/ether f8:f2:1e:9b:f1:61 brd ff:ff:ff:ff:ff:ff
    inet 192.168.40.2/24 brd 192.168.40.255 scope global noprefixroute enp1=
s0f1
       valid_lft forever preferred_lft forever
    inet6 fe80::f167:b030:ddfa:a249/64 scope link noprefixroute
       valid_lft forever preferred_lft forever
5: ogstun: <POINTOPOINT,MULTICAST,NOARP,UP,LOWER_UP> mtu 1400 qdisc fq_code=
l state UP group default qlen 500


gnb@xgoss-host:~$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.7.0.0-0ubun=
tu1~jammy1
Error: LookupError: KeyError: No devices found for ----->
Empty Device Address
gnb@xgoss-host:~$ uhd_find_devices
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.7.0.0-0ubun=
tu1~jammy1
No UHD Devices Found
gnb@xgoss-host:~$ uhd_usrp_probe --args addr=3D192.168.30.2
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.7.0.0-0ubun=
tu1~jammy1
Error: LookupError: KeyError: No devices found for ----->
Device Address:
    addr: 192.168.30.2

gnb@xgoss-host:~$ uhd_usrp_probe --args addr=3D192.168.40.2
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.7.0.0-0ubun=
tu1~jammy1
Error: LookupError: KeyError: No devices found for ----->
Device Address:
    addr: 192.168.40.2

gnb@xgoss-host:~$ ping 192.168.30.2 -c 1
PING 192.168.30.2 (192.168.30.2) 56(84) bytes of data.
64 bytes from 192.168.30.2: icmp_seq=3D1 ttl=3D64 time=3D0.039 ms

--- 192.168.30.2 ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev =3D 0.039/0.039/0.039/0.000 ms
gnb@xgoss-host:~$ ping 192.168.40.2 -c 1
PING 192.168.40.2 (192.168.40.2) 56(84) bytes of data.
64 bytes from 192.168.40.2: icmp_seq=3D1 ttl=3D64 time=3D0.066 ms

--- 192.168.40.2 ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev =3D 0.066/0.066/0.066/0.000 ms
gnb@xgoss-host:~$



I would like some information how I can interface with the X310.
I already checked the official documentation, but I don't see what I am mis=
sing/doing wrong.



--_000_48f69cc0cee24dd48f6441f4d72e4c0bhdade_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p></p>
<div>I have a system running Ubuntu 22.04, and a Ettus X310 is connected to=
 said system via two SFP&#43; cables.</div>
<div>The latest uhd drivers are installed on the system.</div>
<div>The latest XG firmware image has been flashed onto the X310.</div>
<div><br>
</div>
<div>The main issue is that I can't seem to interact with the device, despi=
te having the correct IP configurations set.</div>
<div>I assume it is a network configuration issue of some kind.</div>
<div><br>
</div>
<div>A few important notes for context:</div>
<div>- The two SFP&#43; interfaces show up fine when running ip a\</div>
<div>- I did set the MTU to 9000</div>
<div>- I configured the IP address for both interfaces by manually adding a=
n ethernet configuration via Ubuntu's network settings</div>
<div>- I am successfully able to ping the device via 192.168.30.2 and via 1=
92.168.40.2</div>
<div>- I am NOT ABLE to interact with the X310. Both, uhd_find_devices and =
uhd_usrp_probe mention no device connected.</div>
<div>- The green lights for the links on the back of the SDR light up (aka =
link is present)</div>
<div><br>
</div>
<div>I don't understand what I am missing to be able to interact with the d=
evice.</div>
<div>See the output below.</div>
<div><br>
</div>
<div><br>
</div>
<div>gnb@xgoss-host:~$ ip a</div>
<div>1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc noqueue state UNKN=
OWN group default qlen 1000</div>
<div>&nbsp; &nbsp; link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00</d=
iv>
<div>&nbsp; &nbsp; inet 127.0.0.1/8 scope host lo</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;valid_lft forever preferred_lft forever</di=
v>
<div>&nbsp; &nbsp; inet6 ::1/128 scope host&nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;valid_lft forever preferred_lft forever</di=
v>
<div>2: enp77s0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc fq_=
codel state UP group default qlen 1000</div>
<div>&nbsp; &nbsp; link/ether 9c:6b:00:56:a3:a5 brd ff:ff:ff:ff:ff:ff</div>
<div>3: enp1s0f0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000 qdisc mq=
 state UP group default qlen 1000</div>
<div>&nbsp; &nbsp; link/ether f8:f2:1e:9b:f1:60 brd ff:ff:ff:ff:ff:ff</div>
<div>&nbsp; &nbsp; inet 192.168.30.2/24 brd 192.168.30.255 scope global nop=
refixroute enp1s0f0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;valid_lft forever preferred_lft forever</di=
v>
<div>&nbsp; &nbsp; inet6 fe80::a1a4:f18c:ce2c:bbf1/64 scope link noprefixro=
ute&nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;valid_lft forever preferred_lft forever</di=
v>
<div>4: enp1s0f1: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000 qdisc mq=
 state UP group default qlen 1000</div>
<div>&nbsp; &nbsp; link/ether f8:f2:1e:9b:f1:61 brd ff:ff:ff:ff:ff:ff</div>
<div>&nbsp; &nbsp; inet 192.168.40.2/24 brd 192.168.40.255 scope global nop=
refixroute enp1s0f1</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;valid_lft forever preferred_lft forever</di=
v>
<div>&nbsp; &nbsp; inet6 fe80::f167:b030:ddfa:a249/64 scope link noprefixro=
ute&nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;valid_lft forever preferred_lft forever</di=
v>
<div>5: ogstun: &lt;POINTOPOINT,MULTICAST,NOARP,UP,LOWER_UP&gt; mtu 1400 qd=
isc fq_codel state UP group default qlen 500</div>
<div><br>
</div>
<div><br>
</div>
<div>gnb@xgoss-host:~$ uhd_usrp_probe</div>
<div>[INFO] [UHD] linux; GNU C&#43;&#43; version 11.4.0; Boost_107400; UHD_=
4.7.0.0-0ubuntu1~jammy1</div>
<div>Error: LookupError: KeyError: No devices found for -----&gt;</div>
<div>Empty Device Address</div>
<div>gnb@xgoss-host:~$ uhd_find_devices&nbsp;</div>
<div>[INFO] [UHD] linux; GNU C&#43;&#43; version 11.4.0; Boost_107400; UHD_=
4.7.0.0-0ubuntu1~jammy1</div>
<div>No UHD Devices Found</div>
<div>gnb@xgoss-host:~$ uhd_usrp_probe --args addr=3D192.168.30.2</div>
<div>[INFO] [UHD] linux; GNU C&#43;&#43; version 11.4.0; Boost_107400; UHD_=
4.7.0.0-0ubuntu1~jammy1</div>
<div>Error: LookupError: KeyError: No devices found for -----&gt;</div>
<div>Device Address:</div>
<div>&nbsp; &nbsp; addr: 192.168.30.2</div>
<div><br>
</div>
<div>gnb@xgoss-host:~$ uhd_usrp_probe --args addr=3D192.168.40.2</div>
<div>[INFO] [UHD] linux; GNU C&#43;&#43; version 11.4.0; Boost_107400; UHD_=
4.7.0.0-0ubuntu1~jammy1</div>
<div>Error: LookupError: KeyError: No devices found for -----&gt;</div>
<div>Device Address:</div>
<div>&nbsp; &nbsp; addr: 192.168.40.2</div>
<div><br>
</div>
<div>gnb@xgoss-host:~$ ping 192.168.30.2 -c 1</div>
<div>PING 192.168.30.2 (192.168.30.2) 56(84) bytes of data.</div>
<div>64 bytes from 192.168.30.2: icmp_seq=3D1 ttl=3D64 time=3D0.039 ms</div=
>
<div><br>
</div>
<div>--- 192.168.30.2 ping statistics ---</div>
<div>1 packets transmitted, 1 received, 0% packet loss, time 0ms</div>
<div>rtt min/avg/max/mdev =3D 0.039/0.039/0.039/0.000 ms</div>
<div>gnb@xgoss-host:~$ ping 192.168.40.2 -c 1</div>
<div>PING 192.168.40.2 (192.168.40.2) 56(84) bytes of data.</div>
<div>64 bytes from 192.168.40.2: icmp_seq=3D1 ttl=3D64 time=3D0.066 ms</div=
>
<div><br>
</div>
<div>--- 192.168.40.2 ping statistics ---</div>
<div>1 packets transmitted, 1 received, 0% packet loss, time 0ms</div>
<div>rtt min/avg/max/mdev =3D 0.066/0.066/0.066/0.000 ms</div>
<div>gnb@xgoss-host:~$&nbsp;</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>I would like some information how I can interface with the X310.</div>
<div>I already checked the official documentation, but I don't see what I a=
m missing/doing wrong.</div>
<div><br>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_48f69cc0cee24dd48f6441f4d72e4c0bhdade_--

--===============5408909458272672997==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5408909458272672997==--
