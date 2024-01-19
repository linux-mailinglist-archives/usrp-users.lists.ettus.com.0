Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C5F8323D4
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jan 2024 04:34:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ECD02385474
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jan 2024 22:34:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705635260; bh=BsDnJdtWiRWYDOT7RLPEZcrRWSexv8SPAWE9G3+MlSA=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=CqjVUXLbbIG8pmpsTki8qY5ygpPxkKDdb2inAWrnG8n/xqNyJpFhWAgJEaYIAovRw
	 ZXJbaOO9/OiAUjLtT31jGzs2JgO/cy4DjRHqT1vyHY4Xfef2OPbBAl2aOywMemlfOz
	 aEuTGSuV5bYVLUKo17FIV3Egxsk5cxibhP4esn7HgYOtYYBW7c/mnO/ivGiBVDVSGk
	 Pcc+T5kqAZpf2PXFaqBbAJtVYV1Bgs9KKDVptEJCgzNwm6+4pdJjxQ/Iv0Lcw0lHak
	 gMZbmVzNVvgwF2/09dgPlbxR6gMjacOepe3rilwe4vpcAgJ+FA6rXdDlwKiL3c58AY
	 PVShvAqpIt0mg==
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 1AA59383AF9
	for <usrp-users@lists.ettus.com>; Thu, 18 Jan 2024 22:33:27 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="DAXwfy6h";
	dkim-atps=neutral
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-40e9ce530b9so3530495e9.0
        for <usrp-users@lists.ettus.com>; Thu, 18 Jan 2024 19:33:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1705635206; x=1706240006; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2bP5IRL3RIHUmQr7Fx9pxXUztn/ZWEueQUb8louqpHc=;
        b=DAXwfy6heTEb1S0TaNshaEpkAZftMdnV3IPlr8cPipORDwB2smJ9/6En7u/2Ls6b/S
         6NSyD0cDSK32gYZ+RX47Q2HkMeJBzt1FcCniZP74yvP8zX+DjTschzn9Fi3AtuN0kjeC
         JuOGMDQPNXbSv3OxoyMwMT7tW5227VLAFjnF6j2A4gHOoMA0BWbsGb2kQJH8L7lm88rb
         VD2uWsPmR08rdart4OPDG8rZ8CMytrPEMsB7SG7XF7hrxnjSo11XdpWFgCK5By3WGIl5
         TXZmrzqG+qzMa9iy3nrTX49cTvEz54UV9Blyatz260QeGhMekuV2NjA68HL+kO0Z8KxU
         1/zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705635206; x=1706240006;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2bP5IRL3RIHUmQr7Fx9pxXUztn/ZWEueQUb8louqpHc=;
        b=g2Mxg94krv3JuxN6R2CRTINo2H42bjVaCIU2oZqmrQPpLyCxd+fsCr4YFh4peivDlA
         N0oRdUB4AqtJ/iZ46xXUhxQu5vEkopwCC6vec6daqx9wbhsd/TeUgTg8o6OFLkg2Hey/
         DZ7adhTDlRExkbr6Sg7/yAWfUCRotudNJ1tNFhs6B95AHQpM2v7uSmIyUiGz82w5m7q+
         OXZjzerKulGhE575c5iWtMV4OldIBqk1l4ldexlHhPJQd8oNk60yx/qmyTMwu/qTkhqf
         yZNf0f5SgIw+1anoxaOqTMAvvdKKvQYEvD7opAKPtR98LEDUCHj9k1TNQQDrEuRWpG15
         qFyg==
X-Gm-Message-State: AOJu0Yz8P+2PMa5Hw8+Jka9LbeJD2wLpAOdEXdUWcPHsPPL7FCJ62EPk
	RhpHZgIyMGaNsyv88W6uV4vI98rmAJ8fL0DR+ymnTKLPDikJLGayl++VKXPZeQ2pA9YfBIRMMvZ
	CZ0JoK6VUQgfFvmcvW2gA283ZQcJmyAEBzYCm
