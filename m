Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B032A3BA0D2
	for <lists+usrp-users@lfdr.de>; Fri,  2 Jul 2021 15:00:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1EBAA384623
	for <lists+usrp-users@lfdr.de>; Fri,  2 Jul 2021 09:00:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=outlook.com header.i=@outlook.com header.b="IdKuMtk8";
	dkim-atps=neutral
Received: from APC01-PU1-obe.outbound.protection.outlook.com (mail-oln040092254077.outbound.protection.outlook.com [40.92.254.77])
	by mm2.emwd.com (Postfix) with ESMTPS id 27840384520
	for <USRP-users@lists.ettus.com>; Fri,  2 Jul 2021 08:59:52 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g8ojZe/OEHDR3V6CfUDouI9H+vFaK9599rNVcWsf2hx1DbjATr+p+1MD+zr0eh69cQsclHzwNVYe7vGQNitY39uaLE4vi6R6ZsezXHwV/wndeYNu5xQ40bEx9fGRXeytNMNUKDW0Dx5iM7QaFco+gOiYKJjRQlxQ8ultDZup2sBMei0wc0oG6j8HX0A0ZUsDdCXsOmtxAEIn2w1GZUFnu8k0rGKQqtJC2N/94CcIUqhmCGiC8Wj18NS6KEugSDRQUS3JYnlxuH5Pzu+T6XBsWOYYnQ0F4gmj49Gar4uycVEoIbuS6ufq0vaZKW/fg+iqNSD0gqYMqHF0tjOQyVQy5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z/l/QS8rUFszJZ7yp6gYF8tc3euIf+aRER0dmgrW5fo=;
 b=Ad+aEnq11V4NR3N1gfV7znXptLxTFsBahbEVwwrau5v7etU/4Szam3QBZOCWMmr8HozZMrMv3TpYCOhmagHowmu1yW2steo0IkD5G3OBy10rjjHkEQUrOSMgWzpm1QNaUuvjvSonBsasoOxfS6JiRilQBE0cmrxZEZosHGMnPfsaHI+BTuoB1yYmMLKwarKG4lZHrb5j00+STysc8c32baSguPy4aNqqKiiwCoCoUDEaN9M6GxswFLVFFhWkHx7oAL3nfpulFqmF+XW2CaTRIxShOjVcmIjFLsK/IKvw6KpKMfTnBwtklMWrZ83KWfauMiOon/gs+3qSlfYWz6F3gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z/l/QS8rUFszJZ7yp6gYF8tc3euIf+aRER0dmgrW5fo=;
 b=IdKuMtk8EoNR49LJcDN3oGjAzsiwaabmjnoTbK4H74oKLBGX+regFQbm2CrwtXASOHu28HOxS2nm+4lPQyqzs8IjVXrKXLRMBbexSCHe52GmlMDaj4kY/KbGL5lNs3X1LeMZNmUVUVQUDRNU2a8M8ABvs6a8zzH4tNqDjCXNRZAbeCKBDGhPW0WBYDw9Qv+5Uy+FgA7TcT4BkSquXzPe4iJ7hzZFt472zM9T57RHDKiXGgTBJRBFwKt1tVh37BrkUtp7nDPqJ5poJaajxe67xxCuhtnxA063GiJELNyOzdKqBtYrVYs3GZTgha2qth7cDtkyoJgdpYKY3neFpbA4OQ==
