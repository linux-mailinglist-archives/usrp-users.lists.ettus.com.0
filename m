Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E0296617C70
	for <lists+usrp-users@lfdr.de>; Thu,  3 Nov 2022 13:22:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E26C384256
	for <lists+usrp-users@lfdr.de>; Thu,  3 Nov 2022 08:22:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667478124; bh=LYkh6x3iCAqtIJxxTCz5dKz1QfVcAmTmCH+M6TgAZiE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=KxN8H375tTfUTpEpRHuMMfmUFSQo3qcT5Wq1Nwpf1EfpA8uOiuJ5g2hh+UC9Wrm80
	 zIzyO09gyb/G3XwJjIltnxa3ig7vRg7JaQ4FM/V5UalVmgT3GRdQWBuhpTbSLbJxuB
	 XhMdEYlPXyNAZfE9DXgP+83XmurT0zK97rep+eK7pR6a7YeSmVNscBRSjRwvd6qJoF
	 tL+u9PWHtHMkMxs0VKn1DQY4pSlBqaDUWGiB6cQe04IYlCpMMuxvWPeRwGz27Twg2r
	 wI6+/4matnQdIBZ24EwBi7LdagaBY6LwHnhY3zGGgvvhQTsNiB8Thr4cwc7IeuN49t
	 3nBT0CCkgivCg==
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.183])
	by mm2.emwd.com (Postfix) with ESMTPS id CCC5738423A
	for <usrp-users@lists.ettus.com>; Thu,  3 Nov 2022 08:20:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="F5BG1hls";
	dkim-atps=neutral
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.168])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 550362C0062;
	Thu,  3 Nov 2022 12:20:50 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2105.outbound.protection.outlook.com [104.47.58.105])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 2631E880083;
	Thu,  3 Nov 2022 12:20:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QNERIrCCU2j7IqlCGKHmDKzcjiI1Sk9xFl5bkXcZ21q9+F7NZA6dmXRB6a8YvOyV1RNnGnu76MINH3+f6+DgSrD9Oqky0P/B+I0ngAAuUJ4j3O9MHJX5ThdSU0QKmBRvNp5dMz5iSL46oSI8Yf7em3rGwgXq6GcRkFR7Hz5dLZ14vtUvkxu9TPAHipQqGR7wXKl4zmfpVrsJvrWfeinpR6SKztaVWkG4Dw5M2F/aFx3790xHAmTTemwQzUFUSzG2d3+wLchRaJb2NQxfBBa1xzLcPTCnzd1CGZuBziLIrcfG8Icp3tLtAvritSI/UROJOv+QF5H96uNxbh+FnnlQUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zPkLsNYrAAiri1VZW/hCjGQ9dNCdLiR5vEupxeZVeUw=;
 b=CklIN+qiwPOllSVgMBPxKrY9DOlyz3pqnj9ccKdsu5RerpMbkfMZT8FlGCpJTkjtRrxZoL3tHGR75G55omhyORJFw5MmwiueWBtwY7jOkToNwGIuRMmNLRdhiu2M1s5tZOI9im9thNp9SvTaTNrtt9d2tcNhq6PZMTWg/fkVbq/LRRM5seLu6ij+SSzecadqpFD9OQGOKtYY2qoa6Z5KXXw6KJfEKsX1YBkBuFco9h5JBICCA2CzbH+ll0bHYrsDZMpcnGn8Ld9A0nDtBLHLNtAWaaU0GIOLvL9u8+se6F3+io3kBDCUTwb7WwuE4PmsF5sFSNyem7YgHMRaYTuO3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zPkLsNYrAAiri1VZW/hCjGQ9dNCdLiR5vEupxeZVeUw=;
 b=F5BG1hlsYS6waigtdoaiEmF9KNESPH6P3ZDrCktF6F622Q1OJAxepN9zKnnM7uz+j7MfWrUruQAEnDQ8RQYPBdpS9MiZOOI9WkYZ0J8ymLuS6kxTFiqz2PALHUfaVibO10EtvHPnVGsXcZv0BetU0cf3peSb1s2aL52/6MUsDhM=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by DM6PR12MB4267.namprd12.prod.outlook.com (2603:10b6:5:21e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Thu, 3 Nov
 2022 12:20:47 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7310:a35b:123d:68a3]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7310:a35b:123d:68a3%4]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 12:20:47 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: David Raeman <david@SynopticEngineering.com>, "Marcus D. Leech"
	<patchvonbraun@gmail.com>, "USRP-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: N320 LO stability problem
