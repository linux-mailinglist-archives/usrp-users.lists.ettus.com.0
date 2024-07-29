Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E7293F61A
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2024 15:03:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A1F103857C3
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2024 09:03:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722258224; bh=zYiS7TYLlqqS73BT0p9YzaRZbiam2clTs52xkSOq7i4=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=CYEZYe7TcWJAt/kg4f6gX8a3WcWdZc1cSzCUbBIbtgnmJuAeMUaGduBp46sytlg5s
	 GlyzuPxQqvh3xAyxakm1waZ4buHfEf/YhQKvtxbe2B23bMUhyELrCjtxD0X/sxDHMP
	 3fmvJIyA2m9ytRWTh1tGZQb8gm+DMjbyuQy7s7ybamnHXT322nkbyxj6Ez3srDCKDg
	 BYxP6jRnncLWIe2oG400bROXxW1UW0TEpj8MoIrlepOwE1TStmWsG+vcrsFb185owM
	 51nn+EC/Q3C9q6dLJLDzh25zlyQgWi+F057OtrY3e5Vtr4bAhKKw36p8WeNYF/X39X
	 yfqYHFA0+ClNA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8B3153857C9
	for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2024 09:03:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722258203; bh=2W7OasrqjkK/0zPIPxuYmGhl4jDSpzDny9bzBZ7LqBg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=rdfgHI5QcG32Axh5hgvVNXAdqGAMoU2WH1nBGp8MCfxWUhLGFasLv8bBuzupqDRui
	 WvAlDh6zLgTGGCDLxMpFgFCotMEd9cW/VtF+sc6LD9J21aidnpdQZsI2+X/18NcOSR
	 EmH8GFRYvhsdESbcfQp86tQf92cYDAhOJipi2Kj886KAcUyGdW4CSbrNFjodRfiR0K
	 9KIJFP9l6aPWq9KECGsvSpziWg6sTwD2/JHuxxAK2SGHHeaExK/9ZbW5Gat7qZuNtx
	 XpE71q0KWh0S3agm35n5OM6lDQHkoelQc3dsrDcjilPUSwzMei9dy4nmGqEC8C/l8S
	 Ye/s7aCNpvCZA==
Date: Mon, 29 Jul 2024 13:03:23 +0000
To: usrp-users@lists.ettus.com
From: sebastian.schroeder@hhi.fraunhofer.de
Message-ID: <WgydSVdMii5oOWtGBBmzrc97MI4eBM6rO3U4MmzHto@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 9531c847-a40c-45ed-b81c-61701f8a3565@ettus.com
MIME-Version: 1.0
Message-ID-Hash: AB3SXTWDEDFI6CYPUNSO2TT4COG6VZKX
X-Message-ID-Hash: AB3SXTWDEDFI6CYPUNSO2TT4COG6VZKX
X-MailFrom: sebastian.schroeder@hhi.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reaching high signal bandwidth with X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AB3SXTWDEDFI6CYPUNSO2TT4COG6VZKX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1798179590630812442=="

This is a multi-part message in MIME format.

--===============1798179590630812442==
Content-Type: multipart/alternative;
 boundary="b1_WgydSVdMii5oOWtGBBmzrc97MI4eBM6rO3U4MmzHto"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_WgydSVdMii5oOWtGBBmzrc97MI4eBM6rO3U4MmzHto
Content-Type: text/plain; charset=us-ascii

Hey Marcus,

In the last months I tried to develop a simple testbench at high bandwidths with GNU Radio and the X410 for my bachelor thesis. 

You are right, the problem is twofold, first the source has to keep up with the requirements of the source, and second the USRP sink has to work at the throuput rates of the required bandwidth.

The first can be tested with the described method to measure the generated samples per second with the Probe Rate block.

For the thesis, I also did some single block throuput measurements, like you also once did for the GR source blocks (https://wiki.gnuradio.org/index.php?title=Random_Source#Computational_Performance). 

The file source worked quite well for me with up to 5.3 GS/s (!) from a M.2 SSD or a RAM disk. 

All other random sources (Random Source, Random Uniform Source and GLFSR Source) also worked well with over 400 MS/s. This is usually not the bottleneck (with a good Computer), so I tested the USRP sink directly plumbed to one of these sources. 

For the second problem, I first made sure I had a working setup with UHD. I validated this with the benchmark. To get no underflows with UHD, I had to use the DPDK and all the tips from the knowledgebase.

As you say, there may be some suboptimal default configuration of the USRP sink block:

For example, I wondered why the GNU Radio USRP sink block options did not include the --priority "high" and --multi_streamer option from the UHD script when using a source and sink in the same flowgraph.

I also wondered what might be the best buffer size of the blocks as it had some performance implications. 

In addition, it was not possible to have two flow graphs, one with a USRP sink, one with the source, to use the DPDK in parallel.

All in all, I would conclude that GNU Radio in its current state cannot deliver high bandwidth rates (above 61.44 MS/s) for the X410 or X440.\
\
BR,\
Sebastian

--b1_WgydSVdMii5oOWtGBBmzrc97MI4eBM6rO3U4MmzHto
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hey Marcus,</p><p>In the last months I tried to develop a simple testben=
ch at high bandwidths with GNU Radio and the X410 for my bachelor thesis. <=
/p><p>You are right, the problem is twofold, first the source has to keep u=
p with the requirements of the source, and second the USRP sink has to work=
 at the throuput rates of the required bandwidth.</p><p>The first can be te=
sted with the described method to measure the generated samples per second =
with the Probe Rate block.</p><p>For the thesis, I also did some single blo=
ck throuput measurements, like you also once did for the GR source blocks (=
https://wiki.gnuradio.org/index.php?title=3DRandom_Source#Computational_Per=
formance). </p><p>The file source worked quite well for me with up to 5.3 G=
S/s (!) from a M.2 SSD or a RAM disk. </p><p>All other random sources (Rand=
om Source, Random Uniform Source and GLFSR Source) also worked well with ov=
er 400 MS/s. This is usually not the bottleneck (with a good Computer), so =
I tested the USRP sink directly plumbed to one of these sources. </p><p>For=
 the second problem, I first made sure I had a working setup with UHD. I va=
lidated this with the benchmark. To get no underflows with UHD, I had to us=
e the DPDK and all the tips from the knowledgebase.</p><p>As you say, there=
 may be some suboptimal default configuration of the USRP sink block:</p><p=
>For example, I wondered why the GNU Radio USRP sink block options did not =
include the --priority "high" and --multi_streamer option from the UHD scri=
pt when using a source and sink in the same flowgraph.</p><p>I also wondere=
d what might be the best buffer size of the blocks as it had some performan=
ce implications. </p><p>In addition, it was not possible to have two flow g=
raphs, one with a USRP sink, one with the source, to use the DPDK in parall=
el.</p><p>All in all, I would conclude that GNU Radio in its current state =
cannot deliver high bandwidth rates (above 61.44 MS/s) for the X410 or X440=
.<br><br>BR,<br>Sebastian</p>

--b1_WgydSVdMii5oOWtGBBmzrc97MI4eBM6rO3U4MmzHto--

--===============1798179590630812442==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1798179590630812442==--
