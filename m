Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 24536A2B184
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2025 19:45:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 62172385CCE
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2025 13:45:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738867556; bh=wcpgH5sMJjef1+TJLBklxXpYpE4dQUS0utpP6DcUr7U=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=uhMGdRylRszpvppbs0vj9D03B2lN/JWaKXKHRPfc3iPfbPhVUVAACYNNJziQXdCy5
	 RJ+ZxeMemLGnNVFALh3eLwUsmJp8eeHI4tIFmXL7CLoe80xzqSvrECVHq3QqIRdEFq
	 SJkdycZ8CR0Qi9h7Genicwzt4VoMA886Ua+3mZMTdXwWKG7mvqDeFHsvthMq+Qgo7S
	 kr9y5UB8LCV/F3Yrq8ISdAnVZpyMq8AjfKFhFw2BHH3IEk34Q8rzuIluOPWwAjxT/9
	 1rxA/fKZEcCstBDvmPxGt+GmD1f8B5CsaG4UWwlf6nEkzn/QuqIqsfalcsLe8ZQfYO
	 B+dzdB7FoPhdg==
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 6447A385C9B
	for <usrp-users@lists.ettus.com>; Thu,  6 Feb 2025 13:44:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AIOdbsVk";
	dkim-atps=neutral
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-71e2aa8d5e3so740779a34.2
        for <usrp-users@lists.ettus.com>; Thu, 06 Feb 2025 10:44:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738867496; x=1739472296; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=P/yjoEkbUWXDiBv1tWtKXtaV2jF5fD8tNQGRRzss8S4=;
        b=AIOdbsVkq79MMd1q/KY1avFOW09GnTHkJbw1+gSDz8xbDSxRKNPwht6lEx8ZcANnBs
         vP1y/VsiqnLXsRZ5tQuqwO0ELBEaKnkLEsBM8ZpVso6hcd4gLsfa5SxaarIhczdGWQka
         AzhDc6Dy8ILlneC2PoN4A/SIk1eYU4dg5P5MttsnuUxFP54fupRK/csDqpUIB1F2mZfJ
         xFD1miGw7wZ0ebyH/ZQhMdY+/oX4ZRf9xYlb3AVIZWV6d1E/36mk4nz0ddTx9uFtBM4N
         CluIPBakqz3drnDhUtw4VvZfCPBTw133yGJgthrB7c7YBjPZ4AKdft25WQGqv4NAKxLq
         f3Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738867496; x=1739472296;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P/yjoEkbUWXDiBv1tWtKXtaV2jF5fD8tNQGRRzss8S4=;
        b=DpRFqFx8QUnwdYm0Q21b+nmKjwt7AtcBVpx0R+14whCiPlNVF2nkMLDqto1Ls2DG0D
         eJwxUJVM1lC73KyybcC70dXZI+F8Ebwv9x7FI57qSXGnb1qHZa82vncYTLe6sRW6zlcG
         ywFyEm5eBMYLs+N8OgJonr56miZ01O3tpfadqXtOdW7yyD/ioKtggYcJec7e3NgNhd1d
         4YEbC2s/ctvsEyZSARYsnp5uYccQWhpG5o9otFDmdvPrh5MMs9HyFUOV1+hsFj0ggoz6
         LK187HwEfN8K17i1vtdWKEPKj2D9KvLKDumlReWHfaH+tvcvU8++lE5OjQX3c4zFiIjI
         jyyQ==
X-Gm-Message-State: AOJu0YwRsDB/PI5Hj9gYEQJULfQ2gkpfLlXjbVIZxhNG9KD/7/hKM/g7
	qaKwWlsdvYtaX8dVVgB8KrSCyERXniov7aNZjAcoO1A0B7LEQcfqu7lSXV5OrrgnPHLVNrnW3oP
	P14rwM+JrV4u++2jxbeyQ/eDlY8R2+Q==
X-Gm-Gg: ASbGncth9sRYs+WnTUEwcjd/kkaBrpXNFPDoSSSJe12f9TVVf6sphh/i6/VWmerX8Ft
	tEhR8IN7eNeHgzEXQmOk+JHedC1ZZeEThAwvOMjeK8JMJWJXox6WrIXhOGIXj1LTlSxHARw4=
X-Google-Smtp-Source: AGHT+IGXKR/2/r62VzumMDnN6YHjxHwXnEP28uhcgewNAACrgmhtZW5fnWoY8sJygBFhJEvZcZAz4O2NjNot+S6jChc=
X-Received: by 2002:a05:6830:490c:b0:718:12af:c89b with SMTP id
 46e09a7af769-726b87b7697mr150860a34.1.1738867496595; Thu, 06 Feb 2025
 10:44:56 -0800 (PST)
