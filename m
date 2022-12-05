Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE1B642AC0
	for <lists+usrp-users@lfdr.de>; Mon,  5 Dec 2022 15:55:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E648C383EBB
	for <lists+usrp-users@lfdr.de>; Mon,  5 Dec 2022 09:55:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1670252151; bh=pPE/mHTu3F0mNAMljq7WlCRGrF2oSIzZ3GuLsjwi3ZM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=C6I/eSBFXNicbGuOMu25CVeSAlLTMSHC/JWE4RLclU518807dswiPyZLT9SYhG+qx
	 eR8ArAJtQ6Hy7BX5MSdo0QiX4/IImfvCYYmIrbwCol7xS4+/Gi51AANtxsw4uf+xUh
	 YWfcioEQ+bvu1bp9K+eWY7UBoQx3/IoLXutP0w/mAgUtWFRYTWu5CTiTmEK0Zi9EOb
	 coxaMdo11ztp50rdlN5ij/NyUWFbJkfh06Fd1d0xKCr8GXD1BpkcnZhFHm3026rkwd
	 s+hLdDWCNa0U3jxSFl+oblr589VhNpJG0/VxC8IOUwkX10I5QMXN67oog0yr44a24B
	 X8qNG4ymmcvsw==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 53C9F380DA1
	for <usrp-users@lists.ettus.com>; Mon,  5 Dec 2022 09:55:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="JFbaAZh1";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id td2so28386502ejc.5
        for <usrp-users@lists.ettus.com>; Mon, 05 Dec 2022 06:55:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=78xof9S4r7wMrNu74sOtRZr/47gzaYl4bsRiALVMYks=;
        b=JFbaAZh1WsL5AVpxN1gfl/zKJeXRf4YLIwyZpd4b5OpV30kcHeI7A5S0qQNtV+nxm0
         bT+VPrkZuLC0e2AgebRtgm1BlZFSL4VA56K6slC7C2sHuSDkZBM9Dd8sW25FYV/HuI+t
         TLpkk5t+wRMFGQxCKjjOS1Hsio+G+i07YzdwtJ5u7SF7xKqEk9jGbR2GvrCFkFhRLBiR
         88wnwecgWrpn0QjtL6poEBsUEw+m8i60sDarwQu/lTuMuyuZe1d3Ck4p6x9NvpA0hHFp
         m8P3PkGJuZ58sAIudIGaPHiuTF+pwn8JnoQIrg0uXXwfdZW4OIvivhAy7CBtbHO2Rnxi
         YV8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=78xof9S4r7wMrNu74sOtRZr/47gzaYl4bsRiALVMYks=;
        b=YIzV+XbKKXzV6EcLB6LDD5+iPp8uPoBHOqpu1bD64ojQvmap0AcCBbG854kFzA3ioO
         phD1MBxVu2Sy8bBYqGGdEGu6AaqQvJSzwRQSddNAoSwf3S/T4WHVnYnE6YzHGrU/h7oO
         WVpc+VBBTJv0tmaLoNx5OLabasWHQXFBjEI8WDrE1sERl+Eybc4cJYRdUWCLPR8oMwgL
         8wX0HUHW7VwZQnOarski8th8wL0nY0Ua2z5/AWrSwTwNUqhwpHGvwRWQzOn3VSFgW2hB
         /vg8q3eXUN+SPi1Pqu7FJnxmS4JR9IVT+KYzJwNw189EGY+8U1VzbS1dkIDdLLrFQ0UX
         PCVQ==
X-Gm-Message-State: ANoB5plcwbxMa1A5CHHnfCbXgv/tQaCMFzPfVq3lk824bO1edr49KMzn
	5tuFuqALVlTS70xvSeb59GiJbk0Kr8oNkJJB/ht2uYGthqFPpw==
X-Google-Smtp-Source: AA0mqf4vFG0Q+JiHesdvRhTGUFQAp6zqQq2RRc9EffKYmm+KjAI9m92bOPmS1Cefx9p+Ybf3JaIeZxzoN9fphFCavO0=
X-Received: by 2002:a17:906:583:b0:78d:9e18:b8f7 with SMTP id
 3-20020a170906058300b0078d9e18b8f7mr67341297ejn.657.1670252142958; Mon, 05
 Dec 2022 06:55:42 -0800 (PST)
