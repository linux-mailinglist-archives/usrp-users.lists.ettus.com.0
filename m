Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC483C61D1
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 19:24:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 312743843CA
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 13:24:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="rahpDEua";
	dkim-atps=neutral
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 59C3738180A
	for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 13:23:19 -0400 (EDT)
Received: by mail-ej1-f49.google.com with SMTP id dt7so6256674ejc.12
        for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 10:23:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xUHXMYymyEkd+oEzDAAh9RC8fEk9kglrAa2PrrO2xLs=;
        b=rahpDEuaXLWFmfZZef0DRjD9GouUxemdokS/oMPbaBXr9R3oi4g7Szy2ssBHuAScPL
         AmiDyM6sxkhjdculmnE8NWB+jnyzTbfDFi16sALSiSb1HsM6RJe9KGoZbPGM3ZR94O3h
         W0OAQwgwiym6Is6iYdWwsWMasktQMU6HQ3hE3BQD3/Kl85BzDRmR1rfRbVcz99OjIF1O
         plfnhl83dsPltDRGKzPbtnEcXMzYWEd87E59AvzXh0uAocV6t/ZHv5gz0g2HzSGLw70/
         vcLLpejFzmJGEy6HXhkQ/ra68OTMa+HODr5znXgOSpZ9tJgYR56NNMcappCMc7hQar/1
         v/fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xUHXMYymyEkd+oEzDAAh9RC8fEk9kglrAa2PrrO2xLs=;
        b=oc5aG4U7Xbung2pAP1SGXjL82zkZesUNlrSsVdqZDEHxjS+juoIVuKJyPTTcncIDRs
         JLu1WEp2emxOUJd4gW51wnL4oO6zGcxnAbK0UfRpfKEMy0oBr7CY7AAgR7mTYstvgL+g
         SzQXU9Mx+xIIlULK+ZOAv+XDbHZmkJ9NDylNZ9mNJdGtIRsrKZrWzz2KIwslRVhXd6fL
         fM7hy/71W4PNxXCyD2l85gX4bal/x5GGHqpvpGB1iapGBOpRRcI1w74DlqjF9nbXRvPm
         VdXkUe41s+ma7RiXcy4op6XgzB6FCbiYQYUmIXl1vaE7KmnnoiJYnON16CdbP2uOJLzJ
         tCNg==
X-Gm-Message-State: AOAM531KNd0j2WffLj4SHEfzxqG+NJps3+nUnrkFX4Lf4eDd8rsm2VxS
	7xjedwEEaSqNQF/FpoLRKmuTRGgMUFGIQP3f9BahAAgc
X-Google-Smtp-Source: ABdhPJyyRWNst5UoBhVVhOhYEQPCD4ASrvIK3Pv6poP8/WxCdtno8+oFvM2DLhtuxtovtSFN0C2xxv4kN0j94fnyzqc=
X-Received: by 2002:a17:907:3c81:: with SMTP id gl1mr202148ejc.136.1626110598097;
 Mon, 12 Jul 2021 10:23:18 -0700 (PDT)
MIME-Version: 1.0
References: <nSBZtuJ5Ip9rzPubsi4Win5P93BS1xUBjyReK0KJc@lists.ettus.com>
In-Reply-To: <nSBZtuJ5Ip9rzPubsi4Win5P93BS1xUBjyReK0KJc@lists.ettus.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Mon, 12 Jul 2021 13:23:07 -0400
Message-ID: <CAGNhwTPJAgU5fbYxP7uzCcvbYS4RUwwUUt=mnPPRXGY+mJhRHQ@mail.gmail.com>
To: rblack@swri.org
Message-ID-Hash: 7HZCMKCBJN7F7SW6EFGRUK5RN2CAFUPL
X-Message-ID-Hash: 7HZCMKCBJN7F7SW6EFGRUK5RN2CAFUPL
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP list <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GnuRadio Instrumentation Block "Frequency Sink"
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7HZCMKCBJN7F7SW6EFGRUK5RN2CAFUPL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8579933899077217016=="

--===============8579933899077217016==
Content-Type: multipart/alternative; boundary="00000000000090c2d005c6f0606d"

--00000000000090c2d005c6f0606d
Content-Type: text/plain; charset="UTF-8"

Your query is best asked on the GR discussion list / GR chat rooms:
https://lists.gnu.org/mailman/listinfo/discuss-gnuradio . - MLD


On Sun, Jul 11, 2021 at 5:39 PM <rblack@swri.org> wrote:

> I have a couple of questions about the GnuRadio QT GUI Frequency Sink
> Block , which allows you to specify FFT size and update rate.
>
>    -
>
>    My understanding it that , when it is time go compute another spectrum
>    according to the update rate setting, the block will grab the most recent N
>    samples to do so; so that any IQ data coming in between updates is dropped
>    on the floor. Right?
>    -
>
>    The blocks output is a graphical plot. If anything in the system
>    causes the graphics to really slow down, will it also slow down the
>    spectrum update rate to less than the configured setting?
>
> The above are Gnuradio questions, not usrp questions, so if this is the
> wrong place for them I apologize.
>
>
> rb
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000090c2d005c6f0606d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Your query is best asked on the GR discussion list / GR ch=
at rooms:=C2=A0<a href=3D"https://lists.gnu.org/mailman/listinfo/discuss-gn=
uradio">https://lists.gnu.org/mailman/listinfo/discuss-gnuradio</a> . - MLD=
<br><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Sun, Jul 11, 2021 at 5:39 PM &lt;<a href=3D"mailto:rblack@swri.o=
rg">rblack@swri.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><p>I have a couple of questions about the GnuRadio QT GU=
I Frequency Sink Block , which allows you to specify FFT size and update ra=
te.</p><ul><li><p> My understanding it that , when it is time go compute an=
other spectrum according to the update rate setting,  the block will  grab =
the most recent N samples to do so; so that any IQ data coming in between u=
pdates is dropped on the floor.  Right?</p></li><li><p>The blocks output is=
 a graphical plot.  If anything in the system causes the graphics to really=
 slow down,  will it also slow down the spectrum update rate to less than t=
he configured setting?</p></li></ul><p>The above are Gnuradio questions, no=
t usrp questions,  so if this is the wrong place for them I apologize.</p><=
p><br></p><p>rb</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000090c2d005c6f0606d--

--===============8579933899077217016==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8579933899077217016==--
