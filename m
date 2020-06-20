Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C13BE20210F
	for <lists+usrp-users@lfdr.de>; Sat, 20 Jun 2020 05:45:48 +0200 (CEST)
Received: from [::1] (port=58310 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jmURs-0003YV-PQ; Fri, 19 Jun 2020 23:45:44 -0400
Received: from mail-ej1-f48.google.com ([209.85.218.48]:45441)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <alex.m.humberstone@gmail.com>)
 id 1jmURo-0003VG-OE
 for usrp-users@lists.ettus.com; Fri, 19 Jun 2020 23:45:40 -0400
Received: by mail-ej1-f48.google.com with SMTP id o15so12359263ejm.12
 for <usrp-users@lists.ettus.com>; Fri, 19 Jun 2020 20:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=anNoRoz2M2INOsx1Fpt3RyNXFyLnlAz967A+ObqgWpE=;
 b=ecagkykMhXOMjOq1eN992sBnn+cQQJSaYq3M7u4mdf9T7aaCqmeCAfy1D8WhXurBwG
 tpEF2UOU/ecWsmeLGYE8SIm4LHFEiCNpNNLLiIGJINLzzYcAQJXvdMUZS8HRFibZIFLi
 LbNiKwaWNVwvr1foRpo64CCXpjuQMnIj0iMgucrcsEH2DhjbDogbQPv7n6QfLL+Bg84S
 CS5dAw9iGoNxAKUN7RX2gca6+l5jLZnECTsdLj3SfvsPq/k5VugQM5PWkCcursC3dM0U
 qMrCAp7dzkj2YnRyW91wYSGIXNrBlX3/T4LV9O+Za7FExnmifep0FwvKAPulCl0q3/vx
 FjMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=anNoRoz2M2INOsx1Fpt3RyNXFyLnlAz967A+ObqgWpE=;
 b=eZDs6vmTAp1C3N2i5yB+7SlH1DH71UV8YXLcRoix5mXL+ajnmDa6jajxdFzzqEc/wC
 nSxGss1X5eK3OK1kGadFIDP/4qyj+u7MdozkriwC9cmjcPc7YAHCuAHBF2obuvrDJWtD
 PUXFwYLmo0hUo4/FD05R8bOne+4HJev43dm1kDG3lCsrfvvk/YampLxSVn5px/vpC5iu
 yNmKthLO5h6c0eca4yHJKjq+syzavr1HMVyyzGmuTVSXr2ylk2KQVNMXcvUJ2b9f94UJ
 ONnUyEhKTN2WF3k3uYn4JH9rDzmAAbaYQBsSmk6iA9wF8Lu6wKEHX95RhtWpEZprphEQ
 7cvw==
X-Gm-Message-State: AOAM532KuVgGTRSE39xO0QFaKo0rZyNK2R9/6OR0VctBksPbQa54XXQg
 fc44QxN1C/RhkHg/Rmy20txn8zu/RZT6v8fclHOkSQ==
X-Google-Smtp-Source: ABdhPJzNyn0qNINIlP+4ilTQH4HARViFM5Fx5kLyMb/Iy+7wC1bBkgmHQ6dcNtM1zIbpARmNLlduDmEFSxu4zx+ei4Y=
X-Received: by 2002:a17:906:f913:: with SMTP id
 lc19mr6323123ejb.286.1592624699696; 
 Fri, 19 Jun 2020 20:44:59 -0700 (PDT)
MIME-Version: 1.0
References: <SN6PR09MB3726D7D87F81583127681C3FEC980@SN6PR09MB3726.namprd09.prod.outlook.com>
In-Reply-To: <SN6PR09MB3726D7D87F81583127681C3FEC980@SN6PR09MB3726.namprd09.prod.outlook.com>
Date: Fri, 19 Jun 2020 22:44:23 -0500
Message-ID: <CAE0dfYZz1vrKBZ26jyaaV3LkC+gk1mTZ2uJHdmP3-HZQ6TuV+Q@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Cc: "discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] 2021 IEEE Aerospace Conference
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Alex Humberstone via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alex Humberstone <alex.m.humberstone@gmail.com>
Content-Type: multipart/mixed; boundary="===============5221883694675547804=="
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

--===============5221883694675547804==
Content-Type: multipart/alternative; boundary="0000000000007c6b1705a87bd522"

--0000000000007c6b1705a87bd522
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Eugene, the conference looks interesting. Where can we find the program for
past years to get a feel for the conference? I didn't see this on the
website. Thanks.


