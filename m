Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBC7344E04
	for <lists+usrp-users@lfdr.de>; Mon, 22 Mar 2021 19:02:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D8E6D384365
	for <lists+usrp-users@lfdr.de>; Mon, 22 Mar 2021 14:02:38 -0400 (EDT)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10olkn2063.outbound.protection.outlook.com [40.92.40.63])
	by mm2.emwd.com (Postfix) with ESMTPS id 20A35383F11
	for <USRP-users@lists.ettus.com>; Mon, 22 Mar 2021 14:01:37 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=btNUZ4Q/AwWi/KdU0sxN44crXYYMVg2JeFY9trBFuV3chzhV1tcnyOYTk8f/fQX/exhOR5ap9RWCE/4jg1syIpP2Xa5g+ud2yBYBYfXjRkJdsrU5CWwrRW2JZdBRJks6ia76+cIFAO6/Yt7hAsFdYIMVBIxYF08jBkWMT5S3edskf1MJPELbAyByAdiC1VyFT8xVHkWWDzkBhwUMV+SGgTrLxdQdSAb9z3oI6KqReB4zNlP8HNJ1wTP32N3sLGIP+KvwiSa3JLg52cRXi7wTUmIplxQHykat9PEfIHrDuYEMmHFUDgEOL9T9yewhWvoQKixxXS09euOg1zQJMGWxdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DoGPJcNBbZo5Gr6yViark+NbI2nJI26qW0NENur0udo=;
 b=XbWXh1IwP8lT3IAm6il7C9GPN9G5Utf2OhGfuejzSg/JnLmSn66CLJeglFdklWPN8xxastnZbzofhIcq/FyiXqu8S/FR5PX0YrHGdp8IxIRpTQ84xdu0oTzGickR5NA4jN90/H7ixlMStjN06Lk6tYKYt4vC59aHfIH1c2qH8Sk4iA0/nuMqM40Elux7dX2ov7V4OVdQH7TrTJ9vRpI7FqOPfYWuERzNPm9ih2AMHqE9FUNTcFAed0NrZ4ws2DDZL/eHApW9JOxaFRR9wQbuEB9fH9lQ9kc+bbz4RxThB8qvkwdjEOpCaJicbvHgXnDoC1a0Mz7I4DKf5WpxHo1vHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DoGPJcNBbZo5Gr6yViark+NbI2nJI26qW0NENur0udo=;
 b=h0abM+EJTHNFaNsxZGzaioPacgTBsAKxTPddZkkcT3C90JJTemZL21eY/K7CHduyorDMYuZ2UyO1jcElwSXSMYWRDklyJ8G4aNq3X0bKGc+eXCQhG1Q4R3dZcYKasUdrdENH4FcrvEny/lgRR/DCo3XouxIRWLmHEeStkBjX4s+fio49m3iuBLUK/OQfwfAc/Lc2KkPiCEIvBlfk8R6XP4BXsjQx+0IUEmzD1DHCgDiSJwiuUutYVL7c26z8quYk+hkbDRdYa4L6cjPkHsiOJ5iUAjTN8T9IhM/2+gZMwUxMhOwqY0pzP6QsGSHniwnZ37UpFd7u8I+U5+DjwYUiBw==
Received: from DM6NAM10FT060.eop-nam10.prod.protection.outlook.com
 (2a01:111:e400:7e86::40) by
 DM6NAM10HT090.eop-nam10.prod.protection.outlook.com (2a01:111:e400:7e86::351)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Mon, 22 Mar
 2021 18:01:36 +0000
Received: from BN6PR19MB3138.namprd19.prod.outlook.com
 (2a01:111:e400:7e86::4c) by DM6NAM10FT060.mail.protection.outlook.com
 (2a01:111:e400:7e86::107) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18 via Frontend
 Transport; Mon, 22 Mar 2021 18:01:36 +0000
Received: from BN6PR19MB3138.namprd19.prod.outlook.com
 ([fe80::4c49:8b50:ac2c:9385]) by BN6PR19MB3138.namprd19.prod.outlook.com
 ([fe80::4c49:8b50:ac2c:9385%4]) with mapi id 15.20.3955.027; Mon, 22 Mar 2021
 18:01:36 +0000
