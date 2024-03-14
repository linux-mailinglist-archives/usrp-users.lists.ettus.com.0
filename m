Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F27387B906
	for <lists+usrp-users@lfdr.de>; Thu, 14 Mar 2024 08:59:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 110293850FF
	for <lists+usrp-users@lfdr.de>; Thu, 14 Mar 2024 03:59:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710403140; bh=x43SZPeA40Wb0YAG0+bZJwKxHfFTQq3tqPZKKcj2ZNY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=pZa0uPvUyPr9DHmqbI5ULoSGkJxYFp/J29r5Cilcgrnz/LLdbGk68Yh6YRZQPKzZU
	 Kc7YOhrnvaIYXBXytvVX3XFFIfX4nETSU0D+tWDMKWS/9nmqcCn2AjMc5KJKmwNGi3
	 7M39unNi6iLLeSGwJVIR5xIeI717/hbN8O0gv/V8nI2KvzEwLZDsiuUnYL9rmwrj2c
	 lpP5EfTAabcgklck9KA0qXFvCa1FYjoKPTt9UOvB6CilQTXak0v46bSqZ79lJkAWPO
	 HnUlVkjlsNGM/2XHomD8K6qFMM8hZ+rV6J/24jIZ1j/noT6+IajAQI/YRElJK3JKyz
	 v1am0fJC0yV7g==
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2063.outbound.protection.outlook.com [40.107.223.63])
	by mm2.emwd.com (Postfix) with ESMTPS id 6F26E384F11
	for <usrp-users@lists.ettus.com>; Thu, 14 Mar 2024 03:58:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="af6a9qut";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AeydUbGmvESizacdUAeSXyNiq5YiVTOtrDFsbRUexyWRXEhoEM6O8INzOI5F/K1xlnLWkHGr5Op7piwn8W/qkNyrqrSDvz8c0hJ0tr86ZrEBcVK5s0t6/aRRHBrEtw4b4J8o4p7bI43Pkw6ZZD9+9aVRxT8xIkyQAH3X7wX769vfYyxQiJNILOujnIvHsl6XLpw0AuFaMYZV1tfuY7kwYXWQh++ZxUthcTWQg56H20dBS4DUSOBbL6irGTKMJAdzFBXtfweylHQmIYPvVGjAvIc1Sbwot7teXYfWL4BK7415lBQjSA0NjwPXjjNk1cilNIfp8gPEa4Ovov/Eh4Jf8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0o8qSIq1dzSwywlL6qScNZcET+UWr8URvQmoeWiD8zg=;
 b=fcDWX7fFE/s9+f8BYdBurGtjZppQjGhKy7+GgX/1KT3E8b7mAxURCmaK1o+dcLZ0uF9+ZTgOU1v2/irEoMAVdQ6OlpFTzZLVYKzyqu9vFHBLczRNoqyI/HuApeBdMcooNbmA7vuMZVmIcPTAJZ3ZBku/Ry5+N3aYGmxyPLKg8rFbgpz6ECGG6NEJSOzmNLwXo3TsC8xWuj7C65iaqdwrWCQzVnTm7/l2fjJCiEVy7QSlWxHQRLforsRUjOHy0TYM0SJy+EnGjmeckxEKqV3IJhjMQiga4eOOxM2pTHbBV9zQfGpe94FOqnOOwChZH5CTQ67tEqo+6ejB5oEBfUL2vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0o8qSIq1dzSwywlL6qScNZcET+UWr8URvQmoeWiD8zg=;
 b=af6a9qutbeVQqYy8VgM6IQLqx8weyr67gKkX4MgSHTs/BkScnsJ+YenOYKDG3OtmstDTCvDqFCCunK5MHXhyTNIajJdq8lXpaDccpcZlCx4wOR/VhhPrXs4kG7l/CRvbK8wQDMxf5O0DCL7S0wRcSoM8Dd4Oaogi/ewQZUH1JE8=
