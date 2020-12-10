Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 134EC2D6A66
	for <lists+usrp-users@lfdr.de>; Thu, 10 Dec 2020 22:54:06 +0100 (CET)
Received: from [::1] (port=45112 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1knTsv-0000nj-Tw; Thu, 10 Dec 2020 16:54:01 -0500
Received: from mail-ot1-f46.google.com ([209.85.210.46]:41996)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1knTsr-0000kM-IS
 for usrp-users@lists.ettus.com; Thu, 10 Dec 2020 16:53:57 -0500
Received: by mail-ot1-f46.google.com with SMTP id 11so6390066oty.9
 for <usrp-users@lists.ettus.com>; Thu, 10 Dec 2020 13:53:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=ClT9x6G7KasWCzwG4UKRSOubShaD6RbsYVnfx/QmqQA=;
 b=er9HFj6S9R9axmatYqw8q/Pc/ZxSf4bMKJAOFTyyvSSg8eZqX0GyWIVJ4G4HozxzSi
 Ag1s4pSYtw6jOGhfMQE+Xw4uTpeqErjVotXdd6d/tYn2NQoGu8WCY0vcMWTPmvg9/Fs2
 VJK4mjcp94TYmqCmYgn9PpfZL+iJQFe+JsvvokQmbk6p0DiB/kBk4nRFUfpDPbj3eCgP
 FR46mOdfbNKlVzSeeULNJpnM/UnvRtAZaFCNDFfabKEMBrsUwraGTTwfTAWis+cwbJ2p
 vBStj9/obkCx8ByZG2sTB8kqmMHsKxHwrzWVfkGkmzZQenmCnKgwRqqAvnASCkyFAJUb
 3Fqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ClT9x6G7KasWCzwG4UKRSOubShaD6RbsYVnfx/QmqQA=;
 b=OUMRQ6MvpQMpo3CUT3ivFyGtmEWnixRFkqWSf+5XOwfTqkeEA24joYEZkrhAJ+1p/1
 hzChKdb7U6GtfgiLzi0i55mkdptUuGi6yOXSLM5T0wAJbnVQzCN3bm+adLwO2ckuTXQS
 gGcR0ba1yAk1p/CUIAY7qxvZaY9iLo4bwmVLcV/Tpok0RMiKWhju/FLmyf+f5yim/kpX
 nS/8pXnSiugcl4IEYgNzfFy02zrpd0jatyudL7iMAh6uBWLW6woPfugUU+R32ZTr40hz
 wjQ2S+kOUacmpQoDENyzCsWb76ixaEDA2eWkv6Iu/S05BSZtWQHQ4I//SI+hFGTaS5YL
 Rwyg==
X-Gm-Message-State: AOAM532BSx1oC1upJVnIKDm4QY5UBxHFsuyzrOuk1bCC24/6xi0HIwsh
 BkJj7V9AfcR+rgdTYdMWTjcGCrqttMn7Rk3PNLLumq6cyohR9Q==
X-Google-Smtp-Source: ABdhPJziKfK8lnv0P5UoEpXk7krEAWFUtHiU9AMy1xWwM/XXYn5xYrYILJ2QIt6SmbqAK7hgu9jqSL70toz4sAShlGs=
X-Received: by 2002:a9d:7f84:: with SMTP id t4mr7305226otp.302.1607637196068; 
 Thu, 10 Dec 2020 13:53:16 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 10 Dec 2020 16:53:05 -0500
Message-ID: <CAB__hTQa8v40-nQGCQMcK36317oWxue448NrMoMYvbf3oacmug@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] RFNoC 4.0 data swapping?
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
Content-Type: multipart/mixed; boundary="===============5693170868290495914=="
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

--===============5693170868290495914==
Content-Type: multipart/alternative; boundary="0000000000000015f105b623348a"

--0000000000000015f105b623348a
Content-Type: text/plain; charset="UTF-8"

Hi,
I am encountering very strange behavior with a custom FPGA image (N310). It
appears that data streaming through SEPs can get swapped (I/Q) and/or
negated.  Is anyone at Ettus aware of anything that could cause this?  Of
course, the issue might be on my end, but I can't think of what it might be
given that all of my custom blocks work as expected in isolation (if the
block is the only block in graph).

My custom image is the following:

   - default blocks of Radios, DDCs, DUCs (each 2x2 and statically
   connected as in default image)
   - custom blocks of two 1x1 windowed-fft blocks, two 1x1 vector-avg
   blocks, and one 2x2 custom block. Note: each of these blocks is connected
   to its own SEP, so I can connect dynamically in any fashion.

My test case is transmitting 8192 random samples from host to FFT block and
then optionally through a 2nd FFT block before back to host.  In the test
case, the radios/DDCs/DUCs are not used.

Here is what I observed:

   - If I only include 1 FFT block in my RFNoC graph, I get the expected
   results (the output from the FPGA matches what I calculate in Matlab for
   the FFT).  This is true for either of the two FFT blocks.
   - If I include both FFT blocks in series, I can only match the FPGA
   output if I swap the I/Q values in between my Matlab FFTs.
   - Note: that this issue is not FFT-related as I can also duplicate this
   issue with the other blocks.
   - If I use 3 blocks in series (each through SEP), I need to negate
   certain data in order to get it to match the FPGA output

My next step is likely to build a new image with Ettus-developed FIFOs to
prove that the data is getting swapped/negated when 2 or more are used in
series through SEPs.

Let me know if you have any suggestions for other things to try.

Rob

--0000000000000015f105b623348a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I am encountering very strange behavior with a=
 custom FPGA image (N310). It appears that data streaming through SEPs can =
get swapped (I/Q) and/or negated.=C2=A0=C2=A0Is anyone at Ettus aware of=C2=
=A0anything that could cause this?=C2=A0 Of course, the issue might be on m=
y end, but I can&#39;t think of what it might be given that all of my custo=
m blocks work as expected in isolation (if the block is the only block in g=
raph).</div><div><br></div><div>My custom image is the following:</div><div=
><ul><li>default blocks of Radios, DDCs, DUCs (each 2x2 and statically conn=
ected as in default image)</li><li>custom blocks of=C2=A0two 1x1 windowed-f=
ft blocks, two 1x1 vector-avg blocks, and one 2x2 custom block. Note: each =
of these blocks is connected to its own SEP, so I can connect dynamically i=
n any fashion.</li></ul><div>My test case is transmitting 8192 random sampl=
es from host to FFT block and then optionally through a 2nd FFT block befor=
e back to host.=C2=A0 In the test case, the radios/DDCs/DUCs are not used.<=
/div><div><br></div>Here is what I observed:<br><ul><li>If I only include 1=
 FFT block in my RFNoC graph, I get the expected results (the output from t=
he FPGA matches what I calculate in Matlab for the FFT).=C2=A0 This is true=
 for either of the two FFT blocks.</li><li>If I include both FFT blocks in =
series, I can only match the FPGA output if I swap the I/Q values in betwee=
n my Matlab FFTs.</li><li>Note: that this issue is not FFT-related as I can=
 also duplicate this issue with the other blocks.=C2=A0</li><li>If I use 3 =
blocks in series (each through SEP), I need to negate certain data in order=
 to get it to match the FPGA output</li></ul><div>My next step is likely to=
 build a new image with Ettus-developed FIFOs to prove that the data is get=
ting swapped/negated when 2 or more are used in series through SEPs.</div><=
/div><div><br></div><div>Let me know if you have any suggestions for other =
things to try.<br></div><div><br></div><div>Rob</div></div>

--0000000000000015f105b623348a--


--===============5693170868290495914==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5693170868290495914==--

