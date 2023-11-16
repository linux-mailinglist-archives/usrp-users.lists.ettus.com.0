Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DFA7EE882
	for <lists+usrp-users@lfdr.de>; Thu, 16 Nov 2023 21:51:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8C62D384EA5
	for <lists+usrp-users@lfdr.de>; Thu, 16 Nov 2023 15:51:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700167873; bh=i3CtFfkhRdOYeAw3gc026/2oSAE/RxZKAViCnujZbpA=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=JEf83bZsAdfT5mrZEud3YMYZxxe+OgFKwxJyuEJCXvfksoHSrMCdEEvjKcBpJeNTa
	 0qIbLkHRRjP6uYsC0LHXlgxE8Waw0LJ9W1knrt17/0IFK3svn3PYQ/pzNMGO08fTTK
	 ZZCK11Y48SVaLeGG0PtDQtZhY5OiYP4Y5FmQjun7XO+fOmNVy0QrNck9McU2W3/LxH
	 cvi5LC28TFVYRSjaS1Z64/0WMA6C2DGireVtB9t2Gs1S8FAJX9o06oxoKErPB9e+au
	 r9Q97ZPgbsiTZNUo2KPAA7XfNPY++ii7daCdZBG86uEf8t6WnI886/kntnecd9TRRh
	 84A0NrltgQ36g==
Received: from vadc01-egs01.gd-ms.com (vadc01-egs01.gd-ms.com [137.100.132.43])
	by mm2.emwd.com (Postfix) with ESMTPS id A40AF381976
	for <usrp-users@lists.ettus.com>; Thu, 16 Nov 2023 15:50:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gd-ms.com header.i=@gd-ms.com header.b="Tn6/Ot31";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=gd-ms.com; i=@gd-ms.com; q=dns/txt; s=esa;
  t=1700167819; x=1731703819;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=dfi8tynTY6PCCRrGi1ZeXFW9y1l9kkXpKitToFPnNak=;
  b=Tn6/Ot31a/Ye3FdWwd7BnpfmU+HsPiwq2Q7p01WK3jS53cPNRgnjVL8P
   MrMfToig7MpqGXo61KPc0YC4gkJCOGuN91YXgW4HL6iJYkiGyXNdX1UGK
   9HmN8Zyxlxx6ZB5AxSAyx6uFMUsGrA8qJYDawDHrZP/grpbX2+4rn+SFW
   LK4cu+4X4PuZlEx/RLO6P3gKJ8u8GhfC7AxZf6AFtIJzo1UMF71oPcTfw
   zthpC4Cd4XfWR3rf97AQqT2cLBSWDCWJsAhuL4ocf4A/r72zA2ePwnJEH
   m9D5m6tOM1UV43N5a9TAd5Qqo414krNywrVpHPgzf+Bh81nxVnTmpuA/X
   g==;
X-CSE-ConnectionGUID: RITvR+TnRJCkrti/rS/k0Q==
X-CSE-MsgGUID: m/+ljwrMR7iZWk1gi6spAQ==
X-IronPort-AV: E=Sophos;i="6.04,205,1695700800";
   d="scan'208,217";a="60525373"
Received: from unknown (HELO eadc-e-fmsprd01.eadc-e.gd-ais.com) ([10.96.30.97])
  by vadc01-egs01.gd-ms.com with ESMTP; 16 Nov 2023 15:50:19 -0500
Received: from azr-v-mbx02.GD-MS.US (outlook-east.gd-ms.us [10.144.20.53])
	by eadc-e-fmsprd01.eadc-e.gd-ais.com (Postfix) with ESMTP id 32082FB04FD;
	Thu, 16 Nov 2023 20:50:19 +0000 (UTC)
Received: from azr-v-mbx02.GD-MS.US (10.144.20.53) by azr-v-mbx02.GD-MS.US
 (10.144.20.53) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.34; Thu, 16 Nov
 2023 15:50:18 -0500
