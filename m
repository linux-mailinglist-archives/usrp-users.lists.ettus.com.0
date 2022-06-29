Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9D956094B
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jun 2022 20:41:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B8D1F384253
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jun 2022 14:41:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1656528067; bh=BIzC/O/HSsiKmFFb/UU0W6M83GQ+cUR+432KicFF2c4=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=UkvNhGKoJ5UO6UhbUo8CcFu4ZOIvN8SRJ8c+gf+KLGmwrYh9EfuXC1Nl+IYGppVc3
	 Hty3eH6J/eP1X6bDYZQafZ0UVQCcsJNXo1HqK+K210SdlUYnOkwi3wWW5nGDnz+R5u
	 KIZKKrG8htVJuXXhKPONToNx/Ulm8k78pdub7hXoFE7eQNGUVypSPyxCKP/m9iK2Kl
	 NO7wXcAS2peDx89hu3ZqLiatvg21C2qEsa+D5gWSS4x4dkJ4k715d8YHpvBm2A3gHY
	 vtr7Qb2JVnBbgJ3CuSKmcKzw/s+KIuOHV4RgeJwVTCC5zjOQZgLuoBu1CDHQzGJcym
	 d/yCdnYzJOywg==
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0102.outbound.protection.office365.us [23.103.209.102])
	by mm2.emwd.com (Postfix) with ESMTPS id 47915384896
	for <usrp-users@lists.ettus.com>; Wed, 29 Jun 2022 14:37:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=riversideresearch.org header.i=@riversideresearch.org header.b="hP1xFm2I";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=fV4K1nV83GzrCtmqfm0VQz/dqxgW16C/x0v/DAQ2qeYYgM8q5aALBxInr2p/3Fadf9CSjv2mUxKeVNgHsPzWkq9RPqmCIUX2Xx23PZAomjewrCT7m+3I/Kg8kIxBFnUz/b3NWu55uEbT73Jm0wE+9XfISWqvQKjvBXW3EkNy+6n2ohArz5oN0Se1DkSrJP9QptC6Dhtl84BmqIj9/SyPYz7tk/ICy+EK5ZEQMREltYauC3Q9EWMAyPpALIX7mKtJELu5Ezn3FKJthFhntUH0iPc8BzUthWaJpEsFfvqkY3oqKmcB32PuJMeld3kE5MadICBLZB2dWqNJIlAF7zRccw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iv4/JvOKTIN9tUqEhNJ4v2cT/tu4Kit7jaU/FcB9z+w=;
 b=AsK3fwMzDN/1gSzovcImgde4K0rvreEZXUFHARzzHIdCW2a2EeGUIH2FtMxIFGRHpLY/Pjo+t9n21Yb1DT8NT6qQKr4nwsJkdYXni4UDTqqrwVG2T6K8e9XiikKP49yOAee1bYD3Pu0jCICDmCddWLCuuqA/h7cAUMvAzk2tAu7LXbHOIAqvSiWETmTVLV80wHLblAnmGZCHDn9M7kR7QDOzyjuFjXYpK9IMbV35/C3MMaYlSeFIjo63AIrr95Lx1gH5TRY2+wJwMRi3LTjxUhrtHQy7aoO7nYgbr2ec5mLiiy8Q+CvbfgvAAog40RDGIrSx4HXFF+eKGcnr3h/21Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=riversideresearch.org; dmarc=pass action=none
 header.from=riversideresearch.org; dkim=pass header.d=riversideresearch.org;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=riversideresearch.org;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iv4/JvOKTIN9tUqEhNJ4v2cT/tu4Kit7jaU/FcB9z+w=;
 b=hP1xFm2IZXklNOHDC6SGMYn8Drk6FJCqlhuGZcavzhAnKqENSezEWX3o8ADW/pA7Pl4lA7YzV+hiXnvbqlSmgwjmn6b4B54SCUGumdGpoWzJqAcfmtutJF+jJ05+MVJMbwCuFGOBU2RSKrv1dPfeKwOuDQ2pks7MWs8VmVHhp9AuYQHatjp9yi2pfxlVeSOn+l0RZdb3HXmq0hw5YKeGwyNO4tfPsu77RvN9v5blq0b3lQyN5NrFYqA7CwY87uhKXYKFLr+FNpW270xf6rd1vEZACaatE6UnSt/zcxeGamVBa5GaJQUdkYKPs4Eg1DAEiUZfxZUEltJKk2oNdTR0uw==
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM (52.145.11.201) by
 BN0P110MB1642.NAMP110.PROD.OUTLOOK.COM (52.145.39.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5353.22; Wed, 29 Jun 2022 18:37:48 +0000
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::4413:23b1:52c7:8685]) by BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::4413:23b1:52c7:8685%4]) with mapi id 15.20.5353.024; Wed, 29 Jun 2022
 18:37:48 +0000
