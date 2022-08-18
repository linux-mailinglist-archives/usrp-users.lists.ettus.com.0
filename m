Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE2A598A73
	for <lists+usrp-users@lfdr.de>; Thu, 18 Aug 2022 19:30:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CD357385806
	for <lists+usrp-users@lfdr.de>; Thu, 18 Aug 2022 13:30:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660843832; bh=44HlIZocc0jiuNjmn6O+cH7QrrflF65hM+NFYNTR0H0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=vC09XvGao1iYhbdQzGY+CDSqZxTibIKBWiFIBJ1YHfmJLudA/UhHdc57GgMAiucWi
	 IY7ue35ZrWAiQtsr96jwky95dQ/D8jDGiIPoxCpeoxo+K1jsW8YHNP55B8IiUORo0s
	 zN/sWUahtFEDEne9oL6lRmhhO5n9rwzrlk4fjVd0dpjXBsATR/ZGUTD79dnNS4p4gE
	 6Z1WqHjBWyfVWetpNrlX4Z6rD2JEdooxmETzYkfbUb0iOqhZIGfGGQ95NGidGstSX8
	 33N5w6M7962saAyR4PDTjOCDPIqsIJUzXRjbXs9pQrBE4zVmkcS/cKKye3RmHEOnCe
	 OVNhH9qtkwmDg==
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 33C753851CF
	for <usrp-users@lists.ettus.com>; Thu, 18 Aug 2022 13:29:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="HfWEavcR";
	dkim-atps=neutral
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-3321c2a8d4cso59805357b3.5
        for <usrp-users@lists.ettus.com>; Thu, 18 Aug 2022 10:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=Q3/IAGsuoX3eVmD+mcmavFQVdocaxsYNLI7YafDhbDk=;
        b=HfWEavcRo8BhEbuE3QfUDKb+MSH1cY+StgLvmOsZNuRTxA4jpCJv8pATSSPjmzYitu
         b0RxDi0Z+uQNf/y4a8Oiw0AhTvNXCqCromgJgZhxoRvbgvETmKGQ7fdvJykDtDaTFYnj
         SsPnhUz8NdVicIXyp5ipFb0mtAuZyNz8sJdE9BjLVM4veMfOJnYs0YZoJooOcFcDLv/r
         Rr4WakM0Q2YSXc0k++ZDKBLP00E064O2omJ6lFNdFxUWr1AfUbDpHAMHmtfqFrqYnfeI
         P6wqqeFy/zHG8H2mKIFYEi2cHe/UEkoyW1ic1qPiq7907oXD61W6xHWnKP7PmcDFNEw/
         iFRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=Q3/IAGsuoX3eVmD+mcmavFQVdocaxsYNLI7YafDhbDk=;
        b=okbE/4n0EyWv3K5ZATbwxKzFG+Zf+FXeVLNuhcY6gJcWu/9jqrdaAFW6IpkhIPU2lP
         q6lc5cpj6ohJMROgQqOMoAG/TmfMPZDf/xuzk1hfkUw5yCkcV4ESWS+up7Fcwwk7IFlZ
         +Ox9t1ULW93NoRZHE7Tk008aLNT4FO1aJiX2I2K3ZUhbzVk14UaLkLn5vEMJqC9EFlKq
         gcPvXgavHpjfuG5r2rsyry5JilM2isL3jHk5D5IEVpmzqRKm8sFeCR3FLycHZ0bvhXJ2
         ejXt5tuwI+5oREfsnN1DIsLF1+kPymvu7pJQHGqsSQ+/4NfNUGsisEHNIidAD634Qq/F
         Qb8A==
X-Gm-Message-State: ACgBeo2NDnAlEy7LzMgHMOg/dsncoQHMiF0R+addXBJYRbhXllIBu0BZ
	9imsKHxIU6KhLHxN5omAbgAaKCq6ZD6fRyibMS2uGYo17YI=
X-Google-Smtp-Source: AA6agR4Ujf5MyRSwJrsuwk0Jha7jH8DWfeiJx9NHeJRDXsoSOMef9xb27WpOdPRyX6I7dVNUlj3BGiY1Otzorsysbsw=
X-Received: by 2002:a0d:df50:0:b0:337:b00b:d12b with SMTP id
 i77-20020a0ddf50000000b00337b00bd12bmr316845ywe.82.1660843742326; Thu, 18 Aug
 2022 10:29:02 -0700 (PDT)
