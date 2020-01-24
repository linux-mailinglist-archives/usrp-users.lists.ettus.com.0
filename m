Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF9D1476EE
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2020 03:25:23 +0100 (CET)
Received: from [::1] (port=34452 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iuoen-0005Xo-U7; Thu, 23 Jan 2020 21:25:13 -0500
Received: from mail-bn8nam11on2131.outbound.protection.outlook.com
 ([40.107.236.131]:50977 helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <ilbeeman@wpi.edu>) id 1iuoej-0005RM-Vj
 for usrp-users@lists.ettus.com; Thu, 23 Jan 2020 21:25:10 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M6ozXV9W3bqQOD3EK3kvACm3AfxA/29cUl8XLI/2jWBA+v2IqqqQp7zNCNTOXvrzq0eEQ2L4kHYmNqoOb8Gt0hK4WefpPRLxlyV3W3LDictivfYQv4hW+4e68GLOa6k+aLtiKeZRmaONrKfdN/QRi95JyrJ6lx8fFyjCd8hgH+1vgZSRzHyHjRzhpCAHGNplEXkyXI2xWM+eUeAP2DdFx7PECMiyv2SBrZx8ER7Bbm/2iKrs2+lK35B+giy1r7upTBfkxZ3ueuKlgLdMiELmYBP3FMAk9WwxBtNTaTJy0m33nbQ13byJg92I0VIlzskXIHKGEOIywwM3G9hBtfxtXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p7P30v0ECUxAlxJByHIU4mJzzSijDw+NlTZ+L8yp26Q=;
 b=RR2eS46xrR14A5w6TPmku9YpcHdu93BnHF8LE8YNmUzwHcGC2cAw8MjeP37OvIe2MN5fjWXeyP+xpu2veH2hGqXp08ZQKEOUGtjz09KmjgloUApiAQzOJcD4hi7cjphvk0YFLZwGaYmMJQ3IQ/YzyNtfZQIpg40sM/dJgtgohjU2yd3OmmaWQaE85qU9DIaJtriEHFgrjvfWkSs2wT7HlpxIS9kgMvhgBvLSZ+ocNfwugMvWuYyHpTcsUQ4vxaF6IitOOhB+A161zQmfpopXV0FpaaC+cOmq5oJs9XY1+NubqxF82haSdSbJoXIeFcnhVZ1SFSFvP/0olHztHfwlbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wpi.edu; dmarc=pass action=none header.from=wpi.edu; dkim=pass
 header.d=wpi.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wpi.edu; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p7P30v0ECUxAlxJByHIU4mJzzSijDw+NlTZ+L8yp26Q=;
 b=GPBrjA2KbXSToiJ47JwOwpnwdJWKtMeAr1qrnwGRn3G3aj1GN94OKcab1DtCRZz5d8qwAVr2heOv3conjU6JGehRkYZ9nNpyMr3PCGVf75yjO7cMjCsJkSlYtcPDrfdXi0bJTyCCpm0KoPUEz0GcUd503urfUmsjqejOngk5HA8=
Received: from BY5PR01MB5761.prod.exchangelabs.com (52.132.255.83) by
 BY5PR01MB5777.prod.exchangelabs.com (52.132.253.216) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18; Fri, 24 Jan 2020 02:24:26 +0000
Received: from BY5PR01MB5761.prod.exchangelabs.com ([fe80::9176:296a:ba4:149])
 by BY5PR01MB5761.prod.exchangelabs.com ([fe80::9176:296a:ba4:149%7])
 with mapi id 15.20.2644.028; Fri, 24 Jan 2020 02:24:26 +0000
To: "Beeman, Isaac L. via USRP-users" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] E312 Multi-channel issues
Thread-Index: AQHV0X3lIoH4lD4RrkaYW758decsIaf4rdqL
Date: Fri, 24 Jan 2020 02:24:25 +0000
Message-ID: <BY5PR01MB57611F3E97967B0C129388BDCB0E0@BY5PR01MB5761.prod.exchangelabs.com>
References: <BY5PR01MB57614F4C24F534483D32F35DCB0C0@BY5PR01MB5761.prod.exchangelabs.com>
In-Reply-To: <BY5PR01MB57614F4C24F534483D32F35DCB0C0@BY5PR01MB5761.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ilbeeman@wpi.edu; 
x-originating-ip: [130.215.222.168]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5cf26520-fd14-4e94-b65a-08d7a074888a
x-ms-traffictypediagnostic: BY5PR01MB5777:
x-microsoft-antispam-prvs: <BY5PR01MB5777BBE8CFB70408E67F4CB1CB0E0@BY5PR01MB5777.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02929ECF07
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(396003)(136003)(39860400002)(366004)(346002)(189003)(199004)(6506007)(53546011)(71200400001)(76116006)(2906002)(66476007)(316002)(66446008)(64756008)(66556008)(66946007)(33656002)(9686003)(21615005)(5660300002)(55016002)(786003)(18265965003)(966005)(81166006)(8676002)(81156014)(52536014)(7696005)(26005)(45080400002)(6916009)(8936002)(86362001)(186003)(19627405001)(478600001)(75432002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BY5PR01MB5777;
 H:BY5PR01MB5761.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: wpi.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kRSt9Ym5VATxzYEZsEXG825Zc+bp9azKKJp05QwmkhdE9HoJU1IzWPtxK4p7ir+rznSc9pKUa286yFb1o+gekb9gw4E+0/JkQ2BEnOKf8liC+W0PrJWGDiJegvjPDE79CQLQvPnuV1tvIutQzz2UgceUsHrROdHj24rX7CH+XBBvc4TNhe+etzjxnUNUzUPUKt/5CR126eYHtOX9XwzOqCxtvTJLXRfeOf5aruHjr5zj83Lpn001xVYb5ztAesEQFssOvbKqXZnjJnwmBUG5l8YwikIc8weUDrg1OJoP6CQweHkpr00rg+AKKLEHL9RMbfjwebDrWEEmCIO3+ktyubHseIaq/DWc2tpAo1w2Lhqdeh7eIM3GX7SrNf2f96LKd9Gw+B2sp7q5OMGqPr+D9nuRF70TaPioWzlkeZI4sxAR52XRyWlvUghhAxUR2sMCgkJfnVCF84oZ6mUaG6NEepkhydTjwF+RHFPLHfFLEy55kdOKDyny9+1T3ZirgZ9y58vef5e9C4UeO2l5N2t5hmaFvSBDMdP+BCoBVIA5zKo=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wpi.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cf26520-fd14-4e94-b65a-08d7a074888a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2020 02:24:26.0728 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 589c76f5-ca15-41f9-884b-55ec15a0672a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9lCtH7WRhaHF4u0ngXW9fByg9mOrONnUnLmPYOeNdQ4uasu1wxTPWcIP27LQ1PtAkgVSlRPpy59IXlqPgDGbXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR01MB5777
Subject: Re: [USRP-users] E312 Multi-channel issues
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
From: "Beeman, Isaac L. via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Beeman, Isaac L." <ilbeeman@wpi.edu>
Content-Type: multipart/mixed; boundary="===============1312469672943872155=="
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

--===============1312469672943872155==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY5PR01MB57611F3E97967B0C129388BDCB0E0BY5PR01MB5761prod_"

--_000_BY5PR01MB57611F3E97967B0C129388BDCB0E0BY5PR01MB5761prod_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

Sorry for the double message in the same thread, but I thought I would add =
some of the things I discovered since yesterday in case anyone takes a look=
 at this thread.

First, it appears that I am not the only person to have this issue: http://=
lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-December/061209.h=
tml It looks like a user on the N310 has a similar issue with multi-channel=
 capturing. That led me to believe that I was setting the gain wrong.

Second, it turns out I was setting the gain wrong. When I rewrote my code (=
featured in the pastebin link from my last post), I forgot to use
_usrp->set_rx_gain(rx_gain, channel_nums[ch]);
instead of
_usrp->set_rx_gain(rx_gain);

Even weirder is that in my old code I didn't make this mistake and somehow =
got a very similar problem with multichannel gain. I even went as far as to=
 setting the gain on each channel individually to try and reduce errors fro=
m trying to do too many things with my refactored code. I'll go back throug=
h my old code tomorrow to see if the same gain issue still exists there too=
.

But the big takeaway is that I solved the gain issue from my previous post =
and require no further help on this issue.

Isaac Beeman

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Beeman, =
Isaac L. via USRP-users <usrp-users@lists.ettus.com>
Sent: Wednesday, January 22, 2020 7:19 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [EXT] [USRP-users] E312 Multi-channel issues

Hello Group,

I am using the E312 to receive on both channels so I can use a dual antenna=
 system to determine the direction the received signal is coming from. I ha=
ve gotten the GPS, internal IMU working, and single channel RX working. The=
 issue is, when I try to receive on both channels simultaneously, one of th=
e receivers (at random?) is measuring about 20db below the other. Here is a=
 photo of what I mean (https://nam03.safelinks.protection.outlook.com/?url=
=3Dhttps%3A%2F%2Fimgur.com%2FEtzLjPO&amp;data=3D02%7C01%7Cilbeeman%40wpi.ed=
u%7C67d0b1bf68e547772c0008d79f9a0be3%7C589c76f5ca1541f9884b55ec15a0672a%7C0=
%7C0%7C637153356297733935&amp;sdata=3DyvQJv03jeiJ0QVI%2BSyIqV4oKSLbOo0gPIdy=
EZQlKD38%3D&amp;reserved=3D0 shows RX-B being the strong signal) and here i=
s a few lines of data from a different test (showing RX-A as the strong sig=
nal):

sample#,i1,q1,i2,q2
151,0.372131,0.705048,0.001709,0.003204
152,0.376495,0.702332,0.001862,0.003296
153,0.378906,0.699188,0.001770,0.003204
154,0.387146,0.695160,0.001892,0.003265
155,0.391083,0.692047,0.001740,0.003235
156,0.394806,0.689056,0.001740,0.003204
157,0.399719,0.685974,0.001984,0.003143
158,0.400391,0.683411,0.001984,0.003082
159,0.405457,0.679901,0.001892,0.003082
160,0.408569,0.676788,0.002045,0.003113
161,0.412811,0.673248,0.001984,0.003052
162,0.419006,0.669006,0.002106,0.003143
163,0.420746,0.666077,0.001953,0.003204
164,0.425323,0.662445,0.001892,0.003082
165,0.429535,0.659180,0.002075,0.003082

I have tried everything I can think of: swap out antennas, swap out USRPs, =
try a wired test, and try different versions of UHD; but found no solution.=
 I even tried directly adjusting for the gain difference, but that just led=
 to a channel with significantly more noise than the other.

All my code is based off of sample code like rx_multi_samples.cpp and rx_sa=
mples_to_file.cpp, so I know that there aren't any glaring issues with my c=
ode. I also know that it isn't a direct hardware issue because both RX-A an=
d RX-B receive fine on their own and seem to be randomly selected to be the=
 channel receiving at full power when doing multi-channel.

Am I doing something completely wrong? I can't think of anything else to tr=
y. I was hoping to test this out in the next couple weeks, so any help woul=
d be greatly appreciated.

Here is a pastebin of my simplified code: https://nam03.safelinks.protectio=
n.outlook.com/?url=3Dhttps%3A%2F%2Fpastebin.com%2FMNmV0CVM&amp;data=3D02%7C=
01%7Cilbeeman%40wpi.edu%7C67d0b1bf68e547772c0008d79f9a0be3%7C589c76f5ca1541=
f9884b55ec15a0672a%7C0%7C0%7C637153356297733935&amp;sdata=3Ds%2BDDjN%2B9wOj=
3ajYekHjociRSWFURPnrIGJ7%2FPNGOzb4%3D&amp;reserved=3D0

Isaac Beeman

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
https://nam03.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Flists.et=
tus.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com&amp;data=3D02%7C0=
1%7Cilbeeman%40wpi.edu%7C67d0b1bf68e547772c0008d79f9a0be3%7C589c76f5ca1541f=
9884b55ec15a0672a%7C0%7C0%7C637153356297733935&amp;sdata=3DRiiTyqNXXNSyaW0D=
h9EhtSPVkM5QLq%2FwVWZn8D5BbXc%3D&amp;reserved=3D0

--_000_BY5PR01MB57611F3E97967B0C129388BDCB0E0BY5PR01MB5761prod_
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
<div id=3D"Signature"><span style=3D"font-family: &quot;segoe ui&quot;, &qu=
ot;segoe ui web (west european)&quot;, &quot;segoe ui&quot;, -apple-system,=
 blinkmacsystemfont, &quot;roboto&quot;, &quot;helvetica neue&quot;, sans-s=
erif; font-size: 11pt; color: rgb(50, 49, 48); background-color: rgba(0, 0,=
 0, 0);">Hello
 everyone,</span></div>
<div><span style=3D"font-family: &quot;segoe ui&quot;, &quot;segoe ui web (=
west european)&quot;, &quot;segoe ui&quot;, -apple-system, blinkmacsystemfo=
nt, &quot;roboto&quot;, &quot;helvetica neue&quot;, sans-serif; font-size: =
11pt; color: rgb(50, 49, 48); background-color: rgba(0, 0, 0, 0);"><br>
</span></div>
<div><span style=3D"font-family: &quot;segoe ui&quot;, &quot;segoe ui web (=
west european)&quot;, &quot;segoe ui&quot;, -apple-system, blinkmacsystemfo=
nt, &quot;roboto&quot;, &quot;helvetica neue&quot;, sans-serif; font-size: =
11pt; color: rgb(50, 49, 48); background-color: rgba(0, 0, 0, 0);">Sorry fo=
r the double
 message in the same thread, but I thought I would add some of the things I=
 discovered since yesterday in case anyone takes a look at this thread.<br>
