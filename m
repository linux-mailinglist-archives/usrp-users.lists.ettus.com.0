Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 89012570AB7
	for <lists+usrp-users@lfdr.de>; Mon, 11 Jul 2022 21:28:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7CAE8383A19
	for <lists+usrp-users@lfdr.de>; Mon, 11 Jul 2022 15:28:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657567717; bh=92VrggR0ahd50ZQ9qluM9A5UBqutUuXUWkEpovMp2Sw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=snZri0/nLS39eBPyXN8Cm5UeCo7BlimJKA4y1lbqMn+pUr4Ax0sumoXZRMk2+zDh0
	 IlJT8L8y7i739iv7zwUSgPYM80Gm7Dyq2mw5HwfIapq9JfsoFVcenITX2nZqap2rxh
	 eTYbl1W/Gz2JqtxJzG2nU6GauUUVMzY/THGAadS5p0in40TAoR74OTmTF/OM8ROg6W
	 mygRGuAPmthJ7fnmzFhusowWSAeCuViuYYRSo1/W8DDJXJVuGc+rblHoKe1P/klbX7
	 rqMlKWEacUmS5KbDAOHtb86Ja+Z5cBO1bNCYwv2kC0q2kxTs5WasoaucrbklYb27Sv
	 RWDphZK9Ojgxg==
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01olkn2024.outbound.protection.outlook.com [40.92.99.24])
	by mm2.emwd.com (Postfix) with ESMTPS id 2B7403819AF
	for <USRP-users@lists.ettus.com>; Mon, 11 Jul 2022 15:26:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=outlook.com header.i=@outlook.com header.b="YmTyFC3l";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oKOAvJhHuBgYsxS5sL9/VrIHwh8OjmldXYDPjUNllLnXla3+mrCzXnXFEhOQpkL36b/DNXbOD8fAihq4WD7engtu4CS7dZLGSjtggAoAEkwKw0YVuk5j4QaArvF5nlF2v0x4yuxpk7mfezWKpMxoIXHoDmxJuuIe/L3eIgTN8oifimT//t4ttbkCKcQ+XyhYoiOIeo9Z1VO+xjzJhhCuXnjH0cxWsHK8dfJsLi6AOPpqWB29hLHBdilptb01Dn4ORzb+5mskeLJrwbX/r3AQZvTXeoW0msBGYJFxtpIq/HWZF23EYRITHjBUqNl2Piov2fvb9hCXYOlAhN6W25RU3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ToqwCigkFUXLhFln9Hae8LiZ15BQK+pWzTp0ORH/G7A=;
 b=Zs0Sb/AsREuAn9kbQXsUMFzRaj821LjPwQnWzu6f1ouHxN+2aN+AkKHJm6qYYKmrXJYPc8wHJIP/5vhiVvbE3K/B2H2SOwpOTXchmQuRI0VtTgLF7b5RfKVNhQSBGniQ5UkoWAlUHRULK3Em8AqqiC8A0gvIX5/44Q3xAx4v5sOE6UnPRiMW92FmVnvBsEjnL6RaZLScB/0B5tsTxyXxcKQXwh8XL2OZVqHIaNzfPMG9wkl/v03fjcarmRlpmmfxSop/cib22imu95sYulXstHXjh1dswJFkAhdOKEagz6nHl0IwYPFbFXsZUd2Wlm+plCls9BAcduhfk81UmPfbdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ToqwCigkFUXLhFln9Hae8LiZ15BQK+pWzTp0ORH/G7A=;
 b=YmTyFC3l+Uy1dOcuoAn3HuD1hE3SsbIrcpv1tY2Ak1C/ri7VEqelJI3FAJaiKMNh1kTz0IJKnFb5aduAh/7H/Eo6eQ+fOPbGChbFgY7mYTG9xQpnd1foiq0ulUkl+EQav5SnM4tiePYYDZ66hLBNWo5K1n9JbXa7FM//pWxoXHv+1sdAafIVbJbBdNgYn9GkZfBRwFRoAu9KhCOAa+tRitjsmszfhNgoVXYSEV9z4VjGOdU76Z2mQuoFrunewYLpGCT8GAWWaxPRsFyr9b0kzQV1Sh8tlrnCcymmZJwAdm9b/RdRKS07+7vrlJvFiEQP+tGCCM7OnNpHkKkUHBdSrw==
