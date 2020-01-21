Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EAC143A90
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2020 11:12:47 +0100 (CET)
Received: from [::1] (port=38380 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1itqWc-0008It-HF; Tue, 21 Jan 2020 05:12:46 -0500
Received: from mail-ot1-f50.google.com ([209.85.210.50]:39728)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <varban.metodiev@gmail.com>)
 id 1itqWZ-0008Cd-9d
 for usrp-users@lists.ettus.com; Tue, 21 Jan 2020 05:12:43 -0500
Received: by mail-ot1-f50.google.com with SMTP id 77so2419967oty.6
 for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2020 02:12:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NQIHSkeUK8FpCH2nEfWPna5v9aREpSENYZNEiaJMqLs=;
 b=oP4kt0vr3yb++/iM/Ddntkur8gwrcKOyBb2MR5NxNo+yjymmxUWcyA6yAA7mB6ROih
 z5rLARSDo1FDvIf/rr+lJ6ETA205ScKnzeBBgh+IBIPvDpLN//3Wqct7R9eldbKW/CfA
 mbrVHjCN4S5krV5XzL0HpYjJQJSOXLvb8Wq41QO2rga4VzZmpJZTj8/gP2sUq8+sDWaJ
 hL7C/f1BObxALDk1c0SUb9Zxun2uBZpWnKrnulPQkJv95XyxMg+SuQitt4NgXDEiqsML
 k5ktxuKbLUZWEeIwTBISBm86+KqNT8R4aG2ifU5Kmvx2pAcQ8cXK1PQ+JRuceRXuwa8n
 wypw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NQIHSkeUK8FpCH2nEfWPna5v9aREpSENYZNEiaJMqLs=;
 b=b7lKub/T+BWUCRjag+G6FYCQOXsAA3mxlb3Cph6+2+Sy7BAItoRTGMYAPkRX05fv7h
 cSFqH3xM3lOsOBX7qvdA+uwIko1OexsXqUPFTQktSvd0qWee01a8kawzqLzNSEnvfStQ
 Ugnl4twPOHtEh4OKW7M1igoIj7zFolZNGx9CXBgUuVZ1yQr3V4LztejZRPNo+rGNLuf5
 CeIM8NzanSMXmuMfPW2qwRGS4MbK2lMZknr950aBIC7Zlfv57aIy/NZfFva3JKh3+LDC
 XgeD/c9kMFgOT0gWm7SfW0aYELEptdc4eCp4dNXFhjsHalJy959TR9LscBnC1xC0pDFJ
 d7tw==
X-Gm-Message-State: APjAAAXF3BGOS9yAT4KXpSqd1MznCQpGsdB4XHlaeWZw6gSYdcrb4I8+
 74PosBk7Sc7C9yRo+rSXh7mo6Njr32znbzRPKr8=
X-Google-Smtp-Source: APXvYqzCgX/ICFNrN1RKPoAN5ZVor7uNKsB2cgFkmeScgeWy17p3nHQ64Ge6HqPjFXqdqZzkrMzhury9RiSqfxY457E=
X-Received: by 2002:a9d:1c95:: with SMTP id l21mr2909089ota.271.1579601522355; 
 Tue, 21 Jan 2020 02:12:02 -0800 (PST)
MIME-Version: 1.0
References: <CANzM3hyO-Gf3hOnBes9avnOoXxL5epFaW5tqsWrLafssBTqEmQ@mail.gmail.com>
In-Reply-To: <CANzM3hyO-Gf3hOnBes9avnOoXxL5epFaW5tqsWrLafssBTqEmQ@mail.gmail.com>
Date: Tue, 21 Jan 2020 12:11:09 +0200
Message-ID: <CAKA0MUjbph+frOtJGLi+W51E3sb1nDHXNV8jMzWYkJk__PaC7Q@mail.gmail.com>
To: Arash Jafari <arash.jafari.telecom@gmail.com>
Subject: Re: [USRP-users] 12 bits I/Q samples
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
From: Varban Metodiev via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Varban Metodiev <varban.metodiev@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1846016877099428928=="
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

--===============1846016877099428928==
Content-Type: multipart/alternative; boundary="000000000000a070de059ca3a33d"

--000000000000a070de059ca3a33d
Content-Type: text/plain; charset="UTF-8"

Hi Arash,

May you please provide some examples of what samples you've gathered?

Thanks,
Varban

On Tue, Jan 21, 2020 at 12:07 PM Arash Jafari via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello Everybody,
>
> according to FPGA implementation of my board which a USRP-b200, the Least
> significant 4bits of I or Q samples are always 0 (0x???0), which in turn
> means the recorded sample as short complex 16 bits (sc16) cpu format should
> have four zero at LSB.
> But almost 10% of recorded samples do not obey this rule!!!!
> Any comment is highly appreciated!
>
> Kind regards,
>
> --
>
> Dipl.-Ing. Arash Jafari
>
> Phone: +43 650 844 3617
> E-mail: arash.jafari.telecom@gmail.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a070de059ca3a33d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Arash,<div><br></div><div>May you please provide s=
ome examples of what samples you&#39;ve gathered?</div><div><br></div><div>=
Thanks,=C2=A0</div><div>Varban</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 21, 2020 at 12:07 PM Arash =
Jafari via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">Hello Everybody,<div><br></div><div=
>according to FPGA implementation of my board which a USRP-b200, the Least =
significant 4bits of I or Q samples are always 0 (0x???0), which in turn me=
ans the recorded sample as short complex 16 bits (sc16) cpu format should h=
ave four zero at LSB.=C2=A0</div><div>But almost 10% of recorded samples do=
 not obey this rule!!!!</div><div>Any comment is highly appreciated!</div><=
div><br></div><div>Kind regards,</div><div><div><br></div>-- <br><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><b style=3D"fon=
t-family:arial,sans-serif;font-size:16px">=C2=A0</b><font face=3D"monospace=
, monospace" color=3D"#000000" size=3D"2">=C2=A0=C2=A0</font><div><font fac=
e=3D"monospace, monospace" color=3D"#000000" size=3D"2">Dipl.-Ing. Arash Ja=
fari</font></div><div><font color=3D"#000000"><br></font></div><font color=
=3D"#000000" size=3D"2"><span style=3D"font-family:monospace">Phone: +43 65=
0 844 3617</span><br clear=3D"none" style=3D"font-family:monospace"></font>=
<div><span style=3D"font-family:monospace"><font color=3D"#000000" size=3D"=
2">E-mail: <a href=3D"mailto:arash.jafari.telecom@gmail.com" target=3D"_bla=
nk">arash.jafari.telecom@gmail.com</a></font></span></div></div></div></div=
></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a070de059ca3a33d--


--===============1846016877099428928==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1846016877099428928==--

