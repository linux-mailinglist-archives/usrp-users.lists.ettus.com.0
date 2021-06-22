Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 495B53B0602
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 15:42:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1DBFF383C0C
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 09:42:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="V5HREabe";
	dkim-atps=neutral
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id D14D4383BF0
	for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 09:41:37 -0400 (EDT)
Received: by mail-ej1-f52.google.com with SMTP id he7so34572477ejc.13
        for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 06:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pRJzTuvwQhykYzeMQorFL5XZw6c1QxVDlqPALSPEm0k=;
        b=V5HREabeRwb3SqK3K/h29xHw7P58UTbxBY3s64ZEhFk9NBvbXbZr9aI9pkm/kgyVcU
         hjs4SfP45zuaxhr37tIXFlgVpjgRIRx7BaGLvvfPWlWo2N1WaM3QQRvKQXUnC+3Um4Kg
         ZtzWAaKmOEjNthxNwxKa+/pS+hfqPM0h08Os3ueaAPno49XeGet2tQssD5Eyn9/Ob7V3
         jmrv+41Rk9H6tkPId5slwCpr3tjJGSwQIl4vUrrZ3Kj+eqTErueXaIh6hqmlHkwCjZQi
         gOFPKbslvY1YhEgTE3P9FWNTnXGhW2qF2CBoDaXLZan6aC7PBs57wVb6Jj1HR0XWGggO
         bSpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pRJzTuvwQhykYzeMQorFL5XZw6c1QxVDlqPALSPEm0k=;
        b=OcwIXTv2NSw2+XF6fYKAfvWI+Wr+dSVKJcgC9Uu9fjgb8wqHuxmjYBbvdMrewj+WkV
         PC9ZsCn+B3OVwGbApGuCONwQ6Yn9wqnMK5anMMtydlkh5jzuu3ksNFIkyLwRfboJfcdb
         MHh/McGmOYuvoDb4g/TNE3ANsQfcBKNiQL8trWFkc8K51v8vitTM9EL5f+MBxNRv4a0X
         YAk/edWNYDE157jzKAWODmYisqoyfAvi0c5U+J4EWZybh7TRf04Ng1f5UI5SA7HJGv7t
         zcs4E1KPLcMTiUHIdF7+CtFeky4X3gPdD8AtpLcOHaSwCiPSuIVkj+ticHVrYXl797fr
         W2oA==
X-Gm-Message-State: AOAM533cP72cx2tcLMZXVO/0tEVavxvNBfG5XRdbwiT2Jma5pshYfKEx
	5bL/oqDKBF0ryB8f/Tgn98qW9W2jfwqFa8t/E8VNQzDy
X-Google-Smtp-Source: ABdhPJxGwSLdqDky+7n/QD92520YJ2o7XsJBRaWnk5NZkbqoo72l+FVFIqjvAZlXdTiiRPr8hv42VumyrGnjUAUJ3BQ=
X-Received: by 2002:a17:907:9db:: with SMTP id bx27mr4158269ejc.136.1624369296739;
 Tue, 22 Jun 2021 06:41:36 -0700 (PDT)
MIME-Version: 1.0
References: <bb6acb72-70e9-28b1-326a-ad63945c8e03@gmail.com>
In-Reply-To: <bb6acb72-70e9-28b1-326a-ad63945c8e03@gmail.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Tue, 22 Jun 2021 09:41:24 -0400
Message-ID: <CAGNhwTNf4F9gEEgJX_V7v0RWnndgRP7gr3_uF-R82j6sbkS93Q@mail.gmail.com>
To: Vladica Sark <vladicasark@gmail.com>
Message-ID-Hash: VTUAY7NUTXUXUUVFD67WQ26WXYIEK4II
X-Message-ID-Hash: VTUAY7NUTXUXUUVFD67WQ26WXYIEK4II
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Optical SFP+ adapters for N321
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VTUAY7NUTXUXUUVFD67WQ26WXYIEK4II/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0006258295000008904=="

--===============0006258295000008904==
Content-Type: multipart/alternative; boundary="000000000000eaa7a305c55af26c"