</span></div>
<div><span style=3D"font-family: &quot;segoe ui&quot;, &quot;segoe ui web (=
west european)&quot;, &quot;segoe ui&quot;, -apple-system, blinkmacsystemfo=
nt, &quot;roboto&quot;, &quot;helvetica neue&quot;, sans-serif; font-size: =
11pt; color: rgb(50, 49, 48); background-color: rgba(0, 0, 0, 0);"><br>
</span></div>
<div><span style=3D"font-family: &quot;segoe ui&quot;, &quot;segoe ui web (=
west european)&quot;, &quot;segoe ui&quot;, -apple-system, blinkmacsystemfo=
nt, &quot;roboto&quot;, &quot;helvetica neue&quot;, sans-serif; font-size: =
11pt; color: rgb(50, 49, 48); background-color: rgba(0, 0, 0, 0);">First, i=
t appears
 that I am not the only person to have this issue: <a href=3D"http://lists.=
ettus.com/pipermail/usrp-users_lists.ettus.com/2019-December/061209.html" i=
d=3D"LPlnk356764">
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-December/0=
61209.html</a> It looks like a user on the N310 has a similar issue with mu=
lti-channel capturing. That led me to believe that I was setting the gain w=
rong.
<br>
</span></div>
<div><span style=3D"font-family: &quot;segoe ui&quot;, &quot;segoe ui web (=
west european)&quot;, &quot;segoe ui&quot;, -apple-system, blinkmacsystemfo=
nt, &quot;roboto&quot;, &quot;helvetica neue&quot;, sans-serif; font-size: =
11pt; color: rgb(50, 49, 48); background-color: rgba(0, 0, 0, 0);"><br>
</span></div>
<div><span style=3D"font-family: &quot;segoe ui&quot;, &quot;segoe ui web (=
west european)&quot;, &quot;segoe ui&quot;, -apple-system, blinkmacsystemfo=
nt, &quot;roboto&quot;, &quot;helvetica neue&quot;, sans-serif; font-size: =
11pt; color: rgb(50, 49, 48); background-color: rgba(0, 0, 0, 0);">Second, =
it turns
 out I was setting the gain wrong. When I rewrote my code (featured in the =
pastebin link from my last post), I forgot to use&nbsp;
<br>
</span></div>
<div><span style=3D"font-family: &quot;segoe ui&quot;, &quot;segoe ui web (=
west european)&quot;, &quot;segoe ui&quot;, -apple-system, blinkmacsystemfo=
nt, &quot;roboto&quot;, &quot;helvetica neue&quot;, sans-serif; font-size: =
11pt; color: rgb(50, 49, 48); background-color: rgba(0, 0, 0, 0);">_usrp-&g=
t;set_rx_gain(rx_gain,
 channel_nums[ch]);<br>
