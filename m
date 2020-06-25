Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D8A20A843
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jun 2020 00:36:11 +0200 (CEST)
Received: from [::1] (port=55510 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1joaTX-0001WF-OI; Thu, 25 Jun 2020 18:36:07 -0400
Received: from mail-ej1-f42.google.com ([209.85.218.42]:44815)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <alex.m.humberstone@gmail.com>)
 id 1joaTT-0001Q7-PG
 for usrp-users@lists.ettus.com; Thu, 25 Jun 2020 18:36:03 -0400
Received: by mail-ej1-f42.google.com with SMTP id ga4so7480435ejb.11
 for <usrp-users@lists.ettus.com>; Thu, 25 Jun 2020 15:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hqYokGYSI/PZhuaqBfgvsN54PSTDFmkSQhgEB5k953Q=;
 b=Y0q6NvTJfoT2SjD8bZce7lNCQyzbpyO+egwVJ3aBEmvrxvjVi6BonM/axF0iQWpkWK
 V8UFr3HgN5gZhmL038CgiDj97yWmJ4ozpmoiE3n5fNlLJKMTxYcJ3XOcD+/oXdX6Hw4W
 7jXIj8VKBQny+GzqFUZE3Abcmi6vHR6grHN3QJsFm+69lcLA+Nar0mMGrpJu3kFWaEQw
 wMKrAxtLZrIwaHTTs/04JD07EcxlmjTtUhh+alicQLASlWxHZEgcmiJvZ6squUuvOKKk
 aF0Cjshddxxgvrj/VkljGLkyxRm5fEdrrzJOGAOJ5YaqfzTR+qmA5PWUn1qZJKeHcYz9
 Ld1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hqYokGYSI/PZhuaqBfgvsN54PSTDFmkSQhgEB5k953Q=;
 b=Bj8oBk4drHulKA+XeobD1T9abq4FXYhZHa7F+uqq9kTQyW//ewWrnV6WTe7PJwnA/w
 YLQjGlsuH4c8Yzo2TtDMce0tE74E9HSKv6lma8QnK6t6Wqwokana1+FlJ8VcLXhIWBqN
 JFf/mxfw9vHb+Z1QgnD5ksMXMfq3HgxZkQSyvY9a7o+MBF/G6I/53+idziiOt24ZO2St
 MR6ieo/VBXEvP+XFs6QW5hCRpYNmvULrhsoh7fFPCJIOPpdSfpni2TaQO1jPGyW4XR4j
 63+rlNPmkb19QBaPknO+W6/0KhvT6rCsNqOTP7pBLgO7aQ+OpiGIi8G409BGeT5KGSSO
 LBSg==
X-Gm-Message-State: AOAM5306AFw85P/7udBsp6KHNXpj2XXNb3I3bgIN4TsJIthPrQFsiOD/
 gPc3gRoNb6oh7W20Iyewl0yzonxO1e9eBnjK/S8=
X-Google-Smtp-Source: ABdhPJz0uXMUuFTK+VcgIpDBCOodpJv7UqBN+4BqgJqBCJ2znskc52ut8RX1qBsUXVWfUUXlXwiAAtiGG7f09D688HA=
X-Received: by 2002:a17:907:41dc:: with SMTP id
 og20mr5367ejb.183.1593124522751; 
 Thu, 25 Jun 2020 15:35:22 -0700 (PDT)
MIME-Version: 1.0
References: <SN6PR09MB3726D7D87F81583127681C3FEC980@SN6PR09MB3726.namprd09.prod.outlook.com>
 <CAE0dfYZz1vrKBZ26jyaaV3LkC+gk1mTZ2uJHdmP3-HZQ6TuV+Q@mail.gmail.com>
In-Reply-To: <CAE0dfYZz1vrKBZ26jyaaV3LkC+gk1mTZ2uJHdmP3-HZQ6TuV+Q@mail.gmail.com>
Date: Thu, 25 Jun 2020 17:34:46 -0500
Message-ID: <CAE0dfYadQpuFXYhkOaWbsq8+UdS8U+btPTqnP04m1e6kCrSdOw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4245269485077902946=="
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

