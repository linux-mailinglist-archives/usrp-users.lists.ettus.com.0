Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A4C2191A9
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jul 2020 22:38:25 +0200 (CEST)
Received: from [::1] (port=45924 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jtGpe-0006ww-L2; Wed, 08 Jul 2020 16:38:18 -0400
Received: from mail-lj1-f170.google.com ([209.85.208.170]:39392)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wandrewp@gmail.com>) id 1jtGpa-0006jb-Ig
 for usrp-users@lists.ettus.com; Wed, 08 Jul 2020 16:38:14 -0400
Received: by mail-lj1-f170.google.com with SMTP id b25so52180656ljp.6
 for <usrp-users@lists.ettus.com>; Wed, 08 Jul 2020 13:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=jv9cBBD1XVUNvUCqCJDNHBcuW2hpBTv4a8hZW8yG+00=;
 b=nhEXyP5Se1sc/Q1hefvp10Sawmca5mDllu7UU+Ds9C0hES8osegEeZ7ri1b/A+ve6u
 OeiC8CkDgYf+eeoDh/zwDlVLZ0G0kRxSxxaeOgac3WF3iYhlAsmksz6oTbicKOMX/uG5
 KYGryu2XuDj45jtX2uXLxV0NE9KlIZLKGocvm3uzfCy2ezCC2+ixIwyOuPaTYuhXt6EW
 XWv442yjJMH5AGKD2QTmhPnl2eXCJupPcwPF2Da15yozLcwDgAXkET46qqOAUDu0fgwb
 ak6jiQtk8TszhXnHAVhwVTomVY6a3eNM0pml92v3kYmyZuJrLTPglM9RX/pKqxV9trkk
 tdzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=jv9cBBD1XVUNvUCqCJDNHBcuW2hpBTv4a8hZW8yG+00=;
 b=qe5A12xfatAWsp5dMTGX+3JRAi8WZbsyX9SNwPaJSIW+QKbhodxyH0U7lGfPD5k76P
 O7Cvejhp2I+y9+6gRCsHZ9GWrdFTGTXhohH+QYWotT8UDWrf8AnbM9bWIpOfJYtHydH0
 R93T5chVKg8I61IhzxWrKlo6z9tNSWBmr04JOoyzgLnsQyf/aFvpeA3ZWXUxth2OuyTj
 cHygX8vQWFedTeWjBPCOco7eUw1fmKYgj+Kbu2MrXtXoiUJvs5ZRHuVWsfQA2dSIEIH7
 fiwUTelGLnMgtXpAHXeHHbzpJjMVhubODKIZHChgyvYtNyuvWDGEhu1EKg9Z3LHpoo8Q
 hiEg==
X-Gm-Message-State: AOAM530Jp8ErEo+RdlirsgEmfA9ilp7yXG84SjkTtdmfZKqNCWag5H0X
 dhZ3Z76Xmt2jlPmSCnFBkfIMHnDe16WUhZjRDhrq2pfB
X-Google-Smtp-Source: ABdhPJxfZUY2tRwWt6nD4F44Cc/8WsMmEEkTxDJC5TWuVb7AKBau+cO8KJFvEnZbPwZ3MgpwA2/Bh3QQR38pu/lcRBs=
X-Received: by 2002:a2e:99c6:: with SMTP id l6mr29572393ljj.220.1594240652953; 
 Wed, 08 Jul 2020 13:37:32 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 8 Jul 2020 16:37:23 -0400
Message-ID: <CAB50+dT4S9Q-uWfgP5-dar1A4=+DmzdjpwHuWpXH29Hq5cQSKQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] e310, RFNOC, GNURadio Full Duplex, Custom RFNOC Block
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

I have an issue with my setup I'm hoping to solve.

I have an e310 running the UHD 3.15 LTS image.

I have created one custom RFNOC block, which has 2 RX streams, and it
is composed of the following chain: complex to magnitude ---> moving
sum ---> keep one in n (n=2048) ---> FIFO with input parameter SIZE=5,
so then I don't need the RFNOC FIFO block to save space when
generating the FPGA image file.  The moving sum block generates a sum
from a power of 2 samples, then I feed the keep one in n block with a
resulting sum whose LSBs are truncated, effectively dividing by a
power of 2 to effectively generate a moving average. I am using the
AXI Wrapper with Simple Mode, noc shell, etc, all generated from the
rfnoc mod tool.

It works great, but I also have a TX output signal, just a sine wave,
in my gnuradio flowgraph.  Its output, depending on the RF center
frequency, is greatly attenuated (the greatest I can get it is like
-39dBm, but it falls off to -55).  But if I just have the TX output
alone without my RX RFNOC block, I can get the output over 0dBm or
more, haven't tried going higher than that.

My question is, how can I get the TX signal higher with my full duplex
RFNOC setup?  Could anything about the RX chain be affecting my TX
samples, like could it be somehow deleting samples?  Do I need to tag
the streams in GNURadio so they don't interfere or something?

Thanks,
Andrew

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