From: "White, Joshua J" <jjwhite@RiversideResearch.org>
To: U L <jareddpub@gmail.com>, Fabien PELLET <fpellet.f4ctz@free.fr>
Thread-Topic: GNU Radio Companion N310 GPIO Sink/Source block
Thread-Index: AQHYiygN18Kpejai60Kthd8CxWlEh61lcIgAgAAOd4CAATkJoA==
Date: Wed, 29 Jun 2022 18:37:48 +0000
Message-ID: 
 <BN0P110MB1015B9B0C2BBFDC269176115B1BB9@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
References: 
 <BN0P110MB10152F264F3AC30E659AC800B1B89@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
 <h4jq2p4tviqrsgh3tatofkng.1656457470427@email.android.com>
 <CAAJQ0rCsERwE9_5PULQ4zMM_PvzepiZ5qY4TZLgbK3bJ2=Cqcw@mail.gmail.com>
In-Reply-To: 
 <CAAJQ0rCsERwE9_5PULQ4zMM_PvzepiZ5qY4TZLgbK3bJ2=Cqcw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=RiversideResearch.org;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cb8ca876-eea7-4a3e-a573-08da59fe7782
x-ms-traffictypediagnostic: BN0P110MB1642:EE_
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 UagWCPAPhW56G1rWPkLvIKz7rD5FjNjZ6VrdQ6tilsNSNc0p8ZM60pHXDbsEYiSO9g/I0lpUCN6qAlcUVyt5pGC7TPMc4KZMxgLx9rPCcYS6FKY//nRCT2dQFvALo1g28nvoQ3MJBIxit9OdusrF91Rb5IafCTCBEOb3QRHki96A67Frgz1WRYhmEn4RTEYEm8tEHIZF0P4+c2rE2LLpDjuHJEnr4mUm68Yi5pKPEH9xXsauBHXF1/dF8nrkqXvbMHsK/kqUASFFuiLsv7TZAbRRgb66ZmZpcIUpH4Rs5VOTRutd7Y4on8gdM73T09XtzPSzCRBZ6vprZQUlJd07ZBA6XZmPIpSlR0pfsg78yN0Xq2xcTX89mVDEEsL2Lm9u5Zy0BWyeV6lG1Et0fCHecOytXXLcYXouAOI2iIIqjJgMD9a3AqQYK24uzXs16Dz9vKOiNo68cmTHsCoYRC5keddO37JqQoMKxUkZ5n2LRz+qsdVw4qnmGdTS2Br4+4fFqEwQjL2vzrZqIBY2ajsmcXORWpAKv2D3up7Mqxw6kJOebL1zCdvJipK//YRK1q2SPvO3EJgrPBC66/0Z9YioCyp9T4sS4bSPGX2lXyyFjMzkPsYdpI3rXSSf8QjYAeb/ncGtIvA373wqm3VoE1vrXde5I15cEFmQ+cP/zAY1xvh6UAh93aZ/hT7JKaU6RtH4qd6xeI9Rd2R/ZsrflxSYj8AidkNtTpvDcX8MPBA/jjhRawEIUwAN7SH7uEXa3vqCSUHkDg0l3y41xgZqJAFSgwU/eJTHNccNZbo/WH+ffLW7ohMh1mYWnlnZQmTA3bj5C7STHpvENhLbAxMZwY6i2Q==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(366004)(54906003)(38100700002)(166002)(55016003)(110136005)(5660300002)(40140700001)(33656002)(38070700005)(99936003)(82960400001)(53546011)(2906002)(186003)(66446008)(9686003)(66946007)(498600001)(122000001)(71200400001)(66556008)(7696005)(66574015)(64756008)(76116006)(8676002)(66476007)(26005)(52536014)(83380400001)(6506007)(4326008)(86362001)(8936002)(85282002)(41080700001)(15866825006);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 iChyLJhdJ4estTMigrMCPqN8G6KkVkMMLxbi85V1pr42IJqcdnVdDO1tabQkaNVEA/MnyFakRw/6frkaR1TuQP7Y4e7OXAeSHvySIFWdIwJ8yVY4X6fkpDermm+KCIW2O2K4MsVn9vd+EFd/ewBy/n7wTKjcq4UihGsV9yfvQU1G96x61dQe1uK5ZRepO6HriMbA9NwtJame3Sr6rFHQ4fR4TngHJ6qVDHc6y1JJJBp7lh5eXnJwgmJHnX1D4UcW63lsX/j3dJLVG7pC3L+LkhKyUdew8tn56S0YehAbSKtkIndxzV8Bp50LqQROSbvveB538evB91SXM85rzUhmo7u4v/L1RQWY33rqjGi/QpbgLdyqEC6akmmXVoVbPC2+6GVSHrtG9Xd28QNM0mjvrHa1hRuYUZ2zAny2Uq59oE4=
MIME-Version: 1.0
X-OriginatorOrg: riversideresearch.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: cb8ca876-eea7-4a3e-a573-08da59fe7782
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2022 18:37:48.7337
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bfc64a8d-9064-4c64-91c3-9d10b44c1cb6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1642
Message-ID-Hash: JVHFYLIGUUBLKCJ22G6JDG3D6MA6SBAS
X-Message-ID-Hash: JVHFYLIGUUBLKCJ22G6JDG3D6MA6SBAS
X-MailFrom: jjwhite@RiversideResearch.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>, undefined <discuss-gnuradio@gnu.org>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GNU Radio Companion N310 GPIO Sink/Source block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FXQK6SSOLQKLM4CQLDPD7NKIFL7OY543/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4315896090183555025=="

