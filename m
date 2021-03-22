Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D37343670
	for <lists+usrp-users@lfdr.de>; Mon, 22 Mar 2021 02:58:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5D0A2383AFE
	for <lists+usrp-users@lfdr.de>; Sun, 21 Mar 2021 21:58:33 -0400 (EDT)
Received: from APC01-SG2-obe.outbound.protection.outlook.com (mail-oln040092253046.outbound.protection.outlook.com [40.92.253.46])
	by mm2.emwd.com (Postfix) with ESMTPS id BB36B383769
	for <usrp-users@lists.ettus.com>; Sun, 21 Mar 2021 21:57:40 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GK7/IFcKI7VDbX52LaSsptcMW8I9Z6AEimisFxBk2ucKhnbIDyH37sbntOLmW/Ynszg8CvUE7z/bUmMnqFH5r0Z2dbQv+F4YtoPhQwIOJ+ZR5mSczx2cCHZOLsKN/PMgPGnFDdq3xFXLijMuQqarraNzAeeWYzCEEB3a7jQSqR84sqf6sIbV2EhLbo2jO1cJqU0y+92R9JDEmuG9oEYGaEghkhbm9F3lOQN1b4WOVdavCR0LHVDnELMmfJOexsvTR+PdDaJWM7BbWh5vWLPDTM/XyZKPRwcQxQJXQERkv6N+hqzPQtEVNM6CqARs98euQnxSIdiEUdQwBk1D9JTH8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r8vCzaUyaKNmi0AUZ8HwyEwhPVWNN1emwjQ5Wwmi4NE=;
 b=Bago2z4pFJeIB0MPYot8hkunIfO4hpTDAFBQCanQ7Hitz+qXJME+CtiEa/UuwrtGFMpWVTHnC0PcAgEytkNJ96HxYLwp+XtTvW6Ts5olhwOm7l5i6AVnKTh3VSp2eUByymzPD+2bcWkhTtYEMIDSsMLg+JM5t9mJBO6v6y2SB8TZwiDkHWBCcgS7RHceW/4wq8UvlhPErM6S0KQWPTjMd/l0Ygw73a3EyBox6WPgPDyjRiAuWY1swsKLVYGuXuuf1UKGrT2aTb1Q05XxCmuSOClQk+0vjRnChioNka3n2yCEzxlN29yHbfthwKjVo7d4e+A/jlrRP1xeTj0bdfMMvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r8vCzaUyaKNmi0AUZ8HwyEwhPVWNN1emwjQ5Wwmi4NE=;
 b=OHq+0filOh8QSRE1YSrJ12nWu4GpNwZ2r7jceeAWDFTxQZJFVaCtmdDOUIlWkYLH3PmC+YL06hArd/kSQq0BoP14AYElSR0SIP/Hyqea4Oglip8eGEgSv8uvETor+J+IGe8cxnr7X4L35ZkQP/HfNIqM6jf5iRBtjUdG+tAqEy/u/ob2VSxGJfMVCLTkEVP/xDyENID7Wq9tRd+5fjIZtSc27IV+hID28iMZ6q/MJq5BfzpME6Dw9sV9+DmubES9d9gEKz3migi1dBzncfitdrLNp2YBjebcTp7WH6zLSBPKzu7c+1GVpBFDC33Tf8kaT4KsLypYVsrWZneZ4aZp/g==
