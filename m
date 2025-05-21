Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F52ABECF7
	for <lists+usrp-users@lfdr.de>; Wed, 21 May 2025 09:18:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 603113842D7
	for <lists+usrp-users@lfdr.de>; Wed, 21 May 2025 03:18:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747811937; bh=KUtFFYZRicjL6sgK7+SJahNdXqIfTbR1O2xWjcYkBDw=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Nla5n9SFlEAEtiFFE+tu13tEaSlBgFhE+ZQi3yCaHuE9fjkC6OMBIoXEBjRkGwMn3
	 HS4ZS4VqQv7jaHcxjmxD28j17tYByb0U7P02h6BP7g6hgXjNSJJ53QUFa4f3R6w+i8
	 iBu+YWFCXJG0b8QAJT74UliEzbAMVjz/OvwgVuYwNVmgVoBIhiu+ca+bnGvTK2trOB
	 HYy8dpBouLBywg571VjVeJcP0JWGBBJd2ev2zaGV+spRzpik9XyxNKSYGpILaRCUCq
	 cSwYo0ZkGFYJUBRhD2/J7ph7oC7LVGEZ1XhaNoZX9jwoF8qodiPjJGXrLYX7LIv3hT
	 CDmCG6In+0Mfw==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id B838138093F
	for <usrp-users@lists.ettus.com>; Wed, 21 May 2025 03:18:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="x9NBXCoC";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ad51ef2424bso973773966b.0
        for <usrp-users@lists.ettus.com>; Wed, 21 May 2025 00:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1747811919; x=1748416719; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UFA6gL/ueT9+nLpYZi9oA+89qy99ZuaFwdLFHuu1/FE=;
        b=x9NBXCoCF7KsgQsX8ahKhuPs+/lrwZXQp7Ivng96oltve/1cBYswIORIlDyYzZs2aH
         /+c5OWlCtMewnYf4sRx97PLO1nhgYJYbSwxP+4gseMkOlHiMkWG9XETWSYqG9mYeXojt
         AP7AmGhkzLbMa3GIvuW+tp4p9/lI12QVxDtluqkrEM4ZNSVLToN8DwMbQ4Z6owZvKDWp
         TixdoOQqlKtO5ywxCkTQyBLA6zFBLRBJlHqc+RFCv5wOpzEq8e5P9a+XPOO1uK0i/6Bl
         Mf50q74hYLXH4fBc0t2X3jbXyrDy3tlW1p0nH5eo4RbVJIxTw0vQLw2/KzR7vwpEcAt6
         gqQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747811919; x=1748416719;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UFA6gL/ueT9+nLpYZi9oA+89qy99ZuaFwdLFHuu1/FE=;
        b=bcARGMgbJkiVpoo+1/OSOptP4enVtBoSAPzJGiPVYlahmZfKcGkHsM8njkYVRLhzJG
         WquMXv0D8was5f3KtdP3HHX8oNB2Y8Tta72ytMHtXrnVsXFAR9zT7S9O8XIq/O5hTCC0
         uC4OkEmbSqcZI9JsQXFbAL7DTMwVScu7hIo8DXWUa+N4GsoEpE8bl+42SBR8bS1mfqqo
         piv54G6U/VcBR4UN4tY4Z6f0z2kXIj9dvlD5TE0GztvpjuBl9gPBdM8pM+9alAgZu7dU
         2wn0VWf+26Ppf5fVrAHNZzAp4ySHp/9bu9PKvZ3JV+pZLvCT6CbtJiHl7esde0B0Q0Rl
         Do4Q==
X-Gm-Message-State: AOJu0YyPcBrb5bjWYQEOlEyGzsJKuxzyQXv+Qofw4EUKV3/cBB0YzqMf
	3MEksyak7oz8T7mwlnE1pDLlmF/SyM7GHqRuZNe68C3q81PWf7iWWUtt11vv1/J0sHOTBBACcPh
	O3G2PhFbpvJA9FFHb49GMyMGR0ggkVTMvSKbluwNPZgVEBNzrT0lEj/o=
X-Gm-Gg: ASbGncsoRFNA0Yj+7A1qKQbXVPlBkgCDK3FAujBnAKmI6l2AzJgbdvJhfjLUR/BY8dH
	Q6eHqomlH7BQXWPmBpLOEry5auqSgHN8L85ksG24koiVOeqForvKR9sV3OAAGEXuWuuY1aaSMwX
	nJGrSp0/bIdLDKMkWKnT+7nka7Go6Hq4PYBBNX0wUGLewqvhZIJbPCnhh0yPlR0F5v
X-Google-Smtp-Source: AGHT+IEWGEf9bD7ArSBPMTtFj1KgQ+MnGARVWrM9w7vM4aja62VhPNMbej6meIo/LXq+9fmDc0yxBIXlspSZng1ZYOU=
X-Received: by 2002:a17:907:6eaa:b0:ad2:238e:4a1b with SMTP id
 a640c23a62f3a-ad52d498e5dmr1906775266b.15.1747811918881; Wed, 21 May 2025
 00:18:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAOYGa72kLAvH9hPsBF6c4e=gG-XvsJUdmTDuqknwkchy3Jo5Tg@mail.gmail.com>
