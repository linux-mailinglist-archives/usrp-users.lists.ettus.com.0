Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF6D5507DE
	for <lists+usrp-users@lfdr.de>; Sun, 19 Jun 2022 03:27:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 61E463841C6
	for <lists+usrp-users@lfdr.de>; Sat, 18 Jun 2022 21:27:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655602067; bh=3o6J/yhxBApOW5K4KVYum+k0xye7IBeoiO888X+fbqw=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Ua8/U1+oabqen2E0kVNKvWXzlZw8HH6xd97TyJPo7PDHXurGTBi6OQ17kTK1/zXVf
	 qaEHniiLB1RjSPMnhQEOt/JIxeaCN1JpvlrlqIGxIGRWE9AXKbhPdp42Q17AGmq+pA
	 jJrDKjE6oMUTLfHXORLwLLHm85qmcD/jUzLTMjG0XQJ1/eHZ9UtdgfscT1EZHsNgmA
	 QMrmvL4B1VhCC9oKf25JhuVPk9vQI8w0VwlmhEOV/52sjOgSRxuv8B8DC9TDjOGhof
	 KqjkGU12JhpGeHQDlSm6kdj5Z18RohAoOgdCEXpXqRyVf6xtIyV86pbeF+I1Bs/RTq
	 T3QuHKRrR62yA==
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 425E73841BB
	for <usrp-users@lists.ettus.com>; Sat, 18 Jun 2022 21:26:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="e103SqMg";
	dkim-atps=neutral
Received: by mail-yb1-f170.google.com with SMTP id p69so1604162ybc.5
        for <usrp-users@lists.ettus.com>; Sat, 18 Jun 2022 18:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=nCKJFsylDt6A/WYB83j+JEkvM0BpqntGqGYc0U2FrLI=;
        b=e103SqMgCw7EpoxyX8wIyfdydNs/4Z7ZJorUXmtl32tLpRwiCHJvu0RTKrdXH9pGCC
         4aqn9uat55cWSJbD5/Fe2NnOR5wNCcFSKvUHe3tkzL0DvmUnPMRQtgMbNqybMM4FPOQ7
         kND8K5cGA7Z/aCtM3iW3Tk0Ib04F7HowcA3nXCZswIAOH58x2Z/Yj/7KH7MDN3MZWm1D
         4lZcLsDhiclLgJbz40u25+ANfyvxeX0qVUJXbsbHfmXJFyH3yQmCpNcUXZgrzopUmA2f
         TdOfhKQQIYnqpr01quuNGVehIluvvOl9PotoACk/ElVoLjpWKZDwBdbqzUJ90P2x6WTl
         cbrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=nCKJFsylDt6A/WYB83j+JEkvM0BpqntGqGYc0U2FrLI=;
        b=SgKRxZQbotH7q/Sb5WLrpBLxh8h1Qc0jPSl8h+CMXD6F38sL4JGYT5F2ape2OZBDrD
         +VYiIt5IgaTsbOcnmZuGtJnahB/uUVCCVMtZiuaszoECk6dF7GCcAOY52HiVxg9ScOq0
         tsvqIIRyiBzssyoFxrsTdTtgEKonwawU5MW+3QuoQ1pAGb5h0SqAWE4M+P2OA9YMrWfi
         2LmmMUeCMZLwJMM8v7UEXB7ODX8LE+YWfkgftiapZn4kELThg1N9l88vnCwDRQXNY5TH
         dheXJvS8wO6IHl5I9OoMY2l9E+FvX44My8/gBNRPQWMFe5a3ReeZ+pbL95gdLkWZ7DAQ
         1zzg==
X-Gm-Message-State: AJIora+m+/l7tr5aM1E6F4aWd3w7MtRf9WpPd6p6ykWKWgVxUKrc3SK0
	rSHdavMaEMieT/vBoZcoKqXonm2OHrroNg9uG8GegWhaD/c=
