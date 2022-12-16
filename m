Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B4464ED08
	for <lists+usrp-users@lfdr.de>; Fri, 16 Dec 2022 15:38:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 928CC3844C0
	for <lists+usrp-users@lfdr.de>; Fri, 16 Dec 2022 09:38:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671201516; bh=spZMRITTctTzNYuW1SK7JjNWpxAe9REubIOOI2yrHL8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mOvMbDM67x3JzHRfKFut2Pa6douhz0Pj5st/d3CZ31grKsf2ZTBXLeLZqdwtdv0Rs
	 b0ud4jtByCtz/GCG3DUs1bmbaJpPR4jLh1BEWdkfr2yot8KjWZM/vB0+b51ZS3tPGc
	 bI+DkiD9HDxiGssQpIJIc6AxWd4jWMPqhp1FZxErroKftG6KsOFMQl8iXPOhu4OMy3
	 uwrkF5VMCMPf7RPFLsYhYWyhP5nKGnrA398qJ6HKxZf61YCuZyo4xMVAm12+uOiRV6
	 cNUvrFEQxDZHh4x5sPlEq8oFtnfD3RJXn9lobaZ2W5glDU8Wur/CMgBictye9H414p
	 3tff+vGbavqyQ==
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [148.163.129.52])
	by mm2.emwd.com (Postfix) with ESMTPS id ADFA9384344
	for <usrp-users@lists.ettus.com>; Fri, 16 Dec 2022 09:38:29 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="IopTAuAk";
	dkim-atps=neutral
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.67.120])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 902F8300087;
	Fri, 16 Dec 2022 14:38:27 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02lp2043.outbound.protection.outlook.com [104.47.56.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 6BB7B34006F;
	Fri, 16 Dec 2022 14:38:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BfL7wDG49Vn+xo3GuuexRqo3boEmgfzhFrg5pq64Q9Bt/mv+oWUi0j6hs7PDq+eZatST2M1dK2o9pIN8mdX1koY5hC7heNJdT1KENH2gXcbmQyy9L+JZFIJ/iyLs3N4lWhPtEguebf2J4gVAxiWGHOjxOrbshCefGvhnASd0Z4L2vubB1qplmt9GtRlH5/CpCqnA0zW6cPSR1wkxxQ5hKuQBqk5bSDIWA1Lq+rzb29mXSnq8GI9Jsp4ran8AITFqDHTYndAq2VthUpx3jv/d8o6nVHFVCmfe4Cg5T/+8UMSwTF4a1tzbYSiuDZJ58zkTTtu7lyyRQb1Py2CgOyP9YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mUcPiJqG5oOb/FnhSqm7+MHDB0eXfU5N1OgOcI5PXR8=;
 b=i2PPsgz3GvNm+hrPEzmv/L0NQrvK7L3jacyBn00DvXEgaR2nLhHfA5r5VTbtcpournSwmC4L6DKqTsv54FwII8m0x5E2fnIwxr2/6buLQz9YADVYwPaLzwt8URSP2ohh/IA4feG3oTKW2ell4p6TzMOYIHQVgP0BJGCjFNQT+FKs7zPTEXOEndVdVRMfPlviqU4JYPkZb/Ivrv+wYVpTF5Iebwj8orxtUusFhFyLRMbit1X+ONFWSecsSvtb8tmKK84GZSb2Ney3UhlufNbc3M6N3hwtoGKZAThzu0BCTKm1B92bYr2fDmnIRYgaXLzJZUl4H0MgSR25OinrVRv6bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mUcPiJqG5oOb/FnhSqm7+MHDB0eXfU5N1OgOcI5PXR8=;
 b=IopTAuAkrV8gGacByK8ZRNSMsXZU/oywJ75sKFjgNDgJotIrrUai2R9Gr8FzrYVCO2lhLoD+06ocXeenpUx1u7p+8Bi6q0vnhzdv2l5I1ahyy+y7tTbo5XxVpyrXi0MC/WCbDmPTmQo1BErQWSsRVMjNYp+u5j52q92xoT4K548=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by DM6PR12MB4861.namprd12.prod.outlook.com (2603:10b6:5:1bd::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.11; Fri, 16 Dec
 2022 14:38:25 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7310:a35b:123d:68a3]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7310:a35b:123d:68a3%4]) with mapi id 15.20.5924.012; Fri, 16 Dec 2022
 14:38:25 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Mike
	<mikerd1@verizon.net>
