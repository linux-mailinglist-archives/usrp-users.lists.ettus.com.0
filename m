Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F07A9221E
	for <lists+usrp-users@lfdr.de>; Thu, 17 Apr 2025 17:59:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1A8B1386203
	for <lists+usrp-users@lfdr.de>; Thu, 17 Apr 2025 11:59:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744905543; bh=XSbPNvP/w6s9f319kx8XB2XktC5X4f7Mk/nLpVMA0XU=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=0jtVkUqJA8iufqCGpfcdTEqDLaNzpghfbtTkewcvR+8yAvXaVNF+QgGGc2H9YQAa4
	 2fDA8DJ9b5pQdQTRC73co0ERENQFQQfIks5gRDY3ADjpUwmjui4FOuSiSVka5PNrYa
	 Expk9sSRS2IV6r859NV+1S4kCGVMUmYypF+q7wYRNB9dRSD5KiFdx3R2wVbeQ8dO7V
	 z/G8Jjh8VIYkiUwZVil2V1I8hfm71ZgW/ufrG8okVx7jH2vyQqaMtAgkvRodqKBiix
	 Cx0lxUEzD+F4RRftJ4OMNsdmjYlpWE+oHj0AWuSjYf2BuW0cxOBc45NrnzgEGjiEbn
	 Pd7tOmygsY8WA==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 8391A3861E7
	for <usrp-users@lists.ettus.com>; Thu, 17 Apr 2025 11:58:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="YAQjz+jp";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5e6ff035e9aso1783223a12.0
        for <usrp-users@lists.ettus.com>; Thu, 17 Apr 2025 08:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1744905508; x=1745510308; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2EQ1UTXCc9MRZrrKEVv76sgvRBmxgOnNIY7BUp/YgeY=;
        b=YAQjz+jpRARUsX/eWL0kzSRs/Qidvq3GrSXL2E+39VcneO5V528jQtr41TCUxNrfjK
         qH/66eM2Q9FXb+9XQuaLfJ5uOSunI4e3+jFHRi8KlcU0bLVcwAgLI4glYgw4GgNEd0/u
         OT+uLjGwABUwIDiAjoauU9bWMLFvmy+594r13pvgOHyifPM9bwVaNpgSO4nv0E4APtZG
         0XxFX3hPymYuxYEwM8FaBgpOSsR4OYrLvoq3gvMSIRQAfdQc1VFIag0ke5bvsgJdY0Nw
         CpHB/kQfvIY1IbssRPirORUtLWsW88CxziZvhBBkMZLpWRTjQsHztPFimwMagQZzXhn3
         hjpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744905508; x=1745510308;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2EQ1UTXCc9MRZrrKEVv76sgvRBmxgOnNIY7BUp/YgeY=;
        b=ifptoC0FzF/Vj3P3RVfHzKpAX6Vs41/v2qfFBK1hHngVVKOqCLOFEkS8RiKplo6fLH
         jyn/q5fId6wximg5uxGIXTXXPIjFHliFa2hBjF7hIyTJ0IapDq/rf7rWB4INjd5CCATM
         lGMAU5MdOmNvYKn0yo4QWZ4R+IV1N5yS6YKpm6YsDzD+mguxMAf97x+4UL4i/vIWtDm8
         8AceWP8gmTBMK0jwXeAzZHkNy5twz8TeLggap6DS/PcynhBxSo9QyPMS1dx7sw1CY7Uo
         fpiH2++KEaibzJ3VIcI1XAlEVXjsjUu/zWP3g3r2WUxgsOXiOPjP3y/wa9AxeXaNU069
         9cJA==
X-Gm-Message-State: AOJu0YzItHiqmTbhw4po8bKh91+M2V8N4PoNxz7IkqJ6+esnWm6gtuUl
	UAWdQKAD76UQgu1h0O89cvVXZYqJ4z40PPVgaCwgPcPH+KQqQ3w6/sMxBvkVWBW1fB/ywV/mrOE
	vg6ZNGOVAnud3yEjvmGvZrIr+tZRmZwwtZdpSkTz4HlJlGcQ=
X-Gm-Gg: ASbGnctF2X9ogw/sR4QcTYIxnCD65rSpmrblCvkxCSyRh2DyXO8O9/dZmX5ApuslKWh
	sMaWRYuBd5tQAOMh3SJvqHW8bx4xmhDGWZGLV/V/+17I3M0fzRVHZFr0NZdZq7fsYOpeij3zkDb
	HsAZMeCErugL4rj7Bs2+vLAg==