--===============4315896090183555025==
Content-Language: en-US
Content-Type: multipart/signed;
	protocol="application/x-pkcs7-signature";
	micalg=SHA1;
	boundary="----=_NextPart_000_0038_01D88BC5.CCD46780"

------=_NextPart_000_0038_01D88BC5.CCD46780
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0039_01D88BC5.CCD46780"


------=_NextPart_001_0039_01D88BC5.CCD46780
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for all the replies. I=E2=80=99m going to start with a Python =
block and see if I can get it to do what I need it to do, and if not =
I=E2=80=99ll bite the bullet and try to write an OOT module.

=20

Very respectfully,

=20

Joshua White

Precision Timing Systems Engineer

Engineering & Support Solutions Directorate

www.riversideresearch.org <http://www.riversideresearch.org/> =20

T: 937.986.3153 | F: 937.431.3811

=20

This e-mail message, including any attachments, is for the sole use of =
the intended recipient(s) and may contain proprietary, confidential or =
privileged information or otherwise be protected by law. Any =
unauthorized review, use, disclosure or distribution is prohibited. If =
you are not the intended recipient, please notify the sender and destroy =
all copies and the original message.

=20

From: U L <jareddpub@gmail.com>=20
Sent: Tuesday, June 28, 2022 7:56 PM
To: Fabien PELLET <fpellet.f4ctz@free.fr>
Cc: usrp-users <usrp-users@lists.ettus.com>; undefined =
<discuss-gnuradio@gnu.org>; White, Joshua J =
<jjwhite@RiversideResearch.org>
Subject: Re: GNU Radio Companion N310 GPIO Sink/Source block

