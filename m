Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C53851DE4
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 20:29:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4D93C384C3F
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 14:29:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707766182; bh=8L9ziqQzpRV2gd4iAXshfiyrL9sqEbt7b3krp083kps=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=WDrzu8ydNPH0NE85L/uZ8QnaS8vAqthI3scdV5lj+JGMmfLMusTqzzVM5ok+iBbri
	 E1tD8Pu7SwmLy24aOxPTwfULe9tYNyYtQ5pw+K9oy7U9vjBkH3oCwte+MTPRp+s8Hy
	 iH/oCHpPhHWuG83FO9Hl4/kU6Y3SvN82Bc2H+BocMzYt60tbAwEp7J/NIuBEHa897u
	 C1Ou4NIgkgbyrAjPc6JLtGqihAPvmH5R/mhwOxq6p9Qf/e0UNTLCtdl3EeXIqWInjV
	 lFJ2+lCqLotvimaEsP0uO+B+EvTdBMelVeFK+Ger9fqLsb6KSh/ged7UrehHyUcZxZ
	 9kuMcLx+dLrTw==
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 554D938099E
	for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 14:29:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VwHeA+d+";
	dkim-atps=neutral
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-55f50cf2021so4678024a12.1
        for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 11:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707766142; x=1708370942; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=unrQ5C2vWNvS0w1rTu/2VvoaSPL9tTYNgeEZ5fdU0Tw=;
        b=VwHeA+d++8UVlmrq4G4onnqy2g8i4+ajybcD3hN07nU3JeQRwK/ToLm0vHmPacifg7
         6TlbGXJu5LeQAkOKCU8dhzNHfkN9kIHq1XslbOodBxyG9h6UOtuVI7hTZDuf4Y8kHOpu
         4zYGmtOkvyj7No0o+D+6meqQZYjnhLbp9kKIFWn3iziP67gX4wIzdJ+gK2KNtsoW+Y0Q
         k7kzoOs7Qnytan9VoQ+OZTHXNec1QSiW75K7gzpeVjRywFTjXVee/Hn8xSsYl/yoIQwh
         lVbAIqLN/hjCCx2Z/eCby0nOHKxgg5gTgqUUXw2OCZSeZpGEjjsGK83IP3wQUJ0co2wy
         x2jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707766142; x=1708370942;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=unrQ5C2vWNvS0w1rTu/2VvoaSPL9tTYNgeEZ5fdU0Tw=;
        b=g//AxkZrfXKnnKtX630+jw9Vz+91QUo+nUOwAVVtWrBXrzKplNUQuUIKTa7u3yMIz5
         EaBGCEgu0B4XL987yUAAlAZzPaSsjIRlwvaFotWOygbzDZ3+y9Fkr6QrXAvsMo7AVOM7
         io4MPUv+0n9DHW3zzBYGbfQ0opOpBzNu5lflJbyD2uXufb0kAR0PZbKciD+kt0rIBciA
         SQDKd6IBab99ZFwN0SKk1Oh3jEcyLPqLzkCdFWEYUliBd5Mk9XB+et4lGhbKTLI4P9KW
         +2GGt5CqI1Jz0YgbI+p+QTC1wQlry5tQD8gLJorUDVuj5fs1GCoiwDOyXvASjQFuaHVc
         Q14g==
X-Forwarded-Encrypted: i=1; AJvYcCXlEx+G1wSo7X+u9d6QeXTNf8S7R60fP4T7wFeEvTY+8BwKzABbo/Jr88ceOOW0AKJre5IDvVdk5GnAXwh3yD2BhaYJnWoGbMI+lA==
X-Gm-Message-State: AOJu0Yyom0IlQcpvm1Q3DqtENf7Cm1+XXL1E7PsvMCQfAe4mi5NKhImP
	2dHfrHR91bH7xWsLaW4wizMSIzCIsr5CrIO29HqIVinUocXHqtRsxx0CDpwWiEKOYkG2kBnM4N5
	G2FjWUJHbeshoMLxGpsDpxqdPN70S9DaZ