X-Google-Smtp-Source: AGHT+IGgl4t/Mni7rijTNva/sWTGGjpSa9nhYNjTKHeVu586iU4lh1m1wCpgq6m0yyT/ey1PjAL6rUfSuDF11Q1AG+0=
X-Received: by 2002:a05:6402:354b:b0:5ed:c09c:10f with SMTP id
 4fb4d7f45d1cf-5f4b734973cmr5694596a12.15.1744905508379; Thu, 17 Apr 2025
 08:58:28 -0700 (PDT)
MIME-Version: 1.0
References: <8ea87dad-dd2d-475d-8568-a37043273e59@student.uclouvain.be>
In-Reply-To: <8ea87dad-dd2d-475d-8568-a37043273e59@student.uclouvain.be>
Date: Thu, 17 Apr 2025 11:58:15 -0400
X-Gm-Features: ATxdqUGoUJG0ALhV22EFJSDWFHGK2xKfLWBfwy6muQhlB89BREMnYz27AtWGDMI
Message-ID: <CAB__hTRrks6rVRYqNYCumHwq+A-Ze5c1ZRc4nBzeuoqnoQD65Q@mail.gmail.com>
To: Quentin Prieels <quentin.prieels@student.uclouvain.be>
Message-ID-Hash: WLWMG7VCCCORNJSNKWBMFDIEITQUUYSD
X-Message-ID-Hash: WLWMG7VCCCORNJSNKWBMFDIEITQUUYSD
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help with AXI-Stream Output in Schmidl & Cox RFNoC Module: deadlock when marking some samples as no valid
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WLWMG7VCCCORNJSNKWBMFDIEITQUUYSD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7126579128250057976=="

--===============7126579128250057976==
Content-Type: multipart/alternative; boundary="000000000000fe84ef0632fb781c"

--000000000000fe84ef0632fb781c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,
Perhaps your issue is related to the 'length' parameter of the RFNoC
packet?  If you are not correcting the packet length based on the number of
samples you are dropping, then you will get ill-formed packets coming out.
Do you think that this could be the issue?
Rob

On Thu, Apr 17, 2025 at 11:40=E2=80=AFAM Quentin Prieels <
quentin.prieels@student.uclouvain.be> wrote:

> Hello everyone,
>
> I'm currently implementing a Schmidl & Cox OOT module on a USRP X310 as
> part of my master's thesis. (For those interested, the code is available
> here <https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/tree/latency=
>
> (https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency).)
>
> The purpose of this block is to detect the beginning of an OFDM frame =E2=
=80=94
> specifically, just after the Schmidl & Cox preamble. I want the block to
> forward *only* the "valid" samples (i.e., those that are part of the
> actual OFDM frame). So when I call rx_stream->recv(), only actual data
> packets should be received by my UHD application.
> My first idea was to control the tvalid signal of the AXI-Stream
> interface: setting it to 0 when the data was not a "valid" OFDM sample,
> and asserting it (1) only when the data was valid. However, this seems to
> cause some kind of deadlock. My UHD application always times out and
> receives no data. Interestingly, when I output zero-valued samples instea=
d
> of deasserting the tvalid signal, I can see that my synchronization
> mechanism is working as expected. This suggests the issue likely lies in =
my
> use of AXI signals or a misunderstanding of the RFNoC protocol.
>
> *Note*: my configured SPP (samples per packet, here 200) is smaller than
> the length of the actual OFDM frame, which consists of thousands of compl=
ex
> samples.
>
> So here's my main question:
> Given a continuous stream of data (currently configured as packets with
> 200 samples each, where every packet is valid), how can I output *only a
> subset* of this stream =E2=80=94 a specific sequence of continuous sample=
s
> (potentially spread across multiple packets) =E2=80=94 such that only thi=
s valid
> subset is received by the UHD application? Alternatively, how can I mark
> only part of the stream as valid for the receiver, while discarding the
> rest?
>
> (For those interested in the code, this behavior corresponds to when
> output_select is set to 2'b01 in the following module: detector.sv
> <https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency/fpga=
/ofdm/rfnoc_block_schmidl_cox/detector.sv>
> (
> https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency/fpga/=
ofdm/rfnoc_block_schmidl_cox/detector.sv)
> , which controls forwarding of input data only when in the FORWARDING
> state.)
>
> Thank you all for your help,
> Quentin
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000fe84ef0632fb781c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Quentin,<div>Perhaps your issue is related to the &#39;=
length&#39; parameter of the RFNoC packet?=C2=A0 If you are not correcting =
the packet length based on the number of samples you are dropping, then you=
 will get ill-formed packets coming out. Do you think that this could be th=
