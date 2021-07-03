Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9403BA673
	for <lists+usrp-users@lfdr.de>; Sat,  3 Jul 2021 02:35:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 86BC53848EE
	for <lists+usrp-users@lfdr.de>; Fri,  2 Jul 2021 20:35:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=outlook.com header.i=@outlook.com header.b="YZQYLWi+";
	dkim-atps=neutral
Received: from APC01-PU1-obe.outbound.protection.outlook.com (mail-oln040092254062.outbound.protection.outlook.com [40.92.254.62])
	by mm2.emwd.com (Postfix) with ESMTPS id 9917B384882
	for <usrp-users@lists.ettus.com>; Fri,  2 Jul 2021 20:34:56 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NVVvI/E0j1b9f70cdzjA5h+HRWNF0XMVYTtunm8TMBIYHBkdKRWqdVXtSiApW95hKhWpLFdh0F+1J6tw4SM3UoFnmxM9NIb6uAoiWpcSgJJFRqMbcWmpkdvwuDq2so8hkwfIAla2B8q2TeeGp3/TpFm2/q5yNqO8WbysE2v7get0MEJ/ZF8/Se1Pd1oQZiiqJ7Gw/wUYrkCeV27+HQk3QRYi1HXT2Rco5zzA1ZOq0kys9vkFq/r/OF1G4M0EwoLQfrgox0UUCpzqbV/+BnHdgJ3NQhWo+yupSKSg+QSAYXnttZyTBxaVE+L507n4jMeB6AkXaKYj6FcoUmyaogt7MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iNM0XQMrp/sM0JC7BiXy/+o16/epgMxNPQj7hEpAzYs=;
 b=W6z8LjhY/bDCTADBGsgzVlGIq2TUDrgzpFyP/qSK3JXUQRGh8taJ1Op5C4gTe8FenVLAE0j93A6mMD2cn0HADMTtCqqqcCEQLUfXgiu19HHnRm0ylyeZT3q0R6NcS59HzBJ0zj0yh31UJZ21gUbmxRDP7fPs3EPpTDQTvUue0i9+3cDiJe6g71iPO48d+rXr2y5PhJ/gpsVWnUcTdbVJptfMZYib94CBFb+A3bAQr1kVVLafLrSxgUN2+FjQd1GY9F70MT3T7/skr9vm94waTNMqjm+G+vY+aaAHIcMGixcaOvRbcjzxLpTrSbxxNxgd6R31Q8+PjSZzM9vv1wTPfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iNM0XQMrp/sM0JC7BiXy/+o16/epgMxNPQj7hEpAzYs=;
 b=YZQYLWi+n43coQ+brIWclZkAGvyDY+XnbHqqn6uTO2TTt8FDHxii0YfUaVEO5OSFGk2IaZ0pApVPFSFr07eYOSKA6QcfIUxqlJgS7i3kweZeNpsR22aHXWXPxtY/fTGls+cldjzTi+arnHehsilSZBjgMvW+wlSKIUvdHMGxUhtIirR7CF4SKuvBb4uCb6BFDvhU7mLxLjF5RIRB7nNtS05zZDLUruklLSB/hwua8Is2bDiSSodPmpgq5gy6ZvjT43hDLJK952AqzBhb/cQeQoagZjGNMPCPehItCVuUpR8VkCkufhbgvksvCnWgE2tHXfjm9zEUGdljX+IP7u5DGA==
