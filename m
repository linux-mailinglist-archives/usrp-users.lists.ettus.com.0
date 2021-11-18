Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 958FC45533A
	for <lists+usrp-users@lfdr.de>; Thu, 18 Nov 2021 04:13:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1C8EF383F75
	for <lists+usrp-users@lfdr.de>; Wed, 17 Nov 2021 22:13:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="dLyoD6YF";
	dkim-atps=neutral
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 4CCFC383CF1
	for <usrp-users@lists.ettus.com>; Wed, 17 Nov 2021 22:13:03 -0500 (EST)
Received: by mail-oi1-f182.google.com with SMTP id u74so11025879oie.8
        for <usrp-users@lists.ettus.com>; Wed, 17 Nov 2021 19:13:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MMVXuf9pHpgA8YG68gz1E6cH9BWCiYzvCLyesz1wlhg=;
        b=dLyoD6YFnarXsXy4BoTDpBs7SSSp262QUF2EsU0Z6wTSs7BflAvqDYJfQ9TUk+Xpus
         8ltKiXOa0zZuvPP4R4aG3OIYpd8IiDisgJTEkRLjQuza947paC0XV2CVckInW8FMjNB3
         VJYEIsfG99ZkbmB9W7nNZ9i+9YzkCcji0Slq3AlLUTWJw2RFgHTmARY6qclYxgSCqKH9
         Mdyum6XN4UnhGEvd0ei3BvcbVHaaydejE5ZI/NrJAzgIFjZ/+VXbrnd/AzIgqLIJaYeN
         NzrrIfAlxk1tXfg04CbhwtR0W4KXrDnGK+10Ix0s5lRhOrztm0E+VKGd4cdxoEvxNdau
         DEHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MMVXuf9pHpgA8YG68gz1E6cH9BWCiYzvCLyesz1wlhg=;
        b=oSGKG3Hne8/t7cKht2gQO+0R/2ispCg1RfaXlmhtoWtf35c1oHwnfCjAD10CCtD/Gh
         kIA+O6HxOIaK/+BAVm8TMyFYGeamFC8w8FgfXAcVwKT1X35bkVbp44GS6yQu9GYsqCoE
         QO4JxGrWc8jU2ogkBwvg902RdNeZ+DGzCo5JMB8O4xVyOpadFjL2nLL3FzAhkpMsRumj
         B7f2uIkYK1lJcNNxRPctrH2gIsvKtMxik5ki3NEZidzT6VilQOsfn9LrwaaWrYpSw9Xj
         9fOCW1zvfoKke7QGzW6dBFEPUqiFjmoOqJoFyfEvnKHCF30qEd4N8o6D3eHQvV8CzTJ6
         3Oug==
X-Gm-Message-State: AOAM532G+0VmxNdkvCWYEOG4fMdxS+pZgyYbfFdaDNnDC2JS7P4xXYW9
	fyDQukZVSdF5LueB7TV4BScPy9z5UDp/ws74qgjH0hSL
X-Google-Smtp-Source: ABdhPJwsdFRY1BTGAZRIS/7T3dCHHEb/v3OBOE4koEiK7Z7uT4Hyk+AAfklLUElurNBt7iBvVz+I4ECZ9vNx4E2YdiE=
X-Received: by 2002:aca:5ac6:: with SMTP id o189mr4633713oib.150.1637205182187;
 Wed, 17 Nov 2021 19:13:02 -0800 (PST)
MIME-Version: 1.0
References: <tencent_35F980DE62537DB02AB8CFD6@qq.com>
In-Reply-To: <tencent_35F980DE62537DB02AB8CFD6@qq.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 17 Nov 2021 22:12:49 -0500
Message-ID: <CAB__hTTfN_tW6bsO7_dTEa5dFyXnWvSSvJKfkyds0egcKX65Dw@mail.gmail.com>
To: =?UTF-8?B?6ZmI54Wc?= <yang_hu@ultrasine.cn>
Message-ID-Hash: XZXTPPHJIICLZ7W7HDUM5A3TF6NOOUGE
X-Message-ID-Hash: XZXTPPHJIICLZ7W7HDUM5A3TF6NOOUGE
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why There is one phase difference in UHD 3.15.0.0, but there are four phase differences in UHD 4.1.0.1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XZXTPPHJIICLZ7W7HDUM5A3TF6NOOUGE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9004979499671418928=="