--===============4245269485077902946==
Content-Type: multipart/alternative; boundary="00000000000042fbc805a8f035db"

--00000000000042fbc805a8f035db
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Any update?

Would like to see the program for past conferences...



On Fri, 19 Jun 2020 at 22:44, Alex Humberstone <alex.m.humberstone@gmail.co=
m>
wrote:

> Eugene, the conference looks interesting. Where can we find the program
> for past years to get a feel for the conference? I didn't see this on the
> website. Thanks.
>
>
> On Fri, 19 Jun 2020 at 17:02, Eugene Grayver via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello,
>>
>>
>>
>> I am chairing the Software Defined and Cognitive Radio session at the
>> upcoming IEEE Aerospace Conference (http://www.aeroconf.org).  This
>> large conference will take place March 6-13, 2021 in Big Sky, Montana.
>> The conference provides a world-class technical program and provides
>> excellent opportunities for both networking and recreation. This is one
>> of the few conferences where SDR can be put in the context of a complete
>> system and can be applied to new missions and concepts of operations.
>>
>>
>>
>> Last year there were a few papers dealing with application of
>> machine/deep learning to radio design.  I hope to see even more next yea=
r!
>>
>> Abstracts are due soon, but I can take them a bit later as well, while
>> the full paper is due end of October.  This session will focus on flexib=
le
>> radio architectures, including the use of GPPs, GPUs,  and FPGAs.
>> Reports of existing systems and testbeds are of significant interest.
>> This year I=E2=80=99d like to introduce work related to machine learning=
 as applied
>> to wireless communications.
>>
>>
>>
>> *Please forward this to your colleagues working in the areas of SDR and
>> cognitive radio.*
>>
>>
>> Regards,
>>
>> Eugene.
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>
> --
> Sincerely,
> Alex-M-Humberstone
> PhD Student
> Klipsch School of Electrical Engineering
> New Mexico State University
> Las Cruces, New Mexico
>
>

--=20
Sincerely,
Alex-M-Humberstone
PhD Student
Klipsch School of Electrical Engineering
New Mexico State University
Las Cruces, New Mexico

--00000000000042fbc805a8f035db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e;font-size:large">Any update?</div><div class=3D"gmail_default" style=3D"f=
ont-family:monospace;font-size:large"><br></div><div class=3D"gmail_default=
" style=3D"font-family:monospace;font-size:large">Would like to see the pro=
gram for past conferences...</div><div class=3D"gmail_default" style=3D"fon=
t-family:monospace;font-size:large"><br></div><div class=3D"gmail_default" =
style=3D"font-family:monospace;font-size:large"><br></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 19 Jun 20=
20 at 22:44, Alex Humberstone &lt;<a href=3D"mailto:alex.m.humberstone@gmai=
l.com">alex.m.humberstone@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div c=
lass=3D"gmail_default" style=3D"font-family:monospace;font-size:large">Euge=
ne, the conference looks interesting. Where can we find the program for pas=
t years to get a feel for the conference? I didn&#39;t see this on the webs=
ite. Thanks.</div><div class=3D"gmail_default" style=3D"font-family:monospa=
ce;font-size:large"><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, 19 Jun 2020 at 17:02, Eugene Grayver =
via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div>
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
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><div dir=
=3D"ltr"><font size=3D"4"><span style=3D"font-family:monospace">Sincerely,<=
br></span></font><div><font size=3D"4"><span style=3D"font-family:monospace=
">Alex-M-Humberstone</span></font></div><div><font size=3D"4"><span style=
=3D"font-family:monospace">PhD Student</span></font></div><div><font size=
=3D"4"><span style=3D"font-family:monospace">Klipsch School of Electrical E=
ngineering<br></span></font></div><div><font size=3D"4"><span style=3D"font=
-family:monospace">New Mexico State University<br><span><span>Las Cruces, <=
/span></span>New Mexico</span></font></div><div><font size=3D"4"><span styl=
e=3D"font-family:monospace"><br></span></font></div><div><font size=3D"4"><=
span style=3D"font-family:monospace"></span></font></div></div></div></div>
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
iv></div></div>

--00000000000042fbc805a8f035db--


--===============4245269485077902946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4245269485077902946==--