Thread-Index: 
 AQHY7rAbGMBhLfKBpkKklSXlG+QYJ64rkK2AgAAA9kqAAALFMIAAAbTxgABMEYeAAAnCwIABMiz/
Date: Thu, 3 Nov 2022 12:20:47 +0000
Message-ID: 
 <MN2PR12MB33120A136D20BD1107475750B8389@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <BYAPR12MB33010775AE76FAB552039CF8B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
 <bc238838-4f69-b676-79b7-955751d6a628@gmail.com>
 <BYAPR12MB33013BD6E3BE1D6065E79830B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
 <BN2P110MB1747DA483336FD90E553122AB7399@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
 <BYAPR12MB3301632013DEC60995030EB0B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
 <BYAPR12MB3301FAE1116FDA502367FA27B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
 <BN2P110MB17472E37191FAFE3EA552504B7399@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: 
 <BN2P110MB17472E37191FAFE3EA552504B7399@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR12MB3312:EE_|DM6PR12MB4267:EE_
x-ms-office365-filtering-correlation-id: 48687541-c733-4862-a18d-08dabd95d68b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 TgIEKbUJwr9FWW4SGIjdUHHkG8SP9ji2rMUo8ZKoSdErQ+DkiWPiBijHV2Qkf+xPxVbcejL2X56kz2Sm10llwc2/JfI4iBq0WaZbTLcaO+fE9mgPzFf7rQKkrJMnp4s2El+4hBSo49jhj7lkvMT3wJaw3gfIyegXXIzVwR6JuhfGULf5YyC7SZqGIGr4ibBq+axjLPHjG9SGQ8P2DQA4tWQbMdIqYLseLhMFHUGywaMnR/LLqxSeY7A1524cH1EykA/LeLQwKg7HGEQB68tmuMjaQPNrigzH/Wjqpm6AaeW6UvYZ24Qy0fhERrSAjs8LaUYBDOtFR8bq5DGWwAINb/uhz+zJGrvlYrSuA8ksOJF1j8R6/prO8fLjAEaTozwkBj3rcBIBHCYmNoTf2A2+qkkF3b0CCc4gxKANpQrOi/FDUfgARTWpPsWz4yaJXLhQYBbK5F0GIh1cGMGY2IB8cX2QZP5sPDJ0cJ/E5NnSrA/hozvleScPf2psuhhmQv+eXv1VKk3IN+36962Isun+eED+ZnmqRcrYI71E9l6VC6l61XGJmK7fz7XdEEESNZqkSK5RKr+Q4XeSD9tW8tOMWq8Zuk/C18QAt2K8BGaIi0bcgcuE0uq4aq/mOdaNwCHxbB2Q9ZwvGxpD3I9Xf+VL2GJi1+LFMC4toe0eV8UWuCoOGtt9omFDsGHNTGXSssZJpNhzcRzErOiw8hRgBFzlmHJktksvTSESPagARpvlHPYROM67PW3PMVQhlgvL3Xm+2Zgx7X+C9EA0D1eaHZZxgO0sq9XskTHAIpY6w7jgHFE=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(39830400003)(346002)(376002)(136003)(396003)(366004)(451199015)(33656002)(55016003)(86362001)(122000001)(166002)(38100700002)(38070700005)(316002)(19627405001)(66899015)(53546011)(19627235002)(66556008)(66946007)(6506007)(7696005)(76116006)(26005)(478600001)(71200400001)(110136005)(64756008)(9686003)(8936002)(186003)(83380400001)(52536014)(5660300002)(66446008)(2906002)(41300700001)(66476007)(8676002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?nN7i3yOZ54tGFdv/KgkKA6faVLZevIlDEA7zOUuSYED/3epqIzByUKEH?=
 =?Windows-1252?Q?w8E6bu4b4vHog+UkHVRFW2sqTtsVrW7GaR41f5/CUerjulrv4Yd0vYL1?=
 =?Windows-1252?Q?5dkXWErS4295kyt6I/c0Eq+n2mtX4EjywfH5RpC69JUAb56lrbF/pY9T?=
 =?Windows-1252?Q?OrAXRmTygRvVhm3wyne87X2S1IwfHvoVmmdQ7KKOAN4GaEakT22XINvE?=
 =?Windows-1252?Q?rnP72rnK6V1+SUWUQnBdF19RStdMaNGB3X74ghhsiN9AEEo3+aITGhcH?=
 =?Windows-1252?Q?Vnr0zPOgtX3gj5ntVnsJS4//QSj5TECKeqaijsBvjNcrDeU5WJMNITgg?=
 =?Windows-1252?Q?BpbZuVIACxiNDpL9cKyGNqSJV5ArTnox4ZaXFuTBRIOjMEefMjax+9+7?=
 =?Windows-1252?Q?+SBzNIf9u9uPuanVQ/I1DZS27CjTciH1dyJfh5OTh++5rsvXxoBKul4f?=
 =?Windows-1252?Q?nokMDAhdmBOn7y8D3Wlex4xZGwyXXkfAAZ7kkkWNXtNUaW4ICdGNK6m9?=
 =?Windows-1252?Q?O2DEmOoV6TLjNUHmOfXLP7nGx09+n6vedVLKUWvtd9Xuu8QUPnKpfyyD?=
 =?Windows-1252?Q?O9Ckytm0QuzU5hFH6u4fegcs9bseNbH8yOEBJpX9nwtDt/FFcYXOdnfd?=
 =?Windows-1252?Q?7xClzneTUv49blXMGbW3WgnTFuQw+iURalInwR8ttPJGKStbhAnPmYHL?=
 =?Windows-1252?Q?00tVEi/VzZf4gdOxECq/Y1ymuqPzwTb/un93WPRj1eWESE78oi6O26hp?=
 =?Windows-1252?Q?Ea+n5ZA0aNKdk//mDimcNoYuPk0qRdQv2GPWMhj8Xy2nC9kudZ4dOr6Z?=
 =?Windows-1252?Q?KMt7LpkxgGkVBJOE4En0ZO45A2LYFSqWSB4P4ALTnebk3Gp/PvlBRz3j?=
 =?Windows-1252?Q?6p8qvCOCJFVLl/n4FiYf8zs1BzTDJaO7Del7e28jR+AWdNk89tSZpi3t?=
 =?Windows-1252?Q?MS0ky/+TS3gvZihYH2H+Pi7L+Mt5rjQNbYdJZ+IwrrCdHzSjIViaZRpb?=
 =?Windows-1252?Q?kvqiJCRTQv5qXZ/+lDAzu4uoYHO4Dr0oV/rIHX56EefFu7mo5IBlhmOg?=
 =?Windows-1252?Q?omigauwdKawkVdt4T+FAGj39a0lHu+U2quY1SuoNDz9DQto3w/5areo/?=
 =?Windows-1252?Q?K9/hyMo8jGGLmiPnu6lGYzEzu9uJ88eWIJVt6GMD1nYPgOJE74Doqk6a?=
 =?Windows-1252?Q?y4c6XFA1Dy/qUi6hILZJtbvRutbuDrp5RFjJVgfGqVdybcNorQtfZsjl?=
 =?Windows-1252?Q?1TyL85uzizVdo6VedjcdYb59FdmZbqMmheyWvbWJHl5C0nHGKwwkkHGk?=
 =?Windows-1252?Q?qa/EeaVxrKc7yVaeyU2PGubLeFxeyWdKlLruNJe6oRHv7eO10lLJ4hoA?=
 =?Windows-1252?Q?PJfpC8uxhNQ8Rcabq9jYcjv+9pAXWfkGFzB2tduAeubisQjx/x9Jzq6S?=
 =?Windows-1252?Q?0NnV2oF5PdKJsAgkOxm+OGc2qOI7gnTjeCH0f+eiWq0GRE3jeYVwNpbB?=
 =?Windows-1252?Q?T6/exxlXtUo4bpp0sRsuGTnXoV86yLRaJZI9OEVHvV1qJmDulmK/qEII?=
 =?Windows-1252?Q?RMBiInHLT6xuqA1UszHJ+rgbKL+ars/zHf1Tk5Xqpdvowp56/gDovRdc?=
 =?Windows-1252?Q?XwFaM9t5n0W/tRXgVklW4BSa8MSgtcJxLLHEnGTiTMtafh6Zkho+gd2K?=
 =?Windows-1252?Q?OYD8CaFYuWYlqYNVQ+VW8pTnu0V1SUZza6xOUdF5TiuPze0r2WakWw?=
 =?Windows-1252?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48687541-c733-4862-a18d-08dabd95d68b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2022 12:20:47.2973
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wrf03bp8n1YgGRXPcjZtSpSFUVYRta11joPvjQvNZu6NEf7T/Mc345GPFRypoj1MmdLqgFMq2HI86X4UtbWB/2MX85yCnpndMJNDtS4XdC8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4267
X-MDID: 1667478050-2Po748qgRupU
Message-ID-Hash: DWMVWH7J34Y3WDWX54KENMGMQIHO2YTT
X-Message-ID-Hash: DWMVWH7J34Y3WDWX54KENMGMQIHO2YTT
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 LO stability problem
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LRYRRZ2TEWUQZ2R3J2M67BG4LLBRH7XF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3119187974728834795=="

--===============3119187974728834795==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB33120A136D20BD1107475750B8389MN2PR12MB3312namp_"

--_000_MN2PR12MB33120A136D20BD1107475750B8389MN2PR12MB3312namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Just throwing out there that I did spend a little time playing with reducin=
g charge pump current / gain (via LMX2592 register settings -- cp_idn, cp_i=
up, cp_icoarse). I was able to eliminate the spurs that were bouncing up an=
d down by trading off some phase noise. I'm not going to use those changes =
for now, since changing loop parameters like that would require a lot of te=
sting over frequency, temperature, etc. I only wanted to mention that tweak=
s can potentially be made to help deal with some of these issues.

Thanks,
Jim

________________________________
From: David Raeman <david@SynopticEngineering.com>
Sent: Wednesday, November 2, 2022 2:05 PM
To: Jim Palladino <jim@gardettoengineering.com>; Marcus D. Leech <patchvonb=
raun@gmail.com>; USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: RE: [USRP-users] Re: N320 LO stability problem


Jim, thanks for the feedback and I=92m glad it helped. Spurious phase noise=
 tends to impair performance for our projects as well, though in that case =
just fixing the locking allowed me to move on. My current project has shift=
ed my focus to E320s instead of N320s, but I=92m very interested in followi=
ng any further research/improvements that reduce phase noise on either radi=
o architecture.



Best,

David





From: Jim Palladino <jim@gardettoengineering.com>
Sent: Wednesday, November 2, 2022 1:33 PM
To: David Raeman <david@SynopticEngineering.com>; Marcus D. Leech <patchvon=
braun@gmail.com>; USRP-users@lists.ettus.com
Subject: Re: [USRP-users] Re: N320 LO stability problem



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

From: Jim Palladino <jim@gardettoengineering.com<mailto:jim@gardettoenginee=
ring.com>>
Sent: Wednesday, November 2, 2022 8:52 AM
To: David Raeman <david@SynopticEngineering.com<mailto:david@SynopticEngine=
ering.com>>; Marcus D. Leech <patchvonbraun@gmail.com<mailto:patchvonbraun@=
gmail.com>>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> =
<usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: [USRP-users] Re: N320 LO stability problem



David, that is great, I'll look into that. I'm working on updating to 4.3.0=
.0 right now, but I'll try your double tune solution first. If this has bee=
n solved, that will save me a lot of time poking around in the LMX code.



Thanks,

Jim



________________________________

From: David Raeman <david@SynopticEngineering.com<mailto:david@SynopticEngi=
neering.com>>
Sent: Wednesday, November 2, 2022 8:49 AM
To: Jim Palladino <jim@gardettoengineering.com<mailto:jim@gardettoengineeri=
ng.com>>; Marcus D. Leech <patchvonbraun@gmail.com<mailto:patchvonbraun@gma=
il.com>>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <us=
rp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
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



From: Jim Palladino <jim@gardettoengineering.com<mailto:jim@gardettoenginee=
ring.com>>
Sent: Wednesday, November 2, 2022 8:38 AM
To: Marcus D. Leech <patchvonbraun@gmail.com<mailto:patchvonbraun@gmail.com=
>>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
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

--_000_MN2PR12MB33120A136D20BD1107475750B8389MN2PR12MB3312namp_
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
Just throwing out there that I did spend a little time playing with reducin=
g charge pump current / gain (via LMX2592 register settings -- cp_idn, cp_i=
up, cp_icoarse). I was able to eliminate the spurs that were bouncing up an=
d down by trading off some phase
 noise. I'm not going to use those changes for now, since changing loop par=
ameters like that would require a lot of testing over frequency, temperatur=
e, etc. I only wanted to mention that tweaks can potentially be made to hel=
p deal with some of these issues.</div>
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
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> David Raeman &lt;davi=
d@SynopticEngineering.com&gt;<br>
<b>Sent:</b> Wednesday, November 2, 2022 2:05 PM<br>
<b>To:</b> Jim Palladino &lt;jim@gardettoengineering.com&gt;; Marcus D. Lee=
ch &lt;patchvonbraun@gmail.com&gt;; USRP-users@lists.ettus.com &lt;usrp-use=
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
p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
a:link, span.x_MsoHyperlink
	{color:blue;
	text-decoration:underline}
pre
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New"}
span.x_HTMLPreformattedChar
	{font-family:Consolas}
p.x_xxmsonormal, li.x_xxmsonormal, div.x_xxmsonormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
span.x_EmailStyle27
	{font-family:"Calibri",sans-serif;
	color:windowtext}
.x_MsoChpDefault
	{font-size:10.0pt}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
div.x_WordSection1
	{}
-->
</style>
<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break=
-word">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal">Jim, thanks for the feedback and I=92m glad it hel=
ped. Spurious phase noise tends to impair performance for our projects as w=
ell, though in that case just fixing the locking allowed me to move on. My =
current project has shifted my focus
 to E320s instead of N320s, but I=92m very interested in following any furt=
her research/improvements that reduce phase noise on either radio architect=
ure.</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">Best,</p>
<p class=3D"x_MsoNormal">David</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<div style=3D"border:none; border-left:solid blue 1.5pt; padding:0in 0in 0i=
n 4.0pt">
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0i=
n 0in 0in">
<p class=3D"x_MsoNormal"><b>From:</b> Jim Palladino &lt;jim@gardettoenginee=
ring.com&gt; <br>
<b>Sent:</b> Wednesday, November 2, 2022 1:33 PM<br>
<b>To:</b> David Raeman &lt;david@SynopticEngineering.com&gt;; Marcus D. Le=
ech &lt;patchvonbraun@gmail.com&gt;; USRP-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Re: N320 LO stability problem</p>
</div>
</div>
<p class=3D"x_MsoNormal">&nbsp;</p>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">I en=
ded up manually applying David's &quot;patch&quot; to UHD 4.1.0.5 (manually=
 edited the files and rebuilt UHD). This did fix the issue with the N320's =
