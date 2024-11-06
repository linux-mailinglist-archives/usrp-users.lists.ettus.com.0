Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2B79BE1C5
	for <lists+usrp-users@lfdr.de>; Wed,  6 Nov 2024 10:07:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 041C9385C93
	for <lists+usrp-users@lfdr.de>; Wed,  6 Nov 2024 04:07:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730884076; bh=yt+MKMfyFG27FB1a5kuDreUj57cO5muWaqhg+HSciTA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=tzmftBt6ta6OQx77pRynGqhX9qWR8LOv9euZmWTwXYt3oX6GwrlOVoTIhW9kl5Wf+
	 kYGMBUw3mm3sBTsvZGKSMIC5vI/jNLSIt9la+jkEI7KoDW+JIlTNyCAODKc2/4o/Os
	 DzPMsJNvlR7Nru0jf43M428XxMu2Jun3XXYVsjhW/pbuG1+/4fTIUx30j7MKrQHIDX
	 NzW5K6qJ7bjVNbXBxLyFVL/gp3woikvD33XLKgaLCnIkFisEjz7g/bCSiXPGHP4n6Q
	 D8WydYiLBGsiYv+RUCnji5tMWybtwfsBDuOgfyZi30itJ9uA/PAhSRSdn9WgZ1YNcM
	 i6BZIRe2FyNAg==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id A3BFF38594C
	for <usrp-users@lists.ettus.com>; Wed,  6 Nov 2024 04:07:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="DLGMjHXS";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5cefa22e9d5so86552a12.3
        for <usrp-users@lists.ettus.com>; Wed, 06 Nov 2024 01:07:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1730884033; x=1731488833; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KMCQRj3coMCSXBeNmvnAj2bYRBEKiwNdAXn5OgUnfIA=;
        b=DLGMjHXSg+hCtoIo8VIVD5NfS6Et21fDtUMRTwTOdA+Irpz/n+Y6iC/QgXlMyYtWNY
         J/ZzEnWoUn91FCMoaujhrKESX2mhyOybZcOVIEG38Arwud/NLMKdS3ljMmxUMzpoWgx6
         1Hq+OXaw3MpiulDppR1IAtGn8q/t1yAVNKIO6uGPHU0y94TSm/lg29Dw0K1nQK+Iftp5
         FeDORa5vONB4k6wpjONwx4ZewKomUXOtpX9rv1EDLGzpt+5ki3hvU0ZvooaBUw2/Q5dj
         aB/0A8AiEOBDRgczUwcuISFy24qZVaL/JVj5d0I1EHYi7gYR7MflLT8dNYVVhoz2qu+e
         O+mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730884033; x=1731488833;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KMCQRj3coMCSXBeNmvnAj2bYRBEKiwNdAXn5OgUnfIA=;
        b=tNZgjEV9RFWygQMnR1Q4Q9iW3ioAfXQZQmDk9Lv/FHawZ6mKpryQlk80hVIisEyUYV
         Us4UbFKsV88UL3NwctRskNlNLRNCUUfkMSpjwT4ERZ5Gxd0Aj7dtuVR2E4IRyQ0iooa+
         rNB9xu+ajF9wGb+q7B3dPcg4+FOCD8l00K6Qeki8CeyPPVHuXjgmcaz4JdfvgniJbuYu
         SRsMXHdJRLN3pcWeBT8XukewaGk+rNJ5E2qt7tF6f543g9Zh9DwcM1PjIYv41ig2Ra/N
         Rj63nh6qDzCAcUCu136X1IpYD1y3QuoHl+avQwVHa+Csn3YJco5c5gIL223y2RN9VIpq
         gLxw==
X-Gm-Message-State: AOJu0YyJ/ENee9JRTjF4lvhbMcHbGB6FzZJy0khrW2L55tlOzdrB3T8C
	mCP61SVkYq9MaBpwT4c2hmixkJisvYSWaDzcBKyoI9TXPOlRFEwWLc2HTUq+d/OVWESlXyFP+Fb
	VzMHFB2rgnR5Hhge14Bnu+3kBXti9x9eqKlVxDrA9Qv1EWgAgiRDBkQ==
X-Google-Smtp-Source: AGHT+IFLUWbrqO4GBNTxU9DazX2bVg3MoeGA4aD5Q348OTuhQGF18GdMdXwoOTxPugYedLgoJdZUBIokwp2hnAT8bpI=
X-Received: by 2002:a05:6402:26c9:b0:5cb:69be:db47 with SMTP id
 4fb4d7f45d1cf-5cbbf922bb5mr32534990a12.28.1730884033278; Wed, 06 Nov 2024
 01:07:13 -0800 (PST)
