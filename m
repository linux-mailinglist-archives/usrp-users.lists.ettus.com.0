Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F415A8A41F
	for <lists+usrp-users@lfdr.de>; Mon, 12 Aug 2019 19:18:20 +0200 (CEST)
Received: from [::1] (port=51956 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxDxb-00049t-65; Mon, 12 Aug 2019 13:18:19 -0400
Received: from mail-ot1-f50.google.com ([209.85.210.50]:36704)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1hxDxX-0003mc-Oz
 for usrp-users@lists.ettus.com; Mon, 12 Aug 2019 13:18:15 -0400
Received: by mail-ot1-f50.google.com with SMTP id k18so29548788otr.3
 for <usrp-users@lists.ettus.com>; Mon, 12 Aug 2019 10:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9ZyweGoS22qfyOWtkGyHrYItWcSleWeLLlI3V88MbcE=;
 b=qJBG6j79mpEILFmJCJg+bmS0USSFmVQGjl3Ec30wIh7haRuCnZTt7x2TmUVMgvSj+z
 Dz4r7v/e364Tegl9RpVPQdJdtUqjrgjPNz0DZWpSf/hfNqUEWAwmZ6vuOcnC+CVdNOE4
 VS1qZPxqrU0DOt1W+OV/1Osf6brKNVSV28DIWebH0YFKBxu4TM23hn4PB5vbeG3YVhsB
 R2SXER0h6+sicopOOPuEEvRw4yAax6wiQgxYN/yCS/wdh7d0g+rgFU+Ixq2bNV7Ldv/w
 UQ32n6O/SwwBG5UXAT7NnvJixSpLk+D5hO5LRLk3QKT8Cxcw3KId1PTYiwu2/Ny2mumC
 zNog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9ZyweGoS22qfyOWtkGyHrYItWcSleWeLLlI3V88MbcE=;
 b=YCiLuHHxzIS9HYy8S11ARpqZ6bLeRKGbkNPABmiKfYdpejQN1Y2Pvk0xz1LR3qcyFE
 344R2vzpzUhnzxDInBt03o7vgq+B+XAR/9whZmL01lixxLzqsEDrLkHLT3y+TM20qpvq
 YixhV1nYbqzbw//wy1VIAr0w6q15n08I6ONI5tAgDk66xxe3k21OdsuvW4mRd75duLdx
 7321/QmKG7v2xDfpaxumeCOdw3Yeed4Bz6ji5tBJSAEnSc4gK1nNgPy89jrYR9d38HxH
 EVfhw4WavEysEuEssgh7DeW4H9q4Uqt3sq4GEgZe9m56DpyLcs5wuYL835RGYQtUDHLQ
 WWYQ==
X-Gm-Message-State: APjAAAXT9ePqUX8EWP64Ag+A5qczoynRwBq6hmhqIBmgqyRkvEq0Xk5Q
 x/wu6rIHKTloCGbw94vWpmeJs4AGl8lGGf3YLQ1ugu/D
X-Google-Smtp-Source: APXvYqzBJwVHLan6b33jn3Euu/fOmVNMTkQt+CLLwmgRnTUuK6JjQr1cKUTqwMuUAO3xXZzBz1xyuatHZlW/I0QPZJo=
X-Received: by 2002:a9d:5a91:: with SMTP id w17mr30876987oth.32.1565630255155; 
 Mon, 12 Aug 2019 10:17:35 -0700 (PDT)
MIME-Version: 1.0
References: <bb626797d9459d98047616152b349dfa@dcc.ufmg.br>
In-Reply-To: <bb626797d9459d98047616152b349dfa@dcc.ufmg.br>
Date: Mon, 12 Aug 2019 10:18:16 -0700
Message-ID: <CAL263iyVez9PDfQSTFizJg611fKqpQJjPWW3S2eyL+doynEnhw@mail.gmail.com>
To: oliveiramauricio@dcc.ufmg.br
Subject: Re: [USRP-users] USRP utility for spectrum analysis
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
Content-Type: multipart/mixed; boundary="===============6188377501757381121=="
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

--===============6188377501757381121==
Content-Type: multipart/alternative; boundary="000000000000356051058feeb379"

--000000000000356051058feeb379
Content-Type: text/plain; charset="UTF-8"

Hi Mauricio,

You could modify the rx_ascii_art_drf util if you wanted, the source is
here[0]. There is also the Python  version here[1]. There is also a GNU
radio OOT, gr-specest that I would recommend to checkout [2]. I would also
encourage you to look at the rx_tool utility which can be found here[3].

[0] -
https://github.com/EttusResearch/uhd/blob/master/host/examples/rx_ascii_art_dft.cpp
[1] -
https://github.com/EttusResearch/uhd/blob/master/host/examples/python/curses_fft.py
[2] - https://github.com/kit-cel/gr-specest
[3] - https://github.com/rxseger/rx_tools

Regards,
Nate Temple

On Mon, Aug 12, 2019 at 10:11 AM Mauricio via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi everyone,
>
> I recently started using USRP for spectrum analysis and the
> rx_ascii_art_dft utility is very useful for that. I wonder if there is
> an easy way to output the (freq, dB) values to a text file? Or another
> simple program that can do that?
>
> Thank you,
>
> Mauricio
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000356051058feeb379
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Mauricio,<br><br>You could modify the rx_ascii_art_d=
rf util if you wanted, the source is here[0]. There is also the Python=C2=
=A0 version here[1]. There is also a GNU radio OOT, gr-specest that I would=
 recommend to checkout [2]. I would also encourage you to look at the rx_to=
ol utility which can be found here[3].<br><br>[0] - <a href=3D"https://gith=
ub.com/EttusResearch/uhd/blob/master/host/examples/rx_ascii_art_dft.cpp">ht=
tps://github.com/EttusResearch/uhd/blob/master/host/examples/rx_ascii_art_d=
ft.cpp</a><br>[1] - <a href=3D"https://github.com/EttusResearch/uhd/blob/ma=
ster/host/examples/python/curses_fft.py">https://github.com/EttusResearch/u=
hd/blob/master/host/examples/python/curses_fft.py</a><br>[2] - <a href=3D"h=
ttps://github.com/kit-cel/gr-specest">https://github.com/kit-cel/gr-specest=
</a><br>[3] - <a href=3D"https://github.com/rxseger/rx_tools">https://githu=
b.com/rxseger/rx_tools</a><br><br>Regards,<br>Nate Temple</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug =
12, 2019 at 10:11 AM Mauricio via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">Hi everyone,<br>
<br>
I recently started using USRP for spectrum analysis and the <br>
rx_ascii_art_dft utility is very useful for that. I wonder if there is <br>
an easy way to output the (freq, dB) values to a text file? Or another <br>
simple program that can do that?<br>
<br>
Thank you,<br>
<br>
Mauricio<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000356051058feeb379--


--===============6188377501757381121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6188377501757381121==--