--===============9004979499671418928==
Content-Type: multipart/alternative; boundary="0000000000004f471a05d107893c"

--0000000000004f471a05d107893c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What software are you using for the capture? Custom C++?  gnuradio?

On Wed, Nov 17, 2021 at 4:04 AM =E9=99=88=E7=85=9C <yang_hu@ultrasine.cn> w=
rote:

> hello,
>
>   I use four usrp-2945 as synchronous acquisition system, CDA-2990
> provides internal reference clock and PPS to four usrp-2945, and pxie-565=
1
> and pxie-5652 are used to provide two-stage local oscillator for four
> USRPs. Now I use two usrp-2945 to collect the data of two channels (one
> channel for each) and calculate the phase difference between the two
> channels. If I use UHD 4.1.0.1, after multiple acquisition, I find that
> there are four kinds of phase differences, and the phase differences are
> roughly 90 degrees, 180 degrees and 270 degrees. For example, the four
> phase differences are 4.5 degrees, 95.53 degrees, 189.51 degrees and 275.=
49
> degrees respectively. If I use UHD 3.15.0.0, there is only one phase
> difference.
>
> Setup Details
> 1.CDA-2990 provides internal reference clock and PPS to four usrps.
> 2.Pxie-5651 and Pxie-5652 are used to provide two-stage local oscillator
> for four USRPs.
>
> Expected Behavior
> Using UHD 4.1.0.1, there is only one phase difference.
>
> Actual Behaviour
> There are four phase differences using UHD 4.1.0.1.
>
> Steps to reproduce the problem
> After synchronizing the reference clock, PPS and lo, use UHD 4.1.0.1 to
> collect one channel of different USRP and calculate the phase difference.
>
> can anybody help me?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000004f471a05d107893c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">What software are you using for the capture? Custom C++?=
=C2=A0 gnuradio?</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Nov 17, 2021 at 4:04 AM =E9=99=88=E7=85=9C &lt;<a h=
ref=3D"mailto:yang_hu@ultrasine.cn">yang_hu@ultrasine.cn</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">hello,<div><u></u><=
u></u></div><div><br></div><div><div>=C2=A0 I use four usrp-2945 as synchro=
nous acquisition system, CDA-2990 provides internal reference clock and PPS=
 to four usrp-2945, and pxie-5651 and pxie-5652 are used to provide two-sta=
ge local oscillator for four USRPs. Now I use two usrp-2945 to collect the =
data of two channels (one channel for each) and calculate the phase differe=
nce between the two channels. If I use UHD 4.1.0.1, after multiple acquisit=
ion, I find that there are four kinds of phase differences, and the phase d=
ifferences are roughly 90 degrees, 180 degrees and 270 degrees. For example=
, the four phase differences are 4.5 degrees, 95.53 degrees, 189.51 degrees=
 and 275.49 degrees respectively. If I use UHD 3.15.0.0, there is only one =
phase difference.</div></div><div><br></div><div><div>Setup Details</div><d=
iv>1.CDA-2990 provides internal reference clock and PPS to four usrps.</div=
><div>2.Pxie-5651 and Pxie-5652 are used to provide two-stage local oscilla=
tor for four USRPs.</div><div><br></div><div>Expected Behavior</div><div>Us=
ing UHD 4.1.0.1, there is only one phase difference.</div><div><br></div><d=
iv>Actual Behaviour</div><div>There are four phase differences using UHD 4.=
1.0.1.</div><div><br></div><div>Steps to reproduce the problem</div><div>Af=
ter synchronizing the reference clock, PPS and lo, use UHD 4.1.0.1 to colle=
ct one channel of different USRP and calculate the phase difference.</div><=
/div><div><br></div><div>can anybody help me?</div>________________________=
_______________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000004f471a05d107893c--

--===============9004979499671418928==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9004979499671418928==--
