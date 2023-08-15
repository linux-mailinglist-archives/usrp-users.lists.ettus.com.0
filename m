Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 507B477D3B6
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 21:56:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3B354384B23
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 15:56:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692129390; bh=tphXOkN9K29omprReGYEdyXdUvTbEEkHP/wxWsDKe9s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DbHflmQ5eLbQaO3nhqdUFPAIoG+L2LfWBgpyl7UZ7WLJzjv8pawnINaYT+cBkzoSH
	 POYzIt4C7F4q4XZ5Q4gSYLGaIbYWlVJ8+U/b4Ynb1uXyxvjk3+XRBeGT9zYXEgxAlJ
	 Z/i8ulj3JuqiVsQ+3M8IQA2EA6kbPLd4blS4srkWVwDHWCQ6eAD8A2rEgtURImAK+D
	 gpGTNN/FHY8fzTjaLJTT0j/n/j6qPpcO5VPDOvfEiRtoKGy1hk48gz/u7E+Knao5kU
	 Os728LEtXKRlf6tH5itX6KFwy8mzI8iuBwK5yr/cfMihfFJ7/BA9Xf4IC/1EbiST6D
	 T1njchLhW6UXA==
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12olkn2083.outbound.protection.outlook.com [40.92.21.83])
	by mm2.emwd.com (Postfix) with ESMTPS id 086B4383FAC
	for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 15:55:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="PZ6uYPnk";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HNgjcFEvBdTiM6Du4ywoGDJjp22QEd/P42u/n1H/DJqG8TQAB6zoFNgbif2TE6qSkDWT6BO6I/RbLb0ro4v/EBzO5Jt0pKlVSRqE2b18ETSjrvLua551xXjILkD3cWrA68GCWQRWd73G5uODlbbWe987tT6BDRXpTUS+N9BBrKPgIhjn0Ys2ORZGVKxNYTe49LEx1GToqePeqmkhJrieA8RzlV9d/+wBE6IRQ/i+ovdYREATnuJM4b5gdNav41rB/Si18ZSNYU9Yu/j+gCZXbvNBLZTFKZIDIyXOXOtkM0Oe1XDDHNnjZCS2pKy4OQugnBYhTu7RGc+N1g4nGrRcMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GkdhRK4/MSZEU/7e86qvO9JW16YiAtOtgI3/Sj3pbak=;
 b=W4pBJbN54jkPdxh96TbWqp3i+X+0Zy2oZ5fCt3llEpBkBu5E++oYhMUxWUT0JJ5kr26Ji9YJ04uVzbCEJTAO4eFdXDifBSeaeDZKKEiN6ghWgkh8OB0g+7rQLAvIYTlTyhpAaqMDBKvhX9yR2A7ZGuk4qzlGvZuHEI9638iWXCUEKJwZYbiZfxkzb77carlKKW2j0avqCAFqk4Fc9Julr3C9U5sBQhdvR67diFKlPhjJCarGKXriNCMbaT77HJ65lBPsfC0Ndc//52gkfdBgedo3Q8Ir1farnrv0uGDrIid3TRxQuEZIa9s0O9PD491w0CpdZkIaZyo9subdayazOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GkdhRK4/MSZEU/7e86qvO9JW16YiAtOtgI3/Sj3pbak=;
 b=PZ6uYPnkSgjEZ/PIHQem0ZrmiQQYSIOQG2fITmPw57jGFHj0cl+TbzR/LjH9x5rNDNVg5oNQ/I3q7l2aJzZaNl5Sqvi4wpxEz/S5sFEl5BDSBGPNj7u1hroM6VlsIsXLzfL7HPnXXZL0x5YXab2uDbzKo6eU5KGZ4EBkjSFu+nOl/dE1PCr6o4zY4772O3R150WJbkZXiKUvQbsRknPEX0IBHJrs9jzzk8jXiw+i40vSxN5tbX5t7yQTp8Dka0q9FCxxe7LXAhNihMwn5wcmftR2Ewwf0Yjvi0UxZE4vDJHFW1NPGyNFQFaV4Cw5XoxRKxwWYD/T/3nGWlaLRGeWDQ==
