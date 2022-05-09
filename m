Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6DA520352
	for <lists+usrp-users@lfdr.de>; Mon,  9 May 2022 19:10:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 98F98384F9E
	for <lists+usrp-users@lfdr.de>; Mon,  9 May 2022 13:10:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652116203; bh=KuwBJDNrkXz9eBH5LIUY0ErAaUCMj3pGqynjwvaQcTU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=XbJS1nr1SgzAE9s7CLFVYNbCAn7x0EZkXXROj88Epef7jbYlIedrra2f26jf20evV
	 f4RQkU+uJaWIJ9cwKW6HWja7FceFIMnA7uee5iFbS6hipl5J98F5l3xHwQmaxnb5gl
	 XME61N1Wcj86MUGifRTXlGs1bkmqtEW8Xnsyg3V62xP/uPpsq+mkj8uUdodd4Ux22W
	 7vZ4xySZ3EEgWyfGcFO3ial8y3NLYLBCvsQonyzezqa/lNQ6Y8FUdqqF1gUP8UQUR4
	 Xt81whj82ltZfbj8DfMGuEHkaSXqgRm8xmePIXiZPSe02fs5iKwjz7lTWxWVmJkaZJ
	 GOGtKqxvog65Q==
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [148.163.129.49])
	by mm2.emwd.com (Postfix) with ESMTPS id F088A38487E
	for <usrp-users@lists.ettus.com>; Mon,  9 May 2022 13:08:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="OCbm2HOE";
	dkim-atps=neutral
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.67.118])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 7FDEA30008C;
	Mon,  9 May 2022 17:08:55 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2171.outbound.protection.outlook.com [104.47.58.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 43B091C0077;
	Mon,  9 May 2022 17:08:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XOTGIB+jJEXEP2hT6eK69Mqq8ZEGzPLZFE5aUUXi3SKi+l4VXvL7X3iGN9vVdB3NGzUxqFHAGcvYFyW/X4q1TB9t/p3FkwstC6o1uoR1oDSQO6wjsT+EjRL3uynHQg1K/r3YZ8aCl0G/OlEyDQmRQFzq1nW/PjUkPhFgpVYAz9N3zD7wQxy2SQCYzetXHYVNope0ku2DlD/4KejKHTP8ZrloXJ8J+p7SE1Zt0xnXrK+QziXr/wb6HPalrPAYpCepZAeIwvS1LbfVsp91eZiDVnbBtWefd+qE2MRei2Do938aVFYqHsyKJLEfzL2Zy8w8FWnSHT/0vWuoZ0tUc+7YIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KN8klVL31ODVDHbe5FPKPZnsv/yUp42combwEuuNRX8=;
 b=SKowcKqvaLbk7FmJM/aDhoHPO7PfbkxfBBHz7Jtoj1p484FIuYC75ELqsn3r5pgLjunzSn3DAJU1mMRTgLw/gYr9lV+b7GOfDRT79FzpYhrBHMrIIlLCDWmMSrqdgGlR/5aj0pRWUIGtWpNACFPtuRp38O/KDC42PL4heGOU58NOre0fTQvPlWCsBhWa3w3sKBjJJyFUAdP2MLLONfk4uW6PlcCVp5rcvRC3nyxY2JNNTUAhOCjccKkw2F8VUbo9Jv7O+L+/6Oe6kYD6V/df4Cfz1VweGU40zlEZaqJEkIbSFsHzvebs1M1eyY65Bv2oOSmpqogw5HTj7SzItyYBng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KN8klVL31ODVDHbe5FPKPZnsv/yUp42combwEuuNRX8=;
 b=OCbm2HOEXSvOEtblZ6IQiOS930xhJ0HelzlEui3jsk6NeZ+V5ilQnwzZhKyAsWy8YCV76sx8abw7bk6cEIPWFL6dX748HEn2N517rrU15dDCH4s1u7bqyL2ncI73RH7AJwcOqIjmWC2aKruC4lcEb+6N/uVUe01cZZdVHKy/tXM=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by CH2PR12MB3944.namprd12.prod.outlook.com (2603:10b6:610:21::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.20; Mon, 9 May
 2022 17:08:52 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::2476:1b13:7af3:29f6]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::2476:1b13:7af3:29f6%7]) with mapi id 15.20.5227.023; Mon, 9 May 2022
 17:08:52 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: N320 TDC measurement errors