MIME-Version: 1.0
References: <evJJismGX8FnN2oBEQQb16M8vEYufO5U0vQHxU0E@lists.ettus.com>
In-Reply-To: <evJJismGX8FnN2oBEQQb16M8vEYufO5U0vQHxU0E@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 6 Nov 2024 10:07:02 +0100
Message-ID: <CAFOi1A6xauBJvN5oEFThU4+rKZ13b-VPHWVn0hqUGLrmUxTPXw@mail.gmail.com>
To: mgannet@gmail.com
Message-ID-Hash: QJURMVKNE7ERVETNGM4BCYUT3T5C2LRN
X-Message-ID-Hash: QJURMVKNE7ERVETNGM4BCYUT3T5C2LRN
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Asynchronous IO in RFNOC on x310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QJURMVKNE7ERVETNGM4BCYUT3T5C2LRN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5414974378825154896=="

--===============5414974378825154896==
Content-Type: multipart/alternative; boundary="000000000000f38a7106263ad7d3"

--000000000000f38a7106263ad7d3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Mark,

maybe I'm being dense, but I don't understand what it is that your GPIO
pins are supposed to be doing when your system is done. Can you elaborate?

--M

On Wed, Nov 6, 2024 at 1:56=E2=80=AFAM <mgannet@gmail.com> wrote:

> Hi everybody!
>
> I=E2=80=99ve written an RFNOC block that assigns the daughterboard rx GPI=
O pins to
> the tdata signals that are sent to the SEP. I=E2=80=99m using the axis_da=
ta
> protocol and the block is placed statically between the DDC and the SEP. =
I
> use the tvalid and tlast signal from the upstream (DDC) block and the
> tready signal from the downstream (SEP) block. I brought the GPIO into th=
e
> block using appropriate YAML files. Small modification outside of RFNOC
> were required to get the pins to RFNOC (bus_int.v, x300_core.v,
> io_signatures.yml, and x310_bsp.yml).
>
> The x310 is operated at 1 Msps and there are 64 samples per CHDR packet o=
n
> the axis data bus. This means that the packet rate on the bus is 1 Msps /
> 64, or 15.625 kHz. Period is 64 us.
>
> If I place a signal onto the GPIO pin, everything is fine as long as the
> pulse width is greater than 64 us. I can run the radio with
> rx_samples_to_file and see the GPIO pins faithfully reproduced in the
> Ethernet output collected on a PC.
>
> At pulse widths less than 64 us, the signal is essentially aliased. I
> believe it=E2=80=99s because I=E2=80=99m using the tvalid, tlast, and tre=
ady signals from
> upstream/downstream blocks with data that=E2=80=99s already on the axis d=
ata plane.
> That data bursts through with 64 samples roughly every 64 us and is clock=
ed
> with a 200 MHz master clock. I need to clock in the asynchronous GPIO.
>
> My question: What is the best way to do this? Generate my own clock and
> use a generic FIFO like axi_fifo.v to hold the data until the upstream
> block sends its data and the downstream block is ready to receive?
>
> Thank you,
>
> Mark
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f38a7106263ad7d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Mark,</div><div><br></div><div>maybe I&#39;m bein=
g dense, but I don&#39;t understand what it is that your GPIO pins are supp=
osed to be doing when your system is done. Can you elaborate?</div><div><br=
></div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Wed, Nov 6, 2024 at 1:56=E2=80=AFAM &lt;<a href=
=3D"mailto:mgannet@gmail.com">mgannet@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi everybody!</p><p>I=E2=
=80=99ve written an RFNOC block that assigns the daughterboard rx GPIO pins=
 to the tdata signals that are sent to the SEP.  I=E2=80=99m using the axis=
_data protocol and the block is placed statically between the DDC and the S=
EP.  I use the tvalid and tlast signal from the upstream (DDC) block and th=
e tready signal from the downstream (SEP) block.  I brought the GPIO into t=
he block using appropriate YAML files.  Small modification outside of RFNOC=
 were required to get the pins to RFNOC (bus_int.v, x300_core.v, io_signatu=
res.yml, and x310_bsp.yml).</p><p>The x310 is operated at 1 Msps and there =
are 64 samples per CHDR packet on the axis data bus.  This means that the p=
acket rate on the bus is 1 Msps / 64, or 15.625 kHz.  Period is 64 us.</p><=
p>If I place a signal onto the GPIO pin, everything is fine as long as the =
pulse width is greater than 64 us.   I can run the radio with rx_samples_to=
_file and see the GPIO pins faithfully reproduced in the Ethernet output co=
llected on a PC.</p><p>At pulse widths less than 64 us, the signal is essen=
tially aliased.  I believe it=E2=80=99s because I=E2=80=99m using the tvali=
d, tlast, and tready signals from upstream/downstream blocks with data that=
=E2=80=99s already on the axis data plane.  That data bursts through with 6=
4 samples roughly every 64 us and is clocked with a 200 MHz master clock.  =
I need to clock in the asynchronous GPIO.</p><p>My question:  What is the b=
est way to do this?  Generate my own clock and use a generic FIFO like axi_=
fifo.v to hold the data until the upstream block sends its data and the dow=
nstream block is ready to receive?</p><p>Thank you,</p><p>Mark</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f38a7106263ad7d3--

--===============5414974378825154896==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5414974378825154896==--
