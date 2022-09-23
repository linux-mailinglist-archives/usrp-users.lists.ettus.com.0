Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDA05E7EFA
	for <lists+usrp-users@lfdr.de>; Fri, 23 Sep 2022 17:51:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E1F12384239
	for <lists+usrp-users@lfdr.de>; Fri, 23 Sep 2022 11:51:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663948310; bh=4L5DsWhVvPe/y8yI2DWHjaI37h59nzmnd3f/gBX1M/4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=sykx4eLo3muHfbQhNXds7MbJp42lJVl3ffZ0W39TsXP8x7tBli85Y9bHKrIq/bXEO
	 H29vvrvay/0Xlq6lOaUC2OVyGgQwpcgS4Nb2n6pl28YWxBUsMKkHldHidysbUM83wR
	 rBVYwR9ywZ6OkTg6rBXjFAmMhgBX9uAN6bSEhEndb6wfuRNL8DaafxsEWgZBPYC/pd
	 qNHS1mBmF8UZeUhyl0tR5mM6SkMOuNbp3ZAeCl7upWcF3mmvNlHq8Z7214QA1TXwCq
	 jXQaOkx/ZS9TD6yfcn7CfrQ+/Bl/4gZGcpHQOztMRE4eBkUBteI/WAYk+jXk1KGecC
	 D5wQpTPKYcB2A==
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.164])
	by mm2.emwd.com (Postfix) with ESMTPS id A9C17383236
	for <usrp-users@lists.ettus.com>; Fri, 23 Sep 2022 11:50:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="KOZrEU9w";
	dkim-atps=neutral
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.168])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 170D42C006F
	for <usrp-users@lists.ettus.com>; Fri, 23 Sep 2022 15:50:39 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11lp2171.outbound.protection.outlook.com [104.47.56.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id DF7B688008B
	for <usrp-users@lists.ettus.com>; Fri, 23 Sep 2022 15:50:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ibzQyARzhqAtRjEwyhuQeLtH/XGRhYkDiVN4vHdFi70HI2YWr/ScQ8ErQVt3WreWPMKZ8YWTmNtSD042hZTTnY4dbAzD+BEyVwx5JC3JilPMKyUXvB4mkec+DsPxI7qmHihMq4cFT+9fE17V9Og92tu6TQR9yigc/djYg6BPFIlYYay4wzzppvFK1lfz448FwwF8156pC9ucMUO6wgj1bxveMZnTxMc776DX3yCGn1tVfpFYb/VDHbbF8nNcxCgkXDdI02hVtIH1u0/F0qWJ2eemdTeR5tQrK1+D/cYpL0Kz/Nl3LxOjzjJuGAdjXSa1uMJuW4rj4VkvkOEf2dmT6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FO0sKrZbW2G75DASVqqmkiPZKIUCnAwm+I3oe7kOsWM=;
 b=FLJ20Zi+Ns8kU8o++7KAEe4Pa1m9SD0T+HpJWKUdw5Y2koiHQrXED0jnaf2nFWys81HKSe5qFjui5Iq+Y40VNsmM21shvywW3qX1BSd9YXiUT49jlNBZuLpkPfIBi4DFMdJB8vWF5A6Jgs8qYXzhnSNAASWkyWdxvpOJ35kKae6d8agG2qKQGS6P94QKDGv7zYqKvbE81/rTxYNIMBHJEJ7Gk8VilKnEeZ+4VIER6ryj7g6L8uOrKhrspI7ZUOy13i9PNJtbgHudgEQJCgskbVkGzgY3kXlChv82ATQ0Yyd5+XLBGBBdTYjc0ui4LAjKNR2IlIMnQ2EcD1S1kuZAWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FO0sKrZbW2G75DASVqqmkiPZKIUCnAwm+I3oe7kOsWM=;
 b=KOZrEU9wMiS5B2PtFEKxZMUkpUiy454xA9HeUvvJHMOo+nCIjDcwPrYgpQHLftwlojHBl7V2O7TTFoVTHkF/f0lsLe/zNzsS4mDeZSiEtv/XauPPaDsKXwpqy92YfMeGIuMV1cYvRd6iC7nX/N7mJUpuQ5XzL0d9Lk8y47VhxsE=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MW4PR12MB7437.namprd12.prod.outlook.com (2603:10b6:303:223::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.19; Fri, 23 Sep
 2022 15:50:37 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::8b48:e6eb:2666:7c32]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::8b48:e6eb:2666:7c32%5]) with mapi id 15.20.5654.020; Fri, 23 Sep 2022
 15:50:36 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: Jason Matusiak <jason@gardettoengineering.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: N320 sample rate change locking-up