Thread-Index: AQHYXkP+Y4fg2AyFmESoC+vAlJapH60WthdagAAKXwCAAARmGg==
Date: Mon, 9 May 2022 17:08:52 +0000
Message-ID: 
 <MN2PR12MB3312462A2E9190A0F5590D9DB8C69@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <MN2PR12MB33120210FE804565B1B42888B8C19@MN2PR12MB3312.namprd12.prod.outlook.com>
 <MN2PR12MB331244B919FBB63ECE92630FB8C69@MN2PR12MB3312.namprd12.prod.outlook.com>
 <7e208111-f0c0-6713-fe95-c4a6ea38d060@gmail.com>
In-Reply-To: <7e208111-f0c0-6713-fe95-c4a6ea38d060@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2d7c0b18-7107-43d6-b439-08da31de97bb
x-ms-traffictypediagnostic: CH2PR12MB3944:EE_
x-microsoft-antispam-prvs: 
 <CH2PR12MB39447E6CC6AE0AEF52470FB1B8C69@CH2PR12MB3944.namprd12.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 gucthxxUSu8wRusr8uFzlHSUojuywyEp5p8pzj/1reZZV6vEuOf9eH9cQYsuE7ARq5VGmfw7b6tbhpyptqF2wSl8qIbGp00dlxZhdiZVodS5QoOP4kZsAB2USy1+5yA0r+rwIImGWkTu09S8xfEbf/NfQ/JhZaE+1keP9b+bXElqm42oZEi7dXeIDbdK++g8B/W/k97gNokToin6j3tOwgdZRFMzdvUmLKyYloOAOI4dIgtwE1o8xWbm2Fn6UTl5INudckGcSI45JIl9M9WGZ5BaM2bgCB6rgSkMJzPcWyszhpV1x/stAlYTrC0MbOWkn4uYffl8/WcAXbWASC7tJSx9d0UIAtNiDHkWCqwiVnrP4i8QRih/i+jiGPREUrZjoZ3Jx/Y3F58kiwCVHJML9QcyQUAfH3i6xjXPbMuMfwaf1lGSN+DzxBhHlyrbpwDVgEAXBLZhMjkMsvIHyYXP4+Gr6gkPcIPOGY6jaEIzEKN+hGcDpYSIYAMismPmGRNw7sbIwcpNJReMQrtNfAVtXwE7yXpx3/HeWmsxjuxoAfrT3jDOQn9bYnQIOQ9+yRfw6bIaZzwzhBhdj0H9DPy4RmLddR4X5M7fJy+/x4NaKPG1f4dwhwWkGUlCQ02xcNS0NBBrrBTKNKOWMLUbDeilH7w6gGHkOHCPMdYFiiIFqifecxJm4YQmSIlSVrR+UEVvKebqdO4OCrAp/ifBYqYaTA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(346002)(136003)(396003)(39830400003)(376002)(366004)(110136005)(38070700005)(33656002)(5660300002)(83380400001)(186003)(19627405001)(55016003)(2906002)(38100700002)(86362001)(316002)(8676002)(76116006)(66476007)(66946007)(66556008)(66446008)(52536014)(8936002)(64756008)(7696005)(6506007)(26005)(508600001)(71200400001)(122000001)(53546011)(9686003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?s41X2Wp/ubKSM9XJw8On6nTbZD9j2y78CMNILKfIJpfjo1N0zYE18JMrx78P?=
 =?us-ascii?Q?4RTNIXgQ2O6ldEmgGe4gZApJ4ORk3xwe2qW2H+5eZxBkT84A0cLnRhu6Oq7H?=
 =?us-ascii?Q?smCkZUHCgJX+2k1sHmNfxWWW/1XAYbm/rsOZCbgoT7uGVwtnT44G2VmdDBKw?=
 =?us-ascii?Q?YDYKwdRelBlWHB5eL6O6pgbZjE8FsypDWlCXdHjRKty8PTIpCPUqAukEfSHZ?=
 =?us-ascii?Q?nJ2R4k0q7e8GqNoG2k/mIo6h8pp8wIn3CsjkuML0acVz2t4ssmI343b1K2Pa?=
 =?us-ascii?Q?BmOfDCyT4TjKV80G6qqO+xgS6ubF00qdfEzENUU9KaZkZ7/iK1X5lxZh2lf4?=
 =?us-ascii?Q?mB2ysR5j1CBrRyAgx03T/F7/NVb6/y7+e9MrQryFUM7O93JgCwdp1UtrfMlc?=
 =?us-ascii?Q?L7alr9NEbkP7lNdC81Mj2Z14OnTu79C2eMVE1/rfzvnz3ewk3su5coloApox?=
 =?us-ascii?Q?tr/qgdo0zeYUX1Ct0klifDWuh46Wq8xgGUlKvT+WEXQOB8bTDXpMIqKoJcHj?=
 =?us-ascii?Q?m5RDgYQlDKlkcH2dVhJ2TALdVhdZRKPO8LiDawxt5E/zV1qnHWlnrzyhhIes?=
 =?us-ascii?Q?u5CbM+7FK30RN+oB/lLfEHMaXSWnV466Pbei/s4M+EOpUtFBPypf+iGkyTSF?=
 =?us-ascii?Q?0Q+WUDPioes5uWR8UGcC+vu5Ik95pJQPJMdoyGNxWmZTYReo+UYCvZ+ajvON?=
 =?us-ascii?Q?1lY1DuRoilLeh5LY+dro6hxBFML+PSOzqFEvuTWVUMjTdr7Rq10zWcXnq2Wg?=
 =?us-ascii?Q?Mo1lCz6MJLHd6xcsdOfKRdm3CrsvquskB/hBnmJ0ktc6+MgdrrbACBAZtcOX?=
 =?us-ascii?Q?pEL4+NY/ZvQxP+d/sdmp8GZdvEb9Wg2QM3ZFE6cVxYSIPgJz7h4k8FCvnuZS?=
 =?us-ascii?Q?m3Y4kEyfbSK9k8GxXjCv3ytQ615YvdkzNJoN3yOH170sAGXogXMTQfUnVJUf?=
 =?us-ascii?Q?yyqiv51q5yYokYfHX+5K/k+fUnNdPAFNVPix7GznID90If0OHhRqoe2zdXbK?=
 =?us-ascii?Q?bg8wXP+VWWXJ2ojdaDcF4c0QSpTnJQC4cSQ0WpklQgWdsvNnyj2Db1icnGP8?=
 =?us-ascii?Q?l7hFLPbdDq+BTHTKjCp4wCUe7z8atUH+mE98R07SllQ6RZRFqDrlawh4qkqj?=
 =?us-ascii?Q?ezCWrYJL0HXlD48IGH+nPbKRcl5INhKdd8KB98uQzhORrUsz2oBccMGudRvI?=
 =?us-ascii?Q?9tVprjqPk2SSNJr0qN5k/x+Ys9/s8nHgz9y3NgsGvqvV+IUSUxLj3SBnuP3l?=
 =?us-ascii?Q?34S7Jzzf/w4NUZiTnbKbDGan41VVANbL8nm48Lhng9AyRWbV0PCw2BrOCNci?=
 =?us-ascii?Q?cHwfieDxzn+nb1T7qVACIP4zUhnIo959hKKzNUiyW1j7XjIR+yJW348rUVH2?=
 =?us-ascii?Q?43zsoTBj+unTQ9xSCkjIAs0PaJij0h3AbA21AVjPsVFZ5AnEwcqlXZ3shgrM?=
 =?us-ascii?Q?2M3q6OYjwceU59HqSav/8kGM5LUbwsNbDYo847xSTASzxjeENJ96Mxv2jo7S?=
 =?us-ascii?Q?ke6Hgwi4kJEe4Ng8CeLlrkg8kbkB4fpXMR+YDNzoxV0+ygg5bpMqnBAzW0Bs?=
 =?us-ascii?Q?dnIgC5BuU96CD1wJHAVAc3wCxxg0vtdi5s4B61FRVGISiNd9XMwNAG1msdHy?=
 =?us-ascii?Q?f08Thl9s/fGXJ03NPKgP1cYrqBBtd5nHexlNQHoMFHEErUqmgQxgbdnB0k4e?=
 =?us-ascii?Q?bVYkoEf2u0p2zGURmOhr6m4o7h5/oVMyeYMxdMvu2DjHuZw9QqZdV2d/3aPV?=
 =?us-ascii?Q?dJo6anxxjpPqSAZ1wuxyKDrGl5/L0As=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d7c0b18-7107-43d6-b439-08da31de97bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2022 17:08:52.3883
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7ESAg+YrXlTSVf2EXxinF3qtV8UxAhoDCrmrBi02J0dTgV09v2jJIb4gTtxygVRO/799zdJ2CN6TckkjdvLv+J/6KhLE1dV3mCnIWpVOgBk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB3944
X-MDID: 1652116136-86dtT2isFHXx
Message-ID-Hash: FEBEDB47HXX6CDL2KL6K4ABRRJJNCGJU
X-Message-ID-Hash: FEBEDB47HXX6CDL2KL6K4ABRRJJNCGJU
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 TDC measurement errors
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VEBGRR24TEAYRXTRRIMETTWVOT7IJFTG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8375293037582820435=="

--===============8375293037582820435==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312462A2E9190A0F5590D9DB8C69MN2PR12MB3312namp_"

--_000_MN2PR12MB3312462A2E9190A0F5590D9DB8C69MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks, Marcus. I cannot say with 100% certainty, but we had most radios on=
 UHD 4.1.0.2 before and nobody here remembers seeing those errors (ever) un=
til we updated all of them to 4.1.0.5. There have always been issues (accor=
ding to the others I talked to) with radios not starting properly with some=
 odd error or another that would magically go away with the next attempt. I=
t could be that some of those errors were related to this problem and were =
presented to the user differently, but I can't say for sure.  If I get a fr=
ee N320 at some point, I might try reverting it to 4.1.0.2 and keep an eye =
on its behavior.

Thanks
Jim

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Monday, May 9, 2022 12:04 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: N320 TDC measurement errors

On 2022-05-09 11:32, Jim Palladino wrote:
Sorry to bring it up again, but this is really becoming an issue for us, in=
 that we can't seem to use our N320 radios reliably with this TDC measureme=
nt error issue. When the TDC error occurs, our program or even uhd_usrp_pro=
be immediately errors out and exits. If anyone has seen this or has any tho=
ughts on why this might be happening or how to fix it, that would be greatl=
y appreciated.

Thanks,
Jim
Jim:

I'm sorry this is happening to your N320s.   Can you confirm that it DOES N=
OT happen on previous releases?  I don't have an N320 here to test with.

I've rattled some internal Ettus/NI cages, but I cannot offer a concrete re=
sponse time.



________________________________
From: Jim Palladino <jim@gardettoengineering.com><mailto:jim@gardettoengine=
ering.com>
Sent: Monday, May 2, 2022 12:59 PM
To: USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Subject: [USRP-users] N320 TDC measurement errors

Hello,

Ever since updating to UHD 4.1.0.5 (including updating the filesystem and F=
PGA image on our six N320 USRPs), we occasionally get TDC measurement error=
s when trying to interact with the radio via UHD. It isn't easily reproduci=
ble, but it does happen on different radios maybe once a day or so. I've se=
en it when using either external time and clock sources or internal (doesn'=
t seem to matter which).

Here is an example of the output of a uhd_usrp_probe when this occurs.
----------------------
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.HEAD-0-g=
6bd0be9c
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,fpga=3DXG,claimed=
=3DFalse,addr=3D192.168.40.2
[DEBUG] [MPMD] Claiming mboard 0
[DEBUG] [MPMD] Device args: `mgmt_addr=3D192.168.40.2,type=3Dn3xx,product=
=3Dn320,serial=3D31EDED4,fpga=3DXG,claimed=3DFalse,addr=3D192.168.40.2'. RP=
C address: 192.168.40.2
[DEBUG] [MPMD] MPM reports device info: addr=3D192.168.30.2,claimed=3DTrue,=
connection=3Dremote,dboard_0_pid=3D338,dboard_0_serial=3D31EBB6F,dboard_1_p=
id=3D338,dboard_1_serial=3D31EBB94,description=3DN300-Series Device,eeprom_=
version=3D3,fpga=3DXG,fpga_version=3D8.0,fpga_version_hash=3D6bd0be9.clean,=
fs_version=3D20211215135436,mender_artifact=3Dv4.1.0.5_n3xx,mpm_sw_version=
=3D4.1.0.5-g6bd0be9c,mpm_version=3D4.0,name=3Dni-n3xx-31EDED4,pid=3D16962,p=
roduct=3Dn320,rev=3D10,rpc_connection=3Dremote,second_addr=3D192.168.40.2,s=
erial=3D31EDED4,type=3Dn3xx
[DEBUG] [MPMD] Found 8 motherboard sensors.
[DEBUG] [MPMD] Initializing mboard 0
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,mgmt_a=
ddr=3D192.168.40.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dint=
ernal'.
[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,mgmt_addr=3D192.1=
68.40.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'
[INFO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,mgmt_addr=3D192.1=
68.40.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
[ERROR] [MPM.Sync-0] TDC measurements show a wide range of values! Check yo=
ur clock rates for incompatibilities.
[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
[ERROR] [RPC] TDC measurement out of expected range!
[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training Complet=
e
[ERROR] [MPM.RPCServer] init() failed with error: TDC measurement out of ex=
pected range!
Error: RuntimeError: Error during RPC call to `init'. Error message: TDC me=
asurement out of expected range!
----------------------

If I run uhd_usrp_probe again immediately, it always seems to work fine. I =
don't think this is specific to any of the 3 valid master clock rates, but =
I've seen this happen after a fresh reboot of an N320 with a uhd_usrp_probe=
 -- so it should have been set to default parameters. I also feel like it h=
appens after a radio hasn't been in use for a while, but I'm not sure if th=
at is always the case.

Does anyone have any idea what might cause this?

Thanks,
Jim




_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>



--_000_MN2PR12MB3312462A2E9190A0F5590D9DB8C69MN2PR12MB3312namp_
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
Thanks, Marcus. I cannot say with 100% certainty, but we had most radios on=
 UHD 4.1.0.2 before and nobody here remembers seeing those errors (ever) un=
til we updated all of them to 4.1.0.5. There have always been issues (accor=
ding&nbsp;to the others I talked to)
 with radios not starting properly with some odd error or another that woul=
d magically go away with the next attempt. It could be that some of those e=
rrors were related to this problem and were presented to the user different=
ly, but I can't say for sure.&nbsp; If
 I get a free N320 at some point, I might try reverting it to 4.1.0.2 and k=
eep an eye on its behavior.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Monday, May 9, 2022 12:04 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: N320 TDC measurement errors</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 2022-05-09 11:32, Jim Palladino wrote:<=
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
Sorry to bring it up again, but this is really becoming an issue for us, in=
 that we can't seem to use our N320 radios reliably with this TDC measureme=
nt error issue. When the TDC error occurs, our program or even uhd_usrp_pro=
be immediately errors out and exits.
 If anyone has seen this or has any thoughts on why this might be happening=
 or how to fix it, that would&nbsp;be&nbsp;greatly appreciated.</div>
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
</blockquote>
Jim:<br>
<br>
I'm sorry this is happening to your N320s.&nbsp;&nbsp; Can you confirm that=
 it DOES NOT happen on previous releases?&nbsp; I don't have an N320 here t=
o test with.<br>
<br>
I've rattled some internal Ettus/NI cages, but I cannot offer a concrete re=
sponse time.<br>
<br>
<br>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Jim Palladino
<a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailto:jim@gardettoengineering=
.com">&lt;jim@gardettoengineering.com&gt;</a><br>
<b>Sent:</b> Monday, May 2, 2022 12:59 PM<br>
<b>To:</b> <a class=3D"x_moz-txt-link-abbreviated" href=3D"mailto:USRP-user=
s@lists.ettus.com">
USRP-users@lists.ettus.com</a> <a class=3D"x_moz-txt-link-rfc2396E" href=3D=
"mailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> [USRP-users] N320 TDC measurement errors</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Hello,</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Ever since updating to UHD 4.1.0.5 (including updating the filesystem and F=
PGA image on our six N320 USRPs), we occasionally get TDC measurement error=
s when trying to interact with the radio via UHD. It isn't easily reproduci=
ble, but it does happen on different
 radios maybe once a day or so. I've seen it when using either external tim=