Received: from SG2PR04MB3514.apcprd04.prod.outlook.com (2603:1096:4:97::10) by
 SG2PR0401MB2174.apcprd04.prod.outlook.com (2603:1096:3:4::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3955.18; Mon, 22 Mar 2021 01:57:37 +0000
Received: from SG2PR04MB3514.apcprd04.prod.outlook.com
 ([fe80::e44d:f027:caac:3ca8]) by SG2PR04MB3514.apcprd04.prod.outlook.com
 ([fe80::e44d:f027:caac:3ca8%5]) with mapi id 15.20.3955.027; Mon, 22 Mar 2021
 01:57:37 +0000
From: Oscar Pablo <oscar_pabloo@outlook.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: question of X300 revision
Thread-Index: AQHXHih2oy65dgYjbU2Lx35PeLsmsKqOjU2AgACxgVU=
Date: Mon, 22 Mar 2021 01:57:37 +0000
Message-ID: 
 <SG2PR04MB35145981F34B7F7B86DE892EF0659@SG2PR04MB3514.apcprd04.prod.outlook.com>
References: 
 <TY2PR04MB3517EF7CB55B3601EB8C20BEF0669@TY2PR04MB3517.apcprd04.prod.outlook.com>,<605762B3.2060004@gmail.com>
In-Reply-To: <605762B3.2060004@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [/Yhggv/rfnnOxeNlGws5MiXxMkVPULWd]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 27f39314-c4d3-4baf-e786-08d8ecd5de6c
x-ms-traffictypediagnostic: SG2PR0401MB2174:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 fWQivcEarzjNXseMZI277+7ccXNZCgX0Jv81gqyKHk29PCNEDznukNr5bZxtrUmPoqEcJ8QBfClGpIrh9LkzCDbbvfALSFhGM67subx9cVfjoDiGKKepv8xWuQ8MYy2eLin9tnmhHFSarGugGFkeiLjQY8AEB7Ey6neQQMxZ+tS+YP4TprnF02c8NDi0CIo0bpwkgohiTH8Dqx8yJfwp+M6Sjd7Rlei9cYYKGOuXrjJ5l/s69HZkd2jR9zfyWreYUtcb2nvQk4DqhMPcaJ0wvIULYeTQ3cB+qXvyUm6r9fl5Dw+EywjPkdHkkz3+RkVeYTBmvY9AyR+JQO6rY0isHkGkL8Q6upmaqiD0BJZKpRXTQlm6OywQ1yYx+SI4Vy7HzlFJNEMAR8o/MqUycvPTqg==
x-ms-exchange-antispam-messagedata: 
 OEPOBSc4me9MMYlq181t/cFlqwZO2t34Vm9LLzmoXJBKl7q6SyqFUhzWJzXkA00dyiMEA1E5duwzflXVyMaBljj6CzY2KxnNFE9nTqQ/BaOrnMVFmMBsyR+Ck3upEThlcUZClSqjPiG9Cd9aNKjrCw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SG2PR04MB3514.apcprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 27f39314-c4d3-4baf-e786-08d8ecd5de6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2021 01:57:37.6033
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR0401MB2174
Message-ID-Hash: XBKD7LFKXJV4VJX7NUXIB4HNKOK7KEAN
X-Message-ID-Hash: XBKD7LFKXJV4VJX7NUXIB4HNKOK7KEAN
X-MailFrom: oscar_pabloo@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: question of X300 revision
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/STUP7K4L4ATGEL3Q25IM2GQTO7BNOJPQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3988395955238855775=="

--===============3988395955238855775==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SG2PR04MB35145981F34B7F7B86DE892EF0659SG2PR04MB3514apcp_"

--_000_SG2PR04MB35145981F34B7F7B86DE892EF0659SG2PR04MB3514apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

i don't understand why keep the the source code for the product that will n=
ever show. and release a schematic for the product that will never show. if=
 there is no source code to support the schematic then this schematic is no=
 useful. i know x300 schematic hide the part of pcie. but if other part is =
ok then it still have value for reference if someone want to use some part =
of it.


________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Sunday, March 21, 2021 3:13 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: question of X300 revision

On 03/21/2021 04:16 AM, Oscar Pablo wrote:
Hi,
the public released X300 schematic is revision 1. i want to know if this re=
vision is the revision in uhd source code. in uhd source code there is stra=
nge words "x300_clock_ctrl is not compatible with revs <=3D 4 and may    le=
ad to locking issues" so what is the correct source code for revision less =
than 4?



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>


My recollection is that hardware rev <=3D 4 were pre-production and you'll =
never see them "in the wild".



--_000_SG2PR04MB35145981F34B7F7B86DE892EF0659SG2PR04MB3514apcp_
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
i don't understand why keep the the source code for the product that will n=
ever show. and release a schematic for the product that will never show. if=
 there is no source code to support the schematic then this schematic is no=
 useful. i know x300 schematic hide
 the part of pcie. but if other part is ok then it still have value for ref=
erence if someone want to use some part of it.
<br>
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
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt=
;patchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Sunday, March 21, 2021 3:13 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: question of X300 revision</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 03/21/2021 04:16 AM, Oscar Pablo wrote:=
<br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
the public released X300 schematic is revision 1. i want to know if this re=
vision is the revision in uhd source code. in uhd source code there is stra=
nge words &quot;x300_clock_ctrl is not compatible with revs &lt;=3D 4 and m=
ay&nbsp; &nbsp; lead to locking issues&quot; so what is the
 correct source code for revision less than 4?<br>
</div>
<br>
<fieldset class=3D"x_mimeAttachmentHeader"></fieldset> <br>
<pre>_______________________________________________=0A=
USRP-users mailing list -- <a class=3D"x_moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=0A=
To unsubscribe send an email to <a class=3D"x_moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.=
com</a>=0A=
</pre>
</blockquote>
My recollection is that hardware rev &lt;=3D 4 were pre-production and you'=
ll never see them &quot;in the wild&quot;.<br>
<br>
<br>
</div>
</div>
</body>
</html>

--_000_SG2PR04MB35145981F34B7F7B86DE892EF0659SG2PR04MB3514apcp_--

--===============3988395955238855775==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3988395955238855775==--
