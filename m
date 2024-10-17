Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2809A1C0F
	for <lists+usrp-users@lfdr.de>; Thu, 17 Oct 2024 09:56:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 77E24385513
	for <lists+usrp-users@lfdr.de>; Thu, 17 Oct 2024 03:56:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729151812; bh=AuYIsJ73pl/XMaaoLocoutFVwB6N/+s9QCkgcHzPueU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=nAGJ6MqG26/Hsd0nO4ha613vu14IzJe4q/TTSUJSlt4WYG4lRyh0KkH/pRJISsl61
	 7/wUccq+hPjyZF9eeDp6VBz7lsYpyuAY+kxHBwqVmkJbU1DyZk61/JWQsZwD3RRc0V
	 9yxSKzHbsjbwlhnWfq3tLxGNAJuaj6k7YJ+W/7fFyZYeBPHMe6kcOD2fcpfVTbpdWh
	 fjaagP27l72ygrOnNbmYW3xJDNEQ3BF3l6PpevDPRgPkt7zA8D0jfImTKyPglgFd2Z
	 Rns+I2cDA8nTczt1XtH1YhrDwcM1KQMnO+/888Jh9K7BAJaQgmlluwtbFL+goJUJVb
	 DRRYerAg0zlrQ==
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 54DC43854C6
	for <usrp-users@lists.ettus.com>; Thu, 17 Oct 2024 03:56:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="L4fQZgt5";
	dkim-atps=neutral
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2fb57f97d75so6923751fa.2
        for <usrp-users@lists.ettus.com>; Thu, 17 Oct 2024 00:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1729151802; x=1729756602; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zy0d+404M2BaLepswBr5HfvQfN/83fM1Cs+YYchKDNw=;
        b=L4fQZgt54lqk4nm8eAISeldGhAi4HDFWbRdM5KLe2Pi0hxnmV9WY6rMnwSnEK2Vo14
         aSDytxTx9tRW2Sv9e8b7Wu6o9HSmEen379irxhPlkswyBKAOlCZGRIZn8lhFMC4RNXTL
         uSnkvuE7Dw07pCMcmE3WXu2AnK7pre6rWkAhPEbCgwG0Ia028/RccxPjuoYZQIOiVbP5
         VOZaczSK58uZjiJYGIvozmu0USCNH2HiKAJqQf23qy4i8TXsnRKQ7V7mWEB4FwXn1+pC
         zXiiOoUImA4aSu/ELq1LOApJBLCbmGUvB/fh2r/Jjj1UJdknqyNBH/CjmYPQbOSTl8Aj
         BV0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729151802; x=1729756602;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zy0d+404M2BaLepswBr5HfvQfN/83fM1Cs+YYchKDNw=;
        b=GOB+lBneml+qrkpEYhwbXMerzcWP9x7icgOXdiKigC0DQIiGmvM953AX6Y1ZiMUP21
         qjaNbJixFP2G3Fh+mtpi/wy6ARHbe2wbT6KzYql0DAzlsfHnJEw4A+DBS7huskW/VjFA
         UgRDxVzRk5DNKz4tQaG1a0Yn25HOhsG9zc9yE4xJsGIyDOfjz41178CSEDHkgXivSMzn
         yOqPjpSuHOQCAIAvETxHE0fVrwhfYqLonVWt9QRv7CsPhBmNEZi9IfJBWDDyhjt6SWPe
         LegG2/WdPoDfMlwrcKfJkUzOP2PGWNjHeGgvaewvzU4AjtwJcD0w6J/kI5ZGWzOrwbKK
         KI6Q==
X-Gm-Message-State: AOJu0Yx9cysqMBpyuyQfMzxt0gV0WZg6sgOJU0rufmBxvrhQwZCzy8AX
	BHYnZkK6J0pC0lUBPcLbed9fujExly6Trdoj8QtHiY6i88Hv+3nTs+YddfDZQav6I7tqiHGbbMl
	pVGHQTrQsqNLYJ6JJQYZ1kc864QNJKngn8YyUdX8j+OQsjvgANC8=
X-Google-Smtp-Source: AGHT+IGqGG5t4Sy0FGh76D30hhr4dXTHCSd/abKNCeZXWPSmarxLdl5ZgQ8TMGMxMwIlr0/GN/0+j0vq8gL8Aq0Q4Q0=
X-Received: by 2002:a2e:4c12:0:b0:2fa:ded3:f6aa with SMTP id
 38308e7fff4ca-2fb61b58a46mr29482511fa.20.1729151801078; Thu, 17 Oct 2024
 00:56:41 -0700 (PDT)
