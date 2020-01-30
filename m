Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF1814E4C5
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jan 2020 22:26:04 +0100 (CET)
Received: from [::1] (port=55836 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ixHK7-0005uX-07; Thu, 30 Jan 2020 16:26:03 -0500
Received: from mail-lj1-f179.google.com ([209.85.208.179]:34689)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <wandrewp@gmail.com>) id 1ixHK3-0005m9-Cy
 for usrp-users@lists.ettus.com; Thu, 30 Jan 2020 16:25:59 -0500
Received: by mail-lj1-f179.google.com with SMTP id x7so4993391ljc.1
 for <usrp-users@lists.ettus.com>; Thu, 30 Jan 2020 13:25:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8oAxu7VUztSEejvwsRncsl2rSpKI7ar63bCEF8HHS9I=;
 b=SrPYTyYx4ACakRQxZsO2JdUKuUmBUKi0POdw8hfkniQ4ndUUTa1B4y1kDn6AcPJb+G
 5Xeb0lxzcU+RcEbQ626WQtP2nyTW6hhK6y1XTgx33gUJcTFKfizFKgGqvlt0PknJrk7F
 yDdF7a25O8CAEK+k7AFGztlY7wHqe3ECH2ZVfrdNqOEfBesi0hNmaFfzMjjWJJ3iNen6
 FNX6grkBqPz94yV2Z/00o6PF/3R3r1foFL/gd3owdI5XOFqzRra/redCbcgDvFRlgftZ
 yQ67+/PZ1p9NAswNeooCxGhz4RqRegA2JehWHKOxX3Ee5JYLrm8DTJ1qKY7MEYJaydR3
 e+3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8oAxu7VUztSEejvwsRncsl2rSpKI7ar63bCEF8HHS9I=;
 b=oGVi6DmYACv3QCGtz5oxz1AALdIb5jz2W9Eojbz4vcQo1UXi84KMUURkiYP9s/jK/H
 WrCGUx46B/Eg2RyHWz+KRHBapCLiCJKGIIAWfzvSwd3hGnOoXUq5jXeqaV9OuoPB9QHw
 NoQClGaP3OPyC6oFuV1pfJ86svlFbO0A3yKM1CaB8xUU71h1JDPGkrS2YBXkDoW0kf0D
 LLxxTckXPNTmN6wLHI53bb7Eg6N2/RoE/3C/3sizIJda7X5vlWnU28FbVvPnWnKr611F
 sia/XBQqZ8tZ/4vLxIBVDjrgsr/3aYlVSC8sPsHkvtkyiviZSQClYtX7lgBYVuzIMZML
 Hg/g==
X-Gm-Message-State: APjAAAVC0XVvotKrUAe6z4bPLvt3nQctj16gOeUduohTL71sdOiwmxwh
 /2rIdEJ9bZy+ACuTJwtGrFS6bAzb3+pYw9fBGVA=
X-Google-Smtp-Source: APXvYqxdwzo9QopEr4mRs/WK04VELY0kXXcNskiV5LutrvrP4qCRIDO886683cnWZNbV20UQ0yXIul5PTuB0NAFvuE0=
X-Received: by 2002:a2e:9e19:: with SMTP id e25mr4308673ljk.179.1580419517955; 
 Thu, 30 Jan 2020 13:25:17 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSeb6wn_EVMtHKOr4cz98yRbkw4VDZpcdXEY1J+XWNN4g@mail.gmail.com>
 <CAB50+dR9Cmiwps1k=NAabw-xkJ8gibFhKt=1wOFhrhfH5CCo1A@mail.gmail.com>
 <CADRnH20N8CKzGdOf2qBNCtBdzqg7kqCgk3XAga8T5cR=HjTieA@mail.gmail.com>
In-Reply-To: <CADRnH20N8CKzGdOf2qBNCtBdzqg7kqCgk3XAga8T5cR=HjTieA@mail.gmail.com>
Date: Thu, 30 Jan 2020 16:15:18 -0500
Message-ID: <CAB50+dRxmdFPqj6bw0hMefw=XRhnVtVASE9nzoBONvz9G6QnCA@mail.gmail.com>
To: EJ Kreinar <ejkreinar@gmail.com>
Subject: Re: [USRP-users] RFNOC_OOT_SRCS cleared in top/n3xx/Makefile.srcs
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
From: Andrew Payne via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrew Payne <wandrewp@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>, Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============9038225691950550857=="
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

