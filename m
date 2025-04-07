Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 505D0A7E0CF
	for <lists+usrp-users@lfdr.de>; Mon,  7 Apr 2025 16:16:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2351C385F9E
	for <lists+usrp-users@lfdr.de>; Mon,  7 Apr 2025 10:16:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744035391; bh=E1mtUeDyt19Nk6c4JcEEP6TdI/CxkdZ2agYoIRQVv3w=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ST7hoHKLxr+VwkN7fr9kwEO0FueU+zVfVVmUGucrdI3pazlbs7p/H4iRbmQkaMSeF
	 +8+yOKm9p5ciJjiSTKt3W88kMIDmUOaXHvuEwDofFqhDY686XV2J7fzmRNDB2c+8WG
	 oND+PVULTvkU3P02GX3V/OaaH1f7mZPGPwAX1sEaaiPXrV7l0B72jaBueHtFOLLEOW
	 41ix4FX7uUbya6KMQPPTrLbTrfPxqAdezdFkiLWT6qLFqeFAuppN4Q9mXTA26lYHcv
	 zvfJhmsC/3kzbAqtryErqYbEIt9KdTx/sjOd7LZg1oOBhfSI4P4nfXQRJXAgktzlRF
	 wFb4+iFBrb0yg==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id D0C3E385F9E
	for <usrp-users@lists.ettus.com>; Mon,  7 Apr 2025 10:16:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="Am4ODNLv";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ac2ab99e16eso837441666b.0
        for <usrp-users@lists.ettus.com>; Mon, 07 Apr 2025 07:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1744035381; x=1744640181; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C2zNuwCtkRMOrzct9H+jd/Ogus+IxO+PxXnWKDdY0Qs=;
        b=Am4ODNLv2ztEhlqy/38HDOfQ1yiPTXbwPeweCLSc948TwM2Gqtgd986e5jPlhfIuSs
         e3hSr+LGklmBe1wt5sOTjMFskDWJLVxNT87ezabyOByVi/85bj5/+oBCY8Xcd1WcgSsT
         1MI2lvCuKonVkC/3EDI723H+R/rP/ZNRvXgDle9ciOjQUdTYOut1mEW/IEEQBVpm3M+P
         0ZzCD96hPxGGbiPIbvt5B8snIM3czrGai/pQ31Av2hT11dRr7X3qCYk00597BX6Er/88
         1AMhX3mBYDCkQM6Hm3JUfamd+SMfxaRAHOp39fc+wGUPTWsuARMKPJ117GVFSZnC4qIB
         VVpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744035381; x=1744640181;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C2zNuwCtkRMOrzct9H+jd/Ogus+IxO+PxXnWKDdY0Qs=;
        b=DPskUf0JG3osd16s+WztsLFjkNEdQneDFf0NYFP3IENAkb2g30snIQZAxDqvP5jQnR
         HQRQOS96DTVXuAkPoWoEiGZsYAKhMfWaGDgtXO+WnNqLv940Gi1c90Nmydy3VifCQQdN
         k88S+3d+s3rHFKdETebr4pkFY/CV9b7n/IWfV+8Wj5ra1OA7tTzHGJSMJobDLFhb8Sl1
         ikmStMOhINO6+e7Lnv49QFIIbNjfeYbW9h2TgIDMSy/oeKTvul5o0SRn518Mp4nhmlhr
         /uzcWVGswNPHNMlAvwJkZde9L8eMwmsiHWe00UMoI25CUDjtGGSsrhxWfpc+kWj/z6TA
         klMQ==
X-Gm-Message-State: AOJu0Yzldpyq3I1RGlfKriHD/rGqIKEDjpQzHWkQpVfmCM+NrLZr5Jnj
	RLUq4fnmXVlBo20if6kkvsGZDoSbjtj5UGHUQrmPNAkCJtU6VkCRiYuQHf0n12LvU65w9tHMwft
	T0jYcjZFJXGxqvpqFEc5PGGKOWj4F/BTg8+xnTLIYUXBTb7ug148=
X-Gm-Gg: ASbGncsyrQZaGZa0wjPanIpRPzzEajBKJXyr40It6czQjFHQSjK/RoRX3SvDZiOW4ln
	s8Bpx0gHBL06bYT+NL1/1eBnP1MRCsE21frR+0UqCScdqSdk3Tm5B3Sp0pyqaXpkI/C+Ln+9lOs
	fZCO1LOFQQDuixF5Q6rdljCSwxdxNzuamTY5djYCWFju4TF62CeBfwMxa3EQ==
X-Google-Smtp-Source: AGHT+IGfD/F7Tt6Zdn1Fjw3is3YG2Qp2ci6vQpds6DFvTFTDl/u3WpRzws7Jl36ESQc2Zvc5Sc+pEMApAOOrDAt85UI=
X-Received: by 2002:a17:907:72c8:b0:ac7:cfd4:76c6 with SMTP id
 a640c23a62f3a-ac7d6c9f744mr977394466b.3.1744035381313; Mon, 07 Apr 2025
 07:16:21 -0700 (PDT)
