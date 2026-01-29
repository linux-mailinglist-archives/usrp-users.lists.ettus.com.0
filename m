Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aD0IJdJ0e2mMEgIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jan 2026 15:55:14 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD84BB132E
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jan 2026 15:55:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9598138DE95
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jan 2026 09:55:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769698512; bh=2jYyw9bq5X69MiUUpHiam/BsYV/3hQTXuWY11glKqBo=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=zAYDO1YYo4ZfViwFw+152B/1jwZ9YsdtwUpgaLP88HOC4/eh0c7imQBWkDSDYfszt
	 4w7xjkZdtVVN11fKz7CAvoPSA8P9cf6Uk+gB1w3tX9V/EM3IcJbhNbVqK6dH/KxrkW
	 UKgsjB+xc6IXKTvras7bXpeYNkFA8IoN0bsnclj4TBifVbHMokAip4xXtUMOhS8CpF
	 09D60xd4NI2d5MKorpjPpjjdJs73PtlBWcjjSjVs1/UZF+94hk7Smn+sWxLly+FOap
	 G4t6GraJr7dFWedYrK0BW9Viv4XMXKXnBPYpHHY4byxQ1Pn5O+hV9EJEzZMPbOJiEe
	 SBgpOwDzhN2dA==
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 1FCB238D1E5
	for <usrp-users@lists.ettus.com>; Thu, 29 Jan 2026 09:54:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Na/lpfkq";
	dkim-atps=neutral
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-7942b9663f8so10001687b3.2
        for <usrp-users@lists.ettus.com>; Thu, 29 Jan 2026 06:53:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769698439; cv=none;
        d=google.com; s=arc-20240605;
        b=FJ/nrF74B4/iDdtUwXIXK71BOg/fxiiF7gRk6KPvppSvTzbk2oH9R/XnnlWoe6tZhr
         GS9i7uIadvFSrwGf4BYH1BGXccv2UL8IvwY0YUBVptocoPVqG1Kw7xQEGjq5nc5bThjR
         CguunOVThlNPe8JV93FOzUZalBEMgl3FciR8WY/aP5cxB8I/XDL7JpACciEWWk9a/rou
         LwmNhCreSVPRFp2LCbGx2PYOx6qh7iEOGWzc9LJkob1DHwT8hZudGYpRcoxMfuxA0BjZ
         ZjVhkFrnN1ZBqhmEpl3+ytM/V4zLP1VQPu193GVP2BTcGXuX0BX5N0uFxLluCe3p+8Y1
         tWqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=M//PhOWN/vZ/qhefrZC8OOZsqghCcSHOVwHUp/F4f5Y=;
        fh=vj2MHvLR32WxuQprBUVL44zYYgIQJclnSJ8R0m0Tg2M=;
        b=La1EFEmvjwe4hJZrgLbaJ0aYGZDB2YL3zcRymDaxG9iCdh4qPyAhd1S+YiWQAMOV6S
         FaqU3csKoxXeID96q6eqncWNo4aoVCgEJo3XIxCqTr2NVFJ1yZXl2v46cEWbFcSvHrzp
         DVsjKXNE/ZQbglggpMhRiMK4g1NI5cFeZaEmxvoGuGwXTDglTYCyJMoOyYNTmJEroPE6
         bC89yVzQd6yiWALsoSXz8w+H3Kzp6TuM3D5o79YISvyizWJmsErvaJuKu48rj8XVq8RE
         vtY4m6GWKIQGG3xMvBygVYjFTbhuDMILcIX1P6WitOI4Q4iQfVcb9HgFrpG73yw71Alq
         mBcQ==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1769698439; x=1770303239; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M//PhOWN/vZ/qhefrZC8OOZsqghCcSHOVwHUp/F4f5Y=;
        b=Na/lpfkqU7dE8sdJDFN7g3GJCbrh5kuhqvrDCGFhUEcdVGijwFyIN8HKsIM/ULjUW9
         5EICGOExKJqWpYSSSOeXkdApvd8eel3LQ8h3sLOV5mfSk7PdozbOYQ+m0ETkoT3MthlC
         ESXUIbYenfAqGQ5pKXv7S3Bdm3c++JhQYzLgzzkZNAbQljhIfVYKDQpugxbMaVXj6S+U
         3qn4jZKX9RrAhbNM6UzSwX5DbFrogb9gdTYgjtrE7MH0u9wcZ1BHDbYy1BcK1J0G6gBt
         r3y+MVQ3PjXeIpJq75eYVq6KsO5Ff//uFr57tGhtOKDebF+ENgzqugDRwGQ6SEKMZII5
         Cdgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769698439; x=1770303239;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M//PhOWN/vZ/qhefrZC8OOZsqghCcSHOVwHUp/F4f5Y=;
        b=BM8basBOW9YPlvWtEE31wVYXqRa2gnHI+MRFZpK6If6qYybK87n+5vjgyk4xxSACZ6
         UJSLqodnerUervE1ni9GDR6dvXGmXfiFhSH5p2R6ikBaZy3K2R6rVmL3csuKWsYuTgZU
         TTdBqR9s11WBfTSmhhVJXM5vEvACZCTQvdCqijZxWxrKNJ6gYgMITBJZAqS64mK3TBsn
         yi95wgm/unKHzeyQQpJDpRa790ZUl1a2wEe11oz+mNznfYat0gbaK8xewrlr0jqXr+bq
         xRNzGG+g4IT+4opR8NwKDBwCX9X95mmuCBvieQo9+Vv7VM+/SdcPV9omrjG+zJM9eBC6
         X4fQ==
