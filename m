Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4624A759F
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 17:17:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7350C3853A1
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 11:17:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="vJd5irVG";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.164])
	by mm2.emwd.com (Postfix) with ESMTPS id 4E3BD38512B
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 10:44:49 -0500 (EST)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.17])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 0213D40074;
	Wed,  2 Feb 2022 15:44:48 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2040.outbound.protection.outlook.com [104.47.66.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id C39BF680077;
	Wed,  2 Feb 2022 15:44:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KujMUDhw+lqKEPC//OFskR7Oqm86v9copxpmU3ZuP6ZVUYcsPdC+5JbI+VKoq/CLdORxiQjnrI0BVAXKIvulsgO3nKor88Yygqm8B0+K7QnR3ZeIRGncT1ksPVS8D3EMYPop9E6S0WBUmzaybuZpeCG86j5TgchbvgUpbxYGDI7rJRg+mMxoomwDEuBWgul2ULQBIeg0LL5nq3gCXfRtw40869GBvQn7YDn3WH6helDTL2RDB7sGd/ZJhLJh1BZAPzn9sDc35CO9w9YwyVCv0xuemHZ5ky31AyN7x3Cxk5uVXagbDpPZLvEF8UnMJg7v3tNGVQewhi0pwxcOT39vzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SDOF67Mo4wY1RL/YHIOXQ4xZFOnbP56rtzmS1kx/WMQ=;
 b=j+hxP5PWIvZ/mD57wbl3StLVmkS4ZqVGM1eqSWOu1ZwRAOMdiERTr53mm278WZOlIkLoCYmPIZwqnfbi3WWE5FevusF3Nx8HbnIKDwJ3MgPhd/WT+t0H1odWGXO/LIQZL+6k/LRgajw5K5+bzxuLJb85dWE5cKjHgkCwI4cVlNcLqW+NMD+uHXiF70LSihm2hdJZww7Eh4ccHTtbXj1pjKA+0aCtGOotvj6bdW5u7msNBzmM7HoBjQWWTT1/CJlCMYjeUISrjdWuC/s8h6aVfqYzRArkjI0GYNKorcDPDFLsOUxm82StlIDbKHBerKMGmaYE+B9JWZUI+zI7+iLbyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SDOF67Mo4wY1RL/YHIOXQ4xZFOnbP56rtzmS1kx/WMQ=;
 b=vJd5irVGw6hSGTkFqCguy7d5w71phFvN9czCEQqFUz5dVLRYwDnJih6HKb1i23D5Sv1wfUZ67PH2CDZ9p+z/hTUaxv1LCdQgLIbhDllrXhHwW8dXnJ1axA24PjOcZpq7K7U6LdBnX0wuMXn10wOHwudNEcGV2qlfIefrR6ScFDg=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB4333.namprd12.prod.outlook.com (2603:10b6:208:1d3::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Wed, 2 Feb
 2022 15:44:44 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf%6]) with mapi id 15.20.4951.012; Wed, 2 Feb 2022
 15:44:44 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Timed Commands Not Working
Thread-Index: 
 AQHYF5tb715UD5NcGUSH5wmFASi3eKx/DJOAgAABTguAAAKNgIABHYZZgAAs3ACAAAaQGIAABXgAgAABXK8=
Date: Wed, 2 Feb 2022 15:44:43 +0000
Message-ID: 
 <MN2PR12MB33125E03CE4418143EC2F8AFB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <fe43546f-cde5-f442-0d76-1967bc5dfebc@gmail.com>
 <MN2PR12MB33129A29C695F7A0ABC8BB6EB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <4acbc3b9-354e-1a85-5758-fccf65b17835@gmail.com>
 <MN2PR12MB331282717C011B8FA78D241EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <8032a31f-48f3-af30-5a79-3d7c8dde12e2@gmail.com>
 <MN2PR12MB33129135EE23091DC520E48EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <a5b4ebc9-36db-b2d9-abbb-e7309562f33a@gmail.com>
