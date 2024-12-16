Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5930D9F3339
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 15:28:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 126B738584F
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 09:28:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734359292; bh=g0ZHLd2ofaGOi+xN4WmHf8KVdosAYTvh+nJXtUDI1E0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=hD/1wftcXpxR6YZaOjeqObpZuoIxZyzlpRpYmv0xQyfUn6zrUCoFuHzgWJYBNTRf0
	 4h+qgjs+cai2RtsKLL949tGFRFWW/bB1AXTdvSTcxkjHoY81TKBYdBg44R3yTCWWIy
	 Dcab4xnFOUGOv+kBHFFpXu8SYS0whV2YQsTBnExfK3d2lifK9Kg5KaGG1uUM7P6CT2
	 iese33lV8CCyhsEImYSpxTlypft7g31IpF4EmvkJw6uigGxW9lEcj+wVbQ26d5MGcv
	 5KE1K9F/qqJb0e+NtW6H/sn3lP5ga4vLXZxRRdW+jbBfyZAAK5yoKWK9YMZFEYH2uN
	 pMaNtqW98UpMQ==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 1B69438544C
	for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2024 09:27:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="M4Vn8Ntx";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a9e8522445dso851620666b.1
        for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2024 06:27:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734359237; x=1734964037; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eJuigkkOj6CJhVhccIzFzr2oexErcuW7Iuwb//YarWA=;
        b=M4Vn8NtxJR8kATk2s5wQCdnQKbaYQ2fxu/x/icbnyOew2F/fIvVlylIJQo606qPCYz
         K7Dxy1N/+DlA76ZwZ1y2lJtK98VT7k5vBhiNKYWGTTa1rAXbJxc4TRIVeWE6LK6XR+Bw
         zznt3IUD1yiEPwlRFwgZ8OrFMPosFwEaqgZTvOOJYLILgczNm4egGEwZyXMoDdtm5Cly
         OP6LivxfFN1am3OFJniEyH+6Zx5K5GNEOgiy0ZVhsZpb1fnRDUDeWmF8ukxK8vPvgruo
         23UcRCLllcczcjNJSpEXOaLWWIAjvGUyqusGZ39g/LgOkLpOyvf8FEmb4iQXrNGhBHIn
         RPRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734359237; x=1734964037;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eJuigkkOj6CJhVhccIzFzr2oexErcuW7Iuwb//YarWA=;
        b=P3rHhXv9xAoPW8Fdyo4VigXAOqR6DMG0LCDrp3Z3z5Vh4CJDSaZ3iQE/tjhmTt1i6B
         TGMLdOTOcHLhPY5ESkxHUPEkVh0EYpphpOQUu2Wpj+YJc48uOI0njWNv6aHXSB4H3e7y
         OZ2d2U2gRh8wJhcXoJ8y04VpbY7Ldbnt/gXD492M7R6pHZCLuj4iX1P1esrClaHUgdu5
         HtaOW8fR8aXKIs2St3/mSfLKTYJZ+yHWdabkXDCOp4NYorZG7sBawEnrDIPEOkpRwg07
         ECDasHwtA+/7jdAi0dUjSeOZgTIgrs05637WdvZkXYAkh/R14rg/IsPo6a+ut4A4jo37
         vDeg==
X-Gm-Message-State: AOJu0Yw/BxJucNl7njFYoyVk1rhFDZeQDtATomAvkGxvTnjb5MFl57tf
	sZ6SVfJugkL4QbFLf0g/tYs9M/cgSyoCZgkx+aEBaO+QQ3Ywvtc7EUfMq1PdysGmHSOpGlaN7eA
	oJwHykbGzGQ6y21X4fF+Y1oRQEH4M1Q==
X-Gm-Gg: ASbGnct82fiF9yo/kV7BwVP/kYjWSQoZgli0PT0RXfkO4dOdjtxBQa4/OyuQQdQcPcM
	qJk86+hYZ8b/3I5bAt4gjcc/OzwENwfTtJ6Vifw==
