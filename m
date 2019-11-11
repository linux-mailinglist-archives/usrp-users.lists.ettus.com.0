Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7FAF7513
	for <lists+usrp-users@lfdr.de>; Mon, 11 Nov 2019 14:35:41 +0100 (CET)
Received: from [::1] (port=60090 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iU9qz-0000tt-NM; Mon, 11 Nov 2019 08:35:37 -0500
Received: from mail-oln040092255023.outbound.protection.outlook.com
 ([40.92.255.23]:32352 helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <snehasish.cse@LIVE.COM>)
 id 1iU9qw-0000ow-L9
 for usrp-users@lists.ettus.com; Mon, 11 Nov 2019 08:35:34 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DcrG8L3zhHZwLDJrexuOBvCsgaOdFPXnZcho/XkBDLKNoxBXpHsA+v6K+mhcwTHFWmX4eabTcw1R+8sNSMAahFULZ0iwbXZ25L8Q1SnZGUfgvm2AEZPKIW+TjfMuzYUKLwsetYf9CmmkuMasDWd0hq9dPL/2aSLaa7Xb3OA9WHaFWeWhRyfLap9waHrEWFKkthvf/pkiJCo9DiwTt7kv2zVwi6sDnz/eGzUKV027Q8PAczze4gi99bIgY2ic9cVSs3zRqhtQEUH6HpwdRfRAKRb0aoiFbfC/wCGvfbk26dDCbaPOzHuq6blTlJvXT81ZtQHCMe2l3BMLYEbhLLIfDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T09hbAFGJ/7KJjv+s+Emk71UVa2HY1uRG3dimoWSwpc=;
 b=lkb61EiVZvS7QVY3mlz7cGzN56CLr9GWPX5kHsiZnyM5VzqiReOfmgM1FhlgG4HPsvY7wjB1HNXpbZC6LLGuoQpVE9q8M2RJFljoWdjMfe4YYnMunTqKIToEDcwKK8b33+SKcYirC4/6xZtkM9KJriVEUPjH1+9y+zgw+JPVFzuvg7agKjH5jtNUuTd3OvFWvyOMccbo5t/Y8gLd5kjpbE1u9GzLCgAj5DedZOLZg7T1ExUvgc1b+5QXKyMaS+6hXg61Ez6IYn3NYWzw7szQ97kxHAGaZXKvwFmVoLK/GWHQMc/NRM1PSDkDKIQR4Hp+HuXYDcm0MEW3KJfl/nkoSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T09hbAFGJ/7KJjv+s+Emk71UVa2HY1uRG3dimoWSwpc=;
 b=b+Y6cLQ/PWKBudW0cyh+xCdill8axDSx9Wp6OxtD28ccLfWAcpgOgyFvcyuGk2ovt/0gSqCblLB38c/urhOr9izCry7uY8MA9/sedB9glk2Y5ZKBXU4WZuKmO2YDPDoeKSUegYVCk3jQ7kkYrWwsITSKo5BggMOsLe/JIDW6XT7Gf+bBDTkAAUdhvusiISisf1lhO9lxB/MROs6SJpy6yEhsvHHT9K9sBOm7Yzwew8KOLT6KYYvLTaj2V586SvYcmv3gZ4eBozuGzKelUKNk/52neo84c8LwNKXvaZzJr2w7SYjqIkRiGmqGjH/S7EVuppIEWI01ME1G+u+GpBnNrQ==
Received: from SG2APC01FT060.eop-APC01.prod.protection.outlook.com
 (10.152.250.60) by SG2APC01HT005.eop-APC01.prod.protection.outlook.com
 (10.152.250.192) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2430.22; Mon, 11 Nov
 2019 13:34:50 +0000
Received: from MAXPR0101MB1612.INDPRD01.PROD.OUTLOOK.COM (10.152.250.51) by
 SG2APC01FT060.mail.protection.outlook.com (10.152.251.153) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.22 via Frontend Transport; Mon, 11 Nov 2019 13:34:50 +0000
Received: from MAXPR0101MB1612.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::a52e:61:f6c4:952c]) by MAXPR0101MB1612.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::a52e:61:f6c4:952c%9]) with mapi id 15.20.2430.027; Mon, 11 Nov 2019
 13:34:50 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Help in frequency shifting with USRP 
Thread-Index: AQHVmJOt/14xEcQ18UeebNtzl53gTA==
Date: Mon, 11 Nov 2019 13:34:50 +0000
Message-ID: <MAXPR0101MB161284FD3EDE2B5F745FE13A88740@MAXPR0101MB1612.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:1058C7DBF43D282154F619BDF04025AE4DA052C18170775A1B560A9CF58FC0E4;
 UpperCasedChecksum:28C64341D55652D16912870B1A3C195CEB1C33CBC9B2ED501FE358FEE281AEC2;
 SizeAsReceived:6700; Count:42
x-tmn: [tlCZrM7cYgZN/UShld39e0J+9RPm5tg6]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 1f0ce59f-7e03-444c-d99f-08d766abed33
x-ms-traffictypediagnostic: SG2APC01HT005:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ReSoTFu2gkJ8LUGVLwZ3iiWjIXmlkWsv2R595qbG0TGb7ymAtZM0HD2Ik+yP4/yrt0vn/860xh9nVd2kiBIKeWW8BcQxJBpRcd5TBinCu0UuFqrt5kzdz3UNpFlgooRz2E0e2WWFPEmi9MzJeeGxZixHmHaMI391PNjYZ8YWqTZ8iciEHC39zu4rj8uh+atf
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f0ce59f-7e03-444c-d99f-08d766abed33
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2019 13:34:50.0573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT005
Subject: [USRP-users] Help in frequency shifting with USRP
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Snehasish Kar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Snehasish Kar <snehasish.cse@LIVE.COM>
Content-Type: multipart/mixed; boundary="===============5573275278688359557=="
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