</span></div>
<div><span style=3D"font-family: &quot;segoe ui&quot;, &quot;segoe ui web (=
west european)&quot;, &quot;segoe ui&quot;, -apple-system, blinkmacsystemfo=
nt, &quot;roboto&quot;, &quot;helvetica neue&quot;, sans-serif; font-size: =
11pt; color: rgb(50, 49, 48); background-color: rgba(0, 0, 0, 0);">instead =
of
<br>
</span></div>
<div><span style=3D"font-family: &quot;segoe ui&quot;, &quot;segoe ui web (=
west european)&quot;, &quot;segoe ui&quot;, -apple-system, blinkmacsystemfo=
nt, &quot;roboto&quot;, &quot;helvetica neue&quot;, sans-serif; font-size: =
11pt; color: rgb(50, 49, 48); background-color: rgba(0, 0, 0, 0);"><span st=
yle=3D"font-size: 11pt; background-color: rgba(0, 0, 0, 0)">_usrp-&gt;set_r=
x_gain(rx_gain);</span><br>
</span></div>
<div><span style=3D"font-family: &quot;segoe ui&quot;, &quot;segoe ui web (=
west european)&quot;, &quot;segoe ui&quot;, -apple-system, blinkmacsystemfo=
nt, &quot;roboto&quot;, &quot;helvetica neue&quot;, sans-serif; font-size: =
11pt; color: rgb(50, 49, 48); background-color: rgba(0, 0, 0, 0);"><br>
</span></div>
<div><span style=3D"font-family: &quot;segoe ui&quot;, &quot;segoe ui web (=
west european)&quot;, &quot;segoe ui&quot;, -apple-system, blinkmacsystemfo=
nt, &quot;roboto&quot;, &quot;helvetica neue&quot;, sans-serif; font-size: =
11pt; color: rgb(50, 49, 48); background-color: rgba(0, 0, 0, 0);">Even wei=
rder is that
 in my old code I didn't make this mistake and somehow got a very similar p=
