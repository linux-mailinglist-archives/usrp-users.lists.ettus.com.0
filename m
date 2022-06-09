Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 44AEC545020
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jun 2022 17:06:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D0E043848B3
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jun 2022 11:06:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654787205; bh=VKSqlO1G1kl/3WcWObhs5+ITo4HdpYVQnrXXqw2C2jU=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ECbJT9nkfmE+qkNblM9PPvzNT7/NrsYfLGab2tSJFLZcTyT4epGz28NgaOOCQO2Ho
	 s9Kx/1xgJtLFTkdTf7rw/q9bJiEluoFLfnrvgH8eOOp7ps/1QNGxVASupJyWzdtdnc
	 6i3vBP7AgVvvO/rtVSt4CTCZxTJoVr/M6WSa/4QFZ7ivWBfpq7WquDV3CF7dlifWbC
	 crewCawEmCDME8D5vex61wLUsdfysme3WxYGTqwd4PvZB6fMWIzWlPfGw/k3iSw6rf
	 k+BvS7JdL8PhUsprdEYm0e8tqPc9qzzlG/kE3c/6AQu/NKZuA73BzjB7rdRYFYzfI9
	 T49FcSeD7Lu+Q==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0107.outbound.protection.office365.us [23.103.208.107])
	by mm2.emwd.com (Postfix) with ESMTPS id A17F7384397
	for <usrp-users@lists.ettus.com>; Thu,  9 Jun 2022 11:05:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=riversideresearch.org header.i=@riversideresearch.org header.b="CBAjJ57j";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=BE+hatsa7PY+mojFFt+pTovM5+TJS7pAuCS7ZihjpY+67zxG7fp0KibJyoWNnhnNvIyB7Gzcr5x5fgJK6SpHtcyTG1MMoMomdFn2V0Lm9mWrnmABj9FULeGuuZVYQkMDmJZzMskbi3pUnJtZiSxY3nZGIqabN4IoKgt4HzsS5x6aEC3eWjG0lWhilaesW43dnD/TXI+ZBoS/p0buL4Y9fnuR2N5B8UfrXUk0c13D+/MS1NzeefvYKksYVViqm/xnmS7RRtdLlUGvFTkl37VQx3/oni0xr0xIJE1riw+LbnDgYwrz2aeBPeyc2RDduR+Yz1b+J07iVvWFa0DtogeSkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RAQsB7Rm4g4FzVHhGeANZhOk3cGw3pt/DLgkbq2GzvE=;
 b=t3DYLlKlZ52lqXoEVzPwYoofpL8V/c3AIMv++ZhvI+DRLzrPT/AbJMpIqOKlC1+cj/YgY+kPPmDtL8xwB/eKkarer1aLopzwtUWD6I+CYwn/ozdwpoGAj3kedx0fBKSp9j0xrl1gRRuZT9/GS4Vhzjo42hS349hfRnuc3aoITU61s685qyafaYb++c+KxyD0yC1rpSSKYfaJOkkRX5HBh+k9LkOVkE7WYo/qd5gotCeRhZSpD7J21EdUbmMYGzUO68+bOF9feh2YC4mBkgMon22swYRmqzALseyVGYkToRrKpVd2SRVskAuRl0dAdmt20U2Mb/BemdOS0opwmJlqOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=riversideresearch.org; dmarc=pass action=none
 header.from=riversideresearch.org; dkim=pass header.d=riversideresearch.org;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=riversideresearch.org;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RAQsB7Rm4g4FzVHhGeANZhOk3cGw3pt/DLgkbq2GzvE=;
 b=CBAjJ57jZhB7NVT/wHL+8mIs3WPwCPGWA0fFOqi0YaBG6yIuebSa1x/OkH4J+0rcP399y20IBpYF082IkkgO3ixETny8mKruZyS+xpqRhOTFBNurJ+R6zMqhcolFzkYZwMr8yd44sorkAFhhM8L3XK6yuQRG3KLFZlvpQ/wF35BgQqwKf7dYBvdXqOFsxvFpa6U9G+50MEBJgaBE5NbJbbROIYseV70IRHL9peY9qQvpVCBYn1yutpyZngUoo1+jAv1ZdaSxW8I46AdvCSspRqN+GlTCCCZfuOzu5Vyws94DzgePq9xbpIuFqMp3041bsKLWZ85fOvY79SQlaJ6N9A==
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:16f::9)
 by BN0P110MB1212.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:183::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.13; Thu, 9 Jun
 2022 15:05:33 +0000
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::b4fc:1671:39ef:7b52]) by BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::b4fc:1671:39ef:7b52%5]) with mapi id 15.20.5332.013; Thu, 9 Jun 2022
 15:05:33 +0000
