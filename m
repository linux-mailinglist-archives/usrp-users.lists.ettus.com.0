Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D41169792
	for <lists+usrp-users@lfdr.de>; Sun, 23 Feb 2020 13:37:47 +0100 (CET)
Received: from [::1] (port=41240 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j5qVy-0005xv-DC; Sun, 23 Feb 2020 07:37:42 -0500
Received: from mail-oi1-f180.google.com ([209.85.167.180]:36374)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1j5qVu-0005pS-VF
 for usrp-users@lists.ettus.com; Sun, 23 Feb 2020 07:37:39 -0500
Received: by mail-oi1-f180.google.com with SMTP id c16so6401646oic.3
 for <usrp-users@lists.ettus.com>; Sun, 23 Feb 2020 04:37:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sX4URE7uqT7JFnZVHRySoWxjAj3OviRbhvg7DjuAUrQ=;
 b=IKtSERu1AAUnyPzVFsetpQohnYxnaY7fEMjNdtr5a69PDMcSTwt2GTjLzq+KOzj2y/
 oA1NuaHJOZ1IF+qU2GSaT1VFa+MakE/OdFVpUqVfSQj2KhNrrwxh6zK1nVjhVGwW2t4y
 XVhZLgyx++ZRskHfGdXs1MMPDoglNrBjffOxEjW+Dto/kPCFhUIuQGGTI+UcxREQVQze
 0tKNhe2WdnBjT0JgxA39zeMucv3vPkXHRMaOeUy4vh2iHsFNvCYFrf6RuYVFdi1vfx4S
 DuyWwGonVvIyxRoHulGJiFPXSIiU2aePx0VdwOaCY4kz71w6RNf93zHIeHWFnrXtSImZ
 BfUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sX4URE7uqT7JFnZVHRySoWxjAj3OviRbhvg7DjuAUrQ=;
 b=EntQjvqCw7frlBDsdJ1/2fDCLKPT95YeMYtYTEwvNu2xk5WswgNNvKuqahM86p0FOP
 z0ZU211JWu/7RKy06ZX5Iwjuh8pHjbPH3wP268oEF8hpzwfZlhClYt44kRgtEZlzkq/Q
 NtMjbpU2hXlGLasT1s7yfyWnzvvEwIxzGdidQ0PMVVcIM8LHZrVtKVTb9Dg9jOgIN2MB
 V4CRJ4p6+nNi14qABkQtLSaWs7HFdwp72KgkTOVW5CH5QmDmclKWk7m1yrzqn4fCdCUZ
 xGWsPqD5e59JhxQtIJUgo2uaH43MT2/Zbdr4ZUgHxoTBMfbfStrsewyP14YgT6JrGgXW
 wyog==
X-Gm-Message-State: APjAAAUzaGaSCSfVQujv+B9uv+YNpVL2YhI5pZ2C1n4Hg1+c8iFrqv5T
 eWLzOZ2+Fj67A6U42Iz1qlHytKMROh8PPA2zeH8wcdrQ4D4=
X-Google-Smtp-Source: APXvYqywnaCZw9iRKGSir2MbWWFZ8x4c7traiw10H6rEyaQsTQh7vjo+Ts1VBYQROdGfTQxT2mI3EfC0ZTOkXqLXF7U=
X-Received: by 2002:a05:6808:48b:: with SMTP id
 z11mr8699528oid.38.1582461418227; 
 Sun, 23 Feb 2020 04:36:58 -0800 (PST)
MIME-Version: 1.0
References: <105801d5e7ff$f7f2aa10$e7d7fe30$@sdr-radio.com>
 <CAGNhwTPXJP3j6xNmpjwom-+BEKf11Vv=EmYHxLK+Wd=o6YpCTw@mail.gmail.com>
 <04d301d5ea1a$1adf0390$509d0ab0$@sdr-radio.com>
In-Reply-To: <04d301d5ea1a$1adf0390$509d0ab0$@sdr-radio.com>
Date: Sun, 23 Feb 2020 07:36:47 -0500
Message-ID: <CAGNhwTPiw9JnZ9Duo2wrpyi7UUVUzrjth4JiBzJjWqE4HVhoAQ@mail.gmail.com>
To: simon@sdr-radio.com
Subject: Re: [USRP-users] UHD 3.15 LTS, X310 performance
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
Cc: USRP list <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4002340222994763161=="
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

--===============4002340222994763161==
Content-Type: multipart/alternative; boundary="000000000000b46021059f3d828b"

--000000000000b46021059f3d828b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That's great to hear, Simon! Cheers! - MLD

On Sun, Feb 23, 2020 at 2:23 AM <simon@sdr-radio.com> wrote:

> Hi,
>
>
>
> Some feedback: I=E2=80=99ve been reading the UHD code and now have the X3=
10
> running well albeit at 20Msps as the user has only GigE, but he=E2=80=99s=
 buying a
> 10 GigE card  and does have a =E2=80=98stonking=E2=80=99 Windows PC so I=
=E2=80=99ll document the
> experience. I expect we=E2=80=99ll stream sustained at 50 Msps, quite pos=
sibly much
> more.
>
>
>
> My B200 is streaming superbly at 28 Msps on a mid-range PC.
>
>
>
> Simon Brown, G4ELI
>
> https://www.sdr-radio.com
>
>
>
> *From:* Michael Dickens <michael.dickens@ettus.com>
>
>
>
> Hi Simon - When you say "but performance is not great" ... beyond CPU
> load: do you get good Tx and Rx rates (e.g., if you run "benchmark_rate")
> without underruns / overflows / late packets (etc)? What is the MTU set t=
o
> for this ENET link? 1 GbE or 10 GbE? Can you provide a little more detail
> for us to work with here? Thx! - MLD
>


--=20
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/

--000000000000b46021059f3d828b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That&#39;s=C2=A0great to hear, Simon! Cheers! - MLD</div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun,=
 Feb 23, 2020 at 2:23 AM &lt;<a href=3D"mailto:simon@sdr-radio.com">simon@s=
dr-radio.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div lang=3D"EN-GB"><div class=3D"gmail-m_-51512278372053156Wor=
dSection1"><p class=3D"MsoNormal"><span>Hi,<u></u><u></u></span></p><p clas=
s=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"=
><span>Some feedback: I=E2=80=99ve been reading the UHD code and now have t=
he X310 running well albeit at 20Msps as the user has only GigE, but he=E2=
=80=99s buying a 10 GigE card=C2=A0 and does have a =E2=80=98stonking=E2=80=
=99 Windows PC so I=E2=80=99ll document the experience. I expect we=E2=80=
=99ll stream sustained at 50 Msps, quite possibly much more.<u></u><u></u><=
/span></p><p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p><p cl=
ass=3D"MsoNormal"><span>My B200 is streaming superbly at 28 Msps on a mid-r=
ange PC.<u></u><u></u></span></p><p class=3D"MsoNormal"><span><u></u>=C2=A0=
<u></u></span></p><p class=3D"MsoNormal">Simon Brown, G4ELI<u></u><u></u></=
p><p class=3D"MsoNormal"><a href=3D"https://www.sdr-radio.com" target=3D"_b=
lank">https://www.sdr-radio.com</a><u></u><u></u></p><p class=3D"MsoNormal"=
><span><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><b><span lang=
=3D"EN-US">From:</span></b><span lang=3D"EN-US"> Michael Dickens &lt;<a hre=
f=3D"mailto:michael.dickens@ettus.com" target=3D"_blank">michael.dickens@et=
tus.com</a>&gt; <u></u><u></u></span></p><p class=3D"MsoNormal"><u></u>=C2=
=A0<u></u></p><div><p class=3D"MsoNormal">Hi Simon - When you say &quot;but=
 performance is not great&quot; ... beyond CPU load: do you get good Tx and=
 Rx rates (e.g., if you run &quot;benchmark_rate&quot;) without underruns /=
 overflows / late packets (etc)? What is the MTU set to for this ENET link?=
 1 GbE or 10 GbE? Can you provide a little more detail for us to work with =
here? Thx! - MLD<u></u><u></u></p></div></div></div></blockquote></div><br =
clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signatu=
re"><div dir=3D"ltr"><div><div dir=3D"ltr">Michael Dickens<br>Ettus Researc=
h Technical Support<br>Email: <a href=3D"mailto:support@ettus.com" target=
=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"https://ettus.com/" ta=
rget=3D"_blank">https://ettus.com/</a></div></div></div></div>

--000000000000b46021059f3d828b--


--===============4002340222994763161==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4002340222994763161==--