X-Gm-Message-State: AOJu0Yy2N5i9jvAwFzC5J6Z18jTtjkEQCSZVjFIOaYHXFB/uRKkEFWFC
	sk8r0MVlRKoq2fyU7oF/YWKtshkYGUnv4fHICEaplePGHmD+TSwvGrVhPrGOWEfshjtSG/oDZBS
	KyA2XHe7t0BGowZ+MT1XZlkK3uXv4K/KaMSrTpgDxt7isT6WfY8M=
X-Gm-Gg: AZuq6aL2pwcERecSN6LXOutfiCr3mkAj8dd108s+09qs2DtZC3/Q90zEsozKSGrieXt
	BTQzPEEqC08xYEu/4A1CE++bB+rSbiUgiWLrt1KXHXKuR9BCkZxfmK3nLTwpDsMVoyj71xiFQpy
	pOE6gvNkpMM3MqRgR8qg3qKAwrwjBsY5tAT25W5cyZ/H/Qenr9+L0vfaps3v3c2PTUVO5NQON7b
	Xco8i9gCmRmiZUHZMM04jT7t2Bp1GNs+FqQpJvzU1v/1JYdjopEmLGFofBwpAlESDj137SchV1C
	x30GfyPnmLKAu22inSYWRD2pwDjXHSjBIoNgTA==
X-Received: by 2002:a05:690c:30c:b0:783:6f68:2a05 with SMTP id
 00721157ae682-7947ab1cec8mr72521117b3.14.1769698439089; Thu, 29 Jan 2026
 06:53:59 -0800 (PST)
