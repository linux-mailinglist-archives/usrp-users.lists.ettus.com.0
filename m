Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E179C11C517
	for <lists+usrp-users@lfdr.de>; Thu, 12 Dec 2019 05:57:13 +0100 (CET)
Received: from [::1] (port=50986 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ifGXG-0003d8-Ld; Wed, 11 Dec 2019 23:57:10 -0500
Received: from mail-eopbgr1280113.outbound.protection.outlook.com
 ([40.107.128.113]:43280 helo=KOR01-PS2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <ksshin@postech.ac.kr>)
 id 1ifGXD-0003ZS-1y
 for usrp-users@lists.ettus.com; Wed, 11 Dec 2019 23:57:07 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OvN2c9MTnWayAQpmT+oL6Vt9BhHI3xP4HiuHguhtu3lXaRb2tYy2M9TorWJL+buu21p12clxw2RUbF9hTqpfzgLb6n7sRp6fi+i0xBdcV/4n7VdiItMAveGh7jcsIwmw6/FjSW/4yXJ+Nbdxoj6shPjOkcTzMu5y7zyEct3p9DKJz+YsQUMXkTE1YLmGisyjaoFs0Hl0rE10nbnOBom+MwWkm8e1/Vt1MDnDgaNCgI2oQ4Lzurl1Z7QBasmEPOIHPy0FDFRjrrfLX4s9rsYtqRFFIdPf0L4l1MBMU1gv8/DyhVTpL16lpGCHtLURdMoCwtn9Ekh/yosxWpp7tIlZUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oMv12mfaTvzwRJ003290tF2za0kb7I40qx+p5l2IczM=;
 b=KxgI2FcsNK6JAv2Jy6mtpLIeFU9q2YLy74mLOfOeWnEyRdBLoiR6Mkj9DgX9Udgv4eHVQ9geTENJWgJTPC6JkXWJPCoOlv4rY8cpcTuzZzMX3C9OSGTPFmABYnDlaAXTZUTnAhcjkCAx9K7pEcIWDxPr9JZxRtxO3p2L6zc9hM/CB2Xg1IWk0/0ydXJ6nSM5KFvN/Vn5dz7iaxckdcpREo7xjuG3WwCTAZ8/Eisiwp27hcQKIJ0JZpKHnsMilgDonyWV/sgrYTNIDXw37FRzRWSO1uVDb2rHAlPS87vcXXfOvwl6pQ0XxFGOE9DARHebaURBcKTb55bIfWFgfNzw9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=postech.ac.kr; dmarc=pass action=none
 header.from=postech.ac.kr; dkim=pass header.d=postech.ac.kr; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=postechackr.onmicrosoft.com; s=selector2-postechackr-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oMv12mfaTvzwRJ003290tF2za0kb7I40qx+p5l2IczM=;
 b=xy6pKjjIt4selyKCxqLMnFCh/PTjIQsc/HGypGDoJ3LIoHm7Okn4rJCKb4GteyzXrrIrjiA0MjzldzplgRIzla4of5qbmHY2Oerh7LfWSB6I0ectTEnkSfDWsvG07GbIh0Q9Wi5rukHS57fT9Hiqcso9L0SvkilMXqlFAJHm/nw=
Received: from SLXP216MB0719.KORP216.PROD.OUTLOOK.COM (10.174.36.143) by
 SLXP216MB0080.KORP216.PROD.OUTLOOK.COM (10.174.36.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Thu, 12 Dec 2019 04:56:23 +0000
Received: from SLXP216MB0719.KORP216.PROD.OUTLOOK.COM
 ([fe80::da0:734c:c3f5:97ee]) by SLXP216MB0719.KORP216.PROD.OUTLOOK.COM
 ([fe80::da0:734c:c3f5:97ee%12]) with mapi id 15.20.2538.016; Thu, 12 Dec 2019
 04:56:23 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Thibaud Vial
 <thibaud@rtone.fr>
Thread-Topic: [USRP-users] Noise vs Sample rate
Thread-Index: AQHVrEri7Trw0xnnbUWuvnuhFP/5g6e19oRF
Date: Thu, 12 Dec 2019 04:56:23 +0000
Message-ID: <SLXP216MB0719ECE4E1DD922089FABF4F93550@SLXP216MB0719.KORP216.PROD.OUTLOOK.COM>
References: <CAJ=oPRMkHeRWJCnYByVZaNmiQjj3x8jH59sLM7iVkz7StwwA9g@mail.gmail.com>
In-Reply-To: <CAJ=oPRMkHeRWJCnYByVZaNmiQjj3x8jH59sLM7iVkz7StwwA9g@mail.gmail.com>
Accept-Language: ko-KR, en-US
Content-Language: ko-KR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ksshin@postech.ac.kr; 
x-originating-ip: [141.223.88.211]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 79ba4459-ca1b-4f79-4c58-08d77ebfa301
x-ms-traffictypediagnostic: SLXP216MB0080:
x-microsoft-antispam-prvs: <SLXP216MB0080536602D972B364D4B1EA93550@SLXP216MB0080.KORP216.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(39850400004)(366004)(136003)(346002)(396003)(40764003)(199004)(189003)(8676002)(2906002)(110136005)(186003)(19627405001)(478600001)(66946007)(76116006)(786003)(66556008)(71200400001)(66446008)(316002)(66476007)(64756008)(33656002)(81156014)(9686003)(26005)(81166006)(8936002)(55016002)(86362001)(52536014)(6506007)(5660300002)(7696005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SLXP216MB0080;
 H:SLXP216MB0719.KORP216.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: postech.ac.kr does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TsTPDyo2JVMCaib/rkmTTMiROT22vx6u7shud/tz4hkYszBFVNE22i4NmCXQKeuSLSWl9Gdas3eKZcLp2v3sGaAXuY0BJcGw9/aZCzu9CzYZETKyMRaaL6EHQSv49xVqRCkfkSqhqf4n51y7gmmBlG8BUe2K5i4cx5JOc5fxM69lArdaKc7vnGu7zqfgPZ8ODsMQjADqhRnBzwgbQ6ge+Gp7yxyzcSkOdw7k4vjDF5/PoryZwrV2T/iD+peg435JBP/nRnG77FcL0958s/AL5kfIpa6wAgmyWOFUChs9xuubhMmoa6dDSYJP2Zhe6sapB2puqIegTCI7EoWPtqJzMsIPlTx55em7L0a0TmCCBQiysOewh0XHz/gd9JxF6D+y9N587KxwCF9MZZl3ZkqqMJYhYnN8fY61STk1DXYPwrIFsEADOOFJwKIFpPBtam+2Pa4ORnXrv45QpcymNzi2KXzQjBXtIyy6igCV9EseInO9GvxoPLrv6cFkMIn4YyQQ7DaweM3Oy1GlnD5AKrAiLdZ7FyXiiQ5PpI8PhyC0XeQ=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: postech.ac.kr
X-MS-Exchange-CrossTenant-Network-Message-Id: 79ba4459-ca1b-4f79-4c58-08d77ebfa301
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 04:56:23.4049 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bff3e98c-5cca-455c-adc8-5fd24fc9908d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: duYLei9OTVn4G9NEeA54x0j+1hNjGfAgWe5DZ3dM/+P0oSpOBkwoKDjkNY0hlYN6SsvcrVHDxMYtceZF3U1wyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SLXP216MB0080
Subject: Re: [USRP-users] Noise vs Sample rate
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Kyeong Su Shin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Kyeong Su Shin <ksshin@postech.ac.kr>
Content-Type: multipart/mixed; boundary="===============0674079199177764840=="
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

--===============0674079199177764840==
Content-Language: ko-KR
Content-Type: multipart/alternative;
	boundary="_000_SLXP216MB0719ECE4E1DD922089FABF4F93550SLXP216MB0719KORP_"

--_000_SLXP216MB0719ECE4E1DD922089FABF4F93550SLXP216MB0719KORP_
Content-Type: text/plain; charset="ks_c_5601-1987"
Content-Transfer-Encoding: base64

SGVsbG8gVGhpYmF1ZCwNCg0KVGhpbmsgdGhpcyBpbiB0aGUgZnJlcXVlbmN5IGRvbWFpbi4NCg0K
QSB0eXBpY2FsIGRlY2ltYXRvciAxLiBhcHBsaWVzIGEgbG93LXBhc3MgZmlsdGVyIHRvIHRoZSBp
bmNvbWluZyBzYW1wbGVzLCBhbmQgdGhlbiAyLiBkb3duc2FtcGxlcyB0aGUgZGF0YSBieSBleHRy
YWN0aW5nIGV2ZXJ5IG4gdGggc2FtcGxlLiBUaGUgbG93LXBhc3MgZmlsdGVyIGRvZXMgbm90IG9u
bHkgZmlsdGVyIG91dCBub24tZGVzaXJlZCBzaWduYWxzLCBidXQgYWxzbyBmaWx0ZXJzIG91dCBu
b2lzZS4gU28sIHlvdSBtdXN0IG9ic2VydmUgcmVkdWNlZCBub2lzZS4NCg0KSW4geW91ciBjYXNl
LCB0aGUgdGhlcm1hbCBub2lzZSBiZWNvbWVzIC0xNzQgKyAxMCpsb2coNDAwa0h6KSB3aGVuIHlv
dSBkZWNpbWF0ZSB0aGUgc2lnbmFsLiBZb3VyIGFjdHVhbCBub2lzZSBmbG9vciB3b3VsZCBiZSBz
b21ld2hhdCBoaWdoZXIgdGhhbiB0aGUgdGhlcm1hbCBub2lzZSAoYmVjYXVzZSByZWFsLXdvcmxk
IGRldmljZXMgbmV2ZXIgYWNoaWV2ZSB0aGUgdGhlcm1hbCBub2lzZSBib3VuZCksIGhvd2V2ZXIs
IGFuZCB0aGUgYWN0dWFsIG5vaXNlIGxldmVsIHdvdWxkIGRlcGVuZCBvbiB2YXJpb3VzIGZhY3Rv
cnMsIGluY2x1ZGluZyB0aGUgaGFyZHdhcmUgaXRzZWxmIGFuZCB0aGUgbG93LXBhc3MgZmlsdGVy
IGRlc2lnbiBvZiB0aGUgZGVjaW1hdG9yLg0KDQpSZWdhcmRzLA0KS3llb25nIFN1IFNoaW4NCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQq6uLO9ILvntvc6IFRoaWJhdWQgVmlhbCB2
aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+ILTrvcUgVVNSUC11c2Vy
cyA8dXNycC11c2Vycy1ib3VuY2VzQGxpc3RzLmV0dHVzLmNvbT4NCrq4s70gs6/CpTogMjAxObPi
IDEyv/kgN8DPIMXkv+TAzyC/wMD8IDEyOjM0DQq53rTCILvntvc6IHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4NCsGmuPE6IFtVU1JQLXVzZXJz
XSBOb2lzZSB2cyBTYW1wbGUgcmF0ZQ0KDQpIaSwNCg0KSSdtIGN1cnJlbnRseSB3b3JraW5nIG9u
IFVTUlAgc2Vuc2l0aXZpdHkgYW5kIG5vaXNlLg0KTm9pc2UgcG93ZXIgZGVwZW5kcyBvbiByZWNl
aXZlciBiYW5kd2lkdGggKGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL0pvaG5zb24lRTIl
ODAlOTNOeXF1aXN0X25vaXNlI05vaXNlX3Bvd2VyX2luX2RlY2liZWxzKS4gQnV0IHdoYXQgaWYg
Og0KLSBJIHNhbXBsZSBhIHNpZ25hbCBhdCA0TUh6IHdpdGggVVNSUCArIEdOVVJhZGlvIChUaGVy
bWFsIG5vaXNlIHBvd2VyID0gLTE3NCArIDEwKmxvZyg0TUh6KSApDQotIEkgYWRkIGEgZGVjaW1h
dGlvbiBieSAxMCBpbiBHTlVSYWRpbw0KV2hhdCBpcyB0aGUgbmV3IHRoZXJtYWwgbm9pc2UgcG93
ZXIgPyBUaGUgc2FtZSwgb3IgLTE3NCArIDEwKmxvZyg0MDBrSHopID8NCkkndmUgbWFkZSBzb21l
IHRlc3RzIHdpdGggVVNSUCArIEdOVVJhZGlvLCBhbmQgdGhlIG5vaXNlIHNlZW1zIHRvIGJlIGxv
d2VyIGFmdGVyIGRlY2ltYXRpb24sIGJ1dCBub3Qgb2YgMjAgZEIgKG1vcmUgb2YgMTAgZEIpLg0K
DQpUaGFua3MgZm9yIHlvdXIgaGVscCwNCg==

--_000_SLXP216MB0719ECE4E1DD922089FABF4F93550SLXP216MB0719KORP_
Content-Type: text/html; charset="ks_c_5601-1987"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dks_c_5601=
-1987">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hello Thibaud,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Think this in the frequency domain.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
A typical decimator 1. applies a low-pass filter to the incoming samples, a=
nd then 2. downsamples the data by extracting every n th sample. The low-pa=
ss filter does not only filter out non-desired signals, but also filters ou=
t noise. So, you must observe reduced
 noise.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
In your case, the thermal noise becomes -174 &#43; 10*log(400kHz) when you =
decimate the signal. Your actual noise floor would be somewhat higher than =
the thermal noise (because real-world devices never achieve the thermal noi=
se bound), however, and the actual noise
 level would depend on various factors, including the hardware itself and t=
he low-pass filter design of the decimator.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Kyeong Su Shin<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=BA=B8=B3=BD =BB=E7=B6=F7:</b> =
Thibaud Vial via USRP-users &lt;usrp-users@lists.ettus.com&gt; =B4=EB=BD=C5=
 USRP-users &lt;usrp-users-bounces@lists.ettus.com&gt;<br>
<b>=BA=B8=B3=BD =B3=AF=C2=A5:</b> 2019=B3=E2 12=BF=F9 7=C0=CF =C5=E4=BF=E4=
=C0=CF =BF=C0=C0=FC 12:34<br>
<b>=B9=DE=B4=C2 =BB=E7=B6=F7:</b> usrp-users@lists.ettus.com &lt;usrp-users=
@lists.ettus.com&gt;<br>
<b>=C1=A6=B8=F1:</b> [USRP-users] Noise vs Sample rate</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>Hi,</div>
<div><br>
</div>
<div>I'm currently working on USRP sensitivity and noise.</div>
<div>Noise power depends on receiver bandwidth (<a href=3D"https://en.wikip=
edia.org/wiki/Johnson%E2%80%93Nyquist_noise#Noise_power_in_decibels">https:=
//en.wikipedia.org/wiki/Johnson%E2%80%93Nyquist_noise#Noise_power_in_decibe=
ls</a>). But what if :</div>
<div>- I sample a signal at 4MHz with USRP &#43; GNURadio (Thermal noise po=
wer =3D -174 &#43; 10*log(4MHz) )</div>
<div>- I add a decimation by 10 in GNURadio</div>
<div>What is the new thermal noise power ? The same, or -174 &#43; 10*log(4=
00kHz) ?</div>
<div>I've made some tests with USRP &#43; GNURadio, and the noise seems to =
be lower after decimation, but not of 20 dB (more of 10 dB).</div>
<div><br>
</div>
<div>Thanks for your help,</div>
</div>
</div>
</body>
</html>

--_000_SLXP216MB0719ECE4E1DD922089FABF4F93550SLXP216MB0719KORP_--


--===============0674079199177764840==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0674079199177764840==--