X-Google-Smtp-Source: AGHT+IHnheJSnIVBTN2M2ldfa6rZsM1GY8sO3df41jGx4Ma6ansJ3RpJqWYFAd6z8iUy/1XKCgZQz65gzrkAQu4Avaw=
X-Received: by 2002:aa7:c614:0:b0:560:81c3:cadf with SMTP id
 h20-20020aa7c614000000b0056081c3cadfmr5120362edq.38.1707766141964; Mon, 12
 Feb 2024 11:29:01 -0800 (PST)
MIME-Version: 1.0
References: <ydTJtYzwSbHTPd2X7O9RMzkCGwqAlfBUIAKOjVf6RQ@lists.ettus.com>
 <CAKHaR3k90Bn3oXPCckYiNqToGKUmCrfW6GZPNrM+7f0JOx7SoQ@mail.gmail.com> <CAEXYVK7XetC__b5vjnoqHAsVqVU1XH-wX2LWEW4mQTJemVbniA@mail.gmail.com>
In-Reply-To: <CAEXYVK7XetC__b5vjnoqHAsVqVU1XH-wX2LWEW4mQTJemVbniA@mail.gmail.com>
From: Chris <gaytanc4@gmail.com>
Date: Mon, 12 Feb 2024 11:28:52 -0800
Message-ID: <CAEMZVF2+ZE0wDLY1A=vCi6RUkPb0R-dmDWsEc3sr20qmhXm7HQ@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: VKVXXM4466EAY4K2V6S5WRVLZKND2JPA
X-Message-ID-Hash: VKVXXM4466EAY4K2V6S5WRVLZKND2JPA
X-MailFrom: gaytanc4@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Dario Pennisi <dario@iptronix.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding existing RFNOC blocks in GNU Radio GUI
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VKVXXM4466EAY4K2V6S5WRVLZKND2JPA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6755338784397937220=="

--===============6755338784397937220==
Content-Type: multipart/alternative; boundary="0000000000004055810611344a97"

--0000000000004055810611344a97
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you all very much. I am updating my work environment now!

On Mon, Feb 12, 2024, 11:21=E2=80=AFAM Brian Padalino <bpadalino@gmail.com>=
 wrote:

> On Mon, Feb 12, 2024 at 2:15=E2=80=AFPM Dario Pennisi <dario@iptronix.com=
> wrote:
>
>> You have to install gr-ettus which contains what's needed for compiling
>> OOT blocks and also installs rfnock blocks
>>
>
> My recommendation is to not start here and to start with newer software.
> Use the latest UHD and the latest GNU radio.
>
> You're starting at a dead-end path if you continue with the versions you
> currently have and require gr-ettus.
>
> Brian
>

--0000000000004055810611344a97
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thank you all very much. I am updating my work environmen=
t now!=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Mon, Feb 12, 2024, 11:21=E2=80=AFAM Brian Padalino &lt;<a hr=
ef=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Mon,=
 Feb 12, 2024 at 2:15=E2=80=AFPM Dario Pennisi &lt;<a href=3D"mailto:dario@=
iptronix.com" target=3D"_blank" rel=3D"noreferrer">dario@iptronix.com</a>&g=
t; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"auto"><div>You have to install gr-ettus wh=
ich contains what&#39;s needed for compiling OOT blocks and also installs r=
fnock blocks=C2=A0</div></div></blockquote><div><br></div><div>My recommend=
ation is to not start here and to start with newer software.=C2=A0 Use the =
latest UHD and the latest GNU radio.</div><div><br></div><div>You&#39;re st=
arting at a dead-end path if you continue with the versions you currently h=
ave and require gr-ettus.</div><div><br></div><div>Brian</div></div></div>
</blockquote></div>

--0000000000004055810611344a97--

--===============6755338784397937220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6755338784397937220==--
