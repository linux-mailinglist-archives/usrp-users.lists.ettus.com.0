Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D802936453D
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 15:50:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 801633841D4
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 09:50:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=student-ltu-se.20150623.gappssmtp.com header.i=@student-ltu-se.20150623.gappssmtp.com header.b="fluJZAaz";
	dkim-atps=neutral
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 46B53383DC6
	for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 09:49:45 -0400 (EDT)
Received: by mail-pg1-f174.google.com with SMTP id q10so24292258pgj.2
        for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 06:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=student-ltu-se.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5kZfBaxvTiyivIdERchQ0C2wlbg96HlSTnPHjgThYbE=;
        b=fluJZAaz64xja7MDQoTQ5AoBoaPn8yFdN7vGIc79mhUC5k+Fy2RrJBYLzoGtHKM20a
         uJpKt8nVFvCQtCYt3ZVH5ZW/PFWHhXGTy5b1y21ii2YgoBmyHh/9bcZ8zrTHe2vcvqFN
         AUw1OouqZDteRqWKUuAXUz+IuF0uHR1ry/x94lx0qeIaNyWOSIKnr99ev0dUCm39ofCB
         Ilz71GSJd8p0SwWQrANwHtF1Gig5KfV1bAM/3F/m7X+yBaLkFb2Vp15YQFQGNyH37f1W
         ZOlrTTROXHgVwaZ33VKEyUrIZbw1ZtPySG7Hbe6AIpDa3EpcXmLHt+fwz0JrQfhjCvZP
         UK/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5kZfBaxvTiyivIdERchQ0C2wlbg96HlSTnPHjgThYbE=;
        b=Gyazu7vFNkWQjJT9iuadd6jnMhdIEbdPaafnqbDpQPGa7wzirmzkIne/1o9HzPmL9A
         CF9Z9OMtVMzu0gtAgipUjsXrkafMmluxMTDbFDE5IX855xEKHmbeApZ+8f/YzXZ/kyx+
         s9erz1zouGyEqJIdC8atitWGRYLJFVQX5PjcGbLXdzmMAg4wdHi8x4zPa/pFYjAcTVb1
         qd6mrnd/dLsoRXpZzINfxrsIZwacxG51/+KjOO0L3w0qarvQ8WR8kGI5H7n7zoBkxwEe
         J0ybN3N7oXkX4B6TpJigDsLiOSpkWW57nPlat0Hbfa/xRXmauTluOVV6lpMWw9lsbiJr
         uVrA==
X-Gm-Message-State: AOAM530FSuh7OY9uE7iXNz3I94elJ2DqmmGbWCL5oNurmw/+mgu2kfVa
	wvsxHNMqUPHmsRlnu61IuEpaGuRAO2+lDpCNAL8BpA==
X-Google-Smtp-Source: ABdhPJwp7XL1WbJHCX9UN6ZuIcha4YEaod1ZBC6EIN9qrhlFGtFpagQoyq9SLCtiphc3Xn218zq4rFubzL79oWyLj5E=
X-Received: by 2002:a62:86c5:0:b029:25f:4e63:223b with SMTP id
 x188-20020a6286c50000b029025f4e63223bmr5876886pfd.19.1618840184145; Mon, 19
 Apr 2021 06:49:44 -0700 (PDT)
MIME-Version: 1.0
References: <CADjF3PwZ4DQ5aQG7KsKV3=ZMG4zB_2GORZgKb0mBBgV_kwpXqQ@mail.gmail.com>
 <FE685529-0728-4EC7-B265-2221EF88808B@gmail.com>
In-Reply-To: <FE685529-0728-4EC7-B265-2221EF88808B@gmail.com>
Date: Mon, 19 Apr 2021 15:49:33 +0200
Message-ID: <CADjF3Py=7anwN+VG+ykyiwGosad45ypJdGSzYbcKVtDUWFV8CQ@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: K7WFNATV6MK3RJTHQFOVLJB6VK42HRI7
X-Message-ID-Hash: K7WFNATV6MK3RJTHQFOVLJB6VK42HRI7
X-MailFrom: marelf-5@student.ltu.se
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reflected power on USRP B200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K7WFNATV6MK3RJTHQFOVLJB6VK42HRI7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Martin Elfvelin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Elfvelin <marelf-5@student.ltu.se>
Content-Type: multipart/mixed; boundary="===============3561341130889409127=="

--===============3561341130889409127==
Content-Type: multipart/alternative; boundary="0000000000001fdde105c0539a71"

--0000000000001fdde105c0539a71
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for your input. Do you suggest adding a circulator to the system
or rather replacing the switch with a circulator?

Best regards,
Martin

On Mon, Apr 19, 2021 at 3:43 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> A circulator can give you an additional 20dB isolation.
>
> Putting 5d!m into the RX2 port will likely destroy the RX amplifier in th=
e
> AD9361.
>
> Sent from my iPhone
>
> > On Apr 19, 2021, at 9:12 AM, Martin Elfvelin via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >
> > =EF=BB=BF
> > Hello all,
> >
> > I am planning on using a USRP B200 in a half-duplex communication syste=
m
> to communicate with a CubeSat. The TX/RX port will be used for transmitti=
ng
> and the RX2 port for receiving. The transmitting port will be connected t=
o
> a power amplifier with a 60W output, this will in turn connect to an RF
> switch which will switch between the TX/RX (transmitting) and RX2
> (receiving). The RF switch has an isolation of ~40-43 dB which means from
> the 47.78 dBm transmitted we will have roughly 5-8 dBm reflected to RX2.
> Since the SDR is only rated to receive maximum 0 dBm I'm wondering if
> someone has any ideas on how to handle this. I'm unsure if this power wil=
l
> simply fry the board and I should implement a power limiter or if there a=
re
> other workarounds.
> >
> > Appreciate any help you can provide.
> > Best regards,
> > Martin Elfvelin
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001fdde105c0539a71
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you for your input. Do you suggest adding a cir=
culator to the system or rather replacing the switch with a circulator?</di=
v><div><br></div><div>Best regards,</div><div>Martin<br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 1=
9, 2021 at 3:43 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail=
.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">A circulator can give you an additional 20dB i=
solation. <br>
<br>
Putting 5d!m into the RX2 port will likely destroy the RX amplifier in the =
AD9361. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Apr 19, 2021, at 9:12 AM, Martin Elfvelin via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.=
ettus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hello all,<br>
&gt; <br>
&gt; I am planning on using a USRP B200 in a half-duplex communication syst=
em to communicate with a CubeSat. The TX/RX port will be used for transmitt=
ing and the RX2 port for receiving. The transmitting port will be connected=
 to a power amplifier with a 60W output, this will in turn connect to an RF=
 switch which will switch between the TX/RX (transmitting) and RX2 (receivi=
ng). The RF switch has an isolation of ~40-43 dB which means from the 47.78=
 dBm transmitted we will have roughly 5-8 dBm reflected to RX2. Since the S=
DR is only rated to receive maximum 0 dBm I&#39;m wondering if someone has =
any ideas on how to handle this. I&#39;m unsure if this power will simply f=
ry the board and I should implement a power limiter or if there are other w=
orkarounds.<br>
&gt; <br>
&gt; Appreciate any help you can provide.<br>
&gt; Best regards,<br>
&gt; Martin Elfvelin<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001fdde105c0539a71--

--===============3561341130889409127==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3561341130889409127==--