not locking based off of the limited tests I've
 performed so far. Thanks for pointing to that, David.</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p;</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Howe=
ver, I think there is still more not quite right. Even though I seem to con=
sistently achieve lock at these &quot;trouble frequencies&quot;, I still se=
e spurs increasing and decreasing in power like
 I described in the first email. Also, I occasionally see what looks like q=
uick jumps in overall phase noise. David, I saw you made a comment in the o=
riginal UHD issue that you posted regarding not using the oscillator double=
r and multiplier at the same time.
 If/when I have time, I might look more at this and other LMX settings. For=
 now, the fact that the synthesizer seems to lock consistently will allow u=
s to keep moving forward.</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p;</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Also=
, I did briefly update one of the N320s to UHD 4.3.0.0 and saw the exact sa=
me overall behavior.</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p;</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Than=
ks,</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Jim<=
/span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p;</span></p>
</div>
<div class=3D"x_MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"x_divRplyFwdMsg">
<p class=3D"x_MsoNormal"><b><span style=3D"color:black">From:</span></b><sp=
an style=3D"color:black"> Jim Palladino &lt;<a href=3D"mailto:jim@gardettoe=
ngineering.com">jim@gardettoengineering.com</a>&gt;<br>
<b>Sent:</b> Wednesday, November 2, 2022 8:52 AM<br>
<b>To:</b> David Raeman &lt;<a href=3D"mailto:david@SynopticEngineering.com=
">david@SynopticEngineering.com</a>&gt;; Marcus D. Leech &lt;<a href=3D"mai=
lto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Re: N320 LO stability problem</span> </p>
<div>
<p class=3D"x_MsoNormal">&nbsp;</p>
</div>
</div>
<div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Davi=
d, that is great, I'll look into that. I'm working on updating to 4.3.0.0 r=
ight now, but I'll try your double tune solution first. If this has been so=
lved, that will save me a lot of time
 poking around in the LMX code.</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p;</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Than=