MIME-Version: 1.0
References: <5d6dddb5735e4cd89d06e6e18c1854c3@vastech.co.za>
In-Reply-To: <5d6dddb5735e4cd89d06e6e18c1854c3@vastech.co.za>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 7 Apr 2025 16:16:09 +0200
X-Gm-Features: ATxdqUHHGp8ch3YZ-k9kd8ykxKQk_3MHDlxw11SdggPocP81F1TCnsjlog_Bp_w
Message-ID: <CAFOi1A7z6sUAxHJESKsaqznQmWjD=mDzY3q_qhWBiO_icMCRhw@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: R575DTPYA4OTKXV6PCGP7HOUUNIVJZIC
X-Message-ID-Hash: R575DTPYA4OTKXV6PCGP7HOUUNIVJZIC
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc sample alignment from two radio channels
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R575DTPYA4OTKXV6PCGP7HOUUNIVJZIC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1826272950957452671=="

--===============1826272950957452671==
Content-Type: multipart/alternative; boundary="0000000000006131ef063230e1ca"

--0000000000006131ef063230e1ca
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

We don't have any examples of blocks doing MIMO DSP -- that use case is a
bit special because in general, you also want to compare timestamps. But
let's stick with the addsub block, you could consider that a form of MIMO
processing (coherent combining of signals assuming they're already
phase-aligned...?).

The addsub block will properly align samples from upstream radio blocks if
everything is on the same FPGA, because you usually don't lose samples on
the FPGA, and we assume that the radios will get started at the same time.
If you don't consume samples from a radio block, it will stall pretty
quickly.

If tvalid is never going high, then maybe the second radio block is never
actually starting to stream? How are you submitting stream commands?
Straight to the radios, or to the streamer (and if it's the latter, is your
block controller forking the stream command)? If you're running at TRACE
level, then the radio will report all stream commands but for that you'd
need to compile UHD by hand.

--M


On Sun, Apr 6, 2025 at 9:49=E2=80=AFAM Kevin Williams <kevin.williams@vaste=
ch.co.za>
wrote:

> Hi,
>
> I am curious as to how sample alignment for MIMO DSP is guaranteed in the
> RFNoC framework?
>
> I see sample stream alignment mechanisms in blocks like the AddSub block,
> and have written similar logic for my own new blocks. Is there a certain
> tolerance of sample delays that will never be exceeded?
>
> My real question is that I am trying to trace an issue where I have two
> input streams to my block (coming from a 0/Radio#0:0 and 0/Radio#0:1) but
> the second stream is always stalled. I never see TVALID's from it, even
> though both master TREADY's are simply hardcoded for now. (I can see this
> by
> means of packing the handshaking bits into the output data samples.)
>
> I've just compiled an ILA into the design but I suspect this will just sh=
ow
> the same.
>
> Thanks, Kevin
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006131ef063230e1ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>We don&#39;t have any examples of blocks doing MIMO D=
SP -- that use case is a bit special because in general, you also want to c=
ompare timestamps. But let&#39;s stick with the addsub block, you could con=
sider that a form of MIMO processing (coherent combining of signals assumin=
g they&#39;re already phase-aligned...?).</div><div><br></div><div>The adds=
ub block will properly align samples from upstream radio blocks if everythi=
ng is on the same FPGA, because you usually don&#39;t lose samples on the F=
PGA, and we assume that the radios will get started at the same time. If yo=
u don&#39;t consume samples from a radio block, it will stall pretty quickl=
y.</div><div><br></div><div>If tvalid is never going high, then maybe the s=
econd radio block is never actually starting to stream? How are you submitt=
ing stream commands? Straight to the radios, or to the streamer (and if it&=
#39;s the latter, is your block controller forking the stream command)? If =
you&#39;re running at TRACE level, then the radio will report all stream co=
mmands but for that you&#39;d need to compile UHD by hand.</div><div><br></=
div><div>--M</div><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote =
gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Apr 6,=
 2025 at 9:49=E2=80=AFAM Kevin Williams &lt;<a href=3D"mailto:kevin.william=
s@vastech.co.za">kevin.williams@vastech.co.za</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
I am curious as to how sample alignment for MIMO DSP is guaranteed in the<b=
r>
RFNoC framework?<br>
<br>
I see sample stream alignment mechanisms in blocks like the AddSub block,<b=
r>
and have written similar logic for my own new blocks. Is there a certain<br=
>
tolerance of sample delays that will never be exceeded?<br>
<br>
My real question is that I am trying to trace an issue where I have two<br>
input streams to my block (coming from a 0/Radio#0:0 and 0/Radio#0:1) but<b=
r>
the second stream is always stalled. I never see TVALID&#39;s from it, even=
<br>
though both master TREADY&#39;s are simply hardcoded for now. (I can see th=
is by<br>
means of packing the handshaking bits into the output data samples.)<br>
<br>
I&#39;ve just compiled an ILA into the design but I suspect this will just =
show<br>
the same.<br>
<br>
Thanks, Kevin<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000006131ef063230e1ca--

--===============1826272950957452671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1826272950957452671==--
