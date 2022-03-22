Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 889CF4E431E
	for <lists+usrp-users@lfdr.de>; Tue, 22 Mar 2022 16:35:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6534438525C
	for <lists+usrp-users@lfdr.de>; Tue, 22 Mar 2022 11:35:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="Z49uAkuM";
	dkim-atps=neutral
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12olkn2105.outbound.protection.outlook.com [40.92.21.105])
	by mm2.emwd.com (Postfix) with ESMTPS id 10A2938412A
	for <usrp-users@lists.ettus.com>; Tue, 22 Mar 2022 11:34:52 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CS3y3ui3nH2M6/pGdBfzroiCUBoh0iDmUPg+y+/sCNtqVqh0yh8aoh6CrmwDxdAbhRtG1SFZDlrcp2vvUOy1hQhccH4SGTZXLIBnJMr899HcIMQ6A39uMVMb0SD818a+hOyhnhAMszpcnpDB9U9XVjfo/KsCxI9MXREjKwzZejtdQrA019dbbRuV8xaX59czWNpFKDmimFvCvaN4MiheweMtSPzFvE/KEGm57IT0xWb+l/QxteFC+/wM0jO27+mGucQ+XRAeECa+j3nBIkB/vRk/a2hAZ1/qsuhwg6RHO1f6lfQh4oDA+APDOTXiEulU+EETslruWAZHT/r2Bm3nnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jjvQ+GkOTyOQA9AJuczVBp2+6Ckkw6hTAgJ5mna4hDA=;
 b=ejbRVnjFmo6wAltXj5oh7K173fJQsT2P/QjH+8p5OC/bN6jCj9aYKiFNC/ZwspymEnQz6+TX/8+Or+H0JpxlAPWrklzBVPuc56eL7Ov9JU/ubza2DG6/+4xWyvZdyzs4anipETFnXEsQBQtqIhphPHOprxRxFXg1M3DojBekNxNturfomPhKnSxcdt6ENL6gABzRp7zmMVUq0d/PNBYxMzox6+wBbvhRvAXMPqm1/CxdBYgUa4F+d7pMU3WDFvstBEvMdal8+XVtbRZLx2Ummg+Z/448t/EZdp890dfr/49jfFG0qSJlg/AmJvr1z8T38G6B5rG/nRNHgxxXQEuhVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jjvQ+GkOTyOQA9AJuczVBp2+6Ckkw6hTAgJ5mna4hDA=;
 b=Z49uAkuMYFsZOXTyPRZzHRsBXaQuonLs/FBti7I770Ie+HKo0I2ZLiAXZUhze/zxU40g0T7KSBeiE+wg8dUAabNlXvxs5HDCzuB3K3/Q7JXR9oaYtKMV5drVenXx55BiMkGzGb6XFSG2B8KTjiyiAa0dyjQC7BCwtLg86EpMR8vW8QTcZ1+VpZlBiO345PMbemA3s/CnPQ8a0GROJqU8z3m7BJc1Cm/duooKueoKEJYH8vrmUOnWBEVzXJ+mbBwInSseye9RZF+2sB/MIafzlvHRXWUDewoWV4/jvLV2tAoJTZ92U7ZG3ayRXnJdTYbvpJEH0Sl0hQabpaWlctDXBw==
