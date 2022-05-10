Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D4643522340
	for <lists+usrp-users@lfdr.de>; Tue, 10 May 2022 20:03:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F1D8384B09
	for <lists+usrp-users@lfdr.de>; Tue, 10 May 2022 14:03:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652205833; bh=NeXErJpXTkyLSNAfioM0LpCZDZitSb2xzuAoOlm7MoM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=cFAfBPIdFegn3daZ8nFNyeaQz9BVgc5iFUzM7kbYKwcBm6e8okYoCF9KXcqDxZvA3
	 Psz4nb6c+zJyqPO7C59HISva6YKpbh1k/905SAQX81eu/9fFCOy+eTpZV2la4M9ehC
	 X7qecypXxVBC+fGK3Kpn0NbwrDcUSP8TtV221LpZdQTrB3tDH62TQ9ZrCIVfVhzUmA
	 7hmRjebc9XNzL1lfAMBxvqmFb6n2SxiDwcyOwXLXGEoKr7tnW4fKaqq/IibDIutVEO
	 MV5vMNL4pAsWYtmqEhoWiOvEtlPsM171VwnA4TvEkzMvPjCqfeRN27S/LDLVajsfrK
	 AAts3/YugGNwQ==
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.164])
	by mm2.emwd.com (Postfix) with ESMTPS id 5E2E53845E2
	for <usrp-users@lists.ettus.com>; Tue, 10 May 2022 14:02:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="JqIstTFu";
	dkim-atps=neutral
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.164])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id A223F40068;
	Tue, 10 May 2022 18:02:44 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2175.outbound.protection.outlook.com [104.47.57.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 6140AB0008C;
	Tue, 10 May 2022 18:02:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PsS0N3uQXt/WwKF+r7H1I7LSpgY049K2tbRgICdhwOPZ97dZigR86jIx49PZs9t/4S52TmlBr2pRYDgQsO5kX8lId+CreJE13YyC8hBEc2MipwN16ErJL7bzy+Wpbh2T1JEwGXftvH17RmESRQMJqW3EWB6vDEy+NxYaQXBECz8ui83DGBgz4YQKzSGvZugc/dFmzndF1Yv6YPST4OWSzYQd7i+QGoWiRYXybg+9sqcSuq1gkHLKFjaA6cMN0i/gY91RgNIqO3zDTYxEFayC7V6QWHEfxzVDxUOsvSwC4N9gLfU8vFUeiIZysh2oey20N0OATFtcCLg/uI2wxwrA2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7WQGrpqnOuy6J48tdpWCGuUjwonimuPQEC+DnQ5Vgqs=;
 b=CXKUA2sToFde6XCy5fb9hC2n+oHN0e3vGwRFBNaD9QkIdjBeRwIwNEmiZuHYvs4FWFJBwipjMn2SFepBNbd7KjR1XWFZiqdPQ2SzOQ7cLwihCNceUxCNgcqIQor+gY27p9LFRsEsuDMmuP7u5ahBjDEnL5kh8RCBhZ/8GbgsCncUR//ovJeLGnqHZxxO3MOp/sy638oC32ON/qdBJberFadaxJGAB7JwK+8/UU2+Ft82h7yEh0g83h0OMgfp0WYIwITDYZp1PFYkeN4fOO29mN47mK9es2d4J8NDVsJSsQxMD9tP00xtL648oMI/LQPF9j7EZA4d2JzCQZH5ASBJ3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7WQGrpqnOuy6J48tdpWCGuUjwonimuPQEC+DnQ5Vgqs=;
 b=JqIstTFu7Gc9WBZ34+sZmBhmRwy+HyLEmXqAG8VGRq4HUvthJ92mieJEZepJk26m2M4R0cNCT+n5miNw9urkvlOn3DhdKYT1dvkzlCmQhbCAmt/TaZc0YYOZ/kWNL/SeIXiyQiQFnT9QaltB9QIvOlF7BGNfz0p5qzo99ItDU14=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MW3PR12MB4492.namprd12.prod.outlook.com (2603:10b6:303:57::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.21; Tue, 10 May
 2022 18:02:42 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::2476:1b13:7af3:29f6]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::2476:1b13:7af3:29f6%7]) with mapi id 15.20.5227.023; Tue, 10 May 2022
 18:02:41 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "USRP-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: N320 TDC measurement errors