In-Reply-To: <CAOYGa72kLAvH9hPsBF6c4e=gG-XvsJUdmTDuqknwkchy3Jo5Tg@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 21 May 2025 09:18:26 +0200
X-Gm-Features: AX0GCFt2CF9h02emy2bEMiQwMeFF0w9XbVg4WEmnGB9Q1PQUDd2ySIfKoZIC5W8
Message-ID: <CAFOi1A6T0W9XOtDcEoaYWssYpujsuYkJiPou9DXqP9y0OcpkmQ@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: OHTZFW5DT2VFVCS5ZCF2Z6JQMII45UX2
X-Message-ID-Hash: OHTZFW5DT2VFVCS5ZCF2Z6JQMII45UX2
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Dual x440s equal length 1pps/REF cables?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OHTZFW5DT2VFVCS5ZCF2Z6JQMII45UX2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6275111942003764681=="

--===============6275111942003764681==
Content-Type: multipart/alternative; boundary="0000000000008f38510635a02c44"

--0000000000008f38510635a02c44
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It's not ideal, but it might work out fine. You can think of the PPS signal
as a marker that declares which 10 MHz flank is the "first" one per second.
So the timing accuracy does not come from the PPS directly, but from the
combination of PPS and 10 MHz.

Quick back-of-the-envelope: Let's say your velocity factor of your cable is
2/3, and I'll approximate 1ft as 1/3m. Then your additional delay is
approx. (1/3m)/(2/3 * 3 * 10^8 m/s) =3D 1.7 ns (probably better, I think 2/=
3
was lowballing it for good RF cables but the math is easy). Your 10 MHz
flanks are 100 ns apart. So your PPS is shifted relative to your 10 MHz
flank by about 1.5%... I would guess it works.

You could also have meant that the 2 cables going to the first USRP are
1ft, and the 2 cables going to the second USRP are 2ft. In that case, the
second USRP will be delayed by 1.7 ns relative to the first, but as long as
temperature stays constant, the relative delay will be constant. Here, your
signal bandwidth also matters. At 2 Msps sampling rate, such a delay
corresponds to approx. 3 samples. But if you have a low bandwidth, then the
constant delay will look like a (constant) phase offset, which you will
have anyway and need to account for.

--M

On Sat, May 17, 2025 at 1:13=E2=80=AFPM Steve Hamn <stevehamn311@gmail.com>=
 wrote:

> Hello,
>
> I have a pair of x440's I'm trying to phase cohere together. I wanted to
> understand how critical it is to have equal length 1PPS and Ref In cables=
?
> Right now I have a 2 ft RF cable going to one and a 1ft RF cable to
> another. Will that be a problem?
>
> Thanks
>
> Steve
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008f38510635a02c44
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It&#39;s not ideal, but it might work out fine. You c=
an think of the PPS signal as a marker that declares which 10 MHz flank is =
the &quot;first&quot; one per second. So the timing accuracy does not come =
from the PPS directly, but from the combination of PPS and 10 MHz.</div><di=
v><br></div><div>Quick back-of-the-envelope: Let&#39;s say your velocity fa=
ctor of your cable is 2/3, and I&#39;ll approximate 1ft as 1/3m. Then your =
additional delay is approx. (1/3m)/(2/3 * 3 * 10^8 m/s) =3D 1.7 ns (probabl=
y better, I think 2/3 was lowballing it for good RF cables but the math is =
easy). Your 10 MHz flanks are 100 ns apart. So your PPS is shifted relative=
 to your 10 MHz flank by about 1.5%... I would guess it works.</div><div><b=
r></div><div>You could also have meant that the 2 cables going to the first=
 USRP are 1ft, and the 2 cables going to the second USRP are 2ft. In that c=
ase, the second USRP will be delayed by 1.7 ns relative to the first, but a=
s long as temperature stays constant, the relative delay will be constant. =
Here, your signal bandwidth also matters. At 2 Msps sampling rate, such a d=
elay corresponds to approx. 3 samples. But if you have a low bandwidth, the=
n the constant delay will look like a (constant) phase offset, which you wi=
ll have anyway and need to account for.</div><div><br></div><div>--M</div><=
/div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, May 17, 2025 at 1:13=E2=80=AFPM Steve Hamn &lt=
;<a href=3D"mailto:stevehamn311@gmail.com">stevehamn311@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"auto">Hello,<div dir=3D"auto"><br></div><div dir=3D"auto">I have a pair=
 of x440&#39;s I&#39;m trying to phase cohere together. I wanted to underst=
and how critical it is to have equal length 1PPS and Ref In cables? Right n=
ow I have a 2 ft RF cable going to one and a 1ft RF cable to another. Will =
that be a=C2=A0problem?</div><div dir=3D"auto"><br></div><div dir=3D"auto">=
Thanks=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Steve</div>=
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000008f38510635a02c44--

--===============6275111942003764681==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6275111942003764681==--
