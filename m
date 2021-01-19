Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 071122FBDE3
	for <lists+usrp-users@lfdr.de>; Tue, 19 Jan 2021 18:43:39 +0100 (CET)
Received: from [::1] (port=57844 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l1v2W-0005Kg-Fn; Tue, 19 Jan 2021 12:43:36 -0500
Received: from mail-db8eur05on2130.outbound.protection.outlook.com
 ([40.107.20.130]:34401 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1l1v2S-00057U-Ol
 for usrp-users@lists.ettus.com; Tue, 19 Jan 2021 12:43:32 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b/ZoIRTeHMbjMDCEi1HIHZUJwiMNh1tWSHLHMlxe755Q8vT6MlPYHjTU1G72PnwwoJdq/87Yxa2G5vxqkZ0sgBGix+9wtJop9Z6j7lbRG70o2KkR4NNOi+2zQpoGNg7EnO+IRSugHim/czWky7Dr0MlLC+Tjeg+mDJT9inNaXFvde2P2AnrVnGSBkBDKi9LNXtulhWOPnMvNh/VkvAmsW9PqXRQPBuTay0q14T5vBqv5y0lDEuk4KRWQY6jVx29jenQFoFaeNFfdE9FQo+pRbljiBg27oEdyRL3BTaKXYkv8/PzR5396e2z8+FrcRw5uzqA7NKRE/jfFwYzH6l7z8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O82iBRRxqYg3TgIo7VR6uYGcnQXUi+6CsGOhkud9p9A=;
 b=EhVTStxXgFbxK5A90uTML7nHawou9AGc/MBE9TTCFLo/NYzJWUYqjEoQDH1LMXyeQ+Hm2bgEKMer/MIW4mMdxt0PSZXhpZpwDzRH0eN7gUIuZulIBiIvZH8ahEgkB3STF6uizTT8ASZpqGAqAI5YRX0bJ8ubcMtA6szop+fj8BDDycuEBKiwJiuHmx/8VTkZgIz5WVkEQZM0/EGR3m0L4HaDJlJkYAmfgeER+0r2ku1+Pi7h4WK7FdeD/QTInN2Ix0JHSCs6kHP+ZQbJ5pt95uHyMXL7UratUAY+twgr0sVELTapQ2g2awtKziRIxol2BjTGH51f/v9Axp1LOfZlPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O82iBRRxqYg3TgIo7VR6uYGcnQXUi+6CsGOhkud9p9A=;
 b=qrFW6ax/sOqobgfqavuIC6nR/N7vsgmtyorBxEa5a9Dog5PPYxVumZwRv9ykIbjkPmffyFAb925M/FFQABVb0oBveIRsm2KQ6Ex/F4OzJUAZFq7FQYiu0hsy+ACf6kkJ5gn4nKltXuxRB7vZxv5IuAYcvEb2WEUvut2k4t85ySQ=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM5P190MB0562.EURP190.PROD.OUTLOOK.COM (2603:10a6:206:21::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.12; Tue, 19 Jan
 2021 17:42:50 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%8]) with mapi id 15.20.3763.014; Tue, 19 Jan 2021
 17:42:50 +0000
Date: Tue, 19 Jan 2021 18:42:49 +0100
To: usrp-users@lists.ettus.com
Message-ID: <20210119174249.2552vsmlnc35d6i4@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
Content-Disposition: inline
X-Originating-IP: [2a02:1811:371b:2300:6644:2368:b158:1400]
X-ClientProxiedBy: PR0P264CA0196.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1f::16) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:6644:2368:b158:1400) by
 PR0P264CA0196.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1f::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3763.13 via Frontend Transport; Tue, 19 Jan 2021 17:42:50 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 87b2612e-d06c-43af-28bb-08d8bca1a447
