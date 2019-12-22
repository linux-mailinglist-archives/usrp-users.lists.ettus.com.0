Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B892A128EF1
	for <lists+usrp-users@lfdr.de>; Sun, 22 Dec 2019 17:52:16 +0100 (CET)
Received: from [::1] (port=59834 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ij4Sl-00073W-Om; Sun, 22 Dec 2019 11:52:15 -0500
Received: from mail-oln040092255075.outbound.protection.outlook.com
 ([40.92.255.75]:34939 helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <snehasish.cse@live.com>)
 id 1ij4Sg-0006vv-SN
 for usrp-users@lists.ettus.com; Sun, 22 Dec 2019 11:52:11 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BfxtndBJFUl9YyOjqFv/GWsKITAsoMONg3tQnuzU4qoSdPiRPVwQAtJIKfRbKrgqCsuk76LBCpXLf1l1o9KeesVz0XB2jUGXrT0pEgc/v15nToZMOlxwdCj5M+Y5f9D5L1iB2GnY8EtlEYLQdgJkaUSEGEy0+GDdlyEo50VQG5X7sBM23fILflPawt9Ta4xOGkg9tVWEn2OjUS1J2KlcwGrQPWG+pAzrJ/k4zDwKaXvpCvjHMzEB87zQwLqCChvTtv9Pbec9/LoIARAk4WXCpwyUDMQOSPFAoEMb2IC1a9a0RukOIY8VmMlqP/vtAm3AlcUFHaTAo2LOLY7+JZxjGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=37WBtp+/QCb0FeR4GcioyRZgMqq29rD17labS4WgPGQ=;
 b=acFfuKa6IiaWI0+hisrdulGwXx56S/wwKxlSvGHYTWbwhBkFm+E5dUCx1by/qtFNs/XcUtPAscA2Bao3HVnbRoH4/pfpnbYyKgt69o3qw+hnjekwu0r4j6I7654afhJdfkiaD2GEpDjy5BcERhbTX5UeQ+yJ/Ty3VtjJ1bwWzqteb8PzllOdy6ruux9Rf0Qy0fEAEowWENES0VtkruxKlOq7iIkTeMLLyAaxA84MwRB06cqoMNb48o9Fi/2Si+QFZbaijDN4tkAGDxvECIZSZ5r32OXuvGxBr2xUudQJUfmAQp4b96VhaKVfdXugcq7KEDLGV/l8MCfXbb8aB3LS/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=37WBtp+/QCb0FeR4GcioyRZgMqq29rD17labS4WgPGQ=;
 b=Ao18533XLJ1JajCf4VlBiCpi1uLaAQOB/vZ98D+6fcf0yu3gkru9tpFdHs90RAObUSCgJV0qePzZffgzVajJUWC/3bo3RQtIE84tCyTisqDhwPQtZxjfUXEfTNGVewBeuiYLrCGmSL6n6pgXVhQDgk9R9+20zcFzHT2vanEZaHiD6pIEZ7KW9+sewfNAprP9kvwgcErUodV8SgZdkR6RiCgGzME5BWHERjC8eiwkwVNf1sTebq7aBlN0Enm1rNpjxFOro+9UDQUJePqHpOtH6Li3BQwIrbgHFBsgnRl6nxHJNdf3nHTgUCeRNJL9l/EOI2FnmEt0U3glphUf13STfw==
Received: from PU1APC01FT020.eop-APC01.prod.protection.outlook.com
 (10.152.252.55) by PU1APC01HT245.eop-APC01.prod.protection.outlook.com
 (10.152.252.170) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14; Sun, 22 Dec
 2019 16:51:27 +0000
Received: from BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM (10.152.252.57) by
 PU1APC01FT020.mail.protection.outlook.com (10.152.252.217) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14 via Frontend Transport; Sun, 22 Dec 2019 16:51:27 +0000
Received: from BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::adfe:c8d4:6ece:3921]) by BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::adfe:c8d4:6ece:3921%7]) with mapi id 15.20.2559.017; Sun, 22 Dec 2019
 16:51:26 +0000
To: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
CC: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] uhd error
Thread-Index: AQHVuOKvYn/9f3QiwES8Sbxnhcdh+qfGXIcAgAAAkWw=
Date: Sun, 22 Dec 2019 16:51:25 +0000
Message-ID: <BMXPR01MB394408F89BBBADCA47FAD4FC882F0@BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM>
References: <BMXPR01MB3944A65A50C00946F7389A26882F0@BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM>,
 <5DFF9D8C.9090906@gmail.com>
In-Reply-To: <5DFF9D8C.9090906@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:C3DB86B6F1227F1D469C105F29386957D6F891D2A812BD2B8C4A226C32F15FA9;
 UpperCasedChecksum:9AA5B7BD81DE00E0B42F2FF7581BB98111714B79F659E70497E2498F18013545;
 SizeAsReceived:6963; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [e40lc+R2Y1CKW+lMdePx2WWxU30AOPYK]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 78196993-a608-45d1-3431-08d786ff2f12