Received: from LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM (2603:10b6:408:1d8::6)
 by LV8P220MB1028.NAMP220.PROD.OUTLOOK.COM (2603:10b6:408:1be::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.14; Tue, 15 Aug
 2023 19:55:56 +0000
Received: from LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM
 ([fe80::8e06:35:b99f:c1bc]) by LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM
 ([fe80::8e06:35:b99f:c1bc%3]) with mapi id 15.20.6699.013; Tue, 15 Aug 2023
 19:55:56 +0000
From: Michelle Salehi <herrmlm@hotmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Help with FPGA update and running GNU Radio
Thread-Index: AQHZz7Fmt1pc/Kx1vUS9U+EYruaDuK/rxI0AgAAA4wE=
Date: Tue, 15 Aug 2023 19:55:56 +0000
Message-ID: 
 <LV3P220MB1054FE9556901835093CCC4EAE14A@LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM>
References: 
 <LV3P220MB1054879CBBCDC948F78CF922AE14A@LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM>
 <683124aa-2b30-8397-d89b-9b103ff8f7c8@gmail.com>
In-Reply-To: <683124aa-2b30-8397-d89b-9b103ff8f7c8@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: 
 [wP5bZy3VpBTPxUOcP7I3/Wz48VyzDvmhmL0sBIGmKXA3K4C9PKsdCeoX4coxGx7qeeA0SwKWyLM=]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV3P220MB1054:EE_|LV8P220MB1028:EE_
x-ms-office365-filtering-correlation-id: d6954369-4a15-4603-d766-08db9dc9a3ce
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 GTd7YUsbmIA211KZuHPRBpOgt7H6bNDwe2L3zV8YhplMzCiY4tOUgigc2i/gRuBOKQ/iFq63I8kjFsld9bOtarRsfirK6dfxj9aWuk+kTYU88ro98rCwOfSIQfo/XIKqPdo/+loxktVZ+aM/3FZXJSHVcEoa1OybbnWO8q/rxjyRmKJQIKK2ivKwqm09ctTOy6nJ8p2tQ++Xsm+4MCd2/6PohXJuogD1C1/JoWUP+iIK3UCTwWlt6a0mYYYimeQ3tJCIV95fUZ9aCBWYqLGgyn3KAzn10rqV893CQVIuSk8ll8j0zMqPZXfho1UJaxMCoXIZuk6MlB8l2Lq/Dr4anMgxnfkNwikivDuTUokxVRO5xtIuhSFp1ArU8BVQsJ2r45sU0n8i05zdwXXLJBOztU14fZ9HOIBSiJufJW7ZSaTIM6LIOyinNpc8yZE98qzi0AEzYy3H9xXycZ0V9Nl4SsR+wDNiTlHis3UZ68PWDXOlzwhnguLJV4tYsZGOGNQG/3NCg/b3heJzf8qxB9FnI6u02MFaOchQvxETbE0P/yhbeQ8XqnUNqCjCFfS2QDpsaQyTSpWyj2i8jrKHNxC8yowdC9KwIse9SY1OLDtXgag=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?yw+rHuqkXEYVlBNFURG8bFtjByRLpZsAftuq+FxG4UHqEqxL5ZwNI8aEGzWM?=
 =?us-ascii?Q?2E/5kh/zqrKVnTsl+D/4H8Y6PlI8SPS2byKIuTXv9aHEi9D3R+IKV7ZCU/uj?=
 =?us-ascii?Q?+WuqUpE6yia3BH3IpoRFP8aC6WmK+moLJyTxMtmjnSIVEou6WJF0023Piada?=
 =?us-ascii?Q?I5aZzbr63eEnVNqx2MzCoOlxUxkO3FV6U3wEkKMZtq55+BzsXBuYyPpoM70I?=
 =?us-ascii?Q?dYB7sD0Mnh6Onf/w82lCcW2iOT++mlZFnY12u/GRe/v0M2Aps33FQU1uIk/0?=
 =?us-ascii?Q?/wdyWjcywHCd6I0DdmUQB1hTn7tkyRKJ6HAc3A5uDLo2A19ulgFuAvK+4eEj?=
 =?us-ascii?Q?1z88laJxzOpLuthnNx/epK0+D7Urb+rr8yU1qF5GJBjPakyzIIxgGr9EfYI5?=
 =?us-ascii?Q?U8md6yJ325noyMhPkvc4b/2ps4uHT6mZSt5OnSpErmLroGA10+uiJOsfO3no?=
 =?us-ascii?Q?45hNak4FLm8FzEl4SE3ayH40xdVkK/p4Z1cwep/ijxZpv2hB3Hn4T37D6GA/?=
 =?us-ascii?Q?5hAJgKoVtf3F6lWnN2MP+mDN1wbIjSUF80Rqe/MdI4/7Q0Z2lqODDpBfeHyO?=
 =?us-ascii?Q?WqAxIkBqF9rYBDk8lv0Xj045oo/rUJYwDLFKVpk0dWY4Atbz0Sklg8hArzV6?=
 =?us-ascii?Q?KpyfSHKtfhvjB9WVrozbJZsxCJ82Z37eeAKHFI86D6l8QWzgjtc/bJij8HBw?=
 =?us-ascii?Q?0/F8N1jVQ99KdFcW7lGJ1mHcmXtHPZwom9hNOMef4Tpmoj+TgAJxiqIvfPot?=
 =?us-ascii?Q?1deUHQVjxWB8sRvh19W9GYLQdoAvR0tdbk0Anuuw/DtkoNNjCRt42e31+Tw6?=
 =?us-ascii?Q?GHyJHII5oBUGT/zn3VPoovT9lCXBLiJsfdqrtbBWJyEPTYwPvEiv057s5y06?=
 =?us-ascii?Q?3f2P7a+NgCOAUQwILAhQ5a1tsAVuSVhB2XbNlTZcKRkjS5acwU1KnWHCkSH0?=
 =?us-ascii?Q?OR2mi3N/VMYkPgtRGwbKsWistG75QsYiIhLZjAg148vsRkovuRSIGVW2u5LE?=
 =?us-ascii?Q?7/AJmWMvlgKcctwAApwOyHjz8FjKu/Xum1fyn+8hhztxzqfhTvql3Pz71cJ7?=
 =?us-ascii?Q?oZ92Xg/FSb2fU+HbG9P+bwvSsbKeW1Hzj9HU62rm6khgYyl+YLKg31TZSj9f?=
 =?us-ascii?Q?V1ZdrxP2cWdgBcj2/twP0xX9n0YuZkTmuRrcEPN7JocNuqY6n8UEMRanOJRL?=
 =?us-ascii?Q?f8i8PEcVmVV0TFyO/7Jdkyfx97z93nAVdA6/gOibpKQHtE9oTpied9Lx0ZIp?=
 =?us-ascii?Q?PigJXvnfyNGTqLR/xME/aLsX2Y4CaOMN6y66r7SI5w=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3458f.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: d6954369-4a15-4603-d766-08db9dc9a3ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2023 19:55:56.4718
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8P220MB1028
Message-ID-Hash: FNWRRV3JAJ2REK2TX2IGEFQD6APUJUIM
X-Message-ID-Hash: FNWRRV3JAJ2REK2TX2IGEFQD6APUJUIM
X-MailFrom: herrmlm@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help with FPGA update and running GNU Radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/32TDYFDZGL2OPGSLUQVCQNIGHY5CCSN6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4848919013476012633=="

--===============4848919013476012633==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_LV3P220MB1054FE9556901835093CCC4EAE14ALV3P220MB1054NAMP_"

--_000_LV3P220MB1054FE9556901835093CCC4EAE14ALV3P220MB1054NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, this is what I get when I run uhd_usrp_probe.  Thanks for your help!

msalehi@invariant-corp.net@LTL0341-MS:~$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.4.0.0-265-ga=
2a04e31
[INFO] [X300] X300 initialization sequence...
Error: RuntimeError: Expected FPGA compatibility number 39.0, but got 36.0:
The FPGA image on your device is not compatible with this host code build.
Download the appropriate FPGA images for this version of UHD.
Please run:

 "/usr/local/lib/uhd/utils/uhd_images_downloader.py"

Then burn a new image to the on-board flash storage of your
USRP X3xx device using the image loader utility. Use this command:

"/usr/local/bin/uhd_image_loader" --args=3D"type=3Dx300,addr=3D192.168.40.2=
"

For more information, refer to the UHD manual:

 http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Tuesday, August 15, 2023 2:52 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: Help with FPGA update and running GNU Radio

On 15/08/2023 15:48, Michelle Salehi wrote:

Hi, the ettus x310 I am using ran fine 6 months ago.  I just powered it on =
today and my computer was having problems connecting to it.  It could ping =
and be seen in uhd_find_devices but got errors when I would do uhd_usrp_pro=
be.  So, I went through the steps of updating the FPGA.  Now when I try and=
 run my GNU Radio code, I get the following error even after I ran the uhd_=
images_downloader and "/usr/bin/uhd_image_loader" --args=3D"type=3Dx300,add=
r=3D192.168.40.2"  Any help would be appreciated.  Thank you!


Michelle



Executing: /usr/bin/python3 -u /home/msalehi@invariant-corp.net/Desktop/Fre=
q Noise GUI/GNU Radio Files/awgnTwoChannels.py

[INFO] [UHD] linux; GNU C++ version 9.2.1 20200304; Boost_107100; UHD_3.15.=
0.0-2build5
[INFO] [X300] X300 initialization sequence...
Traceback (most recent call last):
  File "/home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/GNU Radio F=
iles/awgnTwoChannels.py"<mailto:/home/msalehi@invariant-corp.net/Desktop/Fr=
eqNoiseGUI/GNURadioFiles/awgnTwoChannels.py>, line 466, in <module>
    main()
  File "/home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/GNU Radio F=
iles/awgnTwoChannels.py"<mailto:/home/msalehi@invariant-corp.net/Desktop/Fr=
eqNoiseGUI/GNURadioFiles/awgnTwoChannels.py>, line 444, in main
    tb =3D top_block_cls()
  File "/home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/GNU Radio F=
iles/awgnTwoChannels.py"<mailto:/home/msalehi@invariant-corp.net/Desktop/Fr=
eqNoiseGUI/GNURadioFiles/awgnTwoChannels.py>, line 142, in __init__
    self.uhd_usrp_sink_0 =3D uhd.usrp_sink(
RuntimeError: RuntimeError: Expected FPGA compatibility number 36, but got =
39:
The FPGA image on your device is not compatible with this host code build.
Download the appropriate FPGA images for this version of UHD.
Please run:

 "/usr/lib/uhd/utils/uhd_images_downloader.py"

Then burn a new image to the on-board flash storage of your
USRP X3xx device using the image loader utility. Use this command:

"/usr/bin/uhd_image_loader" --args=3D"type=3Dx300,addr=3D192.168.40.2"

For more information, refer to the UHD manual:

 http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>


After running the image downloader/loader, and power-cycling the X310, what=
 does uhd_usrp_probe return?  Include all the
  output, including the header that shows versions.



--_000_LV3P220MB1054FE9556901835093CCC4EAE14ALV3P220MB1054NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
Hi, this is what I get when I run uhd_usrp_probe.&nbsp; Thanks for your hel=
p!</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
msalehi@invariant-corp.net@LTL0341-MS:~$ uhd_usrp_probe
<div class=3D"ContentPasted0">[INFO] [UHD] linux; GNU C++ version 9.4.0; Bo=
ost_107100; UHD_4.4.0.0-265-ga2a04e31</div>
<div class=3D"ContentPasted0">[INFO] [X300] X300 initialization sequence...=
</div>
<div class=3D"ContentPasted0">Error: RuntimeError: Expected FPGA compatibil=
ity number 39.0, but got 36.0:</div>
<div class=3D"ContentPasted0">The FPGA image on your device is not compatib=
le with this host code build.</div>
<div class=3D"ContentPasted0">Download the appropriate FPGA images for this=
 version of UHD.</div>
<div class=3D"ContentPasted0">Please run:</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">&nbsp;&quot;/usr/local/lib/uhd/utils/uhd_imag=
es_downloader.py&quot;</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">Then burn a new image to the on-board flash s=
torage of your</div>
<div class=3D"ContentPasted0">USRP X3xx device using the image loader utili=
ty. Use this command:</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">&quot;/usr/local/bin/uhd_image_loader&quot; -=
-args=3D&quot;type=3Dx300,addr=3D192.168.40.2&quot;</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">For more information, refer to the UHD manual=
:</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">&nbsp;http://files.ettus.com/manual/page_usrp=
_x3x0.html#x3x0_flash</div>
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, August 15, 2023 2:52 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: Help with FPGA update and running GNU Radi=
o</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 15/08/2023 15:48, Michelle Salehi wrote=
:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Helvetica,sans=
-serif; font-size:12pt; color:rgb(0,0,0)">
<p class=3D"x_x_MsoNormal x_x_elementToProof x_x_ContentPasted1 x_ContentPa=
sted0" style=3D"margin:0in; font-size:11pt; font-family:Calibri,sans-serif;=
 color:rgb(36,36,36); background-color:rgb(255,255,255)">
Hi, the ettus x310 I am using ran fine 6 months ago.<span class=3D"x_Conten=
tPasted0" style=3D"margin:0px">&nbsp;<span class=3D"x_ContentPasted0">&nbsp=
;</span></span>I just powered it on today and my computer was having proble=
ms connecting to it.<span class=3D"x_ContentPasted0" style=3D"margin:0px">&=
nbsp;<span class=3D"x_ContentPasted0">&nbsp;</span></span>It
 could ping and be seen in uhd_find_devices but got errors when I would do =
uhd_usrp_probe.<span class=3D"x_ContentPasted0" style=3D"margin:0px">&nbsp;=
<span class=3D"x_ContentPasted0">&nbsp;</span></span>So, I went through the=
 steps of updating the FPGA.<span class=3D"x_ContentPasted0" style=3D"margi=
n:0px">&nbsp;<span class=3D"x_ContentPasted0">&nbsp;</span></span>Now
 when I try and run my GNU Radio code, I get the following error even after=
 I ran the uhd_images_downloader and &quot;/usr/bin/uhd_image_loader&quot; =
--args=3D&quot;type=3Dx300,addr=3D192.168.40.2&quot;&nbsp; Any help would b=
e appreciated.&nbsp; Thank you!</p>
<p class=3D"x_x_MsoNormal x_x_elementToProof x_x_ContentPasted1" style=3D"m=
argin:0in; font-size:11pt; font-family:Calibri,sans-serif; color:rgb(36,36,=
36); background-color:rgb(255,255,255)">
<br class=3D"x_ContentPasted0">
</p>
<p class=3D"x_x_MsoNormal x_x_elementToProof x_x_ContentPasted1 x_ContentPa=
sted0" style=3D"margin:0in; font-size:11pt; font-family:Calibri,sans-serif;=
 color:rgb(36,36,36); background-color:rgb(255,255,255)">
Michelle<br class=3D"x_ContentPasted0">
</p>
<p class=3D"x_x_MsoNormal x_ContentPasted0" style=3D"margin:0in; font-size:=
11pt; font-family:Calibri,sans-serif; color:rgb(36,36,36); background-color=
:rgb(255,255,255)">
&nbsp;</p>
<p class=3D"x_x_MsoNormal x_x_elementToProof x_x_ContentPasted0 x_ContentPa=
sted0" style=3D"margin:0in; font-size:11pt; font-family:Calibri,sans-serif;=
 color:rgb(36,36,36); background-color:rgb(255,255,255)">
Executing: /usr/bin/python3 -u /home/msalehi@invariant-corp.net/Desktop/Fre=
q Noise GUI/GNU Radio Files/awgnTwoChannels.py</p>
<div style=3D""><br class=3D"x_x_ContentPasted0 x_ContentPasted0">
</div>
<div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D"">[INFO] [UHD] =
linux; GNU C++ version 9.2.1 20200304; Boost_107100; UHD_3.15.0.0-2build5</=
div>
<div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D"">[INFO] [X300]=
 X300 initialization sequence...</div>
<div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D"">Traceback (mo=
st recent call last):</div>
<div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D"">&nbsp; File <=
a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailto:/home/msalehi@invariant-=
corp.net/Desktop/FreqNoiseGUI/GNURadioFiles/awgnTwoChannels.py">
&quot;/home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/GNU Radio Fil=
es/awgnTwoChannels.py&quot;</a>, line 466, in &lt;module&gt;</div>
<div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D"">&nbsp; &nbsp;=
 main()</div>
<div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D"">&nbsp; File <=
a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailto:/home/msalehi@invariant-=
corp.net/Desktop/FreqNoiseGUI/GNURadioFiles/awgnTwoChannels.py">
&quot;/home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/GNU Radio Fil=
es/awgnTwoChannels.py&quot;</a>, line 444, in main</div>
<div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D"">&nbsp; &nbsp;=
 tb =3D top_block_cls()</div>
<div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D"">&nbsp; File <=
a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailto:/home/msalehi@invariant-=
corp.net/Desktop/FreqNoiseGUI/GNURadioFiles/awgnTwoChannels.py">
&quot;/home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/GNU Radio Fil=
es/awgnTwoChannels.py&quot;</a>, line 142, in __init__</div>
<div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D"">&nbsp; &nbsp;=
 self.uhd_usrp_sink_0 =3D uhd.usrp_sink(</div>
<div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D"">RuntimeError:=
 RuntimeError: Expected FPGA compatibility number 36, but got 39:</div>
<div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D"">The FPGA imag=
e on your device is not compatible with this host code build.</div>
<div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D"">Download the =
appropriate FPGA images for this version of UHD.</div>
<div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D"">Please run:</=
div>
<div style=3D""><br class=3D"x_x_ContentPasted0 x_ContentPasted0">
</div>
<div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D"">&nbsp;&quot;/=
usr/lib/uhd/utils/uhd_images_downloader.py&quot;</div>
<div style=3D""><br class=3D"x_x_ContentPasted0 x_ContentPasted0">
</div>
<div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D"">Then burn a n=
ew image to the on-board flash storage of your</div>
<div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D"">USRP X3xx dev=
ice using the image loader utility. Use this command:</div>
<div style=3D""><br class=3D"x_x_ContentPasted0 x_ContentPasted0">
</div>
<div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D"">&quot;/usr/bi=
n/uhd_image_loader&quot; --args=3D&quot;type=3Dx300,addr=3D192.168.40.2&quo=
t;</div>
<div style=3D""><br class=3D"x_x_ContentPasted0 x_ContentPasted0">
</div>
<div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D"">For more info=
rmation, refer to the UHD manual:</div>
<div style=3D""><br class=3D"x_x_ContentPasted0 x_ContentPasted0">
</div>
<span class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D"">&nbsp;<a hre=
f=3D"http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash" original=
src=3D"http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash" shash=
=3D"MUzAiciCaMU1belH/SZPeBJ1ospa0BMng0JN1VRmD0oJ5iWmC7ohVy182S6xPFJe97sDZuT=
z6+HIziwrXwWwF8jFCM8STmILku/z6JR5MMnSKNst+m+xsjP5S1iBSNhDue5EXYh6ynUzERnIuC=
PWQFFgf3kA7RsCdyXSI7yASO0=3D" id=3D"LPlnk919139" class=3D"x_moz-txt-link-fr=
eetext">http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash</a></s=
pan><br>
</div>
<br>
<fieldset class=3D"x_moz-mime-attachment-header"></fieldset>
<pre class=3D"x_moz-quote-pre">____________________________________________=
___
USRP-users mailing list -- <a class=3D"x_moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"x_moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.=
com</a>
</pre>
</blockquote>
After running the image downloader/loader, and power-cycling the X310, what=
 does uhd_usrp_probe return?&nbsp; Include all the<br>
&nbsp; output, including the header that shows versions.<br>
<br>
<br>
</div>
</body>
</html>

--_000_LV3P220MB1054FE9556901835093CCC4EAE14ALV3P220MB1054NAMP_--

--===============4848919013476012633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4848919013476012633==--
