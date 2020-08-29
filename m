Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F108A256542
	for <lists+usrp-users@lfdr.de>; Sat, 29 Aug 2020 08:50:36 +0200 (CEST)
Received: from [::1] (port=53276 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kBuh6-0006Pc-7s; Sat, 29 Aug 2020 02:50:32 -0400
Received: from mail-lf1-f45.google.com ([209.85.167.45]:45932)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <coxe@close-haul.com>) id 1kBuh2-0006JU-NQ
 for usrp-users@lists.ettus.com; Sat, 29 Aug 2020 02:50:28 -0400
Received: by mail-lf1-f45.google.com with SMTP id z17so813263lfi.12
 for <usrp-users@lists.ettus.com>; Fri, 28 Aug 2020 23:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mJltcNderhGSGz42mgrujlt/XukvTbspBf/Yo3g6hsQ=;
 b=yfm5Gb6lFL06fNYVnycX0t2As1mst9VoZF6FeF+Nu/Z/ntOQFXCrdIsOBIRCprJx7Y
 nnjs3mJwrMecPfmNjO1KL7DJoRuDykcwQBEtxNSnS4OJOMtJWgSNNNWqCnrtR/BA8Omj
 GM5szTcQjyCxd+qUaSNz+9BAf4kJZBeuZIJKiIp3vrwFylLlU9YcH6gnAUQu/YsZoy+b
 QFWOQUaD960aUMnMlTOicJ1Hv9Hh3VOYlxnZFcp4cm1zd3qTsAMourvf4jfi7I6V2p/L
 CPAu0XOgewymi9dJSNR4pKGFaIVZY36u6/t4KRd/9Lefsi8VR1HhQOzJei4ikyR97b3R
 saAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mJltcNderhGSGz42mgrujlt/XukvTbspBf/Yo3g6hsQ=;
 b=FT3ySTGsPOC4hpEnGRa1AnvwGK8CcFANcoi8JK7uWgqRMykr3Nx0/Ae6ybqEvbh4Vb
 U336QNzCZGAbWHxsfgtrfNu9S6tizxbh7ImI3pXXSOfjfxlZeksiVt3BLxsJ9z96FMQH
 a7Bi0yreyynArpI2KemiIFgUQuOt4mY3QURFIYSWCxTgBpdTTQEl7aD8f3SDlOI3xfrI
 Ke4zxnc2hFzUYVUBWlo8/P0NIWtAvZgFSOJmASIfCcE9/ukNb+ZYDsd8e8HPNtldaofT
 u7w/DcDLIvi2iwDbj1fbU98K4+UOvpZY9tn7hnfisCgqn9HzUtVDJ0LVaXmF6T5QOssF
 R7kw==
X-Gm-Message-State: AOAM533asYrfTzjEhVqHvQAmWVxK+H1U7lJyWKs+ssFTrU2HlJ/5qoSj
 cYdgvZihW1FeavWokrWqmk4SqDePGRcPmuTv1BOIIA==
X-Google-Smtp-Source: ABdhPJytDREf2FMH9D+K7WJrL09+3+dGFdVxIX/HS77L9I28PWQ7tkoSycdZ0I3hh0LaIZ1G0fuZqWtbcO5zaL1oMaE=
X-Received: by 2002:ac2:5150:: with SMTP id q16mr992961lfd.73.1598683787354;
 Fri, 28 Aug 2020 23:49:47 -0700 (PDT)
MIME-Version: 1.0
References: <5F49B732.6040903@gmail.com>
In-Reply-To: <5F49B732.6040903@gmail.com>
Date: Fri, 28 Aug 2020 23:49:36 -0700
Message-ID: <CAKJyDk+0FLhQ6SFse1oOqCsdLXE-PjF90P-ZTf=hketicbdhdw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] B2xx/AD936x I/Q corrections
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Content-Type: multipart/mixed; boundary="===============8581922203570923985=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============8581922203570923985==
Content-Type: multipart/alternative; boundary="0000000000004100a805adfe935c"

--0000000000004100a805adfe935c
Content-Type: text/plain; charset="UTF-8"

The AD9361 calibrations are described in great detail in the first 15 pages
or so of the AD9361 Reference Manual (ADI UG-570).   The TX QEC calibration
in particular takes a long time-- something like 100K RF clock cycles. You
can disable the various calibrations by mucking around with the register
map.


On Fri, Aug 28, 2020 at 7:03 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Does anyone know what time-scale the I/Q correct loop operates at in the
> AD9361?
>
> I'm using a B210 with my pulsar software and it just occurred to me that
> the failure of it to produce anything useful might be due to
>    the I/Q corrections loop, which is fine for many types of telecom
> signals, but may well impress additional "noise" onto a pulsar signal,
> rendering
>    synchronous detection useless.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000004100a805adfe935c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The AD9361 calibrations are described in great detail in t=
he first 15 pages or so of the AD9361 Reference Manual (ADI UG-570).=C2=A0 =
=C2=A0The TX QEC calibration in particular takes a long time-- something li=
ke 100K RF clock cycles. You can disable the various calibrations by muckin=
g around with the register map.=C2=A0=C2=A0<div><br></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 28, 2=
020 at 7:03 PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">Does anyone know what time-s=
cale the I/Q correct loop operates at in the <br>
AD9361?<br>
<br>
I&#39;m using a B210 with my pulsar software and it just occurred to me tha=
t <br>
the failure of it to produce anything useful might be due to<br>
=C2=A0 =C2=A0the I/Q corrections loop, which is fine for many types of tele=
com <br>
signals, but may well impress additional &quot;noise&quot; onto a pulsar si=
gnal, <br>
rendering<br>
=C2=A0 =C2=A0synchronous detection useless.<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000004100a805adfe935c--


--===============8581922203570923985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8581922203570923985==--