From: Jeff S <e070832@hotmail.com>
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: Upgrade to 3.8 Python Issue?
Thread-Index: AQHXH0Pr48uw6nIdqUeHwu8v5NEe8A==
Date: Mon, 22 Mar 2021 18:01:36 +0000
Message-ID: 
 <BN6PR19MB3138C2038DE0F7F15CD1A266A4659@BN6PR19MB3138.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:BB1F0D5B4C7DD57BB70C991A899FD682F7FF14E0467006DBEA5FF388E60A6505;UpperCasedChecksum:090CC1211424F89F4D43246ACED9BC8F8964B8B551594EE456E59F9697F563C5;SizeAsReceived:6625;Count:41
x-tmn: [JtsqnjTpCRZgJ8R2rws6NIPb56ulvHB5]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: ad747319-7fbb-476c-01c3-08d8ed5c8902
x-ms-traffictypediagnostic: DM6NAM10HT090:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 h6j9GqmQOUamYa8+qCT4nN1R8ntiyAcBK3J2Q9dG/wON9rgl161Qmf0xuc5VBTrXBNchaa7vf94afWlE5wB3wAMSZl3fG64mpMV+QqPnow/Qz0Qxt6tRWyw1vxUtNYqnEYKRVrJa3Xr9dIdp8iU4D6xO+0H5wbWOFcpNk1MYkCefywcad4+IHtyq98YijR/ZnvceONZHamUGSdF6G31VHn4g2Nzny0TAm69oMs5udZXQR+G1OufeRb9baY0HFkZuMXbBWU7e+X5QvdvTq+PMArMP0bHyqfmjh2AKcFhDrgnW3vwdNUa7JWhkqbkt7xjI/8CU2vfH4K0uaOmhHBTRh11CsIi4NJN/HCzo30NuCGhdDGMFKh6eKlG+JscJw5OJSCBE5FHcKoyzochaAdp8OA==
x-ms-exchange-antispam-messagedata: 
 30bjfZfrawSCGtyHmjn5VSJvkZJwUT1bttQXcu83BuLoao0dgiJSBMpPR/tTy3pxA1rxTzDqXgqJLc3R1dslm0Dpt8zlwM97CB5eYzOcjSHfgtELNomBbGjU5fuir2uBezBi5odOIp6JRHFeD77n0w==
x-ms-exchange-transport-forked: True
Content-Type: multipart/mixed;
	boundary="_004_BN6PR19MB3138C2038DE0F7F15CD1A266A4659BN6PR19MB3138namp_"
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM10FT060.eop-nam10.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: ad747319-7fbb-476c-01c3-08d8ed5c8902
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2021 18:01:36.3120
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM10HT090
Message-ID-Hash: XDTBLQX2R6G7DIG4YLYJ3QR4RVPGFUZR
X-Message-ID-Hash: XDTBLQX2R6G7DIG4YLYJ3QR4RVPGFUZR
X-MailFrom: e070832@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Upgrade to 3.8 Python Issue?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YUZSDMASOCUBJ5RN4ZRSCEXP33SQZEJD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--_004_BN6PR19MB3138C2038DE0F7F15CD1A266A4659BN6PR19MB3138namp_
Content-Type: multipart/alternative;
	boundary="_000_BN6PR19MB3138C2038DE0F7F15CD1A266A4659BN6PR19MB3138namp_"

--_000_BN6PR19MB3138C2038DE0F7F15CD1A266A4659BN6PR19MB3138namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi!

I'm finally getting around to getting some PCs upgraded from 3.7 to 3.8.  I=
 did the installs to a local prefix and everything seems to be running.  Wh=
at I'm seeing, however, is when I have a ZMQ Pull Source added to my graph =
(picture of the simple graph attached), I'm getting some startup warnings a=
 whole bunch of:


$ gnuradio-companion
<<< Welcome to GNU Radio Companion v3.8.2.0-88-g38f5ab7b >>>

Block paths:
/home/sdr/sdr/x310/installs/share/gnuradio/grc/blocks

Loading: "/home/sdr/jas/flow/untitled.grc"
/usr/lib/python3.6/importlib/_bootstrap.py:219: ImportWarning: can't resolv=
e package from __spec__ or __package__, falling back on __name__ and __path=
__
  return f(*args, **kwds)

