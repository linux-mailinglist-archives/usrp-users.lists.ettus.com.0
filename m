Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C235764750B
	for <lists+usrp-users@lfdr.de>; Thu,  8 Dec 2022 18:41:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B84703842E6
	for <lists+usrp-users@lfdr.de>; Thu,  8 Dec 2022 12:41:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1670521276; bh=7q0a9oqb1JcYp3uclwIbCC5p3oBTGH+flfl+pCwWODY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=rqhAWTXZ+n2kXfmZ8J4NL+Gu41SCjfb+d64hUVLuc61CcFPOnu/xltrQ8FCYTYE8B
	 yzrSK/ZIpXOxpWxnJCk8VXzing2fMrW+CrlFsKUL9Uy5hJtrY9UdRFrIzTBecJkLE9
	 MHUJ0UvACgO+jq5dt+55Neemb19G6DsI0Ji0q7yb7T2x5rTcaKKza/hq9AeapuKnZd
	 raXPi/kCANLN2OuhmOYrxAcHhKB4O/jJRpBkbQeMrs6JW06T5vm+YouxN+rp0Ell55
	 keZ0hB2mcoRXavBrY5yzJwEd3BXf03MdAeWUwsx8UI99FYvhSHCqhZiHaxI8//FMmT
	 4ZOiw1CUzm60g==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 388A63842BC
	for <usrp-users@lists.ettus.com>; Thu,  8 Dec 2022 12:41:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=eng.ucsd.edu header.i=@eng.ucsd.edu header.b="IHUJhRa8";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id c2so1134454qko.1
        for <usrp-users@lists.ettus.com>; Thu, 08 Dec 2022 09:41:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=eng.ucsd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gfMJZn9gmwDDQ+Y1lUIpZUJcL0XyCqnFzzqZ031Dwac=;
        b=IHUJhRa8Ei1bMDaxSs9eoUbUG1wNqTOCiLUwoFItzK/1cVuSAkdcbqnuMgtFMvWEFf
         XT1AdP8jqbXq89COyCE34KGjNB3SqE9o9gic3kRR9RWpg6e1rXDWMfswyGbBhAhwPK+h
         W1Uv5HJT6jPw1tsfsQbcUBSHKIdnKuz4kyaL8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gfMJZn9gmwDDQ+Y1lUIpZUJcL0XyCqnFzzqZ031Dwac=;
        b=Al8hxxYbQ/vnxZxuz0eDxXbI2q9LdsvnvgLxw0dSt2QLhPOxMzQ9EjyQoE5vgPmA6a
         t6AUB7aSEntA/QOGJvC3jXrREqRl7nCGjo40U7iIkZvN4giD70uhkTFF4MzjChs3XZnq
         oejNeuFI3XmjgOIsW7uryP3PC9zrWuf4BsIGcjU5K2VhTjUzMF3WrO6hw9OIKG7QxT9B
         spjpf5+m4CV28EjglnscjER8GeUFOGR/YPdEQ5zFCqLPPQYR7PUzlsYJ0dZp7Oier+Ja
         muP/gc2h85Iy5HMIQJrtX4v+Ipvyh1EZ10eQVrTZrr94Ps85m8csfugZRXn4pY5qpVUX
         YoDw==
X-Gm-Message-State: ANoB5pnaYujEjYmoG4nTSfHCwZI0yRxLrIyoN2pkuO72mkT8FVH+8DmK
	Y0nX6E7qQsOVEEn/6Sk3KnjyapBNRhUFeAGaemmy5A==
X-Google-Smtp-Source: AA0mqf5osms+KsG+BGbTQXK/xibXWd+k/CsOxBT0qFWqK3tkufk/l2RBY5HvflBeFhd7VJoEiiBaBPu1A4TQnVGCDhs=
X-Received: by 2002:a05:620a:17a0:b0:6fc:acb4:4702 with SMTP id
 ay32-20020a05620a17a000b006fcacb44702mr23703886qkb.37.1670521265429; Thu, 08
 Dec 2022 09:41:05 -0800 (PST)
