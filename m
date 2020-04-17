Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4F41ADFCB
	for <lists+usrp-users@lfdr.de>; Fri, 17 Apr 2020 16:27:41 +0200 (CEST)
Received: from [::1] (port=50270 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jPRxz-0002Ed-7e; Fri, 17 Apr 2020 10:27:39 -0400
Received: from mail-vs1-f52.google.com ([209.85.217.52]:43617)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1jPRxv-00028S-BJ
 for usrp-users@lists.ettus.com; Fri, 17 Apr 2020 10:27:35 -0400
Received: by mail-vs1-f52.google.com with SMTP id s2so1247552vsm.10
 for <usrp-users@lists.ettus.com>; Fri, 17 Apr 2020 07:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5Spk6bWYAC0Zo4pBKTAuUI6t1H9VUtSJsjUSlc2N2eI=;
 b=Y5Q5jJy7HZFhz2x6oNtW3uH5oOy1dziDrAKESotLzzGbjIT43+dOX2rZNvZ4UU5S0o
 3ebI9RH5lwgQYIAyAoRRJSeknN7kP3A2rc4sUN1K65mUUjR6dIZcWWs0gKp0XAzhV0ss
 +uH3cC5G1hpuCiYwIyzf6w36AGBYJnIZwjY6aFEggsz6wK4QsoKKwpD7FmwqKGTi3v7u
 5D7syBgkY7y9q0h2MyL09Oe+9jPyuNpSYMH/PFvsFjsHTBVVPCNI7Rk3Ade/KZ/Va4GQ
 Dw6zZdwYTcjdMoq44z5dyiHMI+oDYASxDgaTaDTy5d8Qk5FVWUNDDn+3w8LhT3HavGu5
 TjYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5Spk6bWYAC0Zo4pBKTAuUI6t1H9VUtSJsjUSlc2N2eI=;
 b=QUnwpAabf6y6P0ykDw/EG3WnAJhbc7vbDqjw/Pt5vdevJjzwWvmRlUX1HnFz9Vi5Bh
 lCpV56fbhS8NYkcudhYEgfyAKOQVSZusGjxr96HWAyJCuOZ22nWA/zYxepgWL52nS5bm
 yPkgp6fkh9+NOWV9VGvq3ui+AAU/rvvFQH889m4+zoXv6TD/UhBlTIW7CgcFNxWWYbfA
 Mcq3s1BZapgD8A6LovH4yGLrtUz0iKhNEPkIs90j1EeZFiiF1O9WDsJ6s2M0qHbRfPDz
 0ngKj6UB/0hsbcmK/UEv3ZC6/veYoVs5JcjX5edABKJYmarCHSOgWdvfaIY/9LEXuL1g
 KxRQ==
X-Gm-Message-State: AGi0PubSMCGE/keIv68XBf9V2GDD7vCcbq/r2C2BT3VmYAukID7lqCgQ
 NQZEv+hHSEhQUxPxIX+Yox9bG9YEcHrVQeEjCqa+p+ah
X-Google-Smtp-Source: APiQypKwcrY6Lu+khkAPWiG5BWKclCZpnEeeTbGgyKT7AFDfyAyZq5U7gFpzIgsxdUUbEF/vmsuA7D3wsCpsdKWA6k4=
X-Received: by 2002:a67:f7cb:: with SMTP id a11mr2399822vsp.81.1587133614669; 
 Fri, 17 Apr 2020 07:26:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxupfiy8YpfrZR_xfAq4jQdhQq-JaaF_CUK3B6X820F6=g@mail.gmail.com>
In-Reply-To: <CAPRRyxupfiy8YpfrZR_xfAq4jQdhQq-JaaF_CUK3B6X820F6=g@mail.gmail.com>
Date: Fri, 17 Apr 2020 10:26:43 -0400
Message-ID: <CAGNhwTP+9VjAP=NphtoFcJmNn7wd5Rhd3N7z5K1ugtMa+94FUg@mail.gmail.com>
To: Ivan Zahartchuk <adray0001@gmail.com>
Subject: Re: [USRP-users] GPIO setup via gnuradio
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Content-Type: multipart/mixed; boundary="===============2503859939214616527=="
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

--===============2503859939214616527==
Content-Type: multipart/alternative; boundary="0000000000005054cf05a37d57a9"

--0000000000005054cf05a37d57a9
Content-Type: text/plain; charset="UTF-8"

Hi Ivan - I'm assuming you mean configure and control a USRP's GPIO via UHD
in GNU Radio?

In theory this should be possible, at least in C++ and of course it
requires that the specific USRP have GPIO ...

I'm not sure if there's a Python GPIO API as of UHD 3.15, but if there is
then that method should work about the same as the C++ method.

You'd have to get access to the instantiated USRP object, then you can use
that object to issue GPIO related calls. See these pages for more info
about GPIO in UHD:

< https://files.ettus.com/manual/page_gpio_api.html >

<
https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD#Example:_Using_Timed_Commands_to_Control_GPIO
 >

< https://github.com/EttusResearch/uhd/blob/master/host/examples/gpio.cpp >

I can't think of a current GNU Radio block that handles UHD USRP GPIO. If
you look around & can't find one, then you'd need to create a custom GNU
Radio block to handle this. You would pass your new block the USRP object,
which you'd then use for the GPIO calls ... using Python or C++ depending
on which API is available for your specific UHD.

Maybe there's another way that I don't know of? If so hopefully others will
add to the discussion!

Hope this is useful! - MLD

On Fri, Apr 17, 2020 at 9:15 AM Ivan Zahartchuk via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello. Please tell me if it is possible to configure GPIO using gnuradio.
> I want to use RFNOC blocks and switch an external device using GPIO
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000005054cf05a37d57a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Ivan - I&#39;m assuming you mean confi=
gure and control a USRP&#39;s GPIO via UHD in GNU Radio?</div><div dir=3D"l=
tr"><br></div><div dir=3D"ltr">In theory this should be possible, at least =
in C++ and of course it requires that the specific USRP have GPIO ...=C2=A0=
</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">I&#39;m not sure if there=
&#39;s a Python GPIO API as of UHD 3.15, but if there is then that method s=
hould work about the same as the C++ method.<div><br></div><div>You&#39;d h=
ave to get access to the instantiated USRP object, then you can use that ob=
ject to issue GPIO related calls. See these pages for more info about GPIO =
in UHD:</div><div><br><div>&lt;=C2=A0<a href=3D"https://files.ettus.com/man=
ual/page_gpio_api.html" target=3D"_blank">https://files.ettus.com/manual/pa=
ge_gpio_api.html</a> &gt;</div><div><br></div><div>&lt;=C2=A0<a href=3D"htt=
ps://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD#Exa=
mple:_Using_Timed_Commands_to_Control_GPIO" target=3D"_blank">https://kb.et=
tus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD#Example:_Usin=
g_Timed_Commands_to_Control_GPIO</a>=C2=A0&gt;<br></div><div><br></div><div=
>&lt;=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/master/host=
/examples/gpio.cpp">https://github.com/EttusResearch/uhd/blob/master/host/e=
xamples/gpio.cpp</a>=C2=A0&gt;</div><div><br></div><div>I can&#39;t think o=
f a current GNU Radio block that handles UHD USRP GPIO. If you look around =
&amp; can&#39;t find one, then you&#39;d need to create a custom GNU Radio =
block to handle this. You would pass your new block the USRP object, which =
you&#39;d then use for the GPIO calls ... using Python or C++ depending on =
which API is available for your specific UHD.</div><div><br></div><div>Mayb=
e there&#39;s another way that I don&#39;t know of? If so hopefully others =
will add to the discussion!</div><div><br></div><div>Hope this is useful! -=
 MLD</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Apr 17, 2020 at 9:15 AM Ivan Zahartchuk via USRP-us=
ers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">Hello. Please tell me if it is poss=
ible to configure  GPIO using gnuradio. I want to use RFNOC blocks and swit=
ch an external device using GPIO</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000005054cf05a37d57a9--


--===============2503859939214616527==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2503859939214616527==--

