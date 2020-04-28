Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F58F1BCEAA
	for <lists+usrp-users@lfdr.de>; Tue, 28 Apr 2020 23:30:12 +0200 (CEST)
Received: from [::1] (port=45302 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jTXnn-00070S-9u; Tue, 28 Apr 2020 17:30:03 -0400
Received: from mail-ua1-f43.google.com ([209.85.222.43]:38033)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1jTXnj-0006w9-GE
 for usrp-users@lists.ettus.com; Tue, 28 Apr 2020 17:29:59 -0400
Received: by mail-ua1-f43.google.com with SMTP id f5so104482ual.5
 for <usrp-users@lists.ettus.com>; Tue, 28 Apr 2020 14:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c7ehOgiZhTd/zKHutN6na6r/rsH5IEqTihKrsbm1LyQ=;
 b=2QyDMJteOWzXxip82IV3M/Fylx3VW7a+ja2HUMTTGZSNnE6ox/u/EHu3LZsW6HNdJK
 rtVmwuZcKxbJ9Ro9VC9A2xMCC+h5PV7AZ15c3N4DOk8dZPIfh2gUDwCgioSpUy/ldZR1
 oXkolLFjTwUppsOQZX1FOLfYMlNps7Wa3Rfu+PzGIPLmydjc1SdPqHCPoj/TrCNMYM03
 bTHvvnwDa2PZozLskajgqvPNsMj105C+I/Ot9vSNGtk40LwpzH4AU1WaVHae3ZKYF9cV
 LMGPV2zYNP5w9X+28a7mscne8iDQ2Z0VrB7K32Ea5fLY+5ueNBPkpXeMmvM/JmRU8tiL
 OPcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c7ehOgiZhTd/zKHutN6na6r/rsH5IEqTihKrsbm1LyQ=;
 b=p7yDLJEuxBobzDvG2gR/DLFh1lSg71JQziQbR1No6Ga8pxqyn9z+CAeTtdyndp5bVi
 WO5tyWx4BZW8TT4ryzlhKuExkTUCZsiWgBQG+syrKFVFTaE5PXXK+YbOdMefBRXRSI22
 YPATss6WSLsJUrCP7Gm//0zLwjFmc74vJELJqsVyybn1eGIxpknfDS6NRoBE03x+WkhU
 vdAPUkktPu6dIpxgwJ6Ru4C14DSIkBIfbYCyWxyEBMVm5VGz9Bsj3WosI/k1ZVj7+uSk
 o45SQJaMplQBGi3ue2pRGbaNvESXMlKL90ssc9NgjOmALGDdDZM7UKZmICnP4m2sXd+0
 lcpw==
X-Gm-Message-State: AGi0PuYEOO1GJt1jgU5WNYx9zIPYb6/EcE9oUfzbAaAKkRCn2wZNVCNi
 2IZWGkK8Uoi9t8eCvfJjArlZYPcpcILr05RPhddNLUUH
X-Google-Smtp-Source: APiQypK9G2SPlK9UMz66XpQVOUhmBqlyA00ub43gdIASeXmCorIznxdjr+uUHs01/JJW9rTsLWTheZm6gXu+jhl9Z3g=
X-Received: by 2002:ab0:cd:: with SMTP id 71mr21218144uaj.109.1588109358883;
 Tue, 28 Apr 2020 14:29:18 -0700 (PDT)
MIME-Version: 1.0
References: <86fb92927fdf42afb8b756126d044b94@boeing.com>
 <CAGNhwTMd0St0YWJtVhKtvJo-0sRMyuvXy7HH8PYt0bFusSx69w@mail.gmail.com>
 <7ab49213bfe14e45b43b2090067efe95@boeing.com>
In-Reply-To: <7ab49213bfe14e45b43b2090067efe95@boeing.com>
Date: Tue, 28 Apr 2020 17:29:08 -0400
Message-ID: <CAGNhwTM3fnDXswkvSJJ=GU-k_5wCRdxpOK+Zex75JcWucQh+2w@mail.gmail.com>
To: "Clark (US), Kenneth C" <kenneth.c.clark2@boeing.com>
Subject: Re: [USRP-users] Build Error in MSVC 2017 in time_spec.hpp
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1767758576859812588=="
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

--===============1767758576859812588==
Content-Type: multipart/alternative; boundary="0000000000003376bc05a46086cc"

--0000000000003376bc05a46086cc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

HI Clark - I'll try to work with you off-list. - MLD
---
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/


On Mon, Apr 27, 2020 at 1:41 PM Clark (US), Kenneth C <
kenneth.c.clark2@boeing.com> wrote:

> If I remove =E2=80=9Cconstexpr=E2=80=9D completely, thus =E2=80=9Cstatic =
double ASAP =3D 0.0 ;=E2=80=9D, I
> get a different error, E1592, =E2=80=9Ca member with an in-class initiali=
ze must be
> const=E2=80=9D.
>
>
>
> I also did a =E2=80=98update=E2=80=99 to my MSVC 2017 installation, to ma=
ke sure it is
> current, but that did not change anything.
>
>
>
> Trying =E2=80=9Cstatic const double ASAP =3D 0.0 ;=E2=80=9D, I get error =
E1591, a member of
> type =E2=80=9Cconst double=E2=80=9D cannot have an in-class initializer.
>
>
>
> It looks like making it =E2=80=9Cconst double ASAP =3D 0.0  ;=E2=80=9D, g=
ets rid of the that
> error.
>
>
>
> But then I end up with 100=E2=80=99s of errors, C2440 =E2=80=98default ar=
gumnet=E2=80=99: cannot
> convert from =E2=80=98unknown=E2=80=99 to uhd::timespect_t(), and E2597, =
illegal reference
> to non-static member =E2=80=98uhd::time_spec_t::ASAP.
>
>
>
> Any suggestions?
>
>
>
> Regards,
>
>
>
> Ken
>
>
>
> *From:* Michael Dickens [mailto:michael.dickens@ettus.com]
> *Sent:* Monday, April 27, 2020 17:17
> *To:* Clark (US), Kenneth C <kenneth.c.clark2@boeing.com>
> *Cc:* usrp-users@lists.ettus.com; support@ettus.com
> *Subject:* Re: Build Error in MSVC 2017 in time_spec.hpp
>
>
>
> Hi Ken - Try removing the "constexpr" entirely. We love "const" and
> "constexpr", but some compilers don't love them in various forms /
> combinations :) Hopefully that will get you past that issue. - MLD
>
> ---
>
> Michael Dickens
> Ettus Research Technical Support
> Email: support@ettus.com
> Web: https://ettus.com/
>
>
>
>
>
> On Mon, Apr 27, 2020 at 1:08 PM Clark (US), Kenneth C <
> kenneth.c.clark2@boeing.com> wrote:
>
> Hello,
>
> Trying to build the "host" applications on Windows 10, MSVC 2017 (aka 141=
).
>
>
> The line below in time_spec.hpp
>
> static constexpr double ASAP =3D 0.0;
>
>
> Generates error E0145 in MSVC 2017, "member "uhd::time_spec_t::ASAP" may
> not be initialized"
>
> I have tried not initializing it, making it const instead of constexpr,
> but still get errors.
>
>
> This same code base builds find in Linux (current Ubuntu distro).
>
>
> Any ideas?
>
> Thanks,
>
> Ken
>
>

