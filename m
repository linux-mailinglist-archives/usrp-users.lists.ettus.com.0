Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE53498F512
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 19:29:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B9348385975
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 13:29:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727976543; bh=uFMJpAYxO88jQNIJtczFLnaq+qHrgvlENVBaPFYn2hk=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=p6w6M8iS7aMGdXgj021qWiqaHZ/0Hi8zwcr/GPvfeB75+qItzHqH0o8Xam93aqXqc
	 O6Xdkr3l5LUO/3XkrX7d3BfEIVrq4xz9o9wNIwQWinPToA2N6+Vus06ryjF6fyASEt
	 yqnjNehQfwaemn0PnPkVwhxH1gQpE2EVq3avacznYu9nb2R2AKK4O1a4ZZT+KDLqlP
	 sKwIhr4d2ZrlVNjOkOlwOue3EwK8Fs+M1vSr20c1A5nKd1AcomshdC0zXvmPj/AWrI
	 q2U9lUJEQwfWKG+zRPMrf+l8ewK888cwhi4FVvTeRPCd8FEXTCGs9IZ+OEmaAlCe+O
	 a3PuuELvi/xqA==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 6E0BD385975
	for <usrp-users@lists.ettus.com>; Thu,  3 Oct 2024 13:28:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gqiUdY0b";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a8a897bd4f1so154818566b.3
        for <usrp-users@lists.ettus.com>; Thu, 03 Oct 2024 10:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727976538; x=1728581338; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Xigu9mt6jX1WXSWL94M1UTCPS4LYz4EloYO5RCKKbGQ=;
        b=gqiUdY0bszgIwLTGgcqBmg4O49eXsbtGcZf5/BLV7+nezv02DvKYsYVLXODjDUea2p
         qqtGruQpalj3bJ3dfPb53qm17XgJskx+BZBZIJGCMcfFhrwxWt/rf10xkSQn2lUaZFE0
         IFo/bOU/QO1H34dlS7WTgGsMMbFgZVYQ0IW2+asxsqQtEwV2hFjnWDg4AQgCna9ATBXg
         ZivWp9OHHyw2Njv6/LFXFHyQC75vKYLT12TAi1sDCLA1KzI93xvg40WoDDjS7BL6wCRl
         oJNMh7IE9vxO9AVAqieoQd30ecNpOzAfdBogLLF9bu47JzX8m2AxPYKuDGDmEa352oa/
         DS6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727976538; x=1728581338;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Xigu9mt6jX1WXSWL94M1UTCPS4LYz4EloYO5RCKKbGQ=;
        b=luyPs1AfUx2btamEXDPrxihPW6o2iTBFg5jOeih1xZ/FF5DnsWXX9qCWhvELqGghip
         J+u2EmnODSDWGBDlwnCoLgwJPUuDOuahrmLSr8/o2RzuFfIDUABPIqZYT5KgXCyy5rz0
         u7RVPpgRCU5rKD+JD16qax9g9q9vtVCFNGcHwMolSr29a4BG4XA55mqr9yIq7xPh+Yw8
         N+ThwmxuvcHqkWzZlfRYKQZykFnhj6KcSFdzF8kGGFnyilhPRtMpF3tRVQEQsUWvnrlM
         6K5OmWM7FKovWKBB2Mvs79hf6XlHuICRd/pRsY/VDN214Xuf/CZuZ97fHvteM/x7CnLz
         Y04A==
X-Gm-Message-State: AOJu0YxChQl2YmFLC8V+03GPULRW1GLB3adNoIX0TLKU5BzSv+7mcQsq
	CGDCABFanqharKUZQy0wM/2GMQqwCHUr8JL1l6rmxaJ3sPyTjaxITO78uQiVqbWLxmZPpXhfGp9
	Litvzp9cwkf/nakj5GzEZQdTWYfI3VW8S0wg=
X-Google-Smtp-Source: AGHT+IHCeSOCdgud/QdWlAZFsFntIH/DKsRzrH4rODtncg0nXZoFKvi3O8SeAJxHTGLSiG1OgEUG+30EFSzxSxFZCSE=
X-Received: by 2002:a17:907:a41:b0:a88:b90a:ff30 with SMTP id
 a640c23a62f3a-a991c028559mr13678666b.50.1727976537845; Thu, 03 Oct 2024
 10:28:57 -0700 (PDT)
MIME-Version: 1.0
From: hui cj <cjh416593819@gmail.com>
Date: Fri, 4 Oct 2024 01:28:46 +0800
Message-ID: <CAEL-RA3vkebzVmq8+d6YuQa4z4u1eGo-osZ9gYeby8vq3Q0+hw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: T2TXVY4643YJSSU4UUJKC6YX4ORB4FPU
X-Message-ID-Hash: T2TXVY4643YJSSU4UUJKC6YX4ORB4FPU
X-MailFrom: cjh416593819@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC Replay module (DRAM to PC)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T2TXVY4643YJSSU4UUJKC6YX4ORB4FPU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6083890444131112067=="

