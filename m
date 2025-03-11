Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 253B1A5D0FC
	for <lists+usrp-users@lfdr.de>; Tue, 11 Mar 2025 21:47:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E456F386304
	for <lists+usrp-users@lfdr.de>; Tue, 11 Mar 2025 16:47:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741726068; bh=2MyCVeiboGydTvCkJ796mA4NBV+VGwM/JhvNx6y8jK4=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RDn7Hg+oZY7zR/Z6i8UmHEIZLnC7kf4Irti3X08nf0DW7YasZmDI62uxEs8b3KUaF
	 4iW9hbiOazXbaQj10r8r9tmbDcLvjReWOxE6FF7fA4kYusjlXBmbe6rnZxOS2mIGyb
	 LGlxTsI36+l6XOQIhQB+nAx8df5CSkvXUCeUEzYbTUXisdWXvdMnvy+GUBa/QPG08K
	 JHmvPqEd5Vles4CcJSrrthTNW+YBLdkIfpf6BCywj0TTR4pMY802DJhIKeFMmYMfhq
	 zVeQFgfMe4K3Z85LNUX7GUd5hoCeTuGHod/gMm5O2ekBH0Z5LTjHH7uPODSLPOSw2R
	 xYgOPeTLqyIQw==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id DEA2F386143
	for <usrp-users@lists.ettus.com>; Tue, 11 Mar 2025 16:47:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XqGelBHA";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-aaeec07b705so940438666b.2
        for <usrp-users@lists.ettus.com>; Tue, 11 Mar 2025 13:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741726059; x=1742330859; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=N/TDFDPqE9v+ZussqCXKTje4Ft3QDoXFVeMgTX/wVQQ=;
        b=XqGelBHAxcUxVnRyb2SVeTe6S+vcoKgbwA2s5oIC3QznDifEYGbMNwWP62tyjpdWIu
         hnKlQlF2rcPST1lPMC/kVvuBL/o2FjqHOe09rMR1urxmVTw8sPdPPmSSM+1rEueig/cf
         WkRmI/JIMZ/tEx72MGBWEVW2B0fOelTDAsj/k7DX4JI7aEoVitHkyURsTxLBg6XAU3mS
         iIIDIs9YZpTo+q7C6N2Q7dVbv5T4MtOMRa7FK8KplxPCOxK9JERTJ2ogL8wn8jH7mWeT
         GwefGaDLSKJAK5ER2E9qNkTqASzjgmilrEBS4mAuP2b3s9SPMNg7+cMF8S0EIZiY+6Py
         krCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741726059; x=1742330859;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N/TDFDPqE9v+ZussqCXKTje4Ft3QDoXFVeMgTX/wVQQ=;
        b=bNH/6hUkBsQXGGfg7ohhr1bXV9e45wSeX0ytL7W3Nlr6kbQAZnFzmYWKdqqp2TqceR
         +GCdToogFD4pClaocheMXbYIqyQyjztQOlXpGw0MihvzlBtZ4ps4FhfTB2Y/a8m2SjSP
         3Vf3g6RD5b2cSMxjvH5sbBD3+Rfj0tQKMYBor27aKiLt6pntrj5iBHno17T/I59wVWft
         rS5TiuTGLN584YIdLqwneXUg1OTh9Y9lWDzQwOKDPkb4NLHvEYDEU7gA/lYIvZRtTgIq
         /o6gdZSWFW26rj1rPNWJc0IHheNcRs/lsKRhOMRxOiqPJS1BY1HBL7FUAhK6yOtjpzN+
         WS8w==
X-Gm-Message-State: AOJu0YwbZo3DhtLD/BCpUiREscapLNpckYXmJMDvYYps/Yfw92MsLE8Q
	yd4kWa9ZmXMbrU3BCz0yDoTA1Y+DMPPIKlf15pudJRCMo0eDjWuV4+Xqa/D+p7t0BqaKD5npaNu
	qpTxNYKMVm6qDm440ap+SCCjXgBJnBA==
X-Gm-Gg: ASbGnctL8zzBp4hCygpBzESh6qknmDvLiaZWEOZl48J6d18oYZo2yIU+KZy5uOj2jgl
	kbSPtJbDTP0w9+Ah7X3qesLDeJqefZvelrLUWfveAq4ISG8lhupld+ffnuiV/rPGnUUbl6AgLaP
	QMZk+t3ASzjnP1EbDbomC1yxZq1A==
X-Google-Smtp-Source: AGHT+IGw8cKifo97E8g2xev6VmfRi1jGMSqtHA4exuUqqHjqQfiWPFZZzXcoWgXtVNZMN0jRiU54+ZZXYHOPZx7PqIc=
X-Received: by 2002:a17:906:b6d0:b0:ac2:cea7:6c6c with SMTP id
 a640c23a62f3a-ac2cea7743fmr312696766b.57.1741726058977; Tue, 11 Mar 2025
 13:47:38 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 11 Mar 2025 16:47:27 -0400
X-Gm-Features: AQ5f1JpC7vFu80vFGNFCZz9frid82IWbEqC7d4eBqPPZQdjMGmG8znxO-GvCFNE
Message-ID: <CAEXYVK5j7GCkt1qSzGFkjeJu27-9F9aaL9mHQvgnQekWXCcZpw@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: GAM2DMCCAJBCCJ6KKXOMSFNNF6NN56B3
X-Message-ID-Hash: GAM2DMCCAJBCCJ6KKXOMSFNNF6NN56B3
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] rfnoc_modtool io_ports not being populated
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GAM2DMCCAJBCCJ6KKXOMSFNNF6NN56B3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7635590119822875543=="

--===============7635590119822875543==
Content-Type: multipart/alternative; boundary="0000000000000aa7d506301733fa"

--0000000000000aa7d506301733fa
Content-Type: text/plain; charset="UTF-8"

I am trying to add a timekeeper listener, axi_mm memory interface, and a
pps interface using rfnoc_modtool with the yml description and it doesn't
seem like it actually adds the ports to the top level when the code is
being generated.

I verified this by using the replay.yml block in an OOT and it only seems
to create the chdr, ctrl, and adds the mem_clk input.

Is this a known issue? Am I doing something wrong?

Sorry for the confusion.

Thanks,
Brian

--0000000000000aa7d506301733fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am trying to add a timekeeper listener, axi_mm memory in=
terface, and a pps interface using rfnoc_modtool with the yml description a=
nd it doesn&#39;t seem like it actually adds the ports to the top level whe=
n the code is being generated.<div><br></div><div>I verified this by using =
the replay.yml block in an OOT and it only seems to create the chdr, ctrl, =
and adds the mem_clk input.</div><div><br></div><div>Is this a known issue?=
 Am I doing something wrong?</div><div><br></div><div>Sorry for the confusi=
on.</div><div><br></div><div>Thanks,</div><div>Brian</div></div>

--0000000000000aa7d506301733fa--

--===============7635590119822875543==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7635590119822875543==--
