Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BA7AB238A
	for <lists+usrp-users@lfdr.de>; Sat, 10 May 2025 13:17:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 630C1385D06
	for <lists+usrp-users@lfdr.de>; Sat, 10 May 2025 07:17:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746875872; bh=oDwrMQ3rMbIVJFMLsY3nZSEMhNw8TDvSxqXUos6uZbI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=NLsL82QuwtxE/E/SurydyOSZZaz3lIhLf5z5cUxy4bMHEuRqs4nuiuuusBcN72ZKk
	 VHTsUPWKO6VI9Ndpb+tX9XyKxnlDb8hQXcPhsDtWUzUsxeEWwxa2eYcoou/QiJjsOy
	 HmHFh9r7Swlbf0zZh8Wfv0+ibaF9CjEpx5i7MvVkhtO5JiwPGCikh5Maw+H8zFsNvi
	 utfsrcYMsJsvQKVh11VjdVh1z3XsVZ0w0abbhq3eTD+D3+ICCPXfFRrHwyCSRxJn+R
	 S8t+T7XiXioDMwQaQ2mCDbf6vy52JF87WxqVFpFyEwHM6Kebc0q3HWg5VNuBqPdZ//
	 /AXTnPeDQIAOw==
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 68154385CEE
	for <usrp-users@lists.ettus.com>; Sat, 10 May 2025 07:17:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QG2ZJ/xd";
	dkim-atps=neutral
Received: by mail-io1-f50.google.com with SMTP id ca18e2360f4ac-86135ac9542so112391939f.1
        for <usrp-users@lists.ettus.com>; Sat, 10 May 2025 04:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746875863; x=1747480663; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uMf3o7aJDklgbiwu2oOjdGBEsNONQ20GnMjnnhO0YMQ=;
        b=QG2ZJ/xdvcwwRFwAvexlotvaC7aakdB+a7tB1Hp7MDQ2sIWBeGWBDfcCD/Fj3RrBiR
         CP3G3V+lAxzHfWAlN/PvkHxNv8i/GdO37WxoUIpQEbmowOq8VzDfcKRoLoaAK2l5e1vu
         BEicoKZ2u/gWi0wbUbf0i+QMWH6Cv8GzL+TlPKxq0JJw38phliblqB+c4OO4qYtXKMMt
         ef6oN+bUO+FnAH5yVLhUwe7ba8cdjAysMloRWhH+PZB7hmnvdzfu1BjUBRHR4wOzYpj/
         v+Rga3Bz9fUmnvP6RKtZ98xuAM2a2JM41cXGFP3VPxQUN2StDPrVdjBVmZSYI9784SoQ
         jC8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746875863; x=1747480663;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uMf3o7aJDklgbiwu2oOjdGBEsNONQ20GnMjnnhO0YMQ=;
        b=ruNQ1eCkeS5vv4b0d3WipXFNG77xHSQm6858Tx1mJQPDfBnwQeRUVsOTR5CzM+3LsV
         OB3ixvMR1urZrXEFE4ZtyXm3L8ILNiQF9dqJxtzfRGjFU+GwzQ+y7aWtf6lzV/v64y+l
         e1AXAJJjzmRa17Atwzci3vuwH136cEhv8llg6zhkEXavc1k+BAQgj24PPZIzorvdebcG
         YjtBL7dSjmZ/Sg5fmx9tbevdLi4FdnnqkN+WZXkEQYShzomeRU5MDl8T2JzYZiUNyfxa
         nTA98Mfm0Uoe5aPq2F2L/uQG+15A+WqFy+0987G/3cwFKiNlouN4DNAEyMzcIhCIcvle
         ch8A==
X-Gm-Message-State: AOJu0YxURKiOzX1ykVQVObcU+QmGrtQoVSUGJDk+HglOJDw+Dm6FlHzG
	Gq7pYmoELWSire6Ei4a1wGUo5GDD1rm71/aE+UfokUuJJ3SgN65/HUJhmDietQrtg0ZCMYuqkcB
	4QvyyNremRO1VDjkJlsvhuuZokWp7OMdbjBc=
X-Gm-Gg: ASbGncsd7ne2Hqspch9fWVhrBcKEgEcn/rQL8ZhoVjC8TlF3LwWnLC78vmTLGgOhcaw
	Mohqa11ED+vZ7bUofeyMs4wycZItLh6DGTmPh92cF7sV7v2c+3oD85ilBIBHKDQBnZVmB5Tl9TM
	7Cy38qvez+9CU/yFlUPUSaD24jO3dFvI0=
