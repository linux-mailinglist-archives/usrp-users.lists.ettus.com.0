Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 747954B0337
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 03:18:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 582283846E9
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 21:18:51 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="mMQ5sKxu";
	dkim-atps=neutral
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0052.outbound.protection.office365.us [23.103.209.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 3C798384969
	for <usrp-users@lists.ettus.com>; Wed,  9 Feb 2022 21:17:47 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=ZZ4WVFEoi5HuiJ+nIrvl1U67P3myLoe8lZgpviz4OediP+ixBO8dhAgpxbKCt1hFAkClSrmfhHszD8hQdBgaVdDIT6ZPpCtyN9zCf3Bb+mu/gaJmJi2E7hjEh6zpv4aIBrUEc1w4FRJcAWqRh0RDYhnBF6YF9tPnRBSRLXucQAi7xjJN7zze+Lps1f4BbChMFXaoWhWQUZBK8N4v7eCQixcag7gk44uwnioa6sEPirQ9GDo7uz6VwfDYGoanCBDxIomVAlduTblKW6ZfB5YOGtF0uJFAk75zKZLhzKmg7luI6GNfRh3p3h9BSOa9Jn96z7seHg3blBeLAG3yi7eCwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tct9hsgFZRYcyfMHZYLXa/par39QCWgbg6P68Bc1S+Q=;
 b=Ju2VoJy/4nlgL6umFGfIqv/X7oXTpMN+bZKiuB5RafHataicep+/ALjDSqPAU2zGcAEOulpy7RBXbnoYIb/EngzDP3IoNlapsAA4jmshCA3tEHoL2du++iQdoc4nc1fvAUuuQZYgNDllx/NMu8Z0odckL/ranBZzKPX/Ymv8RhaZMkqSekXazbjxT3+DLtio78rqupu1bShDgY6u9a9NYgV++FH+4BuW1JvTqejATlGHAoJYtRV6oLEl9bKFynPDsPI16npy59J/2TorFUI4uLWe9YrUENDgpjrMv6MmXNUkGL7t6RkDZlvBHofGFj01/51nQT58ke4o6oLOc4qzXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tct9hsgFZRYcyfMHZYLXa/par39QCWgbg6P68Bc1S+Q=;
 b=mMQ5sKxuW83qf4gjhZDE6XT245f51Uo2KQBIYqtL0zr22BN4YLfEkPw+XSTL5+6wvv3X2xqs0IYyRGdPHpRHMGb+PwIh86t4RkstxVqjvDXdrWdxIyigVqb7UwgkBAt8uP4MZ34slutrFc00ojXwhkvRQEO6d+E6qp5VOFzuPN2exqXalVb4minCAIq7LZLQokQMJFJ4KHZDnkeKl3mKwSmvngKIPsJnExthmrFu3DZr1ijQwvq/WVrvuefjxWLDm/uv4FIwgkP+HrpYMtnZGkbRkoGI/5/zL9R2r824Ymhs1YXHyeIsQwFTAx6FFKFD8yClkZETGOKEABciljQT+Q==
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18a::22)
 by PH1P110MB1249.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11; Thu, 10 Feb
 2022 02:17:44 +0000
Received: from PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::2d99:3572:584d:4870]) by PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
 ([fe80::2d99:3572:584d:4870%2]) with mapi id 15.20.4975.011; Thu, 10 Feb 2022
 02:17:44 +0000
From: David Raeman <david@SynopticEngineering.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD 4.1.0.5 breaks support for DPDK on 10GbE links
Thread-Index: AdgeI0EZ1fYgapI6T666ppInYdrDRg==
Date: Thu, 10 Feb 2022 02:17:44 +0000
Message-ID: 
 <PH1P110MB16651422693C8BB28D0320E7B72F9@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bf0bec0e-3e38-4234-e20e-08d9ec3b85e2
