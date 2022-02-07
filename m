Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 938C84AC2CD
	for <lists+usrp-users@lfdr.de>; Mon,  7 Feb 2022 16:19:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D435B3851B9
	for <lists+usrp-users@lfdr.de>; Mon,  7 Feb 2022 10:19:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="AOswg0fw";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.183])
	by mm2.emwd.com (Postfix) with ESMTPS id 51C1C38438E
	for <usrp-users@lists.ettus.com>; Mon,  7 Feb 2022 10:18:19 -0500 (EST)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.174])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 9F85028007E;
	Mon,  7 Feb 2022 15:18:17 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2108.outbound.protection.outlook.com [104.47.70.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 7FC957C0066;
	Mon,  7 Feb 2022 15:18:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZXk1cqocdJ7fQbLCamBgRXgnXVMQQuIThzgouSlyWAMf15dB7Qwsb7wfJn6etXkkYQNZBVZQgXqfH/ldeDRcXvLfYlYiO/3dOX5+bQ2mtiXQ2W1IeKt3sFSA1Ws4mG+Xh62T8Rv1AaPZ/CUcekz9+cTnt8N8XEHs6qm+KabZZz/ye7uuRpDCCmSpXDJbOCb9Qhv0ANqTAfdgG9YReDtwzVvpBgSqA7f607s+N1Ulx5qT6hQWw6z4GzVlLqlGRdwiij6CqOzIeWqPwROaJMRqJTb+P+E2kv6F4OA4J/k3QWjNqDIss5pe3yO7lBWZOX/9QMkJU6YwZdlFT7sg/lCWHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hZP83D/YHf3Y5YSxQnthkTnAuZBiAnjAyr5DdWQtrAg=;
 b=f4WeqlI8HZ3btIqTyUv8deGfci3MrNn7eE4aOKM/nPBW/7V+nu1/X5t7NsYqJbl/DK3cpzoDEkuQsyuGxxptaSbF5pjzVU5nE6Z/OD4IwHDQSXbd4rSKyoWNxUSCzPu+DMrBK1T2+3cV1G6B9SlsG+x61dwxTkQzWtPhKYbiIvO0pdjbyAFe/aPJnPvv1HMqdRNBv5P4urw/E632NCCtMQXkRY+o6HuWLE2iyjf8WOEiCsY5b2dQXOxglzCTL11o/NlBduQMMnZrJxBSoKcbZCCqUVECWleO3ojRaY2B8X4uRi7zSLMntOi2mRTtkaB6pnbQxCV/6aniHBlsP8PjLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hZP83D/YHf3Y5YSxQnthkTnAuZBiAnjAyr5DdWQtrAg=;
 b=AOswg0fwgYNzhS5M7EE/YHif28y8TGZcggpvMTuW+2cn74Sjl7PkNbytYCP9a1kJfyk/dO9/y3oMKsxrEEYWhAq0IxPC4V0rTmpm1w/aBiNbpGdjuY5A4L3nPYU3Psn41P3DADS32prKxqcMWhSoFMsGbzC60SdBT/q4TS9f8Nk=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by DM6PR12MB4652.namprd12.prod.outlook.com (2603:10b6:5:1d6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Mon, 7 Feb
 2022 15:18:15 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf%6]) with mapi id 15.20.4951.019; Mon, 7 Feb 2022
 15:18:14 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: Martin Braun <martin.braun@ettus.com>
Thread-Topic: [USRP-users] RX Frequency Tuning Questions
Thread-Index: AQHYGEil3QYHPEI5skSEu41rPZVyw6yH82qAgABDB40=
Date: Mon, 7 Feb 2022 15:18:14 +0000
Message-ID: 
 <MN2PR12MB3312462618C1E1A4298EBA30B82C9@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <MN2PR12MB33126FE573E77ACAEC631E8CB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <CAFOi1A6Cz3-VLxYjNgSQYOdk_ZEtK6vNC=5kPOkgi7Gyh9qbCw@mail.gmail.com>
In-Reply-To: 
 <CAFOi1A6Cz3-VLxYjNgSQYOdk_ZEtK6vNC=5kPOkgi7Gyh9qbCw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b901244c-f505-4b2c-a637-08d9ea4d0fb1
