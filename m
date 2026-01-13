Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E34AAD19244
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jan 2026 14:45:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AE32838673A
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jan 2026 08:45:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1768311955; bh=itpp6Af1EkOhXo1rZfSy6yUEDBpukPwBhOrdpcC7U3o=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=yzkthj60wRSZB3Ls0pnt+sp2lEG0iDqm+miBmX6K35seFazVWGuxOtgBqNkBWe8aU
	 /H9YQcAwvVV91cPfXg32tbKkzCZayYdyPal9jKd4njerd+k1wHlymPvcRkjvjT4Zq6
	 ehZtPDnK038eqYd51j+oIbcSII+6H1SpTWlP9/+oqhdRBUIntPVQLgBrTD9yNLXBtw
	 ebIBQd939youqtONXWnKYhlNI+VFIaqFMiC7Ps8JYTpIwqYnAvPTayES4mAqMNgXxE
	 8hAKH29Xn3N+UPAzUaaAa03YyV4pn9ccwAb68bnlRTKDikIraBP40AL0RBdZehLmRU
	 vsr5TSFs+oXyQ==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id C7CE038670E
	for <usrp-users@lists.ettus.com>; Tue, 13 Jan 2026 08:45:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="CpPUlhsH";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-65378ba2ff7so374984a12.2
        for <usrp-users@lists.ettus.com>; Tue, 13 Jan 2026 05:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1768311945; x=1768916745; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YcA9hhNNLC/RDAuSnBi3SD1GTGazsyewGFDJiAciYTY=;
        b=CpPUlhsHtoa8jDwjlFxV52+76uX0v/E9UeQEikE1CZwS2akALYqn74D2X9H4Nykp4E
         M7YCG9fXZlhkTqIat1x4uXh8zi9uWZmLasTyNs0g27YVDc74Rmp2IY8lPDuHxbEqTAZE
         1pRvtJ1EsloEBdJmfbqI5IVSOhuWBZgsf6TKxG+mLwMjx51/sL4LM2eXNG5qRGfclccd
         bK/db01fsHKI5I5TtcXyCB2EQztsYKidMkt18WuFPv9MmAx5SX4ssjrUEp2Uzj21Y0p/
         k68EwaHUuXp1eBg1j8Dmz3ojRsLdiAFPFan+wbDMgRn06gTGM2U2ye6wMkxk34+gd79Q
         YYTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768311945; x=1768916745;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YcA9hhNNLC/RDAuSnBi3SD1GTGazsyewGFDJiAciYTY=;
        b=McilVvqa2IyimOZF5+RSF3uKwg4fLpjUhfHAwMYikfRzG+IXBdN6nI8FbA2VbLcdk2
         PUdENy2Fzpq+DfDeohaEH/FgR2i0pkshE8qjp5KRBG0iF54g2wHFWaK4yZekzOmDDFwu
         uNuMGvU2OyylwaBBXn6QPUUKEDfcL609r5Gg3/vmPW8xJyUJ9BPkRClV1lNGawSBigWT
         KXIaBMbO2oGnCG/KSOiHG22nHudkV9nBQR18OjD0YN/Bavm4sJ6A/HSmmGdMrnJwVfwl
         vE6qqHYopeP7nYiqsom7z6/jayof7NCez2fjMC3iTB0kkmEGlt1cIxcT45ocYmrABaHM
         ezbA==
X-Gm-Message-State: AOJu0YwIAzRFtb44BgNuM3eY+rZ4SzTQTHSgswnshFbu2Ycu+A9r3PKs
	Op96XU7KctW6BDUdWQrwqpLGh+uQHshveWenY36c2NfJm3AKzK/qSWaChE0Hmm/GA4Q5p0Lpkom
	/0XTwU8470bXkpPpE6FeX98wNWWgXgGRKCtqx3mOOJwhBVymTGVwlssJtSQ==
X-Gm-Gg: AY/fxX4mtKjAErAXPw2y3Nt6/USlGTWH6JyGZeS3a8XPAzF+vL+X7ZYHlozbmDmQjz3
	Caj6oEoVqRg8AQhUG8I3rceqPRaPxOqTeRnm2oIr6i79fSW05aaQxORYOMtRK7lsHihP7hbdIzj
	5HDgLClkxAmOfu7j7YnitCcaVgcRndyN3K4owLZymLBqILpgltNNE+25WwDB34f5vArpRt01L63
	w+o5DB+/+cFH0ozKoDuKlAT3KR7WG9XWeHmqHhl66hszHOIDvYWZFXZBcKIFt4afmN0bDlIj/oX
	HsFn6DdiYM/cy1ykqOGX/9hx3l0=
