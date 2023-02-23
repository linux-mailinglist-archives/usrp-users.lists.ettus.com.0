Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D436A122C
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 22:39:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3BB19384284
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 16:39:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677188379; bh=7/zAFOqlFvFfhPOv6oNOKFVsXSP1Ppt+D/CHNN6w1Jg=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=awFl6a4pshXQVXcJgWI0ZAQv7872qKzenG+I6U6HCNu81kQFF3hzyJkFFxmV7nZ7r
	 nWWmlO5F8iBYz4ueDiTmr2Tiz10qiYE/KAiI9ztJ+uo5cpzA3yrrXkHTqUV7spwd0H
	 7ZkCCcKBc1yB1T2samNqYKWux4n3DxYDIRN+e3q/i+t9W/s9v06NuXh8zCKZy/5h4D
	 g1pn07ZXh+5pOnvNy/mx8qpDuwbWZZjnYl6I1J+QHWVyTf7u9P5D7EdLnakYNI6Ekd
	 fmw4uoCzsg2bS2bqcYC1LXY8nW4Y4OIOhOMmQbjAsKt+1fU+zHJR91g6RJgJBD2bSq
	 FQ1QWiP+BRN4w==
Received: from mail-pj1-f97.google.com (mail-pj1-f97.google.com [209.85.216.97])
	by mm2.emwd.com (Postfix) with ESMTPS id 95D13384284
	for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 16:39:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gotenna.com header.i=@gotenna.com header.b="OtFP5udk";
	dkim-atps=neutral
Received: by mail-pj1-f97.google.com with SMTP id cp7-20020a17090afb8700b0023756229427so740179pjb.1
        for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 13:39:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gFa28Bnnmg0h9kAE63cEyqwy3z4KhimopIrBW95g/S0=;
        b=qRgJ6fW4/zvrM00r7jsNjkbXj55XgoN6UIqB5IbMkIRXPq4651yPNa4xlPl2DqHmsM
         Ot7/4dtSisM4zAuuqtvQo/hN6OsAIIfyacb8cmW5eWT7npXrOZcJe413JgbXM6ea7aUH
         ZjvZTdkmGRImta1Asv1Aux/6ty/6ZPgpWg8Yvg1bS2X5MsV6nRIa7gz7ja/Zpa7olJ3G
         5haw2ulr0pFlLThZiIniRR7AJZlg/hTbmH+kihasifg28bwL8iHMpQ/fbEJuyMJwkjR2
         SnjpVnVRipuQ73/tswA3yNToxB44dXlrR+5vnzKgbOP/kQz67tj9ujBBdD20BY89eOUT
         Eb/g==
X-Gm-Message-State: AO0yUKWGWMhuHBYKInBnZSgHyyg/35RtpC/MNiFnLyruo4WFasUfuTHH
	8NuIccfb5fGfQ4c7XWHAoNoiRkof5FsJJCWGh0oP46o7nrbQUgq85Ws=
X-Google-Smtp-Source: AK7set9yicrHP+eBZbpoTMNxG+7io4JLBsTpInZ63wIv2qMrKr4IVnLbwKbXvEc4mv06Q3/xGyvmwKM1ES+F
X-Received: by 2002:a17:90b:4f4d:b0:233:e1e6:33dc with SMTP id pj13-20020a17090b4f4d00b00233e1e633dcmr12637719pjb.48.1677188372449;
        Thu, 23 Feb 2023 13:39:32 -0800 (PST)
Received: from us1.smtp.exclaimer.net (us1.smtp.exclaimer.net. [191.237.4.149])
        by smtp-relay.gmail.com with ESMTPS id lr2-20020a17090b4b8200b00233d3f69ed5sm457155pjb.4.2023.02.23.13.39.31
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2023 13:39:32 -0800 (PST)
X-Relaying-Domain: gotenna.com
Received: from mail-pf1-f200.google.com (209.85.210.200) by
	 us1.smtp.exclaimer.net (191.237.4.149) with Exclaimer Signature Manager
	 ESMTP Proxy us1.smtp.exclaimer.net (tlsversion=TLS12,
	 tlscipher=TLS_ECDHE_WITH_AES256_SHA1); Thu, 23 Feb 2023 21:39:32 +0000