e issue?</div><div>Rob</div></div><br><div class=3D"gmail_quote gmail_quote=
_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 17, 2025 at 1=
1:40=E2=80=AFAM Quentin Prieels &lt;<a href=3D"mailto:quentin.prieels@stude=
nt.uclouvain.be">quentin.prieels@student.uclouvain.be</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><u></u>

 =20
  <div>
    <p><font face=3D"Aptos">Hello everyone,</font></p>
    <p><font face=3D"Aptos">I&#39;m currently implementing a Schmidl &amp; =
Cox
        OOT module on a USRP X310 as part of my master&#39;s thesis. (For
        those interested, the code is available <a href=3D"https://github.c=
om/quentinprieels/TFE25-462-rnfoc-ofdm/tree/latency" target=3D"_blank">here=
</a>
        (</font><font face=3D"Aptos"><a href=3D"https://github.com/quentinp=
rieels/TFE25-462-rnfoc-ofdm/blob/latency" target=3D"_blank">https://github.=
com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency</a>)</font><font face=
=3D"Aptos">.)</font></p>
    <p><font face=3D"Aptos">The purpose of this block is to detect the
        beginning of an OFDM frame =E2=80=94 specifically, just after the
        Schmidl &amp; Cox preamble. I want the block to forward <strong>onl=
y</strong> the &quot;valid&quot;
        samples (i.e., those that are part of the actual OFDM frame). So
        when I call <code>rx_stream-&gt;recv()</code>,
        only actual data packets should be received by my UHD
        application.</font></p>
    <font face=3D"Aptos">My first idea was to control the <code>tvalid</cod=
e> signal of the
      AXI-Stream interface: setting it to <code>0</code> when the data was =
not a &quot;valid&quot; OFDM
      sample, and asserting it (<code>1</code>)
      only when the data was valid. However, this seems to cause some
      kind of deadlock. My UHD application always times out and receives
      no data. Interestingly, when I output zero-valued samples instead
      of deasserting the <code>tvalid</code>
      signal, I can see that my synchronization mechanism is working as
      expected. This suggests the issue likely lies in my use of AXI
      signals or a misunderstanding of the RFNoC protocol.<br>
    </font>
    <p><font face=3D"Aptos"><u>Note</u>: my configured SPP (samples per
        packet, here 200) is smaller than the length of the actual OFDM
        frame, which consists of thousands of complex samples.</font></p>
    <p><font face=3D"Aptos">So
        here&#39;s my main question:<br>
        Given a continuous stream of data (currently configured as
        packets with 200 samples each, where every packet is valid), how
        can I output <strong>only a
          subset</strong> of this stream =E2=80=94 a specific sequence of
        continuous samples (potentially spread across multiple packets)
        =E2=80=94 such that only this valid subset is received by the UHD
        application? Alternatively, how can I mark only part of the
        stream as valid for the receiver, while discarding the rest?</font>=
</p>
    <p><font face=3D"Aptos">(For
        those interested in the code, this behavior corresponds to when
        <code>output_select</code> is
        set to <code>2&#39;b01</code> in
        the following module: <a href=3D"https://github.com/quentinprieels/=
TFE25-462-rnfoc-ofdm/blob/latency/fpga/ofdm/rfnoc_block_schmidl_cox/detecto=
r.sv" target=3D"_blank">detector.sv</a>
(<a href=3D"https://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/lat=
ency/fpga/ofdm/rfnoc_block_schmidl_cox/detector.sv" target=3D"_blank">https=
://github.com/quentinprieels/TFE25-462-rnfoc-ofdm/blob/latency/fpga/ofdm/rf=
noc_block_schmidl_cox/detector.sv</a>)
        , which controls forwarding of input data only when in the <code>FO=
RWARDING</code> state.)</font></p>
    <p><font face=3D"Aptos">Thank
        you all for your help,<br>
        Quentin</font></p>
    <p><br>
    </p>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000fe84ef0632fb781c--

--===============7126579128250057976==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7126579128250057976==--
