Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F3AD361630B
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 13:51:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F349A384063
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 08:50:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667393459; bh=FQZIgb0vZX4CrBMpy1SbtQCk6/HeqfwWxoYxTzNgXBg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=KkdGvlLySrZKtD+Jdz0GKt4UKrmlN1kSfbIhuVtC3DCmTfKxpgr5O8QQhnHIg3Cu/
	 BOIlwiwZwFG9QeaBED116dvpqHWp/whpK/PqjGHNCpPbfdnHvYALFBhIpyxgNZ7wxs
	 bZfikZrKOfZpIP9Ix0aFDmxW/1gaSdEmKy7fDrqhha0jI3qB+uz3CHcS2k5M3OO9S7
	 1rZHJgD2Wc/K0KRznLIiGoAq46DaXIsjOt9E9ccB98bs8EHTeAFnj2qyWiq4x4Ysew
	 PrJgQpm9aoybWvpQGLcUi0Z/hYCME/aFImMEVbg2J1kf3u+8TB03CDcpBoP2/5yGII
	 z+8iZF5GeDi+A==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0087.outbound.protection.office365.us [23.103.208.87])
	by mm2.emwd.com (Postfix) with ESMTPS id 78DD4383D54
	for <usrp-users@lists.ettus.com>; Wed,  2 Nov 2022 08:49:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="SnNXrCRJ";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=XIEbfPkSaQAt1JbHcGpRv2BT8yJ4NnSadZb+KOYBzfrov9/KEjxpz4O6uaK+U0/T7YXv1MaCHJnlrD7XoldXfU7kFMTfWOSAJORD8hcV+/HFygjD3H1zFCt3tKCKbQRNisA6eTTjtdbhJY0ijeWeFz8V/idF9iLNsa+SIV/g533Kl9vt9q13jOhmYbeoQ8sSh/HZtO3wzjhlgT/h/qdk48nozhGcrV9WeW23473rOB7JA5t6liI7XgMzLZvXOFsnFgPAmlnyFYhJNjeT4irE3Qsu1wfcPq2Gu77FYmE6LPbqbUvuki2NJZspVYzlo6t2qPo+vDDM6CDj0Di9HFwaag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DQ/9BlV2c52q4pZyAMRKdFqS1O6h2knB5JMJNx2IYWA=;
 b=C3zqM5DoBRgiHzrPsmXJl8yKQVtYp6y5ih9pKPlbHpfvRUeIKDL8QhOyPGXHBsR9uPM+n5UCRRNizq5mjFGS2hZVRvulj4pmkCgy/yOfsskKvcDVWA9Vw0w7pFBqcgNmFNegRKc6AaC4FZtuRU2KNuaCh4XQ79u2p3zOtRrITwBN7Ur0jEZOTsnptfKI41qqq9rA6B1QxWqHF85IRIsJ15yVHmd2FYmnhlY+ZlfypvcOUe+QcgZmWTAfrK/k7xNl9O55uuARUIaYIxQETWhvxn/xpMLMDUi5VSOmnO/GNHLVUNhvafpbPcK1drYFKyOCJ4HxP3/qqpnEdMxALIyR4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DQ/9BlV2c52q4pZyAMRKdFqS1O6h2knB5JMJNx2IYWA=;
 b=SnNXrCRJXEi1R4n3MLvHcObbHOcb3W/0IbkqMx07R0rIoPm1KwpmyEDcF7fV3HHYdWnIsHBDW2nNmszYCc9AZW2RHdBtYmM64BmRuw862JdBd0bX4bukZ4gl7sQpenfSjTsjJ49DoklLR+00l9QsECi3Xq32ddv/zkM1357z7yByfCdC486o0szxhypoF13bzpBlQTcKHBMSRRlruCH2S7m0ACsLSO8Ianw+o1H7DF+2D48aFSihRwAHcAqIP/AurD8HR5pbTK+HTx6K6sqt0kZvGsICFQZcO7bZeHWnuAhyWIZWgQDr/YjoIyPBNwE+K6vP3z6RA9iconFs5h0qVQ==
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:168::14)
 by BN2P110MB1221.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:179::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.21; Wed, 2 Nov
 2022 12:49:40 +0000
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::dd99:586:4130:6ca3]) by BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::dd99:586:4130:6ca3%6]) with mapi id 15.20.5746.034; Wed, 2 Nov 2022
 12:49:40 +0000
From: David Raeman <david@SynopticEngineering.com>
To: Jim Palladino <jim@gardettoengineering.com>, "Marcus D. Leech"
	<patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: N320 LO stability problem
