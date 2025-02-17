Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C68A3896A
	for <lists+usrp-users@lfdr.de>; Mon, 17 Feb 2025 17:38:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 33D92385E06
	for <lists+usrp-users@lfdr.de>; Mon, 17 Feb 2025 11:38:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739810311; bh=zXA8SdbSEdXvJrAMa1AAaDwgDeAnoH868p17aRgaYSQ=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=lmbzILNw5EYbpq+L03040/lBNmijqFkpIS2N0ljaTfL+I+v1mtJApWNhaijvQWsta
	 BMNihqhEnOgibXpw7pmbrfh1ysMLymmSaeBymHnz7bqYT5/LVHdI1UlSJ7wfucynmW
	 IIgPv10ExDncu9NAENdYUcDHAJBRPnuKbZN5npZlbLRWGzpn2ldFymo9Zv7gy/De3G
	 Q/39oPFhU5rRupkMZ8E89ed4e7DQ6t3p3cZpHovBiiv1tMrEcIVEK7Tla0iJn+Ejf2
	 9Ats3c39ZCtnIIE7oxMDH3galgDCulEqZFRjlDuA/+G3sSLAtwpdG6OMg9DvcKfqAO
	 pU30xJ3/m/Qmw==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id C46363857AA
	for <usrp-users@lists.ettus.com>; Mon, 17 Feb 2025 11:38:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="hrihW4sZ";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5e04064af07so3595866a12.0
        for <usrp-users@lists.ettus.com>; Mon, 17 Feb 2025 08:38:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1739810305; x=1740415105; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lBl4hXfu04n6ZBYiLtlUwW+dWGRqSauaOikkyXqrBs0=;
        b=hrihW4sZJslrOkbO4ACkKqlphwP9paDPnA6WtddCEmcurWYQg7iJTGggZJIm0yib8d
         OK1WbnFeWwAeWIvtgvdjYrt4XDRy4d6t+wQAZ3GUfd1bmjW4K6n2Mmo5skjpKUMqg6FH
         2a9upDW4jn/I43GIMhpXXThdJIyVsCZV1/h6gf2sXOGXNFIyMdfu171ZYj5kPZCQwSuK
         UbdnihR2tmaOzEUZzmjOqOhzlsEV/y9u82smp9yXH2xs0kisnUC4w5vd38wg1he8Ydam
         7sPmS3e5VVTZ2hhypsZhDzy9gXFP5QcobLfhLSjZtvFKtySrz8SWPEov4h0uJF+HHVuy
         Ub9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739810305; x=1740415105;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lBl4hXfu04n6ZBYiLtlUwW+dWGRqSauaOikkyXqrBs0=;
        b=NnEz7tcZVzAdqcAYpORtoYRgLMdY7kguREqx98oAH3MifRjgMpjwQcYVZn8zLkzJuL
         qVyrZQyoHth6Oi+IXirmkDLqS49kKeH1ncgLp3vvZtLqRdH0/0fbVUt5djueyoxZUGV1
         rnU1pErZvTl8AK7/7mp8iUI/7GnIur0stFUv0wChD4Y8s9obARLpZvlrqatL5ETrdtZO
         gn4bjslDJsHBRmAno00WRuA0BvZ4I2/LLDZ9KAnW5YdkJ5lJsB2K/GLtFH/Y847I5wK9
         MDOXHJWqp199ctcFWiT2KGYcro4QB++h4uzYG6iP2+WnMZlP/wttkuJEVhb/W2aW7PzX
         ZOiQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/ZqbRmG816aBfTwn36C7i3aDz+oLjKRgXHnBFc+B1dAouM1e/X/72eMrTiOTJzDQlONngzrkrBIQO@lists.ettus.com
X-Gm-Message-State: AOJu0YxXunbdhcms/uL8pDSEYsP1JVB38DfEPH5rn6Pw3VFIDImjqMOk
	VLhYoMPr5xppCD9K5gMFjuZxqHcKkb/PvFIXXCbQDzFMkDrUjfUNxTxWSHHKtqcyq2+vozctFPf
	S7UkaCDThzX4IAxY4/wztUYEZR8Tpu5xQwMrP
X-Gm-Gg: ASbGnct74y7XA6pH9h9yTc+U5G5mWQIALN7iFYDBWS0U04OMS/NFD27F42axqGpYyyo
	SaX/9526gmnYPeauec8Ln12pogq4WLDUEHXMpX7ItcGaUqOstJIicHdP6AhI/IBSJOoX8lIWs
X-Google-Smtp-Source: AGHT+IFtHXKoKnFQ+Ze9btyJfADS6CdHymXZKrqCQWj78No9qnRq5Yd5YsZVmCXsG6E1yKd2tjv7zWcaOaMMa59Iu7M=
X-Received: by 2002:a05:6402:3488:b0:5dc:74f1:8a32 with SMTP id
 4fb4d7f45d1cf-5e0361f4885mr11749714a12.28.1739810304676; Mon, 17 Feb 2025
 08:38:24 -0800 (PST)