X-ExclaimerHostedSignatures-MessageProcessed: true
X-ExclaimerProxyLatency: 8177316
X-ExclaimerImprintLatency: 1428175
X-ExclaimerImprintAction: 82ddaef0ab13409db5fd2e94deae1d9f
Received: by mail-pf1-f200.google.com with SMTP id i7-20020a626d07000000b005d29737db06so3783326pfc.15
        for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 13:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gotenna.com; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gFa28Bnnmg0h9kAE63cEyqwy3z4KhimopIrBW95g/S0=;
        b=OtFP5udk5Zw2crb8Z/3SbWsBCj+3RuI1mukfniWdDZCunIX1UiJdeKKegedfIiSP0/
         uANG9A/09jbBgmORtJ0hZJfWAUxpAqOKPYh5aBJocD4y6Gq8nV6Xour+kFKnmmU8SMV2
         10E8tqWIpnYKUnhkTNex69+mHbDAQovbwTS5BM0+/n83vPysi+q10O002VyKeN41WFhb
         XrR2Zg7LzAZvV8bX6f4crxeQP0C5WuzAOPRIt8cXcG/FClTiRLlZWq0iiVx7bn86maCe
         HX4dFbJAftVEt+HEDPHsQFFQW17eLvFV8uOqO0K0OLxJJ4to32Dc5ROoLDSHipnvlKMb
         DodQ==
X-Received: by 2002:a17:902:f68f:b0:198:adbc:9b1e with SMTP id l15-20020a170902f68f00b00198adbc9b1emr2680180plg.5.1677188370323;
        Thu, 23 Feb 2023 13:39:30 -0800 (PST)
X-Received: by 2002:a17:902:f68f:b0:198:adbc:9b1e with SMTP id
 l15-20020a170902f68f00b00198adbc9b1emr2680169plg.5.1677188369935; Thu, 23 Feb
 2023 13:39:29 -0800 (PST)
MIME-Version: 1.0
From: Maxim Belotserkovsky <maxim@gotenna.com>
Date: Thu, 23 Feb 2023 15:39:19 -0600
Message-ID: <CA+7S2fZSj5YnqsVR8BifcXzdq=m+G5ns3roq6usMkZDoXF4DcQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: LKHZOTQJ2TNCS2WR2NE6J6YA7K6GVAFJ
X-Message-ID-Hash: LKHZOTQJ2TNCS2WR2NE6J6YA7K6GVAFJ
X-MailFrom: maxim@gotenna.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP B200 basic tone sampling in GNU radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LKHZOTQJ2TNCS2WR2NE6J6YA7K6GVAFJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3493209692899020751=="

--===============3493209692899020751==
Content-Type: multipart/alternative; boundary="00000000000003137305f564d92f"

--00000000000003137305f564d92f
Content-Type: text/plain; charset="UTF-8"

Hi. I'm doing initial verification of a B200. A sine wave at 100MHz is fed
into front end. The receiver is configured to use its quadrature
downconverter to bring the wave down to 100kHz, which is then sampled by a
GR "USRP Source" component and displayed in a "Frequency Sink" GUI. I
notice the following unexplained behavior: as long as I set the Sampling
Rate parameter of the radio to anything > or equal to 200 kHz (i.e. more
than twice the frequency of the analog tone I'm trying to sample) I see the
tone in the FFT output where I expect it to be; however, any sampling
frequency less than that, and I get no output at all. For example, with the
100kHz tone in my experiment, setting the sampling rate to 100kHz should
result in a spectral line near DC, however, no output is observed. It is
almost as if there is something going on behind the scenes that doesn't
allow for aliasing to happen, either in the stock FPGA design or some other
block external to the FPGA. Can anyone comment? I just want to conduct a
very basic sanity check of the received down-conversion and sampling. Is
there a functional description of the digital and analog processing chain
that B200 comes from the factory with? Thanks

--00000000000003137305f564d92f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi. I&#39;m doing initial verification of a B200. A sine w=
ave at 100MHz is fed into front end. The receiver is configured to use its =
quadrature downconverter to bring the wave down to 100kHz, which is then sa=
mpled by a GR &quot;USRP Source&quot; component and displayed in a &quot;Fr=
equency Sink&quot; GUI. I notice the following unexplained behavior: as lon=
g as I set the Sampling Rate parameter of the radio to anything &gt; or equ=
al to 200 kHz (i.e. more than twice the frequency=C2=A0of the analog tone I=
&#39;m trying to sample) I see the tone in the FFT output where I expect it=
 to be; however, any sampling frequency less than that, and I get no output=
 at all. For example, with the 100kHz tone in my experiment, setting the sa=
mpling rate to 100kHz should result in a spectral line near DC, however, no=
 output is observed. It is almost as if there is something going on behind =
the scenes that doesn&#39;t allow for aliasing to happen, either in the sto=
ck FPGA design or some other block external to the FPGA. Can anyone comment=
? I just want to conduct a very basic sanity check of the received down-con=
version and sampling. Is there a functional description of the digital and =
analog processing chain that B200 comes from the factory with? Thanks<br><d=
iv dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"=
></div><div><br></div></div>

--00000000000003137305f564d92f--

--===============3493209692899020751==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3493209692899020751==--
