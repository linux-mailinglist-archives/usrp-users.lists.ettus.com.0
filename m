Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C3855731CE
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jul 2019 16:37:48 +0200 (CEST)
Received: from [::1] (port=58690 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hqIOm-0006DM-Et; Wed, 24 Jul 2019 10:37:44 -0400
Received: from mail-lf1-f53.google.com ([209.85.167.53]:36932)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1hqIOi-00066k-P0
 for usrp-users@lists.ettus.com; Wed, 24 Jul 2019 10:37:40 -0400
Received: by mail-lf1-f53.google.com with SMTP id c9so32085384lfh.4
 for <usrp-users@lists.ettus.com>; Wed, 24 Jul 2019 07:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4D8yjg49QtFskeBezT+e1fBorNvIcJJplkrAO5gbMM0=;
 b=hi2ks+bgfZSeU6tPH4NQuIcG02mtmECmXXyvenQF8xd2e+1EcRWMXeWjHBDPG6+6hA
 wFGgI5ymaYFQ28qC+AOpyMyZNnEKAPkcZW0b2nc0210sksn5NICCilVA4p4ZBxs9ovNR
 dAnkL4qxuS0vRq9dPA5VrnZK4KNkpRMR2q1yhav3KYSI7MquNWKnPDErG6xsHCX7RKy6
 6PEw7lDXu1av4vHlUk58uxiNxN32kAlstJw3tIiQWUjaxmsSHTJL1HUWY65IbRMR3W1o
 hZemEOrI42nkbcpWgcizDQoVe9XMXZPZw4IfrPLa7yJyoatd1bvzEAFrn793d+vVH1Qu
 95Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4D8yjg49QtFskeBezT+e1fBorNvIcJJplkrAO5gbMM0=;
 b=sF4kIT3aUfwLXsUXr3lS2WHCCVi4yHX9/onrGkO6AFfC3qBo3mQQe2NXQLjPzwv24W
 6g1rUm1cp8qG7QE3GxLFviHnrrIqkD7arVOegEWSE/928Csz8HZ2gj9bMUwzTkDyPEO2
 GdHO6NEbNkfHQVp2pqoEuMzMfpSL1HTi7DFUMQkJWHic904gzohT+mq++Y5TMO+4c9KL
 esBUehMyW+vxKDDlPmOgAs/R+pIS6DsNDMrf3P8T13bc2hnz+4B+WDy0KIwnsKdXZI1o
 Tqs6EEg9eZTcbk6+VI/cvaXyjG08IHN0ACbbHOnGrMhgv10yJ19foJSTEO4odXhyBsZy
 Ei5A==
X-Gm-Message-State: APjAAAWz9YyIHUJ4U0cUoi0yXq6mlinB3NUdcuw9jD/hElz5PRolGi6i
 PDb+z5Lh3cXtSNVmBBGqYAHcw0SgC6Rj02XDe16NT48T
X-Google-Smtp-Source: APXvYqwSv2tVaDd9Z10/rqa25sgVNw0iQ7SJx1NMfMqOovWfZm4xdNYaf9+xnaJAU25w0xQEfiWizaepoaRso5K/6MY=
X-Received: by 2002:ac2:514f:: with SMTP id q15mr39243371lfd.145.1563979019204; 
 Wed, 24 Jul 2019 07:36:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAKaLowRdx_s9nF2bg+s4=iTmfREBvKfwUV0pD3mqF-Y219r0=w@mail.gmail.com>
In-Reply-To: <CAKaLowRdx_s9nF2bg+s4=iTmfREBvKfwUV0pD3mqF-Y219r0=w@mail.gmail.com>
Date: Wed, 24 Jul 2019 09:36:48 -0500
Message-ID: <CANf970YS1JOdDFNkHc-W_n-NMXvZxebQ_BPLaB5dkdZCBJZ-GQ@mail.gmail.com>
To: Rodolphe Bertolini <bertolini.rodolphe@gmail.com>
Subject: Re: [USRP-users] UHD not showing USB version through which my X310
 is connected
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3540671915792505631=="
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

--===============3540671915792505631==
Content-Type: multipart/alternative; boundary="000000000000e04bfe058e6e3dd5"

--000000000000e04bfe058e6e3dd5
Content-Type: text/plain; charset="UTF-8"

Rodolphe,

The X310 can operate over three protocols: 1Gb Ethernet, 10Gb Ethernet, or
PCIe. The only way I could see USB coming into play would be with something
like a USB to RJ45 adapter to connect to your host. In this case, the X310
and UHD would not be aware of the fact that USB is in use -- they would
both just see an ethernet port. How are you using USB in connecting to your
X310?

Sam Reiter
SDR Support Engineer
Ettus Research


On Wed, Jul 24, 2019 at 7:11 AM Rodolphe Bertolini via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I apologize if this is a duplicated email.
>
> Hello community,
>
> uhd_usrp_probe (and all the others commands) doesn't log the USB version
> to which the USRP is operating.
>
> Instead it gives me the following:
>
> $ uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.14.1.0-release
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
>   _____________________________________________________
>  /
> |       Device: X-Series Device
> |     _____________________________________________________
> |    /
> |   |       Mboard: X310
> |   |   revision: 11
> |   |   revision_compat: 7
> [...]
>
> Any thought?
>
> Thank you very much.
> Best regards,
> Rodolphe Bertolini
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000e04bfe058e6e3dd5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Rodolphe,<div><br></div><div>The X310 can operate over thr=
ee protocols: 1Gb Ethernet, 10Gb Ethernet, or PCIe. The only way I could se=
e USB coming into play would be with something like a USB to RJ45 adapter t=
o connect to your host. In this case, the X310 and UHD would not be aware o=
f the fact that USB is in use -- they would both just see an ethernet port.=
 How are you using USB in connecting to your X310?=C2=A0</div><div><br clea=
r=3D"all"><div><div dir=3D"ltr" class=3D"m_-1550884566252910743gmail_signat=
ure" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"l=
tr">Sam Reiter=C2=A0<div>SDR Support Engineer</div><div>Ettus Research<br><=
/div></div></div></div></div></div><br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 24, 2019 at 7:11 A=
M Rodolphe Bertolini via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v dir=3D"ltr">I apologize if this is a duplicated email.</div><div dir=3D"l=
tr"><br></div><div dir=3D"ltr">Hello community,<div><br></div><div>uhd_usrp=
_probe (and all the others commands) doesn&#39;t log the USB version to whi=
ch the USRP is operating.</div><div><br></div><div>Instead it gives me the =
following:</div><div><pre style=3D"white-space:pre-wrap">$ uhd_usrp_probe=
=20
[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.14.=
1.0-release
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
  _____________________________________________________
 /
|       Device: X-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: X310
|   |   revision: 11
|   |   revision_compat: 7
[...]</pre></div><div>Any thought?</div><div><br></div><div>Thank you very =
much.</div><div>Best regards,</div><div>Rodolphe Bertolini</div></div></div=
>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000e04bfe058e6e3dd5--


--===============3540671915792505631==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3540671915792505631==--