X-Google-Smtp-Source: AGRyM1vcnHUxKIRZcXXlACR2WZsUD/bmMYPWV+g095USwY9dY5a5npjTaMGmS/WNQPTLUaIDh5E64nyRW+yF4lBg+l8=
X-Received: by 2002:a25:9947:0:b0:663:ec43:61eb with SMTP id
 n7-20020a259947000000b00663ec4361ebmr18067686ybo.115.1655602003319; Sat, 18
 Jun 2022 18:26:43 -0700 (PDT)
MIME-Version: 1.0
From: Rob Kossler <rkossler@nd.edu>
Date: Sat, 18 Jun 2022 21:26:32 -0400
Message-ID: <CAB__hTR1UvNgy85dc77qnrq4ku3XuYQnGpLvBMvy-YkrTB7rdg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: OUBNWQASD4KV2SAMY746IWYT6OACMUV3
X-Message-ID-Hash: OUBNWQASD4KV2SAMY746IWYT6OACMUV3
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B2xx custom FPGA
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OUBNWQASD4KV2SAMY746IWYT6OACMUV3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6862505122212789966=="

--===============6862505122212789966==
Content-Type: multipart/alternative; boundary="0000000000004c75f105e1c2e1de"

--0000000000004c75f105e1c2e1de
Content-Type: text/plain; charset="UTF-8"

Hi,
Has anyone modified the B2xx module "new_tx_control" in the following way
so that it would be straightforward to insert a custom dsp module (32-bit
AXI in/out)?

The existing logic takes as input an AXI stream with 64-bit samples and
converts this to 32-bit samples (non AXI, strobe/run) that are sent to the
DUC.  Additionally, it checks for errors on the incoming stream and handles
Underrun / Late for the outgoing 32 bit samples.

I would like to divorce the input from the output logic by adding an output
AXI 32-bit stream and an input AXI 32-bit stream for the purpose of sending
to (& retrieving from) a "custom DSP block (32 bit AXI)". With this
divorce, the logic on the existing 64-bit AXI input stream (looking for
sequence errors & responding to EOB Ack) can remain largely the same, but
the logic for detecting Late/Underrun would be moved to validating the new
32-bit input AXI stream coming from the "custom DSP" output.  In the event
that there is no custom DSP block, the output could be routed straight back
to the input.

In any case, before I embark on this (which will be a challenge for me), I
wanted to see if someone had tried this.
Rob

--0000000000004c75f105e1c2e1de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>Has anyone modified the B2xx module &quot;new_tx_c=
ontrol&quot; in the following way so that it would be straightforward to in=
sert a custom dsp module (32-bit AXI in/out)?</div><div><br></div><div>The =
existing logic takes as input an AXI stream with 64-bit samples and convert=
s this to 32-bit samples (non AXI, strobe/run) that are sent to the DUC.=C2=
=A0 Additionally, it checks for errors on the incoming stream and handles U=
nderrun / Late for the outgoing=C2=A032 bit samples.</div><div><br></div><d=
iv>I would like to divorce the input from the output logic by adding an out=
put AXI 32-bit stream and an input AXI 32-bit stream for the purpose of sen=
ding to (&amp; retrieving from) a &quot;custom DSP block (32 bit AXI)&quot;=
. With this divorce, the logic on the existing 64-bit AXI input stream (loo=
king for sequence errors &amp; responding to EOB Ack) can remain largely th=
e same, but the logic for detecting Late/Underrun would be moved to validat=
ing the new 32-bit input AXI stream coming from the &quot;custom DSP&quot; =
output.=C2=A0 In the event that there is no custom=C2=A0DSP block, the outp=
ut could be routed straight back to the input.</div><div><br></div><div>In =
any case, before I embark on this (which will be a challenge for me), I wan=
ted to see if someone had tried this.</div><div>Rob</div></div>

--0000000000004c75f105e1c2e1de--

--===============6862505122212789966==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6862505122212789966==--
