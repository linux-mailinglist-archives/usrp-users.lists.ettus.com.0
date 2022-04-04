Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E67F4F1107
	for <lists+usrp-users@lfdr.de>; Mon,  4 Apr 2022 10:32:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8DF4D3846B4
	for <lists+usrp-users@lfdr.de>; Mon,  4 Apr 2022 04:32:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649061158; bh=qeqJ5pRQ54HXMC1xodbnBudgGNHTCRZXGuyE7WerBUM=;
	h=Date:To:References:In-Reply-To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=NElaB4tmGETRxXmF/AWLyawZpEAJjCZtRKXRRXQFaDr++KGbans8dr/fhDKY8Kpbv
	 yOzWC0ZAYrk1ueHhIlwdD0TLmlb1ABFcengLgdDWZN+zDjxPoHtF/PL4M0BKVgAjq5
	 nOOumceWvoJBUKPFpYhyropCuhac8hHCvUAHMF4eb27Us54p8yiQvDbHHQ5UGb+3Qo
	 dFYzFeZ1yRIPtWGvN6Ge9CcETpe3xJxPBdJKO3WZjbmUh86WsVruqRl8PVrQ0xmYou
	 CfmqHb6Q2U80O9bWmX3aDgTyGD8CQ2g3/rUdogLxq/HjyRoRrEEP/GZwjNFZOg0G4C
	 GS4UBp+W+aU9Q==
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (mail-eopbgr130090.outbound.protection.outlook.com [40.107.13.90])
	by mm2.emwd.com (Postfix) with ESMTPS id 7762F384642
	for <usrp-users@lists.ettus.com>; Mon,  4 Apr 2022 04:31:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="YSJz4+tZ";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m/vUAdk1K7AZcIJPXUvwwWknCKDbkTpMJNcnMuM2BctFKuLcBR+zIoGcMzsvQlY6Q4zZbchuhBwWiZgJxlpH9vcPYx8uDL8GswfBJ67A2xKoq7ugSl+8nMWuyvXlLsJWsnsHLLBPVmjlq1hAS8KN4hWuZqxgjIeu7iAWkwv5BOa8RXmkWp94wDdyTAr2WHar2SbFmUmhTzQQmvZzjZNLiKOFnU0o8L/f8UZPk4/3/dgbUtDV7z5seI3dHyhicw7v1uJn7YBGLNMyXdVyNl3ZvRnWVYbE3eTcfYOL+hm5WOnkHN+0TKBOxPrC6pyfra0PssTuqw/Shty0wzCJpZWmjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ctzn+5jT7N9TMytVsR1VQYJs2C2uOf9T35lXtUYz59o=;
 b=QhxHFSvsYooRcRMe7WFgVnta4VGxzViBGPYISmzlPRuNlGwLdpEKzELV72VdzSCPTqudVvMxgyQQP9s+DzEviEAhYfJMP8IZvBiufMWrFAJhVap9EpjRnyfj8myAnqQH8NmvdVNA+qXc7DUEsbO/nC0l/XWi0/JqPg7N/hpfEPZF2QFrMBdy0ICZ+OMUdNjOIRCe5Sc/OHEXBAUFZyg5CBWF9Hd1RKPFhpKbO0JDsZ628eCjJjt5z936rQsOud/o9Ck78ASWW5TVDrr3uMec5nEaVvUEm2jQFkaXiX2KlAjCV6ld6T27CI0ydurkmuz39JotM6lqy4b3JfEcWPHLnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ctzn+5jT7N9TMytVsR1VQYJs2C2uOf9T35lXtUYz59o=;
 b=YSJz4+tZDj07XqUwMH2IHLdGx2MIhpPYESf1z6gd1qCMEhV0DVi4NYyYxFwBkie8Fa5oTMNa2w4Z48+Z0xVj1nHR1bIdNdZ+YV9XAvTUkSjK7l6Rze14aXzqZ+HoHS7jmCyAMeYIeMwPqJy8MEKUuUa8pngZChsHIqmnNOb1wJ8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM9P190MB1588.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:3e1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Mon, 4 Apr
 2022 08:31:43 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::4418:caf8:a00d:5931]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::4418:caf8:a00d:5931%5]) with mapi id 15.20.5123.031; Mon, 4 Apr 2022
 08:31:43 +0000
Date: Mon, 4 Apr 2022 10:31:41 +0200
To: Rob Kossler <rkossler@nd.edu>
Message-ID: <20220404083141.rylumcponsws6npm@barbe>
Mail-Followup-To: Rob Kossler <rkossler@nd.edu>,
	usrp-users <usrp-users@lists.ettus.com>
References: <CAB__hTSB8LGZSM2NzwmYXSZhSR_x4+dDWP=0VKizwMAJ+Y8_DA@mail.gmail.com>
 <20220401165020.kdzbyckz7xrxhk5o@barbe>
 <CAB__hTTF4xa=bdJ3QwOySCiNYDG_RZWaCebETCS7bvA=ORDwEQ@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAB__hTTF4xa=bdJ3QwOySCiNYDG_RZWaCebETCS7bvA=ORDwEQ@mail.gmail.com>