e and clock sources or internal (doesn't seem to matter which).</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Here is an example of the output of a uhd_usrp_probe when this occurs.</div=
>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
----------------------</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.HEAD-0-g=
6bd0be9c
<div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
<div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
<div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
<div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,fpga=3DXG,clai=
med=3DFalse,addr=3D192.168.40.2</div>
<div>[DEBUG] [MPMD] Claiming mboard 0</div>
<div>[DEBUG] [MPMD] Device args: `mgmt_addr=3D192.168.40.2,type=3Dn3xx,prod=
uct=3Dn320,serial=3D31EDED4,fpga=3DXG,claimed=3DFalse,addr=3D192.168.40.2'.=
 RPC address: 192.168.40.2</div>
<div>[DEBUG] [MPMD] MPM reports device info: addr=3D192.168.30.2,claimed=3D=
True,connection=3Dremote,dboard_0_pid=3D338,dboard_0_serial=3D31EBB6F,dboar=
d_1_pid=3D338,dboard_1_serial=3D31EBB94,description=3DN300-Series Device,ee=
prom_version=3D3,fpga=3DXG,fpga_version=3D8.0,fpga_version_hash=3D6bd0be9.c=
lean,fs_version=3D20211215135436,mender_artifact=3Dv4.1.0.5_n3xx,mpm_sw_ver=
sion=3D4.1.0.5-g6bd0be9c,mpm_version=3D4.0,name=3Dni-n3xx-31EDED4,pid=3D169=
62,product=3Dn320,rev=3D10,rpc_connection=3Dremote,second_addr=3D192.168.40=
.2,serial=3D31EDED4,type=3Dn3xx</div>
<div>[DEBUG] [MPMD] Found 8 motherboard sensors.</div>
<div>[DEBUG] [MPMD] Initializing mboard 0</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,m=
gmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dinternal,time_source=
=3Dinternal'.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,mgmt_addr=3D=
192.168.40.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'=
</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,mgmt_addr=3D=
192.168.40.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'=
</div>
<div>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!</div>
<div>[ERROR] [MPM.Sync-0] TDC measurements show a wide range of values! Che=
ck your clock rates for incompatibilities.</div>
<div>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!</div>
<div>[ERROR] [RPC] TDC measurement out of expected range!</div>
<div>[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!</div>
<div>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Trainin=
g Complete</div>
<div>[ERROR] [MPM.RPCServer] init() failed with error: TDC measurement out =
of expected range!</div>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span>Error: RuntimeError: Error during RPC call to `init'. Error message: =
TDC measurement out of expected range!</span><br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant">----------------------</span><br>
</span></div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant"><br>
</span></span></div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant">If I run uhd_usrp_probe again immediately, it always seems to work f=
ine. I don't think this is specific to any of the 3 valid master clock rate=
s, but I've seen this happen after
 a fresh reboot of an N320 with a uhd_usrp_probe -- so it should have been =
set to default parameters. I also feel like it happens after a radio hasn't=
 been in use for a while, but I'm not sure if that is always the case.&nbsp=
;</span></span></div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant"><br>
</span></span></div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant"><span style=3D"background-color:rgb(255,255,255); display:inline!imp=
ortant">Does anyone have any idea what might cause this?</span><br>
</span></span></div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant"><br>
</span></span></div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant">Thanks,</span></span></div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant">Jim</span></span></div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant"><br>
</span></span></div>
</div>
<br>
<fieldset class=3D"x_moz-mime-attachment-header"></fieldset>
<pre class=3D"x_moz-quote-pre">____________________________________________=
___
USRP-users mailing list -- <a class=3D"x_moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"x_moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.=
com</a>
</pre>
</blockquote>
<br>
</div>
</body>
</html>

--_000_MN2PR12MB3312462A2E9190A0F5590D9DB8C69MN2PR12MB3312namp_--

--===============8375293037582820435==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8375293037582820435==--
