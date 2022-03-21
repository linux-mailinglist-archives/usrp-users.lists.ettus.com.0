Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 050CD4E2246
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 09:34:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DE68D385168
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 04:34:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=barkhauseninstitut.onmicrosoft.com header.i=@barkhauseninstitut.onmicrosoft.com header.b="AVazC9M1";
	dkim-atps=neutral
Received: from EUR03-VE1-obe.outbound.protection.outlook.com (mail-eopbgr50102.outbound.protection.outlook.com [40.107.5.102])
	by mm2.emwd.com (Postfix) with ESMTPS id 43965384A27
	for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 04:33:08 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YqIwwzVJK5eWPHDXcz7GI9wPNAMIFF4CH7vAM13xts6Urh2gpNASDR3wyV5Rr7OXKszZKlySPJQWm60mjtryhdULawL1UxZOpifoXZFsFisRBSRZk3bSF/y62PIyc5rGkUcTkjw99tFPmFTpJxyc1KL4AIQSuHM6dB+oHCx3VJvwBMEuPoWrdr4GBvtA9DotnX+5/ZtqnPS+WjkiwOOQFBn3dtjWPjYQkeROxKj7G2iBkcpJmXmvvgK/fSQx7kdJypuDuazsQ87mCsG14YKK+dS0Is37s3iiCM7KoSDPNj05bLRpNM8bsWkHQNK1habdF4MN++duPxTWEIOIGLQJwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a78CDwMG2NNtGxB6QalfYXy//YpWU1wJgPKwVZp3yrY=;
 b=GfMAiZauu4QfPMz+u15DAX8CILxIC9QOHoHaWo+MmcsHe8HCvzp1oGEJI4HH3tdlLAnrWSHOCjjRwsJAxXsXYlwUrLV+m3dKYWEddJwXdpiNVrBIt/8cbZTS8E2Q3DQ+eObVRYu85AVHZgWhLkIYvW3Ekoqcw9/tOrnaCIaqvRSi9hWEwTxyAwJqfdniiEs6OXjnRsBCPIJ5jRI03B/aOYd7cjyV+C/xCzth4x0vV0J91Dfs0l82oXg3U7dAVd1m14cvVY3oJU1YndnkAClsk2NV1nsy2hmwUYvlsIy4cEPQIwbrc/TY3NSgpVxXAxxBHdU6GomYTgO39jwbZ3H/LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=barkhauseninstitut.org; dmarc=pass action=none
 header.from=barkhauseninstitut.org; dkim=pass
 header.d=barkhauseninstitut.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=barkhauseninstitut.onmicrosoft.com;
 s=selector2-barkhauseninstitut-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a78CDwMG2NNtGxB6QalfYXy//YpWU1wJgPKwVZp3yrY=;
 b=AVazC9M17GDRiVYoJSoFuafVL7sCVKYEDi3c/PfjUsVpEALdexjnhma4vDgjxw0YdhNRzgKWUPP57I4UOZQsI3hPXnPH0y0X+dPZ9mZIV5uVcsUy6Xbjz3usisWf8KDv/345twyJN7TYDDmDWmr/dWLunLkI9yUIJMpX/4SG4Cc=
Received: from AM8P250MB0107.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:36e::5)
 by AM8P250MB0389.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:328::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.22; Mon, 21 Mar
 2022 08:33:06 +0000
Received: from AM8P250MB0107.EURP250.PROD.OUTLOOK.COM
 ([fe80::999a:3abe:8443:5658]) by AM8P250MB0107.EURP250.PROD.OUTLOOK.COM
 ([fe80::999a:3abe:8443:5658%9]) with mapi id 15.20.5081.022; Mon, 21 Mar 2022
 08:33:06 +0000
From: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] Re: [X410] Change hostname
Thread-Index: AQHYOeij3PDN49hXmECqR9UdF3o/pqzJiHEG
Date: Mon, 21 Mar 2022 08:33:06 +0000
Message-ID: 
 <AM8P250MB010775DAB5F976813E57AE599B169@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
References: 
 <AM8P250MB010739467356827A8617AFFB9B129@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <0c95902c-6c5b-0dfd-6bd7-9a2cdf99a9ea@gmail.com>