Thread-Index: AQHY7rAbGMBhLfKBpkKklSXlG+QYJ64rkK2AgAAA9kqAAALFMA==
Date: Wed, 2 Nov 2022 12:49:40 +0000
Message-ID: 
 <BN2P110MB1747DA483336FD90E553122AB7399@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
References: 
 <BYAPR12MB33010775AE76FAB552039CF8B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
 <bc238838-4f69-b676-79b7-955751d6a628@gmail.com>
 <BYAPR12MB33013BD6E3BE1D6065E79830B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
In-Reply-To: 
 <BYAPR12MB33013BD6E3BE1D6065E79830B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN2P110MB1747:EE_|BN2P110MB1221:EE_
x-ms-office365-filtering-correlation-id: 6613f9f3-38e5-4b17-018b-08dabcd0b540
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 eg17CY00LqdI57suyhYbbpmJ9lxLwzhcrgUD4qFnu/3zLtMMOnwhft7CHYhhsk6ZECZMtaaDVeamcjjfqAR6a60M3efQpIr3tdvWNxMDD5mpeQmJlFcjqn9F6bcnY16BJiszT0kFWV0o/zwj9EHWeGMiN4LIcOSZK64XF+8P1gAPJ1GdtnrmXF+ZhR2FjA3HW+dBqkdg1KTQ+AGy2Q/hHUNpCcRam+1jRM5/fPcG3PZ6cUKQWQw1d+mREsncB3pnz+vWev+mns39+K4scnYoFw5Gg05CesogDLmVBBfRM32pskaFj3i9dIT4r8h7ANQ8wg04HQ/e2KNpsi41jqzMG2BrQEi9JkT5DWFbS37GSzMzxqteNOiaH+STHw4u4wXq0jK3QtZVaioKgIpT0jUyyYUUISNaU2uFyyxe7a4pouJb5TXPKmDQ3awVzIEgM0JHuzdUE7nxIMeu06+EMiK1g5Gn7IqCyvfWEsTohxrCcrf62S3wurJAcOdDGDl6prHyVvXHh83cuzDv4bxJOD/V6nVv1X9Jw96ANVXvgOSWR6fwGrC2Z7fdPrOCRmYyJ4HNZd/x2M18d7jvyGTPUyAc2pTSGgTUoEZ6F9XXqpQsocx2WSdDXQZyWrTB9HrEQsmbww1F6cLHu4U2Dta+D+hzdsa2FHXUssH5YCeKqvLWm/JpcFOeA4kTsFJ0nZVMRs6Bq7FhwQlZRO2Oj6BjGfb8bVQA17xx1NjUrgY6yMtRcL+LIQtqrwsg30F1mEmubxPL
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(366004)(39830400003)(396003)(451199015)(71200400001)(66446008)(66476007)(66556008)(41320700001)(64756008)(8676002)(6506007)(76116006)(41300700001)(7696005)(9686003)(33656002)(66946007)(55016003)(110136005)(53546011)(86362001)(38100700002)(5660300002)(52536014)(122000001)(38070700005)(166002)(8936002)(9326002)(66899015)(83380400001)(2906002)(186003)(508600001)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 ZLu2/GX/4JkwKm4n+S3CLL6hZV0Tv7Gc3czu1bIvdgC+DUXDEiYv9E8KcItCkYxOZbDbpNjq+Y0euLIwUAldotbLPC6mxX8gpXmx+28IY00gOxjughfKyhaOx0Pt1+B8qvf9GUw4ugyUx18/TFA6EiIP4oeI3p0YxvyPPYu8CmXfRQ7Lwi26TAijhO5POsQQsHZy/TKdcExgKhJiahjwz7MCZ5JU+AuyvX6VkTOKF3ZtPNvBVGekdLkZsiX6I0M2fI2QWHdgMm79nsUz8fkm9X7+A5yeSUku7OE9pNPlyeP9KgtANP36SPK+JnvCUpRQyOFkC2/HXadop8NHwB4k4Jr/hJJlEajSqhkmk9fRmaU8NNdga2mfrHPySGFxuRSRHSl7Bl/eYQOCElLpO/XDXAQsflTrBswzaypqKTVg8xQrFLYzco3zJkxCTdLvhGUVWUqhOeCCX/y8wAVq4oX7wNXYCGd6AOgFhgPAHmQjn8Q=
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6613f9f3-38e5-4b17-018b-08dabcd0b540
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2022 12:49:40.6280
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1221
Message-ID-Hash: U56XKXDJ2WQBLLQBXEZDMFRDWNYO6Z2A
X-Message-ID-Hash: U56XKXDJ2WQBLLQBXEZDMFRDWNYO6Z2A
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 LO stability problem
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GVIMM2W4TGAWE6IPNM6LEZQWSZTPMNCJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0744137569135900300=="