Thread-Topic: [USRP-users] Did anyone else need to do this?
Thread-Index: AdkRWAwsUIMthgiLSUi0JuH6B0DRRwAA7YCA
Date: Fri, 16 Dec 2022 14:38:25 +0000
Message-ID: 
 <MN2PR12MB3312452F84CCF60E39794535B8E69@MN2PR12MB3312.namprd12.prod.outlook.com>
References: <00c001d9115b$55bcc130$01364390$.ref@verizon.net>
 <00c001d9115b$55bcc130$01364390$@verizon.net>
In-Reply-To: <00c001d9115b$55bcc130$01364390$@verizon.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR12MB3312:EE_|DM6PR12MB4861:EE_
x-ms-office365-filtering-correlation-id: 04469472-21c7-4ae8-e770-08dadf733050
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 xFJoM+qcmTBtjWp3aKbJqlttD/DEcCdsOc/ddHOKR8LM1NCOWJiEWaWMkJsrGWWldz3vXYb2SkR1aOVROmmgm5CPE9cW3aar1sn54YOqCtUtJQhMRwBPFCMoqHyA+EUHaQ/L2lDdFRmLjdSgfuzzkQ5N2jJ6o+pG6eFWHVG2NYD/u8EQ/kNAVNLBfqLHMs5wkzACTUGEyu+IAHU7w/WhPcY44w7+rZiigboq01zBdNyOS0MWMPWlsMVHRwQrwVyg6vgA67U0CwTC6Iuf/1Dzrbh8nuEfeXJIzaKhEaF0Jr1CnLMQtLMDLQ6ZeIxGGQF5YGlBD+ARzCjBrH6uwb+cMUZRjTpirF0JmLcvEwn3VoQYXE5iybZydi/FX//V3NJoyvhypbIK1d99SjA0bERFt+gcf/UBcu27kplF2YLvoIhws1w4OxCEzThCmTJuEBw0E2b2fCGIWw6U4wkawtLZOxdPsGRshk5T8yIDDTOugQSxUiEOIsz16B9vnxrBonS42ckAYa6YmMKMfwPX1F8hrenCclPhA50geS4UqPgranj47fx3a8chnudkNG9kVsaPjzdCVFn8Ey5yXOG4jvlJFcs6kkTszzNrYu+NFS8IUlc132IkNPHe03jrGCfx9Xhb7pPXh5saope8C6mLscEE/++5TNieue5yBcF8wBwOHE7DvtJTRrUAvB0FJn5+R9nARRYK4VGpCc5OBTKw7h8iiYUhqqFR/bcsfWsezaUAltxzxDPRQVgryocBBjBw+VLN
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(346002)(136003)(376002)(396003)(39830400003)(366004)(451199015)(1690799008)(71200400001)(33656002)(55016003)(66476007)(76116006)(41300700001)(478600001)(8676002)(9686003)(186003)(64756008)(26005)(86362001)(966005)(52536014)(7696005)(316002)(6506007)(19627235002)(110136005)(122000001)(166002)(38100700002)(38070700005)(5660300002)(83380400001)(8936002)(66446008)(2906002)(66556008)(53546011)(19627405001)(66946007)(21314003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?ObkEG38XMHyIn43ZzYK0FUuEmggXtZUMrhtkOpDkckh994oowf3uC3yd?=
 =?Windows-1252?Q?S0PLWa9K4adkWjHrp199JsaydhLp+iKCM1Rf1DJnp0aWgdRitat+ZyJ4?=
 =?Windows-1252?Q?HSPvrYsiybzBG4l7/fFrLiQmxKePNyNMGPrAVmYqW9hAeEi7blzao6Sm?=
 =?Windows-1252?Q?0tfGr89FF3D9d1zL/UFcaPGjk5O+7gtE7tTpNHJknfUiNaiiWnHGH+AC?=
 =?Windows-1252?Q?0nISpoVZIfO98gVVdltgzvoCIXF/ghxYcFD63mtihETy8PzGHKJTJM8z?=
 =?Windows-1252?Q?sMFijCTPsp/UnNFHCLjkpLN94KTsXmnSbtd9OD2nf4+vIk1JKxxlbWQ1?=
 =?Windows-1252?Q?sEdNyIWsyleyu3FqcFZRRYel7zj6wV9SMW1aMnBLAmaDmuJAKkIIGPxy?=
 =?Windows-1252?Q?boerD1ay/+WW7Y8ugq3vc7Wko48OrieC/PCWgzSM6REK28LfvRBcQeQz?=
 =?Windows-1252?Q?0tkRKDp2YNaXYd3mmu7iS4n1YgcOOHhr80clmLjF5BCGdbDXtbIgG/4M?=
 =?Windows-1252?Q?lO25EnIu8a6J7M+0Kky8wa+YaoXPmiC3CTI15nwcr7Ag0Lj4E+OqqHx+?=
 =?Windows-1252?Q?TX8duONhQJdPS18/aEh4wAkzfi2W1T8fYrVXksZWIj4830PIrn2jVGcu?=
 =?Windows-1252?Q?LFkvBLkXBr7s12BecZYK4RgQ7C/gwdHz1ngssuTKedf7vPbrRKpCF+6i?=
 =?Windows-1252?Q?dDYPmngKabPItGNlnYtDNhlEknc9aWJB28rigjrtHgeCnbiIMEwu/oma?=
 =?Windows-1252?Q?FTGlALM0v5BwIpwjwFVnQB0ymsEkmt3jOp4wJ8l9JRzcaRH16MJcZxV/?=
 =?Windows-1252?Q?MSA9xQVXLDHtRRSKXX8FxHebWpSRfk5kW2MemsNJnKcOxO0CiWXQL6d3?=
 =?Windows-1252?Q?fgH4zCJ1AQB4quJwM77icKdVwMCYrcC4sfckkpqTEcuLu/SEVVI6qJQq?=
 =?Windows-1252?Q?gkJ9at6qVbeeHGLbQc5Cq5snKORDIftYRs2K/epXCsjaIkoXs4XIAbTM?=
 =?Windows-1252?Q?tr4u2tS8efE1kVBK47QzAntF4IxP1oR4qHCnScwjI2tyVJcYRteuotB2?=
 =?Windows-1252?Q?CaERERZOhJgHIFs62ZXMtuFfm3ChH5XuE4AKp/G+JaEjK45xXxImcimT?=
 =?Windows-1252?Q?HfjbkY8SAf5Ek10mMhu3uOYNJskZ8a5nmA8nkNpDUPQMgVnf/tCZPAxF?=
 =?Windows-1252?Q?KLJ3cCgGG22ctWLd+Pi7zk9BUwpwD2HXZQ5r5z1SVN6KZ6yySZBbXEkj?=
 =?Windows-1252?Q?42OpjFNmhaf14+SfpIWrdJr4PVhi05sAVRSSQbiaMX0wO9QMjYRT9WYR?=
 =?Windows-1252?Q?uXwzlbWoZ0Og38qnNtGMLU6Lsb5rIFMut1WQtSEqY0OTyvsOB1DnGTod?=
 =?Windows-1252?Q?6q2RrGij5YfZIwzwXQNfDgo7tXUEY6wjE5hwUrTpwznm77nHidGoI+73?=
 =?Windows-1252?Q?BFTRiFem9DtlaxEDrGcSRcUKf8wKM/Ko8kQiqeHJ+EtV5//wcaYcM820?=
 =?Windows-1252?Q?bOZZpaB1CE+Y/daKwSwJRFDd5EK2G8bKKNulEQSS7N2SBZWlYvVasqre?=
 =?Windows-1252?Q?30ScQ3zfNVHwAZWNt/8avdwtmdcbheISrFDN4RLdwYMIcIzkpQ6hbQGa?=
 =?Windows-1252?Q?DmBq7w3d3uHc3Jql+FBFyOQZYAXciTKwexR/k5T05oOVvHb9JLM+NRUi?=
 =?Windows-1252?Q?fn/MxkII1QdwW50vqaA8zvOKQ47wcMk5/4wiflTwV2OmjFoXtUOxzQ?=
 =?Windows-1252?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04469472-21c7-4ae8-e770-08dadf733050
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2022 14:38:25.0719
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XcfEMYA2dSFrXU0KfNyxOUCo4804r5AzIKEAhTM45DkV95AIXn3yfO//SDuW8J6sDQbSqmWMY1jvKYpvkphDFzcrrdc+asblGhR2Fkllvt0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4861
X-MDID: 1671201508-4-U5ZnwCJBUg
X-MDID-O: us1-ut7-1671201508-4-U5ZnwCJBUg
Message-ID-Hash: TZIZ6FFDPMO7CICBQJEQFSZGR5U3BE3R
X-Message-ID-Hash: TZIZ6FFDPMO7CICBQJEQFSZGR5U3BE3R
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Did anyone else need to do this?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PC5BVW2KODJOCTEMHJMV4ZDBWDM6KYFP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7594247564848919090=="

--===============7594247564848919090==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312452F84CCF60E39794535B8E69MN2PR12MB3312namp_"

--_000_MN2PR12MB3312452F84CCF60E39794535B8E69MN2PR12MB3312namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Mike,

Yes, I've run into that. I posted an issue last week here:
https://github.com/EttusResearch/gr-ettus/issues/69

[https://opengraph.githubassets.com/5b58487cd101d233e77dea3debf24f97c132680=
3f405d696532fef76e41550f5/EttusResearch/gr-ettus/issues/69]<https://github.=
com/EttusResearch/gr-ettus/issues/69>
syntax error in ettus_rfnoc_graph.block.yml =B7 Issue #69 =B7 EttusResearch=
/gr-ettus<https://github.com/EttusResearch/gr-ettus/issues/69>
Line 25 of ettus_rfnoc_graph.block.yml in the maint-3.8-uhd4.0 branch (and =
possibly others) looks like: self.rfnoc_graph =3D ${id} =3D ettus.rfnoc_gra=
ph(uhd.device_addr(&quot;${graph_args}&quot;))) You...
github.com
I ended up just modifying the yml file in source and then reinstalling gr-e=
ttus.

