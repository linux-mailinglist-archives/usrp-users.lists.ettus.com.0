Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C42912D47F
	for <lists+usrp-users@lfdr.de>; Mon, 30 Dec 2019 21:35:04 +0100 (CET)
Received: from [::1] (port=50564 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1im1ki-0001Jg-4Y; Mon, 30 Dec 2019 15:35:00 -0500
Received: from mail-qt1-f179.google.com ([209.85.160.179]:40631)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <support@ettus.com>) id 1im1kf-0001Da-2Z
 for usrp-users@lists.ettus.com; Mon, 30 Dec 2019 15:34:57 -0500
Received: by mail-qt1-f179.google.com with SMTP id e6so30395212qtq.7
 for <usrp-users@lists.ettus.com>; Mon, 30 Dec 2019 12:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:sender:from:date:message-id
 :subject:to:cc;
 bh=Et8PLSbGMcxfS3kg3snGqL4ZXLBAp91zfMlgqCSZ0M8=;
 b=CMUSWxu0W7j4AXft8CnRsV+s/nw9546F0BPy6OIyzSFfRSPgNTB0tkEfX2EbGDuX2+
 LQSNP9phHELK6iycbR5CowsgHho30u0EY26vHE+K09Coe1Q9Qqjgzab0CY9HYm+GPYSM
 CxT8OHEkK81yaY9VOibeojDXrKOd3wCys/P1P6kAobTk58DTqjeIgmygsbiByGVYPhfc
 rxkgmNoacc9OQEfHIJ8lfDEtZVACjbJXBYrIsnGLPVpG89bvwLVeWYy0EB9anSgvK8kY
 s+EXRXtvE32sZ0ztp+/4osOx6dZSHiUYk9sBj2SGbVL/NnbSBb6wFr4u1r9yB/lJjj0L
 dGbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:sender:from
 :date:message-id:subject:to:cc;
 bh=Et8PLSbGMcxfS3kg3snGqL4ZXLBAp91zfMlgqCSZ0M8=;
 b=AFKelK1lmkl9d+qf2HNC2/8rjVBW0HjbjD+Y7Nw6Dn+67CjR14hSX6O35Cko7GqHBP
 VYarsV3FGDdVyli41Vzco0XIrDwxnQYhHr4uZCQrXtvIvAsCfNNz4ChcJ9p461xrb19/
 308dOIkvnR7Lst39NYhZuHSQMnXnx/dqzSZv4UmakfssDGDhXzAhkq0utfp/CNcbMu68
 WBPiP6BV2lRDLGdYdU1edlSabxQxxK/dblGIvqBLwsZZCx+tsaG962GlWusB4cWUe5Xp
 m7+IxjqV6ZKK3YBwOyZLO0ztgC8lhsyk3d92rEBWnsophgImA2D9HmapJQJTXSgL+owU
 T8bQ==
X-Gm-Message-State: APjAAAWDswIUPnjKGBn8+c098Wgq+ND873/4jRYG5IpbzGk+w3OV3Q8a
 +TqnyJbRFSxTApqugaE1jY5iPJaFrPtEw9fRwqO/MKAB
X-Google-Smtp-Source: APXvYqzkg0fTHvrqif/z4tGMmLj8RdmjJhMxysrGIypAFqC8BauHbAxN49FvSjZIOroSKxnQl8iJaghKyRrRdVkbfy8=
X-Received: by 2002:ac8:1385:: with SMTP id h5mr48811404qtj.59.1577738056331; 
 Mon, 30 Dec 2019 12:34:16 -0800 (PST)
MIME-Version: 1.0
References: <5e0a2639.1c69fb81.acc63.eda3@mx.google.com>
In-Reply-To: <5e0a2639.1c69fb81.acc63.eda3@mx.google.com>
X-Google-Sender-Delegation: sam.reiter@ettus.com
Date: Mon, 30 Dec 2019 14:33:40 -0600
X-Google-Sender-Auth: icGm-q4GcA3ZKZ8K6UARhIkCFyI
Message-ID: <CACSOXP1sjGA+w0ALzdxFw8qctznpNSYp9fGwzw9A8FVa2v3ChA@mail.gmail.com>
To: Damon Qiu <qiu.guowang007@gmail.com>
Subject: Re: [USRP-users] DPDK 18.11
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ettus Research Support via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ettus Research Support <support@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1100289018023203312=="
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

--===============1100289018023203312==
Content-Type: multipart/alternative; boundary="000000000000658db7059af1c493"

--000000000000658db7059af1c493
Content-Type: text/plain; charset="UTF-8"

Damon,

Compatibility with DPDK 18.11 should be included in UHD 4.0, but as of
right now there aren't any publicly available branches compatible with DPDK
18.11.

-Sam

On Mon, Dec 30, 2019 at 10:31 AM Damon Qiu via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
> Hi all,
> Is there anyone knows which uhd branch supports DPDK 18.11? My network
> card needs to use this DPDK version.
> I have tried master-next branch, but a warning appears: "Detected use_dpdk
> argument, but DPDK support not built in."
> Best regards,
> Damon
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000658db7059af1c493
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Damon,</div><div class=3D"gmail_default" style=3D"font-family:v=
erdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fam=
ily:verdana,sans-serif">Compatibility with DPDK 18.11 should be included in=
 UHD 4.0, but as of right now there aren&#39;t any publicly available branc=
hes compatible with DPDK 18.11.</div><div class=3D"gmail_default" style=3D"=
font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" styl=
e=3D"font-family:verdana,sans-serif">-Sam<br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 30, 2019 at =
10:31 AM Damon Qiu via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div><br><div>Hi all,</div><div>Is there=
 anyone knows which uhd branch supports DPDK 18.11? My network card needs t=
o use this DPDK version.</div><div>I have tried master-next branch, but a w=
arning appears: &quot;Detected use_dpdk argument, but DPDK support not buil=
t in.&quot;</div><div>Best regards,</div><div>Damon</div><br><br><br><br></=
div><div></div>_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000658db7059af1c493--


--===============1100289018023203312==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1100289018023203312==--