Received: from SL2P216CA0047.KORP216.PROD.OUTLOOK.COM (2603:1096:100:1a::33)
 by SG2PR06MB3548.apcprd06.prod.outlook.com (2603:1096:4:96::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22; Fri, 2 Jul
 2021 12:59:49 +0000
Received: from PU1APC01FT049.eop-APC01.prod.protection.outlook.com
 (2603:1096:100:1a:cafe::53) by SL2P216CA0047.outlook.office365.com
 (2603:1096:100:1a::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22 via Frontend
 Transport; Fri, 2 Jul 2021 12:59:48 +0000
Received: from TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM (2a01:111:e400:7ebe::4f)
 by PU1APC01FT049.mail.protection.outlook.com (2a01:111:e400:7ebe::265) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22 via Frontend
 Transport; Fri, 2 Jul 2021 12:59:48 +0000
Received: from TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM
 ([fe80::5c59:e887:13d9:1941]) by TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM
 ([fe80::5c59:e887:13d9:1941%4]) with mapi id 15.20.4287.026; Fri, 2 Jul 2021
 12:59:48 +0000
From: Oscar Pablo <oscar_pabloo@outlook.com>
To: =?Windows-1252?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>,
	"usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: [USRP-users] how to get time of last pps during streaming
Thread-Index: AQHXT3t89FZ0ao1brUOSkoP5IsRBrarxe6kAgD5kt3Q=
Date: Fri, 2 Jul 2021 12:59:48 +0000
Message-ID: 
 <TYYP286MB14079C6F1D2249EA826A090BF01F9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
References: 
 <TYYP286MB1407EBA5E5C751049DE906B5F0279@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>,<3e0a6f7f-ea86-91d4-8553-3ac641aa7774@ettus.com>
In-Reply-To: <3e0a6f7f-ea86-91d4-8553-3ac641aa7774@ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:EB040F6F1E9E4095B327D773AC72449D3AE3E4CC0371540CB9341DDB6D01B13C;UpperCasedChecksum:7E28C81E0ACF2DEB1604BC70A75755264B0CF4589AA8E98D556EC7450D887E83;SizeAsReceived:6971;Count:43
x-tmn: [VZ9LvjoiVVe77IwzKrwpJhFGoM+y3D0T]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 909b86df-50bc-4f5a-ea46-08d93d5945bb
x-ms-traffictypediagnostic: SG2PR06MB3548:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 bEnlc5e6nE4tPrxaeJUAA21Ntqdr463yRMMwFxn/NRRCrWFBmBlBZoPNf1Fk6eTYwHEB26RrxCpdSdanI8Q8Hy6e/TIK7fS3Keqa6wUvgE/YVnWhd+xBdTXRYSMjD9+oYbOhL21z+hXFAgXoUR05E4n6YFw3UJ2DgfiRYUreHMTWIKXm4lBuuafn4Xifcq55GZ0L17pVDBjR8eMAoDt3ZxcxyrPU5gyv4J24lsT9Khcd32MnyDnNf7RJWW5mPbK0XIVnpl7QayfYw6xSfukqRnyb36HY52ZdNY/4z0XZpdzVAf1vljg2Iio6mAvMpaJWYXhSCNVZtIDVnhZbLFAjjdz/t5QwIMJJhkd/ar6gXyPzYi8qU5JIntfD6EkrxCA9qIBt4f8Dw7iCj9bcpH8LgmcUO2JvrgvyKqcVFmXg3gOgUg9bSIjvKm2JLL+QuFFZ
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 Gob6QN+wc1zZeYQhRg7AHq2mF0CiDcpbcpjbT17f0ysW3Q499qWAJHRFVEmbjsgp/8hkmxGMEr4LpzpP3UV/yWzMsZBa7/OgJd5W0eIoeO8xzR6hrig9kZDsxgmATGWVn1bgYTDPPd3DXlER3hQxwA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: PU1APC01FT049.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 909b86df-50bc-4f5a-ea46-08d93d5945bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2021 12:59:48.0444
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR06MB3548
Message-ID-Hash: GSAOTDOCLP4BA5KQBHSUR67WULMHD5QB
X-Message-ID-Hash: GSAOTDOCLP4BA5KQBHSUR67WULMHD5QB
X-MailFrom: oscar_pabloo@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: how to get time of last pps during streaming
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZDXIZ7JJVNCGJV67P4RO7GP5FULVEQLN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5522365801905268165=="

--===============5522365801905268165==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TYYP286MB14079C6F1D2249EA826A090BF01F9TYYP286MB1407JPNP_"

--_000_TYYP286MB14079C6F1D2249EA826A090BF01F9TYYP286MB1407JPNP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

HI Marcus,
this timestamp in the metadata is not the accurate timestamp this timestamp=
 is computed from the the sample count so the accuracy is depend on the acc=
uracy of the on board crystal. so why i want to know the time of last pps b=
ecause usrp do not keep the time sync to PPS. the sync only happen when set=
 the time of PPS. for example when set next pps time to 0 seconds then afte=
r 1 hour the pps time should be 3600 seconds but for the error of the on bo=
ard crystal so the pps time is 3600+-error. so we need to keep to know the =
time of pps for long time sync.


________________________________
From: Marcus M=FCller <marcus.mueller@ettus.com>
Sent: Sunday, May 23, 2021 7:53 PM
To: Oscar Pablo <oscar_pabloo@outlook.com>; usrp-users@lists.ettus.com <USR=
P-users@lists.ettus.com>
Subject: Re: [USRP-users] how to get time of last pps during streaming

Hi Oscar,


the metadata contains a timestamp. That's literally a timestamp =96 If you =
know the time at
*any* PPS, for example because you set it, then you can directly infer the =
time at the
last PPS from the timestamp.

However, usually people care about the time of a sample, not the time at th=
e last PPS.


Best regards,

Marcus

On 23.05.21 04:36, Oscar Pablo wrote:
> Hi,
> i want to know the time of each pps during rx streaming. i don't know if =
i call
> get_time_last_pps will cause the overload? is there a way to let uhd put =
time of last
> pps in the meta data of the received data?
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_000_TYYP286MB14079C6F1D2249EA826A090BF01F9TYYP286MB1407JPNP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
HI Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
this timestamp in the metadata is not the accurate timestamp this timestamp=
 is computed from the the sample count so the accuracy is depend on the acc=
uracy of the on board crystal. so why i want to know the time of last pps b=
ecause usrp do not keep the time
 sync to PPS. the sync only happen when set the time of PPS. for example wh=
en set next pps time to 0 seconds then after 1 hour the pps time should be =
3600 seconds but for the error of the on board crystal so the pps time is 3=
600+-error. so we need to keep to
 know the time of pps for long time sync.<br>
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
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Marcus M=FCller &lt=
;marcus.mueller@ettus.com&gt;<br>
<b>Sent:</b> Sunday, May 23, 2021 7:53 PM<br>
<b>To:</b> Oscar Pablo &lt;oscar_pabloo@outlook.com&gt;; usrp-users@lists.e=
ttus.com &lt;USRP-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] how to get time of last pps during streami=
ng</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">Hi Oscar,<br>
<br>
<br>
the metadata contains a timestamp. That's literally a timestamp =96 If you =
know the time at<br>
*any* PPS, for example because you set it, then you can directly infer the =
time at the<br>
last PPS from the timestamp.<br>
<br>
However, usually people care about the time of a sample, not the time at th=
e last PPS.<br>
<br>
<br>
Best regards,<br>
<br>
Marcus<br>
<br>
On 23.05.21 04:36, Oscar Pablo wrote:<br>
&gt; Hi,<br>
&gt; i want to know the time of each pps during rx streaming. i don't know =
if i call<br>
&gt; get_time_last_pps will cause the overload? is there a way to let uhd p=
ut time of last<br>
&gt; pps in the meta data of the received data?<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- usrp-users@lists.ettus.com<br>
&gt; To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_TYYP286MB14079C6F1D2249EA826A090BF01F9TYYP286MB1407JPNP_--

--===============5522365801905268165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5522365801905268165==--