=20

Joshua,

=20

Generally Fabien is right. To exercise the full feature set of the GPIO =
you would likely need an OOT block. However, if only limited performance =
and features are needed then you might get away with using the Python =
embedded block or Python snippet in GRC to implement something quick and =
easy. This was the route I took to control an external TX/RX switch. I =
imagine any low-rate control would be feasible.

=20

Jared.

=20

On Tue, Jun 28, 2022 at 5:06 PM Fabien PELLET <fpellet.f4ctz@free.fr =
<mailto:fpellet.f4ctz@free.fr> > wrote:

Hi Joshua,

I'm also using GPIO on LFTX and LFRX on a N210 and I can tell you that =
you will not find source or sink that deal with that IO as far as I =
know.

The only way to use them is to write an OOT that uses the UHD methods.

Best regards,
Fabien, F4CTZ

---- White, Joshua J a =C3=A9crit ----

(Cross-posted on usrp-users and discuss-gnuradio)

For anyone who's familiar with using the USRP3 (specifically the N310) =
with GNU Radio:

=20

I'm trying to create a flowgraph in gnu radio companion that =
incorporates reading a value from one pin on the front panel GPIO of the =
N310 and writing a value to another pin. I'm looking for a source/sink =
block for GNU Radio companion that can accomplish this. Has anyone done =
this previously, or can anyone point me in the right direction? I have =
very little experience with GNU Radio and have no expertise in =
programming OOT modules. Thank you for any help you can provide.

=20

Very respectfully,=20

=20

Joshua White=20

Precision Timing Systems Engineer=20

Engineering & Support Solutions Directorate=20

www.riversideresearch.org <http://www.riversideresearch.org/> =20

T: 937.986.3153 <tel:937.986.3153>  | F: 937.431.3811 <tel:937.431.3811> =
=20

=20

This e-mail message, including any attachments, is for the sole use of =
the intended recipient(s) and may contain proprietary, confidential or =
privileged information or otherwise be protected by law. Any =
unauthorized review, use, disclosure or distribution is prohibited. If =
you are not the intended recipient, please notify the sender and destroy =
all copies and the original message.=20

=20

=20