X-MS-TrafficTypeDiagnostic: AM5P190MB0562:
X-Microsoft-Antispam-PRVS: <AM5P190MB056238BACE1836E256415C04F0A30@AM5P190MB0562.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gJDaI0CntbSaI7QFyd3GO8fpJx0fSeJMlC8iS4TdWwNfC1qKW+XFFN0yUZtr1NJEpfmRGhLDzMAwNOuCZZm4U3iq7qSBZQkz3kRBaIO2vwE5DBeleCRLdw7Uz2dJWwcfN6uBEm0Dxenmo8m3HLw1ev/5BjBHn72FseE1Ia1ue+4Pq2hETFzYGrGmfpGxz3qdOMSsrFhATzHLRuipe2UhFaTpFIyHx6lkVSdQFZgWcIeWLLh63rlkcqgZF9F4mPOnXH72LKOVZm2v/NC7SKULcG//kLjL/Y4k3Y8/IeqByrHiUp6bHzpQbUmY5olJk/I7hWN6QbM4Oz65qPezoaTvoPS+h37Mt5HfQxLGXXgzab4tz87YflczTnYutAdMH3jcwJ+5GvnTOGIQPKxfSOerNw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(366004)(6916009)(6496006)(8936002)(186003)(16526019)(1076003)(2906002)(6486002)(52116002)(498600001)(9686003)(83380400001)(66946007)(86362001)(66476007)(66574015)(5660300002)(66556008)(8676002)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?lLN6gQ0FE19qnbT3Talhk2Muu43dmogS2D6bPV3qWownrXDA+SS0ICe0yF?=
 =?iso-8859-1?Q?bHG5l81Cu+oYJF2B8qFmRuhTjcugmsaTzUjWSlgQDo0eq7s/UI8kxqlr5Q?=
 =?iso-8859-1?Q?LMVm2lm8XNdxAGGQPTy8s7TM0vPlsYkQa4cG6v+BNQhO3d/6K1U7i8K4T1?=
 =?iso-8859-1?Q?LpulBqlwFc3xaEPf8ccRnoGPvpCdqkCVFJc8qoi/54P86GcJ18w+1qo2X+?=
 =?iso-8859-1?Q?gxgO4x9UQ/Ef3jf1/IfnBM1r4zi/Ssj2l/iJI+4EwNtgkS3HyyM2Q7tVXM?=
 =?iso-8859-1?Q?Cgo8yCuQEda1ZlSapoV+QtoHe6vHvEq6e+vKn/Kw40dq+QLl5ejPesLUtV?=
 =?iso-8859-1?Q?bJ80ni4OKOwjMTwy4CK3ZfyKIUlxqIEys9BpD0zFNewo6w5zLLR+7Qv0Mn?=
 =?iso-8859-1?Q?7hd5+HRsIT1DmnDWnrE10lRJBv9ns24501b9gZId1WrviDN73JGer/DrWI?=
 =?iso-8859-1?Q?J5e9kjzYr0f1je0iSpAHFR6YTsSTOhW4+D+YPsSCDtyOgmiMC0++kArkoH?=
 =?iso-8859-1?Q?WcQ/1IvqS3N3ORIy5qmRDzRKR2EK870MfQpdSgLwCYD9QffbpK2FjQ5qLU?=
 =?iso-8859-1?Q?CiwYmBaD1U3Ra4c/Y4cr08oQ0wmvxidMPzzUjb5d54yJO9E0XDmilFmmNx?=
 =?iso-8859-1?Q?KXJrdifYK3GENqF5gINF8jhpR6ygNfMSoWN1Opwa3nW1x/FwX8XG6WsGsD?=
 =?iso-8859-1?Q?bLkffXLSiNP35v6Ojb6WSKcf4q+d+ssB0chQvvU3puwg0sMcKnnMCm6WWQ?=
 =?iso-8859-1?Q?8YYhOS99YCvxSH4SoctZx4CLWj11gmKNk0fS+vJcg0fFzezJkPhuI9dC99?=
 =?iso-8859-1?Q?hrS82O/uiNM7C03XVQJAsdaiCb1nYzvezgv1jA2jyKxlYLQ5jQ6eBXPubL?=
 =?iso-8859-1?Q?vJimLgRsUU4s903IjdPnbnIqJWRwO4SZJgu3CsQycLpk1e9WydSl4aBAc6?=
 =?iso-8859-1?Q?3F7HmdAFRmdwLB/2DvEyUnN2WIs9YDMJvrG71OPdrVpIqfyRQdkIL1da6l?=
 =?iso-8859-1?Q?uEi/sdYYeWn5QyJt2ayCTUFYh9vQs5T89XEdhNCPealm/lXyp6LUyiJUH3?=
 =?iso-8859-1?Q?6uFPJjwLrMcETmaj1N65AWgo/hDnaQVfudoI0LMA49FT?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 87b2612e-d06c-43af-28bb-08d8bca1a447
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2021 17:42:50.6740 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JqQaAWo0+nO4o+PVAWNxYbsU4KnDf/zOCGcLnbZ4e1HCr6VQkxTTU1bpwqjubtZAnrylhyvP27gRWrmCL0NN+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P190MB0562
Subject: [USRP-users] No streaming using OOT RFNoC Block in UHD4
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