x-ms-traffictypediagnostic: PH1P110MB1249:EE_
x-microsoft-antispam-prvs: 
 <PH1P110MB12496FF08AE16134D91D37BEB72F9@PH1P110MB1249.NAMP110.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 KHZZHaVSy+qaBUhutcUg3KijtZGhEAyH5YH/joRjHtqs49zEQXuT+DI0CcMuCnEvMmPWmvUJ1ohsOUex0aL36kZ0y0J0JPPsC/8+9ay0xQPN6Qui9EVMLrAk3LOw/yXL/zP+EmgQU2N2uEnRDVEiSXbc/eMZwz8jJ67FRsbj82y6on5PHd7tTP2Rk4phbnV/FDW1T9iQJBcw0dfo445cEezoqIC2tvTvcgZXNxgS1vTbbghsuAYFINUus75WgNfCZldieyqsuwLEDoZuYk9XgSVmTEb/KG1LLHP0tjObEcz6qeD71MJ9KbII+/CeQu24Hybl2J+RwK+7UOt2Yyngu2Rs1fE+wIJ7P74/1grfWtP/xUHG2naIeq0SlsG7TBO98ttB5aUhBpLzIGUkShn+/C8mMexEASCn8X/YgWFrBoo6dmEM3+zj1zHgIytAbFhtwSa72EeuBCJDEa55Ky2Xq3SYaROotD5R8BXgXRJ6nH3/mcvvxA9R95Mh3n9nBI0E4QyniNF4wGZI5GRVmv+ZlWXFY/prqAaTAz37mnSiIjLTGDnphhYZlVOjMnUyB9/8BeIL0clvCJ2XQ/VCeIav7c/KyTpjEZhuWsxLT2+JnPAXo9s0kA8W1blVijDC3cGzSaHc+F56mxfrGLyDl23OQQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(376002)(136003)(346002)(39830400003)(366004)(396003)(55016003)(2906002)(33656002)(186003)(122000001)(66476007)(6506007)(83380400001)(38100700002)(76116006)(8676002)(9686003)(6916009)(64756008)(71200400001)(66556008)(66946007)(7696005)(8936002)(66446008)(316002)(86362001)(508600001)(38070700005)(52536014)(5660300002)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 TIlX1K6T4bwUt4ME9WPOPPliLXfNOxn9L7dDntbODlZRbnYID8TfZ0A73CfCXInX8qM6VCzxZ49jTayRh66+AkLQjJ5QisjX8bvw1HV5/Bg9wKE737WYjZsJTK8d1Ep10S2fcG0urds5rG+r1OfNFc/3KGea6YoyAE5knqsiELa52POSdvGGYzwd53UOtevxqbka8pL12dwUOP/TcZHRGA==
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: bf0bec0e-3e38-4234-e20e-08d9ec3b85e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2022 02:17:44.0444
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1249
Message-ID-Hash: AYTR3QUDOPS5JPUNF4GSRSS7WEV7T55E
X-Message-ID-Hash: AYTR3QUDOPS5JPUNF4GSRSS7WEV7T55E
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.1.0.5 breaks support for DPDK on 10GbE links
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FSSTVTTCY6KLI4AROX2DMB67PSPFRAOU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3092009830161705019=="

--===============3092009830161705019==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH1P110MB16651422693C8BB28D0320E7B72F9PH1P110MB1665NAMP_"

--_000_PH1P110MB16651422693C8BB28D0320E7B72F9PH1P110MB1665NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I just updated 4.1.0.1 --> 4.1.0.5, and unfortunately DPDK support was brok=
en by commit a629ce3a46. Here's a quick trace of the problem:
(1) The commit increased MPMD_10GE_DATA_FRAME_MAX_SIZE from 7972 to 8016.
(2) In mpmd_link_if_ctrl_udp.cpp, this constant is passed as the max frame =
size to discover_mtu(), which then tries to send a 8016-byte buffer via dpd=
k_simple::send.
(3) dpdk_simple::send asserts if provided a buffer size >8000. This is beca=
use its constructor always makes a udp_dpdk_link object with default link p=
arameters, which hard-codes send_frame_size and recv_frame_size to be to 80=
00 (toward the bottom of dpdk_simple.cpp).

Unfortunately, the behavior cannot be circumvented using args. A quick fix =
might be to increase the hard-coded link params in dpdk_simple, but I noted=
 that a value of 8000 is also hard-coded in a couple other places (e.g. DEF=
AULT_FRAME_SIZE in dpdk_common.cpp).  In the meantime, my temporary solutio=
n is to locally revert commit a629ce3a46 until it can be confirmed with DPD=
K with 10GbE.

Cheers,

--
David Raeman
Synoptic Engineering


--_000_PH1P110MB16651422693C8BB28D0320E7B72F9PH1P110MB1665NAMP_
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
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I just updated 4.1.0.1 --&gt; 4.1.0.5, and unfortuna=
tely DPDK support was broken by commit a629ce3a46. Here's a quick trace of =
the problem:<o:p></o:p></p>
<p class=3D"MsoNormal">(1) The commit increased MPMD_10GE_DATA_FRAME_MAX_SI=
ZE from 7972 to 8016.<o:p></o:p></p>
<p class=3D"MsoNormal">(2) In mpmd_link_if_ctrl_udp.cpp, this constant is p=
assed as the max frame size to discover_mtu(), which then tries to send a 8=
016-byte buffer via dpdk_simple::send.<o:p></o:p></p>
<p class=3D"MsoNormal">(3) dpdk_simple::send asserts if provided a buffer s=
ize &gt;8000. This is because its constructor always makes a udp_dpdk_link =
object with default link parameters, which hard-codes send_frame_size and r=
ecv_frame_size to be to 8000 (toward
 the bottom of dpdk_simple.cpp).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Unfortunately, the behavior cannot be circumvented u=
sing args. A quick fix might be to increase the hard-coded link params in d=
pdk_simple, but I noted that a value of 8000 is also hard-coded in a couple=
 other places (e.g. DEFAULT_FRAME_SIZE
 in dpdk_common.cpp).&nbsp; In the meantime, my temporary solution is to lo=
cally revert commit a629ce3a46 until it can be confirmed with DPDK with 10G=
bE.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Cheers,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-- <o:p></o:p></p>
<p class=3D"MsoNormal">David Raeman<o:p></o:p></p>
<p class=3D"MsoNormal">Synoptic Engineering<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_PH1P110MB16651422693C8BB28D0320E7B72F9PH1P110MB1665NAMP_--

--===============3092009830161705019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3092009830161705019==--
