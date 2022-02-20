Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C344BD073
	for <lists+usrp-users@lfdr.de>; Sun, 20 Feb 2022 18:43:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 76029384923
	for <lists+usrp-users@lfdr.de>; Sun, 20 Feb 2022 12:43:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=outlook.com header.i=@outlook.com header.b="QmFirLBs";
	dkim-atps=neutral
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01olkn2077.outbound.protection.outlook.com [40.92.99.77])
	by mm2.emwd.com (Postfix) with ESMTPS id A0EE83842E6
	for <USRP-users@lists.ettus.com>; Sun, 20 Feb 2022 12:42:40 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=caYC/GFQ69FkIMm8bNkjyX1OoP5eFtD1tDe1RRVhxvHsz0nNhN4b1kUqyRMNfOKE4eiMmhv7fkKTC6o/VG82loZfkUN5wh1I95OQEZKzkmsadpJ35XSLHWAgHwbDin6/nQI4vxkLGSkOTfnlrWv6cH+hUJ07+SRu/2jPYzF8xYdHL19YUWjSEQpi/A7RZLogXjl6boxng7l1vYJQLGDRYIjMdc9j+2eHOCQvo/FiRUV/EIXVGPjobsOLPJZUjxlj8r63KdH78qHJC44Aa18Inv9VHdroM2637kC4kgTxWB2DGNjuZN1IkpwtDS8SqICV6siBFhO3s0moJ83FAY9AiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xXtm0oSXK8xZom+oUg0oTS78d3t9e1esFY2YkrJV7Y4=;
 b=TMT/EA35epo+XsntWvVGZQxvef7+ef5xS/Zts0264Ll8UcdHhV5YFlt5C4naS1yBifSt4nlyoVeGEtU8t8FAck2hey5Pyf3EvGmr4L74nZWN01UF+5gW2T69nlewfQU6Ayb8CmY2jJOObWwlVTbB+YtS2+mD9+Sjckl+WjyJ3UEFMAJDhCkdnU9x5qlPTzfY60Jfx6H9sPO+ybqmvuAXtX6vN0SOkBDuYn3XHlcE0fHZSAj1Udb6WLxhLvVe73MZdOf7XO9qP4ku20UBcP4IlrUm6sAHNGk41mNO/MLWh4vDw1/+6e1qMic1hwlFqv2k4M2p+9aMMqfGRGi481qSUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xXtm0oSXK8xZom+oUg0oTS78d3t9e1esFY2YkrJV7Y4=;
 b=QmFirLBsGQLWA1GO+9T7+0LxbjZCpqqkNvbEKnPVS0NYJ45TMM9T+7wgqkXo1744Fl6RoXUkbGYEyYwE8/Q+OUuhi+XCtZ1Azw3VdzmQCteEidVJeTlUWFkt+TFi/EjbgwqHJsczopHtdOwbtGubOdS6LXwvwntZf5zKgzfnuOUPLZmP0tRt/mfQEEOCZOSzRuuMNeyjKVh8TFcsDp2tda+tWY/HrU3CzIGQnkhq7gVThnOZSoDbnj9Mp/Em5k41GFnFyIF+XLthmKD+eEXXbSYh2FNtVjkcsq47K2tUuBkiXckx9hj8xlpcQN/78ch5A8r/bkKtyoEHG2gMdrCbVQ==
Received: from TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM (13.101.167.133) by
 OSZP286MB1257.JPNP286.PROD.OUTLOOK.COM (10.242.8.70) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4995.16; Sun, 20 Feb 2022 17:42:37 +0000
Received: from TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM
 ([fe80::292f:f159:2793:8e6f]) by TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM
 ([fe80::292f:f159:2793:8e6f%5]) with mapi id 15.20.4995.026; Sun, 20 Feb 2022
 17:42:37 +0000
