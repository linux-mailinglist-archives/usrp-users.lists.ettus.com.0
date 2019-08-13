Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD568B151
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2019 09:41:15 +0200 (CEST)
Received: from [::1] (port=41510 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxRQd-0007lX-Vv; Tue, 13 Aug 2019 03:41:12 -0400
Received: from mx1.hrz.uni-dortmund.de ([129.217.128.51]:52161
 helo=unimail.uni-dortmund.de)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <felix.greiwe@tu-dortmund.de>)
 id 1hxRQa-0007hu-IN
 for usrp-users@lists.ettus.com; Tue, 13 Aug 2019 03:41:08 -0400
Received: from webmail.tu-dortmund.de (webmail.tu-dortmund.de [129.217.131.82])
 (authenticated bits=0)
 by unimail.uni-dortmund.de (8.16.0.41/8.16.0.41) with ESMTPSA id
 x7D7eQ4w006421
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2019 09:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tu-dortmund.de;
 s=unimail; t=1565682026;
 bh=h0s3nm5Zf9nbtMdyqCsT92W5MrLD7z0hsC7/2xfVGU0=;
 h=In-Reply-To:References:Date:Subject:From:To:Reply-To;
 b=IGVUzM7B8LpQe5wAH8kMCqsCAysi9rvtz3nIgQqoQdzszMjBoHYfn9R/qjst8LHCl
 Q7FAQdWZw3DwrIIpxCTsi4VlBjgvtMk9n+KN+g7busB7v0KnsWhwmR8OQYkF9x3bSz
 UR4oWuFwT1OcuaOMq/00HOCgDRcmc/rwL+IYtSbc=
Received: from 129.217.182.66 (SquirrelMail authenticated user smfegrei)
 by webmail.tu-dortmund.de with HTTP; Tue, 13 Aug 2019 09:40:27 +0200
Message-ID: <bb4832ac9b4a12168238d1aab5735ae5.squirrel@webmail.tu-dortmund.de>
In-Reply-To: <b5ec3d13a71a04254eee5d1387f84a1b.squirrel@webmail.tu-dortmund.de>
References: <b5ec3d13a71a04254eee5d1387f84a1b.squirrel@webmail.tu-dortmund.de>
Date: Tue, 13 Aug 2019 09:40:27 +0200
To: usrp-users@lists.ettus.com
User-Agent: SquirrelMail/1.4.23 [SVN]
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Subject: Re: [USRP-users] RFNoC Issue with 32 Bit Axi Stream | Error in
 Concat to 64 Bit | VHDL
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Felix Greiwe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: felix.greiwe@tu-dortmund.de
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

Hi,

i found myself not to be familiar with the Core Concept of interpreting
Data in FPGA's as IQ-Data. After i partitioned my 32 Bit Input Data in 16
Bit I and 16 Bit Q Data, and additionally edited my testbench similar to
the addsub testbench of one of the pre-installed rfnoc-blocks, my
testbench passed.

In the following link I stumbled upon some help regarding the testbenches
and other useful information which helped me a lot.

http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-March/056076.html

Best regards,

Felix Greiwe



> Hello together,
>
> recently i started RFNoC development using an USRP x310. After finishing
> the RFNoC getting started Guide i created an OOT Module including VHDL.
> First i simply forwarded the Input Data to the output which worked just
> fine. After that i wanted to add a constant, for example 5_dec., to my
> signal (32 Bit) and receive the sum as an output in the testbench. Here
> the problems started:
> Instead of receiving 5,6,7,8,9 for input of 0,1,2,3,4; i got
>
> 5+2^32+2^34
> 6+2^32+2^34
> 7+2^32+2^34 etc.
>
> I figured out, that i got the right results in 32 Bit, but that somewhere
> in the axi_wrapper and/or the noc_shell my results gets concatted to 64
> Bit, always using the first result (here the number 5) as the 32 msb's and
> the actual sum results as the lsb's thus changing my signal.
>
> Wondering, i tested some more stuff like just setting the lowest bit of 32
> Bit input Data Vector to one etc. and get the same problems of wrong
> vector connections.
>
> Only when i changed the width parameter of the axi_wrapper to 64 Bit (and
> also sending 64 Bit Data) i got the expected results.
>
> Now my question: Is this a bug or am i maybe using the axi_wrapper wrong?
> I could not find an error comparing my code to the one of the
> tutorial_gain block.
>
> Any help to understand this is appreciated.
>
> Sincerly
>
> Felix
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