X-ClientProxiedBy: PR3P189CA0015.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:52::20) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e13d2a71-0258-46e4-b450-08da16158c3c
X-MS-TrafficTypeDiagnostic: AM9P190MB1588:EE_
X-Microsoft-Antispam-PRVS: 
	<AM9P190MB158866755557D60C1305F4D0F0E59@AM9P190MB1588.EURP190.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	zoXLeojtyMyG2wKZ4YAuMdwR3MsXsnPvWYSn0KvR3wVfmwVCv/uS8TVrQKZsHe+TGfMxRFDP9MUDnFCx1DOGlL20DM+lC69J2uQkrRp9Y/Q/HajGDrjzeJqoZ1sEzov3wisu1jaQzUqN0cNpn9wvGGESPC44GQdxuMhZ10M6HjEZ+xrfpZYwmyaBUtHS4O/o+aouQ2M8NuWEmd43PZnwm/5S2GHdfockm4Y/0N29R2dqMXXu2+VA1sDEuxKeujQBP2q0E5k2y8+OtGoFsNvhLt5lMnQp3YnouAPO6khOwjPnpeuqjo6vUuuVI/i+aKVEh6O2IzYA5C/vXCudKrskW/R96gkgYclnXaC4BSTwqy8hlysa3BaLjEkD7rorybYQtWOHtmTDIlSFi6bDJ519amRxUzS4vzVX02TUii+/Xy0L5ndvv8lvZrBPe6jY3xhT1Xe8mylFgHd2rOb6MvlgpA45FPm8zeb+YWqoCh8d2LsWYMSV3quq99SF2j/hXBPOZgP0Ui1X0/Fd5s5J7lI52bnI70q0iIE6Ug8m0ru/LQJD5T546LJlvJ8IHWy4b8tFSAXfluv3imuKtDC3COuU3+jtUpdCJrLKhYORp2SmMMtF1GM9qyvrM4kG6QWwoOdmYVsLUEmXnE2KdfENpYK01n5igyzNv5IXu9Z9zJj+m79fpCRe7UcUIrL2uJVX1DazYUB1+ADro6jp9QVycATY3z9ht80cNJ0YPS0/RVb4Mjg=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(7916004)(4636009)(366004)(316002)(33716001)(508600001)(66476007)(66556008)(786003)(966005)(1076003)(6486002)(6916009)(4326008)(8676002)(186003)(66946007)(66574015)(83380400001)(38100700002)(5660300002)(52116002)(6506007)(53546011)(2906002)(6512007)(9686003)(8936002)(4744005)(86362001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?6jvO4Fx2fQuL17CtQLNqqlMv9ns3DHL4GK/7950gsUJkiKL3XagFNZJq0H?=
 =?iso-8859-1?Q?+TF4CELAToT4kyJK1iBUck4xk5Gj03wPW+fwO1OMSPNhibUJ9Fd8djALJG?=
 =?iso-8859-1?Q?bhuUMBdI2A82PDJk1245wsiiNRwLFzjfIKHlvDl3A9HWd26YzAWW7qx5Mq?=
 =?iso-8859-1?Q?7XRwnV09PsGJICwkWSnaw0kkvCmu+BeYFFsKDDOQ9RWruzi7IdwYNkyx17?=
 =?iso-8859-1?Q?W7Jxg7Vu87uqoWAHD14S4d7JXUzh6zHetgWwV60yUT3qLcJNzVn9duZdy3?=
 =?iso-8859-1?Q?qeVt/+fBA2+KjOCn+U5kVxx8tbGcB7ykpspCF9euoHrcHMMTcodkkRoRLQ?=
 =?iso-8859-1?Q?zlFM4JC15OKMegc7V6fti8LLSjTytYJmkrcPiRlafLf4Zu/GuH+a87Uz/r?=
 =?iso-8859-1?Q?hWgwBwW9rGDg5rTxcguvDEFCV+wMpPbH4NkT0lTDufHxA5/chASU3sH5HK?=
 =?iso-8859-1?Q?p3v5p1Yc9w4phnjpgDe9q/NFhETFvlpe71cFc5yRGBkjXmUnHsbr6kmO10?=
 =?iso-8859-1?Q?KKQ+ETsjqQTsQ2Lol9vUxNwBNPhAmvuwE1dZfrwwEeIUfyoL4c2SfMm5Af?=
 =?iso-8859-1?Q?PTf3UPUrJtLry4dZbMTtwm2ItwEBibHPBpa3COB4YrGnr6KxvkyMb9iM/h?=
 =?iso-8859-1?Q?y6wwkYtwgMDL8ciE/qVYXjlw7ENWGi3shBxdGXb0S7TStmrgcyeq6a0nak?=
 =?iso-8859-1?Q?19LCrZtSNWz0aBv4h/49cKWdqZteF4jpHb9T5q302gWZO88tg9936kykbC?=
 =?iso-8859-1?Q?MkgIIbPmFZuDQbUwK/F6gXNcNVwLQDNWMj6SOheneKOF6/PB8bz+QGq0n4?=
 =?iso-8859-1?Q?DIEqgPaBx9UhiP6oWFFOiOc+QZyZEfvSkXtxbrG4wctRCWDuYLRPuqPWaz?=
 =?iso-8859-1?Q?XgHkujZ8UhqMCubzfFBblfezkiiItiDWO9mu3VuGcbqNfLi+gV8VFKIQTl?=
 =?iso-8859-1?Q?LTaajFFudV9qpo8ftu30Tm4T77tLgGjosDplONIDPdT+PIev/yAp/3T8oi?=
 =?iso-8859-1?Q?XxSwBLIH1wz3v+KSqw0QjbodJ5EaaklTftlTepKgLHzgMIVAp8kC+Axi1Y?=
 =?iso-8859-1?Q?3+g6QJSXKhd/GwW70b+VbH8vvXqfVOM1iZ2Tm4iScEmC3LdsJl43KuB71C?=
 =?iso-8859-1?Q?vLdMpgpRSl5oZyPPqaBHxxQtt0m3bTsePFyxZeMGTyLLldN0B4rpo9Z7g+?=
 =?iso-8859-1?Q?gPjyfZSrktHynTQZ7vTsXDcmHnOYHAvTzEQxEES+S92jsifjtRpq5QnbLq?=
 =?iso-8859-1?Q?bRtC0oXLFHDHtOqIJUidjxtG8BEN4dD2M4iM04RjeGbfnmsQhKde+Xyl1S?=
 =?iso-8859-1?Q?KZBT22Hv5Yn4Z3UiFJ7MM5LNQn3kN6YHGif/fmcN8sfiLRTfWAacH4I3oU?=
 =?iso-8859-1?Q?Q9sM+pgsfgWNY6imorvEyJciEmKOcUKFQHO5Z6FSruNDL7r/+yB+HiGcWp?=
 =?iso-8859-1?Q?ipHik3XcqbhpG+vqGjUcir4+ipVUBJm38vb2Vnpln1sXmNpHByJ+UpQ8Wt?=
 =?iso-8859-1?Q?3WQFVjG4eQiapnqWL0MQz8WTbggEHT/xYHdCmltkudWBoqfXfZqgO326+V?=
 =?iso-8859-1?Q?7fv4vMXiI2W+QotaxVr1/wwoiuAIfuHFFIWw8nxteiHil00jsNjoM6UbvP?=
 =?iso-8859-1?Q?joIwwXa8OCaXP/8eQNyq9s+exfpYnVEvXfdzwJ4vUpSWlO7oaI4BgIgVu8?=
 =?iso-8859-1?Q?MIKrVuMS+i/kZGSGPqZ1ihVRoj0h7j5trtTH4d37X9K+C+BlAaWdjLjPaU?=
 =?iso-8859-1?Q?+4jgtz9aqhjf4v9ntiUXArMK7RVVDyOIhDe/VFf+oSxXjPv4hc6a5BF6lZ?=
 =?iso-8859-1?Q?6Sg1oMD85wIL6Z8LrjurFgJpa2/PNR4A5m1f1bPSQOcIhFX3UJXk+9itIV?=
 =?iso-8859-1?Q?yc?=
X-MS-Exchange-AntiSpam-MessageData-1: WvRh8Atxiba7yrMBXoM6DcAVuq2sUab00p0=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: e13d2a71-0258-46e4-b450-08da16158c3c
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2022 08:31:43.0977
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lC/m4NniVyNIY35EePDoQPEZbOVNL60kQr9FuedGBRiY2h/xA4zQYQUGKKD7OTYLVz+68fGGNKTyB1WkLoy78Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9P190MB1588
Message-ID-Hash: YPSSHWGRGLZ7LJTM3VXZIDPU4FYDSVC7
X-Message-ID-Hash: YPSSHWGRGLZ7LJTM3VXZIDPU4FYDSVC7
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Copy file from N310 to host, slow transfer rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YPSSHWGRGLZ7LJTM3VXZIDPU4FYDSVC7/>
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

Hi Rob,

On 01/04/22 16:27, Rob Kossler wrote:
> Thanks C=E9dric,
> Yes, the CPU is at 100%. I am unfortunately not fluent in python and so I=
'm
> confused about your suggested non-encrypted transfer.  What would I run on
> the N310 and what on the host in order to transfer the file?

On N310, you run "python -m http.server" [1].
It should printout that it is listening on any interface (0.0.0.0),
on port 8000 (to use another port: "python -m http.server <port>").

On the PC, you can open a web browser, go to http://<N310-IP>:8000,
and should get an index of the directory
where the python server has been started.
wget seems to be a good candidate (e.g. [2])
if you need some automation for downloading lots of files.

Please note that the connection is unencrypted
and is available to any device that can communicate with the N310.

[1] https://docs.python.org/3/library/http.server.html
[2] https://apple.stackexchange.com/a/100573

Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
