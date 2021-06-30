Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 089853B8636
	for <lists+usrp-users@lfdr.de>; Wed, 30 Jun 2021 17:25:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 198FA384794
	for <lists+usrp-users@lfdr.de>; Wed, 30 Jun 2021 11:25:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="USUGeQt7";
	dkim-atps=neutral
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 4308C38480D
	for <usrp-users@lists.ettus.com>; Wed, 30 Jun 2021 11:22:51 -0400 (EDT)
Received: by mail-ej1-f53.google.com with SMTP id hc16so4811181ejc.12
        for <usrp-users@lists.ettus.com>; Wed, 30 Jun 2021 08:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0mtOQybu1aM8NdEV9yEJ6pgJBBdHfzAKL9/gWDA3vqM=;
        b=USUGeQt7SUoNHLfdn4KmC3RuY0cpVkhUoPULBjfVrm7AcnexBIDwba0OwbvnKHJo2R
         qbxa+q1soxWPHznvpUptzf1pF2/YATEFWCice+TcU6K/1le3X+JofzApkCD6m13KXy3H
         Hc1BoHrNEAVa3xi9MiVXlcTjI0ieffFYl0WZ7bPXhcLhFqep4lPfqzrLtJ3KghYx5vQ6
         0a5vo7AXRpvyTjgyQ0mYXKZazU1Y7gyGExjl63k1mamp8GBhivCsQNUB+aoovoGFbNbB
         tlq5j13N2JMJNztS+ms2Sep5BWylH1VlRm5AErL4R1QJftiItRRKRIaNQh8PhPRbHbhn
         o+nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0mtOQybu1aM8NdEV9yEJ6pgJBBdHfzAKL9/gWDA3vqM=;
        b=kM3g2rnTDwaDsKMiGVimQOuckzMRMw7hwae61eL41BoV61hNY7o5Xmoe8gDr/X8oz8
         RvBph+R3CqzblDoaAEjvnX4wDO4CApTSCcgfZ4yUQ+WSbkf03C6UT3AzU4B6E43jBmjh
         UkDQ92CdTAO2NNPvcQO2XRDIn9FUPEiyR0xzFn8Diu7MSSdFlg2aoZVL5tiQ090L+WbQ
         WRq3uIMiszEZPaKhrFH0sr7SaVoO3LrifLv5W1PX7uMFLOqfe+fiYPN7jPQX6+VMPxTz
         hdVqk1YZKCfp6u3UxjUd+2m7mlMKp4Huqjc+0SXhtY/URrRcbdbD/8P7HXmnyo9kTIGN
         enww==
X-Gm-Message-State: AOAM531QimhkfwbbBkG4aCHn6rHS/1CuxHIEfC8Jj7qtpYFYXRhqRPoM
	imQ7wCNxm+WxifIkyIAF0sLdGumChTPRPmrTIHlw1s5L
X-Google-Smtp-Source: ABdhPJwWQgXs1hN46ozGNdtsDZ4CtyB1PJxZcYb6SlEz24aswROk2t0X8pKKmpGgT0+aSyXIlg6w154AwHLNtKKzN4w=
X-Received: by 2002:a17:906:3b47:: with SMTP id h7mr33377649ejf.523.1625066570256;
 Wed, 30 Jun 2021 08:22:50 -0700 (PDT)
MIME-Version: 1.0
References: <M13deJML1REIrVBKEwhx76UJMoE8dOuGotSSwmiIrg@lists.ettus.com>
In-Reply-To: <M13deJML1REIrVBKEwhx76UJMoE8dOuGotSSwmiIrg@lists.ettus.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Wed, 30 Jun 2021 11:22:39 -0400
Message-ID: <CAL7q81uZBTVbmzN13uV3T83eYnO1BcN9QNY_0ystN8Boov2TAg@mail.gmail.com>
To: rblack@swri.org
Message-ID-Hash: GP2RCNQLXP6JPBYUIE7TB54XBRCTTIPN
X-Message-ID-Hash: GP2RCNQLXP6JPBYUIE7TB54XBRCTTIPN
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: available RFNoc blocks for UHD 4.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GP2RCNQLXP6JPBYUIE7TB54XBRCTTIPN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8449871308013074154=="

--===============8449871308013074154==
Content-Type: multipart/alternative; boundary="000000000000a8271205c5fd4be0"

--000000000000a8271205c5fd4be0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

While all the blocks in the KB article are available for UHD apps, not all
of them have GNU Radio / gr-ettus support. The eventual goal is to port
most of the missing blocks, although I don't have a timeline on when that
will happen.

Jonathon

On Wed, Jun 30, 2021, 10:26 <rblack@swri.org> wrote:

> My understanding is that the currently available in-tree blocks does not
> match the list in the reference that you point to. FOr instance, the
> =E2=80=9Creplay=E2=80=9D block shown in that list is not available. I=E2=
=80=99m not sure that
> siggen is available either.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a8271205c5fd4be0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi,</div><div dir=3D"auto"><br></div><div dir=3D"aut=
o">While all the blocks in the KB article are available for UHD apps, not a=
ll of them have GNU Radio / gr-ettus support. The eventual goal is to port =
most of the missing blocks, although I don&#39;t have a timeline on when th=
at will happen.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Jonathon=
<br><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"g=
mail_attr">On Wed, Jun 30, 2021, 10:26  &lt;<a href=3D"mailto:rblack@swri.o=
rg">rblack@swri.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<p>My understanding is that the currently available in-tree blocks does not=
 match the list in the reference that you point to.  FOr instance,  the =E2=
=80=9Creplay=E2=80=9D block shown in that list is not available. I=E2=80=99=
m not sure that siggen is available either.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div></div></div>

--000000000000a8271205c5fd4be0--

--===============8449871308013074154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8449871308013074154==--
