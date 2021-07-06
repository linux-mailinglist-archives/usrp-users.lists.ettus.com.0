Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD433BC487
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 03:12:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D68D383FCE
	for <lists+usrp-users@lfdr.de>; Mon,  5 Jul 2021 21:12:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=outlook.com header.i=@outlook.com header.b="VRzg8S2Z";
	dkim-atps=neutral
Received: from JPN01-OS2-obe.outbound.protection.outlook.com (mail-os2jpn01olkn0150.outbound.protection.outlook.com [104.47.92.150])
	by mm2.emwd.com (Postfix) with ESMTPS id B6FAC383EAA
	for <usrp-users@lists.ettus.com>; Mon,  5 Jul 2021 21:11:51 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ReK8cZoG0YeQpb2oxN6MX2AOJIYr6xq1vkQJOEE8woIKcHRstvFWDi3yNtB/F31F8itssotRBur/OIY6zdLHDIKG05aJs0zLQhdkRd6Wksf5BGAHyddOQJUUdI5t2SGSjK7hIqdYrXqHRU9KCG2zKQpVLG8mCN2aIkfpTAb8W6eyPibvsAe8Ehkleah1HYVF/JmV4gUsKpvC/52N08aI6E8tjDlN/qpjg9ygE0YJTGEEMPImEEHwnpIej8H3ma/WHvJnrgcZFUT1oev2UE99N5H0yqQEGpdAsFSo7lRChfku+dEAqiDpRF0H4MTjDASUJZSDbLpW36+jhAxZXnvpUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0k4fvWdBpGtsjzORKhg+N+UHEUvaEzS+kfufXCTKDAU=;
 b=bRuOXjWJ1xN8apz/u1+7a+IR2Ohpyw9s2Ngs+YoWxvhK4ROJO7EM1RL/D5MPTtZnPEWt28jMS71YLf8FoXxNnHjXogQnNlEZ1666bgnGD49TzO24kPoASuKz71H3bfyI+ouEuGKPZZWxlcx+t1KoWhYNORRwsNEuV0dOdeSRbWJnOSVHXVmsy/+nHW0sD9XR+PzR4K6aoCUCqFajEybQ42zoCR/QwZkgrocrGbH29+qPiC/jRT0sS3RE2WLhfA0ph8TTbPhTBpl5y53NWoqDMt+UAqldlykCXuXJdGqAvpNutOahBJDLScFSfgFiyCjzaFk00h+7cTBk8TbqZmO/FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0k4fvWdBpGtsjzORKhg+N+UHEUvaEzS+kfufXCTKDAU=;
 b=VRzg8S2ZTuQslZEIbrnJ0wBqL8n9NfaXKBMZtAotNHOoswXktFwXN6AZYa5wCRmobFmOJb9+zueZQK3j6OoMGIvd/PYNTWarVjEykKh8N0XzP6pyuDM2kZdkJ0XpuJziuRF4WEoWrzY+im5rOaZ1U9Fsf8Y2e2Dz28Xm/+FAfVAT6gVQZxw9NPeLiUSUfHgXL/tm37nRj/7cOeMf1P/KjaGjRs32rBC+JTv4G4AxQQLA5Fm3Rn9RsNg+l4r5hQCU+bi1qttiAG93MKk6ak8pUvtvxbqq79+WLcXJBUE1lsxPIhee19SdNmwB8khYY98cXF32H5XIY5M1UWNcqqdjaw==