I've tried looking through the list to see what could be the issue.  I've c=
hecked my PYTHONPATH and LD_LOAD_PATH and I think they seem right (unless I=
'm not seeing the obvious):


$ echo $PYTHONPATH
/home/sdr/sdr/x310/installs/lib/python3/dist-packages:/home/sdr/sdr/x310/in=
stalls/lib/python3.6/site-packages:/usr/local/lib/python3/dist-packages:usr=
/local/lib/python2.7/site-packages:
$ echo $LD_LIBRARY_PATH
/home/sdr/sdr/x310/installs/lib:/user/local/lib:
$ gnuradio-config-info --prefix
/home/sdr/sdr/x310/installs
$ find /home/sdr/sdr/x310/installs -name gnuradio | grep "packages"
/home/sdr/sdr/x310/installs/lib/python3/dist-packages/gnuradio

Anyone see the obvious thing that I'm missing?

Thanks and regards,
Jeff

--_000_BN6PR19MB3138C2038DE0F7F15CD1A266A4659BN6PR19MB3138namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Hi!</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I'm finally getting around to getting some PCs upgraded from 3.7 to 3.8.&nb=
sp; I did the installs to a local prefix and everything seems to be running=
.&nbsp; What I'm seeing, however, is when I have a ZMQ Pull Source added to=
 my graph (picture of the simple graph attached),
 I'm getting some startup warnings a whole bunch of:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<blockquote style=3D"margin-top:0;margin-bottom:0">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
$ gnuradio-companion
<div>&lt;&lt;&lt; Welcome to GNU Radio Companion v3.8.2.0-88-g38f5ab7b &gt;=
&gt;&gt;</div>
<div><br>
</div>
<div>Block paths:</div>
<div>/home/sdr/sdr/x310/installs/share/gnuradio/grc/blocks</div>
<div><br>
</div>
<div><b>Loading: &quot;/home/sdr/jas/flow/untitled.grc&quot;</b></div>
<div><b>/usr/lib/python3.6/importlib/_bootstrap.py:219: ImportWarning: can'=
t resolve package from __spec__ or __package__, falling back on __name__ an=
d __path__</b></div>
<b>&nbsp; return f(*args, **kwds)</b><br>
</div>
</blockquote>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I've tried looking through the list to see what could be the issue.&nbsp; I=
've checked my PYTHONPATH and LD_LOAD_PATH and I think they seem right (unl=
ess I'm not seeing the obvious):</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<blockquote style=3D"margin-top:0;margin-bottom:0">
<pre>$ echo $PYTHONPATH=0A=
/home/sdr/sdr/x310/installs/lib/python3/dist-packages:/home/sdr/sdr/x310/in=
stalls/lib/python3.6/site-packages:/usr/local/lib/python3/dist-packages:usr=
/local/lib/python2.7/site-packages:=0A=
$ echo $LD_LIBRARY_PATH=0A=
/home/sdr/sdr/x310/installs/lib:/user/local/lib:=0A=
$ gnuradio-config-info --prefix=0A=
/home/sdr/sdr/x310/installs=0A=
$ find /home/sdr/sdr/x310/installs -name gnuradio | grep &quot;packages&quo=
t;=0A=
/home/sdr/sdr/x310/installs/lib/python3/dist-<font color=3D"#EF2929"><b>pac=
kages</b></font>/gnuradio</pre>
</blockquote>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Anyone see the obvious thing that I'm missing?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thanks and regards,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
</body>
</html>

--_000_BN6PR19MB3138C2038DE0F7F15CD1A266A4659BN6PR19MB3138namp_--

--_004_BN6PR19MB3138C2038DE0F7F15CD1A266A4659BN6PR19MB3138namp_
Content-Type: image/png; name="zmq.png"
Content-Description: zmq.png
Content-Disposition: attachment; filename="zmq.png"; size=24699;
	creation-date="Mon, 22 Mar 2021 17:54:43 GMT";
	modification-date="Mon, 22 Mar 2021 17:55:01 GMT"
Content-Transfer-Encoding: base64

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
QC1elk2+AAAAAElFTkSuQmCC

--_004_BN6PR19MB3138C2038DE0F7F15CD1A266A4659BN6PR19MB3138namp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_004_BN6PR19MB3138C2038DE0F7F15CD1A266A4659BN6PR19MB3138namp_--