Received: from SA1PR13MB5513.namprd13.prod.outlook.com (2603:10b6:806:230::6)
 by DM6PR13MB4098.namprd13.prod.outlook.com (2603:10b6:5:2ab::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.7; Tue, 22 Mar
 2022 15:34:51 +0000
Received: from SA1PR13MB5513.namprd13.prod.outlook.com
 ([fe80::751b:a52d:4cd4:4cac]) by SA1PR13MB5513.namprd13.prod.outlook.com
 ([fe80::751b:a52d:4cd4:4cac%9]) with mapi id 15.20.5102.007; Tue, 22 Mar 2022
 15:34:51 +0000
From: Jeff S <e070832@hotmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP Burst Mode Padding
Thread-Index: Adg+AiwK1BfQReulTMKbENE3x+B22A==
Date: Tue, 22 Mar 2022 15:34:51 +0000
Message-ID: 
 <SA1PR13MB5513C96E374201E489B2574CA4179@SA1PR13MB5513.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [817h0E/eHuzN0Wckt2bGpSFrlNpEt0Z2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2f52350c-4cdc-4812-0f3d-08da0c1981b2
x-ms-traffictypediagnostic: DM6PR13MB4098:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Bk9Z44vNVeKoOgW7PNBucbSIM5feoaKOYdUbVJ7GoI6gToc7M/7N/va7hB/VOwQQFwio8F9sm3qBCMewo7vvtLY9bjUBXEsfSx9YXIW38M4MeHUJxaJWujLbKHd5Gw7tmyk5d9vaxJUVmlpFXe3qEPy53GnvclSGQ65LYVfOZ7qndzAIzoMaUTKhGXU9yPcCUUwVpaYHG7pw4ei5Esho7l6EzXjjWaeYsxDh/fl8CF8oK/S0s9ZwCpjU092ZcyK1rH9BrqGH9f1qrYkxkrmy/m4WDSnasob8jK0nLch+J+LfM3TakMcgVcXscwTrFdQE+FG6QFTzYxZSIOc+2d4If1nH2BCi08Xzb5pEA1dlF5Um6yf0IV2B/rw0+XLbn3QnO94p5EW2DAObLCV9dI+UUemk0OvKkx4LIzXUT7ma0LKbpw6oXnX2cy/JASbw7vIxHCQJKHzEWibPiXLB9PLdjHn2DIbn4Zd7WAkJbb2rWtubI38m3PGg29mcl2FCGdcjCvnJo1V55eKKMuKdXZkWpoZDqtwlUuYyPRGhBKNAMTs+pFd8PyeIBQosTqGriFOo2Aiqn1OrNq5XCsuYFv7kTA==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?3YpiqpVRJmaocN7ZrkatVuC/vny4eEQ2Kev7acCJrA0IXORB8WR7Yh6U+JhO?=
 =?us-ascii?Q?dKw2YB4GMV/wsM9ddqKHtUIVoxu2umg2z+zmoQPSQB5dFI3c5GiRjFD7c2lh?=
 =?us-ascii?Q?Op8kv1Ueqy3bscZCW5baWrQ8acYH72i0FDIIvHULmzkzEdxW7/N1MBpVBpG+?=
 =?us-ascii?Q?lL1iS9GOn7JK9clXqrJvbPP1UC/0G7t8N+wfl77jyIrD7FvWiroFimP/p0PP?=
 =?us-ascii?Q?GWCbPrNIjyZYqDI73LDDamEzfOieWEFdQgiBa78fjp13XtD0J/xhRM8mARIR?=
 =?us-ascii?Q?IEsETzNGRPpuOkKra2mckr0xtNXT1mUWZXnK6cbNYiZgkpqyOLfdwubg/amn?=
 =?us-ascii?Q?uqdtXYScVAeYDwHEW40Eie5DbgowJOAEQw9wOT2+5QsMBH+xM5GfsKuv8ApD?=
 =?us-ascii?Q?rOyvDKPH3DB6j0yG0Y4V3ncFsA76Ev5Hon6D7+Rh7Qxl2Ef39dXvyNuuuoFS?=
 =?us-ascii?Q?/92jyNQAj9zZHDL4+BPwYeR0Gv8U+GdcnOQl6m1GqUo8tvuX2XvHzxG2MTui?=
 =?us-ascii?Q?kNdCfwBROf2KUwDCluye2Kvdm68ofVNIqRlucPrsvqYqJFeTl5xOC5O5wr/n?=
 =?us-ascii?Q?0Xx6o4w9+CpULchb7qdTsro7PKKL2OIw3i6s644xn/vOlSA+gGKNfEeT1FsH?=
 =?us-ascii?Q?RDTpJdoxsYRu697mglgUFLwh4r8Q+Cl6X+0tBrRnIuAUz62oivVlscvOkJ17?=
 =?us-ascii?Q?KOqaoxdYBTUpU0lBZ9/cp86eJox18LOHzts6hmEi2QIw/OcbMTcguDlRxyqZ?=
 =?us-ascii?Q?/gKH9mxQOVoOxkBPxvyarFY6VEXLjiBnrq1FzV+j20sWjkp0PSRtlfRSlCuO?=
 =?us-ascii?Q?y+FVNlzljFsWtDQ7hVaM4DBYHVb7lxbdo5uEhVQl4D1OAPycuuQf/MTu7zjy?=
 =?us-ascii?Q?Jrc8W29olGc8uom6a/zcKc++XYeK6frvt8+ACUx2vVvT0CNryIRmhQBOZ5FD?=
 =?us-ascii?Q?0uEzGvTFdrOJ4THa7LKLBIRFCUz2jBYZHhye4YsWC4RkKfZ7Ipgo2zht1P4g?=
 =?us-ascii?Q?U/D2b8m9C4KH4ZrA87hVD2XQ/Q6fq+cULg4XU8lKM+DRY8TFWSUfs4FU+w4m?=
 =?us-ascii?Q?/XfKG9cmQ/7Rk8yK5nUx2+7jjYQd0y2tEDgBHPTMtkgWlMUmfl2hY6P7NBL3?=
 =?us-ascii?Q?xltHr4JwjqGs?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4778-2-msonline-outlook-da780.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR13MB5513.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f52350c-4cdc-4812-0f3d-08da0c1981b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2022 15:34:51.5055
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR13MB4098
Message-ID-Hash: O7NSE66QYFHO62UDEM3T6EOUOHJI54JK
X-Message-ID-Hash: O7NSE66QYFHO62UDEM3T6EOUOHJI54JK
X-MailFrom: e070832@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP Burst Mode Padding
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RQRQSODTADHC4JF256QPJFARBKNLJSRE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3997282221213453112=="

--===============3997282221213453112==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA1PR13MB5513C96E374201E489B2574CA4179SA1PR13MB5513namp_"

--_000_SA1PR13MB5513C96E374201E489B2574CA4179SA1PR13MB5513namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

It seems like I had a discussion a while back where it was described that b=
urst mode needs to have some padding before and after the actual burst pack=
et.  I'm now getting back into some burst mode work and am wondering why th=
e padding was needed, or if I have misremembered the conversation.  What I =
have been seeing is that if my burst packet is not padded, the X310 seems t=
o not transmit all of the packet (or maybe the stream isn't providing it al=
l of the data to the USRP?).  If I add zero padding to before and after the=
 actual data, it seems to transmit the whole packet.

Does anyone know if the USRP needs a specific amount of padding (before and=
 after)?  And does the padding need to be included in the burst tags?

Is it better to use packet_len rather than SOB/EOB, or just different?

It would be nice to have a direct PDU input to the USRP to identify a burst=
 rather than changing it to a stream right before the USRP.

I'm using an X310 with GNU Radio v3.8.5.0 and UHD v4.0.  Currently, my pack=
et is using the tx_sob and tx_eob tags, and the padding is included within =
them.

Thanks,
Jeff

--_000_SA1PR13MB5513C96E374201E489B2574CA4179SA1PR13MB5513namp_
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
<p class=3D"MsoNormal">It seems like I had a discussion a while back where =
it was described that burst mode needs to have some padding before and afte=
r the actual burst packet.&nbsp; I&#8217;m now getting back into some burst=
 mode work and am wondering why the padding was
 needed, or if I have misremembered the conversation.&nbsp; What I have bee=
n seeing is that if my burst packet is not padded, the X310 seems to not tr=
ansmit all of the packet (or maybe the stream isn&#8217;t providing it all =
of the data to the USRP?).&nbsp; If I add zero padding
 to before and after the actual data, it seems to transmit the whole packet=
.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Does anyone know if the USRP needs a specific amount=
 of padding (before and after)?&nbsp; And does the padding need to be inclu=
ded in the burst tags?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is it better to use packet_len rather than SOB/EOB, =
or just different?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It would be nice to have a direct PDU input to the U=
SRP to identify a burst rather than changing it to a stream right before th=
e USRP.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m using an X310 with GNU Radio v3.8.5.0 and =
UHD v4.0.&nbsp; Currently, my packet is using the tx_sob and tx_eob tags, a=
nd the padding is included within them.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Jeff<o:p></o:p></p>
</div>
</body>
</html>

--_000_SA1PR13MB5513C96E374201E489B2574CA4179SA1PR13MB5513namp_--

--===============3997282221213453112==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3997282221213453112==--
