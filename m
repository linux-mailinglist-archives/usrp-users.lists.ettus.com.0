Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0FE245020
	for <lists+usrp-users@lfdr.de>; Sat, 15 Aug 2020 01:24:39 +0200 (CEST)
Received: from [::1] (port=57616 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k6j3t-0008Vk-SG; Fri, 14 Aug 2020 19:24:37 -0400
Received: from mail-vk1-f170.google.com ([209.85.221.170]:45344)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1k6j3p-0008BA-Ph
 for USRP-users@lists.ettus.com; Fri, 14 Aug 2020 19:24:33 -0400
Received: by mail-vk1-f170.google.com with SMTP id j7so2353006vkk.12
 for <USRP-users@lists.ettus.com>; Fri, 14 Aug 2020 16:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QmtY4oMpUcMba5n7iVTQYpq0tk65HU09SAY80S+y9/U=;
 b=cLXIc0tJcT+fmKrjBqOXKENB2xUpKzA0TmUhLJPT5jQGf2UKnA6fxRNAMmf39z1xG2
 NJ/q6Ns+Yw3RQam81olC1sN6nYaXW/Qu7lgJqRX/nvqpvBIN5EdD1CpCMQrb1um13Grl
 od6w54fKC+r/xb3mHkSEmCxOnIvxLYh2DyOsybCqOxFAdJge6G7i9AblDLT/bgHCBt3E
 uVMzq7O3kjd4HsJByoikB2gQwZSAO47K/lImwaKIGYWUqCnYqBuQxpda1m1uobJvJab4
 2Xmd33KYEuJFGqUYmanN9PpdgJ1yCRvCI65SFB6FNWp9MIcmCyaJC4wStIvy0X8MZYC+
 7aFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QmtY4oMpUcMba5n7iVTQYpq0tk65HU09SAY80S+y9/U=;
 b=Vjsp1u0NasI28N6jKkQ8Yz2eOgNYSxPMKQBCgFNTA0/3PptidDYKBHnnH63eQb3Wne
 0WhuKU/gaXqxaZOZeMEvhX2IZqQnuSLtkLWDFkIRwS+LvWo3XgZ02AdHSZlOFqjZ5lV0
 W1cxKjB7AidVTMrxxxN6kWmo1o33oXP+pzt0w6jUp5kJeJ/qPtFa4K+l0cbXPWnVZIIc
 3cN0K3XyXWnhMvNMssEpLvl5itu2E/J0XIxIx/oLZ7fvc3+r/mp+u7TFaNe2JUfRjxXC
 vqWK+0GQxwEohAE/J9qF5WgfkWDptLSrS/T69vKlKNRX6KfNieD93Wky+ItnconxftMe
 Rpxw==
X-Gm-Message-State: AOAM533k0drlCIM8lJMdfRdJmq1ambKI5VbZ9uUkSAYM3/Ldm6QagLpW
 3I+eJ1uj+IilTpjCxmmUWzE+b8X2tLiQys08UTQMWphv
X-Google-Smtp-Source: ABdhPJybURxC/+NFZTRDmIvn0s04KnqHguWtwd19kEtG4+IvJ+AbM+o7gSuDNIUKjy3/Xyf/b2xbDrYWLVhcSFi9QIY=
X-Received: by 2002:a05:6122:2c:: with SMTP id
 q12mr3155430vkd.39.1597447433137; 
 Fri, 14 Aug 2020 16:23:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAN6+RzmEiJ0ouDEW+bBw55KZRrF2n21O6YdbXJzEYHOP8aU4HA@mail.gmail.com>
In-Reply-To: <CAN6+RzmEiJ0ouDEW+bBw55KZRrF2n21O6YdbXJzEYHOP8aU4HA@mail.gmail.com>
Date: Fri, 14 Aug 2020 19:23:17 -0400
Message-ID: <CAL7q81ud-YBA3M0bT=x+MPxDvXod7-X5+qwizyyFy+vUvH-sWg@mail.gmail.com>
To: cherif chibane <cherif.chibane@gmail.com>
Cc: usrp-users <USRP-users@lists.ettus.com>
Subject: Re: [USRP-users] usrp_x310_fpga_RFNOC_HG.bit
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============5836746525001218186=="
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

--===============5836746525001218186==
Content-Type: multipart/alternative; boundary="000000000000ccc80605acdeb691"

--000000000000ccc80605acdeb691
Content-Type: text/plain; charset="UTF-8"

Hi Cherif,

I'll send you the bitstream directly.

Jonathon

On Fri, Aug 14, 2020, 16:07 cherif chibane via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> I would like to use teh X300 bit file:   usrp_x310_fpga_RFNOC_XG.bit.
> Does it exist somewhere or do I need to re-create it? I used  uhd_images_downloader
> to download the bitfiles but it did not come with the files downloaded.
>
> Thanks,
>
> Cherif
>
>
>
> Does it exist somewhere or do I need to re-create it. I used  uhd_images_downloader
> but it did not come with the files downloaded.
>
>
> Thanks,
>
> Cherif
>
>
> ____________
> Cherif Chibane
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ccc80605acdeb691
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"auto">Hi Cherif,<div dir=3D"auto"><br></div><d=
iv dir=3D"auto">I&#39;ll send you the bitstream directly.<br></div><div dir=
=3D"auto"><br></div><div>Jonathon</div></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 14, 2020, 16:07 ch=
erif chibane via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D=
"ltr"><div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I would like to=
 use teh X300 bit file:<code>=C2=A0=C2=A0 usrp_x310_fpga_RFNOC_XG.bit.</cod=
e></div><div><code>Does it exist somewhere or do I need to re-create it? I =
used=C2=A0=C2=A0</code>uhd_images_downloader to download=C2=A0the bitfiles =
but it did not come with the files downloaded.</div><div><pre style=3D"whit=
e-space:pre-wrap">Thanks,<br></pre><pre style=3D"white-space:pre-wrap">Cher=
if<br></pre></div><div><br></div><div><code><br></code></div><div><code>Doe=
s it exist somewhere or do I need to re-create it. I used=C2=A0=C2=A0</code=
>uhd_images_downloader but it did not come with the files downloaded.<br><c=
ode></code><pre style=3D"white-space:pre-wrap"><br></pre><pre style=3D"whit=
e-space:pre-wrap">Thanks,<br></pre><pre style=3D"white-space:pre-wrap">Cher=
if<br></pre></div><div><br></div><div><div dir=3D"ltr"><div dir=3D"ltr"><di=
v>____________</div>Cherif Chibane</div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000ccc80605acdeb691--


--===============5836746525001218186==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5836746525001218186==--