------=_NextPart_001_0039_01D88BC5.CCD46780
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>Thanks for all the replies. =
I=E2=80=99m going to start with a Python block and see if I can get it =
to do what I need it to do, and if not I=E2=80=99ll bite the bullet and =
try to write an OOT module.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Very respectfully,<o:p></o:p></span></p><p =
class=3DMsoNormal><b><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></b></p><p =
class=3DMsoNormal><b><span style=3D'color:#1F497D'>Joshua =
White<o:p></o:p></span></b></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Precision Timing Systems =
Engineer<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Engineering &amp; Support Solutions =
Directorate<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><a =
href=3D"http://www.riversideresearch.org/">www.riversideresearch.org</a> =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>T: 937.986.3153 | F: =
937.431.3811<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:9.0pt;color:#1F497D'>This =
e-mail message, including any attachments, is for the sole use of the =
intended recipient(s) and may contain proprietary, confidential or =
privileged information or otherwise be protected by law. Any =
unauthorized review, use, disclosure or distribution is prohibited. If =
you are not the intended recipient, please notify the sender and destroy =
all copies and the original message.</span><span =
style=3D'color:#1F497D'><o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> U L =
&lt;jareddpub@gmail.com&gt; <br><b>Sent:</b> Tuesday, June 28, 2022 7:56 =
PM<br><b>To:</b> Fabien PELLET =
&lt;fpellet.f4ctz@free.fr&gt;<br><b>Cc:</b> usrp-users =
&lt;usrp-users@lists.ettus.com&gt;; undefined =
&lt;discuss-gnuradio@gnu.org&gt;; White, Joshua J =
&lt;jjwhite@RiversideResearch.org&gt;<br><b>Subject:</b> Re: GNU Radio =
Companion N310 GPIO Sink/Source block<o:p></o:p></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p =
class=3DMsoNormal>Joshua,<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Generally Fabien is right. To exercise the full =
feature set of the GPIO you would likely need an OOT block. However, if =
only limited performance and features are needed then you might get away =
with using the Python embedded block or Python snippet in GRC to =
implement something quick and easy. This was the route I took to control =
an external TX/RX switch. I imagine any low-rate control would be =
feasible.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Jared.<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Tue, Jun 28, 2022 at 5:06 PM Fabien PELLET &lt;<a =
href=3D"mailto:fpellet.f4ctz@free.fr">fpellet.f4ctz@free.fr</a>&gt; =
wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in =
6.0pt;margin-left:4.8pt;margin-right:0in'><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'>Hi Joshua,<br><br>I'm also using GPIO on =
LFTX and LFRX on a N210 and I can tell you that you will not find source =
or sink that deal with that IO as far as I know.<br><br>The only way to =
use them is to write an OOT that uses the UHD methods.<br><br>Best =
regards,<br>Fabien, F4CTZ<br><br>---- White, Joshua J a =C3=A9crit =
----<o:p></o:p></p><div><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;color:black'>(Cross-posted on usrp-users and =
discuss-gnuradio)<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span style=3D'font-size:12.0pt;color:black'>For =
anyone who's familiar with using the USRP3 (specifically the N310) with =
GNU Radio:<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></p></div>=
<div><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;color:black;background:white'>I'm trying to =
create a flowgraph in gnu radio companion that incorporates reading a =
value from one pin on the front panel GPIO of the N310 and writing a =
value to another pin.&nbsp;</span><span =
style=3D'font-size:12.0pt;color:black'>I'm looking for a source/sink =
block for GNU Radio companion that can accomplish this. Has anyone done =
this previously, or can anyone point me in the right direction? I have =
very little experience with GNU Radio and have no expertise in =
programming OOT modules. Thank you for any help you can =
provide.<o:p></o:p></span></p></div><div><div =
id=3D"gmail-m_-9038195648307075576Signature"><div><div><p =
style=3D'margin:0in'><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p><p =
style=3D'margin:0in'><span style=3D'color:#1F497D'>Very =
respectfully,&nbsp;</span><span =
style=3D'color:black'><o:p></o:p></span></p><p =
style=3D'margin:0in'><b><span =
style=3D'color:#1F497D'>&nbsp;</span></b><span =
style=3D'color:black'><o:p></o:p></span></p><p =
style=3D'margin:0in'><b><span style=3D'color:#1F497D'>Joshua =
White&nbsp;</span></b><span =
style=3D'color:black'><o:p></o:p></span></p><p =
style=3D'margin:0in'><span style=3D'color:#1F497D'>Precision Timing =
Systems Engineer&nbsp;</span><span =
style=3D'color:black'><o:p></o:p></span></p><p =
style=3D'margin:0in'><span style=3D'color:#1F497D'>Engineering &amp; =
Support Solutions Directorate&nbsp;</span><span =
style=3D'color:black'><o:p></o:p></span></p><p =
style=3D'margin:0in'><span style=3D'color:#1F497D'><a =
href=3D"http://www.riversideresearch.org/" =
target=3D"_blank">www.riversideresearch.org</a>&nbsp;</span><span =
style=3D'color:black'><o:p></o:p></span></p><p =
style=3D'margin:0in'><span style=3D'color:#1F497D'>T: <a =
href=3D"tel:937.986.3153" target=3D"_blank">937.986.3153</a> | F: <a =
href=3D"tel:937.431.3811" =
target=3D"_blank">937.431.3811</a>&nbsp;</span><span =
style=3D'color:black'><o:p></o:p></span></p><p =
style=3D'margin:0in'><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p><p =
style=3D'margin:0in'><span style=3D'font-size:9.0pt;color:#1F497D'>This =
e-mail message, including any attachments, is for the sole use of the =
intended recipient(s) and may contain proprietary, confidential or =
privileged information or otherwise be protected by law. Any =
unauthorized review, use, disclosure or distribution is prohibited. If =
you are not the intended recipient, please notify the sender and destroy =
all copies and the original message.</span><span =
style=3D'color:#1F497D'>&nbsp;</span><span =
style=3D'color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></p></div>=
</div></div></div></blockquote></div></div></body></html>
------=_NextPart_001_0039_01D88BC5.CCD46780--

