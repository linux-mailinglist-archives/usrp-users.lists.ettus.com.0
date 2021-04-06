Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 40696355963
	for <lists+usrp-users@lfdr.de>; Tue,  6 Apr 2021 18:41:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DA661384294
	for <lists+usrp-users@lfdr.de>; Tue,  6 Apr 2021 12:41:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="Zh0v5QOj";
	dkim-atps=neutral
Received: from EUR03-DB5-obe.outbound.protection.outlook.com (mail-eopbgr40129.outbound.protection.outlook.com [40.107.4.129])
	by mm2.emwd.com (Postfix) with ESMTPS id 20EF13836EF
	for <usrp-users@lists.ettus.com>; Tue,  6 Apr 2021 12:40:23 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mpdw5+NUBSydNj/knFsmFoEtH5rXXgztUiRJoesXUH2lk4BzrLknhnP2WOe+lXLi1UUD1vIIqin+v/UvyibkZ0NWfVcnZl5GDJOOqw2VksvuqeTUHgSfUPi3BBDMJpjCPe600opH2cioztxwNnQmlbRCCEb7chhhUdRaWXs+KQu2uEhGS7S4SQyn4zy4aaYu8dZkBrWdZqbyCVcVhxXoayw5QgRivmqRqNNpYly8EZ9gfJzQkHrwMgXsezh3cMIoFAiJf8An6Pf33oxaYg4Fgh9926F0OcvVS9KW/Dq8jsFwTyGM81t0qxBbhrPTutLy0ZgJvaBYoO0ORYm26FXZQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=StTKEPuIrAgNea5DR5MtZM+keJn+JZZJpIa370nGkfo=;
 b=AwOov33t9hj7jvPQwzTCMz7r2dew1qq/2mFgbZGIGjCPl3rcNTgKM3G4Pk9r+v1XhPf46w9VlZPWEvg/P+i6qCUvImYtJFuQFaMwIKI6t+KdBWy88sLt8L4FWGFDMxdIKB+qnVlIDCvvHShwRTw1ZYWi3VNJvBL3TU+BWDoRG/Z/2oMW49W3yRgjY6DAP5XGKDWBwwJkZjby2tHHiSk3zgsraIVh2cQsoeJ07ejKLl1Tbdf68/e6XzML523as78mGIlHBhHCkueQgLVrpz84lFYl5j/RqYd7FYA1fi6S6/EZP3BqtfRcYTYJ430BI3lsAUwghsG/dOVGVezHFm9oxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=StTKEPuIrAgNea5DR5MtZM+keJn+JZZJpIa370nGkfo=;
 b=Zh0v5QOjMw0fP7MN0ixpTBDdx6zyDvp5+XYe+rkCdQjyu5Qf4kotSvRgC8RMUBJcmA7zsxSrFKuGKUNhonFedmq0noGRf3uxf2XwBK+PWK13nRaahjNuHpRboFBOenaeSEgK0L1WWBcekGY9W7wqAXcbVs2pMJE536GeSSza1lw=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM7P190MB0599.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:120::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.27; Tue, 6 Apr
 2021 16:40:21 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::d401:36d3:1d0:a2e5]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::d401:36d3:1d0:a2e5%6]) with mapi id 15.20.3999.032; Tue, 6 Apr 2021
 16:40:21 +0000