MIME-Version: 1.0
References: <CANwDeJY9B9Cn7rGQ=BTA3MjO=k94aPnL7PAZRRizX-OR0OwRNg@mail.gmail.com>
 <3fc00180-d72b-44c9-9304-8a9820a032b1@gmail.com>
In-Reply-To: <3fc00180-d72b-44c9-9304-8a9820a032b1@gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 17 Oct 2024 09:56:29 +0200
Message-ID: <CAFOi1A5B-_nJ1xTDnFmgDTM0cPcZUVWmdh2_9xth9As9cXtD4A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: GDL4YSVPH4A57FGSAABBYF55DXDNOCW6
X-Message-ID-Hash: GDL4YSVPH4A57FGSAABBYF55DXDNOCW6
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Assistance with RFNoC Keep-One-In-N Block For Radiometer Application
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GDL4YSVPH4A57FGSAABBYF55DXDNOCW6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1168608842064156846=="

--===============1168608842064156846==
Content-Type: multipart/alternative; boundary="000000000000dde0060624a78633"

--000000000000dde0060624a78633
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm one of the 99% and I didn't even bother to Google what a Dicke
radiometer is. Nor do I have even half of Marcus' RF and RA knowledge.

But I know a thing or two about RFNoC. Here's what I gather from your email=
:
- You are capturing a radio signal from some source
- You are also generating a clock signal (which presumably gets applied to
your capture device?)
  - I'm guessing that this clock signal controls which part of the time
domain signal you're actually capturing, but the USRP's receiver will be
free-running, so if you're not capturing continuously, that means you have
gaps in your Rx signal you want to remove? (Again, just guessing)
- You are having trouble synchronizing