From: pro jason <jason_proj@outlook.com>
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: USRP X310 with UBX-160 and TwinRX
Thread-Index: AQHYJoBe1zDmUKBaCEiv3sioc7K2mA==
Date: Sun, 20 Feb 2022 17:42:37 +0000
Message-ID: 
 <TYCP286MB09911415D343ED9C49E64CEAFD399@TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 62141604-7afa-b5e1-d61e-e2bb0622fe7d
x-tmn: [adlSv8uFQN0ihaWH5RdgJywL61P3d4Ii]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 738890b0-dab0-43aa-05d9-08d9f4986286
x-ms-exchange-slblob-mailprops: 
 Eluf6BVNkXmjI88gO++Vl7hZOr6XtKrXx0jKWA3IgH2BzXiF4+AgjOQ5b6SeaDsx59X2xEPveq6GxtN8OWLvfOmyqp92FCXH+yroVgzAmjN6tHFrf96V9CsV5ojcZjgnsM6dhJRkhe5TWMl1bn+GNNaYwixipx1M5iyJnU9GBKQLbtN/vxSMQd6HHKi9IDUpu4E1WS5m3dPxBHB/8conys8rd/vj3iecctE6u9ejMR0GdNCt8LbQfbxJLqbCeHwWowKIbKTD5RAc2o2qjvWmirVmXizXmyJ53xc8tAge7FofcDp4O9a4gOtmvsTZ9hGuDv5bvDIAME9ZjiNM7rZKfShj66KOtlrmQp6yb2ac/+WpZIoG+1qoInzmw/+Q4rXaKXIhkLRaOZ3DSrdKvrh/K+CE+UNV1hhqnfUkyiQgdpOXshR5jDeHjOrT0r17h25VphFztmLLCiV3Zr8yFcX5dfVdVhnY/FuHLndQoZUnlOT9T1nGKf+rcR6Q6iYg9mdq8ht5vnAdgjEurXveoRs+MEFB2CjqsFF476Z0Sl2uebq63zTsOcwg4QfyRU7xzTN9G22mKD5gsNENmssH9S0eGUPQ8cybaIzzwwiziIGF8odzLEdvHALIrCa1tZ4quE9KSKc61QNgwv5rNh6Mi6DkTTHGx6wxb9S0
