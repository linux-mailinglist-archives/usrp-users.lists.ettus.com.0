Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0493F482433
	for <lists+usrp-users@lfdr.de>; Fri, 31 Dec 2021 14:32:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A3D76384F1B
	for <lists+usrp-users@lfdr.de>; Fri, 31 Dec 2021 08:32:51 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lzhjs6u1";
	dkim-atps=neutral
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 2AE85384635
	for <usrp-users@lists.ettus.com>; Fri, 31 Dec 2021 08:31:58 -0500 (EST)
Received: by mail-il1-f172.google.com with SMTP id q6so20968979ilt.6
        for <usrp-users@lists.ettus.com>; Fri, 31 Dec 2021 05:31:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0jdnS9r4nLXoEFXncwVz9obBP/uhDptRDtFFpFMP9zU=;
        b=lzhjs6u1WikFfuWuo692futKjC2jIMS1omdAaKa9HqtaSnxRVpf7mSqZ+fv5JCMUQo
         XrEBKwrshrXZRyHQGPlYrHOkqWnV/HPDKolflBHk27oqcD6Z1d6sJcN0zGYXRmEYEoPm
         QNSZ6g6cgCOE4HnPx6huqqLSXoSmuv4Tp+ta8w0olDbtCYwGzo9lHe6IbYQSy11wb4MT
         Adgx7uC6ckS9gw9GMZvBIMngBi2BqaBfgam9AXDZJbvEsRctarmsmISO1RwCWWaJw/Cx
         bywJx17DIqFt3DTuwGbO3FJzZxQqk7htnfWWq8qfFhMaZKgGuKsPOhuknDGPOKcIxotL
         bDFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0jdnS9r4nLXoEFXncwVz9obBP/uhDptRDtFFpFMP9zU=;
        b=xsAODQE1XHoJjmHjiorTLpWuwSw2ptpvVUSDX+DMweM3SCy3uQGeGKAkE1cdNSBv9s
         eGmPgMHt5zBDzHgKT8bblbjT5rnmTpcmi9THez4iroORYz6gD6FGWqCVSITcBMbsXSmL
         2Fb2FJAVWo0KcW8s/yby2c2aY7LsqJ3zp8whTjkIQsc0Xk15cW20OiNudJ6SflbnMla2
         eU3KWZCt+5XQYN/+UUDrpB07j/Yrlw9WksKX4ssWwONvKqLCYVEMUBMAbUv3TDBy95+Q
         95+2i+x+Z3HU6aNJxQPxYfuxFRNdhREeVTYIARZu7oXpxiMDbADPV8YYrlTlkrO+2gUg
         zkzg==
X-Gm-Message-State: AOAM533IUHBKnaSM4ETd72xOGkhLiWDJnDonQAvR2K3WzH6KTADap/X3
	Yx41XN8Lxn3isYQVAKV2O8E+byRxJIvhu27xxN4=
X-Google-Smtp-Source: ABdhPJx4AeYbMHaww6TJ9jmCoYNnHC3xpP5VPKlodKCjAJRJq8V9qDJ0T0lK24XSydzfMWbdUM52w8FfQmYJl8OnDwQ=
X-Received: by 2002:a05:6e02:1bee:: with SMTP id y14mr16070775ilv.130.1640957518469;
 Fri, 31 Dec 2021 05:31:58 -0800 (PST)
MIME-Version: 1.0
References: <sjEvDNANLukVoCbhzxV7xMygWvUECGpPDNqyyu5Tyc@lists.ettus.com>
In-Reply-To: <sjEvDNANLukVoCbhzxV7xMygWvUECGpPDNqyyu5Tyc@lists.ettus.com>
From: Alex Humberstone <alex.m.humberstone@gmail.com>
Date: Fri, 31 Dec 2021 07:31:22 -0600
Message-ID: <CAE0dfYYh1vyqL9VykdDyF3oOgdcd5XH-r9SrU8kuQU34=fq5LQ@mail.gmail.com>
To: seckinoncu8070@gmail.com
Message-ID-Hash: VI3USVSY4W3UMJNJSUCNHIOF6R6XA5A3
X-Message-ID-Hash: VI3USVSY4W3UMJNJSUCNHIOF6R6XA5A3
X-MailFrom: alex.m.humberstone@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 LO leakage cancelation
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VI3USVSY4W3UMJNJSUCNHIOF6R6XA5A3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5269246870402655847=="

--===============5269246870402655847==
Content-Type: multipart/alternative; boundary="000000000000fade0705d4713102"

--000000000000fade0705d4713102
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Seckin,

You need to fix those U that you see in the console. Those are underruns.
What's your sampling rate? What kind of Ethernet are you using?

Sincerely,
Alex-M-Humberstone
PhD Student
Klipsch School of Electrical Engineering
New Mexico State University (NMSU)
Las Cruces, New Mexico, USA



On Fri, 31 Dec 2021 at 02:29, <seckinoncu8070@gmail.com> wrote:

> I=E2=80=99ll try it Marcus, but I remember that I got this error (attache=
d figure
> 1) when I try to do that.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000fade0705d4713102
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e;font-size:large">Hey=C2=A0Seckin,</div><div class=3D"gmail_default" style=
=3D"font-family:monospace;font-size:large"><br></div><div class=3D"gmail_de=
fault" style=3D"font-family:monospace;font-size:large">You need to fix thos=
e U that you see in the console. Those are underruns. What&#39;s your sampl=
ing rate? What kind of Ethernet are you using?</div><div class=3D"gmail_def=
ault" style=3D"font-family:monospace;font-size:large"><br></div><div><div d=
ir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><di=
v dir=3D"ltr"><font size=3D"4"><span style=3D"font-family:monospace">Sincer=
ely,<br></span></font><div><font size=3D"4"><span style=3D"font-family:mono=
space">Alex-M-Humberstone</span></font></div><div><font size=3D"4"><span st=
yle=3D"font-family:monospace">PhD Student</span></font></div><div><font siz=
e=3D"4"><span style=3D"font-family:monospace">Klipsch School of Electrical =
Engineering<br></span></font></div><div><font size=3D"4"><span style=3D"fon=
t-family:monospace">New Mexico State University (NMSU)<br><span><span>Las C=
ruces, </span></span>New Mexico, USA</span></font></div><div><font size=3D"=
4"><span style=3D"font-family:monospace"><br></span></font></div><div><font=
 size=3D"4"><span style=3D"font-family:monospace"></span></font></div></div=
></div></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Fri, 31 Dec 2021 at 02:29, &lt;<a href=3D"mailto:seckin=
oncu8070@gmail.com">seckinoncu8070@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><p>I=E2=80=99ll try it Marcus, =
but I remember that I got this error (attached figure 1) when I try to do t=
hat. </p><p><br></p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000fade0705d4713102--

--===============5269246870402655847==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5269246870402655847==--
