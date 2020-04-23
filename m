Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 259661B557F
	for <lists+usrp-users@lfdr.de>; Thu, 23 Apr 2020 09:19:13 +0200 (CEST)
Received: from [::1] (port=48644 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jRW8X-00026U-TU; Thu, 23 Apr 2020 03:19:05 -0400
Received: from mail-oln040092253042.outbound.protection.outlook.com
 ([40.92.253.42]:40640 helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@live.com>)
 id 1jRW8U-000229-EY
 for usrp-users@lists.ettus.com; Thu, 23 Apr 2020 03:19:02 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zw7H9hjDuzm3L6Y9DwZQkZsmsKnZwEjg+s4BNSImuDPHvPIo1uALJFGtLGCv50RVIDxr+SWiKktVSD/XUS5BLbvn9InG6jD8oqrGdwliWrwlMfGLanMXv3QgFxdTBHoiqOTEPSG5KwooBoj6nIjG4aXnBiE5s7J14Znweav7o+DQLvuxPTVkrWBhSPWWWYsmWyeQS5K6z9U9BsNtE3e0KLlV+gipkDbJ2qGEs4mR72Q0tluJx0WGboSHiaRQOWfw90avxm/o15ji7zo38bt0I/PGGrRJ9tKDhU2SOCUgvRHX8dS6BiAvCB5M42RIHYRME7/5SHEjPhw9fNBI9/YtWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ipYShbeWr2b1dJX+Ov6MGHCWgj0d2JxU4SW9EAzstCc=;
 b=jHkpoe+NoDN2yjy6eMR+uN8urEaQ5qMHfPHoxIF4zHjRYTQhg+V4vx2XBU4EplxK3bBhhVTiuJaw4dg4UGJyLcQ6dacewVsu23STQVdiuBlt+KdIC81CZcxOfQ85F0F2gSOu2TZItnrmWxDN0jPVVJGnoV52+Q5SLR5LhHdC8Jez8rk9O0SCuZrd9zztCA7GAS3VSmdMoNUD5AaHpkKTkNK+Wnp/Qw3h5+SKE9Y633CgDiKgTZqTUhyN0di99ekTP9TTS7LsECX7kUIfQdvZ5ldP7D5PMCIa6Npy8zddyO/sQrj6zzbdoqG0nzRqy+Y/rXgWLm+cZ8gcPI2HzqLHYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ipYShbeWr2b1dJX+Ov6MGHCWgj0d2JxU4SW9EAzstCc=;
 b=DHrBj/N6auOO9ao0K/y6BczWSIz4XVYLE+Hd7qqd4FUcsI08fArrVEX/kgb8fti/IvbOOPqmb2ADldwNDZJv7815XTuFdb7i+DtZCzhFaJLuciASRYXjlny0HA3em78wAGt9cEWhZHVNB4S8Urjw0LDVR0LtTc9WflNEYujaHB82eafrwAc/IgdM330larpnzq3t61AoPPwqbPznxa+DvZ0eM2WgukRbOAuv5DS/rcdGNOJi6RuV0JZsqLANg10Awps3NkU0Q8t8A7EROI6tgMX1ZYzjdfdVETI5Dprv4SgHwYe+m6dUwi+vtMA9WXBA2p8X+ceKF4rPB+jloSwMkw==
Received: from HK2APC01FT013.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::42) by
 HK2APC01HT144.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::294)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Thu, 23 Apr
 2020 07:18:18 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM (10.152.248.59) by
 HK2APC01FT013.mail.protection.outlook.com (10.152.248.160) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.15 via Frontend Transport; Thu, 23 Apr 2020 07:18:18 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d]) by BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d%7]) with mapi id 15.20.2937.012; Thu, 23 Apr 2020
 07:18:18 +0000
To: Brian Padalino <bpadalino@gmail.com>
Thread-Topic: [USRP-users] Modifying RFNoC ddc block for 16 parallel instances
Thread-Index: AQHWGPFZoDfvbKh70EeqElLjPk33eKiFsxgAgAACBxKAAAl8AIAAjjZV
Date: Thu, 23 Apr 2020 07:18:17 +0000
Message-ID: <BM1PR01MB33482FF8513BFE835941A7E888D30@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
References: <BM1PR01MB3348D0FEC4BEAA5F7A79200C88D20@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAEXYVK5Ts2mewxrSw40puiLtHv1+w5R8fi=d+7LD2gcxvn-9Cw@mail.gmail.com>
 <BM1PR01MB334827C32F91A512A6786A1B88D20@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>,
 <CAEXYVK7rCxr7QB=qQOL1omLd3AdPcjQvbnWoFmZ=bYGGtWGeHg@mail.gmail.com>
