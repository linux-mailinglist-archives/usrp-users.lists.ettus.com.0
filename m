Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F5731FEA5
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 19:16:13 +0100 (CET)
Received: from [::1] (port=56266 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lDAK2-0000Uc-C1; Fri, 19 Feb 2021 13:16:10 -0500
Received: from mail-eopbgr20122.outbound.protection.outlook.com
 ([40.107.2.122]:34638 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1lDAJy-0000OZ-5j
 for usrp-users@lists.ettus.com; Fri, 19 Feb 2021 13:16:06 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EA8IscdYaU0eXwH+vfK23h0UlgUQ15hM1xq9mrwGhLa/AlUcy1HeLrMIpfQ6BH1HgvTCpQEpIe7h+U4vlBTZ4QZFRkvvN80qaXHijhf/xaKRIHlUr7nN4EZR/xSKq/tAaOGaf7ZkT+Hk08EkRwhkHegu/jB+stCJYI1jjgFPeentNyhu4JsWf9ikn78JYERUfydTmkBDLhTXc3h/RuPxnK8wkFJZcHF1RYYHKyAEBnJP+vriFM46mTdQdlkWFxfR38z1gSIa5DTNPvcT38t0RqQnAmCZQk1YcJSswTbp0G7vtQDFkKw2wqeEYZNRaLpXgrf5Sp4rm43dczSxHw6K2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AQmGrLkQo6AcFMv0zyc3B/GaO8HwCE+SzwcIlIANlAA=;
 b=IPQx10QDFEDQ0QJs2ssTw65XEUjFrx+Cm1H7Ckxbytfg3rF/ah4ryDfWWTaPysioUuQdgj6zQXGsdU2j8s2JDJjl7U9+veA0Y+O3wAKbcc9XzHUFnDGyn5gtPb5RBSCkJTNwnzWvnnJPivXf9cuH1RH6YVoe/4++YqY/PBkWiI2wO2F7pAfhqqxB7hXyCvq9fRpE0tuHor/MKla3uMRwX+BWk2XIYbwcX6P73o7WCkYN/5TLr8otHNYbiycQ6mE73r1uB5Q96ZO7exvZc6lnuJMBHWtKCGuup6PteZRqAlxdp0bIKvsvSC1CosO5sW2prPWgvHXz5Ey3vphgVmHyvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AQmGrLkQo6AcFMv0zyc3B/GaO8HwCE+SzwcIlIANlAA=;
 b=fjccauuTHruQ7A+dwrV3dKLJAz7+t4SHEfQQQd/sc75noKJmKnjVF7EIGIOjbxZz7479rc0Ro7qCGlDht2T0ec15/wPTRDsn0dxz/gOcIwrE71SzL3sDr/GwRBS0BtIJRSAjzOvljKQL0aDxlkXHlEbbUKHtEdNnsbnqM9EPN74=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1093.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2b6::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.28; Fri, 19 Feb
 2021 18:15:24 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3846.043; Fri, 19 Feb 2021
 18:15:24 +0000
Date: Fri, 19 Feb 2021 19:15:23 +0100
To: usrp-users@lists.ettus.com
Message-ID: <20210219181523.jmrqzzyvpaeywvli@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <20210217172935.joprwj3f6rwdu3jo@barbe>
 <CAB__hTSncBC=XS1YvCoE1jip2kY607aWC2hrFUOYcPCq4V6+iA@mail.gmail.com>
 <20210218090858.serfuy4u67rmor6c@barbe>
 <CAB__hTRwpakb-Vu+Q98vp9MGUW9NgggV=-AmK+4OWc0rw6zTNg@mail.gmail.com>
 <20210218172348.5xjhxl3b3g5ptjnd@barbe>
 <CAB__hTQEGfMFSm8L1jV41d_WSradNM_RJdODcEkGYH27x29q3g@mail.gmail.com>
 <20210219112003.z2mthwtk3xjkrmdl@barbe>
 <CAB__hTQ2VeJ9nNwaO+_pEiih141V7OzdGfYf9xSKn7EYFgHHWA@mail.gmail.com>
 <20210219155945.6px2hffwz7nixtnx@barbe>
 <CAB__hTSggXFLZ=9zQhhsyxiuchsRDSvmWiVnqWBevRr57hp--g@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAB__hTSggXFLZ=9zQhhsyxiuchsRDSvmWiVnqWBevRr57hp--g@mail.gmail.com>
X-Originating-IP: [164.15.78.67]
X-ClientProxiedBy: AM0PR04CA0069.eurprd04.prod.outlook.com
 (2603:10a6:208:1::46) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.78.67) by
 AM0PR04CA0069.eurprd04.prod.outlook.com (2603:10a6:208:1::46) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3868.27 via Frontend Transport; Fri, 19 Feb 2021 18:15:23 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7dfb4f64-79b0-4f78-d3ba-08d8d502534d
X-MS-TrafficTypeDiagnostic: AS8P190MB1093:
X-Microsoft-Antispam-PRVS: <AS8P190MB1093088B19EB981B4C56D1EDF0849@AS8P190MB1093.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: h44O81Qo102RLvTVv7Bq/pvzkpZnnb835Z1ZcFMJYpXYJ++EcAVuW15+McQ256FFYYUolsktGomu6LtT5+kjdFpFiYpuVMSndm2YIDwL/kgic4NxpiZvyK0ONP2BUap0kWHzbDTEy7h/qRDhdqiGzvfxODvCIAIHv4uXXVYqIpiRi6vT7yXhMe2IOQyz/cNS28PIiW2Po8cZFoGVdLCtiLs4n60ttq6WcAVJ/ckNlpEX9Kwr+1yIVDjCdiBlk+6Mx02aYtp+JOJd/2VqTbcfDVot0NaKe1GiYK1fqzBPMCY8jZjUclA05vDfTo0Qu8KTuH7OtaF9WfSU+kTCZ6WHFXq7mIWlkmeVUykIQajZZdr/S1kBK+52CvHmI7BWUj1VsR0jSsIxDD1UQjQH4GiBz1badnk2xIdE/ExpuNHidzcMAHbD0Zm11MzTcS2+cZzs+rdnA9p+JleYN41KxfIYGND9hJck8Py4Z+LlHeVqvDh/AODKo4Sq3Zh9DSQuc+hel6r/7UuEopumWmvjHhFzWw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(346002)(136003)(376002)(39860400002)(366004)(396003)(66556008)(8936002)(66476007)(558084003)(316002)(86362001)(478600001)(786003)(53546011)(66946007)(8676002)(6496006)(26005)(3716004)(9686003)(16526019)(6486002)(186003)(66574015)(956004)(5660300002)(33716001)(2906002)(83380400001)(52116002)(6916009)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?Wy5/yBrAiwAiCsTIWd8wF7kp/weqkHkiyprlnR/E/8ctRlwOhm+Ho/9Tyn?=
 =?iso-8859-1?Q?I2mZ0F3Uj9BUEzKC3uB1uDqnXLi7MZTdCghzXqNDgkIIIOHMUU18LTX+3Z?=
 =?iso-8859-1?Q?h0KoHvfP5geO2MpywgOHzJW4NGLbg4irm8yBY/sA/Ap7aaIA3fhckVEn9C?=
 =?iso-8859-1?Q?Lb5wjySgMhlYTpgCnFilsF1JBqEzkvi7zFUUZ167ihvPoclbTCoIM3/lz7?=
 =?iso-8859-1?Q?taP3CPNFdW9FxOIV/N/hJdcowXB0+xKldoItbbNOrBlgnbk72icYcMAX9D?=
 =?iso-8859-1?Q?oESZ1Eq62NQEYrNcBV0ra+yBkttZdKPaFLC+eVwYfBa1Ex71y6HvB7Cioz?=
 =?iso-8859-1?Q?l6H6SHzozylogAiBcY/cneHYnDKd7Wrto3CnSOEiA8yhTTcQWIpVnhpvyr?=
 =?iso-8859-1?Q?WV0aZZv0eg2sFgWte7sO5tvR7zwN2ytmjbrt1Iy434qK3p9oQ4VgUhWADF?=
 =?iso-8859-1?Q?NMILXTJ4A9DxRNQvUi9lpLD7VUgs1H+irxDXpNy1xi6Q8uyDq1S2xZu2fz?=
 =?iso-8859-1?Q?tFNsyOlZNUEQ/G92zZmq6S9S7+AUXBKy1xSSnI6nuBkdqKUbfZiwR/LUYw?=
 =?iso-8859-1?Q?eAupe3zSNkteO9veOKl1agVcW+BLTwUnZrj9cemcXQo/Lm7HqKjivi0dgz?=
 =?iso-8859-1?Q?FFfsMuE0u/DQbnMgBMJEy/NdJWvI+gbepBeMMPayXIeAmnnc6+Y+jDfv3G?=
 =?iso-8859-1?Q?Kh9F+51OK2syXW8cu4EJFwLZKcdSAe4fcizEQelzXuh4MJcuqI61ZM/TZj?=
 =?iso-8859-1?Q?oOXKm6f17zvNIjkNkLq9AazX2bS2L7H1gP3N8/B+aNU1hMSj29xxLM/MDk?=
 =?iso-8859-1?Q?3PqX8PBF4AgVrbk/fth8KStsIdjTvJRRYB1BB89opQlnvSujmTA1CSoE1N?=
 =?iso-8859-1?Q?qMnTYgHjlviMGvUWHmB0GS6euD9DjsbRcsPEc9nDdqe/r5a7U50zk4JdZq?=
 =?iso-8859-1?Q?fzYdFFsi3GkDCDq47oMXB58fao0I6vTEWMPxT6sQ8lZhpjpyI07uLwcU4U?=
 =?iso-8859-1?Q?i0hFiwCLrmap9n/bveBQdwGehJ/VNSi5dYY7J6+Tw8ZWypboo94UFAlTE+?=
 =?iso-8859-1?Q?pPttNZJhxqKnZ1GO2jRsX/Bv7nYoir4BxncyR3BvH2P8F3wBCVIB0wsIVQ?=
 =?iso-8859-1?Q?Y/kx4MkuXkECttxUJW1wdxlVN3ZXrWmJ+9M3Rox2h0wPztmse69LswmqKU?=
 =?iso-8859-1?Q?N7PZ8h4xLupUXblF75gr7uNb1GLycHY+00g1CKc2VwpsZly5NK/J+D78zB?=
 =?iso-8859-1?Q?W3prSESOaLYdFOEFN/i3OFr6L7EK6CDrrLIoAI/2il1yIIfD645BjJ7Ae9?=
 =?iso-8859-1?Q?bTaZvDte3arTgB9+tmxHIHYnbYk6n7HObcPFjZP7+htdUFQtFgN6jll6D/?=
 =?iso-8859-1?Q?iz7byrIEJX?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dfb4f64-79b0-4f78-d3ba-08d8d502534d
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2021 18:15:24.0102 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ceY0cz63E+Tijp5RZ4G0Si5aF6RF2WVvsquQgysR7OkEkfXCcvTD0YMvN7Uo5PESRUxyg3VAUdGxcWlbFaIIVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1093
Subject: Re: [USRP-users] OTT Gain Block stopping samples flowing from RFNoC
 Digital Down Converter
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

On 19/02/21 12:20, Rob Kossler via USRP-users wrote:
> Yes, that is my best guess.

Thanks for the solution!
I will update the ticket accordingly.

> Did you try it?

No, I no longer have UHD 4.0, I rolled back to UHD 3.9.

Regards
-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
