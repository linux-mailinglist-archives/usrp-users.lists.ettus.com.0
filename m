Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A47156469
	for <lists+usrp-users@lfdr.de>; Sat,  8 Feb 2020 14:04:12 +0100 (CET)
Received: from [::1] (port=56820 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j0PmI-0007dd-IL; Sat, 08 Feb 2020 08:04:06 -0500
Received: from mail-lf1-f50.google.com ([209.85.167.50]:34070)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <wandrewp@gmail.com>) id 1j0PmF-0007T9-5K
 for usrp-users@lists.ettus.com; Sat, 08 Feb 2020 08:04:03 -0500
Received: by mail-lf1-f50.google.com with SMTP id l18so1171225lfc.1
 for <usrp-users@lists.ettus.com>; Sat, 08 Feb 2020 05:03:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=4qGjtDt5KN2i147oHSVx7WKkjx+BBZGiYFTBGBOVznU=;
 b=IKSjsF636ZnGZo6WXMWz1CeK6JIKvKBdg2hmUcmw9CVUbJ6gDY5G22dPN/oDKkmYgr
 nHzhSx4pc0LrZZ1/Hj2/O2r9SWK5gjBcoMBTLi2sfwSlMoB8/Uq+J5Gxue7DCfBXvDK8
 d8LrdT4JoDDZ0MFhPelWyqDZzhkQSPtxPdZaC7qaxKTjurmHJKgqMy3IIXqQ3UNIL2In
 Bh2t5HQoJVFC7H+0AJ6wsvQerJZ+Gj61/q3Yk7O1MIkw5/M5ZZ5c0w/3IB4YLOGWeDd5
 CVJF1s7mpbW9ZRZ1v2LPLhSdbOnGf9UGwsxE2HJeEmyOHmYkJb7psqVCSZ7umJuGD01E
 +QIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=4qGjtDt5KN2i147oHSVx7WKkjx+BBZGiYFTBGBOVznU=;
 b=C4/X5khCALoQreoTXxfDHGbYSygTv+9DarqYcIAu7p8vsvxpLcrQE2wNF48DiHgrVR
 a2CymdH+RhNnjVDbnT/9TdsfzWAOVwre8YwMDPXTqWbwQ5+gebxKgu4nN2FA9c9DNkA6
 gLkDb0mkIjRNK59UJizdxyooFbgzBQCHmiZ7b4AiICtrb2aYyiDAVSLhaY0WqzarStjT
 g7Rn69KGbTm/IkESQkqrykSU3xqYRQlemuR85YOrvpd5W4KugVoYepMDNtcdYObBVqW/
 lHitqyCzrGABWO+/1j+/d7cg6fH6/GQO6GZryk/sxyapurSpkxNf3DuB/TEt0lzfnSoB
 +Fig==
X-Gm-Message-State: APjAAAVS0FCpIU96kaGx/veRk7bZkI3AzeaFHct2mtQVVBT8P2pQgjKL
 Im6kj4rt+orYJtLm7Jy1n2Q3w6mcx+5L9C8K1SzjozMd
X-Google-Smtp-Source: APXvYqzIj1AH0C2hmv3MDftulyU3hsJtWyxPtA2Rx5CKKvtQioLnIf15F2XKAzmFltSqIXkv03jJgyW/i3N7WLKMccE=
X-Received: by 2002:a19:a07:: with SMTP id 7mr1951494lfk.66.1581167001595;
 Sat, 08 Feb 2020 05:03:21 -0800 (PST)
MIME-Version: 1.0
Date: Sat, 8 Feb 2020 08:03:10 -0500
Message-ID: <CAB50+dRf+cguaJvQwr-rZr8nXqHxqBqYh7=8-YXp_w7rG2=t5Q@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] noc_block_addsub_tb.sv - number of samples/packets.
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

I'm running and slightly modifying the simulation testbench for the
RFNOC addsub module.  I've noticed that the for loop in test case 4
goes to SPP/2 - that upper limit is what I'm modifying to learn how
packets work in the NOC shell.  So it passes as a stock testbench, and
after modifying it to run to SPP (256), the entire test case 4 fails,
with every return from the noc block being "x" (undriven as I
understand it).  Why does the test fail when I increase the upper
limit of tests?

Thanks,
Andrew

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