From: "White, Joshua J" <jjwhite@RiversideResearch.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: GPIO on N310
Thread-Index: AQHYfBEcvmnHTwWqvk2u+zNGDMHWJg==
Date: Thu, 9 Jun 2022 15:05:33 +0000
Message-ID: 
 <BN0P110MB1015237F05BE51B9B8EA3F8FB1A79@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 315b5eef-298d-daab-4f60-13b412e72c08
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=RiversideResearch.org;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 305b5af6-645d-4be1-ca83-08da4a298061
x-ms-traffictypediagnostic: BN0P110MB1212:EE_
x-microsoft-antispam-prvs: 
 <BN0P110MB121263A6E8A65D35D72827FEB1A79@BN0P110MB1212.NAMP110.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Yq9RehjElyublbbLDBOWRMc7UjxXK0XB8qgFInNHiqA5XjWtjZESh5xvYIDfpjOvcVWD1bra8qz3RIHhP1TtkJAqGgNhpw5CLUCYubKlXyrlcxYtZt4MZEVMJbPUS+9yVz6+T5ndwTZClEacdtfZpZLTZYMXbXahFFNX4+DZ2P4/hOIxLj0ltuwpqhzxNTzZJG7eCfBkrzSPI/qFv3uAihOCzzC8TWBEOSjd7zFWvZkFeTKW22oCknLJRNI8iGoi+NcmQevjxsxg790h1+Q33JUZ9w3V6O4eNJxR+U1RVwJivzX0pcgR2nuMf6Payuvtk5uxr1CzX8Azucyf5DYZ1FG7ni+LmlzY7PxIoDgmEB+Rek/hju2WcLU/x2UACRJlxLnIuhbDnhEWV11sjrlnHBHmZdRpb8hkWoegp0xoDiAgSD42M+cAHzUNSs+u53EdHrKi1tevF0odzR3qgiTP7pFWXyweKsbwMG66UeE5DZAyoGTNZCL65YCf+oIEXp/OHTrmUoeFGk/FgvMtzbeMh0LCa4+agoOxfLUf1lfqtEE3yGM9RGWl0a0HXSJR4TJ8U4klovPJdqQcz1XR4ODKOU4fB7Q0WwEGWSfGUg4aLDAPTp5MOe5srWf18EZsw0SufahysiyyFyiejzzNx/JTpiHAdg+DcDdB2WR7/WUz1zlYkXQ+fwEatHnMTTd/zB+pHM0e4WVvPP3+Mg3PXeIKCvJRq6NIR6MUrNVXfgvr35c=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(366004)(5660300002)(66556008)(66476007)(66446008)(64756008)(66946007)(52536014)(76116006)(8676002)(316002)(86362001)(186003)(8936002)(7116003)(19627405001)(55016003)(83380400001)(33656002)(38100700002)(71200400001)(9686003)(166002)(26005)(82960400001)(2906002)(40140700001)(122000001)(7696005)(38070700005)(6506007)(508600001)(6916009)(85282002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 7wlGteKBPiUGonWEDCMb+5JARnFYaaXM8GXFDP7gFjkByBj827Xf7GZkAQDJhrkmDPXJsQdqSLWIa2I7bXLq1dSAXxYRIVKTXgGg8J+AzhxXJi3Nz/QvImSM852uBFOJjkiyA47Y2GSuz8SvGjB69EWKLyZUJSFtYRwBudjZ3u241BAH9Zxz9Otz4eVwfc4XVQ5kswZ3zYA6DHId46WXxWBRxBy49IZApp46LN7nA9GpmlGyMvbDefIMa7Uq3rg0ehauy7e1tesU5hFferVJSgtX4Am2MLWfNHpGBVovXrOPrU6oi4CJ1m0MbK/VR9SB777sNBBFRriTlwkUNG6Vf0RU45vXB5syl/PaLEHsQc/cJMtjMCdP6G5Wckp+Vn+wonn0qbyPCCjVOElAlScY28bqjvOg6BEqMw86PfZLbAs=
MIME-Version: 1.0
X-OriginatorOrg: riversideresearch.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 305b5af6-645d-4be1-ca83-08da4a298061
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2022 15:05:33.3884
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bfc64a8d-9064-4c64-91c3-9d10b44c1cb6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1212
Message-ID-Hash: XZE5CJOD3AEYRFYCEAG7W34GZPTQ6HUM
X-Message-ID-Hash: XZE5CJOD3AEYRFYCEAG7W34GZPTQ6HUM
X-MailFrom: jjwhite@RiversideResearch.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] GPIO on N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NMLTET7UPHDE4M3NNGOVVSP6JILJZOPJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7660371151019451181=="