ks,</span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">Jim<=
/span></p>
</div>
<div>
<p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt; color:black">&nbs=
p;</span></p>
</div>
<div class=3D"x_MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"x_x_divRplyFwdMsg">
<p class=3D"x_MsoNormal"><b><span style=3D"color:black">From:</span></b><sp=
an style=3D"color:black"> David Raeman &lt;<a href=3D"mailto:david@Synoptic=
Engineering.com">david@SynopticEngineering.com</a>&gt;<br>
<b>Sent:</b> Wednesday, November 2, 2022 8:49 AM<br>
<b>To:</b> Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com"=
>jim@gardettoengineering.com</a>&gt;; Marcus D. Leech &lt;<a href=3D"mailto=
:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt;<br>
<b>Subject:</b> RE: [USRP-users] Re: N320 LO stability problem</span> </p>
<div>
<p class=3D"x_MsoNormal">&nbsp;</p>
</div>
</div>
<div>
<div>
<p class=3D"x_xxmsonormal">Hi Jim,</p>
<p class=3D"x_xxmsonormal">&nbsp;</p>
<p class=3D"x_xxmsonormal">I ran into what sounds like the same issue using=
 N320s operating at nearly the same center frequency. I was able to isolate=
 a fix (some tweaks in the LMX2592 configuration), and my PR was folded int=