x-ms-traffictypediagnostic: DM6PR12MB4652:EE_
x-microsoft-antispam-prvs: 
 <DM6PR12MB4652B28F0A5E79D7C31DF36FB82C9@DM6PR12MB4652.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 K7ileAC0eG5//u4ohDVW9ZSjLHjaST+lqvn8xoJAy5DuZ0Hnpnd+9/D6l/L4A8lStF3LtGPBI/Txbe07Q4rnj2PS8PoI4rs5pqnvkQ19Q8EGSFUpAa6m6RIbf7u8+0MzrOEo7HeA1EBVGrNE0ZhNsIMufQbskMcMr9pWpA+V/zudW+Mv/IOXQbG/PhckPMiUE0q4k9L4IpyIbQgA20uBLqa1oCTU/sPoWE8T4k2dkdItlPtyIcg5qQ4wLzyW48XBfR99yIoB/rPRTSJRFlzyx6L6BcR/cbeQKnHc5yL8QuoSQ8P51C84VO5XWCdI0YopsSmkJBuCDlqNeqqobWN8klTjjU1/zrvzvcCqTdfqm8HgWv+qKyttxBZFOZGLKrkylV/NUTaUQDlgh2HRN1U5SNbwyRl8F0fH06lsDJl6uKWH/buAkScgLSo4FQIYp8j2MBnrYIt5H4sKarg2riBfaWmMSUUcDysx5CKgKIA0egsOuFoKzsPV642oDxII2YglHJkLYqtXp2EbwgpNv8blK5Hhg2fLKcwytDH/B6DRl+2Rc8/nZUUZZjreDekZmAsWw/+DhvDU46myA0/h2AUXaWFiTG+GbfhN2sSGkUhX/eAV8LVlJpWuE/v3XsdIee4g+HTXCjtXk9fAsHGUrl3yy/PB4xINbr5G9cYO4s4BHFGoktGt9lWEUxgexWfDeK7Pbu0Uz/vnnjHSHoMO6KV+dtu3lyx9SGo1uVeXmZIMR5PkhamJn1MgEyK5z3b7NakiVsUBH5MMwBjpBZlM8CwHdmHWTSa/gC4P9YK6DG5jBlQ=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(396003)(136003)(346002)(376002)(39830400003)(366004)(64756008)(66946007)(316002)(52536014)(8936002)(66446008)(83380400001)(55016003)(38070700005)(76116006)(66476007)(8676002)(66556008)(4326008)(5660300002)(2906002)(19627405001)(6916009)(508600001)(71200400001)(7696005)(6506007)(966005)(53546011)(186003)(26005)(122000001)(9686003)(38100700002)(166002)(86362001)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?T3cOnC3Pvul44jUy2p40CtJc57l9Bpk1Iyglw9T3+2XtU0Ivrg8JaqtAUaTc?=
 =?us-ascii?Q?SBR92IM+PzKtLefI6MPkXTG5PZsk3B0DIQWur2T2DS4XLKv6RZdI77yNVF+8?=
 =?us-ascii?Q?v2UYwgEMXgoSVa9yMlEqxjDesdla4LTcK7iCYL6h0YAEI03nA3LebifhOOta?=
 =?us-ascii?Q?VInRVOiO9f8G9vPAgwk2x2nh8Ctfnw12xDlA7bApHuSUbKHFzK62EdFLgq8O?=
 =?us-ascii?Q?OHrmZDF25P7cfe6lH8NdeOTQOEPYeZJ9ruNrBCUW9XsOduHgFk+sjg3CP9G/?=
 =?us-ascii?Q?nsPHlRFZKuaklQKdSmUtoQ7bau9ILO8V9qioplkPBvSj07Ol5BMTZvBa12sb?=
 =?us-ascii?Q?fOjDdSG+BVtA7d8CA4RInxvtxlXZdFTnPGGKqdT3umN0AJ250Z1M4n5hH00E?=
 =?us-ascii?Q?L5eo8LTF8c/RC/3MxrUs34D/sAlBNcp6POf3KMgq4dOzMSwPCnKnVHjBZF9f?=
 =?us-ascii?Q?DZwzyTRrsfnyQxhY+ARUONc8X85Azrtc6Wt5SPMDdaXt1T3jYN6woA0RGJYJ?=
 =?us-ascii?Q?RrRsWB/U5XZ3cyGPBm6kkS82yUNKk0IW06ppFKuawxcHcKd9xXLY/+XN/XBs?=
 =?us-ascii?Q?HMod4XQEe//4nhKZqE6EfDK6GZ//PLv6wBQya83NttfLtOowL25rCzTPoqnh?=
 =?us-ascii?Q?RFQiEsys8eOj4TDHzfRqd+lj0TzyHNm/BHhC06KjpvZdcv1p0ZBCv5vJJjht?=
 =?us-ascii?Q?kB6usWyMcr0OnH9mrJ0tGHmhmIabCZ8Po/dmnKD/md8k1qSH6XGOAp3j0Vt0?=
 =?us-ascii?Q?fKWaqYHvHto4tBBrMKNHHf1frT688+IjGGAH2cZZsTVL8hxduliO4fJ0F4Av?=
 =?us-ascii?Q?VacTFaUKm+pqI57HmTs+OGZaPeS/7/u9gL7dSvH6/UskaPMzkRUK7pZkq0Jq?=
 =?us-ascii?Q?Q6hp34zFXefKvIMkyAbuTEnVTKjqGzF35j9Y0/En+tbszVknurM9u9jbd4Gy?=
 =?us-ascii?Q?GufvFONHZOGUKhIufMP/Z+aYduQd1vAy0/zKrX7sRJ/LBjJUM/wqQxpL6iGF?=
 =?us-ascii?Q?Hj35FQKQMO4Lj7k2rnA5M4bek5HYySmbundc3BdqpxbZPFCtz49fnmptKRWA?=
 =?us-ascii?Q?gN+zr+9S8XXcRhjPwkLAzGlOQljPhnFsWS/gNZ5LxjySLHFkS9E1HOztVP8Z?=
 =?us-ascii?Q?bjivUI4mnh7Hbig1s8QQtthL34+ZS6TIpCZmTl0F6t5p57iGmau5/Sgn77D9?=
 =?us-ascii?Q?KIgpp/EI2N0eQqQrwEmx/jBgkmJyE1RmWbbFEGnWZK66iXi3qClqnkwoaVOx?=
 =?us-ascii?Q?HWiN9JH0HMVGHVKWHOq78+4LfquGIjBwVIfy+56FlvR79KcYecetsfNfY0kG?=
 =?us-ascii?Q?y2Hzs0kjy7AzPCROAzwcdmwN2iCv5o9oo62MES+7i/bBnD/LSqR4GQBJBhEu?=
 =?us-ascii?Q?h7ym67BhdgVAW5ERk0fPOfSlNe8h5qudF13O4+Z2JxbHfBSr4eEViF817R7i?=
 =?us-ascii?Q?QwNcaezMc8xquFZ85YX0B+GxRsOBirJ8RiYxMqkTkMx47ujJmozPc0Pccg35?=
 =?us-ascii?Q?RYdZJhkiPD59UQwxugwsP6CG5i+AX8mclt3xYC7YrIi9fEzswT866slI+tqg?=
 =?us-ascii?Q?ucBDF+GGw6OHdosKFUZFGClrCq11zAaV5hPowzbUfaRRDy64EUe2bBRv2txx?=
 =?us-ascii?Q?E9B7NRbf83tc+WeJ3IbS+QSm5o6qRorBM9a8M98AkOYSa+URDk0VgclZT1Zm?=
 =?us-ascii?Q?xXMPeQ=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b901244c-f505-4b2c-a637-08d9ea4d0fb1
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2022 15:18:14.3349
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f09Ihx+RpSO6bYvdmw9ZPjaTn6ZzMaMFwAT6OxzmP5squCozppyLDXWx85UYm7CAyUDUKlB6s7XJjmxstZ1Y97fDqaTMDaVO7Uao5ByuD8A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4652
X-MDID: 1644247098-9f3-8kCQjkmC
Message-ID-Hash: GIEKCBKVECHY2OJP2Q4FCN4CMJE3OCMU
X-Message-ID-Hash: GIEKCBKVECHY2OJP2Q4FCN4CMJE3OCMU
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RX Frequency Tuning Questions
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UER37T3SCWSHHX2ENZOMT2G4GMDQJPXV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7992599326223023650=="