Thread-Index: AQHYxsubYh5EsidP5kOmYSJ+c/UkoK3tLNeC
Date: Fri, 23 Sep 2022 15:50:36 +0000
Message-ID: 
 <MN2PR12MB331250CF83D30EF32CA248CBB8519@MN2PR12MB3312.namprd12.prod.outlook.com>
References: c2cdd76b-629a-93f2-dd98-3559fe4697b4@gmail.com
 <4o9FjRTD5uVD9qQuuPAzwpsL0qJb6wIJwGwNJmk4A@lists.ettus.com>
In-Reply-To: <4o9FjRTD5uVD9qQuuPAzwpsL0qJb6wIJwGwNJmk4A@lists.ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR12MB3312:EE_|MW4PR12MB7437:EE_
x-ms-office365-filtering-correlation-id: 8a701f8e-81e2-48e5-7392-08da9d7b5b7a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 xDJnS76lrTvkXoV0OyxNAM3clO/6Xx/Igsy3KJYxGgekBRBzCom0HtyAIE/UWifFY4B/5RT7m3XVTWnQvRgUL7ADSJiMCC/OJ7TzfgP4+gI9jm9WVAo/fBRKJ4nzo3OEIQLoLZqOzxjoVIcuemUuO5TeYLlDPxjKdcFFxlX6ciCOccgmqbys0iH0tG2PCVt860ImaC4gCdgNM5ODyxjLl6WTyjLega+GnjCj4tyFs9frVuIJk6cf3xPCE/JFVlf+E7th3jbGQxlHM2Y+UfNWUw4o7sxwL7Us1uyeZCdwYam99+N4fCTlMwFeLvDCfJ4DhW9jYhoH3JmZ/BEYehPriolKDEUt62mCgrEovQgi9PebamM26n2j0fdnQzPBEsRCTh+yuJ7SbMNjBYNr5Vhwukv1I566sPdMJS0tvyfmoLkRx8fLxDYyLn/qkdFni8cFQeFckhD4roJcK/ODLUMW2yVkWnZ3MEPiyPmIVLVABNmf4LH4Te0vyTlrjTam8Y6b7mQNTQU9La4kOuu4QjXRXfg1wb1pNEZFsuvO/8LEiNLjXY20bGgerYbMcrVryQFpqSl9tdyNShpZ7th7dV8Ef/cAgPDklIWe0rcLuaXtGtTY7Ali+Faawyarxkc14uw9TwQYbuVX4ciUiNMCUXZ4hlt78ZaMwtfxdGoWZd02I68+alK147P2x+iKv6RIbkzdL0eoCzwX7ott8VT89dA/e05+0OXjcGW5Xo2KVt7hQVJLmmK2EMAG0A93F2OVGHjYI62Astv6P8PU+AhRNArCow==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(376002)(346002)(366004)(39830400003)(396003)(136003)(451199015)(83380400001)(19627405001)(33656002)(8676002)(186003)(71200400001)(110136005)(9686003)(53546011)(7696005)(6506007)(66556008)(86362001)(52536014)(66476007)(316002)(26005)(5660300002)(66446008)(38100700002)(64756008)(76116006)(2906002)(122000001)(66946007)(41300700001)(38070700005)(8936002)(55016003)(478600001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?Lzlaw45mJ2Q5/4Y9AE2GGIG9k4czSHFNziWxgDlw2nIc2yLXOeyRwdB8GkXl?=
 =?us-ascii?Q?EbTPPcB+79WH9xd+wa3kdc1QPem/MfckJ32gPDCLK0v/g8jYZ1N+6Zm34iJD?=
 =?us-ascii?Q?8FBrojdpDfVbkqSGsAdeGvP0U3WtbCU23A+z+aU+HkfYhdiaE3i7e80pZuMB?=
 =?us-ascii?Q?SZo6DSDzBZ39RZmshFHyFu2EWkGB3X+3f8lNxym3CX9KEZZuNVj84igHsL9K?=
 =?us-ascii?Q?Pz4L2lFCEIna43vcWJnudAEeyglZAQAMJSVEeEAWqnDXz76go5pl+1xWu4Nq?=
 =?us-ascii?Q?XbJhxugnh1d1nJcXVnhSzwzbfrYIHMSOuzebwN94uojUL2FxrVvcR1DSOC5w?=
 =?us-ascii?Q?ywrM4mVy/XL72VuHdutqfpVV/umvDsUr7IecIn9PZGLsPQZTY/Ey+O29Xoyc?=
 =?us-ascii?Q?5vTMIvHSduqizF95YbxnoG34v1ZxebDUgxwREp3KLgPRvzchaLLbioMesomf?=
 =?us-ascii?Q?sMYzlCnKu2Iz1FRqtfo3tcMCVMUedsvtrWX64S7jrVX1wXFCqzdNx9W5KQg+?=
 =?us-ascii?Q?PFbIHSiv+HWDm7RPTk54u3dpyI+NJbXbuDlPxcuWowP89SNcGSe7t7NTlQWK?=
 =?us-ascii?Q?C4vwYpRADAUB86FL2fnI4gpFz62SmJAohVeWPdfTc+4OUrfkoW9o2MsLnktI?=
 =?us-ascii?Q?KHVc3V/yIQtssplQhCf5UNyz6XJUWbJUh35Xt81+JjhM26mahWXvOTN/hCtX?=
 =?us-ascii?Q?uL9Zn5cXw6g6fzS2OHvjs+T+NW1dPcyJfMxANxM0nCqjvqXIKhYZ5Pv/hyAU?=
 =?us-ascii?Q?KCej0uM2Ev9AfdCUxLbORfR7fDsLI8fVHANozpaPDwWfKQgyfbYek6dL5Gjs?=
 =?us-ascii?Q?7PKJMQG58gD/cYGROk1le+UBJYIb6tpgreThb/06Fh+MX8wImIMFJsSmlPJo?=
 =?us-ascii?Q?ZDhspVeeCGRZ9Cjpkfoe1EOqXMuKxTfuuHhqecIwqD1iJzC2zsJbl80v2yxG?=
 =?us-ascii?Q?/CtD21bVRxmD2WlEJRnFVjpNEHp1/GNE5zO20QyumTeEivnx18PgTlviR+5+?=
 =?us-ascii?Q?nSFWe5NCD8GAzgNM6SIAsxu8djjb6cTECT7aKLWkOyb2OMihqKFD22Cao7qK?=
 =?us-ascii?Q?ga9Aj5p9kZPeDDa5PnQ/r9xUOf4qMBBMzIgRB3U+YrzQw0gfoTVgdyACRIuC?=
 =?us-ascii?Q?bHle8CgMvnJ1C/erorfOM865kwMfNN0UOsi8Qhfv2miuWXqq8CQ1uj1D7LGf?=
 =?us-ascii?Q?16++uBVyFbk44fzozBZt84zt21kxks1/GJqd9FNeLMZke9QJtI1uN/rLt3HF?=
 =?us-ascii?Q?zwDQPlciGvOslA/lwTNSGlQ/4oC2uesGH9UC0kjJLst7O+AiN8XTdZ7ONR6F?=
 =?us-ascii?Q?AQiVIsMj1UZaUOfSJBEm2vIVexRroqVPfPAed6LigYCNaWh2wEqj4r/rJ+tB?=
 =?us-ascii?Q?+4VSCJ6/qcaN05XZ6mL4fciqNguiI6qDnD+V4EFIaAM1Epzd2MnxP9xFbgN4?=
 =?us-ascii?Q?S8eI93BVY0uSqTmgi/pgy7+/y37n9vc3fp4p/PXT3SNu+5J8SwKSuDAeY07l?=
 =?us-ascii?Q?DoUKrvtEAPv3LIFo0o1E7oW8a4JwGo7mY7jFrmnpTo4q4TNAnoW1wiNLAJLA?=
 =?us-ascii?Q?eKVExYzoKtHqJdIW7jfvWnee92zrsH+0yo8nY5eWbUmJ/vLal56V/o/yNuXv?=
 =?us-ascii?Q?bQ=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a701f8e-81e2-48e5-7392-08da9d7b5b7a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2022 15:50:36.7011
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fyZpy1nQ1Xfc9nrT/Y12AsFi9PgOonWWQBD7rLbX5URxJTRb1lVwI80ucxZJN9exOUcJq9W/2GyclqsnIV1rvWb9djt92Hi8NHxG4vQBuAc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7437
X-MDID: 1663948239-srMhO_TH-Ezz
Message-ID-Hash: 6AXBDEGKANNR76KVUARQGQRQ7MXGQYAD
X-Message-ID-Hash: 6AXBDEGKANNR76KVUARQGQRQ7MXGQYAD
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 sample rate change locking-up
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ANN73KAOLU5VQN2EAZYRQAANX2QJNILG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4723701976035367445=="

--===============4723701976035367445==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB331250CF83D30EF32CA248CBB8519MN2PR12MB3312namp_"

--_000_MN2PR12MB331250CF83D30EF32CA248CBB8519MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I spent a fair amount of time trying to debug this. I wrote a custom app us=
ing the RFNoC API and tried continuously changing the sample rate (while st=
reaming). I mostly bounced back and forth between 100Msps and 200Msps, with=
 a master clock of 200MHz. To do this, I would change the sample rate like =
this:

      ddc_ctrl->set_output_rate(200000000, ACTIVE_CHAN);

I could always get it stop working after a certain amount of time. Dependin=
g on my setup (adding sleeps in different parts of my or UHDs code), that t=
ime could vary from seconds to more than a day. When it stops working, UHD =
returns:

Error: RfnocError: OpTimeout: Control operation timed out waiting for space=
 in command buffer

I tried issuing other commands to the DDC controller, like changing frequen=
cy. I could loop through those and other commands without ever running into=
 this issue. It seems specific to the set_output_rate command. Adding time =
delays into the infinite loop, doesn't seem to help -- I still run into the=
 issue, eventually. I debugged enough to find that where things get "stuck"=
 is in the set_decim() method in ddc_block_control.cpp. Part of the code lo=
oks like:

    void set_decim(int decim, const size_t chan)
    {
        RFNOC_LOG_TRACE("Set decim to " << decim);
        // Step 1: Calculate number of halfbands
        uint32_t hb_enable =3D 0;
        uint32_t cic_decim =3D decim;
        while ((cic_decim % 2 =3D=3D 0) and hb_enable < _num_halfbands) {
            hb_enable++;
            cic_decim /=3D 2;
        }
        // Step 2: Make sure we can handle the rest with the CIC
        UHD_ASSERT_THROW(hb_enable <=3D _num_halfbands);
        UHD_ASSERT_THROW(cic_decim > 0 and cic_decim <=3D _cic_max_decim);
        const uint32_t decim_word =3D (hb_enable << 8) | cic_decim;
        _ddc_reg_iface.poke32(SR_DECIM_ADDR, decim_word, chan);        // R=
ate change =3D M/N
        _ddc_reg_iface.poke32(SR_N_ADDR, decim, chan);
        _ddc_reg_iface.poke32(SR_M_ADDR, 1, chan);
        // Configure time increment in ticks per M output samples
        _ddc_reg_iface.poke32(SR_TIME_INCR_ADDR,
            uint32_t(get_tick_rate()/get_output_rate(chan)), chan);

You can see a series of register pokes. I added debug statements in between=
 the pokes and found that the command buffer error occurs almost always aft=
er:

     _ddc_reg_iface.poke32(SR_N_ADDR, decim, chan);

Meaning that line will return, and I can see the debug statement I print ou=
t after that line. So, it seems there isn't room for the SR_M poke. Every o=
nce in a while, it would fail right after the SR_M poke instead, but that i=
s rare. Adding sleeps in the right place (like after the SR_N poke) never s=
eemed to fix the problem, although putting a 1s sleep after the SR_N poke g=
reatly extended the time before failure.

In ctrlport_endpoint.cpp, I tried changing DEFAULT_TIMEOUT from 1.0 to 10.0=
. The same issue still occurred, but I would see the code get stuck right a=
fter the SR_N poke and then just sit there for 10 seconds before outputting=
 the "command buffer full" error.

In the FPGA, I tried a few things like increasing some buffer sizes, watchi=
ng some of the DDC related signals with an ILA, etc, but didn't make any no=
table progress. I don't have time to go too far with that right now.

Anyhow, it looks like, every once in a while, a DDC decimation change puts =
something in a state where it stops working (no more data samples are strea=
ming) and the command buffer is full.

My setup is identical to Jason's from the original post (UHD 4.1.0.2, Ubunt=
u 18.04, N320 with XG load.

If anyone has any more thoughts after reading this, it would be appreciated=
.

Thanks,
Jim

________________________________
From: jason@gardettoengineering.com <jason@gardettoengineering.com>
Sent: Monday, September 12, 2022 1:14 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: N320 sample rate change locking-up


OK, thanks. I was hoping that you were on to something. Thanks.

--_000_MN2PR12MB331250CF83D30EF32CA248CBB8519MN2PR12MB3312namp_
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
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I spent a fair amount of time trying to debug this. I wrote a custom app us=
ing the RFNoC API and tried continuously changing the sample rate (while st=
reaming). I mostly bounced back and forth between 100Msps and 200Msps, with=
 a master clock of 200MHz. To do
 this, I would change the sample rate like this:<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
&nbsp; &nbsp; &nbsp; ddc_ctrl-&gt;set_output_rate(200000000, ACTIVE_CHAN);<=
/div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I could always get it stop working after a certain amount of time. Dependin=
g on my setup (adding sleeps in different parts of my or UHDs code), that t=
ime could vary from seconds to more than a day. When it stops working, UHD =
returns:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Error: RfnocError: OpTimeout: Control operation timed out waiting for space=
 in command buffer<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I tried issuing other commands to the DDC controller, like changing frequen=
cy. I could loop through those and other commands without ever running into=
 this issue. It seems specific to the set_output_rate command. Adding time =
delays into the infinite loop, doesn't
 seem to help -- I still run into the issue, eventually. I debugged enough =
to find that where things get &quot;stuck&quot; is in the set_decim() metho=
d in ddc_block_control.cpp. Part of the code looks like:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
&nbsp; &nbsp; void set_decim(int decim, const size_t chan)
<div>&nbsp; &nbsp; {</div>
&nbsp; &nbsp; &nbsp; &nbsp; RFNOC_LOG_TRACE(&quot;Set decim to &quot; &lt;&=
lt; decim);
<div>&nbsp; &nbsp; &nbsp; &nbsp; // Step 1: Calculate number of halfbands</=
div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; uint32_t hb_enable =3D 0;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; uint32_t cic_decim =3D decim;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; while ((cic_decim % 2 =3D=3D 0) and hb_ena=
ble &lt; _num_halfbands) {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; hb_enable++;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cic_decim /=3D 2;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; }</div>
&nbsp; &nbsp; &nbsp; &nbsp; // Step 2: Make sure we can handle the rest wit=
h the CIC
<div>&nbsp; &nbsp; &nbsp; &nbsp; UHD_ASSERT_THROW(hb_enable &lt;=3D _num_ha=
lfbands);</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; UHD_ASSERT_THROW(cic_decim &gt; 0 and cic_=
decim &lt;=3D _cic_max_decim);</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; const uint32_t decim_word =3D (hb_enable &=
lt;&lt; 8) | cic_decim;</div>
&nbsp; &nbsp; &nbsp; &nbsp; _ddc_reg_iface.poke32(SR_DECIM_ADDR, decim_word=
, chan);&nbsp; &nbsp; &nbsp; &nbsp; // Rate change =3D M/N
<div>&nbsp; &nbsp; &nbsp; &nbsp; _ddc_reg_iface.poke32(SR_N_ADDR, decim, ch=
an);</div>
&nbsp; &nbsp; &nbsp; &nbsp; _ddc_reg_iface.poke32(SR_M_ADDR, 1, chan);
<div>&nbsp; &nbsp; &nbsp; &nbsp; // Configure time increment in ticks per M=
 output samples</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; _ddc_reg_iface.poke32(SR_TIME_INCR_ADDR,</=
div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; uint32_t(get_tick_rate()/get=
_output_rate(chan)), chan);</div>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
You can see a series of register pokes. I added debug statements in between=
 the pokes and found that the command buffer error occurs almost always aft=
er:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span>&nbsp; &nbsp;&nbsp; _ddc_reg_iface.poke32(SR_N_ADDR, decim, chan);</s=
pan><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Meaning that line will return, and I can see the debug statement I print ou=
t after that line. So, it seems there isn't room for the SR_M poke. Every o=
nce in a while, it would fail right after the SR_M poke instead, but that i=
s rare. Adding sleeps in the right
 place (like after the SR_N poke) never seemed to fix the problem, although=
 putting a 1s sleep after the SR_N poke greatly extended the time before fa=
ilure.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
In ctrlport_endpoint.cpp, I tried changing DEFAULT_TIMEOUT from 1.0 to 10.0=
. The same issue still occurred, but I would see the code get stuck right a=
fter the SR_N poke and then just sit there for 10 seconds before outputting=
 the &quot;command buffer full&quot; error.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
In the FPGA, I tried a few things like increasing some buffer sizes, watchi=
ng some of the DDC related signals with an ILA, etc, but didn't make any no=
table progress. I don't have time to go too far with that right now.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Anyhow, it looks like, every once in a while, a DDC decimation change puts =
something in a state where it stops working (no more data samples are strea=
ming) and the command buffer is full.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
My setup is identical to Jason's from the original post (UHD 4.1.0.2, Ubunt=
u 18.04, N320 with XG load.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
If anyone has any more thoughts after reading this, it would be appreciated=
.</div>
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
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> jason@gardettoenginee=
ring.com &lt;jason@gardettoengineering.com&gt;<br>
<b>Sent:</b> Monday, September 12, 2022 1:14 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: N320 sample rate change locking-up</font>
<div>&nbsp;</div>
</div>
<div>
<p>OK, thanks. I was hoping that you were on to something. Thanks.</p>
</div>
</body>
</html>

--_000_MN2PR12MB331250CF83D30EF32CA248CBB8519MN2PR12MB3312namp_--

--===============4723701976035367445==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4723701976035367445==--