o UHD 4.2. I believe another, unrelated
 fix for N320 tuning was also committed in UHD 4.2.0.1. I=92d strongly reco=
mmend trying that release.</p>
<p class=3D"x_xxmsonormal">&nbsp;</p>
<p class=3D"x_xxmsonormal">For more context, my PR <a href=3D"https://urlde=
fense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_EttusResearch_uhd_pull=
_572&amp;d=3DDwMFAg&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp=
;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3DCglWmCZNAv75-zoj2C=
B9dpWj4DRHkMpB8nWcwWdM2mk&amp;s=3Dm4xlgwVRVSi2686M6zZkXh8oqKef561kyaZzbOzO0=
kI&amp;e=3D">
here</a> has details. When I was using UHD 4.1, I discovered that I could b=
ypass this problem by tuning to the same frequency twice in a row. That mig=
ht be worth a try on your end if upgrading UHD is onerous..</p>
<p class=3D"x_xxmsonormal">&nbsp;</p>
<p class=3D"x_xxmsonormal">Cheers,</p>
<p class=3D"x_xxmsonormal">David</p>
<p class=3D"x_xxmsonormal">&nbsp;</p>
<div style=3D"border:none; border-left:solid blue 1.5pt; padding:0in 0in 0i=
n 4.0pt">
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0i=
n 0in 0in">
<p class=3D"x_xxmsonormal"><b>From:</b> Jim Palladino &lt;<a href=3D"mailto=
:jim@gardettoengineering.com">jim@gardettoengineering.com</a>&gt;
<br>
<b>Sent:</b> Wednesday, November 2, 2022 8:38 AM<br>
<b>To:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">p=
atchvonbraun@gmail.com</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
><br>
<b>Subject:</b> [USRP-users] Re: N320 LO stability problem</p>
</div>
</div>
<p class=3D"x_xxmsonormal">&nbsp;</p>
<div>
<p class=3D"x_xxmsonormal"><span style=3D"font-size:12.0pt; color:black">He=
llo,</span></p>
</div>
<div>
<p class=3D"x_xxmsonormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp;</span></p>
</div>
<div>
<p class=3D"x_xxmsonormal"><span style=3D"font-size:12.0pt; color:black">Th=
anks for the responses. Yes, I have the same issue with tones off center --=
 we initially noticed the issue with some wide-band modulated waveforms. I =