Thread-Index: AQHYXkP+Y4fg2AyFmESoC+vAlJapH60WthdagAAKXwCAAARmGoABrkdP
Date: Tue, 10 May 2022 18:02:41 +0000
Message-ID: 
 <MN2PR12MB33126482C2E5860798E206F7B8C99@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <MN2PR12MB33120210FE804565B1B42888B8C19@MN2PR12MB3312.namprd12.prod.outlook.com>
 <MN2PR12MB331244B919FBB63ECE92630FB8C69@MN2PR12MB3312.namprd12.prod.outlook.com>
 <7e208111-f0c0-6713-fe95-c4a6ea38d060@gmail.com>
 <MN2PR12MB3312462A2E9190A0F5590D9DB8C69@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: 
 <MN2PR12MB3312462A2E9190A0F5590D9DB8C69@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8e7de896-a163-4bd6-126f-08da32af46e7
x-ms-traffictypediagnostic: MW3PR12MB4492:EE_
x-microsoft-antispam-prvs: 
 <MW3PR12MB449266CCB299D7FDF8B33E95B8C99@MW3PR12MB4492.namprd12.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 zlZaBxmsZMN8JXLDKtEcSqOSO7gcK1QpX8D2pB9bI25PQZyEF0TLgGwVuMHqeXXde22mA8+VbBNNdubgHsyMpHB5qtYJrHXO8cpZAKz4vC2ffy8C6UGeUgpLNHrrC/7oWVZZImmbCP6PTov5xr5vG9q6cGBh0j1ZUdlnBrgGb0qg6TOmgWV2M6180sFwgl4VrY/LEszqrSpTpwqHHPicSzaT2TbEllmJKSHmpVICv1u1vvaKt5hZwW3vIUE+oSnpCgQnWofFGrN0L0F1ZOPLayRmt+kGJiTqpHfkDiP1giljmaTlSGARTPQrlgdEYqjTwWIwv4rYWNcZnSX4udnReHvG4SiM6ssHzonCYjehh+vh0tHWYs1xhwyDZDCY2dkjWzWLfzv01d9FwLskwf8G5STZ6Vihzw2R/AaPciUtPpdQblwn3t+gOIyEUx73FziJRCuZmpZ1TyltuzQCIb2F0UJNV9RN8VKP+YSEzWyUjmPF3NG6RKFT6nslgRxY1pi304lRXX0o4GB47cshIX7SchrQqs1oibdQzzOEKH1eRfiayZSY9a11oNVftrOi7jN9SVX0x64f4SFR+SaVsdj8Ky53NsPlPOOELAYDgnTwEhksg/MheUlpzS7T5r90sdraQ9GgpiLxkLVDDjfk4KE0nFWDpAyqi/PB430tdHN/KZt8PWIwaCLdaqq7xQePPyOheQ/CbE4giEf8oLW6KjI4zw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(376002)(366004)(39830400003)(136003)(396003)(346002)(66446008)(64756008)(9686003)(53546011)(6506007)(71200400001)(38070700005)(508600001)(26005)(7696005)(110136005)(38100700002)(86362001)(55016003)(83380400001)(186003)(33656002)(5660300002)(52536014)(8936002)(76116006)(66946007)(66476007)(19627405001)(316002)(8676002)(66556008)(2906002)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?yhkAO7arpjHT6lD7fjE/L2GxskgfZOKTIDoQFSOsWrV+OwUK2TlgARH99XaM?=
 =?us-ascii?Q?VgKMJxe4udkSg+6baZ4EadUOWDwTqxCmghKzu97Hw4s5w/cTQTUgHXZMf5mG?=
 =?us-ascii?Q?306Y3nivyxh5/Cmbw+VGtYjANtMrDJsFFzPTaNjdBqziaqTa9GlR3msS1qq9?=
 =?us-ascii?Q?JIMdtXN24Y2AhL7t81Q0HEqR97M2g46Yk/y+BbAeDyQWdB31kFq2wR0pWCT8?=
 =?us-ascii?Q?AuEPI7mi4ElhWMpTC93FQOvsaeWNCJbQRaG+iaKaWXp0ly9NJEU5mjjYVTL8?=
 =?us-ascii?Q?32YKLmt0QHDNpGxp1FQaVh0/Q6YFw8M7sXx7/MbcOtWKZIz0f3dxHDrA0ddG?=
 =?us-ascii?Q?tOTITP6xc+Hq6cWqqALCj4zPT5H8iIL0GKirzgAKpyzsEbFohfL7Fb041SOu?=
 =?us-ascii?Q?Q5MuhOGz0ShSVGMo1v0CjAy59DBZWP3H3G833TQUPrDne11aoV1UcQtgtNHv?=
 =?us-ascii?Q?H4Bkf/KcNnczYqW2eRa4MbsYWNiYv+KGnc5jP7Dm/pTafOsF/AMRp8ZOZCrv?=
 =?us-ascii?Q?M4omGRTtTq2uZuUPMHlprLIpyLchlUUp/ua889sBOXFOIyoSg7TqnyyTcHxR?=
 =?us-ascii?Q?tPCbivS5BHWPjrPwsQsqgvD79PQoVzOXzmGjM09C3Kc6HfhF5Snj4MGq2WI6?=
 =?us-ascii?Q?EsPH9Y2w+OJVtqFm3uFeFHWs1GSTVDu/cKLeoWvwjleiyn/bLZzsEiY4a/Kz?=
 =?us-ascii?Q?AQCcmHivqDPwzKySTVQw52nUi5/3m7V5Q5VRWdybSohAWIDxDox1qzfie23S?=
 =?us-ascii?Q?jkO4w8Tvfw4P2sP1ZWh8SvIR6FslSeD/+e1HdACJKO4r/ix+By6egoduAQNG?=
 =?us-ascii?Q?QIb1ICvHbSqbVAqpva1QbL5hbW7B2ejBP9vEXvUXsaWn+o1cOrKZCcX/fL+o?=
 =?us-ascii?Q?IwVSxycXvcUh256i3dkT0R7B5DvsCq13a0Hx6BBJ5V4Ugk7uVpLoKkk6LbXd?=
 =?us-ascii?Q?nwFGiUSzQ0Q+mFzo/rLGP4uERFFw0nidJ2XkQvcrt5uSxdjChOOq/lq5MvCA?=
 =?us-ascii?Q?CF4bW/JlAOMaha11DlaJqPkCEIU53DIQZ5GroQv/PS4vlkUSPZBFEwU5C7r1?=
 =?us-ascii?Q?/R6/Gj9mFemdNZsRLiFaiwc6ssIsw+fweRDo5wamjeyGCTgv43G1CXlX2g/T?=
 =?us-ascii?Q?ySyL0/okvlD1oZ6z3X6n98WR+iqzYDN7QFLysNLBwCUqIuOcCx5y+syZ4lGa?=
 =?us-ascii?Q?BhTd12cm9mpH5Z2jt23d5x9SXQqj/tMXiUapxklMGuUj0z6O9TZHbvnx2hQJ?=
 =?us-ascii?Q?4eYPKUEz2IrKb6iUsprtH0RZ5k2I1rkLmHIO8hPQWiPYBpPmnKijUjVzYtxi?=
 =?us-ascii?Q?EKepn/AXjlt5oAVKzrwA9l9ENeH72z/83Vg1JH8fLmR+HrMOKEgcwSrYasXy?=
 =?us-ascii?Q?KpYT4y+CPwwrm8yWEnb8JDr7NxyDR3yLyE5vFGwgcSQIN//lIKA6q71IKkTt?=
 =?us-ascii?Q?VyWAUAmVDIV04KvDyndmhQBXRSLJkBFoi9JpXipRnh6zhcCFJ1JFBLw6VA8x?=
 =?us-ascii?Q?5un9gL1v8NUpSmrdjCWUkZ0Yyl7lsruOF/ozoPSDweUbkdqI+qzJr1qf9JEY?=
 =?us-ascii?Q?oAMe5prG2iCxPE+bEfYMfHXRL0uclWjjclXRMGZ9Afg9UYIaJQgrmy277yx4?=
 =?us-ascii?Q?uPrX2J6VHCx+cBiAFcq0pvq8oKQxGNQl9ZOybSKROIDWSua2a2KvwZp7xS1W?=
 =?us-ascii?Q?GU6+PLZdv8C09zDDAqDlWi2Q8dUFqNfvI3Q4mKvpdeztKkmxJAunszvg6zm0?=
 =?us-ascii?Q?hIoAualbfCKbc5qKamb/Hw+0yiNQRBA=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e7de896-a163-4bd6-126f-08da32af46e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2022 18:02:41.6404
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qwSXkHQKBOd6p5jHiMkLcZxtjwvkFv8js30RokfloaY+aEZSqGWX/rQsF+onC8fNdeyLF7jj9noVY9WTX/9Es9jjZAkwds+RMdIokGS0yRA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4492
X-MDID: 1652205765-ZwWXU0EbsdrQ
Message-ID-Hash: BTPBTO6MDGB3M7XSSZMC45J5I3UZDEYQ
X-Message-ID-Hash: BTPBTO6MDGB3M7XSSZMC45J5I3UZDEYQ
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 TDC measurement errors
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5CMCWV7WFYINSGX5RE2FPZJKAJYVVOY2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4058655628578410743=="