Received: from TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:9c::5) by
 TYCP286MB0671.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:7b::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5417.20; Mon, 11 Jul 2022 19:26:04 +0000
Received: from TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM
 ([fe80::3d46:b088:968d:3333]) by TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM
 ([fe80::3d46:b088:968d:3333%9]) with mapi id 15.20.5417.026; Mon, 11 Jul 2022
 19:26:04 +0000
From: pro jason <jason_proj@outlook.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<USRP-users@lists.ettus.com>
Thread-Topic: [USRP-users] RuntimeError: fx3 is in state 5
Thread-Index: AQHYfbdWBVDQmiQon0O82rzH/iMhtK1KioSAgC8v7jU=
Date: Mon, 11 Jul 2022 19:26:04 +0000
Message-ID: 
 <TYCP286MB0991EFFAC0D4E288F4EA3C97FD879@TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM>
References: 
 <TYCP286MB0991FC2C970A3D059A08DD35FDA99@TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM>
 <30ba2c2c-056c-766c-1eab-a8025a30b19e@gmail.com>
In-Reply-To: <30ba2c2c-056c-766c-1eab-a8025a30b19e@gmail.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: a8b840b3-2587-a671-4d05-d76afbbb949a
x-tmn: [qUO6lh6guXXK0iZHRD8lTTG+ZzMgqJ45]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9ff87e10-0c28-427b-0085-08da637332b3
x-ms-traffictypediagnostic: TYCP286MB0671:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 4kRs1N7T2AwKiIjOMAFuiksVdnY1N2tUGtSZ+1TTgYLUhBaKk2OAITHJkDuQjlhrbx7Jby1/dnCJstHYITFa/RCAdH5O3XUOIEIbuKMQjEarJ9iaShXzdj1MJsS++GhFLD3u8qog/JyydLfbcL06t2GYvWthqhbrFDvnVtHEom0z9kBZtgxuBUMRcqAlj4nE5x1KpD3/JxOZGOInjipUwrcZEI1pXNLqUlWugQ1xG7fILaXe+3qAqST6YX3aKNr/RICxsAVv/SGeiCjU1aMCqgetfGgmGMePdsmLOLkbgs/x6FxQckARQEK5hoe9gfS9I0MgKIEf94l506MqNp4IDiTqlxw0rIhGeN7WV+/z3uf6y7wYYhWmK4DZeD7UOADC7VDkNqGAFGs0R1ULNUcUzK35+JmIFLWDZSD1Dk85Kcq1Rv1n9bZcHmzlmlvAZ4sm6Bz6Znj+DENImne97bHHn/ilb8wf9jqIzFqorZ8/YDZAPRK8uOlYJcquEYAksQ0vA5nluts5DwzyH61wGt1Img2WIabViPnjtJt0r0hAPgQmHIjL8Yu6yIXiAnOPR9TKm5jXFTZYW+OR/WrXXpkcengjTKt1kAZSdsy3YvIyC+IH2qwmpzHEIULG518GZSs0KhkplT6XfQVVV8RWC7kZ2LDUXqlC+9ZEfA7EjKb4A9LMZo4T+R8a2VDmZcc6MdhNkkfzbLZrw+7Rf509gQGRzCooflOpoUhIbyTB9Sv7gUA=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?ICekep16nJCfL4MxIxxGRigaxXYd5g7Aa+mjnfdT4y6btCkyLn5sgw3Jk+?=
 =?iso-8859-1?Q?AZo9doqVVJjjohMy/mgR30T4R0a2SfDGBvtyaJCLlMYaELkUxrTsp5n1fG?=
 =?iso-8859-1?Q?2DM67Ml7+zRrh5jEW132pvqK93rMwGnhcROQV0N/eqXrBe5BBCgaY0dYzn?=
 =?iso-8859-1?Q?2uUEQQ/glBpD7P8bPEa1XzyFB7Y/uedTek30BeyuhvmsFxF+U1IYPxyKMO?=
 =?iso-8859-1?Q?OQp+ZAJRhhLQu3gTKyr+Bz3XhgWL7ts6IIFmagHV5yTIZ3E1W/V/UqHzVL?=
 =?iso-8859-1?Q?tZJ0C84Pj6G5ei1oShBpHt0tk/sFzYZoBt/nyzELwiDO1ms7L1cHCWujG+?=
 =?iso-8859-1?Q?e+4iegC0LPoYa1HTDbiU4xehFcrqOM5jTEFsYTE3lhzm5+2fUnr1OPCnME?=
 =?iso-8859-1?Q?idzpL5SHss9G8xUsGm6+eKFWqPP5ZmtJYSKyJ5hSBL/7HwNEiigEwe0KAZ?=
 =?iso-8859-1?Q?xPMKEkU4DSPk3HrmU7UgeMBFl7gY4gpjRj9uzU1J9VDeo37F51RUVz94ls?=
 =?iso-8859-1?Q?exgkr5VAHRhxnkAruU827vp97JUkNTjkeBp24Ke2b98lQ1ae8kBY7MsnDc?=
 =?iso-8859-1?Q?1tZ9nKIj1BWU0b50R50i5SOqCAjEKKqIEMfNDC701ATTqKyhT1aaCqNy6l?=
 =?iso-8859-1?Q?y7zVqhxZIMib0uH8o5fAmYnYPfyAVDVR1ZmtJIn88W8iC5v4p99HqcXT6w?=
 =?iso-8859-1?Q?ieWS7N7OX+qx13J7injHM587cc6v2D0PFpeAxCQ7fPs7jqiSnFEuMGdtEJ?=
 =?iso-8859-1?Q?RI1oYQl4MzuahHUeDtWooiE21JOuu7ERgKJ9l3rW5uAToVUK+yFRtoNdcL?=
 =?iso-8859-1?Q?1SuyX6EQnGJHq0At0nHEdxd6v2SndVoTnohAshzHOfe3mfGTao8U+nLyIv?=
 =?iso-8859-1?Q?T9IVNmIgxpt4ntTHOvCFLyqgSHwNkI+WZbmsKmtgVfye5no1tqqh9ZF/CX?=
 =?iso-8859-1?Q?9Mkay6vVsGNEr22axUS1A2ePvkszzVruByMJb5pxNMJJOB9UlBNwz1lpFd?=
 =?iso-8859-1?Q?MBFM1/OhvQEVJfDIq56AVf548aVVKrQGZbut09qzy+6kaZ7UcVLE7hPsme?=
 =?iso-8859-1?Q?/R5n++lNaA/e2d1q7bfdqpaE0PFxfipn7Xa+83givjQCe7nIm5RmmA7T5O?=
 =?iso-8859-1?Q?OmF1Jz4YLqWDafl0XWgp5W857eCPH7I/1KRilrTnJSJG2kH7611FsJMXxG?=
 =?iso-8859-1?Q?QiQ/K41kr0zKt8upFs/AFszWae+aXAfL/6Yy5KSwwrE4uUKZ6fmN5JqOVa?=
 =?iso-8859-1?Q?/5Wq9rwvSVfCFiRx9IkIQMxO4LmDm8yb3wMvtU79hc1GCs5PiVoFygwoY5?=
 =?iso-8859-1?Q?66DY?=
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ff87e10-0c28-427b-0085-08da637332b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2022 19:26:04.9170
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCP286MB0671
Message-ID-Hash: BB6JK7N6V37WLTBDELLZKR37KUTPUF7K
X-Message-ID-Hash: BB6JK7N6V37WLTBDELLZKR37KUTPUF7K
X-MailFrom: jason_proj@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: fx3 is in state 5
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TGH73WFJS6FTRCIPWCTBJF5YTVGE2KWS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7271072488453813891=="