Received: from USG02-CY1-obe.outbound.protection.office365.us (137.100.132.86)
 by smtp-relay.gd-ms.us (10.144.20.60) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 16 Nov 2023 15:50:18 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=ImAO8uKaan7OPj23//FmufOjIe9fKwLnGs7crHLFS9JwfBdQnhnie40hp8qTEusCGdWRGGv/LRvUFbbG4hSQ96/E8D2ztpuIeSZdMNBMF4ptsAceoj+4BPOCNvxqeqfFj85yUIG0UcpHFPyDuR5dDJ0d1H1DPo/cGIpHcAWrdjhgKjoUBf2yfgKO9fXbp9Gv6ng9197WmCn0njHNDC1CU//mP46KWuuHYXuVbACbDd6fY1pZTz8qW8W5QzzSbO/MXZ0AMmFySGNqq9f0cezfVqewpJlczhLG5vY1XMXHnPWIt/Ab6CJ1Vqk6NIO/BR05L+aOHQ2hDMR+PFqkHSFR1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Fm85+6DDSVc4JAwrTjZEBrYk7fPCT/9IGqW5NEGMeA=;
 b=rSTdC8mqsYvyoCSvUG99gO6YUpGxDENL7kKUbzcHNpWSKFDRf5FM+u8dc87UBcnDLe721ZyrBO2b/yLYybqxktWbsXOo/uetH7HAMoXk5jWZFZY7zT7pYCJ+muqyssaFXSq68ov8zaysIQplBFwoErE7zTtReMrc/5APZcUNydgX7mPjFMj8a8WwrD/QydK0vvX6Ng/8KnuAKGDOnVAVi62mhjExDyOiYdvDzXxjGVVsCJM2noqxBt9dRmML8xmxO/A4g25dGymcHCw97WM44XGERYVfnSVxNQ07D5n4qH3YT8OVezZm/EKli2u2LXBLmndoApmXoan3SIQ43hlcxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gd-ms.com; dmarc=pass action=none header.from=gd-ms.com;
 dkim=pass header.d=gd-ms.com; arc=none
Received: from BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:169::12)
 by BN2P110MB1702.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:178::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Thu, 16 Nov
 2023 20:50:16 +0000
Received: from BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM
 ([fe80::8e9f:bec7:36f7:ba97]) by BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM
 ([fe80::8e9f:bec7:36f7:ba97%7]) with mapi id 15.20.7002.021; Thu, 16 Nov 2023
 20:50:16 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: peek32/poke32 slow
Thread-Index: AdoYyJBiQK/RwKoBTWem67/g/lkfAQAA/pMAAABGJDA=
Date: Thu, 16 Nov 2023 20:50:16 +0000
Message-ID: <BN2P110MB0948E12E41A840B64FA9A8F4CAB0A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
References: <BN2P110MB09483E08C99BAFC569FBD48FCAB0A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
 <2b3d74f8-df85-4d60-9b1e-7a3e7d1b20fc@gmail.com>
