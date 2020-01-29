Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6784014D00D
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jan 2020 19:01:58 +0100 (CET)
Received: from [::1] (port=53646 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iwrf1-0005NE-4j; Wed, 29 Jan 2020 13:01:55 -0500
Received: from mail-lf1-f50.google.com ([209.85.167.50]:46461)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <wandrewp@gmail.com>) id 1iwrex-0005Jb-HC
 for usrp-users@lists.ettus.com; Wed, 29 Jan 2020 13:01:51 -0500
Received: by mail-lf1-f50.google.com with SMTP id z26so285340lfg.13
 for <usrp-users@lists.ettus.com>; Wed, 29 Jan 2020 10:01:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Z0M1hMYOUYrbVkczMMt9QEkxY3X5kYx56clVsyirKnA=;
 b=L3Hs2q5QLXvLJL3baf+ZhNCfdZnOIpyUKiha3HB0hSW7I+0hTPYToFKSdgbAAdoogS
 6x824qpp3HeOtQ3ONJllU5mxQ1Vw/nSs9Ez3WDvQTJpdeGTrtAEdcbFG0zmeoBxvDrd8
 ijHlzgQmIfN8Rdl1nnBe+J34QL7Eg9n46rvINs6ReLgTa/v4WdI4SolB5nLU53cgZ0FQ
 QtKrXl6a0u5ZgnMGS7L0J6pIfkbv/hW737bySXsVT77k/r9/4bnLlE+uBghKlbIJllL4
 /FFSNpmfZSsM/QZ4Bvl3DIXaM7BGQUkOGmXzFY5ChvLTL9qXmmAHSmfA+e/vE8Pc8I51
 A1RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Z0M1hMYOUYrbVkczMMt9QEkxY3X5kYx56clVsyirKnA=;
 b=j+bKH2U5WuuAL8snYcnwEbDNMOQUDOTvBRDlZFXFkCooMU4RSdSioOmx4BfR1hKWpY
 oY2pqg4LopaPmbvUJS0XGdyLvFkLWEToICXUMsxGbE5OfiFjjKqt+NHFCMoNjaAJFJ5g
 633D2YQN9GBkYJ0e5R8HX7yriB1Mb+QuXyvenFshehp5odOmPm3vsphmxROxaUW4L4vN
 a4cMim15MBGXoUPAocong/ZWiLLfZnNVieyLYBLjV6atPnGoPaNaVOAPflOa3FZ5Ssla
 M6WBfBKto6e98Psnfs0+1zS3a4H5OrRZjkzs7k6+PzFahEvkzqxwvtRVJH+V/6vMhFvB
 HxuQ==
X-Gm-Message-State: APjAAAW/lwiAbh58ewAZIRxr+hncYzO7lVcvFMOHBep+sLDKFEvAJ/77
 ooywU62JYmzo+mddo/ASfgeTFyYFAfwjNcxYrQPZ4D/c/fs=
X-Google-Smtp-Source: APXvYqy6CZFOBNweGvWY53m40m1EJf79Cyt3qV9ABBkefvpfZMPkDlx6pj4X6wp/uUqbk6HkbDjpcTp60/dKV850Aqo=
X-Received: by 2002:a19:a07:: with SMTP id 7mr282948lfk.66.1580320869883; Wed,
 29 Jan 2020 10:01:09 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 29 Jan 2020 17:59:27 +0000
Message-ID: <CAB50+dTNsvRc9atSJnU1mJcLMxSKPr_F_HFd=zhs7F4X0p-WyA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Converting my e310 RFNOC Block from 1 stream to 2
 streams (2 input/output ports)
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Andrew Payne via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrew Payne <wandrewp@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hello,

I have a working single-channel rfnoc fpga design file for the e310.
I am using the axi wrapper with simple mode enabled.  Using the UHD
xml files instead of c++.  2 settings registers.  Got it setup using
GNURadio. For a while I was running my flowgraph as 2 single stream
blocks (also building an FPGA image with 2 identical RFNOC blocks)
doing the same thing, but I decided to consolidate it to 1 block that
always has 2 streams.  uhd_usrp_probe successfully finds the block
port, BUT a weird thing is that there is no longer a message
indicating no block controller was found... (i might have edited the
noc_block_impl.cc or ctrl file but I do not know).  How can I make
sure it's just the UHD xml file that's chosen?

I'm in the process of converting it to 2 streams, and that's where I
am getting hung up.  When running the GRC file I now only have
timeouts on channel 0, where I haven't had them before.

I've based my conversion on the noc_block_ddc design since that one
can do 2 channels.  So beyond that I have updated my UHD XML file and
the Gnuradio XML file.  Some notable things I have changed:

UHD XML file:
1. added 2 more sink/source ports so I now have in0, in1, out0, out1.
2. added 2 more arg blocks to the 2 I already had (2 settings
registers but they apply to 2 ports, so 4 total arg blocks now).

Verilog design file:
Updated closely following noc_block_ddc, generating 2 axi wrappers and
user IP, etc.  Made sure to change rb_stb to 2'b11 for the noc_shell
input paramter.

Any guidance is helpful.

Thanks,
Andrew

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
