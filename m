Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DFF7EA8B
	for <lists+usrp-users@lfdr.de>; Fri,  2 Aug 2019 04:59:11 +0200 (CEST)
Received: from [::1] (port=60560 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1htNmf-0007J0-Kz; Thu, 01 Aug 2019 22:59:09 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:37954)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1htNmb-0007BM-S2
 for usrp-users@lists.ettus.com; Thu, 01 Aug 2019 22:59:05 -0400
Received: by mail-ot1-f51.google.com with SMTP id d17so76670230oth.5
 for <usrp-users@lists.ettus.com>; Thu, 01 Aug 2019 19:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7tiz8Ts4sbHnvPhnulOV5oYe4Sp68EUJ5mgPA6I4EGE=;
 b=DOsEmniIz/b2wwarGBtzYo+GtsaBpJRTICuPbv/ouDYRVFTmAjtww3k9NGtIsp3RNR
 smZmLeMPRw9EBDkU8ETxfsSvkQ9Qfw2ZuDj2+Xa6HEb8vDNJF4yMx8bjOqxPQ0ZqWSIP
 vAsOlEKwbgCbuqWkAqGAEQhDUUylcSweIMIUwJFZ0yERDmIWiz0eq2g7H84ia6I2weEg
 7fre6X0eEeNcEYk5kAGmy3bs7wdlzjT2XJHk93PVnnoMBvKREnBKYJHRghtsHBayCy43
 hVRYS1Ok8nMq5Yx+ODdMp5Sm56EhVESH9T7fPs6tDODet3oNqpMYZn4Xae9dOOGqHqjz
 LU/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7tiz8Ts4sbHnvPhnulOV5oYe4Sp68EUJ5mgPA6I4EGE=;
 b=mT4QmfSBABXZzJ/qoJmacduJNdac1l7/nnPilRfVozYmYRiTI+0YTxfZQx8aLCItG7
 76q+NPZjgVzi+P6HeCAz8CGP9ICWm/8HFt3XKTYKSgqAJpXHCIxYmf+Y+I3h9g2HcgE3
 PTx/6nXuyioK7YUAkAr9/pBgm+H32/L//joU9XgNJeCTdevlCa4fv2wFsZt2IlhGEPBG
 7RGTnbXlB3xjBrdNivT4wFvZtI0YKFqn1GKU56cYVhYvWLEVMFd3wV4NB6ZSXQTFPCJq
 9t4k5gJCm94ir0Q0uaBuiUN3WLIsANfgb1aKfVB+aoQztyUHRBqWx1b3AdgN2DGFkttU
 wLrg==
X-Gm-Message-State: APjAAAXeyrDkNW0z3kQXjua1m3wpBLkP43VBtrVw3a7ZniCS935cNF/9
 64cSwnsMQ0EDfLYWv8WlrJNqNvGrqXfkunmTAclfI/eY
X-Google-Smtp-Source: APXvYqxzxAhtrZcvHB+VLPktDRfVHMJ4eUSH/4cG/za3QLPQljb1GQqhqaoC75IT7r6Z2FhWYG87jVdcbuWR9Hs5040=
X-Received: by 2002:a9d:5a91:: with SMTP id w17mr68169868oth.32.1564714705183; 
 Thu, 01 Aug 2019 19:58:25 -0700 (PDT)
MIME-Version: 1.0
References: <CABfZwcdKyO0+zUTd5oVcwrr=mAhScEroL_mwGDoEJ52+i+sAjg@mail.gmail.com>
 <CAL263iw7Rwb4n-FJvnqOqtgev8AAx9uNvutVbNf2Q__cL1C6Hg@mail.gmail.com>
 <CABfZwcdc9PR_dNbAaTbXaE7LxC6wE6+3mRuagXfkuyASHm0TrQ@mail.gmail.com>
In-Reply-To: <CABfZwcdc9PR_dNbAaTbXaE7LxC6wE6+3mRuagXfkuyASHm0TrQ@mail.gmail.com>
Date: Thu, 1 Aug 2019 19:58:51 -0700
Message-ID: <CAL263iy15x0bAE6CK_LQbnvbLk86=o5k_sk7CJzG_K_bXF+TDA@mail.gmail.com>
To: =?UTF-8?B?56aP5bO25bm56ZuE?= <mikio@dolphinsystem.jp>
Subject: Re: [USRP-users] cmake error : Cross-Compiling GNU Radio on Ubuntu
 16.04
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8819171328268898242=="
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

--===============8819171328268898242==
Content-Type: multipart/alternative; boundary="0000000000002d7d74058f1988ee"

--0000000000002d7d74058f1988ee
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I hope to have the E310 version posted tomorrow. Don't have a firm timeline
for the E320/N3xx version yet.

The process is mostly the same, except you should not use rfnoc-devel, but
instead use a modern UHD version such as v3.14.1.0, and then during the
cmake configuration step, pass the arg -DENABLE_RFNOC=3DON.

You can fetch the E320 SDK using uhd_images_downloader with the command
(with UHD 3.14.1.0 on your host):

uhd_images_downloader -t sdk -t e320

I would recommend to use maint-3.7 for the GR version with the E320.


Regards,
Nate Temple

On Thu, Aug 1, 2019 at 7:53 PM =E7=A6=8F=E5=B3=B6=E5=B9=B9=E9=9B=84 <mikio@=
dolphinsystem.jp> wrote:

> Hi Nate
> Thank you for always your support and quick reply.
>
> >Are you using the E320 SDK?
> No, I use the *E310 SDK*.
> bacause I am training to get used to build the UHD and GR for cross
> compiling environment.
> next step, I will use the *E320 SDK*.
>
> >Also that app note is outdated, and I will be posted an updated version
> soon. Another app note that covers the E320/N3xx will follow.
>
> Oh!!!
> I have no words to thank you.
> When do you think that will be?
>
> Thanks.
>

--0000000000002d7d74058f1988ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi,<br><br>I hope to have the E310 version posted tomor=
row. Don&#39;t have a firm timeline for the E320/N3xx version yet.<br><br>T=
he process is mostly the same, except you should not use rfnoc-devel, but i=
nstead use a modern UHD version such as v3.14.1.0, and then during the cmak=
e configuration step, pass the arg -DENABLE_RFNOC=3DON.<br><br>You can fetc=
h the E320 SDK using uhd_images_downloader with the command (with UHD 3.14.=
1.0 on your host):<br><br>uhd_images_downloader -t sdk -t e320<br><br>I wou=
ld recommend to use maint-3.7 for the GR version with the E320.<br><br><br>=
Regards,<br>Nate Temple<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 1, 2019 at 7:53 PM =E7=A6=8F=
=E5=B3=B6=E5=B9=B9=E9=9B=84 &lt;<a href=3D"mailto:mikio@dolphinsystem.jp">m=
ikio@dolphinsystem.jp</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Nate<br>Thank you=
 for always your support and quick reply.<br><br>&gt;Are you using the E320=
 SDK?<br>No, I use the *E310 SDK*.<br>bacause I am training to get used to =
build the UHD and GR for cross compiling environment.<br>next step, I will =
use the *E320 SDK*.<br><br>&gt;Also that app note is outdated, and I will b=
e posted an updated version soon. Another app note that covers the E320/N3x=
x will follow.<br><br>Oh!!! <br>I have no words to thank you.<br>When do yo=
u think that will be?<br><br>Thanks.<br></div></div>
</blockquote></div>

--0000000000002d7d74058f1988ee--


--===============8819171328268898242==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8819171328268898242==--