MIME-Version: 1.0
References: <cQFy1YoXmAJXfGbw8z0UoqZhCkKBbIz95CTCKEDGMSw@lists.ettus.com>
In-Reply-To: <cQFy1YoXmAJXfGbw8z0UoqZhCkKBbIz95CTCKEDGMSw@lists.ettus.com>
Date: Thu, 29 Jan 2026 09:53:49 -0500
X-Gm-Features: AZwV_QgCXMwFCeLK_xspJmVOIaL13BGkNfiP8Je5Hnk73gOhzazYfzUGu-NRVL0
Message-ID: <CAB__hTRkt=o2H_CaCFDJOrCzQ_dzMW+FjTD=Lj0-eXaUH9-x=g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: OKUUBU5CVS4PF5WMNDDT32GMTLDMWCJU
X-Message-ID-Hash: OKUUBU5CVS4PF5WMNDDT32GMTLDMWCJU
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?b?UmU6IFg0NDAgWDRfNDAwIHdpdGggRERDIG5vdCB3b3JraW5n4oCP4oCP?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OKUUBU5CVS4PF5WMNDDT32GMTLDMWCJU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8725670793731233648=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	TO_EQ_FROM(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_DKIM_REJECT(0.00)[nd.edu:s=google];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[rkossler@nd.edu];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,nd.edu:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,emwd.com:dkim,ettus.com:url,ettus.com:email,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Queue-Id: BD84BB132E
X-Rspamd-Action: no action

--===============8725670793731233648==
Content-Type: multipart/alternative; boundary="000000000000d2c3f4064988068e"

--000000000000d2c3f4064988068e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Daniel,
It sounds like what you may need is a channelizer of some kind. For
example, an 8-point FFT block would filter your input signal into 8 equal
bandwidth streams (while decimating by 8).  I think a more general
channelizer might be what you need though. I just did a quick search and
noticed this <https://github.com/EttusResearch/rfnoc-pfb-channelizer>althou=
gh
it is 8 years old.
Rob

On Thu, Jan 29, 2026 at 7:28=E2=80=AFAM niels.steffen.garibaldi--- via USRP=
-users <
usrp-users@lists.ettus.com> wrote:

> Hi Daniel,
>
> Here a few notes regarding your questions:
>
>
> Is it possible in the rfnoc framework? Can I change the ce clock of my OO=
T
> block to a higher clock than 266e6 ?
>
> As I mentioned in my previous response, it is technically possible but
> would require larger modifications on the FPGA side on your part, so if y=
ou
> are not that familiar with FPGA development I would recommend against it.
>
> While changing the clock rate of the CE clock could be done in theory, th=
e
> FPGA code has only been validated to work when running with the default
> clock rate of 266MHz, which is already one of the highest clock rates use=
d
> in the current FPGA implementation.
>
> Increasing this rate further will most likely lead to timing failures whe=
n
> you try to rebuild the bitfile, which would then require manual
> optimization to meet the tighter timing.
>
> I=E2=80=99m assuming you would want to double it, which I think would be =
extremely
> hard to do with the current implementation, so I would strongly advise
> against this. You would most likely have to write a new optimized ddc
> implementation that can run at 500MHz, or you would have to try to
> parallelize the implementation to enable it to process multiple samples p=
er
> clock cycle which is also not trivial, especially since the current DDC
> implementation has not been updated in quite some time.
>
>
> can i change the DDC clock to something lower than 266.66MHz (for sample
> rate smaller than 100M)
>
> Not sure I understand what you mean here.
>
> Decreasing the CE clock would mean that the current DDC block
> implementation could only support even lower input sampling rates(for
> 100MHZ this would be somewhere in the range of ~90MSps), so I do not see
> how this would help your use case of processing the full 500 MSps of inpu=
t
> data coming from a single radio channel.
>
>
> or I must upload the samples to the host ?
>
> This would be the easiest option, as it does not require any FPGA
> modifications, although the downside is that you would need a host setup
> that can handle receiving the data at these high rates:
>
> 491.52MSps * 32bit per sample =3D> ~15.72Gbps, requiring a 100GbE connect=
ion
> or equivalent.
>
> This can be a challenge for a lot of non-optimized host setups.
>
>
> Sorry I couldn=E2=80=99t be of more help.
>
> Regards,
> Niels
>
>
> ------------------------------
>
> Daniel Ozer wrote:
>
> Thank you for the detailed response. In the end, I want to take all
> 491.52e6 band (from 1 Rx) and split it into smaller bands. Is it possible
> in the rfnoc framework? Can I change the ce clock of my OOT block to a
> higher clock than 266e6 ? or I must upload the samples to the host ?
>
>    -
>
>    can i change the DDC clock to something lower than 266.66MHz (for
>    sample rate smaller than 100M) thanks in advance
>
> =E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=93=
=D7=B3, 14 =D7=91=D7=99=D7=A0=D7=95=D7=B3 2026 =D7=91-18:35 =D7=9E=D7=90=D7=
=AA =E2=80=AAniels.steffen.garibaldi--- via
> USRP-users=E2=80=AC=E2=80=8F <=E2=80=AAusrp-users@lists.ettus.com=E2=80=
=AC=E2=80=8F>:=E2=80=AC
>
> Hi Daniel,
>
> The short answer is that the current DDC/DUC implementations will not wor=
k
> for Sampling rates above 250MHz.
>
> The long Answer: The current implementation of the DDC/DUC RFNoC blocks
> only supports a single sample per clock cycle processing of data.
>
> Internally the DDC/DUC blocks use the faster CE(Compute Engine) clocks to
> do the Down-/Upconverting, which on your X440 device is running at
> 266.66MHz https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#X440.
>
> Therefore the highest sampling rates supported by the DDC/DUC blocks is
> 250MHz, which corresponds to the 200MHz BW variants of the provided
> bitfiles.
>
> If the radio provides samples at a higher rate, they will still reach the
> DDC block but the internal serialization buffers will fill up quickly as
> the block can not process incoming samples fast enough. This will lead to
> an overflow, which might be related to why your rfnoc session times out.
>
> This is the also the main reason why only the =E2=80=9C*_200_rfnoc_image_=
core.yml=E2=80=9D
> variants have the DDC/DUC blocks included.
>
> You can still capture samples at a faster sampling rate, but you will hav=
e
> to stream them to your host first and then do the downconversion there. B=
e
> aware that this requires a fast connection between USRP and Host, which c=
an
> be challenging in some setups.
>
> Another thing you could try is to reduce the MCR closer to your target
> sampling rate. The x440 supports a wider variety of flexible sampling rat=
es
> than the other USRPs, so if you only care about the downsampled waveform,
> you could just try to get close to your desired sampling rate that way. S=
ee
> the appendix of this document for a list of supported sampling rates of t=
he
> x440
> https://kb.ettus.com/About_Sampling_Rates_and_Master_Clock_Rates_for_the_=
USRP_X440#Appendix
> .
>
> If you still require this feature, you will either have to update the
> implementation yourself and make the DDC/DUC multisample capable, or you
> could try and contact Ettus/NI/Emerson support and put in a feature
> request. Depending on your business case the implementation might be
> prioritized and updated in a future release.
>
> Regards, Niels
> ------------------------------
>
> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send
> an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d2c3f4064988068e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Daniel,<div>It sounds like what you ma=
y need is a channelizer of some kind. For example, an 8-point FFT block wou=
ld filter your input signal into 8 equal bandwidth streams (while decimatin=
g by 8).=C2=A0 I think a more general channelizer might be what you need th=
ough. I just did a quick search and noticed <a href=3D"https://github.com/E=
ttusResearch/rfnoc-pfb-channelizer">this </a>although it is 8 years old.</d=
iv><div>Rob</div></div><br><div class=3D"gmail_quote gmail_quote_container"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 29, 2026 at 7:28=E2=80=
=AFAM niels.steffen.garibaldi--- via USRP-users &lt;<a href=3D"mailto:usrp-=
users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi Daniel,</p><p>Here a=
 few notes regarding your questions:</p><p><br></p><blockquote><p>Is it pos=
sible in the rfnoc framework? Can I change the ce clock of my OOT block to =
a higher clock than 266e6 ?</p></blockquote><p>As I mentioned in my previou=
s response, it is technically possible but would require larger modificatio=
ns on the FPGA side on your part, so if you are not that familiar with FPGA=
 development I would recommend against it.</p><p>While changing the clock r=
ate of the CE clock could be done in theory, the FPGA code has only been va=
lidated to work when running with the default clock rate of 266MHz, which i=
s already one of the highest clock rates used in the current FPGA implement=
ation. </p><p>Increasing this rate further will most likely lead to timing =
failures when you try to rebuild the bitfile, which would then require manu=
al optimization to meet the tighter timing. </p><p>I=E2=80=99m assuming you=
 would want to double it, which I think would be extremely hard to do with =
the current implementation, so I would strongly advise against this. You wo=
uld most likely have to write a new optimized ddc implementation that can r=
un at 500MHz, or you would have to try to parallelize the implementation to=
 enable it to process multiple samples per clock cycle which is also not tr=
ivial, especially since the current DDC implementation has not been updated=
 in quite some time.</p><p><br></p><blockquote><p>can i change the DDC cloc=
k to something lower than 266.66MHz (for sample rate smaller than 100M) </p=
></blockquote><p>Not sure I understand what you mean here. </p><p>Decreasin=
g the CE clock would mean that the current DDC block implementation could o=
nly support even lower input sampling rates(for 100MHZ this would be somewh=
ere in the range of ~90MSps), so I do not see how this would help your use =
case of processing the full 500 MSps of input data coming from a single rad=
io channel.</p><p><br></p><blockquote><p>or I must upload the samples to th=
e host ?</p></blockquote><p>This would be the easiest option, as it does no=
t require any FPGA modifications, although the downside is that you would n=
eed a host setup that can handle receiving the data at these high rates: </=
p><p>491.52MSps * 32bit per sample =3D&gt; ~15.72Gbps, requiring a 100GbE c=
onnection or equivalent. </p><p>This can be a challenge for a lot of non-op=
timized host setups.</p><p><br></p><p>Sorry I couldn=E2=80=99t be of more h=
elp.<br><br>Regards,<br>Niels</p><p><br></p><div><hr></div><p>Daniel Ozer w=
rote:</p><blockquote><p>Thank you for the detailed response.
In the end, I want to take all 491.52e6 band (from 1 Rx) and split it into
smaller bands.
Is it possible in the rfnoc framework? Can I change the ce clock of my OOT
block to a higher clock than 266e6 ?
or I must upload the samples to the host ?</p><ul><li><p>can i change the D=
DC clock to something lower than 266.66MHz (for sample
rate smaller than 100M)
thanks in advance</p></li></ul><p>=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=
=D7=9A =D7=99=D7=95=D7=9D =D7=93=D7=B3, 14 =D7=91=D7=99=D7=A0=D7=95=D7=B3 2=
026 =D7=91-18:35 =D7=9E=D7=90=D7=AA =E2=80=AAniels.steffen.garibaldi--- via
USRP-users=E2=80=AC=E2=80=8F &lt;=E2=80=AA<a href=3D"mailto:usrp-users@list=
s.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>=E2=80=AC=E2=
=80=8F&gt;:=E2=80=AC</p><blockquote><p>Hi Daniel,</p><p>The short answer is=
 that the current DDC/DUC implementations will not work
for Sampling rates above 250MHz.</p><p>The long Answer:
The current implementation of the DDC/DUC RFNoC blocks only supports a
single sample per clock cycle processing of data.</p><p>Internally the DDC/=
DUC blocks use the faster CE(Compute Engine) clocks to
do the Down-/Upconverting, which on your X440 device is running at
266.66MHz <a href=3D"https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#=
X440" target=3D"_blank">https://kb.ettus.com/RFNoC_Frequently_Asked_Questio=
ns#X440</a>.</p><p>Therefore the highest sampling rates supported by the DD=
C/DUC blocks is
250MHz, which corresponds to the 200MHz BW variants of the provided
bitfiles.</p><p>If the radio provides samples at a higher rate, they will s=
till reach the
DDC block but the internal serialization buffers will fill up quickly as
the block can not process incoming samples fast enough. This will lead to
an overflow, which might be related to why your rfnoc session times out.</p=
><p>This is the also the main reason why only the =E2=80=9C*_200_rfnoc_imag=
e_core.yml=E2=80=9D
variants have the DDC/DUC blocks included.</p><p>You can still capture samp=
les at a faster sampling rate, but you will have
to stream them to your host first and then do the downconversion there.
Be aware that this requires a fast connection between USRP and Host, which
can be challenging in some setups.</p><p>Another thing you could try is to =
reduce the MCR closer to your target
sampling rate. The x440 supports a wider variety of flexible sampling rates
than the other USRPs, so if you only care about the downsampled waveform,
you could just try to get close to your desired sampling rate that way. See=
 the
appendix of this document for a list of supported sampling rates of the x44=
0
<a href=3D"https://kb.ettus.com/About_Sampling_Rates_and_Master_Clock_Rates=
_for_the_USRP_X440#Appendix" target=3D"_blank">https://kb.ettus.com/About_S=
ampling_Rates_and_Master_Clock_Rates_for_the_USRP_X440#Appendix</a>
.</p><p>If you still require this feature, you will either have to update t=
he
implementation yourself and make the DDC/DUC multisample capable, or you
could try and contact Ettus/NI/Emerson support and put in a feature
request. Depending on your business case the implementation might be
prioritized and updated in a future release.</p><p>Regards,
Niels</p><div><hr></div><p>USRP-users mailing list -- <a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a></p></blockq=
uote></blockquote><p><br></p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000d2c3f4064988068e--

--===============8725670793731233648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8725670793731233648==--