--0000000000003376bc05a46086cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">HI Clark - I&#39;ll try to work with you off-list. - MLD<d=
iv><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_=
signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><di=
v><div dir=3D"ltr"><div><div dir=3D"ltr">---</div><div dir=3D"ltr">Michael =
Dickens<br>Ettus Research Technical Support<br>Email: <a href=3D"mailto:sup=
port@ettus.com" target=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"=
https://ettus.com/" target=3D"_blank">https://ettus.com/</a></div></div></d=
iv></div></div></div></div></div></div></div></div><br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 27=
, 2020 at 1:41 PM Clark (US), Kenneth C &lt;<a href=3D"mailto:kenneth.c.cla=
rk2@boeing.com">kenneth.c.clark2@boeing.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_894856185247632725WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">If I remove =E2=80=9Cconstexpr=E2=80=9D comp=
letely, thus =E2=80=9Cstatic double ASAP =3D 0.0 ;=E2=80=9D, I get a differ=
ent error, E1592, =E2=80=9Ca member with an in-class initialize must be con=
st=E2=80=9D.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">I also did a =E2=80=98update=E2=80=99 to my =
MSVC 2017 installation, to make sure it is current, but that did not change=
 anything.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Trying =E2=80=9Cstatic const double ASAP =3D=
 0.0 ;=E2=80=9D, I get error E1591, a member of type =E2=80=9Cconst double=