X-Google-Smtp-Source: AGHT+IGQdK16Hq/p/SPeRWXZcwg0svmDGnFNX8L9V9ScMpjspFeHWnR4XaeRAffb/p2ab7TE/x33xoz6xPoqcQzxBHA=
X-Received: by 2002:a17:907:6d16:b0:aa6:8f71:1645 with SMTP id
 a640c23a62f3a-aab77ed35abmr1272167866b.55.1734359236752; Mon, 16 Dec 2024
 06:27:16 -0800 (PST)
MIME-Version: 1.0
References: <244d0fbb-2687-c74e-0b9d-e1de1122d382@novagrid.com>
In-Reply-To: <244d0fbb-2687-c74e-0b9d-e1de1122d382@novagrid.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 16 Dec 2024 09:27:05 -0500
Message-ID: <CAEXYVK65nb0wtqBhucDXEtDcaM3tYobRC8AXG1yQVy2eqLVFSQ@mail.gmail.com>
To: Christophe Grimault <christophe.grimault@novagrid.com>
Message-ID-Hash: MCZ7IJE7T6W4FENA6LVOIW7AVAZXJP4M
X-Message-ID-Hash: MCZ7IJE7T6W4FENA6LVOIW7AVAZXJP4M
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sampling channels at different rates
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MCZ7IJE7T6W4FENA6LVOIW7AVAZXJP4M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1209881211619111694=="

--===============1209881211619111694==
Content-Type: multipart/alternative; boundary="000000000000383e40062963fa65"

--000000000000383e40062963fa65
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 16, 2024 at 9:15=E2=80=AFAM Christophe Grimault <
christophe.grimault@novagrid.com> wrote:

> Dear users,
>
> I'm using python wrappers with UHD >=3D 4.5 and a X300 with 2 twinRx.
>
> I would like to know if it is possible to create a streamer, for more tha=
n
> N channels, with a sampling rate which different for each channel.
>
> As for now, when I try this, I get all my 4 channels with the same
> sampling rate, which is the one of the last channel added.
>
> Is it just possible to do it ? Say, for example,  have a streamer with 2
> channels :
>
>    - chan 0 on fc =3D 140 Mhz, rx_rate=3D20 MS/s
>    - chan 1 on fc =3D 140 MHz, rx_rate=3D1 MS/s
>
> Thanks in advance
>

I don't think this is possible, but if it is I don't think it's advisable.
You should use 2 different streamers.  The timestamps associated with them
should be the same so on the host you can still align them, but the
streamers itself I think would be weird trying to receive the same N
samples over the 2 channels.

Is there any particular reason you don't want to use 2 streamers?

Brian

--000000000000383e40062963fa65
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Dec 16, 2024 at 9:15=E2=80=AFAM C=
hristophe Grimault &lt;<a href=3D"mailto:christophe.grimault@novagrid.com">=
christophe.grimault@novagrid.com</a>&gt; wrote:</div><div class=3D"gmail_qu=
ote gmail_quote_container"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
 =20

   =20
 =20
  <div>
    <p>Dear users,</p>
    <p>I&#39;m using python wrappers with UHD &gt;=3D 4.5 and a X300 with 2
      twinRx.</p>
    <p>I would like to know if it is possible to create a streamer, for
      more than N channels, with a sampling rate which different for
      each channel.</p>
    <p>As for now, when I try this, I get all my 4 channels with the
      same sampling rate, which is the one of the last channel added.</p>
    <p>Is it just possible to do it ? Say, for example,=C2=A0 have a stream=
er
      with 2 channels : <br>
    </p>
    <ul>
      <li>chan 0 on fc =3D 140 Mhz, rx_rate=3D20 MS/s</li>
      <li>chan 1 on fc =3D 140 MHz, rx_rate=3D1 MS/s</li>
    </ul>
    <p>Thanks in advance<br></p></div></blockquote><div><br></div><div>I do=
n&#39;t think this is possible, but if it is I don&#39;t think it&#39;s adv=
isable.=C2=A0 You should use 2 different streamers.=C2=A0 The timestamps as=
sociated with them should be the same so on the host you can still align th=
em, but the streamers itself I think would be weird trying to receive the s=
ame N samples over the 2 channels.</div><div><br></div><div>Is there any pa=
rticular reason you don&#39;t want to use 2 streamers?</div><div><br></div>=
<div>Brian</div></div></div>

--000000000000383e40062963fa65--

--===============1209881211619111694==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1209881211619111694==--