Received: from PH0PR04MB8311.namprd04.prod.outlook.com (2603:10b6:510:10b::8)
 by DM6PR04MB6281.namprd04.prod.outlook.com (2603:10b6:5:1e8::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.21; Thu, 14 Mar
 2024 07:58:06 +0000
Received: from PH0PR04MB8311.namprd04.prod.outlook.com
 ([fe80::85e8:da41:f21:8e2a]) by PH0PR04MB8311.namprd04.prod.outlook.com
 ([fe80::85e8:da41:f21:8e2a%4]) with mapi id 15.20.7386.020; Thu, 14 Mar 2024
 07:58:05 +0000
From: Martin Anderseck <Martin.Anderseck@ni.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: USRP N310 "NoneType" error
Thread-Index: AQHadNWLS3HbGhdzxUqpizZkec116bE23ydw
Date: Thu, 14 Mar 2024 07:58:05 +0000
Message-ID: 
 <PH0PR04MB8311970D78A485091202F272F3292@PH0PR04MB8311.namprd04.prod.outlook.com>
References: 
 PH0PR04MB831124CD632DB3EF7ECD8542F3272@PH0PR04MB8311.namprd04.prod.outlook.com
 <LpoxD6yaGRJogaqgYyeB1BuF9bekEOW7UDa0U0RQ0@lists.ettus.com>
In-Reply-To: <LpoxD6yaGRJogaqgYyeB1BuF9bekEOW7UDa0U0RQ0@lists.ettus.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ActionId=00c68195-06fd-4fd0-803f-bfaffd1c01ce;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ContentBits=0;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Enabled=true;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Method=Privileged;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Name=Public;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SetDate=2024-03-14T07:51:32Z;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB8311:EE_|DM6PR04MB6281:EE_
x-ms-office365-filtering-correlation-id: 5e876d00-bfef-4b47-1a60-08dc43fc7b2e
x-ni-monitor: EOP Exclude NI Domains ETR True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 tQCrgNF9tqxJgErJb3gFTi++Iz1R35kRwM9NQiOQYqQSC9kau9oLDTTEwSG37fPOgLsIdR6/XmZCYL0/RdWB/7uIwUtYlMo4i3Mg0hsCZUy1e9MA1VqzfTipjVZ/PJLtaMtJQ6v3JxayshqcBhUdTt6K6uGi0gq/8tw8TOkzkFIgjjcuMyAadBkNR28StKM/fkxlkvWgrZ94unqyHmRqaf4cxk9VgjeKhM+iyrn4qVadqO63FIV286HGssfMTLa1vffFzGOIkUsNVvD8WkthyIZaQE4AztUYu6W8ph3aoCVxnDtNMQgSp/ckyG9e4JxANZhOjygnRzmLYU14YoE4YLiPjhauHpbhlNx3YCnv6YFDzUAduavEG4K7d3KGIK9iXkDVzFDOjXKXTTWLHte9YH196WgIKbvcV87E5jpSwwoBP/4HmCH8CcO3qTxzdqZphvMB68bTMBMBC+EHbKC9xOf8BYKrgkJW5x+kOezE7uzhKt4lDOP7MI8yF8uamvfulYLlttwmFeKVH4HH+e+jQPEQY5JbBxgGFgztAJZh6Pyx0d5k8zmjGPqhfV/Yvq9KGnmPZmAgX2GfohLaBXbuAVI9qspiquACAIiobJlVCyEAET3Dh8sJv8HQEunMF9FMoZMxGEjGe/ekwsPQrndTV4kuhuHfDpy2AB+1ZWuVoCjobAYn9OF4Vq58/ADaSkHdvoTTKEz4Mf0s2NgaLVu/KX3Fb9QDTA/smTI1OFrHt+E=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB8311.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?KZo69muJbrKJogt7DvU8GlDTf22t4eOEodr2AMGqj9Y9soiNK/F4nK0gAg0j?=
 =?us-ascii?Q?CP/Zh3g8zQmqwvdovsbaKCQbLvuxHcHE2k7NqgRdoc/TTQsKmERjfEs3k4Yl?=
 =?us-ascii?Q?v7nw9Qk5Fc5InI76+tJK3x+Ijn8OsWOFej1K3DWVYvX2nPaH5P3uUEKdvtTL?=
 =?us-ascii?Q?rwtTY/UYDAMA+2H3B3c4itznc5oUOjDWpbeJdeqOAz1D/oEhUXG7FdmzuOyG?=
 =?us-ascii?Q?YOSQVV/+LPpMD4fIRDjSaIoWY3E/5c2RVQyyClm6BNse4C16y9Jmrl1+y1r3?=
 =?us-ascii?Q?21CSfQLtumBB7NoMNrXSbRaeEszGMVI0FxEIIDI0E9cElIVkxvi9lwzxMylB?=
 =?us-ascii?Q?Jii9mHNeY84Aa/3sM74Hf8jW9Wtj48U0SDi5R10IwPgiMIkeQq39jNzR4xcr?=
 =?us-ascii?Q?DMpw+5i/yAyicBJVHjSsctthChm1hCMxWxCiFzhVTnf7P6cvGCjbrLxxqK/5?=
 =?us-ascii?Q?I+ymQuAEmElmoTHyXQlIyv6+TgKBXyn2dPahOO3le396V0LGgN1k+7lEUh/w?=
 =?us-ascii?Q?/HXGYYOvw3TB1DZov7IQeviXboohmCILZ/Te8QGSSjJOxhW/NbjbRY/4RKpW?=
 =?us-ascii?Q?ozIWMwP8X4f+WzKYcrXuKmRUwM+pXBrJaE4zS87M7OvlyK48hFjtvFxL9HWZ?=
 =?us-ascii?Q?/gvZqVo/OKJMcK+H3Phq0MVOMl4hTuekYhwPKJS0Xu8ab+Xx5in88xlAPHRp?=
 =?us-ascii?Q?TGvwIljSbVLRunoZTeoOAdBumQT9KBtkaz/lvGAstaR8LsI9np2LO9QPB8kq?=
 =?us-ascii?Q?obx6/ytOLMa7cSHoLmavjO3JegKNjR/5jbTNqBFGvK9A4VtVhnDZIrXmETj9?=
 =?us-ascii?Q?munC/hygqkETnEF27jcNTYGaavkNoDUXULrLnMlY+mgg7dyd2HHYSQcwXMes?=
 =?us-ascii?Q?w0XCgDqURoz4yWT956YrJLRDt5wrgL7hx4hbfwkO8Yuc2K66kcqCeICVcIai?=
 =?us-ascii?Q?YvGBqFD5vrQwsYqdDMtJcpf+nueT9pqK4lsBFy9+MTfHKgedlBB15aJoFTwC?=
 =?us-ascii?Q?7u202eQ92Fqxx9b6t71vKRvDki2mzAW6GKie0lmalyBUc8uONS4Ro0oECOGt?=
 =?us-ascii?Q?bSjmTXy/Qw17u5PrL4CuFVn/SxuwJ1bQp0KoxJZcsafdmi+fSxixWPkXkxXl?=
 =?us-ascii?Q?q2ZLW9k1qZU0WvdEDOlY0Kt0WfkOV+GhBYAdaz3XSu7VBn3XB6mUVzt1PHhX?=
 =?us-ascii?Q?ZKEZkpZc9PTRCquvSDXKYT9vb3cdzs6JVrK1OUAQw2fw3vglYX24ICLMWAuT?=
 =?us-ascii?Q?dw35/hCRzl1fFrW8MswwqInFpm1SK5tlf93WNQsX9ncVbCDI+MFLD54EbzyF?=
 =?us-ascii?Q?j7Omj50XjQTzs5dFKWxI7QVD74m8bpJSv8RzAqBi4/q07YFSgUGejZPIu/PN?=
 =?us-ascii?Q?zk2/9px0qJVWXt/7/t7oDL8FlibWGx46EwFGT7T7xk/igk4nI3Db6qVCDmf/?=
 =?us-ascii?Q?fzc6NhYA6v7LwS/OTw3+xgjSG3LXzAr8ZgjVtSpg/bfFI+nH+/8k6hOCfOOA?=
 =?us-ascii?Q?GtgYf1zMbt2z8uW6iCW69fFCNxtySF3/SopNFT4MqqByt2LHuhFmPmaeAEpF?=
 =?us-ascii?Q?/NoIl6qaEahbLNcL0icktbpJ1JegyTgvOkf5wMTR?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB8311.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e876d00-bfef-4b47-1a60-08dc43fc7b2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2024 07:58:05.6976
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YKPh/7VbYoehPwLMQYsZzGQEE0ovu91hQ9PHq+wDce306K4ePbA9NJDn8cSXjYiPAA6LdUL9ixyS2A9tY98yoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6281
Message-ID-Hash: DVNLJRRTXNKUA45CFWIS5326ZB7HB7C2
X-Message-ID-Hash: DVNLJRRTXNKUA45CFWIS5326ZB7HB7C2
X-MailFrom: Martin.Anderseck@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 "NoneType" error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ML5H535PQQ5JWNLWHFBAD6LQPLE6GDET/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8078121836536412687=="

--===============8078121836536412687==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH0PR04MB8311970D78A485091202F272F3292PH0PR04MB8311namp_"

--_000_PH0PR04MB8311970D78A485091202F272F3292PH0PR04MB8311namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Brian,

Great, you've started the hardware daemon mpm on the device and if you now =
run the uhd_usrp_probe command (doesn't matter if from the host or from ano=
ther shell on the device) it'll most probably run into the same error as be=
fore, but you'll be able to see more detail in the mpm output. That output =
may give us an idea about what the actual issue might be.

/Martin
National Instruments Dresden GmbH; Gesch?ftsf?hrer (Managing Directors): Jo=
hn Stanton McElroy, Albert Edward Percival III, Kathleen Spurck; Sitz (Regi=
stered Office): Dresden; HRB (Commercial Register No.): 22081; Registergeri=
cht (Registration Court): Dresden

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system.

--_000_PH0PR04MB8311970D78A485091202F272F3292PH0PR04MB8311namp_
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
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break-w=
ord">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">Hi Brian,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">Great, you&#8217;ve started the hardware daemon mpm =
on the device and if you now run the uhd_usrp_probe command (doesn&#8217;t =
matter if from the host or from another shell on the
 device) it&#8217;ll most probably run into the same error as before, but y=
ou&#8217;ll be able to see more detail in the mpm output. That output may g=
ive us an idea about what the actual issue might be.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">/Martin</span><span lang=3D"EN-US"><o:p></o:p></span=
></p>
</div>
National Instruments Dresden GmbH; Gesch&auml;ftsf&uuml;hrer (Managing Dire=
ctors): John Stanton McElroy, Albert Edward Percival III, Kathleen Spurck; =
Sitz (Registered Office): Dresden; HRB (Commercial Register No.): 22081; Re=
gistergericht (Registration Court): Dresden<br>
<br>
This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender
 by return email and delete this email (and any attachments) from your syst=
em.
</body>
</html>

--_000_PH0PR04MB8311970D78A485091202F272F3292PH0PR04MB8311namp_--

--===============8078121836536412687==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8078121836536412687==--