I am trying to implement simple RFNoC block in my FPGA image (X310),
and test it using UHD C++ API.

However, none of my blocks worked when inserted between the DDC and rx_stre=
am.
Both rfnoc-example/gain block (from upstream host/example)
and bare bones block from rfnocmodtool (passthrough) failed.

The procedure is as follow:
 1. cd path/of/OOT_Block (gain or passthrough)
 2. cmake -S . -B build -DUHD_FPGA_DIR=3D/path/to/uhd/fpga (upstream UHD4)
 3. cd build; make; make x310_rfnoc_image_core
 4. viv_jtag_program /path/to/uhd/fpga/usrp3/top/x300/build/usrp_x310_fpga_=
HG.bit (or uhd_image_loader + restart USRP).
 5. cd /path/to/uhd/example/code
 6. g++ -g -o test rfnoc_rx_to_file.cpp -lboost_program_options -luhd
 7. ./test --block-id "0/Block#0" --rate 20e6

But it exits with timeout:

"""
Creating the RFNoC graph with args: ...
[INFO] [UHD] linux; GNU C++ version 10.2.1 20201224; Boost_107400; UHD_4.0.=
0.0-4
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0x4577, 0=
xffff
Using radio 0, channel 0
Looking for source block 0/Radio#0, port 0
Setting RX Rate: 20.000000 Msps...
DDC block found
Setting decimation value to 10
Actual decimation value is 10
Actual RX Rate: 20.000000 Msps...

Setting RX Freq: 0.000000 MHz...
Actual RX Freq: 10.000000 MHz...

Setting samples per packet to: 64
Actual samples per packet =3D 64
Using streamer args:
Press Ctrl + C to stop streaming...
Issuing stream cmd
Timeout while streaming
Issuing stop stream cmd

Done!
"""

It runs OK using "./test --rate 20e6" (without inserting
any OOT block between DDC and rx_stream).
It also works using an upstream provided block (eg FFT).

The rfnoc_rx_to_file.cpp is slightly modified from upstream
(since upstream does not handle argument "block-id").
The patch is at the end of this mail.
It should apply nicely by piping this mail to patch or git am/apply.

Does anyone know how to solve this?

diff --git a/host/examples/rfnoc_rx_to_file.cpp b/host/examples/rfnoc_rx_to=
_file.cpp
index 2d648c10d..64d177d79 100644
--- a/host/examples/rfnoc_rx_to_file.cpp
+++ b/host/examples/rfnoc_rx_to_file.cpp
@@ -479,13 +479,22 @@ int UHD_SAFE_MAIN(int argc, char* argv[])
     //}
 =

     // Connect blocks and commit the graph
-    for (auto& edge : chain) {
-        if (uhd::rfnoc::block_id_t(edge.dst_blockid).match(uhd::rfnoc::NOD=
E_ID_SEP)) {
-            graph->connect(edge.src_blockid, edge.src_port, rx_stream, 0);
-        } else {
-            graph->connect(
-                edge.src_blockid, edge.src_port, edge.dst_blockid, edge.ds=
t_port);
-        }
+    //for (auto& edge : chain) {
+    //    if (uhd::rfnoc::block_id_t(edge.dst_blockid).match(uhd::rfnoc::N=
ODE_ID_SEP)) {
+    //        graph->connect(edge.src_blockid, edge.src_port, rx_stream, 0=
);
+    //    } else {
+    //        graph->connect(
+    //            edge.src_blockid, edge.src_port, edge.dst_blockid, edge.=
dst_port);
+    //    }
+    //}
+    auto ddc_ctrl_id =3D ddc_ctrl->get_block_id();
+    graph->connect(radio_ctrl_id, 0, ddc_ctrl_id, 0);
+    if (!block_id.empty()) {
+	    graph->connect(ddc_ctrl_id, 0, block_id, 0);
+	    graph->connect(block_id, 0, rx_stream, 0);
+    }
+    else {
+	    graph->connect(ddc_ctrl_id, 0, rx_stream, 0);
     }
     graph->commit();
 =


-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