Now my mission here is usually to steer people successfully towards RFNoC
(and what you've done already is pretty impressive), but in this case I
agree with Marcus that a software approach might be sufficient. Can you not
simply generate your Dicke-clock-signal in software and generate it on the
B-side of your device, instead of on the GPIO? USRPs will take care of
synchronizing Tx and Rx signals in time (with some offset, but that can be
calibrated and you seem perfectly capable of doing so). This seems more
like a GNU Radio task than an RFNoC task.

If not, then I blame my ignorance in this particular field -- maybe you can
ask a more specific question.

--M

On Thu, Oct 17, 2024 at 3:12=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 16/10/2024 20:55, Ekin Su Sacin wrote:
> > Hello,
> >
> > I am working on modifying rfnoc_keep_one_in_n.v code for a Dicke
> > radiometer application. My goal is to generate a Dicke clock for
> > different modes and to obtain the accumulated power of the incoming
> > signal over half of the Dicke cycle. I am using this block to produce
> > a Dicke clock from front-panel GPIO and using the n register to define
> > different modes in addition to defining the number of kept samples.
> > These modes determine which GPIO pins will be active. Additionally, I
> > use the complex_to_magsq module to compute the power of the incoming
> > signal. I have verified the Dicke clock output from GPIO using an
> > oscilloscope. It responds correctly to changes in the n value at the
> > application level.
> >
> > When I try to sample a sinusoidal wave, it produces the sawtooth
> > pattern for kept samples which looks correct. Initially, I thought
> > that by adjusting the n value and data rate at the application level
> > to cover half of the Dicke cycle, I could obtain accumulated results
> > over this period, which would match the last value of the sawtooth.
> > However, this approach isn't working as expected. I am using a 200 MHz
> > clock, resulting in a half-Dicke period of 327.68 =C2=B5s. To match thi=
s, I
> > set the data rate to ensure an integer number of samples per Dicke
> > period, such as 25 MSPS. I ran the following command for testing:
> > ./rfnoc_rx_to_file --args addr=3D192.168.10.2 --freq 28e6 --nsamps 0
> > --rate 25e6 --block-id KeepOneInN --n_value 8192,and for testing, I
> > applied a 27 MHz sinusoidal input. However, this setup yields
> > inconsistent results. When I change the rate to 20 MSPS or other
> > values, the results seem more accurate. I also experimented with
> > different n values like 4, 20, and 40, which produced sawtooth
> > patterns with varying periods as expected. However, my primary goal is
> > to gather data specifically at the end of each half-Dicke cycle rather
> > than picking samples during the cycle.
> >
> > I suspect there may be a synchronization issue between the block and
> > the Dicke clock. Could you provide suggestions based on my objectives,
> > or is there an alternative approach that might be more effective than
> > adjusting the n value? I am also adding modified parts of the code belo=
w.
> >
> > Thank you in advance for your support. I look forward to your response.
> >
> > Best regards,
> >
> > Ekin
> >
> >
> > In output state machine, sample_reg[31:16]   <=3D v1o[31:16];
> >                                         sample_reg[15:0]  <=3D v2o[31:1=
6];
> >
> > .......
> >
> > always @(posedge clk) begin
> > if (reset) begin
> >    k <=3D 0;
> >          dicke_1 <=3D 0;
> >          dicke_ch <=3D 0;
> >          ctrl_cal_1 <=3D 0;
> >          ctrl_ref_1 <=3D 0;
> >          ctrl_v_1 <=3D 0;
> >          v1o <=3D 32'd0;
> >          v2o <=3D 32'd0;
> > end
> >
> > else if (~reset) begin
> > k <=3D k+1;
> > if (k =3D=3D 65536) begin // yields dicke freq =3D 1.53 kHz
> >       k <=3D 0;
> >       dicke_1 <=3D ~dicke_1;
> >       dicke_ch <=3D 1;
> > end
> >
> > if (dicke_ch =3D=3D 1) begin  // if dicke clock phase changed
> >   if (n =3D=3D 4) begin // Ref-V
> >    if (~dicke_1) begin
> >       ctrl_cal_1 <=3D 0;
> >       ctrl_ref_1 <=3D 1;
> >       ctrl_v_1 <=3D 0;
> >    end else begin
> >       ctrl_cal_1 <=3D 0;
> >       ctrl_ref_1 <=3D 0;
> >       ctrl_v_1 <=3D 1;
> >    end
> >  end
> >  else begin  // Cal-Ref (mode 1 for anything else)
> >    if (~dicke_1) begin
> >       ctrl_cal_1 <=3D 1;
> >       ctrl_ref_1 <=3D 0;
> >       ctrl_v_1 <=3D 0;
> >    end else begin
> >       ctrl_cal_1 <=3D 0;
> >       ctrl_ref_1 <=3D 1;
> >       ctrl_v_1 <=3D 0;
> >    end
> >  end
> >  dicke_ch <=3D 0;   v1o <=3D 32'd0;  v2o <=3D 32'd0;
> > end
> >                  else if (dicke_ch=3D=3D0) begin
> >                       if (s_axis_tvalid && s_axis_tready && o_tvalid)
> > begin
> >                           if (dicke_1 =3D=3D 0) begin
> >                                v1o <=3D v1o + o_tdata;
> >                            end
> >                            else if (dicke_1 =3D=3D 1) begin
> >                                v2o <=3D v2o + o_tdata;
> >                            end
> >                       end
> >         end
> > end
> >    end
> >
> 99% of the folks on here would have no idea what a Dicke Radiometer
> is.    I do.  But unfortunately, I'm not much of an FPGA guy.
>
> You haven't mentioned which USRP you're using, with which
> daughtercard(s).  What are your ultimate bandwidth requirements?
>
> Given your "test" frequency of 28MHz, I'm guessing this is some kind of
> HF radiometer, so I can't imagine that you're
>    dealing with "eye-watering" bandwidth.  Have you considered a purely
> host-based implementation?  Gain drift in
>    modern RF hardware is small enough, and slow enough, that a fairly
> "lazy" Dicke-switching cadence could probably
>    be used, and it could probably be managed from the host side.  Due to
> uncertainties of how many samples there may
>    be "in flight", my approach to this in the (distant, mind) past has
> been to simply discard some samples after a state-change
>    of the Dicke hardware.  This has negligible impact on radiometer
> sensitivity.
>
> I'm able to do 50Msps of simple radiometer-like "things" into a host
> computer that is 11 years old.   So with more modern
>    PC hardware, this shouldn't be a problem to manage entirely from the
> software side of things.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000dde0060624a78633
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m one of the 99% and I didn&#39;t even bother t=
o Google what a Dicke radiometer is. Nor do I have even half of Marcus&#39;=
 RF and RA knowledge.</div><div><br></div><div>But I know a thing or two ab=
out RFNoC. Here&#39;s what I gather from your email:</div><div>- You are ca=
pturing a radio signal from some source</div><div>- You are also generating=
 a clock signal (which presumably gets applied to your capture device?)</di=
v><div>=C2=A0 - I&#39;m guessing that this clock signal controls which part=
 of the time domain signal you&#39;re actually capturing, but the USRP&#39;=
s receiver will be free-running, so if you&#39;re not capturing continuousl=
y, that means you have gaps in your Rx signal you want to remove? (Again, j=
ust guessing)<br></div><div>- You are having trouble synchronizing</div><di=
v><br></div><div>Now my mission here is usually to steer people successfull=
y towards RFNoC (and what you&#39;ve done already is pretty impressive), bu=
t in this case I agree with Marcus that a software approach might be suffic=
ient. Can you not simply generate your Dicke-clock-signal in software and g=
enerate it on the B-side of your device, instead of on the GPIO? USRPs will=
 take care of synchronizing Tx and Rx signals in time (with some offset, bu=
t that can be calibrated and you seem perfectly capable of doing so). This =
seems more like a GNU Radio task than an RFNoC task.</div><div><br></div><d=
iv>If not, then I blame my ignorance in this particular field -- maybe you =
can ask a more specific question.<br></div><div><br></div><div>--M<br></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Thu, Oct 17, 2024 at 3:12=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mai=
lto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">On 16/10/2024 20:55, Ek=
in Su Sacin wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I am working on modifying rfnoc_keep_one_in_n.v code for a Dicke <br>
&gt; radiometer application. My goal is to generate a Dicke clock for <br>
&gt; different modes and to obtain the accumulated power of the incoming <b=
r>
&gt; signal over half of the Dicke cycle. I am using this block to produce =
<br>
&gt; a Dicke clock from front-panel GPIO and using the n register to define=
 <br>
&gt; different modes in addition to defining the number of kept samples. <b=
r>
&gt; These modes determine which GPIO pins will be active. Additionally, I =
<br>
&gt; use the complex_to_magsq module to compute the power of the incoming <=
br>
&gt; signal. I have verified the Dicke clock output from GPIO using an <br>
&gt; oscilloscope. It responds correctly to changes in the n value at the <=
br>
&gt; application level.<br>
&gt;<br>
&gt; When I try to sample a sinusoidal wave, it produces the sawtooth <br>
&gt; pattern for kept samples which looks correct. Initially, I thought <br=
>
&gt; that by adjusting the n value and data rate at the application level <=
br>
&gt; to cover half of the Dicke cycle, I could obtain accumulated results <=
br>
&gt; over this period, which would match the last value of the sawtooth. <b=
r>
&gt; However, this approach isn&#39;t working as expected. I am using a 200=
 MHz <br>
&gt; clock, resulting in a half-Dicke period of 327.68 =C2=B5s. To match th=
is, I <br>
&gt; set the data rate to ensure an integer number of samples per Dicke <br=
>
&gt; period, such as 25 MSPS. I ran the following command for testing: <br>
&gt; ./rfnoc_rx_to_file --args addr=3D192.168.10.2 --freq 28e6 --nsamps 0 <=
br>
&gt; --rate 25e6 --block-id KeepOneInN --n_value 8192,and for testing, I <b=
r>
&gt; applied a 27 MHz sinusoidal input. However, this setup yields <br>
&gt; inconsistent results. When I change the rate to 20 MSPS or other <br>
&gt; values, the results seem more accurate. I also experimented with <br>
&gt; different n values like 4, 20, and 40, which produced sawtooth <br>
&gt; patterns with varying periods as expected. However, my primary goal is=
 <br>
&gt; to gather data specifically at the end of each half-Dicke cycle rather=
 <br>
&gt; than picking samples during the cycle.<br>
&gt;<br>
&gt; I suspect there may be a synchronization issue between the block and <=
br>
&gt; the Dicke clock. Could you provide suggestions based on my objectives,=
 <br>
&gt; or is there an alternative approach that might be more effective than =
<br>
&gt; adjusting the n value? I am also adding modified parts of the code bel=
ow.<br>
&gt;<br>
&gt; Thank you in advance for your support. I look forward to your response=
.<br>
&gt;<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Ekin<br>
&gt;<br>
&gt;<br>
&gt; In output state machine, sample_reg[31:16] =C2=A0 &lt;=3D v1o[31:16];<=
br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sample_reg[15:0] =C2=
=A0&lt;=3D v2o[31:16];<br>
&gt;<br>
&gt; .......<br>
&gt;<br>
&gt; always @(posedge clk) begin<br>
&gt; if (reset) begin<br>
&gt; =C2=A0 =C2=A0k &lt;=3D 0;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 dicke_1 &lt;=3D 0;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dicke_ch &lt;=3D 0;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ctrl_cal_1 &lt;=3D 0;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ctrl_ref_1 &lt;=3D 0;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ctrl_v_1 &lt;=3D 0;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0v1o &lt;=3D 32&#39;d0;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0v2o &lt;=3D 32&#39;d0;<br>
&gt; end<br>
&gt;<br>
&gt; else if (~reset) begin<br>
&gt; k &lt;=3D k+1;<br>
&gt; if (k =3D=3D 65536) begin // yields dicke freq =3D 1.53 kHz<br>
&gt; =C2=A0 =C2=A0 =C2=A0 k &lt;=3D 0;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 dicke_1 &lt;=3D ~dicke_1;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 dicke_ch &lt;=3D 1;<br>
&gt; end<br>
&gt;<br>
&gt; if (dicke_ch =3D=3D 1) begin =C2=A0// if dicke clock phase changed<br>
&gt; =C2=A0 if (n =3D=3D 4) begin // Ref-V<br>
&gt; =C2=A0 =C2=A0if (~dicke_1) begin<br>
&gt; =C2=A0 =C2=A0 =C2=A0 ctrl_cal_1 &lt;=3D 0;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 ctrl_ref_1 &lt;=3D 1;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 ctrl_v_1 &lt;=3D 0;<br>
&gt; =C2=A0 =C2=A0end else begin<br>
&gt; =C2=A0 =C2=A0 =C2=A0 ctrl_cal_1 &lt;=3D 0;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 ctrl_ref_1 &lt;=3D 0;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 ctrl_v_1 &lt;=3D 1;<br>
&gt; =C2=A0 =C2=A0end<br>
&gt; =C2=A0end<br>
&gt; =C2=A0else begin =C2=A0// Cal-Ref (mode 1 for anything else)<br>
&gt; =C2=A0 =C2=A0if (~dicke_1) begin<br>
&gt; =C2=A0 =C2=A0 =C2=A0 ctrl_cal_1 &lt;=3D 1;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 ctrl_ref_1 &lt;=3D 0;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 ctrl_v_1 &lt;=3D 0;<br>
&gt; =C2=A0 =C2=A0end else begin<br>
&gt; =C2=A0 =C2=A0 =C2=A0 ctrl_cal_1 &lt;=3D 0;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 ctrl_ref_1 &lt;=3D 1;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 ctrl_v_1 &lt;=3D 0;<br>
&gt; =C2=A0 =C2=A0end<br>
&gt; =C2=A0end<br>
&gt; =C2=A0dicke_ch &lt;=3D 0; =C2=A0 v1o &lt;=3D 32&#39;d0;=C2=A0 v2o &lt;=
=3D 32&#39;d0;<br>
&gt; end<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else if =
(dicke_ch=3D=3D0) begin<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 if (s_axis_tvalid &amp;&amp; s_axis_tready &amp;&amp; o_tvalid) <br>
&gt; begin<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 if (dicke_1 =3D=3D 0) begin<br>
&gt; =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 v1o &lt;=3D v1o + o_tdata;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0end<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0else if (dicke_1 =3D=3D 1) begin<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0v2o &lt;=3D v2o + o_tdata;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0end<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 end<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 end<br>
&gt; end<br>
&gt; =C2=A0 =C2=A0end<br>
&gt;<br>
99% of the folks on here would have no idea what a Dicke Radiometer <br>
is.=C2=A0=C2=A0=C2=A0 I do.=C2=A0 But unfortunately, I&#39;m not much of an=
 FPGA guy.<br>
<br>
You haven&#39;t mentioned which USRP you&#39;re using, with which <br>
daughtercard(s).=C2=A0 What are your ultimate bandwidth requirements?<br>
<br>
Given your &quot;test&quot; frequency of 28MHz, I&#39;m guessing this is so=
me kind of <br>
HF radiometer, so I can&#39;t imagine that you&#39;re<br>
=C2=A0=C2=A0 dealing with &quot;eye-watering&quot; bandwidth.=C2=A0 Have yo=
u considered a purely <br>
host-based implementation?=C2=A0 Gain drift in<br>
=C2=A0=C2=A0 modern RF hardware is small enough, and slow enough, that a fa=
irly <br>
&quot;lazy&quot; Dicke-switching cadence could probably<br>
=C2=A0=C2=A0 be used, and it could probably be managed from the host side.=
=C2=A0 Due to <br>
uncertainties of how many samples there may<br>
=C2=A0=C2=A0 be &quot;in flight&quot;, my approach to this in the (distant,=
 mind) past has <br>
been to simply discard some samples after a state-change<br>
=C2=A0=C2=A0 of the Dicke hardware.=C2=A0 This has negligible impact on rad=
iometer <br>
sensitivity.<br>
<br>
I&#39;m able to do 50Msps of simple radiometer-like &quot;things&quot; into=
 a host <br>
computer that is 11 years old.=C2=A0=C2=A0 So with more modern<br>
=C2=A0=C2=A0 PC hardware, this shouldn&#39;t be a problem to manage entirel=
y from the <br>
software side of things.<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000dde0060624a78633--

--===============1168608842064156846==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1168608842064156846==--
