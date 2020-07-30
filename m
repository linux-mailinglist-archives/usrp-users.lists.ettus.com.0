Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FE62336EC
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jul 2020 18:35:42 +0200 (CEST)
Received: from [::1] (port=51404 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k1BWt-00063O-LA; Thu, 30 Jul 2020 12:35:39 -0400
Received: from mail-oo1-f47.google.com ([209.85.161.47]:36618)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1k1BWp-0005oS-Bp
 for usrp-users@lists.ettus.com; Thu, 30 Jul 2020 12:35:35 -0400
Received: by mail-oo1-f47.google.com with SMTP id n24so2794341ooc.3
 for <usrp-users@lists.ettus.com>; Thu, 30 Jul 2020 09:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=NEi3CxlxhGGJMl2nJVtV8YKIMiFompyZMlIvpSpaUho=;
 b=Pw/uFCIxI3bJy69VW13K4btmqF7thaWdldyzPUWVF5CieRmzuX8IVw5HlTHihSPsWJ
 zkW2dGDDCLPh5HRw1RO4juUXPvLHh5ibg+wNlXwuRhF0UlyaqBxNEDHGAmm678OUv92f
 uubGFENHmu3VGDndvhahsk+GhegoFx6sSTJJdAG59Ou7DhnxwWi8c/cVcmif7axSSyJm
 4u8d2C9yQ+UREumA3UdcXHhpE2TuWr+CZX1i8vnk5uKiCvuYQ2PLj82kHFvholP89c/Q
 XAXzbQesCoYyUMPwngSLsn8kfbJjhi1FzMVpjFaNuWBdTo0lum1Rzs7bP3SDnGvh2jLH
 i0QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=NEi3CxlxhGGJMl2nJVtV8YKIMiFompyZMlIvpSpaUho=;
 b=OKtAjBUjSnY7KNLoazJpizyTiTZCF/3jffYvAJ5NBPDhYzTO+JQ4hEUcy8lH9nMeU4
 4luCGJjnXUGThPLlrAll9FpeVqlhisz6doGVVFnbWCkN/U9F0l+CIOgyQ1noUh28ECXk
 N+SRModocyQ2v3K+Urq59Qfwjp5UWmK/tSdAJw9Yxuj3IAFHdZYhBkMRrLiQuRmEP7hH
 adUHSItCjReCQx1OsY/n/hm1ud0KEhld692PY4FTOnohL6zTL8WJGTX5sAd58hXpY0El
 YV+tvHfE0TtBZaPr5UrE7gnVpycqEFyap5UeGL5A8ZwHdvVdPhc361+upvkqCFIlL2en
 aY8Q==
X-Gm-Message-State: AOAM530XqG2l44uuaxtvc+NUwun9Rg9S4MN9vQvDQNk2TNA5cyYRJy3e
 X7EgoowREApKXvMWuHQIOzRd6CV2B6tCa/aJKBQq4IaI
X-Google-Smtp-Source: ABdhPJyzF85VBcjxnkkOom3N54v/BYYpcAg8IvJ14bnyw9M/0BydFISwZAst1abJIUic3qC26wTPism3tqxIfhe0heI=
X-Received: by 2002:a4a:94cc:: with SMTP id l12mr3108042ooi.68.1596126894089; 
 Thu, 30 Jul 2020 09:34:54 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 30 Jul 2020 12:34:43 -0400
Message-ID: <CAB__hTSPLvPRiLXpREbfwSUMv4YvV8mRz2HV_rdNdZ9uK3CjqA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Replay Block for UHD 3.15
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7503912381687256144=="
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

--===============7503912381687256144==
Content-Type: multipart/alternative; boundary="0000000000008a379605abab4089"

--0000000000008a379605abab4089
Content-Type: text/plain; charset="UTF-8"

Hi,
I use the Replay block for both the X310 and N310. But, there are a couple
of issues that limit its usefulness. Is there a chance this could be
addressed on 3.15?  (I realize that the issues may go away with UHD 4.0).

1) For the N310, you cannot connect the 4-port Replay block directly to the
two 2-port Radio blocks.  This is a limitation of the noc_block to crossbar
bandwidth. It could be fixed if the default image included two 2-port
Replay blocks rather than one 4-port block.  (There is another concern as
to whether the external RAM can handle the bandwidth of 500 MS/s that is
needed, but I think that as long as you're only streaming out of the block
(not streaming in simultaneously) it should work).  Note that the same
issue holds for the X310 which has a single 2-port Replay block that
restricts it from connecting to the two Radio blocks because of the same
noc_block to crossbar bandwidth limitation.  It could be fixed by having
two 1-port Replay blocks.

2) I have issues with repeated streaming (starting / stopping repeatedly)
if the Replay block is connected through the DUC to the Radio.  I have not
been able to resolve these.

Rob

--0000000000008a379605abab4089
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I use the Replay block for both the X310 and N=
310. But, there are a couple of issues that limit its usefulness. Is there =
a chance this could be addressed on 3.15?=C2=A0 (I realize that the issues =
may go away with UHD 4.0).</div><div><br></div><div>1) For the N310, you ca=
nnot connect the 4-port Replay block directly to the two 2-port Radio block=
s.=C2=A0 This is a limitation of the noc_block to crossbar bandwidth. It co=
uld be fixed if the default image included two 2-port Replay blocks rather =
than one 4-port block.=C2=A0 (There is another concern as to whether the ex=
ternal RAM can handle the bandwidth of 500 MS/s that is needed, but I think=
 that as long as you&#39;re only streaming out of the block (not streaming =
in simultaneously) it should=C2=A0work).=C2=A0 Note that the same issue hol=
ds for the X310 which has a single 2-port Replay block that restricts it fr=
om connecting to the two Radio blocks because of the same noc_block to cros=
sbar bandwidth limitation.=C2=A0 It could be fixed by having two 1-port Rep=
lay blocks.</div><div><br></div><div>2) I have issues with repeated streami=
ng (starting / stopping repeatedly) if the Replay block is connected throug=
h the DUC to the Radio.=C2=A0 I have not been able to resolve these.</div><=
div><br></div><div>Rob</div></div>

--0000000000008a379605abab4089--


--===============7503912381687256144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7503912381687256144==--