x-ms-traffictypediagnostic: OSZP286MB1257:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 8nB0VuCE+2g3gZE9X+npKbl7bPNfVl6r5xN3PK57HbD1B4nYdB+zDyR2Gf5ydTj2hxsAsD9PvxFisyVuzqNd518l+PAbLim4pHuPPuLKShH4nTwkGN+Z5P6g0yBSaXdvjrIMPeE+MXpchNNUlwHtuN8VAI9GAPavMGbVP+TjIpqSnw4K0mpJzukq3krjE+QtLmKJ1MPCxhF6Zhtxinkjs5XdZEKJSA5yQgPnzs+VlG3WHaQaXk4fCCgkVu9y2xu/fsq0G7Ca5ZVc2xgNrK6Txr7Xl4Yp5bxnMI72lxmTUGEOcGf3JEDUN0b8kHdr5isVA25a5Eu66nxe+drlpMm+1SJQZbgjBj8PlFDsb8nu0nwcEiN8dohlgi/l/zjcofYSClK2AHgukA/U8+kd5OwOE/lBesQ18FNjWPHmiuaJ64kX0kchG0+4u0UszFTxr7qY3SKjkeZMbVgTtwfltiuDHxrTZx6kir7Y/cbkYhWy/dmLCqydrxIeHTwklRYP7y775J99Vq1zkns3jAscnrbzT+ZtFhkR111gGIYFc36YM0ZYyZMcg0HNAT6f0hA/ZLmaGEQZtJlV5s6bmCSvgqAr3w==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 Q217rQrRFvV0pqRl7efhufs76ZJwptnefG56XZwPCYxB5uwNTE2SRxPFqgV50RKrzh4s90DGfI/fzn/6mszvH/qo3naKx6I7jRnUmmduTyjT1MNrIHO0l2rZV/zX44UasUlTRp5DkfY4xRuONi7OTVVXxE4c9Ndc90Na30DXEINgyP97gyEbPkPUkRnmF4FHz9/bcR5hjAp50Lf0pE5dXZGKRA9puW2UVL9MdR+j8J3GG3wNPCOG5PHUtlFDXBwtKmPLW2hHQ5VABpdIEKOPc7vo7opmUl2NW4HIwxlkFeJaw9wGi9wPMTqfRhwzG0CsCQgUFl1raPnqZmtp5qT100SVvTF8W0erNuGwGoLFE6yYRUl5a41Jso/84DadQZu5QuUJpEMduh+KXNHn7RYIr9XmF/4kWDLCXm0ajEhnjfvFHYuXGCpcKY2uE8SrMvNkJCRJf4YXJaDfFN/QEgYEEG4LlX9+N8QNHNqTJRLFpDediBi722cmWEVorOB6XFEGRsZEU98fTOZQmI0tSvG7PBSpwwcF9l0oqZdn6DRj3t87/jxOxscc6+MZInGknM8VYwsvnN+H1qTnR+UtD2PtACEzxi8FHeWqB6i0AEmw9ueqEi4j6J0678IKrSaksUhn12uZHh3kozwKR7NPTvHCID/JLjyaPWdhLFCdooquFCy4wJP3QdZqjaQiEjUx+D9zK+9nxjiFtzkOwy+DoOlcfrk4PWi458xqByalUnOsift13rXPyPwF+KbROnwF53svokvgKbFFWCiwPnRkTsNR7RG9GWh2RwLTdYoHyirGBi8MGZxPcUWgUDFjvomdWwAG6AYJtOlaqBn+I2bZrp9aIo6wMjzsyQ3AVJYF3/4KN8AEc9oSl4cAnOqnaiv9/rvtUgoW0dhcmdY1loll7HNBXbnRcZnYlcapnzQNsLNuP5rZkfs9M2w1CAZ/phYzCMJu
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 738890b0-dab0-43aa-05d9-08d9f4986286
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2022 17:42:37.4011
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZP286MB1257
Message-ID-Hash: ZGRRRZ7RN4BD6AE7OPEK77RNFA7VX53B
X-Message-ID-Hash: ZGRRRZ7RN4BD6AE7OPEK77RNFA7VX53B
X-MailFrom: jason_proj@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: pro jason <jason_proj@outlook.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP X310 with UBX-160 and TwinRX
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/65TTQ5PY2GPANFAJ77ECQF5Y5VXVCQRB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7528275229450859819=="

--===============7528275229450859819==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TYCP286MB09911415D343ED9C49E64CEAFD399TYCP286MB0991JPNP_"

--_000_TYCP286MB09911415D343ED9C49E64CEAFD399TYCP286MB0991JPNP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

We plan to use a x310 with a UBX-160 and a TwinRX  to realize the system of=
 one TX channel and two RX channels. The TX channel is provided by UBX and =
the two RX channels are provided by TwinRX. Does UHD driver support this co=
nfiguration?

Best regards,
Jason

--_000_TYCP286MB09911415D343ED9C49E64CEAFD399TYCP286MB0991JPNP_
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
Hi all,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
We plan to use a x310 with a UBX-160 and a TwinRX&nbsp; to realize the syst=
em of one TX channel and two RX channels. The TX
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t">channel</span> is provided by UBX and the two RX
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t">channels</span> are provided by
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t">TwinRX</span>. Does UHD driver support this configuration?<br>
<span></span><span></span><span></span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Best regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jason
<div></div>
</div>
</body>
</html>

--_000_TYCP286MB09911415D343ED9C49E64CEAFD399TYCP286MB0991JPNP_--

--===============7528275229450859819==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7528275229450859819==--