--===============7992599326223023650==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312462618C1E1A4298EBA30B82C9MN2PR12MB3312namp_"

--_000_MN2PR12MB3312462618C1E1A4298EBA30B82C9MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Martin,

Thanks. On Friday, one of my coworkers saw something on github about the lo=
_locked sensors being fixed. So, that is good -- thanks for pointing that o=
ut.

Regarding your other comments about timed "future tunes" on the E320: you m=
entioned that the E320 doesn't let you do those. That is what I've been try=
ing to get working. Are you saying that timed commands are not supported on=
 the E320 -- or just timed tunes? Our ultimate target device is an N320/N32=
1, so I'm going to start developing with one of those. Do timed commands (i=
ncluding frequency tunes) work on the N320/N321? In a different USRP-users =
email I commented that the UHD provided "test_timed_commands" example doesn=
't work on either the N320, E320, or X310 in UHD 4.1 (nor does my own timed=
 frequency tuning code). A few others have chimed in that they have found t=
he same thing -- although Marcus L. mentioned that "test_timed_commands" do=
es work with an N310 in UHD 3.15.

If you could help clarify any of this, it would be appreciated.

Thanks,
Jim

________________________________
From: Martin Braun <martin.braun@ettus.com>
Sent: Monday, February 7, 2022 6:01 AM
To: Jim Palladino <jim@gardettoengineering.com>
Cc: USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RX Frequency Tuning Questions