--===============0744137569135900300==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN2P110MB1747DA483336FD90E553122AB7399BN2P110MB1747NAMP_"

--_000_BN2P110MB1747DA483336FD90E553122AB7399BN2P110MB1747NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jim,

I ran into what sounds like the same issue using N320s operating at nearly =
the same center frequency. I was able to isolate a fix (some tweaks in the =
LMX2592 configuration), and my PR was folded into UHD 4.2. I believe anothe=
r, unrelated fix for N320 tuning was also committed in UHD 4.2.0.1. I'd str=
ongly recommend trying that release.

For more context, my PR here<https://github.com/EttusResearch/uhd/pull/572>=
 has details. When I was using UHD 4.1, I discovered that I could bypass th=
is problem by tuning to the same frequency twice in a row. That might be wo=
rth a try on your end if upgrading UHD is onerous..

Cheers,
David

From: Jim Palladino <jim@gardettoengineering.com>
Sent: Wednesday, November 2, 2022 8:38 AM
To: Marcus D. Leech <patchvonbraun@gmail.com>; usrp-users@lists.ettus.com
Subject: [USRP-users] Re: N320 LO stability problem

Hello,

Thanks for the responses. Yes, I have the same issue with tones off center =
-- we initially noticed the issue with some wide-band modulated waveforms. =
I did just try another flowgraph with a tone at 100KHz off of DC and confir=
med that the issue does still persist.

I'll try to experiment with other UHD versions today to see if that makes a=
 difference.

Thanks,
Jim

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com<mailto:patchvonbraun@gmail.c=
om>>
Sent: Wednesday, November 2, 2022 8:31 AM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: [USRP-users] Re: N320 LO stability problem

On 02/11/2022 08:11, Jim Palladino wrote:
Hello,

We have about ten N320s and almost all are exhibiting issues regarding the =
LO stability. It appears the LO is not locking at certain frequencies, or i=
f it does, it barely maintains lock. We can see this with either a gnuradio=
 flowgraph consisting of nothing more than a usrp_sink and a constant drivi=
ng it's input, or using the included UHD example "tx_waveforms". The proble=
m frequency I've been focusing on is 1112MHz. So, the following command dem=
onstrates the issue:

./tx_waveforms --freq=3D1112000000 --wave-type=3DCONST --wave-freq=3D0 --ra=
te=3D1000000 --gain=3D40

Some of the N320s seem to lock ok, and you can see a reasonable tone at the=
 output. However, other N320's don't lock -- we will see a several MHz-wide=
 "blob" about 4 MHz lower than the requested frequency. Note that they aren=
't reporting that the synthesizer isn't locked, but that is what it looks l=
ike. On units where the LO appears to lock, if I look closely on a spectrum=
 analyzer, the phase noise often looks horrible, or I see large spurs aroun=
d 106KHz off of center that slowly move up and down by 30 to 40 dB. It look=
s like it's barely maintaining lock.

This issue varies by N320 and also by channel ("A:0" vs "B:0") on the N320.=
 It doesn't matter if I use an internal or external reference -- the behavi=
or might be very slightly different, but not much. Gain settings, sample ra=
tes, etc. don't seem to matter -- it appears to be an RF/synthesizer issue.

I also tried enabling "spur_dodging", since that changes LMX loop parameter=
s and that seemed to help in some cases (units/channels) but hurt in others=
.

I've been focusing on the TX path, but someone else in my office was mentio=
ning that they have seen the same type of thing when receiving -- the resul=
t was that 1 out of several N320s he was using to simultaneously receive a =
signal showed the same signal several MHz off of what the other N320s saw -=
- and it looked very distorted. I'm guessing that what he saw was the resul=
t of the LO not locking properly.

We're using UHD 4.1.0.5 and associated filesystem, FPGA image.

Any thoughts on this?

Thanks,
Jim




_______________________________________________

USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>

To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>
Also, if you try sending a tone at other than DC (perhaps 10kHz), do you ge=
t different results?  This might just be the
  DC-offset removal algorithm producing results that look like lack of synt=
hesizer lock.


--_000_BN2P110MB1747DA483336FD90E553122AB7399BN2P110MB1747NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
<p class=3D"MsoNormal">Hi Jim,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I ran into what sounds like the same issue using N32=
0s operating at nearly the same center frequency. I was able to isolate a f=
ix (some tweaks in the LMX2592 configuration), and my PR was folded into UH=
D 4.2. I believe another, unrelated
 fix for N320 tuning was also committed in UHD 4.2.0.1. I&#8217;d strongly =