did just try another flowgraph with
 a tone at 100KHz off of DC and confirmed that the issue does still persist=
.&nbsp;</span></p>
</div>
<div>
<p class=3D"x_xxmsonormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp;</span></p>
</div>
<div>
<p class=3D"x_xxmsonormal"><span style=3D"font-size:12.0pt; color:black">I'=
ll try to experiment with other UHD versions today to see if that makes a d=
ifference.&nbsp;</span></p>
</div>
<div>
<p class=3D"x_xxmsonormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp;</span></p>
</div>
<div>
<p class=3D"x_xxmsonormal"><span style=3D"font-size:12.0pt; color:black">Th=
anks,</span></p>
</div>
<div>
<p class=3D"x_xxmsonormal"><span style=3D"font-size:12.0pt; color:black">Ji=
m</span></p>
</div>
<div>
<p class=3D"x_xxmsonormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp;</span></p>
</div>
<div class=3D"x_MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"x_x_x_divRplyFwdMsg">
<p class=3D"x_xxmsonormal"><b><span style=3D"color:black">From:</span></b><=
span style=3D"color:black"> Marcus D. Leech &lt;<a href=3D"mailto:patchvonb=
raun@gmail.com">patchvonbraun@gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, November 2, 2022 8:31 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@l=
ists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Re: N320 LO stability problem</span> </p>
<div>
<p class=3D"x_xxmsonormal">&nbsp;</p>
</div>
</div>
<div>
<div>
<p class=3D"x_xxmsonormal">On 02/11/2022 08:11, Jim Palladino wrote:</p>
</div>
<blockquote style=3D"margin-top:5.0pt; margin-bottom:5.0pt">
<div>
<p class=3D"x_xxmsonormal"><span style=3D"font-size:12.0pt; color:black">He=
llo,</span></p>
</div>
<div>
<p class=3D"x_xxmsonormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp;</span></p>
</div>
<div>
<p class=3D"x_xxmsonormal"><span style=3D"font-size:12.0pt; color:black">We=
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
<p class=3D"x_xxmsonormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp;</span></p>
</div>
<div>
<p class=3D"x_xxmsonormal"><span style=3D"font-size:12.0pt; color:black">Th=
anks,</span></p>
</div>
<div>
<p class=3D"x_xxmsonormal"><span style=3D"font-size:12.0pt; color:black">Ji=
m</span></p>
</div>
<div>
<p class=3D"x_xxmsonormal"><span style=3D"font-size:12.0pt; color:black">&n=
bsp;</span></p>
</div>
<p class=3D"x_xxmsonormal" style=3D"margin-bottom:12.0pt">&nbsp;</p>
<pre>_______________________________________________</pre>
<pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a></pre>
<pre>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com">usrp-users-leave@lists.ettus.com</a></pre>
</blockquote>
<p class=3D"x_xxmsonormal" style=3D"margin-bottom:12.0pt">Also, if you try =
sending a tone at other than DC (perhaps 10kHz), do you get different resul=
ts?&nbsp; This might just be the<br>
&nbsp; DC-offset removal algorithm producing results that look like lack of=
 synthesizer lock.</p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB33120A136D20BD1107475750B8389MN2PR12MB3312namp_--

--===============3119187974728834795==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3119187974728834795==--