--===============5573275278688359557==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR0101MB161284FD3EDE2B5F745FE13A88740MAXPR0101MB1612_"

--_000_MAXPR0101MB161284FD3EDE2B5F745FE13A88740MAXPR0101MB1612_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello

I tried capturing GSM 900 band at a sample rate of 25e6 centered at 947.4e6=
 and stored in a file. Then on the captured data I tried shifting 935.2e6 t=
o the center and perform a low pass filter samples out followed by a re-sam=
pler to get 200e3 samples out. But I think the spectrum shifting is not wro=
king as it should be I am following the following link for spectrum shiftin=
g https://dsp.stackexchange.com/a/1993. I am using twinrx with 10gig sfp, U=
HD_3.13.1.0-0-unknown, ubuntu 16.04 and liquid dsp for signal processing.
[https://cdn.sstatic.net/Sites/dsp/img/apple-touch-icon@2.png?v=3De0439310c=
223]<https://dsp.stackexchange.com/a/1993>
fft - How to shift the frequency spectrum? - Signal Processing Stack Exchan=
ge<https://dsp.stackexchange.com/a/1993>
Stack Exchange network consists of 175 Q&A communities including Stack Over=
flow, the largest, most trusted online community for developers to learn, s=
hare their knowledge, and build their careers.. Visit Stack Exchange
dsp.stackexchange.com
Please let me know, where I might be going wrong.

BR
Snehasish

--_000_MAXPR0101MB161284FD3EDE2B5F745FE13A88740MAXPR0101MB1612_
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
Hello <br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I tried capturing GSM 900 band at a sample rate of 25e6 centered at 947.4e6=
 and stored in a file. Then on the captured data I tried shifting 935.2e6 t=
o the center and perform a low pass filter samples out followed by a re-sam=
pler to get 200e3 samples out. But
 I think the spectrum shifting is not wroking as it should be I am followin=
g the following link for spectrum shifting
<a href=3D"https://dsp.stackexchange.com/a/1993" id=3D"LPlnk489535">https:/=
/dsp.stackexchange.com/a/1993</a>. I am using twinrx with 10gig sfp, UHD_3.=
13.1.0-0-unknown, ubuntu 16.04 and liquid dsp for signal processing.<br>
</div>
<div id=3D"LPBorder_GTaHR0cHM6Ly9kc3Auc3RhY2tleGNoYW5nZS5jb20vYS8xOTkz" cla=
ss=3D"LPBorder863734" style=3D"width: 100%; margin-top: 16px; margin-bottom=
: 16px; position: relative; max-width: 800px; min-width: 424px;" contentedi=
table=3D"false">
<table id=3D"LPContainer863734" role=3D"presentation" style=3D"padding: 12p=
x 36px 12px 12px; width: 100%; border-width: 1px; border-style: solid; bord=
er-color: rgb(200, 200, 200); border-radius: 2px;">
<tbody>
<tr style=3D"border-spacing: 0px;" valign=3D"top">
<td>
<div id=3D"LPImageContainer863734" style=3D"position: relative; margin-righ=
t: 12px; height: 160px; overflow: hidden;">
<a target=3D"_blank" id=3D"LPImageAnchor863734" href=3D"https://dsp.stackex=
change.com/a/1993"><img id=3D"LPThumbnailImageId863734" alt=3D"" style=3D"d=
isplay: block;" width=3D"160" height=3D"160" src=3D"https://cdn.sstatic.net=
/Sites/dsp/img/apple-touch-icon@2.png?v=3De0439310c223"></a></div>
</td>
<td style=3D"width: 100%;">
<div id=3D"LPTitle863734" style=3D"font-size: 21px; font-weight: 300; margi=
n-right: 8px; font-family: &quot;wf_segoe-ui_light&quot;, &quot;Segoe UI Li=
ght&quot;, &quot;Segoe WP Light&quot;, &quot;Segoe UI&quot;, &quot;Segoe WP=
&quot;, Tahoma, Arial, sans-serif; margin-bottom: 12px;">
<a target=3D"_blank" id=3D"LPUrlAnchor863734" href=3D"https://dsp.stackexch=
ange.com/a/1993" style=3D"text-decoration: none; color:var(--themePrimary);=
">fft - How to shift the frequency spectrum? - Signal Processing Stack Exch=
ange</a></div>
<div id=3D"LPDescription863734" style=3D"font-size: 14px; max-height: 100px=
; color: rgb(102, 102, 102); font-family: &quot;wf_segoe-ui_normal&quot;, &=
quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; margi=
n-bottom: 12px; margin-right: 8px; overflow: hidden;">
Stack Exchange network consists of 175 Q&amp;A communities including Stack =
Overflow, the largest, most trusted online community for developers to lear=
n, share their knowledge, and build their careers.. Visit Stack Exchange</d=
iv>
<div id=3D"LPMetadata863734" style=3D"font-size: 14px; font-weight: 400; co=
lor: rgb(166, 166, 166); font-family: &quot;wf_segoe-ui_normal&quot;, &quot=
;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif;">
dsp.stackexchange.com</div>
</td>
</tr>
</tbody>
</table>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Please let me know, where I might be going wrong.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
BR</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Snehasish<br>
</div>
</body>
</html>

--_000_MAXPR0101MB161284FD3EDE2B5F745FE13A88740MAXPR0101MB1612_--


--===============5573275278688359557==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5573275278688359557==--