X-Google-Smtp-Source: AGHT+IGAaWS/ZzdsdLXLmgBesxbJicskXJfiblpCyt/CdvpwgTTkvW4QEhzXeY8757iAZ8jiGXPklwaM3i+wNnYbWAE=
X-Received: by 2002:a5d:9ac5:0:b0:858:7b72:ec89 with SMTP id
 ca18e2360f4ac-867550aa550mr1197463639f.5.1746875863228; Sat, 10 May 2025
 04:17:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2FTNui2gby9j+mRDx3bFHGzRjUpWAoB1Q086_DwghEZmA@mail.gmail.com>
In-Reply-To: <CAAxXO2FTNui2gby9j+mRDx3bFHGzRjUpWAoB1Q086_DwghEZmA@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sat, 10 May 2025 14:17:31 +0300
X-Gm-Features: AX0GCFtTEW196O4XFYGh7iHawo3uho1R-emcPxuLm-0OzlqWg9HUMDgczOSnqTc
Message-ID: <CAAxXO2GhNJx4AB4-m7vVAsnhBdkHCjDHqRsFze1BqLvZswYcYQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: ZRYKKXF5TYTST64LKQR4ESZ53D2PO3KT
X-Message-ID-Hash: ZRYKKXF5TYTST64LKQR4ESZ53D2PO3KT
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: fc64 help needed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZRYKKXF5TYTST64LKQR4ESZ53D2PO3KT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2071427921048970606=="

--===============2071427921048970606==
Content-Type: multipart/alternative; boundary="0000000000004b67210634c63bf4"

--0000000000004b67210634c63bf4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It turns out that the problem is not just bypassing the sse2 code:(
After commenting it out, uhd still crashes. The conversion output
buffers are not created in _recv_one_packet()
Any ideas why they don't?

TIA
Nikos

On Sat, May 10, 2025 at 7:56=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.com=
> wrote:

> Hi all,
>
> I recently changed my host application to complex double. I had to change
> my stream_args to
> fc64. I pass my void pointer to uhd_rx_streamer_recv same as before:
> ptr =3D (void **)&zin;
> Unfortunately, the  convert_chdr_1_to_fc64_1_guts doesn't like it, I have
> only 1196 maxsamples, and crashes. I don't need the sse2 code for my
> conversion. I only use 1024 complex
>  samples/packet for fft. I am very happy with the generic chdr_sc16_to_xx=
.
> Does anyone have any fc64 experience and how one can pass the void buffer
> pointer to
> skip the sse2 code?
>
> TIA
> Nikos
>

--0000000000004b67210634c63bf4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">It =
turns out that the problem is not just bypassing the sse2 code:(</div><div =
class=3D"gmail_default" style=3D"font-size:small">After commenting it out, =
uhd still crashes. The conversion output</div><div class=3D"gmail_default" =
style=3D"font-size:small">buffers are not created in=C2=A0_recv_one_packet(=
)</div><div class=3D"gmail_default" style=3D"font-size:small">Any ideas why=
 they don&#39;t?</div><div class=3D"gmail_default" style=3D"font-size:small=
"><br></div><div class=3D"gmail_default" style=3D"font-size:small">TIA=C2=
=A0</div><div class=3D"gmail_default" style=3D"font-size:small">Nikos</div>=
</div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Sat, May 10, 2025 at 7:56=E2=80=AFAM Nikos Balkana=
s &lt;<a href=3D"mailto:nbalkanas@gmail.com">nbalkanas@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Hi all,</div><=
div class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=
=3D"gmail_default" style=3D"font-size:small">I recently changed my host app=
lication to complex double. I had to change my stream_args to</div><div cla=
ss=3D"gmail_default" style=3D"font-size:small">fc64. I pass my void pointer=
 to uhd_rx_streamer_recv same as before:</div><div class=3D"gmail_default" =
style=3D"font-size:small">ptr =3D (void **)&amp;zin;</div><div class=3D"gma=
il_default" style=3D"font-size:small">Unfortunately, the=C2=A0=C2=A0convert=
_chdr_1_to_fc64_1_guts doesn&#39;t like it, I have only 1196 maxsamples, an=
d crashes. I don&#39;t need the sse2 code for my conversion. I only use 102=
4 complex</div><div class=3D"gmail_default" style=3D"font-size:small">=C2=
=A0samples/packet for fft. I am very happy with the generic=C2=A0chdr_sc16_=
to_xx.</div><div class=3D"gmail_default" style=3D"font-size:small">Does any=
one have any fc64 experience and how one can pass the void buffer pointer t=
o</div><div class=3D"gmail_default" style=3D"font-size:small">skip the sse2=
 code?</div><div class=3D"gmail_default" style=3D"font-size:small"><br></di=
v><div class=3D"gmail_default" style=3D"font-size:small">TIA</div><div clas=
s=3D"gmail_default" style=3D"font-size:small">Nikos</div></div>
</blockquote></div>

--0000000000004b67210634c63bf4--

--===============2071427921048970606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2071427921048970606==--