In-Reply-To: <2b3d74f8-df85-4d60-9b1e-7a3e7d1b20fc@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gd-ms.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN2P110MB0948:EE_|BN2P110MB1702:EE_
x-ms-office365-filtering-correlation-id: 1f8181ce-1e04-4e5e-c68b-08dbe6e5a379
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4AdGj1WTghWmA+InDsiWGp7lAf5eBuNeFax7L845DW+n1uGUrijwEIgRDuF6UfmOkITZUrMIluhL2XDYDutgYkC9mY5wRRv4r+kIS86ys2UFF33uYToTSmEb5G3HOCtuaTMEnsr4eyvah/au2/MuItbdATn7FaPF9aYXhq9X0tncibZtNBN2F+YEzBU6zbj93pbGKGfIN0PR1144wO6BmSyvKR+64kWC7rjKgLEpZXaCp5JkMy0t7x86QR45HcniBwljxRTozsyqbXf0+1gQmDRukqKEk2g3Ll4P2Ss6useE6jbQBEx52+Vtb8cdgw+A39jzaBbI10OiecH0bC3VFm3s6uiYvNnk7E/kvv10uzjSv8B9oEtyAEmnFfTkAIAH8w3OHbQozYDK1x48JP9n47MAiFnim8gUX7yOLkly0rlxIuZkZot5FOABLUgBnrcr4m9HBnrT3wVm/bYlcRnxgJJGZU7VJfqaxxQV4idmSSMxW4nTt1+VydJeBBJxMd4gV6noGHxhrzUc/4WTZYBe25leZ1XgmXV526xNg3OYi4+ypYioZi84caQdru02jBmmt9XD7TuVCH9mv4HHGFr5OE5aHY2aoQopSjFZJ0kossTsNANOYim68wg5ClcMsley8daYbnT8M63pK2hHSQZwSiAMaQP3Zv+JWkmWfKjTmPk=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(230273577357003)(230173577357003)(230922051799003)(451199024)(186009)(1800799009)(55016003)(66899024)(6506007)(66946007)(76116006)(66556008)(110136005)(66476007)(64756008)(122000001)(38100700002)(38070700009)(33656002)(66446008)(86362001)(82960400001)(83380400001)(26005)(53546011)(9686003)(71200400001)(2906002)(498600001)(7696005)(8676002)(8936002)(5660300002)(52536014);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: W2qDTXrh4O8Wm6O+eD1j2eXhgbJ4+AYgPVy1oICpYwTgXM+g5hxQaoML25udqbbmdz/lXIur3Naj2wKD1IrdWtTgAvkMrTcWVf6l2npY+UnHqk8XiufPrDDL/TufoRGrWteutLqqU/TQUkaSvmgBR6JmV2FraNmMCZiq2ghi+Hw9Jhv/AbvU7/NdVDD0cn0gjow5g1lrapubrH0h/GmNSqKuegtG/HNyyCbVlSLs/Slcic4tx0q4IiSGnbSQNF2No1Rz8VhIK/2x6LIAJ14xJbO8BssLIi+9iaO9xmAcb2DBA5ysMtMhpfX679gV8c8eYZDKbX/M1rS4SNRwhDaC50A28dPnzup8wO5thS2oPhd5YMW20K1dlK7NpQvILOuS86T3MoPpemDLBgHvqGBHXDpbxFXO7Dnd24pwLKNQ46Q=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f8181ce-1e04-4e5e-c68b-08dbe6e5a379
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2023 20:50:16.7478
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7c5a26cf-ddf0-400c-9703-4070b4e3a54d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1702
X-OriginatorOrg: gd-ms.com
X-Content-Scanned: Fidelis Mail
Message-ID-Hash: BKJCWAKXISICH2RJSTC3FLZACSC2O6E6
X-Message-ID-Hash: BKJCWAKXISICH2RJSTC3FLZACSC2O6E6
X-MailFrom: Alvin.Begaye@gd-ms.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: peek32/poke32 slow
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BKJCWAKXISICH2RJSTC3FLZACSC2O6E6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Alvin.Begaye--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Alvin.Begaye@gd-ms.com" <Alvin.Begaye@gd-ms.com>
Content-Type: multipart/mixed; boundary="===============0872358576887148429=="

--===============0872358576887148429==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN2P110MB0948E12E41A840B64FA9A8F4CAB0ABN2P110MB0948NAMP_"

--_000_BN2P110MB0948E12E41A840B64FA9A8F4CAB0ABN2P110MB0948NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm running the SW directly on the ARM of the X410, so that should rule out=
 network latency.

When using the UHD API on the ARM does it still go through the MPM?

Is there a way to bypass MPM?


From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Thursday, November 16, 2023 1:36 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: peek32/poke32 slow

External E-mail --- CAUTION: This email originated from outside GDMS. Do no=
t click links or open attachments unless you recognize the sender and know =
the content is safe.

On 16/11/2023 15:11, Alvin.Begaye--- via USRP-users wrote:
Hi I am using an x410, and running through the init_gain_block example,   u=
sing the high resolution timer I am getting these results, which seem reall=
y slow, is there a faster way to read/write registers?
I believe that on the X410, operations like that actually end up going thro=
ugh the MPM process that is running in the Linux PS
  slice on the FPGA.

One can expect to pay various "latency tolls".  There's app-land-to-kernel =
latency on your host, latency of the network stack,
  latency of the network media itself, and then all of those things in reve=
rse order on the X410 side, since MPM is just a piece
  of software running as a normal app process in the Linux PS on the X410.