roblem with multichannel gain. I even went as far as to setting the gain on=
 each channel individually to try and reduce errors from trying to do too m=
any things with my refactored code.
 I'll go back through my old code tomorrow to see if the same gain issue st=
ill exists there too.</span></div>
<div><span style=3D"font-family: &quot;segoe ui&quot;, &quot;segoe ui web (=
west european)&quot;, &quot;segoe ui&quot;, -apple-system, blinkmacsystemfo=
nt, &quot;roboto&quot;, &quot;helvetica neue&quot;, sans-serif; font-size: =
11pt; color: rgb(50, 49, 48); background-color: rgba(0, 0, 0, 0);"><br>
</span></div>
<div><span style=3D"font-family: &quot;segoe ui&quot;, &quot;segoe ui web (=
west european)&quot;, &quot;segoe ui&quot;, -apple-system, blinkmacsystemfo=
nt, &quot;roboto&quot;, &quot;helvetica neue&quot;, sans-serif; font-size: =
11pt; color: rgb(50, 49, 48); background-color: rgba(0, 0, 0, 0);">But the =
big takeaway
 is that I solved the gain issue from my previous post and require no furth=
er help on this issue.</span></div>
<div><span style=3D"font-family: &quot;segoe ui&quot;, &quot;segoe ui web (=
west european)&quot;, &quot;segoe ui&quot;, -apple-system, blinkmacsystemfo=
nt, &quot;roboto&quot;, &quot;helvetica neue&quot;, sans-serif; font-size: =
11pt; color: rgb(50, 49, 48); background-color: rgba(0, 0, 0, 0);"><br>
</span></div>
<div><span style=3D"font-family: &quot;segoe ui&quot;, &quot;segoe ui web (=
west european)&quot;, &quot;segoe ui&quot;, -apple-system, blinkmacsystemfo=
nt, &quot;roboto&quot;, &quot;helvetica neue&quot;, sans-serif; font-size: =
11pt; color: rgb(50, 49, 48); background-color: rgba(0, 0, 0, 0);"></span><=
font size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12p=
t"><font face=3D"Calibri,sans-serif" color=3D"black"><span style=3D"font-fa=
mily: &quot;segoe ui&quot;, &quot;segoe ui web (west european)&quot;, &quot=
;segoe ui&quot;, -apple-system, blinkmacsystemfont, &quot;roboto&quot;, &qu=
ot;helvetica neue&quot;, sans-serif; font-size: 11pt; color: rgb(50, 49, 48=
); background-color: rgba(0, 0, 0, 0);">Isaac
</span></font></span></font><font size=3D"3" face=3D"Times New Roman,serif"=
><span style=3D"font-size:12pt"><font face=3D"Calibri,sans-serif" color=3D"=
black"><span style=3D"font-family: &quot;segoe ui&quot;, &quot;segoe ui web=
 (west european)&quot;, &quot;segoe ui&quot;, -apple-system, blinkmacsystem=