--===============9038225691950550857==
Content-Type: multipart/alternative; boundary="000000000000f6c16c059d621797"

--000000000000f6c16c059d621797
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Not to change the original intent of this question: 1. What=E2=80=99s the
recommended combination (versions) of UHD and Gnuradio? 2. Do you recommend
pybombs (I installed from source which was slightly painful but now that I
got the dependencies should be smoother if I do it again).

On Thu, Jan 30, 2020 at 15:57 EJ Kreinar <ejkreinar@gmail.com> wrote:

> Whoa there,
>
> I havent updated any of my code to UHD-3.15 yet so you're a bit ahead of
> me! I usually make the relevant PRs if/when OOT build process breaks -- s=
o
> I'd recommend sending over the relevant PR to fpga repo? Will probably he=
lp
> me a few months down the line :P
>
> Thanks!
> EJ
>
> On Wed, Jan 29, 2020 at 5:28 PM Andrew Payne via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> I had the same issues! I just ended up putting my verilog file paths in
>> Makefile.n3xx.inc and it works. This might need to be fixed unless I did
>> something wrong.
>>
>> On Wed, Jan 29, 2020 at 16:18 Rob Kossler via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> I have been struggling all day with why I can't build my OOT rfnoc
>>> blocks for the N310 using v3.15.0.0.  It appears that the problem is th=
at
>>> there is a file top/n3xx/Makefile.srcs that is clearing the RFNOC_OOT_S=
RCS
>>> variable after it is set in the users OOT makefile. I just commented th=
e
>>> line in top/n3xx/Makefile.srcs and that seems to do the trick.  Is this=
 a
>>> known issue?
>>>
>>>
>>> # Makefile.n3xx.inc
>>> ...
>>> include $(BASE_DIR)/n3xx/Makefile.OOT.inc
>>> include $(BASE_DIR)/n3xx/Makefile.srcs
>>> ...
>>>
>>> # Makefile.srcs
>>> RFNOC_OOT_SRCS =3D \
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000f6c16c059d621797
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Not to change the original intent of this question: =
1. What=E2=80=99s the recommended combination (versions) of UHD and Gnuradi=
o? 2. Do you recommend pybombs (I installed from source which was slightly =
painful but now that I got the dependencies should be smoother if I do it a=
gain).=C2=A0</div></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Thu, Jan 30, 2020 at 15:57 EJ Kreinar &lt;<a href=
=3D"mailto:ejkreinar@gmail.com">ejkreinar@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Whoa there,=C2=A0<div><br>=
</div><div>I havent updated any of my code to UHD-3.15 yet so you&#39;re a =
bit ahead of me! I usually make the relevant PRs if/when OOT build process =
breaks -- so I&#39;d recommend sending over the relevant PR to fpga repo? W=
ill probably help me a few months down the line :P<br></div><div><br></div>=
<div>Thanks!<br>EJ</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, Jan 29, 2020 at 5:28 PM Andrew Payne via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div><div dir=3D"auto">I had the same issues! I=
 just ended up putting my verilog file paths in Makefile.n3xx.inc and it wo=
rks. This might need to be fixed unless I did something wrong.=C2=A0</div><=
/div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Wed, Jan 29, 2020 at 16:18 Rob Kossler via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div>I have been struggling all day with why I can&#3=
9;t build my OOT rfnoc blocks for the N310 using v3.15.0.0.=C2=A0 It appear=
s that the problem is that there is a file top/n3xx/Makefile.srcs that is c=
learing the RFNOC_OOT_SRCS variable after it is set in the users OOT makefi=
le. I just commented the line in top/n3xx/Makefile.srcs and that seems to d=
o the trick.=C2=A0 Is this a known issue?</div><div><br></div><div><br></di=
v># Makefile.n3xx.inc<div>...<br><div>include $(BASE_DIR)/n3xx/Makefile.OOT=
.inc<br>include $(BASE_DIR)/n3xx/Makefile.srcs<br></div></div><div>...</div=
><div><br></div><div># Makefile.srcs</div><div>RFNOC_OOT_SRCS =3D \<br></di=
v></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--000000000000f6c16c059d621797--


--===============9038225691950550857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9038225691950550857==--