Jim

________________________________
From: Mike via USRP-users <usrp-users@lists.ettus.com>
Sent: Friday, December 16, 2022 9:33 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Did anyone else need to do this?


Hi all,



This goes in the category of =93Did anyone else need to do this?=94.



I=92m running Ubuntu 20.04.5 LTS with GNURadio 3.8 (Maint) and UHD 4.0.  I =
recently upgraded UHD to 4.2.  I ran into a gnuradio issue starting a =93RF=
NoC=94 flow graph with a syntax error for an unmatched =91)=92:

  Self.rfnoc_graph=3Dettus_rfnoc_graph_0 =3D ettus.rfnoc_graph(uhd.device_a=
ddr(=93addr=3Dxxx,type-n3xx=94)))



I was able to manually edit the generated python code to remove one of the =
parentheses and see the code work.

I then upgraded gnuradio to 3.10 which had the same issue.



I then compared the =93uhd_rfnoc_graph.block.yml=94 block files between UHD=
4.0 and 4.2.  It=92s significantly different as 4.0 uses python .join to bu=
ild the argument list and UHD 4.2 uses the python module =93ast=94 to gener=
ate the argument list.  But the final line on the 4.2 version had the synta=
x error of the extra =91)=92:

              self.rfnoc_graph =3D ${id} =3D uhd.rfnoc_graph(uhd.device_add=
r(=93${graph_args}=94)))