MIME-Version: 1.0
References: <000801db8152$54ff4b00$fefde100$@gmail.com> <000901db8157$c73f64c0$55be2e40$@com>
In-Reply-To: <000901db8157$c73f64c0$55be2e40$@com>
Date: Mon, 17 Feb 2025 11:38:13 -0500
X-Gm-Features: AWEUYZmYodbLEEgQYvtaXBgYzfTgd5WmOwmEryFz2K98TYkc3eNacgA2VZim61E
Message-ID: <CAB__hTRGK3BsOgoaXcQt3zuz9u7WSWWWTYYu3o+kEwdGnC8hTw@mail.gmail.com>
To: Stuart Austin <SAustin@criticalsoftwaresystems.com>
Message-ID-Hash: J2FLFJKRKXAWSCAW22PSTAPQW5ZOKFG4
X-Message-ID-Hash: J2FLFJKRKXAWSCAW22PSTAPQW5ZOKFG4
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: john.achkar.r404@gmail.com, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: High power TX/RX same antenna
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J2FLFJKRKXAWSCAW22PSTAPQW5ZOKFG4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3632967046238285988=="

--===============3632967046238285988==
Content-Type: multipart/alternative; boundary="00000000000030009b062e59278f"

--00000000000030009b062e59278f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you are using TDD, you may need a T/R switch to switch out your receiver
during transmission. If you are using FDD, you may need a diplexer.
Rob

On Mon, Feb 17, 2025 at 11:20=E2=80=AFAM Stuart Austin <
SAustin@criticalsoftwaresystems.com> wrote:

> Can you just add more attenuation between the output of the circulator
> port that goes to the RX port on the N310?
>
>
>
> *From:* john.achkar.r404@gmail.com [mailto:john.achkar.r404@gmail.com]
> *Sent:* Monday, February 17, 2025 10:41 AM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] High power TX/RX same antenna
>
>
>
> Hi,
>
>
>
> I am using a N310, with OAI to transmit 5G signal. I want to transmit 40
> dBm using one antenna connected on both TX and RX ports. The best
> circulator I found has 18 dB isolation, which isn=E2=80=99t sufficient co=
nsidering
> -15 dBm USRP max input power.
>
> What is the best approach to consider?
>
> Thanks a lot.
>
>
>
> Best regards,
>
> Charbel
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000030009b062e59278f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If you are using TDD, you may need a T/R switch to switch =
out your receiver during transmission. If you are using FDD, you may need a=
 diplexer.<div>Rob</div></div><br><div class=3D"gmail_quote gmail_quote_con=
tainer"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 17, 2025 at 11:20=
=E2=80=AFAM Stuart Austin &lt;<a href=3D"mailto:SAustin@criticalsoftwaresys=
tems.com">SAustin@criticalsoftwaresystems.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-236598103288=
9283853">








<div lang=3D"EN-US">

<div class=3D"m_-2365981032889283853Section1">

<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Can you just ad=
d more
attenuation between the output of the circulator port that goes to the RX p=
ort
on the N310? <u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>

<div>

<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(181,196,223);padding:3pt 0in 0in">

<p class=3D"MsoNormal"><b><span style=3D"font-size:10pt;font-family:Tahoma,=
&quot;sans-serif&quot;">From:</span></b><span style=3D"font-size:10pt;font-=
family:Tahoma,&quot;sans-serif&quot;">
<a href=3D"mailto:john.achkar.r404@gmail.com" target=3D"_blank">john.achkar=
.r404@gmail.com</a> [mailto:<a href=3D"mailto:john.achkar.r404@gmail.com" t=
arget=3D"_blank">john.achkar.r404@gmail.com</a>] <br>
<b>Sent:</b> Monday, February 17, 2025 10:41 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] High power TX/RX same antenna<u></u><u></u></s=
pan></p>

</div>

</div>

<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>

<p class=3D"MsoNormal"><span lang=3D"EN-GB">Hi,<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span></p>

<p class=3D"MsoNormal"><span lang=3D"EN-GB">I am using a N310, with OAI to =
transmit 5G
signal. I want to transmit 40 dBm using one antenna connected on both TX an=
d RX
ports. The best circulator I found has 18 dB isolation, which isn=E2=80=99t=
 sufficient
considering -15 dBm USRP max input power.<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span lang=3D"EN-GB">What is the best approach to co=
nsider?<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span lang=3D"EN-GB">Thanks a lot.<u></u><u></u></sp=
an></p>

<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span></p>

<p class=3D"MsoNormal"><span lang=3D"EN-GB">Best regards,<u></u><u></u></sp=
an></p>

<p class=3D"MsoNormal"><span lang=3D"EN-GB">Charbel<u></u><u></u></span></p=
>

</div>

</div>


_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--00000000000030009b062e59278f--

--===============3632967046238285988==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3632967046238285988==--