X-Google-Smtp-Source: AGHT+IFY2Fnb+D4qK+RAnl/U8YyahGJDK8AUUbRfnoI5LN0UM2b93Gsd6Kh65Vt+Nr8fuCZYUzeWhmpU/lnjTRRD+yA=
X-Received: by 2002:a7b:c044:0:b0:40d:8f14:bf18 with SMTP id
 u4-20020a7bc044000000b0040d8f14bf18mr969783wmc.62.1705635205768; Thu, 18 Jan
 2024 19:33:25 -0800 (PST)
MIME-Version: 1.0
References: <fyCsgGksE2VAhAZhztzCjoXBVTVbOwmq3WsUMZCjEcY@lists.ettus.com>
In-Reply-To: <fyCsgGksE2VAhAZhztzCjoXBVTVbOwmq3WsUMZCjEcY@lists.ettus.com>
Date: Thu, 18 Jan 2024 22:33:14 -0500
Message-ID: <CAB__hTSt+eiv9+DQY1rW0qPCdn8_8c+ZfX6nyJ8i1NSsAagG1Q@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: T5FKVF2YFUC7TP7BJWHU3S7EPYI26OZC
X-Message-ID-Hash: T5FKVF2YFUC7TP7BJWHU3S7EPYI26OZC
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting "S" error when using dpdk and replay block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T5FKVF2YFUC7TP7BJWHU3S7EPYI26OZC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4850377542688402257=="

--===============4850377542688402257==
Content-Type: multipart/alternative; boundary="0000000000008eca84060f4424bd"

--0000000000008eca84060f4424bd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Joe,
The "S" errors imply that the receiver of a packet has detected that
incoming packets are out-of-sequence.  Each successive packet is
sequentially numbered so if everything goes well, the receive side should
receive the packets in sequential order.  If you are sending from your host
to the Replay block, I think it means that the SEP on the FPGA has detected
that the packets are out-of order.  I don't know why this would happen.
Can you slow down the transfer (assuming you don't need the DPDK efficiency
on the Tx side)?  It should back-pressure but maybe it's not for some
reason.
Rob

On Thu, Jan 18, 2024 at 1:46=E2=80=AFPM <jmaloyan@umass.edu> wrote:

> Hello,
>
> I currently have a custom CG_400 image where I utilize the replay block.
> When I run my application without dpdk on, data is successfully written t=
o
> the DRAM and played back. However, if I use the same image and same
> application, but I turn on DPDK, the application stalls while data is bei=
ng
> recorded to the replay block, and I get a bunch of =E2=80=9CS=E2=80=9D er=
rors, which I
> assume implies a =E2=80=9Csystem=E2=80=9D error. How do I go about using =
dpdk with the
> replay block.
>
> Thanks
>
> Joe
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008eca84060f4424bd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Joe,<div>The &quot;S&quot; errors imply that the receiv=
er of a packet has detected that incoming packets are out-of-sequence.=C2=
=A0 Each successive packet is sequentially numbered so if everything goes w=
ell, the receive side should receive the packets in sequential order.=C2=A0=
 If you are sending from your host to the Replay block, I think it means th=
at the SEP on the FPGA has detected that the packets are out-of order.=C2=
=A0 I don&#39;t know why this would happen.=C2=A0 Can you slow down the tra=
nsfer (assuming you don&#39;t need the DPDK efficiency on the Tx side)?=C2=
=A0 It should back-pressure but maybe it&#39;s not for some reason.</div><d=
iv>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Thu, Jan 18, 2024 at 1:46=E2=80=AFPM &lt;<a href=3D"mailto:j=
maloyan@umass.edu">jmaloyan@umass.edu</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><p>Hello,</p><p>I currently have a cus=
tom CG_400 image where I utilize the replay block. When I run my applicatio=
n without dpdk on, data is successfully written to the DRAM and played back=
. However, if I use the same image and same application, but I turn on DPDK=
, the application stalls while data is being recorded to the replay block, =
and I get a bunch of =E2=80=9CS=E2=80=9D errors, which I assume implies a =
=E2=80=9Csystem=E2=80=9D error. How do I go about using dpdk with the repla=
y block.</p><p>Thanks</p><p>Joe</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000008eca84060f4424bd--

--===============4850377542688402257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4850377542688402257==--