MIME-Version: 1.0
References: <CANV7_JNctBkVjQX2gaQYnwbD2OxdWyCta14=d_75Rah92mZkxA@mail.gmail.com>
In-Reply-To: <CANV7_JNctBkVjQX2gaQYnwbD2OxdWyCta14=d_75Rah92mZkxA@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 5 Dec 2022 09:55:32 -0500
Message-ID: <CAB__hTSw1TWoGqdW+ARytxWG_Va8q9_Cx3xCxUmB5v9_8ifqHw@mail.gmail.com>
To: Roberto Rigamonti <roberto.rigamonti@gmail.com>
Message-ID-Hash: P2YW4X337OC3UPZL3M5NK6VURGY54TUF
X-Message-ID-Hash: P2YW4X337OC3UPZL3M5NK6VURGY54TUF
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Single multi-usrp or multiple, synchronised usrp -- which is best ?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P2YW4X337OC3UPZL3M5NK6VURGY54TUF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0983622934650025941=="

--===============0983622934650025941==
Content-Type: multipart/alternative; boundary="000000000000ab49c905ef15e16b"

--000000000000ab49c905ef15e16b
Content-Type: text/plain; charset="UTF-8"

Hi Rob,
I don't know the direct answer to your question about whether it is better
to use a single "device" instance or to handle multiple boards in different
threads. But, I'm wondering if perhaps the only thing that is critical is
the handling of streamers.  In either case you mentioned, you can have
multiple streamer threads (one for each channel if you want). In the past,
I experienced better performance by running each streamer in its own
thread, but I can't confirm if that is still true in more recent versions
of UHD.  On a side note, you might want to take a look at the Ettus file
host/lib/usrp/multi_usrp_rfnoc.cpp. This file shows how Ettus implements
the multi_usrp object using the lower level commands of the RFNoC API.
Rob

On Mon, Dec 5, 2022 at 9:32 AM Roberto Rigamonti <
roberto.rigamonti@gmail.com> wrote:

> Hello,
>
> I have a mix of N320/N321 boards, and I would like to make synchronised
> acquisitions using White Rabbit.
> I have already achieved that using a custom software that creates a single
> multi-usrp that encompasses all my boards (as it is suggested in
> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD),
> but I've just stumbled upon Ettus Multichannel RF Reference Architecture (
> https://kb.ettus.com/Multichannel_RF_Reference_Architecture) where
> individual boards have their acquisitions made by separate threads.
>
> I was wondering which of the two approaches is best --- I would have bet
> on the former, since it leaves the burden of dealing with multiple boards
> to UHD (more elegant, less error-prone), but the other one is THE reference
> architecture...
>
> Thanks in advance for your help! :)
>
> Best,
> Rob
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000ab49c905ef15e16b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Rob,<div>I don&#39;t know the direct a=
nswer to your question about whether it is better to use a single &quot;dev=
ice&quot; instance or to handle multiple boards in different threads. But, =
I&#39;m wondering=C2=A0if perhaps the only thing that is critical is the ha=
ndling of streamers.=C2=A0 In either case you mentioned, you can have multi=
ple streamer threads (one for each channel if you want). In the past, I exp=
erienced better performance by running each streamer in its own thread, but=
 I can&#39;t confirm if that is still true in more recent versions of UHD.=
=C2=A0 On a side note, you might want to take a look at the Ettus file host=
/lib/usrp/multi_usrp_rfnoc.cpp. This file shows how Ettus implements the mu=
lti_usrp object using the lower level commands of the RFNoC API.</div><div>=
Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Mon, Dec 5, 2022 at 9:32 AM Roberto Rigamonti &lt;<a href=3D"ma=
ilto:roberto.rigamonti@gmail.com">roberto.rigamonti@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r"><div>Hello,</div><div><br></div><div>I have a mix of N320/N321 boards, a=
nd I would like to make synchronised acquisitions using White Rabbit. <br><=
/div><div>I have already achieved that using a custom software that creates=
 a single multi-usrp that encompasses all my boards (as it is suggested in =
<a href=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Comma=
nds_in_UHD" target=3D"_blank">https://kb.ettus.com/Synchronizing_USRP_Event=
s_Using_Timed_Commands_in_UHD</a>), but I&#39;ve just stumbled upon Ettus M=
ultichannel RF Reference Architecture (<a href=3D"https://kb.ettus.com/Mult=
ichannel_RF_Reference_Architecture" target=3D"_blank">https://kb.ettus.com/=
Multichannel_RF_Reference_Architecture</a>) where individual boards have th=
eir acquisitions made by separate threads.</div><div><br></div><div>I was w=
ondering which of the two approaches is best --- I would have bet on the fo=
rmer, since it leaves the burden of dealing with multiple boards to UHD (mo=
re elegant, less error-prone), but the other one is THE reference architect=
ure...</div><div><br></div><div>Thanks in advance for your help! :)</div><d=
iv><br></div><div>Best,</div><div>Rob<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000ab49c905ef15e16b--

--===============0983622934650025941==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0983622934650025941==--
