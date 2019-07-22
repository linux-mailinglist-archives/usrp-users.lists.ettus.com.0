Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA8770A11
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2019 21:51:32 +0200 (CEST)
Received: from [::1] (port=35428 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hpeLI-0001mS-9a; Mon, 22 Jul 2019 15:51:28 -0400
Received: from mail-ot1-f53.google.com ([209.85.210.53]:39894)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1hpeLF-0001hq-BB
 for usrp-users@lists.ettus.com; Mon, 22 Jul 2019 15:51:25 -0400
Received: by mail-ot1-f53.google.com with SMTP id r21so35490898otq.6
 for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2019 12:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=4pvva7g13ne5a8eCMOdyuLRPW7mucKYb2KEQZ9oUk38=;
 b=dEomebJTaSq+QQMswMW2kbUei2egQFH64W6hKGCouXUEEveL5YlVtlyksx3ayvYs3j
 d0VxD5lFbQpJ3gt7VfuLIZG0Rb971vA3DA1G9l4wqvecFVsJeAlbHqhqPR6X+XyBmPh5
 gr39h+lU93Un6jpjBwKAaWMXmVXhNdmYMj68jwOGkpR3+DwHPBUwKvZCZCsJnxJ96Qeg
 V92ST5SKlAoNkpY2pnBbBwrd4iZiJUIkK2mZfq1iZLndBhoy2a3hwMor5sJpS+nxvX9M
 RB/X5bq+sVBsu/qILvl3JCbg6uMNAtGAaSjSx4E1EqFPAnvhefEu9d4MnFLCK/IpZIuR
 0o4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=4pvva7g13ne5a8eCMOdyuLRPW7mucKYb2KEQZ9oUk38=;
 b=oEXKLh4k5PPqagYz0QA+SBOHdK/ILN2K+ICOMRsyyp5oj3XQsQnYX6UYqBHo0Z5FGG
 LtjAiJJoQU3AATvHNvdZ9b30PErNetYjFJxAnc2L/VO4/ZH5mFWgDs2iZWe3OXklN07y
 NNb77wbQ/8OXCBB+FHiRmSROPQB3V9PsZmAbCoaAzQM+CPJoV5adl9TpHc/2XsbufIxR
 KyR97aaKUwEk+/b9N3RCP2flqlASpojwlVSVzlvd1fJMr9tHIICP28posWp3Eqcp3qXt
 rBcD/bjime3kq1Bz4gN47E+JJ4w0hjOGk/BwtIuv8zstiy10Z+HZOhBoncGyMGg0VR+G
 bTLw==
X-Gm-Message-State: APjAAAVT1vmNcV9Rbv2VK75qFhXUUyn3L/KXFNYEUwipXdI8rJVxRql6
 L4WKD4xg9nW88964PSgCn7v+YmIth0eTy2wATy5MojVk
X-Google-Smtp-Source: APXvYqwqGlzYYb813Oh0friDcAvuxL3PGWB9C2HRAS4Chg3RgUmf+t7UMeBwscpkwFQGzbpy5or+YjcGrZIRPUnxwpY=
X-Received: by 2002:a9d:7d82:: with SMTP id j2mr42816867otn.171.1563825044333; 
 Mon, 22 Jul 2019 12:50:44 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 22 Jul 2019 15:50:33 -0400
Message-ID: <CAB__hTRhLMK7Z-YdCqXnjamb0d685pi+mbsWAzhzVG2_jsNw=g@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] RFNoC Testbench for custom block with AXI_CONFIG_BUS
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3693050332532629476=="
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

--===============3693050332532629476==
Content-Type: multipart/alternative; boundary="000000000000427132058e4a6487"

--000000000000427132058e4a6487
Content-Type: text/plain; charset="UTF-8"

Hi,
I am wondering how to write a testbench for a block that uses the
AXI_CONFIG_BUS to load a vector of coefficients - just as it is done in
noc_block_window.v (I'm not sure why there is no tesbench file for
noc_block_window in the repo??).  Are there any examples that show how to
load these coefficients from the testbench?
Thanks.
Rob

--000000000000427132058e4a6487
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I am wondering how to write a testbench for a =
block that uses the AXI_CONFIG_BUS to load a vector of coefficients - just =
as it is done in noc_block_window.v (I&#39;m not sure why there is no tesbe=
nch file for noc_block_window in the repo??).=C2=A0 Are there any examples =
that show how to load these coefficients from the testbench?</div><div>Than=
ks.</div><div>Rob</div></div>

--000000000000427132058e4a6487--


--===============3693050332532629476==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3693050332532629476==--