I removed one =91)=92 then reinstalled gnuradio (make install) from the bui=
ld directory and everything seemed to work after that.



So, it seems like it is a simple syntax error.  But normally something like=
 this (in my experience) indicates that I might have missed some configurat=
ion step somewhere and have yet to see the other errors.



So, has anyone seen something like this?



Thanks,

Mike

--_000_MN2PR12MB3312452F84CCF60E39794535B8E69MN2PR12MB3312namp_
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
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);" class=3D"elementToProof">Hi Mike,</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);" class=3D"elementToProof"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);" class=3D"elementToProof ContentPasted0">Yes, I've r=
un into that. I posted an issue last week
 here:<br>
<a href=3D"https://github.com/EttusResearch/gr-ettus/issues/69" id=3D"LPlnk=
OWALinkPreview">https://github.com/EttusResearch/gr-ettus/issues/69</a><br>
<br>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1">
<div id=3D"LPBorder_GTaHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvZ3ItZXR0d=
XMvaXNzdWVzLzY5" class=3D"LPBorder455494" style=3D"width: 100%; margin-top:=
 16px; margin-bottom: 16px; position: relative; max-width: 800px; min-width=
: 424px;">
<table id=3D"LPContainer455494" role=3D"presentation" style=3D"padding: 12p=
x 36px 12px 12px; width: 100%; border-width: 1px; border-style: solid; bord=
er-color: rgb(200, 200, 200); border-radius: 2px;">
<tbody>
<tr style=3D"border-spacing: 0px;" valign=3D"top">
<td>
<div id=3D"LPImageContainer455494" style=3D"position: relative; margin-righ=
t: 12px; height: 120px; overflow: hidden; width: 240px;">
<a target=3D"_blank" id=3D"LPImageAnchor455494" href=3D"https://github.com/=
EttusResearch/gr-ettus/issues/69"><img id=3D"LPThumbnailImageId455494" alt=
=3D"" style=3D"display: block;" width=3D"240" height=3D"120" src=3D"https:/=
/opengraph.githubassets.com/5b58487cd101d233e77dea3debf24f97c1326803f405d69=
6532fef76e41550f5/EttusResearch/gr-ettus/issues/69"></a></div>
</td>
<td style=3D"width: 100%;">
<div id=3D"LPTitle455494" style=3D"font-size: 21px; font-weight: 300; margi=
n-right: 8px; font-family: &quot;wf_segoe-ui_light&quot;, &quot;Segoe UI Li=
ght&quot;, &quot;Segoe WP Light&quot;, &quot;Segoe UI&quot;, &quot;Segoe WP=
&quot;, Tahoma, Arial, sans-serif; margin-bottom: 12px;">
<a target=3D"_blank" id=3D"LPUrlAnchor455494" href=3D"https://github.com/Et=
tusResearch/gr-ettus/issues/69" style=3D"text-decoration: none; color: var(=
--themePrimary);">syntax error in ettus_rfnoc_graph.block.yml =B7 Issue #69=
 =B7 EttusResearch/gr-ettus</a></div>
