Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE7A20AB63
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jun 2020 06:38:15 +0200 (CEST)
Received: from [::1] (port=57916 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jog7w-0000u8-E8; Fri, 26 Jun 2020 00:38:12 -0400
Received: from mail-qt1-f174.google.com ([209.85.160.174]:42506)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carsenat@gmail.com>) id 1jog7s-0000ov-0G
 for usrp-users@lists.ettus.com; Fri, 26 Jun 2020 00:38:08 -0400
Received: by mail-qt1-f174.google.com with SMTP id e12so6569688qtr.9
 for <usrp-users@lists.ettus.com>; Thu, 25 Jun 2020 21:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/h1qAA1wevb1w9qJF6ldbj/LJ/3mFqmUq3v+zhGH2ZA=;
 b=JmRuXRhNFo0mDSE0ZJyjIswC+EQMoRvFIXUr8Fv5Us+mweXYVRieraPlD+TuhuI7nl
 /IKHiUr8KqHuF7OY2Q4T7pO9jIwPkHkSo/AhJXGV1WpGPiNgZ51qjXIkjBhhSiSVri4u
 FNJs0DQGmRRQkSpf+PTIKzXRAdliUAzUbr7MTPPJ9Ieu9j9AQwY7Qn3I4HhsAWYTs/jm
 kwck+8hIbdh30Kk6gLXIt421sX14+0i7yEZTTGJ+N0ob8VdYgZOljTfRkkx+SRosDF7A
 3PYWSXOUKnDFdEvrveLgymbOuaKKayy6yhazjAIGFnEX49xud2qkyDzXMsKzeA32hsB/
 ZMHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/h1qAA1wevb1w9qJF6ldbj/LJ/3mFqmUq3v+zhGH2ZA=;
 b=TmH8VRmirGeNLGBgXj+szOG8JKxdMsD2I98+jkC22ksNglo6xHqgUDUU4yDXhui2hB
 zQZHnjhNh422utDpcmJcU2RZj1jPH26yZJp9OsnqzRQSkqBLbH4/GOLJWP1cTM1WLNvU
 Etz6VU1Ol58BcmGWkUgB4Sxc3URpWOVIbX8gWVuYra7EYLbGzvayZdEGaFgyF6gtuT+q
 lNNdBGqxfDY93mbP3BKJrMfTSzoQ9tE6pLvaaXv3tZMGnYpUmeTaPkUkH0PWiEmbdx23
 lgVIubAvklqQ3D2fK1q9Eg3BqrqponKnYknkffmVy0yhh0bICz52qWMKwoEg8UIlpaVN
 dsww==
X-Gm-Message-State: AOAM531mNIlH2Ti0cOHvzucjy2XA2+hN21hgEis25NViLvIuotIxpP35
 UDiYZJHcI8mQITG2vbX5jiBQHDaXBPRHFm5+ME4=
X-Google-Smtp-Source: ABdhPJzb3VQF6QQNy0rtwK2kzJsYf7VyNrhnDc9+sEAjs45hwrJDTk93ycOFqPfUYm+ngdoTbYrWy1Jl7hHTcbTnZO4=
X-Received: by 2002:ac8:6602:: with SMTP id c2mr917321qtp.243.1593146247371;
 Thu, 25 Jun 2020 21:37:27 -0700 (PDT)
MIME-Version: 1.0
References: <CA+w2Zyujk0sToEj0rSYqqL0tS7PJmTKXOZSmPS-jz5Njkk3n_w@mail.gmail.com>
 <5EF523C7.9040800@gmail.com>
In-Reply-To: <5EF523C7.9040800@gmail.com>
Date: Fri, 26 Jun 2020 06:37:16 +0200
Message-ID: <CA+w2Zys99gQ5sY9qOtQX-xXi5sYrk9rhEAn=AQ9SSXsm+K=O4Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] b205 RX -> TX loopback
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
Content-Type: multipart/mixed; boundary="===============6041379569689875985=="
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

--===============6041379569689875985==
Content-Type: multipart/alternative; boundary="000000000000265efa05a8f544ac"

--000000000000265efa05a8f544ac
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OK thanks. So you confirm the link between UHD sample rate and AD93xx
sample rate ?

David

Le ven. 26 juin 2020 =C3=A0 00:23, Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> a =C3=A9crit :

> On 06/25/2020 03:04 PM, David Carsenat via USRP-users wrote:
> > Hello.
> > We are trying to make a simple RX on TX loopback by changing the FPGA
> > image.
> > We get it by adding a wire between the DDC output and DUC input, but
> > we are still limited by the sample rate we specify via UHD.
> >  We have specified the analog bandwidth at 56 MHz, and the master
> > clock rate at 60 MHz, but no change.
> > Same behaviour if we add a wire before the DDC and DUC. We suspect
> > a link between UHD sample rate and AD9364 sample rate.
> > Is there a way to have the full rate(56 MHz) available on the loopback
> > despite, for example, 1MHz sample rate specified via UHD ?
> >
> > We could also put the sample rate of 56 MHz but the underflow and
> > overflow cut the RF signal, perhaps there is a way to avoid this
> > phenomenon also.
> >
> > Thanks a lot.
> >
> > David
> >
> My suggestion would be to wade even deeper into the FPGA and have it not
> send samples to the host or always only send them at 1Msps, or
>    something.   But regardless, there's no "simple button I can push" to
> make this happen.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000265efa05a8f544ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">OK thanks. So you confirm the link between UHD sample rate=
 and AD93xx sample rate ?<div><br></div><div>David</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0ven. 26 jui=
n 2020 =C3=A0=C2=A000:23, Marcus D. Leech via USRP-users &lt;<a href=3D"mai=
lto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; a =C3=A9=
crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 0=
6/25/2020 03:04 PM, David Carsenat via USRP-users wrote:<br>
&gt; Hello.<br>
&gt; We are trying to make a simple RX on TX loopback by changing the FPGA =
<br>
&gt; image.<br>
&gt; We get it by adding a wire between the DDC output and DUC input, but <=
br>
&gt; we are still limited by the sample rate we specify via UHD.<br>
&gt;=C2=A0 We have specified the analog bandwidth at 56 MHz, and the master=
 <br>
&gt; clock rate at 60 MHz, but no change.<br>
&gt; Same behaviour if we add a wire before the DDC and DUC. We suspect <br=
>
&gt; a link between UHD sample rate and AD9364 sample rate.<br>
&gt; Is there a way to have the full rate(56 MHz) available on the loopback=
 <br>
&gt; despite, for example, 1MHz sample rate specified via UHD ?<br>
&gt;<br>
&gt; We could also put the sample rate of 56 MHz but the underflow and <br>
&gt; overflow cut the RF signal, perhaps there is a way to avoid this <br>
&gt; phenomenon also.<br>
&gt;<br>
&gt; Thanks a lot.<br>
&gt;<br>
&gt; David<br>
&gt;<br>
My suggestion would be to wade even deeper into the FPGA and have it not <b=
r>
send samples to the host or always only send them at 1Msps, or<br>
=C2=A0 =C2=A0something.=C2=A0 =C2=A0But regardless, there&#39;s no &quot;si=
mple button I can push&quot; to <br>
make this happen.<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000265efa05a8f544ac--


--===============6041379569689875985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6041379569689875985==--