Received: from PS1PR0601CA0108.apcprd06.prod.outlook.com (2603:1096:803:1::34)
 by TYAPR06MB2255.apcprd06.prod.outlook.com (2603:1096:404:24::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22; Tue, 6 Jul
 2021 01:11:48 +0000
Received: from PU1APC01FT045.eop-APC01.prod.protection.outlook.com
 (2603:1096:803:1:cafe::48) by PS1PR0601CA0108.outlook.office365.com
 (2603:1096:803:1::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22 via Frontend
 Transport; Tue, 6 Jul 2021 01:11:48 +0000
Received: from TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM (10.152.252.53) by
 PU1APC01FT045.mail.protection.outlook.com (10.152.253.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4287.22 via Frontend Transport; Tue, 6 Jul 2021 01:11:48 +0000
Received: from TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM
 ([fe80::5c59:e887:13d9:1941]) by TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM
 ([fe80::5c59:e887:13d9:1941%4]) with mapi id 15.20.4287.033; Tue, 6 Jul 2021
 01:11:48 +0000
From: Oscar Pablo <oscar_pabloo@outlook.com>
To: =?iso-8859-1?Q?C=E9dric_Hannotier?= <cedric.hannotier@ulb.be>
Thread-Topic: [USRP-users] Re: how to use pps to sync different usrp in
 gnuradio
Thread-Index: AQHXb0JUzwV1gVvG8U2KJSmu6RTBmKsvwj2AgACh1NeAA9ufgIAA52m3
Date: Tue, 6 Jul 2021 01:11:48 +0000
Message-ID: 
 <TYYP286MB1407CB42585AE0B2BCE87C0EF01B9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
References: 
 <TYYP286MB1407D3F10F883B963086DA60F01F9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
 <20210702144145.hgwtczc2zruignh6@barbe>
 <TYYP286MB1407FECBCE067E3C500D0362F01E9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>,<20210705111547.4rrurvdl7yl5dudt@barbe>
In-Reply-To: <20210705111547.4rrurvdl7yl5dudt@barbe>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:B86401ED942E8C65FB5A8070B003A87DEEFFFC0EC63C046C822C828A27273CF3;UpperCasedChecksum:0E3AFCEE07C7854F257540B0E9373D1AE7AC55F93F814B522D3992CFC5A7E35F;SizeAsReceived:7127;Count:44
x-tmn: [zUrNFRBpacllFaLUU4eGrGSzStSsnq8Z]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: dc2bc8ee-62c1-47f0-0d75-08d9401b0768
x-ms-traffictypediagnostic: TYAPR06MB2255:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Igbbb9wq1EqhDB2QS4qB4nhxiw5qOz68XDxq55EkhOfZDj2Ryerpw1o2T7iTG23L/6JSw/4Sk03HpCdQuGDjWYTEH7uUItccRD6/u2mDxJ2O0ulOEI7F8mb/PoBwozUDWOB4c99WI6L6ggo2lHbH+uDJVBiD1QkeA+aX4BD83HQ5En8C5LWqmY22RBOHG935eomKtUac5TmfTYyudRGy2Gsvx6RX2/O+eO5X6I0XOcPOzjoKaBwgQtC2dm+VP7/JcLKWOWWcq5s8rMKwIYvvI7q4dDvgat1wiV3PUbA0+NMVN4CHXGN3Zew0KEM4MM3L+h7Zjqqzb2NVdOmE4nK1Yzetlxd7uDcofTMxtWZBPdsWIvbAJXQM5VA0VioQ+qLUqlQuSYh9X5Xn3fGLR81O6vDP32G6NKwnfiDeUEjRgKp3mAH67kqWP+h1CObVpeDVXZMvc6jJ6xHCAeVSY/fnhIhxB8S8JjkgEuvmoIo96/c=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 tMpQPwVaCPlH+nuXc1I82vG7cpbVpPGozHVbY4fbkQZAhKRxTkXa/l/SvMijB7H8Yh0itGQJpeJJkVxUTks1rXhGVYw2LyYphTuXRP8Mnwdu+A2Bk+0NOZ521bS8R4Q041nIIN1s83xRNHbSqLwiBQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: PU1APC01FT045.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: dc2bc8ee-62c1-47f0-0d75-08d9401b0768
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2021 01:11:48.1343
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR06MB2255
Message-ID-Hash: AOGSEHNW3UMWNPUHGX6E46RJJVNRL7XO
X-Message-ID-Hash: AOGSEHNW3UMWNPUHGX6E46RJJVNRL7XO
X-MailFrom: oscar_pabloo@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: how to use pps to sync different usrp in gnuradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FTYEHGGT3NODB444CEDCSHPN5YR4M462/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1966469664152443686=="

--===============1966469664152443686==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TYYP286MB1407CB42585AE0B2BCE87C0EF01B9TYYP286MB1407JPNP_"

--_000_TYYP286MB1407CB42585AE0B2BCE87C0EF01B9TYYP286MB1407JPNP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi C=E9dric,
thanks for your reply.
assuming i have multi usrp and pc. each usrp connect to different pc. each =
usrp set unknown pps time to 0 then i want to get the samples at time 1. so=
 how to do?


________________________________
From: C=E9dric Hannotier <cedric.hannotier@ulb.be>
Sent: Monday, July 5, 2021 11:15 AM
To: Oscar Pablo <oscar_pabloo@outlook.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: how to use pps to sync different usrp in gnur=
adio

On 03/07/21 00:34, Oscar Pablo wrote:
> this use what time to call .set_time_unknown_pps()?

If you mean which initial value, then it set to 0 [1].
If you mean which time source,
then it depends on the "Mbx: Time Source" block parameter.

> and after sync how to get the timed sync sample and set the transmit time=
?
> for example we want to get the samples at the same time for different usr=
p
> and transmit at the same time for different usrp.

I am not sure what you want, but:
The USRP block uses the multi_usrp API.
If you specify multiple USRPs in the GnuRadio USRP block,
and sync them (by sharing PPS), then UHD API should take care of
aligning the packets. Ie they will transmit/receive at the same time.

[1] https://github.com/gnuradio/gnuradio/blob/5547665ee92f748a7ee47d64dfbf1=
33db77fcfce/gr-uhd/grc/gen_uhd_usrp_blocks.py

Regards
--

C=E9dric Hannotier

--_000_TYYP286MB1407CB42585AE0B2BCE87C0EF01B9TYYP286MB1407JPNP_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi <font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#00=
0000">C=E9dric,</font></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#00000=
0">thanks for your reply.</font></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#00000=
0">assuming i have multi usrp and pc. each usrp connect to different pc. ea=
ch usrp set unknown pps time to 0</font> then i want to get the samples at =
time 1. so how to do?<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> C=E9dric Hannotier =
&lt;cedric.hannotier@ulb.be&gt;<br>
<b>Sent:</b> Monday, July 5, 2021 11:15 AM<br>
<b>To:</b> Oscar Pablo &lt;oscar_pabloo@outlook.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Re: how to use pps to sync different usrp =
in gnuradio</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">On 03/07/21 00:34, Oscar Pablo wrote:<br>
&gt; this use what time to call .set_time_unknown_pps()?<br>
<br>
If you mean which initial value, then it set to 0 [1].<br>
If you mean which time source,<br>
then it depends on the &quot;Mbx: Time Source&quot; block parameter.<br>
<br>
&gt; and after sync how to get the timed sync sample and set the transmit t=
ime?<br>
&gt; for example we want to get the samples at the same time for different =
usrp<br>
&gt; and transmit at the same time for different usrp.<br>
<br>
I am not sure what you want, but:<br>
The USRP block uses the multi_usrp API.<br>
If you specify multiple USRPs in the GnuRadio USRP block,<br>
and sync them (by sharing PPS), then UHD API should take care of<br>
aligning the packets. Ie they will transmit/receive at the same time.<br>
<br>
[1] <a href=3D"https://github.com/gnuradio/gnuradio/blob/5547665ee92f748a7e=
e47d64dfbf133db77fcfce/gr-uhd/grc/gen_uhd_usrp_blocks.py">
https://github.com/gnuradio/gnuradio/blob/5547665ee92f748a7ee47d64dfbf133db=
77fcfce/gr-uhd/grc/gen_uhd_usrp_blocks.py</a><br>
<br>
Regards<br>
-- <br>
<br>
C=E9dric Hannotier<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_TYYP286MB1407CB42585AE0B2BCE87C0EF01B9TYYP286MB1407JPNP_--

--===============1966469664152443686==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1966469664152443686==--
