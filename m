Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E707431C7EB
	for <lists+usrp-users@lfdr.de>; Tue, 16 Feb 2021 10:20:38 +0100 (CET)
Received: from [::1] (port=48700 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lBwWz-0007hV-Hl; Tue, 16 Feb 2021 04:20:29 -0500
Received: from mail-eopbgr150118.outbound.protection.outlook.com
 ([40.107.15.118]:16710 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1lBwWv-0007cA-IN
 for usrp-users@lists.ettus.com; Tue, 16 Feb 2021 04:20:25 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PhxjyuBEkRfoeokA9TkmJuwbyfiPpSqE+Vo2n2pzSbh7vKNBgr53ujOHQdNFtdlCpdN1P9x3t1XbXA0PvKMQuCS7J9ZMq6+TEra2jyYFYYuuMXtIkWTjw2WrYHAGZy47iqUWXU0qlYoVBVvvFdG9tVGse/tnwusLfSmiCUL65Bcx9tKCLs2gRVyDdjvQGPTtkHWdkD4z1lZx1q7lP1vRI+NEQNusTqQUlf54OJrfkgHRlIl3zXqbFqubNl4pGTsmDHo3OfgLC6Qv66b18ptQ/txYiG+ASkwynHLvaRwasztmnAEZQdKakwvnjfEI9HDqjYBEqZChVCkNACFTHFdBFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OR0wg6tNkn1AAzzWUzVNEckTsj58O5THCzpd4GqIA8w=;
 b=e/lXo4aU4UaVYHovyWUiHzToZTiHkZRwWRmCrxkl0jDo3O/R4cQrWkQ/ex88u9heEfiRx6DlRg7JSIurvkb0HrjYoYW1WiMtEIKSBIqq4k//+olT1GGgBctBCg+7+h+Mph3YDrKUMzRNPGaPjdoIDQ9BXlFHZfD9rTkjZyxbFdOMb+2HBifkzjHinQXluMXzOf2z2E9dLvNMdvpjwX2X+MoIY6HeCle1PSyH0EabhSqVsNmaUCUrhfdkaUyqJZ0d4p9CozJ5IvQ69v6rxURk/hiQNfKk4di8CLrJm0+dkikQGIH2LTYH4hqnQ2Ruu19QVGl0dybjXVxiBH+GQVxomA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OR0wg6tNkn1AAzzWUzVNEckTsj58O5THCzpd4GqIA8w=;
 b=dgGoaOFHvpbbGPBwpMD0sXwB6IwxVaz7VvQ1VyshDqg8VBcU60f+J8NOY70JWLIsEEVanBzWwj5fHclfYwJ7/VyfdZMQtRHzxelexsGjzyIofsEOo8nZf7Fqww1ceC7uvJSFxEjWOZHoeuYf0MKR2oowCPEueNmMfXT60xHO6aU=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM5P190MB0531.EURP190.PROD.OUTLOOK.COM (2603:10a6:206:21::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.23; Tue, 16 Feb
 2021 09:19:42 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3846.043; Tue, 16 Feb 2021
 09:19:42 +0000
Date: Tue, 16 Feb 2021 10:19:41 +0100
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <20210216091941.yaclsgbeh7spm4tt@barbe>
Mail-Followup-To: usrp-users <usrp-users@lists.ettus.com>
References: <20210108175838.vxaqctdxyaahty72@barbe>
 <20210121230057.aswz7r7zngpxbthy@barbe>
 <CAFche=jrmKeaRq0L70y85N=OWj9-BY=NXtVqNawCgD6mPkccMw@mail.gmail.com>
 <CAJZBg9UE2GzKH5HjjBq60k0XvQ_Lk0ex10aHba0G13mtaR0vpw@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAJZBg9UE2GzKH5HjjBq60k0XvQ_Lk0ex10aHba0G13mtaR0vpw@mail.gmail.com>
X-Originating-IP: [164.15.78.67]
X-ClientProxiedBy: PR0P264CA0271.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1::19) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.78.67) by
 PR0P264CA0271.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3846.38 via Frontend Transport; Tue, 16 Feb 2021 09:19:42 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7e0c3b9a-e714-46cb-e681-08d8d25bfe63
X-MS-TrafficTypeDiagnostic: AM5P190MB0531:
X-Microsoft-Antispam-PRVS: <AM5P190MB05316BA87C685C8A81E15DF4F0879@AM5P190MB0531.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:1247;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ebFXbkVqkNifQyzwKhKQXNvcmAkw01noYMK9I9WCrRUySiZTKbBuAHw2zOOsQFNwKd+TEgsvdsm1ztgc9INopqZCs/+79vpMsBtYd5go2Lfq7jnlt7DKVWzEOTKhRUkQWxo+bfdf4yIgg+1yooctjqmf3+HfIa4+q7+XilujHxN8poYrk22kiup7HyndzOsfz1wWDIuWN2/OreJeNoUQPDBgnOvEIwmRIduZ6vPbKmyHXZh9aGEZ65f/kr0exttb1LGGLqXYD5SClDFZRc1nfs77CJkov8+nkUop/sGOzF7caF7/ZHketKyl9mzcl/1ggkYEJcrTo2QTnBwbccZ3Co3KtKKgSRVTpQc0RF1n7zTlrgfymALsojOlhwlznZYj53sFehE0kYmUzEQ92TDMT9zd4jd9DXVPn0Musucgk+pRCmoOrICy7V8buJJz/RI+eu4IL5B5LB66g91R1Vqa7wS2Q1g8ls8W/dGNHNdPyZKzVpDA0fwvoB54DotqMhL1NBsiop2Eovh9G0153DQWAg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(136003)(396003)(366004)(376002)(346002)(39860400002)(86362001)(52116002)(478600001)(5660300002)(6916009)(6496006)(33716001)(316002)(8676002)(26005)(66946007)(1076003)(6486002)(186003)(786003)(956004)(8936002)(558084003)(9686003)(2906002)(66476007)(83380400001)(53546011)(16526019)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?tod+p50yinIduK21xC1z7uLL3rHe3n9bVpriRxb4wpmLP84oc2T2trUXnH?=
 =?iso-8859-1?Q?c5xN1czyjOyna8ftEzH66GBJg+yr3zrvhSD3gIDKirFl4BdHAgLQ0kCjDc?=
 =?iso-8859-1?Q?QjKbXYwo+6JSdoSfs8/n3cDdE82k9RTsyGgrtOYwTGS7XgN7YoQFmcP7ub?=
 =?iso-8859-1?Q?UR8TLBTh9jfsiWTs717/Dv8WpQugFC3hmNTUoEianjaUYhOqP0jip3SnqC?=
 =?iso-8859-1?Q?e0iPZ0dMPF/2oJmMbfm/RCNPSdCi3yWzYtbbDZtQyC2v+IU/absFk6WH+I?=
 =?iso-8859-1?Q?2L1M5PdT+h7a7mD7XpkigpUuZXNa0XLQQpVIdgV7tdfthzETyGojAB9s1A?=
 =?iso-8859-1?Q?dh6Xlwg8QEWcH+MCtjDmEsNOw6EdQAPWRVsFsStW+FauyTW3PYc1+BwRP4?=
 =?iso-8859-1?Q?ZtuSqy367QWwn0ICWECiilwhnRM+wvgEtIT66GHef1/RQyQ0Z2J+jPobXc?=
 =?iso-8859-1?Q?Nycp18a8mwWb6ZsAl6lYkmkdtb0DsBBTFEzy9HROrxHcrHYeeOGLSZmRNv?=
 =?iso-8859-1?Q?mIW1ANoWt9p3RGo19ellLIxH818hxIXe7PP/rPafzUxsTs9XpsfF/jiQgO?=
 =?iso-8859-1?Q?APxkdQ+34gGp6+Xek9E8Q3v6l/jrbDY1/ONcJhgW+8EISwx5CTkFnhoE8l?=
 =?iso-8859-1?Q?V4FebkD4J2BRwMKKw7N2Ime+N07qQ6Varrs0+ZVwf63M4kRr7SKVveIobJ?=
 =?iso-8859-1?Q?rmAI+DDFXBc1sQX+zC959sXS4TacLig8sh9+F2wyrt0s2IniR5EsMxPwQ0?=
 =?iso-8859-1?Q?Oxl9NTH8fERKOjXwmZcU44ays96xo6is/VDCWyjeURc0VCqj0a/ncpLTyq?=
 =?iso-8859-1?Q?iKEQrGyfiJ1NzSAwTA8qLTDvGYPKhMN/nPHGv0hp0AubfeHyFdJv7lib/m?=
 =?iso-8859-1?Q?QDTwRa5G+uIbuKt0oCfvcpbzqWxFu6bk+w7XSV4uRo6Oe8ApSfJNeSABMN?=
 =?iso-8859-1?Q?8cV/D/W3TZBv0ltE2DZoifpsp8+2i+PR2NNrWybJaCgsOcJMk8py7Fkx3e?=
 =?iso-8859-1?Q?38gEBqd5MSyoOXDN419hvDBKJlhi/gv7PqQzPmG6z5UjRgvoCy11ldrdzK?=
 =?iso-8859-1?Q?GjokJmjdjW/WKVOCPpYef+Zbv2puOhuQ5j/9RbFqVU4TLVPH/XD1+rv/Bn?=
 =?iso-8859-1?Q?3yo6K1uRalR2/qxUZTjVfzyIt3bW4EXsHxu1YeHB/mt9f2Fl3/dRemo8tx?=
 =?iso-8859-1?Q?FaMlVQanrqFajx3wIkIX4vi9/NYpeTS41PSrfx1AC+pIYAywTGufTavh7g?=
 =?iso-8859-1?Q?/A1cno3rPzXTIhrZ+dbrkrz/Unl36XUY6CnVS/rYjL/SMtltHzPzth78Kd?=
 =?iso-8859-1?Q?e5eloVc8tltXPJJTBG6cqVczmEDJ93iYAKFVg6K2Cn23f6De+8Wn6eSW23?=
 =?iso-8859-1?Q?77dwoC7Ez0?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e0c3b9a-e714-46cb-e681-08d8d25bfe63
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2021 09:19:42.6504 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BVYecwSpNdBxWwaFytH7VQGm72Yzy8rUo+Z0OYtZVVg5MMIMq2Ouqfy4Eyj51JrhODd9mT/PzZdVBPDzTPS7tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P190MB0531
Subject: Re: [USRP-users] Add Xilinx IP in OOT RFNoC UHD4.0
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

Dear Tuan,

On 16/02/21 14:03, Tuan Hoang Dinh wrote:
> I would like to add Xilinx IP to RFNoC module and still have no idea to do
> that.
> Could you share your example to help me get started?

I forwarded Wade's example to you.

Regards
-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