MIME-Version: 1.0
References: <YMFp481oKWLKHn6Gld6NW6T7ruuXTKrHxl9wgxfhLM8@lists.ettus.com>
In-Reply-To: <YMFp481oKWLKHn6Gld6NW6T7ruuXTKrHxl9wgxfhLM8@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 18 Aug 2022 13:28:51 -0400
Message-ID: <CAB__hTSx=35DRBFwSuhTP54M-+yOXGpvJCouEu1q0iUAa82cpg@mail.gmail.com>
To: adrian.campos@integrasys-sa.com
Message-ID-Hash: LATTCIZ2RMOTYFFVNXZG7VBTNOKWDL6Z
X-Message-ID-Hash: LATTCIZ2RMOTYFFVNXZG7VBTNOKWDL6Z
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: AXI_RAM_FIFO Controller
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LATTCIZ2RMOTYFFVNXZG7VBTNOKWDL6Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4588356952546607066=="

--===============4588356952546607066==
Content-Type: multipart/alternative; boundary="0000000000004a62f905e68751da"

--0000000000004a62f905e68751da
Content-Type: text/plain; charset="UTF-8"

Hi Adrian,
As you indicated, the RFNoC blocks axi_ram_fifo and Relay both use the FPGA
RAM.  axi_ram_fifo doesn't need any registers for control because it just
accepts an AXI stream on the input and forwards that exact stream on the
output.  The "control" is in the AXI tvalid/tready handshaking. Thus, if
the upstream block is not ready, the FIFO starts filling up but does not
empty until the upstream block is ready.  But, for the Replay block, this
block stores the incoming stream to RAM until you later decide to play it
out.  It can be used in the transmit path to load a waveform into RAM such
that it can be played out to the Tx Radio without any help from the host
PC.  Or, it can be used in the receive path to store receive samples as
they arrive (up to the given RAM memory depth) and then later downloaded
(played out) to the host PC in non-realtime.

While I don't know your specific application, I wondered if the Replay
block (or the axi_ram_fifo) can already implement your desired
functionality such that a custom block is not needed.
Rob

On Thu, Aug 18, 2022 at 8:25 AM <adrian.campos@integrasys-sa.com> wrote:

> I am making a custom block which has to start storing data to be read
> later, in other words store the data in a FIFO. I am interested in using
> the RAM provided by the E320 so I want to take advantage of the
> axi_ram_fifo code. However, I don't really understand the control of that
> block, how can I control when to start writing data to memory and when to
> start reading it? I have checked the registers in case it could be
> controlled from there like the replay block that has two registers to start
> reading and another one to do a restart but I haven't seen anything like
> that.
>
> I hope you can help me. Thank you very much in advance
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000004a62f905e68751da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Adrian,<div>As you indicated, the RFNoC blocks axi_ram_=
fifo and Relay both use the FPGA RAM.=C2=A0 axi_ram_fifo doesn&#39;t need a=
ny registers for control because it just accepts an AXI stream on the input=
 and forwards that exact stream on the output.=C2=A0 The &quot;control&quot=
; is in the AXI tvalid/tready handshaking. Thus, if the upstream block is n=
ot ready, the FIFO starts filling up but does not empty until the upstream =
block is ready.=C2=A0 But, for the Replay block, this block stores the inco=
ming stream to RAM until you later decide to play it out.=C2=A0 It can be u=
sed in the transmit path to load a waveform into RAM such that it can be pl=
ayed out to the Tx Radio without any help from the host PC.=C2=A0 Or, it ca=
n be used in the receive path to store receive samples as they arrive (up t=
o the given RAM memory depth) and then later downloaded (played out) to the=
 host PC in non-realtime.</div><div><br></div><div>While I don&#39;t know y=
our specific application, I wondered if the Replay block (or the axi_ram_fi=
fo) can already implement your desired functionality such that a custom blo=
ck is not needed.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 18, 2022 at 8:25 AM &lt;<a=
 href=3D"mailto:adrian.campos@integrasys-sa.com">adrian.campos@integrasys-s=
a.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><p>I am making a custom block which has to start storing data to be re=
ad later, in other words store the data in a FIFO. I am interested in using=
 the RAM provided by the E320 so I want to take advantage of the axi_ram_fi=
fo code. However, I don&#39;t really understand the control of that block, =
how can I control when to start writing data to memory and when to start re=
ading it? I have checked the registers in case it could be controlled from =
there like the replay block that has two registers to start reading and ano=
ther one to do a restart but I haven&#39;t seen anything like that.</p><p>I=
 hope you can help me. Thank you very much in advance</p><p><br></p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000004a62f905e68751da--

--===============4588356952546607066==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4588356952546607066==--
