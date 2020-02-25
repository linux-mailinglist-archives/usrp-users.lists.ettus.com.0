Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D47016C0D3
	for <lists+usrp-users@lfdr.de>; Tue, 25 Feb 2020 13:30:54 +0100 (CET)
Received: from [::1] (port=44684 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6ZMT-0005m9-3o; Tue, 25 Feb 2020 07:30:53 -0500
Received: from mail-qk1-f180.google.com ([209.85.222.180]:33996)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wddias@gmail.com>) id 1j6ZMO-0005f7-Ly
 for usrp-users@lists.ettus.com; Tue, 25 Feb 2020 07:30:48 -0500
Received: by mail-qk1-f180.google.com with SMTP id 11so7634466qkd.1
 for <usrp-users@lists.ettus.com>; Tue, 25 Feb 2020 04:30:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2kQVXQCvIg/MdBPy4ihueFS9XyZSziZf9MBD9vq9gIo=;
 b=qZ5v6dUGgoHRz035FV7lBhfjBmUz6SnsxBYwbbY6QSz/M1gSViDF1KP+eH43zLv0cV
 UJ8efnI3VL7IgfxyF66x/er0tcnPdC4jYaemuIqOAO9crWTSilCwJXoyelvntUHBofyw
 wxFhyZibDxGE4Klc5Knzzu2UKpq90I1g1ChOMUgTzrGng69KftFbHXKemEN2L4PG+8A8
 04ZqnV4dLUeNaoMUiljMU4MGDri8JstefvGBB3fuE+quBL+Le8XdbUPj0EPfnRozzkUd
 8bKlIiVr8O4GcZ1fSlt0s4UM6/lUx3wbxcEPtCzuNRpV87Q+P2prDb4FLf1v0DhSaH9t
 fu3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2kQVXQCvIg/MdBPy4ihueFS9XyZSziZf9MBD9vq9gIo=;
 b=RE39w2Y7JORPtC/BFXKcDie5ScjoKBLf1LMhoj+m8t5qxtmtiW71Uk0GP1a8ZGgYE+
 D9BuOhbCrLE41AmsuUeyp17fWaXtPSvlUbWBSEhEKQhdU2YKBd2EpZlRiFYwNnv/Ryr+
 e0AGTL9T1Taq9l82zoXzU/0v5Z34Zu4rP00FeLVrz5CK1oZYVp5jPHkUx69FrmMHNgBJ
 JTqhDHY2dlMbnzq962I5j3xqWa05o2fKf2GuLULdbcaHp4eSJdup/ZXfaH/sKb/5yqCM
 1vuQmaupyRSoTEyE+mfDgQcYAqOLCzO/bfiF/wwQFxSe1iD2VV39JuMS6nuMpzow2ZFE
 Md1g==
X-Gm-Message-State: APjAAAU7ZCysKwaHHS/RB/qiG/LOGO1b3CSdXtKarEGxPJBCi3EvljgK
 5AMo2wiuIoCoc4y87ky3fqLh21XQi6oUip3PuLk=
X-Google-Smtp-Source: APXvYqy9i+TiCW62CweaiLzD8YCVz0WkKZOIf40ZLtpM1c3707Upy2PC2MiN1vATMw4AgESqnQBGAz3fWhzo/Baj+Rk=
X-Received: by 2002:ae9:ef4c:: with SMTP id d73mr8049832qkg.201.1582633808034; 
 Tue, 25 Feb 2020 04:30:08 -0800 (PST)
MIME-Version: 1.0
References: <trinity-dcbc347f-cd14-4dcb-890c-9783cc458a06-1582568562308@3c-app-gmx-bs61>
In-Reply-To: <trinity-dcbc347f-cd14-4dcb-890c-9783cc458a06-1582568562308@3c-app-gmx-bs61>
Date: Tue, 25 Feb 2020 09:29:55 -0300
Message-ID: <CALSKgPwn+WgTgtSrkNRwB_vbsOU8BHc7Xb-fAf1JOGTdEF5SGw@mail.gmail.com>
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
From: Wheberth Damascena Dias via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wheberth Damascena Dias <wheberth@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1792622277968852142=="
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

--===============1792622277968852142==
Content-Type: multipart/alternative; boundary="000000000000f0001d059f65a580"

--000000000000f0001d059f65a580
Content-Type: text/plain; charset="UTF-8"

Hi Lukas, I use pretty much this setup (Ubuntu 18 + X310 over PCIe).

You can install kernel 4.15.0 from ubuntu repository and reinstall the
driver. It work just fine. You may also need to download some RFNoC XML
files that are missing on Ubuntu repositories (see:
https://bugs.launchpad.net/ubuntu/+source/uhd/+bug/1780805).

Make sure to configure the PCIe slot to PCIe Gen 1 on the bios.

Regards,
Wheberth

Em seg, 24 de fev de 2020 15:23, Lukas Haase via USRP-users <
usrp-users@lists.ettus.com> escreveu:

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

--000000000000f0001d059f65a580
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Lukas, I use pretty much this setup (Ubuntu 18 + X310 =
over PCIe).=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto">You can inst=
all kernel 4.15.0 from ubuntu repository and reinstall the driver. It work =
just fine. You may also need to download some RFNoC XML files that are miss=
ing on Ubuntu repositories (see:=C2=A0</div><div dir=3D"auto"><a href=3D"ht=
tps://bugs.launchpad.net/ubuntu/+source/uhd/+bug/1780805">https://bugs.laun=
chpad.net/ubuntu/+source/uhd/+bug/1780805</a>).<br></div><div dir=3D"auto">=
<br></div><div dir=3D"auto">Make sure to configure the PCIe slot to PCIe Ge=
n 1 on the bios.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Regards=
,</div><div dir=3D"auto">Wheberth</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">Em seg, 24 de fev de 2020 15:23, Luk=
as Haase via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">u=
srp-users@lists.ettus.com</a>&gt; escreveu:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">Hi,<br>
<br>
I have used USRP X310 over PCIe and gnuradio on Windows for quite a bit. I =
suffered from large connectivity issues so I wanted to switch to Linux for =
quite some time. Also, I need to start modifying gnuradio/uhd source which =
is even more painful in Windows.<br>
<br>
I set up an Ubuntu 18.04 system (which is not exactly new) and in the last =
step Linux NI RIO Installation fails. And <a href=3D"https://files.ettus.co=
m/manual/page_ni_rio_kernel.html" rel=3D"noreferrer noreferrer" target=3D"_=
blank">https://files.ettus.com/manual/page_ni_rio_kernel.html</a> states: &=
quot;Currently, the latest supported kernel version is 4.2.x.&quot;. What a=
 bummer!<br>
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
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000f0001d059f65a580--


--===============1792622277968852142==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1792622277968852142==--