--===============4058655628578410743==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB33126482C2E5860798E206F7B8C99MN2PR12MB3312namp_"

--_000_MN2PR12MB33126482C2E5860798E206F7B8C99MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Just passing on that I updated an N320 to UHD 4.2.0.0 and ran into the TDC =
error pretty quickly. I now reverted that radio to 4.1.0.2 and have not see=
n that error "yet".

Thanks,
Jim

________________________________
From: Jim Palladino <jim@gardettoengineering.com>
Sent: Monday, May 9, 2022 1:08 PM
To: Marcus D. Leech <patchvonbraun@gmail.com>; usrp-users@lists.ettus.com <=
usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: N320 TDC measurement errors

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



--_000_MN2PR12MB33126482C2E5860798E206F7B8C99MN2PR12MB3312namp_
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
Just passing on that I updated an N320 to UHD 4.2.0.0 and ran into the TDC =
error pretty quickly. I now reverted that radio to 4.1.0.2 and have not see=
n that error &quot;yet&quot;.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
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
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jim Palladino &lt;jim=
@gardettoengineering.com&gt;<br>
<b>Sent:</b> Monday, May 9, 2022 1:08 PM<br>
<b>To:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;; usrp-users@list=
s.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> [USRP-users] Re: N320 TDC measurement errors</font>
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
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
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
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech &lt=
;patchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Monday, May 9, 2022 12:04 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: N320 TDC measurement errors</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_x_moz-cite-prefix">On 2022-05-09 11:32, Jim Palladino wrote=
:<br>
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
<div id=3D"x_x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif=
" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Jim Palladino
<a class=3D"x_x_moz-txt-link-rfc2396E" href=3D"mailto:jim@gardettoengineeri=
ng.com">&lt;jim@gardettoengineering.com&gt;</a><br>
<b>Sent:</b> Monday, May 2, 2022 12:59 PM<br>
<b>To:</b> <a class=3D"x_x_moz-txt-link-abbreviated" href=3D"mailto:USRP-us=
ers@lists.ettus.com">
USRP-users@lists.ettus.com</a> <a class=3D"x_x_moz-txt-link-rfc2396E" href=
=3D"mailto:usrp-users@lists.ettus.com">
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
<div class=3D"x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Hello,</div>
<div class=3D"x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Ever since updating to UHD 4.1.0.5 (including updating the filesystem and F=
PGA image on our six N320 USRPs), we occasionally get TDC measurement error=
s when trying to interact with the radio via UHD. It isn't easily reproduci=
ble, but it does happen on different
 radios maybe once a day or so. I've seen it when using either external tim=