In-Reply-To: <CAEXYVK7rCxr7QB=qQOL1omLd3AdPcjQvbnWoFmZ=bYGGtWGeHg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:B72EB01ADEE4924DF6FAC2B298029CC3EAF0BE3FFE4E4B572E45C62F3572D012;
 UpperCasedChecksum:BF0FF9E16D0890F05A8757A44E82AB640761A3756470EEBFD381EF3E04F79187;
 SizeAsReceived:7262; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [oOThVA3my/8Mcsyray3xdeglSot3/EYW]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 3aafad6d-23cc-4bfe-11fc-08d7e7567f0b
x-ms-traffictypediagnostic: HK2APC01HT144:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xxbBDr9HG6UXxcHdIVdmPveoNNruaEesk9e7m65x3p8GVnMyIEE0s1yvxlixisY5Sb4X4KfchfrBfUwJLo8ggoabL7uBFw+PqXq331r9IaXFRwBUhEEwWiKBpSJq1poPnYFD1Up/z8f3DkvHnH0wpTwWanjnHy+N5GHUT092XAUvmUttqza/21e3nty0uyuScCI0u7q195V++34YJlqNjCJPNcpBMKJjaSxOKJeSua6MLqQaP/yQacCfa4enR5Hp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: ccI572pdems6KSn76+Ts9wbwxI4xtWzS8yScpF8mBLznvXVEz0f/ASmlB0fOUqaPiuzYC6NLGDTx33q9j8uyiGYAhZ+8mgLYaqVjGpQpxlupCOmbdS/MVxCcvwYFBNMBQ5uKZZr7pA6f3N2q/kt18A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 3aafad6d-23cc-4bfe-11fc-08d7e7567f0b
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 07:18:17.9690 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT144
Subject: Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel instances
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8956126906025485757=="
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

--===============8956126906025485757==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB33482FF8513BFE835941A7E888D30BM1PR01MB3348INDP_"

--_000_BM1PR01MB33482FF8513BFE835941A7E888D30BM1PR01MB3348INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello Brian

While writing the bitstream it gave an error stung the current design didn=
=92t satisfy the timing constraint.

I tried creating 12 blocks of DDC 1 to 2, blocks but that failed too saying=
 the placer couldnot place more than 5% of the movable instances in the des=
ign.

Regards
Snehasish

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Brian Padalino <bpadalino@gmail.com>
Sent: Thursday, April 23, 2020 4:19:14 AM
To: Snehasish Kar <snehasish.cse@live.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel instanc=
es

On Wed, Apr 22, 2020 at 6:17 PM Snehasish Kar <snehasish.cse@live.com<mailt=
o:snehasish.cse@live.com>> wrote:
Hello Brian

Thanks for your response, actually I tried using DDC 1 to n block as given =
here, but giving 1 to 8 channels have a timing issue, while generating the =
build. So I thought it as an alternative plan.

https://gitlab.com/theseus-cores/theseus-cores/-/blob/master/fpga-rfnoc/REA=
DME.md#dsp-utilsnoc_block_ddc_1_to_n

What was the timing issue?  Is it possible for you to break up the logic to=
 help relax timing constraints?

Brian

--_000_BM1PR01MB33482FF8513BFE835941A7E888D30BM1PR01MB3348INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hello Brian</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">While writing the bitstream it gave an error stung the cur=
rent design didn=92t satisfy the timing constraint.&nbsp;</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I tried creating 12 blocks of DDC 1 to 2, blocks but that =
failed too saying the placer couldnot place more than 5% of the movable ins=
tances in the design.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards</div>
<div dir=3D"ltr">Snehasish</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Brian Padalino &lt;bp=
adalino@gmail.com&gt;<br>
<b>Sent:</b> Thursday, April 23, 2020 4:19:14 AM<br>
<b>To:</b> Snehasish Kar &lt;snehasish.cse@live.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel =
instances</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">On Wed, Apr 22, 2020 at 6:17 PM Snehasish Kar &lt;<a href=
=3D"mailto:snehasish.cse@live.com">snehasish.cse@live.com</a>&gt; wrote:<br=
>
</div>
<div class=3D"x_gmail_quote">
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hello Brian</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks for your response, actually I tried using DDC 1 to =
n block as given here, but giving 1 to 8 channels have a timing issue, whil=
e generating the build. So I thought it as an alternative plan.</div>
<div dir=3D"ltr"><br>
</div>
<div><a href=3D"https://gitlab.com/theseus-cores/theseus-cores/-/blob/maste=
r/fpga-rfnoc/README.md#dsp-utilsnoc_block_ddc_1_to_n" target=3D"_blank">htt=
ps://gitlab.com/theseus-cores/theseus-cores/-/blob/master/fpga-rfnoc/README=
.md#dsp-utilsnoc_block_ddc_1_to_n</a></div>
</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>What was the timing issue?&nbsp; Is it possible for you to break up th=
e logic to help relax timing constraints?</div>
<div><br>
</div>
<div>Brian</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div>
<div>
<div dir=3D"ltr">
<div></div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_BM1PR01MB33482FF8513BFE835941A7E888D30BM1PR01MB3348INDP_--


--===============8956126906025485757==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8956126906025485757==--