--000000000000eaa7a305c55af26c
Content-Type: text/plain; charset="UTF-8"

Hi Vladica - I've tested a variety of fiber adapters and cables with no
issues (e.g., ZyXEL, FS, Axcen). The primary keys are to make sure the
various related parameters match up between the adapters and cables and
devices. For example: If the adapter is 1490/1310, then you want to make
sure the cable is for the same wavelengths. Same for the fiber polish and
other parameters (single / dual fiber ; . Some are easier than others, none
of this is too difficult luckily!

For short distances, a DAC cable will work for all of the N320/N321 SFP
interfaces.

At the moment, WR support is being fixed for UHD 3.14.0.0 to current. If
you -require- WR support -right now- you can use UHD 3.13.1.0 while we're
working out how to fix WR for newer UHD. We expect the fix to be available
to customers sometime in mid/late-July (2021); once the fix is determined
and verified we will commit it to the various branches of the UHD
repository, and it will be available in UHD -after- the forthcoming
4.1 release. It will be available in the public UHD repository for folks to
use to patch UHD between releases.

I hope this is useful! - MLD


On Tue, Jun 22, 2021 at 6:19 AM Vladica Sark <vladicasark@gmail.com> wrote:

> Dear all,
>
> I would like to use N321 with WRS 3/18 which uses optical cables. I
> would like to use also for the 10 Gbit SFP1 optical SFP+ transceiver.
> Do you have some recommended optical SFP+ adapters, duplex and,
> preferably, simplex?
> The idea is to use a duplex monomode fiber, one fiber for the 10 Gbit
> data and one fiber for WRS synchronization.
> They would be connected to 10 Gbit switch or QNAP Thunderbolt to SFP+
> adapter, so they do not have to be Intel.
>
>
> Best regards,
>
> Vladica
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000eaa7a305c55af26c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smart=
mail=3D"gmail_signature"><div dir=3D"ltr"><div>Hi=C2=A0Vladica - I&#39;ve t=
ested a variety of fiber adapters and cables with no issues (e.g., ZyXEL, F=
S, Axcen). The primary keys are to make sure the various related parameters=
 match up between the adapters and cables and devices. For example: If the =
adapter is 1490/1310, then you want to make sure the cable is for the same =
wavelengths. Same for the fiber polish and other parameters=C2=A0(single / =
dual fiber ; . Some are easier than others, none of this is too difficult l=
uckily!</div><div><br></div><div>For short distances, a DAC cable will work=
 for all of the N320/N321 SFP interfaces.</div><div><br></div><div>At the m=
oment, WR support is being fixed for UHD 3.14.0.0 to current. If you -requi=
re- WR support -right now- you can use UHD 3.13.1.0 while we&#39;re working=
 out how to fix WR for newer UHD. We expect the fix to be available to cust=
omers sometime in mid/late-July (2021); once the fix is determined and veri=
fied we will commit it to the various branches of the UHD repository, and i=
t will be available in UHD  -after- the forthcoming 4.1=C2=A0release. It wi=
ll be available in the public UHD repository for folks to use to patch UHD =
between releases.<br></div><div><br></div><div>I hope this is useful! - MLD=
</div></div></div></div><br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Jun 22, 2021 at 6:19 AM Vladica Sark =
&lt;<a href=3D"mailto:vladicasark@gmail.com">vladicasark@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Dear all,=
<br>
<br>
I would like to use N321 with WRS 3/18 which uses optical cables. I <br>
would like to use also for the 10 Gbit SFP1 optical SFP+ transceiver.<br>
Do you have some recommended optical SFP+ adapters, duplex and, <br>
preferably, simplex?<br>
The idea is to use a duplex monomode fiber, one fiber for the 10 Gbit <br>
data and one fiber for WRS synchronization.<br>
They would be connected to 10 Gbit switch or QNAP Thunderbolt to SFP+ <br>
adapter, so they do not have to be Intel.<br>
<br>
<br>
Best regards,<br>
<br>
Vladica<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000eaa7a305c55af26c--

--===============0006258295000008904==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0006258295000008904==--