--===============7271072488453813891==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TYCP286MB0991EFFAC0D4E288F4EA3C97FD879TYCP286MB0991JPNP_"

--_000_TYCP286MB0991EFFAC0D4E288F4EA3C97FD879TYCP286MB0991JPNP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thank you for your reply.
The image file we use is a standard image file from Ettus Research, which h=
as not been modified.
We have several pcs of B200mini-i, and only one device reports this error.

Best regards,
Jason



________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Sunday, June 12, 2022 2:42 AM
To: pro jason <jason_proj@outlook.com>
Subject: Re: [USRP-users] RuntimeError: fx3 is in state 5

On 2022-06-11 13:24, pro jason wrote:
Hi all,

One of our b200mini-i is not working properly. The faults are as follows:

uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.2.0.HEAD-0-g=
46a70d85
[INFO] [B200] Loading firmware image: /usr/local/share/uhd/images/usrp_b200=
_fw.hex...
[INFO] [B200] Detected Device: B200mini
[INFO] [B200] Loading FPGA image: /usr/local/share/uhd/images/usrp_b200mini=
_fpga.bin...
Error: RuntimeError: fx3 is in state 5

We tried to replace the computer or USB cable, but the fault still exists. =
Is there a solution? If the hardware is damaged, which chip is likely to fa=
il?