MIME-Version: 1.0
References: <nB2NM1pnMJtpMWF7QeSNOzqxO9ATE0c8BGiGdr5VM1E@lists.ettus.com> <0e07e4da-0c5c-45ba-bdbd-b084df814943@gmail.com>
In-Reply-To: <0e07e4da-0c5c-45ba-bdbd-b084df814943@gmail.com>
From: Chris Rogers <c1337rogers@gmail.com>
Date: Thu, 6 Feb 2025 13:44:45 -0500
X-Gm-Features: AWEUYZlDEO821buccljuhX5wAEIELDotg2dVMhsF_WAQ_u9pzsDp1rSXgKV77bc
Message-ID: <CAOEzSFTrUiGK-oOaZkVL2FrGH8-f9HSLmrK6rnsevgL3-9g63Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: SG2YMYDC5F7R5Y4JX6DPG3VB7YXRKL5Z
X-Message-ID-Hash: SG2YMYDC5F7R5Y4JX6DPG3VB7YXRKL5Z
X-MailFrom: c1337rogers@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error when running Benchmark on USRP X440: RfnocError - OpTimeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SG2YMYDC5F7R5Y4JX6DPG3VB7YXRKL5Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7944967232146862111=="

--===============7944967232146862111==
Content-Type: multipart/alternative; boundary="000000000000723bc5062d7da3cb"

--000000000000723bc5062d7da3cb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Marcus is correct, you need to upload an FPGA image that has DUC/DDC
enabled to get arbitrary sample rates in/out. Try using uhd_image_loader to
put the X4_200 image on, which I believe does support DUC/DDC. Then try the
5 MHz rate

On Thu, Feb 6, 2025 at 1:05=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmail=
.com>
wrote:

> On 06/02/2025 13:02, Rilbert Lima via USRP-users wrote:
> >
> > I ran the test using 5e6, however, the same error occurred.
> >
> >
> > root@ni-x4xx-342597F:/usr/lib/uhd/examples# ./benchmark_rate --rx_rate
> > 5e6 --tx_rate 5e6
> >
> > =E2=80=A6
> >
> > [00:00:04.955692172] Setting device timestamp to 0...
> >
> > [WARNING] [0/Radio#0] Requesting invalid sampling rate from device: 5
> > MHz. Actual rate is: 368.64 MHz.
> >
> > [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate
> > is 368.640 MHz
> >
> > [WARNING] [0/Radio#0] Requesting invalid sampling rate from device: 5
> > MHz. Actual rate is: 368.64 MHz.
> >
> > [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate
> > is 368.640 MHz
> >
> > [WARNING] [0/Radio#0] Requesting invalid sampling rate from device: 5
> > MHz. Actual rate is: 368.64 MHz.
> >
> > [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate
> > is 368.640 MHz
> >
> > [WARNING] [0/Radio#0] Requesting invalid sampling rate from device: 5
> > MHz. Actual rate is: 368.64 MHz.
> >
> > [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate
> > is 368.640 MHz
> >
> > [WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 5
> > MHz. Actual rate is: 368.64 MHz.
> >
> > [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate
> > is 368.640 MHz
> >
> > [WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 5
> > MHz. Actual rate is: 368.64 MHz.
> >
> > [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate
> > is 368.640 MHz
> >
> > [WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 5
> > MHz. Actual rate is: 368.64 MHz.
> >
> > [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate
> > is 368.640 MHz
> >
> > [WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 5
> > MHz. Actual rate is: 368.64 MHz.
> >
> > [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate
> > is 368.640 MHz
> >
> > [00:00:04.967447052] Testing receive rate 368.640000 Msps on 1 channels
> >
> > [WARNING] [0/Radio#0] Requesting invalid sampling rate from device: 5
> > MHz. Actual rate is: 368.64 MHz.
> >
> > [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate
> > is 368.640 MHz
> >
> > [WARNING] [0/Radio#0] Requesting invalid sampling rate from device: 5
> > MHz. Actual rate is: 368.64 MHz.
> >
> > [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate
> > is 368.640 MHz
> >
> > [WARNING] [0/Radio#0] Requesting invalid sampling rate from device: 5
> > MHz. Actual rate is: 368.64 MHz.
> >
> > [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate
> > is 368.640 MHz
> >
> > [WARNING] [0/Radio#0] Requesting invalid sampling rate from device: 5
> > MHz. Actual rate is: 368.64 MHz.
> >
> > [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate
> > is 368.640 MHz
> >
> > [WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 5
> > MHz. Actual rate is: 368.64 MHz.
> >
> > [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate
> > is 368.640 MHz
> >
> > [WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 5
> > MHz. Actual rate is: 368.64 MHz.
> >
> > [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate
> > is 368.640 MHz
> >
> > Setting TX spp to 352
> >
> > [WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 5
> > MHz. Actual rate is: 368.64 MHz.
> >
> > OO[WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual
> > rate is 368.640 MHz
> >
> > [WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 5
> > MHz. Actual rate is: 368.64 MHz.
> >
> > [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate
> > is 368.640 MHz
> >
> > [00:00:05.301642718] Receiver error: ERROR_CODE_TIMEOUT, continuing...
> >
> > [00:00:05.301663748] Testing transmit rate 368.640000 Msps on 1 channel=
s
> >
> >
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUOUUUUUUterminate
>
> > called after throwing an inst'
> >
> > [14450.111391] audit: type=3D1701 audit(1738864692.914:16):
> > auid=3D4294967295 uid=3D0 gid=3D0 ses=3D4294967295 subj=3Dkernel pid=3D=
1132
> > comm=3D"bmark_rx_stream" exe=3D"/usr/lib/uhd/examples/benchmark_rate"
> > sig=3D6 res=3D1
> >
> > what(): RfnocError: OpTimeout: Control operation timed out waiting for
> ACK
> >
> > Aborted
> >
> So, this may be an X440-specific thing (doesn't do arbitrary re-sampling)=
.
>
>
> https://kb.ettus.com/About_Sampling_Rates_and_Master_Clock_Rates_for_the_=
USRP_X440
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000723bc5062d7da3cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Marcus is correct, you need to upload an FPGA image that h=
as DUC/DDC enabled to get arbitrary sample rates in/out. Try using uhd_imag=
e_loader to put the X4_200 image on, which I believe does support DUC/DDC. =
Then try the 5 MHz rate <br></div><br><div class=3D"gmail_quote gmail_quote=
_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 6, 2025 at 1:=
05=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com=
">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">On 06/02/2025 13:02, Rilbert Lima via USRP-users w=
rote:<br>
&gt;<br>
&gt; I ran the test using 5e6, however, the same error occurred.<br>
&gt;<br>
&gt;<br>
&gt; root@ni-x4xx-342597F:/usr/lib/uhd/examples# ./benchmark_rate --rx_rate=
 <br>
&gt; 5e6 --tx_rate 5e6<br>
&gt;<br>
&gt; =E2=80=A6<br>
&gt;<br>
&gt; [00:00:04.955692172] Setting device timestamp to 0...<br>
&gt;<br>
&gt; [WARNING] [0/Radio#0] Requesting invalid sampling rate from device: 5 =
<br>
&gt; MHz. Actual rate is: 368.64 MHz.<br>
&gt;<br>
&gt; [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate=
 <br>
&gt; is 368.640 MHz<br>
&gt;<br>
&gt; [WARNING] [0/Radio#0] Requesting invalid sampling rate from device: 5 =
<br>
&gt; MHz. Actual rate is: 368.64 MHz.<br>
&gt;<br>
&gt; [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate=
 <br>
&gt; is 368.640 MHz<br>
&gt;<br>
&gt; [WARNING] [0/Radio#0] Requesting invalid sampling rate from device: 5 =
<br>
&gt; MHz. Actual rate is: 368.64 MHz.<br>
&gt;<br>
&gt; [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate=
 <br>
&gt; is 368.640 MHz<br>
&gt;<br>
&gt; [WARNING] [0/Radio#0] Requesting invalid sampling rate from device: 5 =
<br>
&gt; MHz. Actual rate is: 368.64 MHz.<br>
&gt;<br>
&gt; [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate=
 <br>
&gt; is 368.640 MHz<br>
&gt;<br>
&gt; [WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 5 =
<br>
&gt; MHz. Actual rate is: 368.64 MHz.<br>
&gt;<br>
&gt; [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate=
 <br>
&gt; is 368.640 MHz<br>
&gt;<br>
&gt; [WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 5 =
<br>
&gt; MHz. Actual rate is: 368.64 MHz.<br>
&gt;<br>
&gt; [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate=
 <br>
&gt; is 368.640 MHz<br>
&gt;<br>
&gt; [WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 5 =
<br>
&gt; MHz. Actual rate is: 368.64 MHz.<br>
&gt;<br>
&gt; [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate=
 <br>
&gt; is 368.640 MHz<br>
&gt;<br>
&gt; [WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 5 =
<br>
&gt; MHz. Actual rate is: 368.64 MHz.<br>
&gt;<br>
&gt; [WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate=
 <br>
&gt; is 368.640 MHz<br>
&gt;<br>
&gt; [00:00:04.967447052] Testing receive rate 368.640000 Msps on 1 channel=
s<br>
&gt;<br>
&gt; [WARNING] [0/Radio#0] Requesting invalid sampling rate from device: 5 =
<br>
&gt; MHz. Actual rate is: 368.64 MHz.<br>
&gt;<br>
&gt; [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate=
 <br>
&gt; is 368.640 MHz<br>
&gt;<br>
&gt; [WARNING] [0/Radio#0] Requesting invalid sampling rate from device: 5 =
<br>
&gt; MHz. Actual rate is: 368.64 MHz.<br>
&gt;<br>
&gt; [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate=
 <br>
&gt; is 368.640 MHz<br>
&gt;<br>
&gt; [WARNING] [0/Radio#0] Requesting invalid sampling rate from device: 5 =
<br>
&gt; MHz. Actual rate is: 368.64 MHz.<br>
&gt;<br>
&gt; [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate=
 <br>
&gt; is 368.640 MHz<br>
&gt;<br>
&gt; [WARNING] [0/Radio#0] Requesting invalid sampling rate from device: 5 =
<br>
&gt; MHz. Actual rate is: 368.64 MHz.<br>
&gt;<br>
&gt; [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate=
 <br>
&gt; is 368.640 MHz<br>
&gt;<br>
&gt; [WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 5 =
<br>
&gt; MHz. Actual rate is: 368.64 MHz.<br>
&gt;<br>
&gt; [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate=
 <br>
&gt; is 368.640 MHz<br>
&gt;<br>
&gt; [WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 5 =
<br>
&gt; MHz. Actual rate is: 368.64 MHz.<br>
&gt;<br>
&gt; [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate=
 <br>
&gt; is 368.640 MHz<br>
&gt;<br>
&gt; Setting TX spp to 352<br>
&gt;<br>
&gt; [WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 5 =
<br>
&gt; MHz. Actual rate is: 368.64 MHz.<br>
&gt;<br>
&gt; OO[WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual <b=
r>
&gt; rate is 368.640 MHz<br>
&gt;<br>
&gt; [WARNING] [0/Radio#1] Requesting invalid sampling rate from device: 5 =
<br>
&gt; MHz. Actual rate is: 368.64 MHz.<br>
&gt;<br>
&gt; [WARNING] [MULTI_USRP] Could not set TX rate to 5.000 MHz. Actual rate=
 <br>
&gt; is 368.640 MHz<br>
&gt;<br>
&gt; [00:00:05.301642718] Receiver error: ERROR_CODE_TIMEOUT, continuing...=
<br>
&gt;<br>
&gt; [00:00:05.301663748] Testing transmit rate 368.640000 Msps on 1 channe=
ls<br>
&gt;<br>
&gt; UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUOUUUUUUterminate <br>
&gt; called after throwing an inst&#39;<br>
&gt;<br>
&gt; [14450.111391] audit: type=3D1701 audit(1738864692.914:16): <br>
&gt; auid=3D4294967295 uid=3D0 gid=3D0 ses=3D4294967295 subj=3Dkernel pid=
=3D1132 <br>
&gt; comm=3D&quot;bmark_rx_stream&quot; exe=3D&quot;/usr/lib/uhd/examples/b=
enchmark_rate&quot; <br>
&gt; sig=3D6 res=3D1<br>
&gt;<br>
&gt; what(): RfnocError: OpTimeout: Control operation timed out waiting for=
 ACK<br>
&gt;<br>
&gt; Aborted<br>
&gt;<br>
So, this may be an X440-specific thing (doesn&#39;t do arbitrary re-samplin=
g).<br>
<br>
<a href=3D"https://kb.ettus.com/About_Sampling_Rates_and_Master_Clock_Rates=
_for_the_USRP_X440" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.c=
om/About_Sampling_Rates_and_Master_Clock_Rates_for_the_USRP_X440</a><br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000723bc5062d7da3cb--

--===============7944967232146862111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7944967232146862111==--
