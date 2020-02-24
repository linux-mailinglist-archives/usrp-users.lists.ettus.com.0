Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D9B16AF4F
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2020 19:38:32 +0100 (CET)
Received: from [::1] (port=55268 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6Icf-0004FX-6W; Mon, 24 Feb 2020 13:38:29 -0500
Received: from mail-io1-f44.google.com ([209.85.166.44]:45879)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1j6Ica-0003s8-Mc
 for usrp-users@lists.ettus.com; Mon, 24 Feb 2020 13:38:24 -0500
Received: by mail-io1-f44.google.com with SMTP id w9so9276iob.12
 for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2020 10:38:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5XoXWLkn1Wt9aoYNPF5NGkXzoG4bSNMiUG8v3sz2bxo=;
 b=MnVUlTW1HBq07eW4guq1vjPb5a3EHad/oVKUCPA7UIGhvB59cPA7Rz+QTf5L6HZo4E
 vPKwNfR8elqOd13S4TyOgnDLDHCjvSiQ95soTP2zxOF0mpysSU1MILcKpxHr2pYe+rGZ
 vwSBGhwsi9D7M0EuhTnkrLChBApzXkQPjG1jMhvm8sPUqjHMWwWANiYKCa2Ep5pofzE9
 xIY5j99XcHyGKdqE9JvZBBC2O/D6hcLfF7D9piZpIOAg2pxLrMNPwASCaNha1CM4tqlx
 e5U+jRBSHU+ZamTTyA5bq26gfXqbV/TyzMGtsxdZTGuMt8XCdrTUPJ7X7Ea0V1V/CLd9
 MsJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5XoXWLkn1Wt9aoYNPF5NGkXzoG4bSNMiUG8v3sz2bxo=;
 b=diLLNT2GSeyAUJPS/dkRQzdUCYxZ6f6y3knU6G8Syem9w7Evdw9Y/Tm8eE6+WYZdj4
 d8oFNMSA/ASx0eA1p0/lDNyODge6kCfN6Eo7H56SZg3gNgUuRL8JH3N22zoDRgvr9Hs+
 CLGqIuq6j0kXoSmR0L+MlF+rxXMHtd0lhuhl/35ZLmPGxnmMttSWl0fG30DKH1xJkaAT
 ccAsfOaVxFxf/WMW0svodE+lvoHknBwH5mYlNyQF/iUzi0n25WqKD0EleyLlTjGkodba
 /LPvqz3vjQDRjovzbVIaVH/N6UsxjZ98I4GkqxrxWm9QnVizxyjF5bgKZ/wtFrTwZxO1
 VDmg==
X-Gm-Message-State: APjAAAWkt5AqwvVMlbe4rvmFAFW0tDNWXFg1rqn8vnMaZyniDOz4Ygv6
 fEMB/8sn1T17kKkyjL5EbD7drVcQQIVpaNaULTpjtA==
X-Google-Smtp-Source: APXvYqyMU2XD33BYjLM1AOT8uB8FfarvLey6kOhtzXFhW7Ckk63v7h+4hvmdoU0qoKOTh9PE8Qe/dnn/4dfpnyZts2U=
X-Received: by 2002:a05:6638:6ba:: with SMTP id
 d26mr37676012jad.23.1582569463996; 
 Mon, 24 Feb 2020 10:37:43 -0800 (PST)
MIME-Version: 1.0
References: <trinity-dcbc347f-cd14-4dcb-890c-9783cc458a06-1582568562308@3c-app-gmx-bs61>
In-Reply-To: <trinity-dcbc347f-cd14-4dcb-890c-9783cc458a06-1582568562308@3c-app-gmx-bs61>
Date: Mon, 24 Feb 2020 10:37:32 -0800
Message-ID: <CAKJyDk+=5pTvDycx5hWuesTJCZCnX6m-ydEH6d1KtPaMT238pA@mail.gmail.com>
To: Lukas Haase <lukashaase@gmx.at>
Subject: Re: [USRP-users] USRP X310 over PCIe: Recommended setup? (Windows,
 Linux, which one?)
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3763333313636990682=="
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

--===============3763333313636990682==
Content-Type: multipart/alternative; boundary="000000000000bbfed2059f56aa89"

--000000000000bbfed2059f56aa89
Content-Type: text/plain; charset="UTF-8"

Hi Lukas.   Most USRP X310 Linux users employ 10gigE to connect to the host
PC.  PCIe on the USRP X310 uses a proprietary ASIC and the driver is, as
you discovered, built on an obsolete kernel.  You could attempt to appeal
directly to NI for support if switching to 10 gigE isn't an option for you.

-Robin


On Mon, Feb 24, 2020 at 10:23 AM Lukas Haase via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> I have used USRP X310 over PCIe and gnuradio on Windows for quite a bit. I
> suffered from large connectivity issues so I wanted to switch to Linux for
> quite some time. Also, I need to start modifying gnuradio/uhd source which
> is even more painful in Windows.
>
> I set up an Ubuntu 18.04 system (which is not exactly new) and in the last
> step Linux NI RIO Installation fails. And
> https://files.ettus.com/manual/page_ni_rio_kernel.html states:
> "Currently, the latest supported kernel version is 4.2.x.". What a bummer!
>
> Is there any way to get USRP X310 + PCIe working on Ubuntu 18.04?
> If not, what is the recommended setup when someone needs PCIe, gnuradio,
> source code?
> I would really prefer a Debian-like Linux system that's not completely
> outdated (such as pre-bionic).
>
> Best,
> Lukas
>
>
> PS:
>
> $ lsb_release -a
> No LSB modules are available.
> Distributor ID: Ubuntu
> Description:    Ubuntu 18.04.4 LTS
> Release:        18.04
> Codename:       bionic
> $ uname -a
> Linux station 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb 3 14:05:59
> UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000bbfed2059f56aa89
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Lukas.=C2=A0 =C2=A0Most USRP X310 Linux users employ 10=
gigE to connect to the host PC.=C2=A0 PCIe on the USRP X310 uses a propriet=
ary ASIC and the driver is, as you discovered, built on an obsolete kernel.=
=C2=A0 You could attempt to appeal directly to NI for support if switching =
to 10 gigE isn&#39;t an option for you.<div><br></div><div>-Robin<br><div><=
br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Feb 24, 2020 at 10:23 AM Lukas Haase via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">Hi,<br>
<br>
I have used USRP X310 over PCIe and gnuradio on Windows for quite a bit. I =
suffered from large connectivity issues so I wanted to switch to Linux for =
quite some time. Also, I need to start modifying gnuradio/uhd source which =
is even more painful in Windows.<br>
<br>
I set up an Ubuntu 18.04 system (which is not exactly new) and in the last =
step Linux NI RIO Installation fails. And <a href=3D"https://files.ettus.co=
m/manual/page_ni_rio_kernel.html" rel=3D"noreferrer" target=3D"_blank">http=
s://files.ettus.com/manual/page_ni_rio_kernel.html</a> states: &quot;Curren=
tly, the latest supported kernel version is 4.2.x.&quot;. What a bummer!<br=
>
<br>
Is there any way to get USRP X310 + PCIe working on Ubuntu 18.04?<br>
If not, what is the recommended setup when someone needs PCIe, gnuradio, so=
urce code?<br>
I would really prefer a Debian-like Linux system that&#39;s not completely =
outdated (such as pre-bionic).<br>
<br>
Best,<br>
Lukas<br>
<br>
<br>
PS:<br>
<br>
$ lsb_release -a<br>
No LSB modules are available.<br>
Distributor ID: Ubuntu<br>
Description:=C2=A0 =C2=A0 Ubuntu 18.04.4 LTS<br>
Release:=C2=A0 =C2=A0 =C2=A0 =C2=A0 18.04<br>
Codename:=C2=A0 =C2=A0 =C2=A0 =C2=A0bionic<br>
$ uname -a<br>
Linux station 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb 3 14:05:59 UT=
C 2020 x86_64 x86_64 x86_64 GNU/Linux<br>
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

--000000000000bbfed2059f56aa89--


--===============3763333313636990682==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3763333313636990682==--