------=_NextPart_000_0038_01D88BC5.CCD46780
Content-Type: application/pkcs7-signature;
	name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="smime.p7s"

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
y5hBglp6x595DCG05IgGyQRzP9bNyqPglQMRekuqNtiM8s/BZZ0LiVtMDkna9k9jj28wggbAMIIF
qKADAgECAhMsAAP4qhx1+DitimPYAAcAA/iqMA0GCSqGSIb3DQEBCwUAMEExEzARBgoJkiaJk/Is
ZAEZFgNvcmcxFzAVBgoJkiaJk/IsZAEZFgdycmktdXNhMREwDwYDVQQDEwhCUk8tRFMwMjAeFw0y
MTA3MjExNjI2MzhaFw0yMzEyMjcxNzIyNDFaMIGsMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYK
CZImiZPyLGQBGRYHcnJpLXVzYTEMMAoGA1UECxMDRFJDMQ4wDAYDVQQLEwVVc2VyczEWMBQGA1UE
CxMNT24tU2l0ZSBVc2VyczEYMBYGA1UEAxMPV2hpdGUsIEpvc2h1YSBKMSwwKgYJKoZIhvcNAQkB
Fh1qandoaXRlQFJpdmVyc2lkZVJlc2VhcmNoLm9yZzCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkC
gYEAq1tErUsiT3Xmo0whVata7DEky+wTGh0D0AlHBuQNdHfogoK2vCrdCDk6216x7OSYO37lrxbB
Qd/3oXGaqk8zsyRl/N221uflWYVs9qgOqABYXkn7bWHrSQf15D/yQB/keqFeFjPrW+tmcjHEYJta
w2Dr0K9gyQVsbcrfbkk6HXUCAwEAAaOCA8cwggPDMD4GCSsGAQQBgjcVBwQxMC8GJysGAQQBgjcV
CIWbhmWDndEtgsWVEIGmmyuDmZlRgSWH0qVDgrHkJgIBZQIBBTA1BgNVHSUELjAsBgorBgEEAYI3
FAICBggrBgEFBQcDAgYIKwYBBQUHAwQGCisGAQQBgjcKAwQwCwYDVR0PBAQDAgWgMEMGCSsGAQQB
gjcVCgQ2MDQwDAYKKwYBBAGCNxQCAjAKBggrBgEFBQcDAjAKBggrBgEFBQcDBDAMBgorBgEEAYI3
CgMEMEQGCSqGSIb3DQEJDwQ3MDUwDgYIKoZIhvcNAwICAgCAMA4GCCqGSIb3DQMEAgIAgDAHBgUr
DgMCBzAKBggqhkiG9w0DBzBXBgNVHREEUDBOoC0GCisGAQQBgjcUAgOgHwwdamp3aGl0ZUByaXZl
cnNpZGVyZXNlYXJjaC5vcmeBHWpqd2hpdGVAUml2ZXJzaWRlUmVzZWFyY2gub3JnMB0GA1UdDgQW
BBSSFzfpC6wiUiUs2WbKNUrY6pYBmzAfBgNVHSMEGDAWgBT+5/KpKajUn7P6830wA8KstUdQZTCC
AQAGA1UdHwSB+DCB9TCB8qCB76CB7IaBs2xkYXA6Ly8vQ049QlJPLURTMDIoNyksQ049QlJPLUNB
MDEsQ049Q0RQLENOPVB1YmxpYyUyMEtleSUyMFNlcnZpY2VzLENOPVNlcnZpY2VzLENOPUNvbmZp
Z3VyYXRpb24sREM9cnJpLXVzYSxEQz1vcmc/Y2VydGlmaWNhdGVSZXZvY2F0aW9uTGlzdD9iYXNl
P29iamVjdENsYXNzPWNSTERpc3RyaWJ1dGlvblBvaW50hjRodHRwOi8vY3JsLnJpdmVyc2lkZXJl
c2VhcmNoLm9yZy9jcmwvQlJPLURTMDIoNykuY3JsMIIBEwYIKwYBBQUHAQEEggEFMIIBATCBpwYI
KwYBBQUHMAKGgZpsZGFwOi8vL0NOPUJSTy1EUzAyLENOPUFJQSxDTj1QdWJsaWMlMjBLZXklMjBT
ZXJ2aWNlcyxDTj1TZXJ2aWNlcyxDTj1Db25maWd1cmF0aW9uLERDPXJyaS11c2EsREM9b3JnP2NB
Q2VydGlmaWNhdGU/YmFzZT9vYmplY3RDbGFzcz1jZXJ0aWZpY2F0aW9uQXV0aG9yaXR5MFUGCCsG
AQUFBzAChklodHRwOi8vY3JsLnJpdmVyc2lkZXJlc2VhcmNoLm9yZy9jcmwvQlJPLUNBMDEucnJp
LXVzYS5vcmdfQlJPLURTMDIoNykuY3J0MA0GCSqGSIb3DQEBCwUAA4IBAQBAcpalu96zFfEytfTu
gF/lYkyKgnMGiq64hC5VNVwKJ2dQ6TjJkFWONo3nMDL08QBPHVReQMqORLw+TkLxj6fA+8SYHiuP
i74wleDZzmP6iicscyf+mFsYSmvk6606E27c6Qq3FOMrbI3yNlDHP9K2KL9Dcv/JK0l266aQOGCK
LqDiS/DpYK7So4G+wUn932/go3CY02vxsmFq9RJZ7V2ax0cNtYk9fLNxKXhIVNCWhag0JuLZt1z5
YCWUoDZedDiV8aaBaOqtgDwiLwJCZlpdtte/5Zxb1zwpmtx/LklY1w1Ha1UBf0HC/0G1lkXtraWS
gLWtKHTC/TqNs6cfPKSFMYICyTCCAsUCAQEwWDBBMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYK
CZImiZPyLGQBGRYHcnJpLXVzYTERMA8GA1UEAxMIQlJPLURTMDICEywAA/iqHHX4OK2KY9gABwAD
+KowCQYFKw4DAhoFAKCCAccwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUx
DxcNMjIwNjI5MTgzNzQ2WjAjBgkqhkiG9w0BCQQxFgQUnFDDDJ2nBS32bdr5+k3tewO6YGQwZwYJ
KwYBBAGCNxAEMVowWDBBMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYKCZImiZPyLGQBGRYHcnJp
LXVzYTERMA8GA1UEAxMIQlJPLURTMDICEywAA/iqHHX4OK2KY9gABwAD+KowaQYLKoZIhvcNAQkQ
AgsxWqBYMEExEzARBgoJkiaJk/IsZAEZFgNvcmcxFzAVBgoJkiaJk/IsZAEZFgdycmktdXNhMREw
DwYDVQQDEwhCUk8tRFMwMgITLAAD+Kocdfg4rYpj2AAHAAP4qjCBkwYJKoZIhvcNAQkPMYGFMIGC
MAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCgYIKoZIhvcNAwcwCwYJYIZIAWUDBAECMA4GCCqG
SIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCGjALBglghkgBZQMEAgMwCwYJYIZIAWUD
BAICMAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASBgGCl41+WuHYCl/yuKa0U6h3Inx02kHLj
SWttfWb1cY1NPXtSUzZg9mq1GU+CN9Y+uGbPFDCc0PULIJhca3MFxjL8YeY2hiNipkwuxRhTX1uT
UHCDGxceT21tfU6Q3li97EYnEQTa6YNOngAYX+0weMrC3ExdNmOlImnYxCysOVjeAAAAAAAA

------=_NextPart_000_0038_01D88BC5.CCD46780--

--===============4315896090183555025==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4315896090183555025==--