In-Reply-To: <a5b4ebc9-36db-b2d9-abbb-e7309562f33a@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a23f20fd-6f8c-4dc0-37fe-08d9e662ef02
x-ms-traffictypediagnostic: MN2PR12MB4333:EE_
x-microsoft-antispam-prvs: 
 <MN2PR12MB4333E4D790624B0653B1E015B8279@MN2PR12MB4333.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 xZIf93Jj9VRNbtRyFty3m5PiaMTGH152Gt+kb7/ye3/uPa4/HEv6bkW1aeYo8FCofNlsrBOzOuzPdFgd88oSQauxHYYha3Vf9H2SWYFrenYSMnyF34ewa5hER4/qVtBqeIIOAeVR0auOxNlfMvkzpP1+ALfZc+ofd/OZavak4d8f+FmHgqb3RKC9yuJ0z5rh/Bqs6SVpxR7f/7mMhTIS7Tsrsme5kuz02FkwXlOcGAxf3qJ75eMf0a/r8MayAzf3W0jUzxpEL6p0TUhWF5iQ9+pcH4IqDtWxyqpXovktbPQwHNGxerWcvV2D64yKiQBFb6oSxVtkjiwhwN67vZlhLBp2W6AaWkuAVfvfTsTl1k6KueUnm7ID9nGH2N+YNjAtGfW76IQPCjRoxlY6SqEfnGQxeURd+LbHcV3qXjbhfRNCbNRbeMHGiGAgSYn5djJJRiKToqb00+EYW3bd+n6qegH+gaH+t8a0rpNouVXS7kIPhhnV1umraK67pTxxmP86FX629dDC1jTS+Mh0qHGp61qe3uxkYJR/GiSBcCv+WXczHVDgOiVqnA/NX//lBZ6R7Z16V/MN2s2QyoFbhkkv65aCGENSpzy8mdKrHy04BZfP0LB6njdNrQiCTSjG5or/EUci3gNg8WSbGObzrE5OXM8rT9Go8/sVmQlHZPBLLZJe+qbxooH9mOVTKmXBuz+lv3XrqrwjvY9WuUeb60TT8g==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(39830400003)(366004)(136003)(396003)(376002)(346002)(8676002)(19627405001)(508600001)(38070700005)(26005)(186003)(76116006)(8936002)(66946007)(66556008)(66476007)(66446008)(64756008)(4744005)(5660300002)(52536014)(110136005)(86362001)(316002)(71200400001)(9686003)(38100700002)(2906002)(122000001)(53546011)(7696005)(6506007)(55016003)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?MQZYp/fV/ykVwP6JnJIbv1JPvo//2pj8QNJBAgx6TTQQxzPlVkK8YjcocL4D?=
 =?us-ascii?Q?kaCA3AWo3Xbxu7If9gdEiFiaSQTkiRaAzyAG2ZLZD+imknKFaYhK72yDkC/c?=
 =?us-ascii?Q?LXs+HJ4Ta24KqmFq8c7he0lxFQFjDPz9EgwegMjsDudcXsB8gHEALj4GjFy0?=
 =?us-ascii?Q?/iRI/5y/8gCLabNyshx8l40cOaLV2lW5Nnbf+jVVmeezyCt5cccNG2snd8IM?=
 =?us-ascii?Q?2Dp3xA2YDhqPyQa9OUb7ZJuuAOKLWaNozrf3b0PwE1F7M499Y200H6ibzM4e?=
 =?us-ascii?Q?pX3XAL6SL9VqV8JX78ZYoxq9PB2PdEPTdLMuIrWrp/loynaAC2sLofeiqX7p?=
 =?us-ascii?Q?wWj8C4Kae+WV0BTdRCf2Bgo7r/UcwC68t9K6QzVZzA69KjURqDZLSY0TZeBL?=
 =?us-ascii?Q?xiAkPPfvaHWkrVaHTY8tARYWfnH1QPxucwPG4BE3xLztEtkhm98lDnQBVkjB?=
 =?us-ascii?Q?yrsFsdQOs0r2hwsFnbRyAxGtnltHMy9A3mjwi9hD04Uh8tUcgE0KpKBsxDfu?=
 =?us-ascii?Q?gfm22JF3iJojd16KZft71c+UrE7blaxAzl6G+cDjErK21Mc1gnbNzrT1rdN9?=
 =?us-ascii?Q?q7MNw3sxLsrY1BTSuHwY+g2xo/VuhAcq3CUchwVP+p++G85PM/d0VlWio90Y?=
 =?us-ascii?Q?RnBN4bFmoJuAz++TtAzthlkl/CDMmRX0lueIgr7vEATL9EoyLJ2P7lbOqlme?=
 =?us-ascii?Q?rRww9A/cCffTgjIYqt4Je2VWmDLCIHaZwWbdUUF007ohyj/M962u8wp7E1yr?=
 =?us-ascii?Q?fwt9IypVb15x6vcFWvFqslGRRebEgl8/v/yVaKX/BmWhnKTAtZqgVN+l6TMc?=
 =?us-ascii?Q?Yk1p301mJrQkxWYd4REnY/lUOUbO2Ekb8hRgKGrBbV0hQe/wH2g7jprS4c4x?=
 =?us-ascii?Q?nbhGkbQvzr8WtTxMThO50Y55Ell9A/JJllC4lecdTyD04+bNvZ+66XGdph8G?=
 =?us-ascii?Q?53prl6RgChZ+rXcKgkjcI91IoEOUcABCwX7hXMJgXp6uFffKySOvLrKLRvoF?=
 =?us-ascii?Q?kC1+l1f2AE1N2BJEsjOfSv9mRVq7HnNINGNq7xWJIvcljBMF6VTGRsIphSkC?=
 =?us-ascii?Q?H1CEHkavBCZD6IRAEsIVmctK6z36OUzzipZioRlM3fRfE+UKzpJyS0ryQiUv?=
 =?us-ascii?Q?RtA4BLvJ8hRw6aVgW24VJ+C2F/iCSYNycDvGH9EP05H6kZPVk4uv5D63My3x?=
 =?us-ascii?Q?gorCDHJJJZjrnb24ukbY0+rvYKOqoVuhRuoRMdm0f8+DfrstgM59MuUzI/s0?=
 =?us-ascii?Q?hgw5rbgW+Z8WdMxiYlRxvELBZyUc3fi014UFgl9Py5vbjIC27jhXs+uV6AxN?=
 =?us-ascii?Q?E6K6eGpSDsbbtkeGT2RoV/GI3mGIuBFsnZe+WzZVwk16RJEo6pLbqGfTPbwy?=
 =?us-ascii?Q?w9ouvMR/6qXzUoGvrfimMz1eeCDVYHIaByFFthz4WPC/UBVBSDiWtNaisccr?=
 =?us-ascii?Q?Xsio8CFAewP4Ieup6iFgqE5YbWDAJPbb6kdVYBuSw6ApBLrMwrgkXColdG0V?=
 =?us-ascii?Q?5+UqglNSxj2B+CtInlHpCbFAN9P7KMKgfMFaRw0mqK40pjLZ1pn37ZLOep46?=
 =?us-ascii?Q?pYxUu/TpqR5fKc9+crq0eXH3C8tRv2mN7+zyLK+hbg3qdoR9tNvPlwnLqq62?=
 =?us-ascii?Q?cz+TVxcz5krvQb3NbLScbYEZuWbjrDGPU6gNc3qBxkG4ggJGJHDr/UWt7yXK?=
 =?us-ascii?Q?LfrR5g=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a23f20fd-6f8c-4dc0-37fe-08d9e662ef02
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2022 15:44:43.9000
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VuvQb8Zf8SHX5Wcy8FDKQwQP0JJvg/cyr4NcZlq4ogr/6VmJwGbiI368K9tPgi1iyaEmaWDwrUEJwiokzUENFMFiMdw8cy4CsuWNnBzfr/M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4333
X-MDID: 1643816688-S5Ou1NWMh3-b
Message-ID-Hash: 2DUQANURU37HPFRE3F7SXOFR7ABN622X
X-Message-ID-Hash: 2DUQANURU37HPFRE3F7SXOFR7ABN622X
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SKMHIRTBOGVCZWM37BFRQN5IAHKV5CHJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3018515328537935957=="

