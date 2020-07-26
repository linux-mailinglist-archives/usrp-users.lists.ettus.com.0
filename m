Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C62D22E21C
	for <lists+usrp-users@lfdr.de>; Sun, 26 Jul 2020 21:00:10 +0200 (CEST)
Received: from [::1] (port=36736 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jzlsV-0006cA-M9; Sun, 26 Jul 2020 15:00:07 -0400
Received: from mail-qt1-f176.google.com ([209.85.160.176]:37204)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carsenat@gmail.com>) id 1jzlsR-0006Uk-RA
 for usrp-users@lists.ettus.com; Sun, 26 Jul 2020 15:00:03 -0400
Received: by mail-qt1-f176.google.com with SMTP id d27so10663290qtg.4
 for <usrp-users@lists.ettus.com>; Sun, 26 Jul 2020 11:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/mwYnj7Oet5uXOAb0Ol05THi1n7ZOvgt0FD5oiKlqVo=;
 b=gKfisJjfbFoGr9qmb8WZXZK+PojfHItJyJSkTiuYgwDdXmOINNh/BFk9tLOTG/wh0O
 02OOgbGLP+KkmlRC5lW87g+XxBWS7AmO0o+AAEc71EDBo2UHpYoqvPEUNyw4dIW+4qli
 PICi0a4F2BbcsLvuqRHytdySLB4yreX4BEkVFdeEtWsMbvrmRnbMP4/T97al+MNSK9Un
 +vbDDYPokfnD9TZ0x+42AOOy1Fb+EI/nKk56LxSRI9k4gixUr/ai5jh3sqdg7LI4S4Oo
 MIF7QxVxlvDXbrOXHaohTtzM+OdEEo00kyXOXsSXhtsdP0OICZdv4b7MbgfV1NDOUbwf
 2kHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/mwYnj7Oet5uXOAb0Ol05THi1n7ZOvgt0FD5oiKlqVo=;
 b=EcdkrvEXfRiZGoL4EA+QWz2/T2JW6TyJttMvAQZK5Id0tAbni3t/f517Y6Pb++r0cO
 cvDNxuPYuFPhqTM9R1Raigi+116GrkokUv2soDVVA8tDQTIMuueRXjZF+O0/amrcQxJ2
 rmclylivQpHZWEFgXI90Q+g24gfN6L8pIz8F4snM8jEeO24hM/8yL2Dx288qagmrg52/
 G0wq44BSTxnLVeISGQEd4nuXruUZiceACu7k7vAV1IXqvCa1qcx5RgplWZ+b5hpeMc9p
 etTkJ7deGb1xQMPxEsEZ0OcVi5P03POxUFOhmSCUuvFxYKRbhBwsEocIL41INrvlx0LE
 DNIQ==
X-Gm-Message-State: AOAM530H29/rrmLd6cbRxSNfIXFDg9x/ayCX7VXaS7Ej5DbbLsDdJFe4
 shzcJAgGHpXjSGJ8rYXhbNANoeR99VvpAlfjKwc=
X-Google-Smtp-Source: ABdhPJy3P3C6uPVvkz3Fj+R7GSGoh2ik67irEa1YTg8iJ6ByEehNfLUmBbZvI2/sznaQjG1+4oUJ9YJP++0q+tRHYIs=
X-Received: by 2002:ac8:7606:: with SMTP id t6mr2054620qtq.348.1595789963199; 
 Sun, 26 Jul 2020 11:59:23 -0700 (PDT)
MIME-Version: 1.0
References: <CA+w2Zyvz7XGRkKWy2tqeTqYdFuhU2DQV5QdjekCZi=4Av0ctuQ@mail.gmail.com>
 <5F1DCB58.7090804@gmail.com>
 <CA+w2Zytm2=5ZRrB-BaY91fax-9xpK8fpkVpB+ep4mzvZ3tH-oA@mail.gmail.com>
 <5F1DD036.5030509@gmail.com>
In-Reply-To: <5F1DD036.5030509@gmail.com>
Date: Sun, 26 Jul 2020 20:59:12 +0200
Message-ID: <CA+w2ZythQQvQG3Zm6+bv8c+pWV42XFbtdUGw=vOZKnP0_qZmZg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] AD936x disable DC offset removal
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
From: David Carsenat via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Carsenat <carsenat@gmail.com>
Content-Type: multipart/mixed; boundary="===============1856924210449572168=="
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

--===============1856924210449572168==
Content-Type: multipart/alternative; boundary="000000000000e48b1405ab5ccd84"

--000000000000e48b1405ab5ccd84
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have tried that, but I see 2 issues (but perhaps I'm wrong) :
- I need 25 Mhz of BW so if I want to push the LO outside, I need to have a
sample rate of 50 MHz --> difficult to have Tx / Rx loopback.
- I have tried to set the master clock rate at 60 MHz, the DDC offset at 25
MHz, and a sample rate at 25 MHz. I thought that it could work but I have a
cutoff frequency at 12.5 MHz ...

David

Le dim. 26 juil. 2020 =C3=A0 20:49, Marcus D. Leech <patchvonbraun@gmail.co=
m> a
=C3=A9crit :

> On 07/26/2020 02:36 PM, David Carsenat wrote:
> > What a fast response ! Many thanks. But what do you mean by offset
> > tuning ?
> >
> > For example at a time, I can have a signal at F0rx and at another time
> > at F0rx + df. Always with some Signal at F0rx. The RX DC offset
> > correction will disturb the Signal for the second example.
> > The signal can hop.
> You can have the hardware offset the LO by some suitable amount, so that
> the LO actually sits at the edge of your bandwidth, for example.
>
> See the two-step tuning process here:
>
> https://files.ettus.com/manual/page_general.html
>
>
>

--000000000000e48b1405ab5ccd84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have tried that, but I see 2 issues (but perhaps I&#39;m=
 wrong) :<div>- I need 25 Mhz of BW so if I want to push the LO outside, I =
need to have a sample rate of 50 MHz --&gt; difficult to have Tx / Rx loopb=
ack.</div><div>- I have tried to set the master clock rate at 60 MHz, the D=
DC offset at 25 MHz, and a sample rate at 25 MHz. I thought that it could w=
ork but I have a cutoff=C2=A0frequency=C2=A0at 12.5 MHz ...</div><div><br><=
/div><div>David</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">Le=C2=A0dim. 26 juil. 2020 =C3=A0=C2=A020:49, Marcus D=
. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.=
com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">On 07/26/2020 02:36 PM, David Carsenat wrote:<br>
&gt; What a fast response ! Many thanks. But what do you mean by offset <br=
>
&gt; tuning ?<br>
&gt;<br>
&gt; For example at a time, I can have a signal at F0rx and at another time=
 <br>
&gt; at F0rx + df. Always with some Signal at F0rx. The RX DC offset <br>
&gt; correction will disturb the Signal for the second example.<br>
&gt; The signal can hop.<br>
You can have the hardware offset the LO by some suitable amount, so that <b=
r>
the LO actually sits at the edge of your bandwidth, for example.<br>
<br>
See the two-step tuning process here:<br>
<br>
<a href=3D"https://files.ettus.com/manual/page_general.html" rel=3D"norefer=
rer" target=3D"_blank">https://files.ettus.com/manual/page_general.html</a>=
<br>
<br>
<br>
</blockquote></div>

--000000000000e48b1405ab5ccd84--


--===============1856924210449572168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1856924210449572168==--