--===============7660371151019451181==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN0P110MB1015237F05BE51B9B8EA3F8FB1A79BN0P110MB1015NAMP_"

--_000_BN0P110MB1015237F05BE51B9B8EA3F8FB1A79BN0P110MB1015NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

Apologies if this question is too basic, but I have not been able to find a=
 definitive answer in the N310 documentation. Is it possible to stream data=
 or signals to or from the USRP using the GPIO ports, or is it only useful =
for status and triggering? Specifically, is it possible to use the GPIO to =
stream an arbitrary waveform to the N310, digitize it, and then modulate an=
d transmit it? Conversely, is it possible to receive a signal, demodulate a=
nd stream it to the GPIO?



Very respectfully,



Joshua White

Precision Timing Systems Engineer

Engineering & Support Solutions Directorate

www.riversideresearch.org<http://www.riversideresearch.org/>

T: 937.986.3153 | F: 937.431.3811



This e-mail message, including any attachments, is for the sole use of the =
intended recipient(s) and may contain proprietary, confidential or privileg=
ed information or otherwise be protected by law. Any unauthorized review, u=
se, disclosure or distribution is prohibited. If you are not the intended r=
ecipient, please notify the sender and destroy all copies and the original =
message.



--_000_BN0P110MB1015237F05BE51B9B8EA3F8FB1A79BN0P110MB1015NAMP_
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
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Apologies if this question is too basic, but I have not been able to find a=
 definitive answer in the N310 documentation. Is it possible to stream data=
 or signals to or from the USRP using the GPIO ports, or is it only useful =
for status and triggering? Specifically,
 is it possible to use the GPIO to stream an arbitrary waveform to the N310=
, digitize it, and then modulate and transmit it? Conversely, is it possibl=
e to receive a signal, demodulate and stream it to the GPIO?</div>
<div>
<div id=3D"Signature">
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<p style=3D"margin:0in; font-size:11pt; font-family:Calibri,sans-serif">&nb=
sp;</p>
<p style=3D"margin:0in; font-size:11pt; font-family:Calibri,sans-serif"></p=
>
<p style=3D"margin:0in; font-size:11pt"><span style=3D"color:#1F497D">Very =
respectfully,&nbsp;</span></p>
<p style=3D"margin:0in; font-size:11pt"><b><span style=3D"color:#1F497D">&n=
bsp;</span></b></p>
<p style=3D"margin:0in; font-size:11pt"><b><span style=3D"color:#1F497D">Jo=
shua White&nbsp;</span></b></p>
<p style=3D"margin:0in; font-size:11pt"><span style=3D"color:#1F497D">Preci=
sion Timing Systems Engineer&nbsp;</span></p>
<p style=3D"margin:0in; font-size:11pt"><span style=3D"color:#1F497D">Engin=
eering &amp; Support Solutions Directorate&nbsp;</span></p>
<p style=3D"margin:0in; font-size:11pt"><span style=3D"color:#1F497D"><a hr=
ef=3D"http://www.riversideresearch.org/" rel=3D"noreferrer" data-ss16497724=
10=3D"1" data-ss1654786279=3D"1"><span style=3D"color:blue">www.riversidere=
search.org</span></a>&nbsp;</span></p>
<p style=3D"margin:0in; font-size:11pt"><span style=3D"color:#1F497D">T: 93=
7.986.3153 | F: 937.431.3811&nbsp;</span></p>
<p style=3D"margin:0in; font-size:11pt"><span style=3D"color:black">&nbsp;<=
/span></p>
<p style=3D"margin:0in; font-size:11pt"><span style=3D"font-size:9.0pt; col=
or:#1F497D">This e-mail message, including any attachments, is for the sole=
 use of the intended recipient(s) and may contain proprietary, confidential=
 or privileged information or otherwise
 be protected by law. Any unauthorized review, use, disclosure or distribut=
ion is prohibited. If you are not the intended recipient, please notify the=
 sender and destroy all copies and the original message.</span><span style=
=3D"color:#1F497D">&nbsp;</span></p>
<br>
<p></p>
<br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BN0P110MB1015237F05BE51B9B8EA3F8FB1A79BN0P110MB1015NAMP_--

--===============7660371151019451181==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7660371151019451181==--