X-Google-Smtp-Source: AGHT+IEa10rxPMhkiXTTRIVo3GLG+StGBomY/MzLNz78EM37F84sSS25yFho2eqCLfKjGCPHefodbUC/X4TTqdG0ysM=
X-Received: by 2002:aa7:df9a:0:b0:64b:9fa4:b586 with SMTP id
 4fb4d7f45d1cf-65097e71207mr18398483a12.25.1768311944869; Tue, 13 Jan 2026
 05:45:44 -0800 (PST)
MIME-Version: 1.0
References: <WfobIvE6TbpYRJmblJH1mBkfTuesDCPSiUbEtp6gdn0@lists.ctbirding.org>
In-Reply-To: <WfobIvE6TbpYRJmblJH1mBkfTuesDCPSiUbEtp6gdn0@lists.ctbirding.org>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 13 Jan 2026 14:45:33 +0100
X-Gm-Features: AZwV_Qgq6mo1eCB0Lo75_PtGgl6ioiauNKwY0UMNI8QbDryWzIZMPNaRr4oxlKg
Message-ID: <CAFOi1A5GJCFmYXdrNd+0SC31MEoC9xdOxrh8qhaRkDceHW7fvw@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: AHLFDBTOR4ZN4MGUBOVBHV3QDKMAMEIK
X-Message-ID-Hash: AHLFDBTOR4ZN4MGUBOVBHV3QDKMAMEIK
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Question about RFNoC Radio/DDC packet timing and spacing
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AHLFDBTOR4ZN4MGUBOVBHV3QDKMAMEIK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8221487737145697886=="

--===============8221487737145697886==
Content-Type: multipart/alternative; boundary="0000000000005385350648453530"

--0000000000005385350648453530
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

In principle, you're correct. Although 64 would be a very small spp value,
typically we have bigger packets but there's no technical limitation to
have smaller packets.

Once you're in packet-land, however, there's no guarantee about packet
timing and spacing. For reliable timing and accuracy, we use the timestamps
in the headers.That said, if you have radio + DDC, the packet spacing will
be pretty consistent, simply because there's not much else the FPGA can do.
But by the time you're on the network, you've already incurred jitter from
various places.

As a counterexample, imagine you're streaming not from the radio, but from
a signal source, or from DRAM. At the beginning of your transmission, the
source will try to generate data as fast as possible, and packets will be
generated back-to-back, no gap. Eventually, due to flow control and the
host's ability to handle a certain rate, there will be backpressure, and
packets will be generated at whatever rate the host can sustain. It's also
not unusual for software to handle packets in a bursty manner, so the data
generation on the FPGA could also be bursty. Note that RFNoC doesn't even
require packets to be generated without gaps, i.e., it is possible to
generate half a packet, deassert tvalid, and then reassert it when the next
half is generated (but we usually avoid that, and put *packet gates* in
place to make sure only full packets are produced).

We try and document things as well we can, here's a lot of info on the
packetization: https://uhd.readthedocs.io/en/latest/page_rfnoc_fpga.html

...but it doesn't always answer every single question directly.

On Fri, Dec 19, 2025 at 11:55=E2=80=AFAM <adri96roll@gmail.com> wrote:

> Hello,
>
> I am working with RFNoC and trying to better understand how sample data i=
s
> actually delivered over CHDR after the Radio + DDC block, particularly in
> terms of *packet spacing vs. bus rate*.
>
> My assumption is:
>
>    -
>
>    The RF chain (Radio + DDC) outputs samples at a configured sample
>    rate, e.g., 250 KHz.
>    -
>
>    RFNoC groups samples into packets of SPP samples (for example, 64
>    samples per CHDR packet).
>    -
>
>    When a packet is produced, it is transmitted across the RFNoC fabric
>    at the *fabric clock rate* (e.g., 200 MHz), meaning the packet data
>    appears as a short *burst* of consecutive valid cycles.
>    -
>
>    After that burst, there is a gap (idle time) until enough samples are
>    accumulated to form the next packet.
>
> So, for example, at:
>
>    -
>
>    Fs =3D 250 kS/s
>    -
>
>    SPP =3D 64
>
> Then we would expect:
>
>    -
>
>    One packet every 64 / 250k =3D 256 =C2=B5s
>    -
>
>    Packet burst duration =3D 64 cycles at 200 MHz =E2=89=88 320 ns
>    -
>
>    Approximately 256 =C2=B5s =E2=80=93 320 ns of idle time before the nex=
t packet.
>
> My questions are:
>
>    1.
>
>    Is this understanding correct?
>    2.
>
>    Is RFNoC guaranteed to behave this way, or can buffering cause
>    multiple packets to be sent back-to-back with no idle gap?
>    3.
>
>    Is there any official documentation describing packetization timing
>    behavior of Radio/DDC RFNoC fabric?
>
>
> Thanks in advance!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005385350648453530
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>In principle, you&#39;re correct. Al=
though 64 would be a very small spp value, typically we have bigger packets=
 but there&#39;s no technical limitation to have smaller packets.</div><div=