--===============6083890444131112067==
Content-Type: multipart/alternative; boundary="000000000000b7ff84062395e33e"

--000000000000b7ff84062395e33e
Content-Type: text/plain; charset="UTF-8"

Hello all,

I have some confusion regarding the RFNoC Replay module.

Due to the limited transmission rate between my computer and the X310, I
cannot transmit and receive waveforms in real-time. Therefore, I want to
use the Replay module to transmit the waveform stored in DRAM and record
the received signal into DRAM.

Based on the following links:

https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_can_the_DRAM_be_used_for.3F


https://kb.ettus.com/Using_the_RFNoC_Replay_Block_in_UHD_4

I believe this functionality can be achieved.

The provided example has already implemented the Record and Play functions,
but I am still confused about how to store the waveform in DRAM and then
transfer it to the computer.

*Q1:*

Is only one channel of the Replay module needed to achieve this
functionality?

*Q2:*

(1) The example constructs the following graph to store the transmitted
data in DRAM:

   - TxStreamer#0:0 --> 0/Replay#0:0
   - 0/Replay#0:0 --> 0/DUC#0:0
   - 0/DUC#0:0 ==> 0/Radio#0:0
   - 0/Radio#0:0 ==> 0/DDC#0:0
   - 0/DDC#0:0 --> RxStreamer#0:0

(2) To store the received data into DRAM at the same time, should I
construct the following graph as well?

   - 0/Replay#0:0 --> 0/DUC#0:0
   - 0/DUC#0:0 ==> 0/Radio#0:0
   - 0/Radio#0:0 ==> 0/DDC#0:0
   - 0/DDC#0:0 --> 0/Replay#0:0

(3) To read the data from DRAM and transfer it to the computer:

   - 0/Replay#0:0 --> RxStreamer#0:0

*Q3:*

I want to start both the Record and Play functions of the Replay module at
the same time. Is this possible?

Is there any example code available that shows how to transfer DRAM data to
the computer?

Thank you!

--000000000000b7ff84062395e33e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p>Hello all,</p><p>I have some confusion regarding the RF=
NoC Replay module.</p><p>Due to the limited transmission rate between my co=
mputer and the X310, I cannot transmit and receive waveforms in real-time. =
Therefore, I want to use the Replay module to transmit the waveform stored =
in DRAM and record the received signal into DRAM.</p><p>Based on the follow=
ing links:</p><p><a href=3D"https://kb.ettus.com/RFNoC_Frequently_Asked_Que=
stions#What_can_the_DRAM_be_used_for.3F">https://kb.ettus.com/RFNoC_Frequen=
tly_Asked_Questions#What_can_the_DRAM_be_used_for.3F</a>=C2=A0=C2=A0</p><p>=
<a href=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_Block_in_UHD_4">http=
s://kb.ettus.com/Using_the_RFNoC_Replay_Block_in_UHD_4</a></p><p>I believe =
this functionality can be achieved.</p><p>The provided example has already =
implemented the Record and Play functions, but I am still confused about ho=
w to store the waveform in DRAM and then transfer it to the computer.</p><p=
><strong>Q1:</strong>=C2=A0</p><p>Is only one channel of the Replay module =
needed to achieve this functionality?</p><p><strong>Q2:</strong>=C2=A0</p><=
p>(1) The example constructs the following graph to store the transmitted d=
ata in DRAM:</p><ul><li>TxStreamer#0:0 --&gt; 0/Replay#0:0</li><li>0/Replay=
#0:0 --&gt; 0/DUC#0:0</li><li>0/DUC#0:0 =3D=3D&gt; 0/Radio#0:0</li><li>0/Ra=
dio#0:0 =3D=3D&gt; 0/DDC#0:0</li><li>0/DDC#0:0 --&gt; RxStreamer#0:0</li></=
ul><p>(2) To store the received data into DRAM at the same time, should I c=
onstruct the following graph as well?</p><ul><li>0/Replay#0:0 --&gt; 0/DUC#=
0:0</li><li>0/DUC#0:0 =3D=3D&gt; 0/Radio#0:0</li><li>0/Radio#0:0 =3D=3D&gt;=
 0/DDC#0:0</li><li>0/DDC#0:0 --&gt; 0/Replay#0:0</li></ul><p>(3) To read th=
e data from DRAM and transfer it to the computer:</p><ul><li>0/Replay#0:0 -=
-&gt; RxStreamer#0:0</li></ul><p><strong>Q3:</strong>=C2=A0</p><p>I want to=
 start both the Record and Play functions of the Replay module at the same =
time. Is this possible?</p><p>Is there any example code available that show=
s how to transfer DRAM data to the computer?</p><p>Thank you!</p></div>

--000000000000b7ff84062395e33e--

--===============6083890444131112067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6083890444131112067==--