MIME-Version: 1.0
References: <MW4PR13MB55054A97A1A8AB37A19DB265A41D9@MW4PR13MB5505.namprd13.prod.outlook.com>
In-Reply-To: <MW4PR13MB55054A97A1A8AB37A19DB265A41D9@MW4PR13MB5505.namprd13.prod.outlook.com>
From: Raghav Subbaraman <rsubbaraman@eng.ucsd.edu>
Date: Thu, 8 Dec 2022 09:40:54 -0800
Message-ID: <CAA9CoE1307bfR3cfNKtVL+nMfsgOZRA_7pGj+P_JVfNqx0AN0w@mail.gmail.com>
To: Jeff S <e070832@hotmail.com>
Message-ID-Hash: L6RECC2VTQ5F7LTOYQ3BU5LHGVA5T4V6
X-Message-ID-Hash: L6RECC2VTQ5F7LTOYQ3BU5LHGVA5T4V6
X-MailFrom: rsubbaraman@eng.ucsd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 GPIO Latency
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L6RECC2VTQ5F7LTOYQ3BU5LHGVA5T4V6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8507069329667846709=="

--===============8507069329667846709==
Content-Type: multipart/alternative; boundary="0000000000009dad7805ef548a73"

--0000000000009dad7805ef548a73
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeff,

We have used Timed commands to control the GPIO set/unset timing accurately
(UHD 4.1.5 + GNURadio 3.8.2). We have seen that the GPIOs can be controlled
with 10s of ns of accuracy in the X310.

Best,
Raghav

On Thu, Dec 8, 2022 at 3:34 AM Jeff S <e070832@hotmail.com> wrote:

> I=E2=80=99ve been working on a software keying loop with the GPIO on an X=
310, and
> I measured the latency for setting a GPIO pin output wrapped back into a
> GPIO input to be around 5 ms on average.  This was done by setting a pin
> manually, and then immediately polling the input pin to see how long befo=
re
> it switched states.
>
>
>
> I haven=E2=80=99t had anyone who could look at the FPGA side of the X310 =
yet, but
> I was wondering if it would be even possible to implement something in th=
e
> FPGA like the ATR functionality, except it would allow for a keying loop =
(a
> Clear to Send GPIO output wrapping to a Request to Send GPIO input) and
> prevent transmission until the condition was true.  I=E2=80=99m hoping th=
at would
> significantly decrease the latency (less than 1 ms, hopefully) if I don=
=E2=80=99t
> have to bother polling the pin.
>
>
>
> Right now I=E2=80=99m using:  UHD 4.0, and GNU Radio 3.9.5.
>
>
>
> Thanks and regards,
>
> Jeff
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>


--=20
Raghav Subbaraman
PhD Student, ECE
University of California San Diego
rsubbaraman.github.io

--0000000000009dad7805ef548a73
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jeff,<div><br></div><div>We have used Timed commands to=
 control the GPIO set/unset timing accurately (UHD 4.1.5 + GNURadio 3.8.2).=
 We have seen that the GPIOs can be controlled with 10s of ns of accuracy i=
n the X310.</div><div><br></div><div>Best,</div><div>Raghav</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, De=
c 8, 2022 at 3:34 AM Jeff S &lt;<a href=3D"mailto:e070832@hotmail.com">e070=
832@hotmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div class=3D"msg1747660699252979025">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_1747660699252979025WordSection1">
<p class=3D"MsoNormal">I=E2=80=99ve been working on a software keying loop =
with the GPIO on an X310, and I measured the latency for setting a GPIO pin=
 output wrapped back into a GPIO input to be around 5 ms on average.=C2=A0 =
This was done by setting a pin manually, and then
 immediately polling the input pin to see how long before it switched state=
s.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I haven=E2=80=99t had anyone who could look at the F=
PGA side of the X310 yet, but I was wondering if it would be even possible =
to implement something in the FPGA like the ATR functionality, except it wo=
uld allow for a keying loop (a Clear to Send
 GPIO output wrapping to a Request to Send GPIO input) and prevent transmis=
sion until the condition was true.=C2=A0 I=E2=80=99m hoping that would sign=
ificantly decrease the latency (less than 1 ms, hopefully) if I don=E2=80=
=99t have to bother polling the pin.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Right now I=E2=80=99m using:=C2=A0 UHD 4.0, and GNU =
Radio 3.9.5.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks and regards,<u></u><u></u></p>
<p class=3D"MsoNormal">Jeff<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=
=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><=
div><div dir=3D"ltr">Raghav Subbaraman</div></div><div>PhD Student, ECE</di=
v><div>University of California San Diego</div><div><a href=3D"https://rsub=
baraman.github.io" target=3D"_blank">rsubbaraman.github.io</a></div></div><=
/div></div></div>

--0000000000009dad7805ef548a73--

--===============8507069329667846709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8507069329667846709==--