Date: Tue, 6 Apr 2021 18:40:20 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20210406164020.jdcuvfofw6s2td4p@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
Content-Disposition: inline
X-Originating-IP: [164.15.78.67]
X-ClientProxiedBy: AM3PR07CA0109.eurprd07.prod.outlook.com
 (2603:10a6:207:7::19) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.78.67) by AM3PR07CA0109.eurprd07.prod.outlook.com (2603:10a6:207:7::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.13 via Frontend Transport; Tue, 6 Apr 2021 16:40:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f1552df3-ad72-450b-d06c-08d8f91aab27
X-MS-TrafficTypeDiagnostic: AM7P190MB0599:
X-Microsoft-Antispam-PRVS: 
	<AM7P190MB05994CC079D92E4B86E04407F0769@AM7P190MB0599.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gDSrDwVVMX75vRlylv3JbRjMEQe1OfgP3YovleclOI7nILVPBhu3biXL9pAK2VlTNlHBHoT5OF2J6+Bntl1+YTZ/o6Zfs4yloVjUOwsJ67+YjOEaPll2jnLOJDM10heSaeaJfdZA050/wkc5l0xTxBbhvhYjecz2vOuQk0/Y5OzTqiOCYF70Wtl+AwUzd1mAAcceJwTs1kiJCZJ7O9HXQ0vVSPNQDblF2DTQ7GOKESvryvzS/al4HZzDu4cm7yxAKMQjjPIT0x2X4AZbnb45wVPxzUvigT/FS8JFBLONVlRaBNdU/5CGUc/+ypfVqQRAXDsxs2RP0Wgwu5EDMocXc5AZfKjBevc5WcEmpM+KR7mzQH7s0RRPbXg43/cPnx634faw2iSmUqe9r8jtpJxDlIyASXuRyCi4AhmbxDywOACzUx//N5GHnS9SdV2zwpJ4NlszyaQdZE1haRBJwVQSwI2g90+CWALfZ0hKEJUI8Th/NYCYUBDYqxzjAakKj4UVLAplylBEq1BZ+k1qNDtUwaueGarR8veQwr+vmO5TQeJYQQ8uFEVRrWVlOBzARI31Uu9y/wJRkW6xvdyGM9cBYcRs4+s4WCqnhceCDDt5Es+IvO9wjCDSBbVnNzZpm5tubsfQwyfkD/65c/xnnNXij/h5SVgeFi0ZtHKfULAMnaz3ok1DRWdxMzFi9EXGuou6
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(7916004)(366004)(136003)(39860400002)(376002)(346002)(396003)(316002)(6916009)(52116002)(786003)(26005)(66946007)(86362001)(956004)(5660300002)(2906002)(33716001)(8676002)(6496006)(1076003)(66556008)(16526019)(66476007)(9686003)(186003)(8936002)(478600001)(83380400001)(6486002)(38100700001)(38350700001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?iso-8859-1?Q?bHzjRT5f7uT/jg2v+9G7Pp055r92BfQIIgQJVOxszYM0NoPAqSHhygr4Hl?=
 =?iso-8859-1?Q?tjq6pdjhsmQNu3QiWmsrzG4b9MPL3kZipqZpLVkBbNKOINH8D1Qavusa18?=
 =?iso-8859-1?Q?F1RfZiX4Sl0odj202YXFHnPUboZ8Mo8PXn2dikjejtM0gHplFm4npGEKpW?=
 =?iso-8859-1?Q?gi23B3NZPhKn8UWb33UqW3FzWofBqmTHWH2c2UqC4e6j7a34HRuTY7J/7h?=
 =?iso-8859-1?Q?t0Ga0Ua8Nkung3HhSaVDTAgTn9hfwHiPqsmz4v7RNlo5cKFbiElI202ZPz?=
 =?iso-8859-1?Q?WPUykj+huy02y3BioccpevUPe33oL6pJr4w5qcoQ2uxAaF9PnKzVMC4BgS?=
 =?iso-8859-1?Q?VgxP+kuVhrSVUMIq6r5riz1+6sm4D80Gt0ohwhuaCdHlH2J1ckKPaAPGS7?=
 =?iso-8859-1?Q?ps9ywFRiWxsqv138eKMG2Gm8BguS15MXOPFcuXI1ai1VGxARQKc6FauVXF?=
 =?iso-8859-1?Q?T1HU2DOa69pYlOWgy52Pi1rBwVDUGzO2MfU6Ntp7fg2SX7m2jxsFEXzKza?=
 =?iso-8859-1?Q?MW+bxHScyy8mhdo3YCarrTm30YJgIWu3E/fZsJF4/KzcDk78NrAnJKbtUh?=
 =?iso-8859-1?Q?ZhDIUyoDoXON46n0n4BBnJX+9Iy4mDkULgp9I0rTGfy+DhKhneAIbbQxrW?=
 =?iso-8859-1?Q?VuPNKSs+lAP32/os2pWRw1U+S+XZcOVmiiqwUBbcdbx7ri9iKyZ0OuinbP?=
 =?iso-8859-1?Q?bzad2zOdm9p6NK2s4FcnQYojPKc4rzBzNBmJIFWqGMHpCn2j2GzSteUD0H?=
 =?iso-8859-1?Q?/V2WUaP3I/vbaSdkscGBorHQfPUVVJYszaOQDE+WEs0c0KPaYKL8dgOA1l?=
 =?iso-8859-1?Q?MJVuEhRxQU54AqRlvvKns3fRFndYfH9ZZ5CyHRqrpl3hgQXo4IEdBLs33/?=
 =?iso-8859-1?Q?q2UZIR4EmfC/IN8nW434L8LufFqvBYb2Ov5+lR34q5+YA4WUmJi3i+1QQ/?=
 =?iso-8859-1?Q?+pz+htnl3DRsQyXGgCCyftPAVh5zIlcQquFZ8/XQpy/ZsLaSelLEuSp0i1?=
 =?iso-8859-1?Q?4yO/19dPdScC0dWAEp+6WWggwJ+vA3xQyLI9AChJ7zNGtnovFUh//Och+6?=
 =?iso-8859-1?Q?NjYj5Au+8I8RB2OMiTj2dSBLZqh6e4I+avkdBVB68Gja58NEmR6oZ5UcKp?=
 =?iso-8859-1?Q?Pz+NaFb72SP/iI0vxvGaUciwlxBm/WtZ/HKmuyRF9onCzI64GTTRc8aag/?=
 =?iso-8859-1?Q?c8SNPqwynAkjKPWhQWjAxOg1gnxIjCz9l7cvMmcUiKpJ94ozjpvpeCzzlD?=
 =?iso-8859-1?Q?R7EzJz6mSTD04+CaS9zeJYAIZA72PVC0I7kI8Xb0pxewI6NGnbFyEliYhc?=
 =?iso-8859-1?Q?FJS9u9RuAmtnEXUrcgeBPbb7yqqrmVnN8piEgmsZKyUK8wQJK3KPMIRqef?=
 =?iso-8859-1?Q?JWwaYU8f2W?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: f1552df3-ad72-450b-d06c-08d8f91aab27
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2021 16:40:21.0303
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eBegYtE2UE1JtDvdyGzr+NUZyNPjGc50qP0MOy2jJRyQ9YPkbGdkMoeJTJJFiGutx5fx0B4HFl1cqayHaJEb8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7P190MB0599
Message-ID-Hash: 4ONFZXNPFGZ3JQ6TKXWUQN7LZWFMIXBD
X-Message-ID-Hash: 4ONFZXNPFGZ3JQ6TKXWUQN7LZWFMIXBD
X-MailFrom: Cedric.Hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD4 Replay block on E31x
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4ONFZXNPFGZ3JQ6TKXWUQN7LZWFMIXBD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear all,

I would like to build a FPGA image with a replay block for E312.
However, there is no dram_clk on this device.
How should I instantiate my replay in my .yml?

My modification so far:

diff --git a/fpga/usrp3/top/e31x/e310_rfnoc_image_core.yml b/fpga/usrp3/top=
/e31x/e310_rfnoc_image_core.yml
index aa464454e..3e649caa1 100644
--- a/fpga/usrp3/top/e31x/e310_rfnoc_image_core.yml
+++ b/fpga/usrp3/top/e31x/e310_rfnoc_image_core.yml
@@ -20,12 +20,21 @@ stream_endpoints:
     ctrl: False                     # Endpoint passes control traffic
     data: True                      # Endpoint passes data traffic
     buff_size: 16384                # Ingress buffer size for data
+  ep4:                       # Stream endpoint name
+    ctrl: False                     # Endpoint passes control traffic
+    data: True                      # Endpoint passes data traffic
+    buff_size: 4096                 # Ingress buffer size for data
=20
 # A list of all NoC blocks in design
 # ----------------------------------
 noc_blocks:
   radio0:                            # NoC block name
     block_desc: 'radio_2x64.yml'     # Block device descriptor
+  replay0:
+    block_desc: 'replay.yml'
+    parameters:
+      NUM_PORTS: 1
+      MEM_ADDR_W: 30
=20
 # A list of all static connections in design
 # ------------------------------------------
@@ -42,6 +51,10 @@ connections:
   - { srcblk: radio0, srcport: ctrl_port, dstblk: _device_, dstport: ctrlp=
ort_radio }
   - { srcblk: _device_, srcport: x300_radio, dstblk: radio0, dstport: x300=
_radio }
   - { srcblk: _device_, srcport: time_keeper, dstblk: radio0, dstport: tim=
e_keeper }
+  # ep4 & replay0
+  - { srcblk: ep4,     srcport: out0,  dstblk: replay0, dstport: in_0 }
+  - { srcblk: replay0, srcport: out_0, dstblk: ep4,     dstport: in0  }
+  - { srcblk: replay0, srcport: axi_ram, dstblk: _device_, dstport: dram }
=20
 # A list of all clock domain connections in design
 # ------------------------------------------------
@@ -52,3 +65,4 @@ connections:
 #         - dstport =3D Clock domain on the destination block to connect
 clk_domains:
   - { srcblk: _device_, srcport: radio, dstblk: radio0, dstport: radio }
+  - { srcblk: _device_, srcport: dram,  dstblk: replay0, dstport: mem  }

--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