In-Reply-To: <0c95902c-6c5b-0dfd-6bd7-9a2cdf99a9ea@gmail.com>
Accept-Language: de-DE, en-150, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 5ce42117-1297-c0cb-1a81-fbf9d1e3581c
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=barkhauseninstitut.org;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f93a2f17-e223-4a2a-93d8-08da0b156c1d
x-ms-traffictypediagnostic: AM8P250MB0389:EE_
x-microsoft-antispam-prvs: 
 <AM8P250MB03890478988939C4BE83E77A9B169@AM8P250MB0389.EURP250.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 hMxXB4ZIjrW9W3zvVpjGfe14Ef6pgsTU5TRamYfgT+3LrkHuHyLXo1UKJPXvmFRyu1cJEOwiNL4yrqbRR+LV1DWj0p8UmTevYR1YtDp8O8BSTrUhqvWjQouUTfoN6ll5/7NOtgrGAbpLB5iyRQvEfvYdPq6iU5gRRrBeYYpW7Rk4ZtdBQgcW4WQOw5bT3JZxpDqSwIrrAmMrQR7tnNe3ILKPxwxiuwlq0dxWDkdEQzglW2/5HUmVXcoG9coj9cUD/m602bXXwDlVlD5tmFQ/pGDMUIWmLLjsjFK/9+CX56Ie/9+FDDMFvd6JbELpeVTIeDLI62IB3UkFCiM9/KhV7tesZHCXQnfVEsA4/Jx5SUq+XpQU7ZNxAp7Xpa7cPjQmymCectZfH0sgykylPd9iok1z6A8kkAYJXANhWLpcdLVHyN/SExRXSKTsOI6Z36W10fM3RP06d7TDWlGdzi0HX6SlieEs4KyX5ZJySMwz3NVuciBzZziArG+bsvr1H5MUgkc260oQHXS18nhbG0BYIwh0zRn1hzVEVkw6YTYkdRrdqpkIPPf1e8hZ1A/WGb2Lt6VMl3t0xGhJ3/dzF39k4tZDhKZJgUIkiVPxHIJgkEOZRDurk23cxw/rKILhQdYQRAQ7ve9+0HfffWMQUhXVzKdOSRqLt0PnbEGOc8+xSogrOT7JF2qtn5+1mcMjrET6FTkCNvWBz01Uio9wdVFp09FgCxABmmCj89GAHmdWdkFKBnrDck9lOWrKqzbMjUZq5Rnf3u1BMJJK7P+9BZNfCdnozXqCteiPa3LjFzwzsqA=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8P250MB0107.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(346002)(136003)(376002)(39830400003)(396003)(366004)(84040400005)(2906002)(15974865002)(38100700002)(166002)(53546011)(7696005)(122000001)(33656002)(9686003)(26005)(6506007)(186003)(66574015)(83380400001)(55016003)(966005)(508600001)(19627405001)(52536014)(8936002)(6916009)(86362001)(316002)(91956017)(76116006)(66556008)(64756008)(66446008)(66476007)(4326008)(66946007)(71200400001)(8676002)(44832011)(38070700005)(5660300002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?TM5aoRIX8NcLhZe56Aq6yFZST7gKlLEdPs3OTTDV+JsrUOeagiE2lCXRc/?=
 =?iso-8859-1?Q?PzHoUvP3UIiWFJtrfvQIgedNZYIqLrstr2gWbhfCRGHVc4Ed0nCTQ6kxcO?=
 =?iso-8859-1?Q?jMOsDGbo85XoV0c2oODj5VlJY58rnTzPkbtUdYDXOHH6S7mhe5vwQcvfsk?=
 =?iso-8859-1?Q?lrNwALCLumEbr6U1T3eLbDuDgABsbgRDciU1YjrE9A4552kSkgzBGs+nkW?=
 =?iso-8859-1?Q?Zh9auye3S1hgAF7xbA6CXrywndB1aP2iiKlEjVJ60omtJ+dwjJZgZHxjDl?=
 =?iso-8859-1?Q?EMljmGKNYRvdiM+w8FuDDdIzY0IKesXljazrYBtfxVaIWnQkaMqJaluLHv?=
 =?iso-8859-1?Q?/J3xkP9zB5jpV62XRwAcPaC3GeqON2+/O1CWcHTxlCE/d7DAbmJ2Uhb5CF?=
 =?iso-8859-1?Q?Z+9JB9vB+bu+RuMyVQxjj1xMmDzMoe+pwci8cbb6cL0tKqrnWgzbBnmAC9?=
 =?iso-8859-1?Q?CjeqrKzY0Nfr7rrhAwXV3rFgS4AEmnbOc6G7TYpg/bWsdBR6Gd6Ju5ALsN?=
 =?iso-8859-1?Q?P33+Ir/O8ydS7TGu3cFJN7IJ/l0txpAt9KNoRHIzU71JLAtjG91Pe3rlyG?=
 =?iso-8859-1?Q?gV5K4U4BsNEpVoM4/0eEZPCRwzEcDjyp0IRu4GFTUnj118AMcgiLqwfXZA?=
 =?iso-8859-1?Q?8s87BL0KrgPzGYfaivoYchVdv2Ar6TovkHBFeyAlET+3Z08b2cYeiDpHLb?=
 =?iso-8859-1?Q?7nOwBHzcKwxGvcrClgja30NeyTyPY3wMsAx5aBbk6vQWYQrRbHTJP6LKBz?=
 =?iso-8859-1?Q?z6+NpSZ14w122KHCD82y5fJWr4Ug8MuXdUX7MiLk2Uf4aiYS6utObACjkk?=
 =?iso-8859-1?Q?94NW7ooDzbpaHrxugIxVIThl8WtV2EZKC7gH6bZy7xv+JcH4/JhMt6bHE2?=
 =?iso-8859-1?Q?nbZ8Cj1+bq5VGTZgJ6WWHon8uGYFMIadC2jv4fTSXLFsKI7/z4QXetB3c/?=
 =?iso-8859-1?Q?ZoaPJLR4NXtvrV0EFTt81hEwrhPxNYoBFe7jlsvP+Tb53UscAD3MHeKIFc?=
 =?iso-8859-1?Q?Tv3obxvjI4VOwSB3spO6QRVnpahSpqYdtdJ+m3zEyeRaiDiGTtZWJRnBGO?=
 =?iso-8859-1?Q?oI0QnbyU1lvzBzbwMyjhI+CN8OTyE2RxhMvw2jsEPRe3aKuWokTOF6F9Q5?=
 =?iso-8859-1?Q?q4qL2wgjr272pH7p0bCye2ucETzl5iZzTMfnUF4jWMT4blLUq0zG5e9AMd?=
 =?iso-8859-1?Q?/1fz16jeqOdc4WBtOXrVGrOVfuF1EzD/ONFvLIpT/3kRwGDO6DPReHiuSE?=
 =?iso-8859-1?Q?Ny48i80r3+090mSysR3/9ANa02nQT2CJx6syNAmBBhN6cYHO/PggmTi4e3?=
 =?iso-8859-1?Q?AIj8J2PED5zmU2TcA8p9pwqfWGDv04BvbrOBW0mAQ+o1MXvTxmxdTeHE22?=
 =?iso-8859-1?Q?nc/ZV20CSBmQe/nVvknsVa2V+691xEOir/HIJKWGP4zD/S+c+wLuapB//a?=
 =?iso-8859-1?Q?XOQ+4HzrSE+vssI7NWGmmbyf3ndvXHIAkINNWXChGU82z13cGJjz4PtE+U?=
 =?iso-8859-1?Q?VpP34t6S6UB1OKc3DQIGKob/z3+or0Uv3rDYZL1J9EXf9maE+w7JVyYTKO?=
 =?iso-8859-1?Q?C1xiRtQ=3D?=
MIME-Version: 1.0
X-OriginatorOrg: barkhauseninstitut.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM8P250MB0107.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f93a2f17-e223-4a2a-93d8-08da0b156c1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2022 08:33:06.1661
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 00487172-018a-4fb0-b279-f756ac552ea7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fo5nAcEogHWgzbmXbPrQQlKrQ0ulVzfnMpzQ1862pFDsJBFb1I6pcMLbjC1gW6RhRCF/pa4QTalqtAEXmbGgRL++5H/ZM1mFpP/fADMPfve0V863L8QdH68Aa/BpyAgM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8P250MB0389
Message-ID-Hash: TWMF2OI3GMGHASQ6TLAVIGZOQOI3AOKV
X-Message-ID-Hash: TWMF2OI3GMGHASQ6TLAVIGZOQOI3AOKV
X-MailFrom: tobias.kronauer@barkhauseninstitut.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [X410] Change hostname
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7IUN65N5BAKASXBNHDZZOIQQHE7A67PC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6648330940019207581=="

--===============6648330940019207581==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM8P250MB010775DAB5F976813E57AE599B169AM8P250MB0107EURP_"

--_000_AM8P250MB010775DAB5F976813E57AE599B169AM8P250MB0107EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I asked our IT department, and they said no....

________________________________
Von: Marcus D. Leech <patchvonbraun@gmail.com>
Gesendet: Donnerstag, 17. M=E4rz 2022 14:41
An: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Betreff: [USRP-users] Re: [X410] Change hostname

On 2022-03-17 06:24, Tobias Kronauer wrote:
Hi altogether,

I have a rather dumb question: how can I change the hostname of the USRP? A=
ccording to the docs (being the standard way of changing host names in gene=
ral), I changed the file /etc/hostname and rebooted. However, after rebooti=
ng, the content of /etc/hostname is changed to its defaults.... Using hostn=
ame or hostnamectl in the command line does not work either. Can you help m=
e on that?

I am using a X410.

Thanks in advance,
Tobias


Barkhausen Institut
www.barkhauseninstitut.org<http://www.barkhauseninstitut.org>

IF it's setup for DHCP, it's probably that you're getting your hostname fro=
m the DHCP server?




Barkhausen Institut
www.barkhauseninstitut.org


Barkhausen Institut gGmbH | Sitz: W=FCrzburger Stra=DFe 46, 01187 Dresden, =
Germany | Registergericht: Amtsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FC=
hrer: Prof. Dr. Gerhard Fettweis, Dr. Tim Hentschel | Vorsitzender der Gese=
llschafterdelegation: Dr. Andreas Handschuh

Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system. Information on data protection and =
processing of your personal information: https://barkhauseninstitut.org/dat=
a-privacy


--_000_AM8P250MB010775DAB5F976813E57AE599B169AM8P250MB0107EURP_
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
I asked our IT department, and they said no....<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>Von:</b> Marcus D. Leech &lt;=
patchvonbraun@gmail.com&gt;<br>
<b>Gesendet:</b> Donnerstag, 17. M=E4rz 2022 14:41<br>
<b>An:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Betreff:</b> [USRP-users] Re: [X410] Change hostname</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 2022-03-17 06:24, Tobias Kronauer wrote=
:<br>
</div>
<blockquote type=3D"cite">
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Hi altogether,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
I have a rather dumb question: how can I change the hostname of the USRP? A=
ccording to the docs (being the standard way of changing host names in gene=
ral), I changed the file /etc/hostname and rebooted. However, after rebooti=
ng, the content of /etc/hostname
 is changed to its defaults.... Using hostname or hostnamectl in the comman=
d line does not work either. Can you help me on that?</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
I am using a X410.<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Thanks in advance,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Tobias<br>
</div>
<div>
<p style=3D"margin-top: 0px; margin-bottom: 0px;font-size:11pt; font-family=
:Calibri,sans-serif,serif,&quot;EmojiFont&quot;; margin:0px">
<br>
<br>
<b>Barkhausen Institut</b> <br>
<a class=3D"x_moz-txt-link-abbreviated" href=3D"http://www.barkhauseninstit=
ut.org">www.barkhauseninstitut.org</a>
<br>
</p>
</div>
</blockquote>
IF it's setup for DHCP, it's probably that you're getting your hostname fro=
m the DHCP server?<br>
<br>
<br>
</div>
</div>
<div>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<br>
<br>
<b>Barkhausen Institut</b> <br>
www.barkhauseninstitut.org <br>
<br>
</p>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<span style=3D"font-size:9pt;" lang=3D"de-DE">Barkhausen Institut gGmbH | S=
itz: W=FCrzburger Stra=DFe 46, 01187 Dresden, Germany | Registergericht: Am=
tsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FChrer: Prof. Dr. Gerhard Fettw=
eis, Dr. Tim Hentschel | Vorsitzender der Gesellschafterdelegation:
 Dr. Andreas Handschuh <br>
<br>
Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy
<br>
<br>
</span><span style=3D"font-size:9pt;" lang=3D"en-US">This email and any att=
achments are intended only for the person to whom this email is addressed a=
nd may contain confidential and/or privileged information. If you received =
this email in error, please do not disclose
 the contents to anyone, but notify the sender by return email and delete t=
his email (and any attachments) from your system. Information on data prote=
ction and processing of your personal information: https://barkhauseninstit=
ut.org/data-privacy
<br>
<br>
</span></p>
</div>
</body>
</html>

--_000_AM8P250MB010775DAB5F976813E57AE599B169AM8P250MB0107EURP_--

--===============6648330940019207581==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6648330940019207581==--
