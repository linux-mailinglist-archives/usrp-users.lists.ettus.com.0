Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B1A2EF6DB
	for <lists+usrp-users@lfdr.de>; Fri,  8 Jan 2021 18:59:30 +0100 (CET)
Received: from [::1] (port=55600 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kxw2p-00066B-1I; Fri, 08 Jan 2021 12:59:27 -0500
Received: from mail-am6eur05on2126.outbound.protection.outlook.com
 ([40.107.22.126]:6912 helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1kxw2k-00061u-Ig
 for usrp-users@lists.ettus.com; Fri, 08 Jan 2021 12:59:22 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AKEG3AqU6svK1y92ibXlxe5z5MpVs9XZxAlIsoNWISgyIvy9R/jGLdrSvBIrSA2+gHHtWEKMDFGMhAvCvWcA3JonohxbE51VqJiTQhbMUGo3kaBHaMQ8qXlvwqEFKDRCcAKEAcKfZTQCu90mTXjGeWxcBtKsG+4SQsnFmW+DCWVvd5gYEPHx0xgn3ofNNYS1OCi45LZvZyXBtwVXqAMBLRtXVCsPCkdT2jOZv/ulAYYmEOIr/0U8oG0vOnm1qN/maPMMCsTLKI/P5B76+VuDab63mPjBKJJStpvEXRzbhQubTSgBxIROAr3r7dyidY2PbJWn+7HtpUGFEyvnRyAk7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rX6CPElGZX0uJKylXtZNZFsrwjn6+LnX3t28V/9A7vE=;
 b=NtQqmXXtHCqGSQiwOb45dX3R9y0Ewlk21hrDyd4ZeIeudiWwbGDJmiNAZatYsZ4F5FOp+TLz2WCSrkoCv3uufmswt2Q9Wkttu9QcQ8lsLvoy8gz/Gnqh2c2EKU1NnZQmOgE/jtsg+FqAEXKr4ThEFDTCEWZCXoTVtM4rhzSZr+IKscdtxfbjkt/rEEqD2B8KVxjU/IuWfAVKcTYVDfOgp0zEedqyii4XbMcC+qFsCREAUREfZssNdXnviB+YolmGnoi3KESXr/oYgyv/+75evxhmO3SM/cBkZ0JaF6TQBZCe1SZb12limuTGejYGPgOkqnjccdsE0yYeMrvC75FeXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rX6CPElGZX0uJKylXtZNZFsrwjn6+LnX3t28V/9A7vE=;
 b=YR4cVZTULPVEa4TRCV5i1ziLZDGmLaSQklW7+00p986VzM5vVWOG25FYd9Gnt/rJqZVdcORHIlR22Y4n0Hh59ojJYD7hmdgf6zhtSHp++xqKf6IEatsxTKV+xGNXsL/EqXazBOpzCRvkhICfW6134HuR+gUx1NRz6b/Ys34BtkQ=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1062.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2e8::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Fri, 8 Jan
 2021 17:58:39 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3742.006; Fri, 8 Jan 2021
 17:58:39 +0000
Date: Fri, 8 Jan 2021 18:58:38 +0100
To: usrp-users@lists.ettus.com
Message-ID: <20210108175838.vxaqctdxyaahty72@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
Content-Disposition: inline
X-Originating-IP: [164.15.78.67]
X-ClientProxiedBy: AM0PR03CA0065.eurprd03.prod.outlook.com (2603:10a6:208::42)
 To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.78.67) by
 AM0PR03CA0065.eurprd03.prod.outlook.com (2603:10a6:208::42) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3742.6 via Frontend Transport; Fri, 8 Jan 2021 17:58:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 76adb125-beb2-47d2-84aa-08d8b3ff0768
X-MS-TrafficTypeDiagnostic: AS8P190MB1062:
X-Microsoft-Antispam-PRVS: <AS8P190MB1062EA8AD23B34592267CEBEF0AE0@AS8P190MB1062.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PZskWxR0HQ89X8m2vW/P2R11PuY1DLWjv+WCpAc1N16g2Qnr+TV8mF0khrT4585dKqPlpEFcfj5zhX64Cqz5OdvJAzyTeef3/tuQaBdQw1iWaSapPp+/8+mLlIO1KXtCCaW25fZ6rV9I8ZzRWDTEUn1IjzStKgMoPMRdk67sHEQuQ9Gx7shtw2YSlGrtJk+aTFFJT8HNliXE0pf/6DMPvV2gWuAKSnnav1dkYjhZhfe4uHaciVZwc/CTzwoCv2PobB13nMo9mxENSGJFSc3dmQB4XHwX4DwGOR0i13E5vFXzipmC/nA5Emx5me0B/FKXy/pfQloLi0Tj34yw7HRXBc3Uv9y1SrThGYxANt4GpS1Kkb9xNqLNC4njPp0Q26KsxGL35u8zJ51of/YYfLP3AT9WVk9fu6OHV/6sz0+nuTnh8UBggwRd7JZg43WKIYd+CRmC5k7B72scFTi4KQWGaw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(376002)(346002)(136003)(39850400004)(396003)(366004)(186003)(26005)(4744005)(16526019)(1076003)(9686003)(786003)(316002)(6486002)(478600001)(5660300002)(956004)(66476007)(66556008)(966005)(66946007)(8676002)(2906002)(83380400001)(52116002)(6496006)(86362001)(33716001)(8936002)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?pEh/DtVCWXnYYcJygvR2sydaz9KB4UuF/UWlNCqCQv/xgRkuhBQcZ8g61M?=
 =?iso-8859-1?Q?uaS3vj2vqmMzh3r/I522lpopTJE+/aOIRnsNv/f1ZVJK9TEJxxn9fjDgcF?=
 =?iso-8859-1?Q?4FPKM4R1PS11VvnTxQpAqJDpN+mFAeaZ8Vd2w6XPs8+EmOaG81+ttm6Iss?=
 =?iso-8859-1?Q?qLW+E7lvgVOnSzc6OM2AsuRKiayO5pso4UW0y7rN5ZW9wvwp0/ujC4bKBF?=
 =?iso-8859-1?Q?E+2lNb96DmEBMEK9K928+XO5GBFxZzFhG5onkKtN2MaztY2/+o6iuXoC2b?=
 =?iso-8859-1?Q?4WPu83DbW5CrDJ1av88gY7mQlCEauwXXXEoH9LptbseiS40PNRZJPFdCWw?=
 =?iso-8859-1?Q?0HctcxGmRajtkjbQ9amcFiiacPMqdOoI+SWsz4jCZX73CdCZmn1n/XAOSN?=
 =?iso-8859-1?Q?OYrSDd9BVp8hgO4VvGkoXG+p40TEe4HxS4zSxGi7RtnJh5/YyivPs1k20c?=
 =?iso-8859-1?Q?/PZbR/2GOmxNXgLvu1cphZYgc5TZLERA5zpHz00mZPGrxm+Cs3ZPbXm36B?=
 =?iso-8859-1?Q?lozcd3ql8Lo/vfasEeEiwxw4M5fIHVVUi2I2I16PZfruT3+ann7DdQHZoi?=
 =?iso-8859-1?Q?Fy7HHNFTMkD61OfLnWDTI7o+GQ7vrzkQay7QjAI1/n6Od4MI7P0tBtaNuX?=
 =?iso-8859-1?Q?Ia0HHhvF17mgRvvXHx0h6YzmHsvMp1klZTkfzpQ9AENNtf+WW3drQ/3yaa?=
 =?iso-8859-1?Q?QHsy4mLGjSCByZ1VNvqBw49VBREY7NeJninBAsdpzu3FWPIeEaLCSUziRI?=
 =?iso-8859-1?Q?IwEnpkgWOBNIeeKnL4YNSqFtwo191SXosPPwP9tLOYrwpwayNfA0HqzV+F?=
 =?iso-8859-1?Q?HbKzMT+TiMrYaKq+j+Og9ImA4yMWVncfhZWaOEZqvJ2Y+FTxHAa4CE211h?=
 =?iso-8859-1?Q?5KA3NvgGa9jVaBW1q0G+9CqjohvihCoWEDQ4bJdYM083n+1ib907JrWR6K?=
 =?iso-8859-1?Q?+ECFE8H57aUHH83YbCk9U5ehQWK9kBiVl6cZdw0hPeAEtywa5izani5AZX?=
 =?iso-8859-1?Q?49imcugAJ/CE+ySsM=3D?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2021 17:58:39.4650 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-Network-Message-Id: 76adb125-beb2-47d2-84aa-08d8b3ff0768
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W14fPTjSNexqsIUK/3cCEnEuvFcmiqUpKChNCrsUokURLmaks6qyuD60gmR9IC1aPUanAIKxfyOj9gcLEs0EvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1062
Subject: [USRP-users] Add Xilinx IP in OOT RFNoC UHD4.0
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

Dear all,

I am following the RFNoC on UHD4.0 wiki [1],
but there is no mention on how to add Xilinx IPs in the OOT.

When following [2],
after copy-pasting from "host/example/rfnoc-example",
and following [3] to setup basic shell env/script,
how can I add for example IP "xilinx.com:ip:mult_gen:12.0"?

Furthermore, how do I add that IP "module wise" or "block wise",
i.e. inside rfnoc-example or inside rfnoc-example/fpga/rfnoc_block_gain?

There is viv_create_ip [3], but it just creates the tree,
it does not link that new IP with the current OOT tree.

[1] https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0
[2] https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Creating_You=
r_Own_OOT_Module
[3] https://files.ettus.com/manual/md_usrp3_vivado_env_utils.html

Best regards
-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