It has never been the case that what amounts to "session parameter" setting=
s were intended to be super-fast, because in general,
  those things happen at a MUCH MUCH slower pace than the signals themselve=
s.



Time 481.835 micro seconds.
Gain value read/write loopback successful!

Here is the code.

    t1 =3D high_resolution_clock::now();
    gain_block->set_gain_value(new_gain_value);
    const uint32_t gain_value_read =3D gain_block->get_gain_value();
    t2 =3D high_resolution_clock::now();

    delta_time =3D duration_cast<duration<double>>(t2-t1);
    std::cout << std::flush ;//<< std::endl;
    std::cout << "Time " << delta_time.count()*1000000.0 << " micro seconds=
." << std::endl;



_______________________________________________

USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>

To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>


--_000_BN2P110MB0948E12E41A840B64FA9A8F4CAB0ABN2P110MB0948NAMP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I&#8217;m running the SW directly on the ARM of the =
X410, so that should rule out network latency.&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When using the UHD API on the ARM does it still go t=
hrough the MPM?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a way to bypass MPM?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech &lt;patchvonbraun@gmail=
.com&gt; <br>
<b>Sent:</b> Thursday, November 16, 2023 1:36 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Re: peek32/poke32 slow<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"3" cellpadding=
=3D"0" style=3D"background:#3F7FBF">
<tbody>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto;text-align:center;line-height:12.0pt">
<strong><span style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif;color:yellow">External E-mail
</span></strong><span style=3D"font-size:10.0pt;font-family:&quot;Verdana&q=
uot;,sans-serif;color:yellow">--- CAUTION: This email originated from outsi=
de GDMS. Do not click links or open attachments unless you recognize the se=
nder and know the content is safe.
</span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal">&nbsp; <o:p></o:p></p>
<div>
<p class=3D"MsoNormal">On 16/11/2023 15:11, Alvin.Begaye--- via USRP-users =
wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Hi I am using an x410=
, and running through the init_gain_block example,&nbsp;&nbsp; using the hi=
gh resolution timer I am getting these results, which seem really slow, is =
there a faster way to read/write registers?<o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal">I believe that on the X410, operations like that act=
ually end up going through the MPM process that is running in the Linux PS<=
br>
&nbsp; slice on the FPGA.<br>
<br>
One can expect to pay various &quot;latency tolls&quot;.&nbsp; There's app-=
land-to-kernel latency on your host, latency of the network stack,<br>
&nbsp; latency of the network media itself, and then all of those things in=
 reverse order on the X410 side, since MPM is just a piece<br>
&nbsp; of software running as a normal app process in the Linux PS on the X=
410.<br>
<br>
It has never been the case that what amounts to &quot;session parameter&quo=
t; settings were intended to be super-fast, because in general,<br>
&nbsp; those things happen at a MUCH MUCH slower pace than the signals them=
selves.<br>
<br>
<br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Time 481.835 micro seconds.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Gain value read/write loopback successful!</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal">Here is the code.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; t1 =3D high_resolution_clock::now();</span><o:p></o:p></=
p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; gain_block-&gt;set_gain_value(new_gain_value);</span><o:=
p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; const uint32_t gain_value_read =3D gain_block-&gt;get_ga=
in_value();</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; t2 =3D high_resolution_clock::now();</span><o:p></o:p></=
p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; delta_time =3D duration_cast&lt;duration&lt;double&gt;&g=
t;(t2-t1);</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; std::cout &lt;&lt; std::flush ;//&lt;&lt; std::endl;</sp=
an><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; std::cout &lt;&lt; &quot;Time &quot; &lt;&lt; delta_time=
.count()*1000000.0 &lt;&lt; &quot; micro seconds.&quot; &lt;&lt; std::endl;=
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<pre>_______________________________________________<o:p></o:p></pre>
<pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a><o:p></o:p></pre>
<pre>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com">usrp-users-leave@lists.ettus.com</a><o:p></o:p></pre>
</blockquote>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_BN2P110MB0948E12E41A840B64FA9A8F4CAB0ABN2P110MB0948NAMP_--

--===============0872358576887148429==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0872358576887148429==--
