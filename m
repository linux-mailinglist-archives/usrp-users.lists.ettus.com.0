Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A67EA616AD0
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 18:34:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5108384220
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 13:34:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667410471; bh=Pg0Dz7+Xfe2YbFVHHL7O/m9kQ7H/uue4KCeDjqoj3rU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=oyuIiWKWXYKOJilYBHaJpkf++6SJ554kf2sw6E3oPwM9P9MiQKJYlQ6nXkiKSALI9
	 XF17yeYdx4ws18wmCCAfH9RHTU24mE4XRhQkEYFxI0xK7iyJv3Cl2zhK08q/cqyBoU
	 mMj2gADp5mnASS1l9BHGVmY2at1YRX/eaRiafaDk9WGdXVEzLAv2m3paagMD8ImQda
	 OeQVCTqsbF42Vru7leQj9s7qrcfSTBp3Eqx9VNmzq/QyMb0n9VxS2LY8Sx7hx0WWfu
	 qBdTqm0XlSQN1NKqyPalDR0zNCKqkdwJaLL1ZgRQ4PwSVExDRHhqZQdonHubgJ7bLm
	 gj4BBzxoPN7zA==
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [148.163.129.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 81BA03841E1
	for <usrp-users@lists.ettus.com>; Wed,  2 Nov 2022 13:33:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="OaAiVw+R";
	dkim-atps=neutral
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.66.132])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 89385220085;
	Wed,  2 Nov 2022 17:33:07 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02lp2045.outbound.protection.outlook.com [104.47.56.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id A5B7E940086;
	Wed,  2 Nov 2022 17:33:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=crSSNKZnKqTqbg6sdAoj5Q5Bdub7syEhu3HXPbt6pxiDIs8VvgAjhZsshEV41YXzMXQQLfgoMOg9Y/ioVGBSmCgCoMVUkiL1l0yXEreww7BUMAQiELIqcVzOwhpbSrrgm1MXFRa30GmtOvbivhHA/fItrdJ2V9YCQf3GHQZlNaEm1kHdBH3XfMFiJx71pTcM3l3z5Fcecu2aqy66DgRiEdmeNbDmfwm5bSMTAbXATUwqCRSMk24AlEbyobAYf3nLglnSHhHlWD7vi5LS/7lMfAlMNxiJQDyPWPdIE2TERCNy42c5GDbyagBJocroPnmr/MfURjlijg1RDMuHuVJxEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=raMKBJyigYwsp0LKzrMRC9VvmFMREX7GqJuqlTupcDg=;
 b=e7ISkwO4IlbncDV7JlEW35sct2XqffwdQU27l1/4jVzLSXdElRqAdZCYmJk129XDdaH3rB/hE4RWiXB3btdBNGTPfUk9UoHLVcz6BIintJrFY08NmD8erQEGs4icxvIVFQDVlFjr7EPXzzbJVn669qoAqVHTkdnbqkFW2CvklrdZ9rmpdJmUiBzZl5nGyua3neJL5ej3wdJVbM8jHshQNwA87NYdngKYU/rjMkekaI2LAO182VpRXB70XKSKp8DJdv8CO+3y1P1EgbzS4gk5OKshZ/2TzpOvJVryRzJwGtOLRTR02VP5F/gJWrq6J1QWM/uZi7ftJ8m8HsQUuCyLUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=raMKBJyigYwsp0LKzrMRC9VvmFMREX7GqJuqlTupcDg=;
 b=OaAiVw+R1Buh+vJp3/AQA5FWoMcFDXIPO+OzHP4D10HejDqgcPxhOSnZDPn+2XjVDDwpT7G/+uIt3xfcit3j9Y2H8wPqZ/yzYTUjawXkU7l95D6g1IH9izFCdmZKSk1le5YhnAcXSANeXZeu89kbwVZ2nPXrap+m/DshHIjdesU=
Received: from BYAPR12MB3301.namprd12.prod.outlook.com (2603:10b6:a03:130::29)
 by SJ1PR12MB6290.namprd12.prod.outlook.com (2603:10b6:a03:457::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Wed, 2 Nov
 2022 17:33:04 +0000
Received: from BYAPR12MB3301.namprd12.prod.outlook.com
 ([fe80::8f72:aea4:ec1b:508]) by BYAPR12MB3301.namprd12.prod.outlook.com
 ([fe80::8f72:aea4:ec1b:508%7]) with mapi id 15.20.5769.019; Wed, 2 Nov 2022
 17:33:04 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: David Raeman <david@SynopticEngineering.com>, "Marcus D. Leech"
	<patchvonbraun@gmail.com>, "USRP-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: N320 LO stability problem
Thread-Index: AQHY7rAbGMBhLfKBpkKklSXlG+QYJ64rkK2AgAAA9kqAAALFMIAAAbTxgABMEYc=
Date: Wed, 2 Nov 2022 17:33:04 +0000
Message-ID: 
 <BYAPR12MB3301FAE1116FDA502367FA27B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
References: 
 <BYAPR12MB33010775AE76FAB552039CF8B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
 <bc238838-4f69-b676-79b7-955751d6a628@gmail.com>
 <BYAPR12MB33013BD6E3BE1D6065E79830B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
 <BN2P110MB1747DA483336FD90E553122AB7399@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
 <BYAPR12MB3301632013DEC60995030EB0B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
In-Reply-To: 
 <BYAPR12MB3301632013DEC60995030EB0B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR12MB3301:EE_|SJ1PR12MB6290:EE_
x-ms-office365-filtering-correlation-id: f0bd3b4f-040e-4a85-8261-08dabcf84c4e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 csU4vCnC6NA/kYOx0Blgue7WezoKXC5ozQqYr7gXZcAqg2FZ5BvnZEZGonj52fne5PbBFJZU4ZdEdqWmGhoqJ8OFs2jSp3tYsd7/oK/l+5sQ+4eZSw+QI4Dyg1WIMZg0cYj9pkKV+6pqpGN7Z5fi5lx2DfQrEIjIN1gSjQS9kF+uRYup0/j0eN8BtgdniiF62+/U5CKjWsnHeV3ZpOHYAPe3SwCtQb7EIr0oXniyRw5k58wHurx34AIo03Cs68RDDcHQL/uDxbah3XGwriTcYPhILYylDoDa+bmxjC4bzgMXuzpbXvRXcMsmdM7R49gvKkOdOvez6xBH2tFNYUIb4hqkDZuwJOLlFwcahD2h1oXYVsgZ1k7NizXKxK0wgMG/EG0PDRFIhwwVbI35mMsKNdQovAyf71r2FViLcKSrGmP30n6y7p/tlRuc8hPZkF0ihEvdXm236UH0xANIn13SYT3vD3w0HDDzcKXS52vdNprvWb4nJH4s43YY/gw6Kb4Fr7FDLWBsBdFo3JX0tLIeCim3ZSavreytM0IaVbdEplhSZ9odoueNbBeJQxLjlFBk7EoOYxRcLvCnG17aMc0aAS+snLP9C7dWTnfu5VGxtAsiAnhtwlDscBJSqjzMTHucxE5/n0ZZqsTVAa/xOfpIsgrMSrfZBraRlNAWprsDGVKs9t3pipe1m9wJ/kGOozbC1L0Pum2aD6FqMcA3GGtbqY2HG0im1WvuLBneXqpmUBvMB0VnemdR2TkM8ITpSmBTcQ2suvhR4Z+5Qi9pFcyDpkdLN7Xc6paq5ARtU2q8w+I=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB3301.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(366004)(136003)(396003)(376002)(346002)(39830400003)(451199015)(41300700001)(64756008)(9686003)(66946007)(8936002)(53546011)(26005)(55016003)(2940100002)(5660300002)(6506007)(110136005)(52536014)(7696005)(19627235002)(91956017)(316002)(166002)(38070700005)(122000001)(66556008)(8676002)(33656002)(186003)(2906002)(66899015)(83380400001)(86362001)(66446008)(76116006)(478600001)(66476007)(38100700002)(71200400001)(19627405001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?78snVmBGYP6FcXuj40BidWrDU0E9ks4bkaQYSlGyLq+og7DAVHP9Z5wt?=
 =?Windows-1252?Q?c+m+7UcLUoPNAzoS1gWefQlMkCbmbOy3RvpxImE65fwy7iRFiptfOMUP?=
 =?Windows-1252?Q?j36J7JobKSuVi9ZJtC84if8XeJ/ZSP4/qQIk3hR4dEQ6KoCddhlrpwwf?=
 =?Windows-1252?Q?04VPpwZHyln6G7BUIpws4fG4L4VpDHwf7VvZGhD3N6HJXAGhXretxmb+?=
 =?Windows-1252?Q?imxwkEy0+hkJR8p1f+ddrAy6cdvz185nJ5egNPCaf/gaxLsxpMnqo08K?=
 =?Windows-1252?Q?yglt+BO6D61/jDPzA0bv7KQHcayk0FmdDLqd4KnSUgj295Pdnzp/iHzh?=
 =?Windows-1252?Q?7y57BzGqEzZZJE9+8kH8UZAiM2xv9gSCPMbGFMFechtuUTdEHlx0/ePG?=
 =?Windows-1252?Q?SB0d5rzmIH/nBGqJTF3cV0N+eEVnDGZ5VLXVQxQXXpoeHCk7lyln6TJe?=
 =?Windows-1252?Q?3tpZv3LlzRUcRuF8y07S+x7/hy58F9mrKuWeWhqdHyzSdC//DWoxQVKx?=
 =?Windows-1252?Q?4ImFRWZ5TQdlEzqHBXwz/M6kolViOSQkQlmE5HZzEPKqcBthbqrOriTq?=
 =?Windows-1252?Q?dqrbza9aunKtE/3lgvCSvdY+kR0nAWzRA0uqK8wumv0Vm2BvBfh583oI?=
 =?Windows-1252?Q?c3ea8MS3gRpCuOO6LaYagrBfZW8gh3zCWoxuXXOTDxsLlcbQHzhKDlqQ?=
 =?Windows-1252?Q?2e57/t/v2zAUiryb81A/Hwr/9735lYpxBOvtqTCAuK/NZaUlVXRRmjnG?=
 =?Windows-1252?Q?rI5VZWbHyVZxNE/a25HHGH509LZb5KjFeSy6yCykNOLoHo69fuWqawS2?=
 =?Windows-1252?Q?FFGY+v6xXeZlrCffNcnC0GtKgr2CUwvIzSp40CUXB8MwOCW3qz8gFxiH?=
 =?Windows-1252?Q?ZAKMWQv2njOL2dcIBfC0KZQb2gBNlp0KbIPmL/wsvO1DOEkZJFQjT7oT?=
 =?Windows-1252?Q?KSUe1snaYqjHGTLga3X2HSZCMV3K376H33CS3Q5I2Gut864ikuYZ5vfz?=
 =?Windows-1252?Q?EhUwbVjsbVN5BV2lji3YRvAB5e1/SrX9ejhCxSZl4ErFWot0n6x6PzDm?=
 =?Windows-1252?Q?86qk4sbOfFmGrTJPgLKOLerj2W0tDl6aKacPPWRgntumaJJ9tMCXb75n?=
 =?Windows-1252?Q?gunX65dPCYto07sS/zTI7BM9NDtI+C4ayALZnOCnxVzEEtf7zN7Nmby2?=
 =?Windows-1252?Q?U8HACCVAQo58xrKs5Rmm7WY+kBi2gf63mJbFR4z2g/2co504KIKP3huX?=
 =?Windows-1252?Q?67YH3EOjNfh08FsqhhSXNMe//3XNag42mcLcI8mMoSPz1zG/RkEpkh0y?=
 =?Windows-1252?Q?uk/4Jumg+kyuxSvuxIxgFeIeQQxpCLOOxHahhTB2uufQbgc2aBfh423+?=
 =?Windows-1252?Q?o+62/iQmm8vgaYFXXzY1PPYZ+lRXwWZW7lE90dtTFgFbR/yExaAd2vpA?=
 =?Windows-1252?Q?zS7avI8856sUVtAuc46/gFJkFzT0N5UVL43mzNQ9cmfCHGvuLQWwItBR?=
 =?Windows-1252?Q?a8XehFPjDrP56sLvkd+WRdULPwywW1thdJXgQotqlE2u363meo5j5Bm3?=
 =?Windows-1252?Q?0pGykVUgq1eNZkwa3QU4dEir0uNoiHSusESIFchTnrjXMDTDjZDykbNf?=
 =?Windows-1252?Q?Kspaf7XdZWteEr5HQgTZMBXEoCqK3zF2l/4fhGyPO2J3F9CcUuWYrbGb?=
 =?Windows-1252?Q?obEtLQQRSW++u7+M6ZNxtLMXVT/SrF3BIB8GSJvNmcU9nQaOllWcSA?=
 =?Windows-1252?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3301.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0bd3b4f-040e-4a85-8261-08dabcf84c4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2022 17:33:04.3846
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A3+rvP3MJoC6bF52yL024z9RJa3pPZslICifXAG8wDAEbPMl883kYNIP7zrcRZW3dY1Rn4o1xlGPDpP/hVO4MnVI+W0YBGWWGHuHio3adcM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR12MB6290
X-MDID: 1667410388-1QWpLFj7RDjz
Message-ID-Hash: IUE3J7KHRFMTO3JR4FYGLFQYEMHB4GQL
X-Message-ID-Hash: IUE3J7KHRFMTO3JR4FYGLFQYEMHB4GQL
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 LO stability problem
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6KUPMYW7VU35WEUEGD2R2UB4UZZADMX2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9024944058001019130=="

--===============9024944058001019130==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR12MB3301FAE1116FDA502367FA27B8399BYAPR12MB3301namp_"

--_000_BYAPR12MB3301FAE1116FDA502367FA27B8399BYAPR12MB3301namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I ended up manually applying David's "patch" to UHD 4.1.0.5 (manually edite=
d the files and rebuilt UHD). This did fix the issue with the N320's not lo=
cking based off of the limited tests I've performed so far. Thanks for poin=
ting to that, David.

However, I think there is still more not quite right. Even though I seem to=
 consistently achieve lock at these "trouble frequencies", I still see spur=
s increasing and decreasing in power like I described in the first email. A=
lso, I occasionally see what looks like quick jumps in overall phase noise.=
 David, I saw you made a comment in the original UHD issue that you posted =
regarding not using the oscillator doubler and multiplier at the same time.=
 If/when I have time, I might look more at this and other LMX settings. For=
 now, the fact that the synthesizer seems to lock consistently will allow u=
s to keep moving forward.

Also, I did briefly update one of the N320s to UHD 4.3.0.0 and saw the exac=
t same overall behavior.

Thanks,
Jim

________________________________
From: Jim Palladino <jim@gardettoengineering.com>
Sent: Wednesday, November 2, 2022 8:52 AM
To: David Raeman <david@SynopticEngineering.com>; Marcus D. Leech <patchvon=
braun@gmail.com>; usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: N320 LO stability problem

David, that is great, I'll look into that. I'm working on updating to 4.3.0=
.0 right now, but I'll try your double tune solution first. If this has bee=
n solved, that will save me a lot of time poking around in the LMX code.

Thanks,
Jim

________________________________
From: David Raeman <david@SynopticEngineering.com>
Sent: Wednesday, November 2, 2022 8:49 AM
To: Jim Palladino <jim@gardettoengineering.com>; Marcus D. Leech <patchvonb=
raun@gmail.com>; usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: RE: [USRP-users] Re: N320 LO stability problem


Hi Jim,



I ran into what sounds like the same issue using N320s operating at nearly =
the same center frequency. I was able to isolate a fix (some tweaks in the =
LMX2592 configuration), and my PR was folded into UHD 4.2. I believe anothe=
r, unrelated fix for N320 tuning was also committed in UHD 4.2.0.1. I=92d s=
trongly recommend trying that release.



For more context, my PR here<https://urldefense.proofpoint.com/v2/url?u=3Dh=
ttps-3A__github.com_EttusResearch_uhd_pull_572&d=3DDwMFAg&c=3DeuGZstcaTDllv=
imEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwp=
Yx0&m=3DCglWmCZNAv75-zoj2CB9dpWj4DRHkMpB8nWcwWdM2mk&s=3Dm4xlgwVRVSi2686M6zZ=
kXh8oqKef561kyaZzbOzO0kI&e=3D> has details. When I was using UHD 4.1, I dis=
covered that I could bypass this problem by tuning to the same frequency tw=
ice in a row. That might be worth a try on your end if upgrading UHD is one=
rous..



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


--_000_BYAPR12MB3301FAE1116FDA502367FA27B8399BYAPR12MB3301namp_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I ended up manually applying David's &quot;patch&quot; to UHD 4.1.0.5 (manu=
ally edited the files and rebuilt UHD). This did fix the issue with the N32=
0's not locking based off of the limited tests I've performed so far. Thank=
s for pointing to that, David.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
However, I think there is still more not quite right. Even though I seem to=
 consistently achieve lock at these &quot;trouble frequencies&quot;, I stil=
l see spurs increasing and decreasing in power like I described in the firs=
t email. Also, I occasionally see what looks
 like quick jumps in overall phase noise. David, I saw you made a comment i=
n the original UHD issue that you posted regarding not using the oscillator=
 doubler and multiplier at the same time. If/when I have time, I might look=
 more at this and other LMX settings.
 For now, the fact that the synthesizer seems to lock consistently will all=
ow us to keep moving forward.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Also, I did briefly update one of the N320s to UHD 4.3.0.0 and saw the exac=
t same overall behavior.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jim Palladino &lt;jim=
@gardettoengineering.com&gt;<br>
<b>Sent:</b> Wednesday, November 2, 2022 8:52 AM<br>
<b>To:</b> David Raeman &lt;david@SynopticEngineering.com&gt;; Marcus D. Le=
ech &lt;patchvonbraun@gmail.com&gt;; usrp-users@lists.ettus.com &lt;usrp-us=
ers@lists.ettus.com&gt;<br>
<b>Subject:</b> [USRP-users] Re: N320 LO stability problem</font>
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
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
David, that is great, I'll look into that. I'm working on updating to 4.3.0=
.0 right now, but I'll try your double tune solution first. If this has bee=
n solved, that will save me a lot of time poking around in the LMX code.</d=
iv>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Thanks,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Jim</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> David Raeman &lt;da=
vid@SynopticEngineering.com&gt;<br>
<b>Sent:</b> Wednesday, November 2, 2022 8:49 AM<br>
<b>To:</b> Jim Palladino &lt;jim@gardettoengineering.com&gt;; Marcus D. Lee=
ch &lt;patchvonbraun@gmail.com&gt;; usrp-users@lists.ettus.com &lt;usrp-use=
rs@lists.ettus.com&gt;<br>
<b>Subject:</b> RE: [USRP-users] Re: N320 LO stability problem</font>
<div>&nbsp;</div>
</div>
<style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
@font-face
	{font-family:Consolas}
p.x_x_MsoNormal, li.x_x_MsoNormal, div.x_x_MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
a:link, span.x_x_MsoHyperlink
	{color:blue;
	text-decoration:underline}
pre
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New"}
span.x_x_HTMLPreformattedChar
	{font-family:Consolas}
span.x_x_EmailStyle22
	{font-family:"Calibri",sans-serif;
	color:windowtext}
.x_x_MsoChpDefault
	{font-size:10.0pt}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
-->
</style>
<div lang=3D"EN-US" style=3D"word-wrap:break-word">
<div class=3D"x_x_WordSection1">
<p class=3D"x_x_MsoNormal">Hi Jim,</p>
<p class=3D"x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_MsoNormal">I ran into what sounds like the same issue using=
 N320s operating at nearly the same center frequency. I was able to isolate=
 a fix (some tweaks in the LMX2592 configuration), and my PR was folded int=
o UHD 4.2. I believe another, unrelated
 fix for N320 tuning was also committed in UHD 4.2.0.1. I=92d strongly reco=
mmend trying that release.</p>
<p class=3D"x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_MsoNormal">For more context, my PR <a href=3D"https://urlde=
fense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_EttusResearch_uhd_pull=
_572&amp;d=3DDwMFAg&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp=
;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3DCglWmCZNAv75-zoj2C=
B9dpWj4DRHkMpB8nWcwWdM2mk&amp;s=3Dm4xlgwVRVSi2686M6zZkXh8oqKef561kyaZzbOzO0=
kI&amp;e=3D">
here</a> has details. When I was using UHD 4.1, I discovered that I could b=
ypass this problem by tuning to the same frequency twice in a row. That mig=
ht be worth a try on your end if upgrading UHD is onerous..</p>
<p class=3D"x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_MsoNormal">Cheers,</p>
<p class=3D"x_x_MsoNormal">David</p>
<p class=3D"x_x_MsoNormal">&nbsp;</p>
<div style=3D"border:none; border-left:solid blue 1.5pt; padding:0in 0in 0i=
n 4.0pt">
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0i=
n 0in 0in">
<p class=3D"x_x_MsoNormal"><b>From:</b> Jim Palladino &lt;jim@gardettoengin=
eering.com&gt;
<br>
<b>Sent:</b> Wednesday, November 2, 2022 8:38 AM<br>
<b>To:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;; usrp-users@list=
s.ettus.com<br>
<b>Subject:</b> [USRP-users] Re: N320 LO stability problem</p>
</div>
</div>
<p class=3D"x_x_MsoNormal">&nbsp;</p>
<div>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">He=
llo,</span></p>
</div>
<div>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp;</span></p>
</div>
<div>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Th=
anks for the responses. Yes, I have the same issue with tones off center --=
 we initially noticed the issue with some wide-band modulated waveforms. I =
did just try another flowgraph with
 a tone at 100KHz off of DC and confirmed that the issue does still persist=
.&nbsp;</span></p>
</div>
<div>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp;</span></p>
</div>
<div>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">I'=
ll try to experiment with other UHD versions today to see if that makes a d=
ifference.&nbsp;</span></p>
</div>
<div>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp;</span></p>
</div>
<div>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Th=
anks,</span></p>
</div>
<div>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Ji=
m</span></p>
</div>
<div>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp;</span></p>
</div>
<div class=3D"x_x_MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"x_x_divRplyFwdMsg">
<p class=3D"x_x_MsoNormal"><b><span style=3D"color:black">From:</span></b><=
span style=3D"color:black"> Marcus D. Leech &lt;<a href=3D"mailto:patchvonb=
raun@gmail.com">patchvonbraun@gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, November 2, 2022 8:31 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@l=
ists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Re: N320 LO stability problem</span> </p>
<div>
<p class=3D"x_x_MsoNormal">&nbsp;</p>
</div>
</div>
<div>
<div>
<p class=3D"x_x_MsoNormal">On 02/11/2022 08:11, Jim Palladino wrote:</p>
</div>
<blockquote style=3D"margin-top:5.0pt; margin-bottom:5.0pt">
<div>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">He=
llo,</span></p>
</div>
<div>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp;</span></p>
</div>
<div>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">We=
 have about ten N320s and almost all are exhibiting issues regarding the LO=
 stability. It appears the LO is not locking at certain frequencies, or if =
it does, it barely maintains lock. We
 can see this with either a gnuradio flowgraph consisting of nothing more t=
han a usrp_sink and a constant driving it's input, or using the included UH=
D example &quot;tx_waveforms&quot;. The problem frequency I've been focusin=
g on is 1112MHz. So, the following command
 demonstrates the issue:<br>
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
Any thoughts on this?</span></p>
</div>
<div>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp;</span></p>
</div>
<div>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Th=
anks,</span></p>
</div>
<div>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Ji=
m</span></p>
</div>
<div>
<p class=3D"x_x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp;</span></p>
</div>
<p class=3D"x_x_MsoNormal"><br>
<br>
</p>
<pre>_______________________________________________</pre>
<pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a></pre>
<pre>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com">usrp-users-leave@lists.ettus.com</a></pre>
</blockquote>
<p class=3D"x_x_MsoNormal" style=3D"margin-bottom:12.0pt">Also, if you try =
sending a tone at other than DC (perhaps 10kHz), do you get different resul=
ts?&nbsp; This might just be the<br>
&nbsp; DC-offset removal algorithm producing results that look like lack of=
 synthesizer lock.<br>
<br>
</p>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BYAPR12MB3301FAE1116FDA502367FA27B8399BYAPR12MB3301namp_--

--===============9024944058001019130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9024944058001019130==--