Jim,

just a quick follow-up. There was indeed a bug with the lo-lock sensors whi=
ch was fixed in https://github.com/EttusResearch/uhd/commit/6666f36c267fc9c=
a908032fb719ec318c142636f<https://urldefense.proofpoint.com/v2/url?u=3Dhttp=
s-3A__github.com_EttusResearch_uhd_commit_6666f36c267fc9ca908032fb719ec318c=
142636f&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEE=
tUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D8pK83LBB7KAhLXeNc09e57pJ83WRI6h=
jRKkUjMCJg90&s=3DH1DYQq-AykcX0u5iRic0_dKSZ-XxL8tS2ImlRjGUHHQ&e=3D> (see als=
o https://github.com/EttusResearch/uhd/issues/534<https://urldefense.proofp=
oint.com/v2/url?u=3Dhttps-3A__github.com_EttusResearch_uhd_issues_534&d=3DD=
wMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-=
WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D8pK83LBB7KAhLXeNc09e57pJ83WRI6hjRKkUjMCJg90&=
s=3DD5nPFApIzjnAFrUWvAMofbvCFoWkbIRuoXDn68_-LeE&e=3D>). Both the name misma=
tch (lo_lock vs. lo_locked) and the lack of reporting lock are fixed.
But as Marcus says, the tuning is not as fast as on N320.

As for your first question: Yes, these API calls are non-blocking, unless t=
he hardware queues are full up. This is so you can schedule future tunes (a=
lthough E320 doesn't let you do those). However, when the queues fill up, t=
hose API calls become blocking.

--M

On Wed, Feb 2, 2022 at 5:15 PM Jim Palladino <jim@gardettoengineering.com<m=
ailto:jim@gardettoengineering.com>> wrote:
Hello,

I'm working on a frequency scanning app where I need to maximize the tuning=
 speed. I've been playing with timed commands -- I'm having issues with tha=
t and have posted about that separately. But I have some questions regardin=
g RX tuning.

I'm currently using an E320 and UHD 4.1 and developing a C++ scanning app. =
My first question is related to the set_rx_freq() command. If I look at the=
 documentation here:
https://files.ettus.com/manual/page_general.html#general_tuning_rfsettling<=
https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__files.ettus.com_manu=
al_page-5Fgeneral.html-23general-5Ftuning-5Frfsettling&d=3DDwMFaQ&c=3DeuGZs=
tcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2N=
ZkfwDnwpYx0&m=3D8pK83LBB7KAhLXeNc09e57pJ83WRI6hjRKkUjMCJg90&s=3DB1--VAdNrxL=
GnLI1wGs-Nyl_ge6ekEqS_rhh7wh61rQ&e=3D>

It implies that you need to wait and check the lo_locked sensor after tunin=
g if you want to make sure that the LO is really locked. This tells me that=
 the set_rx_freq() command does not block and wait until it locks. I want t=
o make sure that this is the case, as if I send consecutive get_time_now() =
commands, the responses are somewhere around 2ms apart. If I send the follo=
wing series of commands: get_time_now(), set_rx_freq(), get_time_now -- the=
n the time difference between get_time_now() responses is over 100ms. So, i=
t seems that the set_rx_freq() command takes quite a while to return. I jus=
t want to confirm that it is not blocking and waiting for lock before retur=
ning. This leads to my second question.

On the E320, I list the sensors using "usrp->get_rx_sensor_names(ACTIVE_CHA=
N);" This returns the following sensors: ad9361_temperature,  rssi,  lo_loc=
k. Note that it is "lo_lock" and not "lo_locked". I can querry "ad9361_temp=
erature" and get a reasonable value each time. However, the "lo_lock" senso=
r always reports back unlocked. I use the following command to querry it:

usrp->get_rx_sensor("lo_lock", ACTIVE_CHAN).to_pp_string()

It doesn't matter how long I wait after tuning -- I can wait many, many sec=
onds. If I look at the samples I'm streaming and capturing after tuning the=
 RX LO, they look correct. If I insert a tone from a signal generator, I se=
e it where I expect, and it looks good. At least by eyeball, it looks like =
the LO is locked. Similarly, if I run the "usrp_list_sensors" example appli=
cation included with UHD, the results of the RX sensors are:
-------------------------------
|    /
|   |       RX Sensors:
|   |
|   |   Chan 0:
|   |   * ad9361_temperature: 66.783625 C
|   |   * rssi: -50.75 dB
|   |   * ad9361_lock: unlocked
|   |
|   |   Chan 1:
|   |   * ad9361_temperature: 67.368423 C
|   |   * rssi: -55.0 dB
|   |   * ad9361_lock: unlocked
-------------------------------------
So, that is also reporting unlocked. Basically, I haven't been able to ever=
 read that sensor and have it say: "locked".

Any help understanding whether or not the set_rx_freq() command blocks unti=
l it's locked or why I can't seem to read the "lo_lock" state and see that =
it is locked would be appreciated.

Thanks,
Jim



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_MN2PR12MB3312462618C1E1A4298EBA30B82C9MN2PR12MB3312namp_
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
Martin,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks. On Friday, one of my coworkers saw something on github about the lo=
_locked sensors being fixed. So, that is good -- thanks for pointing that o=
ut.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Regarding your other comments about timed &quot;future tunes&quot; on the E=
320: you mentioned that the E320 doesn't let you do those. That is what I'v=
e been trying to get working. Are you saying that timed commands are not su=
pported on the E320 -- or just timed tunes?
 Our ultimate target device is an N320/N321, so I'm going to start developi=
ng with one of those. Do timed commands (including frequency tunes) work on=
 the N320/N321? In a different USRP-users email I commented that the UHD pr=
ovided &quot;test_timed_commands&quot; example
 doesn't work on either the N320, E320, or X310 in UHD 4.1 (nor does my own=
 timed frequency tuning code). A few others have chimed in that they have f=
ound the same thing -- although Marcus L. mentioned that &quot;test_timed_c=
ommands&quot; does work with an N310 in UHD
 3.15.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