e and clock sources or internal (doesn't seem to matter which).</div>
<div class=3D"x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Here is an example of the output of a uhd_usrp_probe when this occurs.</div=
>
<div class=3D"x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
----------------------</div>
<div class=3D"x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
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
<div class=3D"x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span>Error: RuntimeError: Error during RPC call to `init'. Error message: =
TDC measurement out of expected range!</span><br>
</div>
<div class=3D"x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant">----------------------</span><br>
</span></div>
<div class=3D"x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant"><br>
</span></span></div>
<div class=3D"x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant">If I run uhd_usrp_probe again immediately, it always seems to work f=
ine. I don't think this is specific to any of the 3 valid master clock rate=
s, but I've seen this happen after
 a fresh reboot of an N320 with a uhd_usrp_probe -- so it should have been =
set to default parameters. I also feel like it happens after a radio hasn't=
 been in use for a while, but I'm not sure if that is always the case.&nbsp=
;</span></span></div>
<div class=3D"x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant"><br>
</span></span></div>
<div class=3D"x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant"><span style=3D"background-color:rgb(255,255,255); display:inline!imp=
ortant">Does anyone have any idea what might cause this?</span><br>
</span></span></div>
<div class=3D"x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant"><br>
</span></span></div>
<div class=3D"x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant">Thanks,</span></span></div>
<div class=3D"x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant">Jim</span></span></div>
<div class=3D"x_x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helv=
etica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<span><span style=3D"background-color:rgb(255,255,255); display:inline!impo=
rtant"><br>
</span></span></div>
</div>
<br>
<fieldset class=3D"x_x_moz-mime-attachment-header"></fieldset>
<pre class=3D"x_x_moz-quote-pre">__________________________________________=
_____
USRP-users mailing list -- <a class=3D"x_x_moz-txt-link-abbreviated" href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"x_x_moz-txt-link-abbreviated" h=
ref=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
</blockquote>
<br>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB33126482C2E5860798E206F7B8C99MN2PR12MB3312namp_--

--===============4058655628578410743==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4058655628578410743==--