font, &quot;roboto&quot;, &quot;helvetica neue&quot;, sans-serif; font-size=
: 11pt; color: rgb(50, 49, 48); background-color: rgba(0, 0, 0, 0);">Beeman=
</span></font></span></font><u><span style=3D"font-size: 11pt;"></span></u>=
<font size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12=
pt"></span></font><span id=3D"ms-rterangepaste-end"></span>
<u><span style=3D"font-family: &quot;segoe ui&quot;, &quot;segoe ui web (we=
st european)&quot;, &quot;segoe ui&quot;, -apple-system, blinkmacsystemfont=
, &quot;roboto&quot;, &quot;helvetica neue&quot;, sans-serif; font-size: 11=
pt; color: rgb(50, 49, 48); background-color: rgba(0, 0, 0, 0);"></span></u=
>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top: 0px; margin-bottom: 0px;"></p>
</div>
</div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp=
-users-bounces@lists.ettus.com&gt; on behalf of Beeman, Isaac L. via USRP-u=
sers &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Wednesday, January 22, 2020 7:19 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [EXT] [USRP-users] E312 Multi-channel issues</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">Hello Group,<br>
<br>
I am using the E312 to receive on both channels so I can use a dual antenna=
 system to determine the direction the received signal is coming from. I ha=
ve gotten the GPS, internal IMU working, and single channel RX working. The=
 issue is, when I try to receive
 on both channels simultaneously, one of the receivers (at random?) is meas=