x-ms-traffictypediagnostic: PU1APC01HT245:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ys7Gfaas/lxegh8hqZ0iTibls8AhWUX0Yh3TAK+lRG89M0/d05DHQr6Nf6H7NM/WdylSHrUp53LH0GhlrCWwln0cCL3m8HxlfPgKh1Uq/QpD4pWKs9VfzgzOVsK1OzF/BTXb/2JZ5rFob238M4e1q8QTqdIW+4FxRndfAsCw5NBqhtuK198wIGwXWsdwNgSR
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 78196993-a608-45d1-3431-08d786ff2f12
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2019 16:51:25.9489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT245
Subject: Re: [USRP-users] uhd error
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
From: Snehasish Kar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Snehasish Kar <snehasish.cse@live.com>
Content-Type: multipart/mixed; boundary="===============7629881344155682420=="
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

--===============7629881344155682420==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB394408F89BBBADCA47FAD4FC882F0BMXPR01MB3944INDP_"

--_000_BMXPR01MB394408F89BBBADCA47FAD4FC882F0BMXPR01MB3944INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Marcus

I am running at a sample rate of 2e6. What I am doing is tuning the usrp an=
d streaming samples for 1 sec and then stopping the stream and re-tuning to=
 another frequency and doing the same. My ethernet controller details are a=
s follows: Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gi=
gabit Ethernet Controller (rev 07).

Regards
Snehasish
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus D=
. Leech via USRP-users <usrp-users@lists.ettus.com>
Sent: Sunday, December 22, 2019 10:15 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] uhd error

On 12/22/2019 11:15 AM, Snehasish Kar via USRP-users wrote:
Hello

Does anyone have a idea why the following error occurs
terminate called after throwing an instance of 'uhd::io_error'
  what():  EnvironmentError: IOError: [0/Radio_1] sr_write() failed: Enviro=
nmentError: IOError: Block ctrl (CE_02_Port_50) no response packet - Assert=
ionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [wit=
h uhd::endianness_t _endianness =3D (uhd::endianness_t)0u; uint64_t =3D lon=
g unsigned int]
  at /home/snehasish/dsp_dev/uhd-3.14.1.1/host/lib/rfnoc/ctrl_iface.cpp:142

Aborted (core dumped)

I am using uhd-3.14.1.1 with NI USRP 2955.

Regards
Snehasish
What sample rate are you running at?  Why type of network card do you have?=
   There are some Intel network chips that drop packets
  silently, and that can cause this problem.




--_000_BMXPR01MB394408F89BBBADCA47FAD4FC882F0BMXPR01MB3944INDP_
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
<div style=3D"font-family: Calibri,Helvetica,sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hello Marcus<br>
<br>
I am running at a sample rate of 2e6. What I am doing is tuning the usrp an=
d streaming samples for 1 sec and then stopping the stream and re-tuning to=
 another frequency and doing the same. My ethernet controller details are a=
s follows: Realtek Semiconductor
 Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller (rev 0=
7).<br>
<br>
Regards<br>
Snehasish<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Marcus D. Leech via USRP-user=
s &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Sunday, December 22, 2019 10:15 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] uhd error</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 12/22/2019 11:15 AM, Snehasish Kar via =
USRP-users wrote:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
Hello <br>
<br>
Does anyone have a idea why the following error occurs<br>
<span>terminate called after throwing an instance of 'uhd::io_error'<br>
</span>
<div>&nbsp; what(): &nbsp;EnvironmentError: IOError: [0/Radio_1] sr_write()=
 failed: EnvironmentError: IOError: Block ctrl (CE_02_Port_50) no response =
packet - AssertionError: bool(buff)<br>
</div>
<div>&nbsp; in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bo=
ol, double) [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0u; =
uint64_t =3D long unsigned int]<br>
</div>
<div>&nbsp; at /home/snehasish/dsp_dev/uhd-3.14.1.1/host/lib/rfnoc/ctrl_ifa=
ce.cpp:142<br>
</div>
<div><br>
</div>
<div>Aborted (core dumped)<br>
</div>
<span></span><br>
I am using uhd-3.14.1.1 with NI USRP 2955.<br>
<br>
Regards<br>
Snehasish<br>
</div>
</blockquote>
What sample rate are you running at?&nbsp; Why type of network card do you =
have?&nbsp;&nbsp; There are some Intel network chips that drop packets<br>
&nbsp; silently, and that can cause this problem.<br>
<br>
<br>
<br>
</div>
</body>
</html>

--_000_BMXPR01MB394408F89BBBADCA47FAD4FC882F0BMXPR01MB3944INDP_--


--===============7629881344155682420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7629881344155682420==--