recommend trying that release.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For more context, my PR <a href=3D"https://github.co=
m/EttusResearch/uhd/pull/572">
here</a> has details. When I was using UHD 4.1, I discovered that I could b=
ypass this problem by tuning to the same frequency twice in a row. That mig=
ht be worth a try on your end if upgrading UHD is onerous..<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Cheers,<o:p></o:p></p>
<p class=3D"MsoNormal">David<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Jim Palladino &lt;jim@gardettoengineeri=
ng.com&gt; <br>
<b>Sent:</b> Wednesday, November 2, 2022 8:38 AM<br>
<b>To:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;; usrp-users@list=
s.ettus.com<br>
<b>Subject:</b> [USRP-users] Re: N320 LO stability problem<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Hello,<=
o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Thanks =
for the responses. Yes, I have the same issue with tones off center -- we i=
nitially noticed the issue with some wide-band modulated waveforms. I did j=
ust try another flowgraph with a tone
 at 100KHz off of DC and confirmed that the issue does still persist.&nbsp;=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">I'll tr=
y to experiment with other UHD versions today to see if that makes a differ=
ence.&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Thanks,=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Jim<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"color:black">From:</span></b><span=
 style=3D"color:black"> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun=
@gmail.com">patchvonbraun@gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, November 2, 2022 8:31 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@l=
ists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Re: N320 LO stability problem</span> <o:p></o:=
p></p>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal">On 02/11/2022 08:11, Jim Palladino wrote:<o:p></o:p>=
</p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Hello,<=
o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">We have=
 about ten N320s and almost all are exhibiting issues regarding the LO stab=
ility. It appears the LO is not locking at certain frequencies, or if it do=
es, it barely maintains lock. We can
 see this with either a gnuradio flowgraph consisting of nothing more than =
a usrp_sink and a constant driving it's input, or using the included UHD ex=
ample &quot;tx_waveforms&quot;. The problem frequency I've been focusing on=
 is 1112MHz. So, the following command demonstrates
 the issue:<br>
<br>
./tx_waveforms --freq=3D1112000000 --wave-type=3DCONST --wave-freq=3D0 --ra=
te=3D1000000 --gain=3D40<br>
<br>
Some of the N320s seem to lock ok, and you can see a reasonable tone at the=
 output. However, other N320's don't lock -- we will see a several MHz-wide=
 &quot;blob&quot; about 4 MHz lower than the requested frequency. Note that=
 they aren't reporting that the synthesizer
 isn't locked, but that is what it looks like. On units where the LO appear=
s to lock, if I look closely on a spectrum analyzer, the phase noise often =
looks horrible, or I see large spurs around 106KHz off of center that slowl=
y move up and down by 30 to 40 dB.
 It looks like it's barely maintaining lock.<br>
<br>
This issue varies by N320 and also by channel (&quot;A:0&quot; vs &quot;B:0=
&quot;) on the N320. It doesn't matter if I use an internal or external ref=
erence -- the behavior might be very slightly different, but not much. Gain=
 settings, sample rates, etc. don't seem to matter --
 it appears to be an RF/synthesizer issue. <br>
<br>
I also tried enabling &quot;spur_dodging&quot;, since that changes LMX loop=
 parameters and that seemed to help in some cases (units/channels) but hurt=
 in others.<br>
<br>
I've been focusing on the TX path, but someone else in my office was mentio=
ning that they have seen the same type of thing when receiving -- the resul=
t was that 1 out of several N320s he was using to simultaneously receive a =
signal showed the same signal several
 MHz off of what the other N320s saw -- and it looked very distorted. I'm g=
uessing that what he saw was the result of the LO not locking properly.&nbs=
p;<br>
<br>
We're using UHD 4.1.0.5 and associated filesystem, FPGA image.<br>
<br>
Any thoughts on this?<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Thanks,=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Jim<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<pre>_______________________________________________<o:p></o:p></pre>
<pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a><o:p></o:p></pre>
<pre>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com">usrp-users-leave@lists.ettus.com</a><o:p></o:p></pre>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Also, if you try send=
ing a tone at other than DC (perhaps 10kHz), do you get different results?&=
nbsp; This might just be the<br>
&nbsp; DC-offset removal algorithm producing results that look like lack of=
 synthesizer lock.<br>
<br>
<o:p></o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_BN2P110MB1747DA483336FD90E553122AB7399BN2P110MB1747NAMP_--

--===============0744137569135900300==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0744137569135900300==--