=E2=80=9D cannot have an in-class initializer.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">It looks like making it =E2=80=9Cconst doubl=
e ASAP =3D 0.0 =C2=A0;=E2=80=9D, gets rid of the that error.<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">But then I end up with 100=E2=80=99s of erro=
rs, C2440 =E2=80=98default argumnet=E2=80=99: cannot convert from =E2=80=98=
unknown=E2=80=99 to uhd::timespect_t(), and E2597, illegal reference to non=
-static
 member =E2=80=98uhd::time_spec_t::ASAP.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Any suggestions?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Regards,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Ken<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> Michael Dickens [mailto:<a href=3D"mailto:michael.dickens@=
ettus.com" target=3D"_blank">michael.dickens@ettus.com</a>]
<br>
<b>Sent:</b> Monday, April 27, 2020 17:17<br>
<b>To:</b> Clark (US), Kenneth C &lt;<a href=3D"mailto:kenneth.c.clark2@boe=
ing.com" target=3D"_blank">kenneth.c.clark2@boeing.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a>; <a href=3D"mailto:support@ettus.com" target=
=3D"_blank">support@ettus.com</a><br>
<b>Subject:</b> Re: Build Error in MSVC 2017 in time_spec.hpp<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Hi Ken - Try removing the &quot;constexpr&quot; enti=
rely. We love &quot;const&quot; and &quot;constexpr&quot;, but some compile=
rs don&#39;t love them in various forms / combinations :) Hopefully that wi=
ll get you past that issue. - MLD<u></u><u></u></p>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal">---<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Michael Dickens<br>
Ettus Research Technical Support<br>
Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus=
.com</a><br>
Web: <a href=3D"https://ettus.com/" target=3D"_blank">https://ettus.com/</a=
><u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Apr 27, 2020 at 1:08 PM Clark (US), Kenneth =
C &lt;<a href=3D"mailto:kenneth.c.clark2@boeing.com" target=3D"_blank">kenn=
eth.c.clark2@boeing.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:4=
.8pt;margin-right:0in">
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">Hello,<br>
<br>
Trying to build the &quot;host&quot; applications on Windows 10, MSVC 2017 =
(aka 141).<br>
<br>
<br>
The line below in time_spec.hpp<br>
<br>
static constexpr double ASAP =3D 0.0;<br>
<br>
<br>
Generates error E0145 in MSVC 2017, &quot;member &quot;uhd::time_spec_t::AS=
AP&quot; may not be initialized&quot;<br>
<br>
I have tried not initializing it, making it const instead of constexpr, but=
 still get errors.<br>
<br>
<br>
This same code base builds find in Linux (current Ubuntu distro).<br>
<br>
<br>
Any ideas?<br>
<br>
Thanks,<br>
<br>
Ken<u></u><u></u></p>
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--0000000000003376bc05a46086cc--


--===============1767758576859812588==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1767758576859812588==--

