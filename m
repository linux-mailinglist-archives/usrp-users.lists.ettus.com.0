Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E6610ECE8
	for <lists+usrp-users@lfdr.de>; Mon,  2 Dec 2019 17:16:51 +0100 (CET)
Received: from [::1] (port=52050 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iboNT-0003mY-7Z; Mon, 02 Dec 2019 11:16:47 -0500
Received: from mail-lj1-f172.google.com ([209.85.208.172]:44802)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1iboNP-0003iJ-9l
 for usrp-users@lists.ettus.com; Mon, 02 Dec 2019 11:16:43 -0500
Received: by mail-lj1-f172.google.com with SMTP id c19so30746lji.11
 for <usrp-users@lists.ettus.com>; Mon, 02 Dec 2019 08:16:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+3cSHJZILvunxsQgpuvJ4Lnmbr+9XR2rh8piov2ZK8Q=;
 b=XgiDhxMC4SsV2tqgyP7zXTg0T5l7du4+gZQ/WSp2vrXmtgUIOdBJfTDYLrq6Hy8rnm
 a2SJUUj+o5VlZjw5t8f4az4Kkdqi8gHNvYiemrbuNwz/qWJrWUwRJlCzXFe5O3vfgZ0J
 m3seahhxPWr83lYc52P3GSrLzkH7VfbE9sXdJwEJ9EYCCFkj28DZ98v7Yfum1cWTPRXV
 JVg8XAYlu8rJm+x77ynLtkOutpZEJbpKpA+C6K1OBLP8UvfXi7EMXIMTl8+AyVxNvlb0
 2uHvyW9OtGpKF+mk37W1+2ytHwu2vwDdD9FbTQUHGENzL4HrHFy7V2B7qJPeilbSvtl0
 WmiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+3cSHJZILvunxsQgpuvJ4Lnmbr+9XR2rh8piov2ZK8Q=;
 b=FXSpvg6IbfZuHSD6XMaOJBUJ3o5K7gL+5eZF4Z4XO3lE4sc5tnA3bn0I/8iPZvVJVX
 ZFCpmxAQiN98vMVOsq8droOJ7bg0uHh011McUjm6z7lCK3CZgCgOvocmz5/sST1y5y1p
 NobUyvQal1ceoa9Q8w4J+hUjirEvFD2V3etT4xrAnencX7TVGaPQyUaI570yg1ous47X
 DTiI0rjW6hBdOnl5lFd5LUNzzEM3aFn/lbn1DLh6xiydUlYk4PLw2HEOywLNBRcczWP/
 h0iWEIVmyKupU6GraFbq3AjXu5vogkRJ/YYAq8DYQYpOoV9Ixv6jbTvDb22xotW7EA3O
 bB4w==
X-Gm-Message-State: APjAAAUEtnWgi9MnT90JtJvA/iI54CSL/yHu3I0AQgjLNILtDoXSLp5f
 liwHquVxDOr0KxHmMdW0y/xvQGOoM7kAmu5Kl9a2inx7
X-Google-Smtp-Source: APXvYqyX1vs5kERWgC9vVqgEctf6txaeeIz88Lt8oXK+acvYZb7832pZzITQfjPDPPJkoVaMHHqq+LJzOmZz64Pkt04=
X-Received: by 2002:a2e:9ac4:: with SMTP id p4mr15281685ljj.207.1575303361738; 
 Mon, 02 Dec 2019 08:16:01 -0800 (PST)
MIME-Version: 1.0
References: <CAFGMRUA3J2+jmxMTveXitsD22DEVMA9ea7tORC6_HwDqmqPBJQ@mail.gmail.com>
In-Reply-To: <CAFGMRUA3J2+jmxMTveXitsD22DEVMA9ea7tORC6_HwDqmqPBJQ@mail.gmail.com>
Date: Mon, 2 Dec 2019 10:15:50 -0600
Message-ID: <CANf970ZC0aOh-GRSAtUTYQpgZmU-1VpbxV+Kn7k1FiMAC+yaHA@mail.gmail.com>
To: Keith k <keithkotyk@gmail.com>
Subject: Re: [USRP-users] GPIO ATR signals
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0617591052108928797=="
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

--===============0617591052108928797==
Content-Type: multipart/alternative; boundary="0000000000004a4d1d0598bae523"

--0000000000004a4d1d0598bae523
Content-Type: text/plain; charset="UTF-8"

Keith,

If I'm understanding your question correctly, the answer is yes. ATR is set
up to allow a GPIO pin to vary its state based on whether a channel of the
radio is transmitting or receiving. You can set this per-pin and
per-channel. You can also use GPIO without tying it to ATR at all. Here's a
GPIO example that goes through setup and demonstrates these options:

https://github.com/EttusResearch/uhd/blob/master/host/examples/gpio.cpp

Best,

Sam Reiter

On Thu, Nov 28, 2019 at 4:01 PM Keith k via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello all
>
> Is it possible to switch between active-low and active-high states if
> using ATR on the gpios?
>
> --
> -Keith Kotyk
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000004a4d1d0598bae523
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Keith,</div><div><br></div><div>If I&#39;m understand=
ing your question correctly, the answer is yes. ATR is set up to allow a GP=
IO pin to vary its state based on whether a channel of the radio is transmi=
tting or receiving. You can set this per-pin and per-channel. You can also =
use GPIO without tying it to ATR at all. Here&#39;s a GPIO example that goe=
s through setup and demonstrates these options:</div><div><br></div><div><a=
 href=3D"https://github.com/EttusResearch/uhd/blob/master/host/examples/gpi=
o.cpp">https://github.com/EttusResearch/uhd/blob/master/host/examples/gpio.=
cpp</a></div><div><br></div><div>Best,</div><div><br></div><div><div><div d=
ir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><di=
v dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter <br></div></div></div></div>=
</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Thu, Nov 28, 2019 at 4:01 PM Keith k via USRP-users &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div>Hello all</div><div><br></div><div>Is it possible to switch =
between active-low and active-high states if using ATR on the gpios? <br></=
div><div><br>-- <br><div dir=3D"ltr"><div dir=3D"ltr">-Keith Kotyk</div></d=
iv></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000004a4d1d0598bae523--


--===============0617591052108928797==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0617591052108928797==--