Best regards,
Jason



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>


Make sure your FPGA image is correct--is it the same as on other working sy=
stems?

That error message indicates that the FX3 chip (USB interface) was unable t=
o load the FPGA image--either because
  the FPGA isn't responding correctly, or there's something wrong with the =
image.



--_000_TYCP286MB0991EFFAC0D4E288F4EA3C97FD879TYCP286MB0991JPNP_
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
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Thank you for your reply.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
The image file we use is a standard image file from Ettus Research, which h=
as not been modified.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
We have several pcs of B200mini-i, and only one device reports this error.&=
nbsp;
<div><br>
</div>
Best regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Jason<br>
<div><br>
</div>
<br>
</div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Sunday, June 12, 2022 2:42 AM<br>
<b>To:</b> pro jason &lt;jason_proj@outlook.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] RuntimeError: fx3 is in state 5</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 2022-06-11 13:24, pro jason wrote:<br>
</div>
<blockquote type=3D"cite">
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Hi all,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof elementToProof" style=3D"font-family:Calibri=
,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
One of our b200mini-i is not working properly. The faults are as follows:</=
div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
uhd_usrp_probe
<div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.2.0.HEA=
D-0-g46a70d85</div>
<div>[INFO] [B200] Loading firmware image: /usr/local/share/uhd/images/usrp=
_b200_fw.hex...</div>
<div>[INFO] [B200] Detected Device: B200mini<br>
</div>
<div>[INFO] [B200] Loading FPGA image: /usr/local/share/uhd/images/usrp_b20=
0mini_fpga.bin...</div>
<div>Error: RuntimeError: fx3 is in state 5</div>
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
We tried to replace the computer or USB cable, but the fault still exists. =
Is there a solution? If the hardware is damaged, which chip is likely to fa=
il?
<div><br>
</div>
Best regards,<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Jason</div>
<br>
<fieldset class=3D"x_moz-mime-attachment-header"></fieldset>
<pre class=3D"x_moz-quote-pre">____________________________________________=
___=0A=
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" da=
ta-auth=3D"NotApplicable" class=3D"x_moz-txt-link-abbreviated">usrp-users@l=
ists.ettus.com</a>=0A=
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" data-auth=3D"NotApplicable" class=3D"x_moz-txt-link-abbreviated">u=
srp-users-leave@lists.ettus.com</a>=0A=
</pre>
</blockquote>
Make sure your FPGA image is correct--is it the same as on other working sy=
stems?<br>
<br>
That error message indicates that the FX3 chip (USB interface) was unable t=
o load the FPGA image--either because<br>
&nbsp; the FPGA isn't responding correctly, or there's something wrong with=
 the image.<br>
<br>
<br>
</div>
</body>
</html>

--_000_TYCP286MB0991EFFAC0D4E288F4EA3C97FD879TYCP286MB0991JPNP_--

--===============7271072488453813891==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7271072488453813891==--