On Fri, 19 Jun 2020 at 17:02, Eugene Grayver via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
>
>
> I am chairing the Software Defined and Cognitive Radio session at the
> upcoming IEEE Aerospace Conference (http://www.aeroconf.org).  This large
> conference will take place March 6-13, 2021 in Big Sky, Montana.  The
> conference provides a world-class technical program and provides
> excellent opportunities for both networking and recreation. This is one
> of the few conferences where SDR can be put in the context of a complete
> system and can be applied to new missions and concepts of operations.
>
>
>
> Last year there were a few papers dealing with application of machine/dee=
p
> learning to radio design.  I hope to see even more next year!
>
> Abstracts are due soon, but I can take them a bit later as well, while
> the full paper is due end of October.  This session will focus on flexibl=
e
> radio architectures, including the use of GPPs, GPUs,  and FPGAs.
> Reports of existing systems and testbeds are of significant interest.
> This year I=E2=80=99d like to introduce work related to machine learning =
as applied
> to wireless communications.
>
>
>
> *Please forward this to your colleagues working in the areas of SDR and
> cognitive radio.*
>
>
> Regards,
>
> Eugene.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--=20
Sincerely,
Alex-M-Humberstone
PhD Student
Klipsch School of Electrical Engineering
New Mexico State University
Las Cruces, New Mexico

--0000000000007c6b1705a87bd522
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:monospace;font-size:large">Eugene, the conference looks interestin=
g. Where can we find the program for past years to get a feel for the confe=
rence? I didn&#39;t see this on the website. Thanks.</div><div class=3D"gma=
il_default" style=3D"font-family:monospace;font-size:large"><br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fr=
i, 19 Jun 2020 at 17:02, Eugene Grayver via USRP-users &lt;<a href=3D"mailt=
o:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_2041136934660033671WordSection1">
<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-serif">Hel=
lo,<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-serif"><u>=
</u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-serif;colo=
r:black">I am chairing the Software Defined and Cognitive Radio session at =
the upcoming IEEE Aerospace Conference (<a href=3D"http://www.aeroconf.org/=
" target=3D"_blank">http://www.aeroconf.org</a>).
 =C2=A0This large conference will take place March </span><span style=3D"fo=
nt-size:10pt;font-family:&quot;Arial&quot;,sans-serif">6<span style=3D"colo=
r:black">-</span>13<span style=3D"color:black">, 20</span>21<span style=3D"=
color:black"> in Big Sky, Montana.=C2=A0 The conference
</span>provides <span style=3D"color:black">a world-class technical program=
 and provides excellent opportunities for both networking and recreation</s=
pan>.
<span style=3D"color:black">This is one of the few conferences where SDR ca=
n be put in the context of a complete system and can be applied to new miss=
ions and concepts of operations.</span></span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
Last year there were a few papers dealing with application of machine/deep =
learning to radio design.=C2=A0 I hope to see even more next year!<span sty=
le=3D"color:black"><br>
<br>
</span><span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-ser=
if;color:black">Abstracts are
</span><span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-ser=
if">due soon<span style=3D"color:black">,=C2=A0but I can=C2=A0take them a b=
it later as well, while the full paper is due end of October.=C2=A0 This se=
ssion will focus on flexible radio architectures, including
 the use of </span>GPPs, GPUs, <span style=3D"color:black">=C2=A0and FPGAs.=
=C2=A0 Reports of existing systems and testbeds are of significant interest=
</span>.=C2=A0 This year I=E2=80=99d like to introduce work related to mach=
ine learning as applied to wireless communications.<span style=3D"color:bla=
ck"><u></u><u></u></span></span></p>
<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<span style=3D"font-size:12pt;color:black"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"background:white none repeat scroll 0% 0%">=
<b><span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-serif;c=
olor:black">Please forward this to your colleagues working in the areas of =
SDR and cognitive radio.</span></b><span style=3D"color:black">
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black"><br>
</span><span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-ser=
if">Regards<span style=3D"color:black">,</span></span><span style=3D"color:=
black">
<br>
<br>
</span><span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-ser=
if;color:black">Eugene.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><font size=3D"4"><span style=3D"font-famil=
y:monospace">Sincerely,<br></span></font><div><font size=3D"4"><span style=
=3D"font-family:monospace">Alex-M-Humberstone</span></font></div><div><font=
 size=3D"4"><span style=3D"font-family:monospace">PhD Student</span></font>=
</div><div><font size=3D"4"><span style=3D"font-family:monospace">Klipsch S=
chool of Electrical Engineering<br></span></font></div><div><font size=3D"4=
"><span style=3D"font-family:monospace">New Mexico State University<br><spa=
n><span>Las Cruces, </span></span>New Mexico</span></font></div><div><font =
size=3D"4"><span style=3D"font-family:monospace"><br></span></font></div><d=
iv><font size=3D"4"><span style=3D"font-family:monospace"></span></font></d=
iv></div></div></div>

--0000000000007c6b1705a87bd522--


--===============5221883694675547804==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5221883694675547804==--