uring about 20db below the other. Here is a photo of what I mean (<a href=
=3D""></a>https://nam03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F=
%2Fimgur.com%2FEtzLjPO&amp;amp;data=3D02%7C01%7Cilbeeman%40wpi.edu%7C67d0b1=
bf68e547772c0008d79f9a0be3%7C589c76f5ca1541f9884b55ec15a0672a%7C0%7C0%7C637=
153356297733935&amp;amp;sdata=3DyvQJv03jeiJ0QVI%2BSyIqV4oKSLbOo0gPIdyEZQlKD=
38%3D&amp;amp;reserved=3D0
 shows RX-B being the strong signal) and here is a few lines of data from a=
 different test (showing RX-A as the strong signal):<br>
<br>
sample#,i1,q1,i2,q2<br>
151,0.372131,0.705048,0.001709,0.003204<br>
152,0.376495,0.702332,0.001862,0.003296<br>
153,0.378906,0.699188,0.001770,0.003204<br>
154,0.387146,0.695160,0.001892,0.003265<br>
155,0.391083,0.692047,0.001740,0.003235<br>
156,0.394806,0.689056,0.001740,0.003204<br>
157,0.399719,0.685974,0.001984,0.003143<br>
158,0.400391,0.683411,0.001984,0.003082<br>
159,0.405457,0.679901,0.001892,0.003082<br>
160,0.408569,0.676788,0.002045,0.003113<br>
161,0.412811,0.673248,0.001984,0.003052<br>
162,0.419006,0.669006,0.002106,0.003143<br>
163,0.420746,0.666077,0.001953,0.003204<br>
164,0.425323,0.662445,0.001892,0.003082<br>
165,0.429535,0.659180,0.002075,0.003082<br>
<br>
I have tried everything I can think of: swap out antennas, swap out USRPs, =
try a wired test, and try different versions of UHD; but found no solution.=
 I even tried directly adjusting for the gain difference, but that just led=
 to a channel with significantly
 more noise than the other. <br>