If you could help clarify any of this, it would be appreciated.</div>
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
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Martin Braun &lt;mart=
in.braun@ettus.com&gt;<br>
<b>Sent:</b> Monday, February 7, 2022 6:01 AM<br>
<b>To:</b> Jim Palladino &lt;jim@gardettoengineering.com&gt;<br>
<b>Cc:</b> USRP-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] RX Frequency Tuning Questions</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>Jim,</div>
<div><br>
</div>
<div>just a quick follow-up. There was indeed a bug with the lo-lock sensor=
s which was fixed in
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.co=
m_EttusResearch_uhd_commit_6666f36c267fc9ca908032fb719ec318c142636f&amp;d=
=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEt=
UEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D8pK83LBB7KAhLXeNc09e57pJ83WR=
I6hjRKkUjMCJg90&amp;s=3DH1DYQq-AykcX0u5iRic0_dKSZ-XxL8tS2ImlRjGUHHQ&amp;e=
=3D">
https://github.com/EttusResearch/uhd/commit/6666f36c267fc9ca908032fb719ec31=
8c142636f</a> (see also
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.co=
m_EttusResearch_uhd_issues_534&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7j=
XrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&=
amp;m=3D8pK83LBB7KAhLXeNc09e57pJ83WRI6hjRKkUjMCJg90&amp;s=3DD5nPFApIzjnAFrU=
WvAMofbvCFoWkbIRuoXDn68_-LeE&amp;e=3D">
https://github.com/EttusResearch/uhd/issues/534</a>). Both the name mismatc=
h (lo_lock vs. lo_locked) and the lack of reporting lock are fixed.</div>
<div>But as Marcus says, the tuning is not as fast as on N320.</div>
<div><br>
</div>
<div>As for your first question: Yes, these API calls are non-blocking, unl=
ess the hardware queues are full up. This is so you can schedule future tun=
es (although E320 doesn't let you do those). However, when the queues fill =
up, those API calls become blocking.</div>
<div><br>
</div>
<div>--M<br>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Feb 2, 2022 at 5:15 PM Jim =
Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com">jim@gardettoen=
gineering.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I'm working on a frequency scanning app where I need to maximize the tuning=
 speed. I've been playing with timed commands -- I'm having issues with tha=
t and have posted about that separately. But I have some questions regardin=
g RX tuning.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I'm currently using an E320 and UHD 4.1 and developing a C++ scanning app. =
My first question is related to the set_rx_freq() command. If I look at the=
 documentation here:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__files.ett=
us.com_manual_page-5Fgeneral.html-23general-5Ftuning-5Frfsettling&amp;d=3DD=
wMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfp=
aAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D8pK83LBB7KAhLXeNc09e57pJ83WRI6hj=
RKkUjMCJg90&amp;s=3DB1--VAdNrxLGnLI1wGs-Nyl_ge6ekEqS_rhh7wh61rQ&amp;e=3D" i=
d=3D"x_gmail-m_5517640384839026879LPNoLPOWALinkPreview" target=3D"_blank">h=
ttps://files.ettus.com/manual/page_general.html#general_tuning_rfsettling</=
a><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
It implies that you need to wait and check the lo_locked sensor after tunin=
g if you want to make sure that the LO is really locked. This tells me that=
 the set_rx_freq() command does not block and wait until it locks. I want t=
o make sure that this is the case,
 as if I send consecutive get_time_now() commands, the responses are somewh=
ere around 2ms apart. If I send the following series of commands: get_time_=
now(), set_rx_freq(), get_time_now -- then the time difference between get_=
time_now() responses is over 100ms.
 So, it seems that the set_rx_freq() command takes quite a while to return.=
 I just want to confirm that it is not blocking and waiting for lock before=
 returning. This leads to my second question.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
On the E320, I list the sensors using &quot;usrp-&gt;get_rx_sensor_names(AC=
TIVE_CHAN);&quot; This returns the following sensors:&nbsp;ad9361_temperatu=
re,&nbsp; rssi,&nbsp; lo_lock. Note that it is &quot;lo_lock&quot; and not =
&quot;lo_locked&quot;. I can querry &quot;ad9361_temperature&quot; and get =
a reasonable value
 each time. However, the &quot;lo_lock&quot; sensor always reports back unl=
ocked. I use the following command to querry it:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
usrp-&gt;get_rx_sensor(&quot;lo_lock&quot;, ACTIVE_CHAN).to_pp_string()</di=
v>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
It doesn't matter how long I wait after tuning -- I can wait many, many sec=
onds. If I look at the samples I'm streaming and capturing after tuning the=
 RX LO, they look correct. If I insert a tone from a signal generator, I se=
e it where I expect, and it looks
 good. At least by eyeball, it looks like the LO is locked. Similarly, if I=
 run the &quot;usrp_list_sensors&quot; example application included with UH=
D, the results of the RX sensors are:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
-------------------------------</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
| &nbsp; &nbsp;/
<div>| &nbsp; | &nbsp; &nbsp; &nbsp; RX Sensors: </div>
<div>| &nbsp; | &nbsp; </div>
<div>| &nbsp; | &nbsp; Chan 0: </div>
<div>| &nbsp; | &nbsp; * ad9361_temperature: 66.783625 C</div>
<div>| &nbsp; | &nbsp; * rssi: -50.75 dB</div>
<div>| &nbsp; | &nbsp; * ad9361_lock: unlocked</div>
<div>| &nbsp; | &nbsp; </div>
<div>| &nbsp; | &nbsp; Chan 1: </div>
<div>| &nbsp; | &nbsp; * ad9361_temperature: 67.368423 C</div>
<div>| &nbsp; | &nbsp; * rssi: -55.0 dB</div>
<span>| &nbsp; | &nbsp; * ad9361_lock: unlocked</span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>-------------------------------------</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>So, that is also reporting unlocked. Basically, I haven't been able t=
o ever read that sensor and have it say: &quot;locked&quot;.&nbsp;</span></=
div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Any help understanding whether or not the set_rx_freq() command blocks unti=
l it's locked or why I can't seem to read the &quot;lo_lock&quot; state and=
 see that it is locked would be appreciated.</div>
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
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div></div>
<br>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB3312462618C1E1A4298EBA30B82C9MN2PR12MB3312namp_--

--===============7992599326223023650==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7992599326223023650==--