<div id=3D"LPDescription455494" style=3D"font-size: 14px; max-height: 100px=
; color: rgb(102, 102, 102); font-family: &quot;wf_segoe-ui_normal&quot;, &=
quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; margi=
n-bottom: 12px; margin-right: 8px; overflow: hidden;">
Line 25 of ettus_rfnoc_graph.block.yml in the maint-3.8-uhd4.0 branch (and =
possibly others) looks like: self.rfnoc_graph =3D ${id} =3D ettus.rfnoc_gra=
ph(uhd.device_addr(&amp;quot;${graph_args}&amp;quot;))) You...</div>
<div id=3D"LPMetadata455494" style=3D"font-size: 14px; font-weight: 400; co=
lor: rgb(166, 166, 166); font-family: &quot;wf_segoe-ui_normal&quot;, &quot=
;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif;">
github.com</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>
I ended up just modifying the yml file in source and then reinstalling gr-e=
ttus.<br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);" class=3D"elementToProof ContentPasted0"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);" class=3D"elementToProof ContentPasted0">Jim<br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);" class=3D"elementToProof ContentPasted0"><br>
</span></div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Mike via USRP-users &=
lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Friday, December 16, 2022 9:33 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Did anyone else need to do this?</font>
<div>&nbsp;</div>
</div>
<style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
span.x_EmailStyle17
	{font-family:"Calibri",sans-serif;
	color:windowtext}
.x_MsoChpDefault
	{font-family:"Calibri",sans-serif}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
div.x_WordSection1
	{}
-->
</style>
<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break=
-word">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal">Hi all,</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">This goes in the category of =93Did anyone else ne=
ed to do this?=94.</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">I=92m running Ubuntu 20.04.5 LTS with GNURadio 3.8=
 (Maint) and UHD 4.0.&nbsp; I recently upgraded UHD to 4.2.&nbsp; I ran int=
o a gnuradio issue starting a =93RFNoC=94 flow graph with a syntax error fo=
r an unmatched =91)=92:</p>
<p class=3D"x_MsoNormal">&nbsp; Self.rfnoc_graph=3Dettus_rfnoc_graph_0 =3D =
ettus.rfnoc_graph(uhd.device_addr(=93addr=3Dxxx,type-n3xx=94)))</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">I was able to manually edit the generated python c=
ode to remove one of the parentheses and see the code work.</p>
<p class=3D"x_MsoNormal">I then upgraded gnuradio to 3.10 which had the sam=
e issue.</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">I then compared the =93uhd_rfnoc_graph.block.yml=
=94 block files between UHD4.0 and 4.2.&nbsp; It=92s significantly differen=
t as 4.0 uses python .join to build the argument list and UHD 4.2 uses the =
python module =93ast=94 to generate the argument list.&nbsp;
 But the final line on the 4.2 version had the syntax error of the extra =
=91)=92:</p>
<p class=3D"x_MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; self.rfnoc_graph =3D ${id} =3D uhd.rfnoc_graph=
(uhd.device_addr(=93${graph_args}=94)))</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">I removed one =91)=92 then reinstalled gnuradio (m=
ake install) from the build directory and everything seemed to work after t=
hat.</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">So, it seems like it is a simple syntax error.&nbs=
p; But normally something like this (in my experience) indicates that I mig=
ht have missed some configuration step somewhere and have yet to see the ot=
her errors.</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">So, has anyone seen something like this?</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">Thanks,</p>
<p class=3D"x_MsoNormal">Mike</p>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB3312452F84CCF60E39794535B8E69MN2PR12MB3312namp_--

--===============7594247564848919090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7594247564848919090==--