><br></div><div>Once you&#39;re in packet-land, however, there&#39;s no gua=
rantee about packet timing and spacing. For reliable timing and accuracy, w=
e use the timestamps in the headers.That said, if you have radio=C2=A0+ DDC=
, the packet spacing will be pretty consistent, simply because there&#39;s =
not much else the FPGA can do. But by the time you&#39;re on the network, y=
ou&#39;ve already incurred jitter from various places.</div><div><br></div>=
<div>As a counterexample, imagine you&#39;re streaming not from the radio, =
but from a signal source, or from DRAM. At the beginning of your transmissi=
on, the source will try to generate data as fast as possible, and packets w=
ill be generated back-to-back, no gap. Eventually, due to flow control and =
the host&#39;s ability to handle a certain rate, there will be backpressure=
, and packets will be generated at whatever rate the host can sustain. It&#=
39;s also not unusual for software to handle packets in a bursty manner, so=
 the data generation on the FPGA could also be bursty. Note that RFNoC does=
n&#39;t even require packets to be generated without gaps, i.e., it is poss=
ible to generate half a packet, deassert tvalid, and then reassert it when =
the next half is generated (but we usually avoid that, and put *packet gate=
s* in place to make sure only full packets are produced).</div><div><br></d=
iv><div>We try and document things as well we can, here&#39;s a lot of info=
 on the packetization:=C2=A0<a href=3D"https://uhd.readthedocs.io/en/latest=
/page_rfnoc_fpga.html">https://uhd.readthedocs.io/en/latest/page_rfnoc_fpga=
.html</a></div><div><br></div><div>...but it doesn&#39;t always answer ever=
y single question directly.</div></div><br><div class=3D"gmail_quote gmail_=
quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 19, 2025=
 at 11:55=E2=80=AFAM &lt;<a href=3D"mailto:adri96roll@gmail.com">adri96roll=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><p>Hello,</p><p>I am working with RFNoC and trying to better und=
erstand how sample data is actually delivered over CHDR after the Radio + D=
DC block, particularly in terms of <b>packet spacing vs. bus rate</b>.</p><=
p>My assumption is:</p><ul><li><p>The RF chain (Radio + DDC) outputs sample=
s at a configured sample rate, e.g., 250 KHz.</p></li><li><p>RFNoC groups s=
amples into packets of SPP samples (for example, 64 samples per CHDR packet=
).</p></li><li><p>When a packet is produced, it is transmitted across the R=
FNoC fabric at the <b>fabric clock rate</b> (e.g., 200 MHz), meaning the pa=
cket data appears as a short <b>burst</b> of consecutive valid cycles.</p><=
/li><li><p>After that burst, there is a gap (idle time) until enough sample=
s are accumulated to form the next packet.</p></li></ul><p>So, for example,=
 at:</p><ul><li><p>Fs =3D 250 kS/s</p></li><li><p>SPP =3D 64</p></li></ul><=
p>Then we would expect:</p><ul><li><p>One packet every 64 / 250k =3D 256 =
=C2=B5s</p></li><li><p>Packet burst duration =3D 64 cycles at 200 MHz =E2=
=89=88 320 ns</p></li><li><p>Approximately 256 =C2=B5s =E2=80=93 320 ns of =
idle time before the next packet.</p></li></ul><h3>My questions are:</h3><o=
l><li><p>Is this understanding correct?</p></li><li><p>Is RFNoC guaranteed =
to behave this way, or can buffering cause multiple packets to be sent back=
-to-back with no idle gap?</p></li><li><p>Is there any official documentati=
on describing packetization timing behavior of Radio/DDC  RFNoC fabric?</p>=
</li></ol><p><br></p><p>Thanks in advance!</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000005385350648453530--

--===============8221487737145697886==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8221487737145697886==--