<br>
All my code is based off of sample code like rx_multi_samples.cpp and rx_sa=
mples_to_file.cpp, so I know that there aren't any glaring issues with my c=
ode. I also know that it isn't a direct hardware issue because both RX-A an=
d RX-B receive fine on their own
 and seem to be randomly selected to be the channel receiving at full power=
 when doing multi-channel.<br>
<br>
Am I doing something completely wrong? I can't think of anything else to tr=
y. I was hoping to test this out in the next couple weeks, so any help woul=
d be greatly appreciated.<br>
<br>
Here is a pastebin of my simplified code: <a href=3D"https://nam03.safelink=
s.protection.outlook.com/?url=3Dhttps%3A%2F%2Fpastebin.com%2FMNmV0CVM&amp;a=
mp;data=3D02%7C01%7Cilbeeman%40wpi.edu%7C67d0b1bf68e547772c0008d79f9a0be3%7=
C589c76f5ca1541f9884b55ec15a0672a%7C0%7C0%7C637153356297733935&amp;amp;sdat=
a=3Ds%2BDDjN%2B9wOj3ajYekHjociRSWFURPnrIGJ7%2FPNGOzb4%3D&amp;amp;reserved=
=3D0">
https://nam03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fpastebi=
n.com%2FMNmV0CVM&amp;amp;data=3D02%7C01%7Cilbeeman%40wpi.edu%7C67d0b1bf68e5=
47772c0008d79f9a0be3%7C589c76f5ca1541f9884b55ec15a0672a%7C0%7C0%7C637153356=
297733935&amp;amp;sdata=3Ds%2BDDjN%2B9wOj3ajYekHjociRSWFURPnrIGJ7%2FPNGOzb4=
%3D&amp;amp;reserved=3D0</a>
<br>
<br>
Isaac Beeman<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
USRP-users@lists.ettus.com<br>
<a href=3D"https://nam03.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F=
%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com&amp;am=
p;data=3D02%7C01%7Cilbeeman%40wpi.edu%7C67d0b1bf68e547772c0008d79f9a0be3%7C=
589c76f5ca1541f9884b55ec15a0672a%7C0%7C0%7C637153356297733935&amp;amp;sdata=
=3DRiiTyqNXXNSyaW0Dh9EhtSPVkM5QLq%2FwVWZn8D5BbXc%3D&amp;amp;reserved=3D0">h=
ttps://nam03.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Flists.ett=
us.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com&amp;amp;data=3D02%=
7C01%7Cilbeeman%40wpi.edu%7C67d0b1bf68e547772c0008d79f9a0be3%7C589c76f5ca15=
41f9884b55ec15a0672a%7C0%7C0%7C637153356297733935&amp;amp;sdata=3DRiiTyqNXX=
NSyaW0Dh9EhtSPVkM5QLq%2FwVWZn8D5BbXc%3D&amp;amp;reserved=3D0</a><br>
</div>
</span></font></div>
</body>
</html>

--_000_BY5PR01MB57611F3E97967B0C129388BDCB0E0BY5PR01MB5761prod_--


--===============1312469672943872155==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1312469672943872155==--