Received: from PS2PR02CA0055.apcprd02.prod.outlook.com (2603:1096:300:5a::19)
 by SG2PR06MB3240.apcprd06.prod.outlook.com (2603:1096:4:72::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.23; Sat, 3 Jul
 2021 00:34:53 +0000
Received: from PU1APC01FT056.eop-APC01.prod.protection.outlook.com
 (2603:1096:300:5a:cafe::a4) by PS2PR02CA0055.outlook.office365.com
 (2603:1096:300:5a::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22 via Frontend
 Transport; Sat, 3 Jul 2021 00:34:53 +0000
Received: from TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM (2a01:111:e400:7ebe::53)
 by PU1APC01FT056.mail.protection.outlook.com (2a01:111:e400:7ebe::354) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22 via Frontend
 Transport; Sat, 3 Jul 2021 00:34:53 +0000
Received: from TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM
 ([fe80::5c59:e887:13d9:1941]) by TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM
 ([fe80::5c59:e887:13d9:1941%4]) with mapi id 15.20.4287.031; Sat, 3 Jul 2021
 00:34:53 +0000
From: Oscar Pablo <oscar_pabloo@outlook.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	=?iso-8859-1?Q?C=E9dric_Hannotier?= <cedric.hannotier@ulb.be>
Thread-Topic: [USRP-users] Re: how to use pps to sync different usrp in
 gnuradio
Thread-Index: AQHXb0JUzwV1gVvG8U2KJSmu6RTBmKsvwj2AgACh1Nc=
Date: Sat, 3 Jul 2021 00:34:53 +0000
Message-ID: 
 <TYYP286MB1407FECBCE067E3C500D0362F01E9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
References: 
 <TYYP286MB1407D3F10F883B963086DA60F01F9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>,<20210702144145.hgwtczc2zruignh6@barbe>
In-Reply-To: <20210702144145.hgwtczc2zruignh6@barbe>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:E9AF790905F89B155B65AA53912A1E8971404AB29D36A6AA84C38FCCD10F2323;UpperCasedChecksum:0A6E9B1FC0316D485398378D8631668C4112937A69F181EECDE98F43F5704256;SizeAsReceived:6967;Count:43
x-tmn: [czLWrrTH7AB5oVObWyMqqRuSNdURwmR6]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: caeb6245-2e49-4f8f-5f90-08d93dba5fff
x-ms-traffictypediagnostic: SG2PR06MB3240:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 7it91kXEVhNwbo5OIIats3fzGxP8IdQ9SLeZx0n7giZpvn3znRJMiL7smckfYw351NCH3I/qG0Jt+y2aBPEtmGSZqZXsDWdTu4kiWAr+Vwos/49JD19PKRw5vX1Q2acR36hGlQKkTzt8I9cwivZOrfKD44RfqVXRIqLf8V3gWtY7HIS5FG2fTlAD9Bo5FLLwgmALVQgv949fL5ezKxx4FL8MvaqrXCe8ALqXvV8Jggf7y+BlRI5dJWzkOeKui9PXhauouS9hwhM0Ykbn+muXYdk3V6l9uPch8eYq90Z1BcvQkB63LyC/YqwWC5Yros2FfdgXoA8L2pVRgkuEX8eBD/bf3rpa7G+pUtPStvBtmGWaV2VUk7jX2sv0k+lxHxddTYrok56V4j1LMAfdOcybm9ix9aMsG1Ac4OD5kPEhFJT1EZWPfolwEU/8+EywPw9H6ie8SUOdiL3sfGbPoiH5we63OLxRW1HvBmMOO6upljY=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 ZTSoIESfooOV3PuoBbMCTdcjRKBRE3TEyteW010kKZZQi6/jClt0T0uFzPblQhXfbxNeVkVbm2FNzoo9tgbJv6LTvgKEekYv14/2kbNKouSqZZj/WNfKe21zlvy/T1s9umziGqOWS3BEjYP/APp4Uw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: PU1APC01FT056.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: caeb6245-2e49-4f8f-5f90-08d93dba5fff
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2021 00:34:53.3080
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR06MB3240
Message-ID-Hash: 4XKTLLKJEFNRMMD5JWOFTJZPRS7E7NXX
X-Message-ID-Hash: 4XKTLLKJEFNRMMD5JWOFTJZPRS7E7NXX
X-MailFrom: oscar_pabloo@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: how to use pps to sync different usrp in gnuradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JR5Z7FMCGB7QGAGWDE4GGTDZKB6DGYN6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3220485283251952768=="

--===============3220485283251952768==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TYYP286MB1407FECBCE067E3C500D0362F01E9TYYP286MB1407JPNP_"

--_000_TYYP286MB1407FECBCE067E3C500D0362F01E9TYYP286MB1407JPNP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi C=E9dric,
this use what time to call .set_time_unknown_pps()?
and after sync how to get the timed sync sample and set the transmit time? =
for example we want to get the samples at the same time for different usrp =
and transmit at the same time for different usrp.


________________________________
From: C=E9dric Hannotier via USRP-users <usrp-users@lists.ettus.com>
Sent: Friday, July 2, 2021 2:41 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: how to use pps to sync different usrp in gnuradio

Hi Oscar,

On 02/07/21 13:03, Oscar Pablo wrote:
> i know how to use pps to sync more than one usrps in c++.
> but how to do this in gnuradio.
> i find there is a sync option in the usrp block which contains
> "unknown pps", "pc time" what is unknown pps?

"Unknown PPS" uses multi_usrp.set_time_unknown_pps() [1]
to sync the usrp block.

That is the one you should use when trying to synchronize
multiple USRPs with a shared PPS signal.

[1] https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a41=
3014bf3aea4a8ea2d268b4a3b390e9

Regards
--

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_000_TYYP286MB1407FECBCE067E3C500D0362F01E9TYYP286MB1407JPNP_
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
0000">C=E9dric</font>,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
this use what time to call <font size=3D"2"><span style=3D"font-size:11pt">=
.set_time_unknown_pps()</span></font>?
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
and after sync how to get the timed sync sample and set the transmit time? =
for example we want to get the samples at the same time for different usrp =
and transmit at the same time for different usrp.<br>
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
via USRP-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Friday, July 2, 2021 2:41 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: how to use pps to sync different usrp in g=
nuradio</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">Hi Oscar,<br>
<br>
On 02/07/21 13:03, Oscar Pablo wrote:<br>
&gt; i know how to use pps to sync more than one usrps in c++.<br>
&gt; but how to do this in gnuradio.<br>
&gt; i find there is a sync option in the usrp block which contains<br>
&gt; &quot;unknown pps&quot;, &quot;pc time&quot; what is unknown pps?<br>
<br>
&quot;Unknown PPS&quot; uses multi_usrp.set_time_unknown_pps() [1]<br>
to sync the usrp block.<br>
<br>
That is the one you should use when trying to synchronize<br>
multiple USRPs with a shared PPS signal.<br>
<br>
[1] <a href=3D"https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__us=
rp.html#a413014bf3aea4a8ea2d268b4a3b390e9">
https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a413014=
bf3aea4a8ea2d268b4a3b390e9</a><br>
<br>
Regards<br>
-- <br>
<br>
C=E9dric Hannotier<br>
_______________________________________________<br>
USRP-users mailing list -- usrp-users@lists.ettus.com<br>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_TYYP286MB1407FECBCE067E3C500D0362F01E9TYYP286MB1407JPNP_--

--===============3220485283251952768==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3220485283251952768==--