--===============3018515328537935957==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB33125E03CE4418143EC2F8AFB8279MN2PR12MB3312namp_"

--_000_MN2PR12MB33125E03CE4418143EC2F8AFB8279MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Correct -- I am using the stock FPGA image for the E320 and the N320.

Thanks,
Jim

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Wednesday, February 2, 2022 10:39 AM
To: Jim Palladino <jim@gardettoengineering.com>; usrp-users@lists.ettus.com=
 <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: Timed Commands Not Working

On 2022-02-02 10:21, Jim Palladino wrote:
Thanks Marcus. Please let me know if R&D comes back with anything. I'm at a=
 bit of a loss . . .

Thanks,
Jim

________________________________

Just to clarify--this is with the stock FPGA image, correct?



--_000_MN2PR12MB33125E03CE4418143EC2F8AFB8279MN2PR12MB3312namp_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Correct -- I am using the stock FPGA image for the E320 and the N320.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,
<div>Jim</div>
<div><br>
</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, February 2, 2022 10:39 AM<br>
<b>To:</b> Jim Palladino &lt;jim@gardettoengineering.com&gt;; usrp-users@li=
sts.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 2022-02-02 10:21, Jim Palladino wrote:<=
br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks Marcus. Please let me know if R&amp;D comes back with anything. I'm =
at a bit of a loss . . .&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<br>
</blockquote>
Just to clarify--this is with the stock FPGA image, correct?<br>
<br>
<br>
</div>
</body>
</html>

--_000_MN2PR12MB33125E03CE4418143EC2F8AFB8279MN2PR12MB3312namp_--

--===============3018515328537935957==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3018515328537935957==--
