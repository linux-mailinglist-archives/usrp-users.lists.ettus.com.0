Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BE889ABEA2
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 19:23:44 +0200 (CEST)
Received: from [::1] (port=37120 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6HxU-0004D6-DX; Fri, 06 Sep 2019 13:23:40 -0400
Received: from mail-pg1-f179.google.com ([209.85.215.179]:35870)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <mike.piscopo@gmail.com>)
 id 1i6HxQ-00043x-Pj
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 13:23:36 -0400
Received: by mail-pg1-f179.google.com with SMTP id l21so3858859pgm.3
 for <usrp-users@lists.ettus.com>; Fri, 06 Sep 2019 10:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/NgDM5RYHLr9uWBNl0I7YeznUcDc1mkIPo9FKB/A37g=;
 b=meLCExqtIFUCnl7I35B9wCjWNYyN4QL8XPr8mDZ3e2un5FqrbVojcLKu+5DPJrOR7/
 ko8y47+DeyPl3vINs48sMekHilBAyGgL3npgMeWf7ArnI6DfYGwtj6R4M9TMA7e3HZng
 sNcDF3Veak0qS4QvpsjpZDwZDBzKnDCj3AXDSG3ZDrDbpCgmPy4cn5OyZBsZ3a46M9g5
 spEfYVlLNqpijSUCtu+X5fTBGr6gLr68qqxQudtE4okdpQ/nDo/uy5CTAj6b5WgqqbeM
 xUHElW/F45kFvAtnprPbwr1PpicEBqWIWigneaTVKx1NYV9bgkRf0+uj80LP2xRMoSQf
 Y7YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/NgDM5RYHLr9uWBNl0I7YeznUcDc1mkIPo9FKB/A37g=;
 b=JZ58ThWmNm0u4onMPqFX4CQTxcvcWM4FVOpeD09JVe04aWTSADfr059Dnu4CYB5++y
 sfdwIF3WvuKSMLrIORKnAGYJR7GKgId6uFPBGm36nvpXRIclTfmT1ToEoEpvw1dbYKKV
 ibAcn33jCIDc23Aed7n9pMMGmKMCrEt2D+8OLQg2HnwiDtjkjJkZwDmqfKVRIoy7Riaf
 6/yFDnGFlQOriwS+cflquRKozb0jc5fnSyvNpwZYVAIufUslG6NsFjP1UOI0aRfYVQzC
 zxih9gjRUFafHulHnsewX1Zc8NZScykqINKZQRkexzMnGQjfJ+g00Z/jzgPgoBVwNo/8
 CQ3A==
X-Gm-Message-State: APjAAAURvzi28Fu/CmEhXyvRPjya50MoD43K5XUtieJVhOTPCi2e5pez
 Mue3GEkdYuOscuMNaeNv2GnNJD7bfrDqoNSQO+o=
X-Google-Smtp-Source: APXvYqw00zpIZDq7flcJcdHDyRsO5LuZWD8F1wIQMVkV7TzxTRLYk8w/h/NX7lBDeJdrGZRHlm0JrkmDBJMLxWxJH1Q=
X-Received: by 2002:a63:5811:: with SMTP id m17mr8926109pgb.237.1567790575607; 
 Fri, 06 Sep 2019 10:22:55 -0700 (PDT)
MIME-Version: 1.0
References: <5b42d964-619f-3034-5b9a-44f464afe630@bham.ac.uk>
 <CAGNhwTOr8=U6fwpw9psPH0DeBaDevjXCnBedCBfgnbxE_M4XAw@mail.gmail.com>
 <41f739d3442449bd983706ba42de6405@bham.ac.uk>
 <16e12136-dd4d-470b-c5dc-eca9dd4a9901@decyben.com>
 <8b346437-1042-b480-fdbe-6b764b3e25d1@bham.ac.uk>
 <CAGNhwTOXxcYqKJ9AbXu-mRMxbJxmmtVhPoODi_5KMMB-J8aPfQ@mail.gmail.com>
In-Reply-To: <CAGNhwTOXxcYqKJ9AbXu-mRMxbJxmmtVhPoODi_5KMMB-J8aPfQ@mail.gmail.com>
Date: Fri, 6 Sep 2019 13:22:44 -0400
Message-ID: <CAAY_VvF8sKtO2VrbqSddZ_xZ3nkYQOS0jN4M=Yi9=AVBsrJOYA@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
Subject: Re: [USRP-users] sc16 - complex<int16_t> to numpy float
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
From: GhostOp14 via USRP-users <usrp-users@lists.ettus.com>
Reply-To: GhostOp14 <ghostop14@gmail.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4672592936121930843=="
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

--===============4672592936121930843==
Content-Type: multipart/alternative; boundary="0000000000005766910591e5b0e6"

--0000000000005766910591e5b0e6
Content-Type: text/plain; charset="UTF-8"

Here's a way in Python you can pull in SC16 and recover the FC32 from a
file.  It'll scale the values from the INT16_MAX back to -1.0 to 1.0 too in
one shot.

import numpy
file="somefile.iq"
dat = numpy.fromfile(file, dtype=numpy.int16)
data = dat[0::2]/32767.0 + 1j*dat[1::2]/32767.0  # ::02 says every other
starting at 0

Maybe that'll help?



On Fri, Sep 6, 2019 at 11:51 AM Michael Dickens via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Joel - IIRC UHD takes and provides std::complex<float> values that are
> in (-1.0,+1.0), meaning that the minimum (most negative) value is
> -1.0+epsilon and the maximum (most positive) value is 1.0-epsilon, where
> "epsilon" is the smallest positive 32-bit float value (approximately
> 1.17549e-38).
>
> If you're looking just for conversion from sc16 (aka
> "std::complex<int16_t>") to std::complex<float> in C++ (note that "float"
> is 32-bits in C++), you could do something like the following (which should
> work with pretty much any C++ standard):
>
> {{{
> #include <complex>
> #include <limits>
> #include <sys/types.h>
>
> static float scale_factor = float(1) /
>    float(std::min(int16_t(-std::numeric_limits<int16_t>::min()),
>            std::numeric_limits<int16_t>::max()));
>
> std::complex<float> sc16_to_float (const std::complex<int16_t>& input) {
>     return std::complex<float>
>       (std::real(input) * scale_factor,
>        std::imag (input) * scale_factor);
> }
> }}}
>
> There are, obviously, more efficient ways to do this. I believe that VOLK
> provides CPU optimized functions something along the lines of the above
> code. Hope this is useful! - MLD
>
> On Fri, Sep 6, 2019 at 8:47 AM J Subash via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi Imad,
>>
>>
>> Thanks very much for your reply. Unfortunately that solution does not
>> work.
>>
>> Because if it reads 4 bytes (two int16_t in C/C++ parlance; <i2 in numpy
>> world) which for argument sake holds 15, 16 (which are integers). These are
>> then cast as floats which makes them 15.0 and 16.0 and then when viewed as
>> np.complex64 becomes 15.0 + 16.0j.
>>
>>
>> I have had a look at the converters section in the uhd API (
>> https://github.com/EttusResearch/uhd/tree/master/host/lib/convert) but
>> can't get my head around the code.
>>
>>
>> Thanks.
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000005766910591e5b0e6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Here&#39;s a way in Python you can pull in SC16 and r=
ecover the FC32 from a file.=C2=A0 It&#39;ll scale the values from the INT1=
6_MAX back to -1.0 to 1.0 too in one shot.<br></div><div><br></div><div>imp=
ort numpy<br>file=3D&quot;<a href=3D"http://somefile.iq">somefile.iq</a>&qu=
ot;<br>dat =3D numpy.fromfile(file, dtype=3Dnumpy.int16)<br>data =3D dat[0:=
:2]/32767.0 + 1j*dat[1::2]/32767.0 =C2=A0# ::02 says every other starting a=
t 0</div><div><br></div><div>Maybe that&#39;ll help?</div><div><br></div><d=
iv><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Fri, Sep 6, 2019 at 11:51 AM Michael Dickens via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_de=
fault" style=3D"font-family:verdana,sans-serif">Hi Joel - IIRC UHD takes an=
d provides=C2=A0std::complex&lt;float&gt; values that are in (-1.0,+1.0), m=
eaning that the minimum (most negative) value is -1.0+epsilon and the maxim=
um (most positive) value is=C2=A01.0-epsilon, where &quot;epsilon&quot; is =
the smallest positive 32-bit float value (approximately 1.17549e-38).</div>=
<div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br><=
/div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">=
If you&#39;re looking just for conversion from sc16 (aka &quot;std::complex=
&lt;int16_t&gt;&quot;) to std::complex&lt;float&gt; in C++ (note that &quot=
;float&quot; is 32-bits in C++), you could do something like the following =
(which should work with pretty much any C++ standard):</div><div class=3D"g=
mail_default" style=3D"font-family:verdana,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif">{{{</div>#inclu=
de &lt;complex&gt;<br>#include &lt;limits&gt;<br>#include &lt;sys/types.h&g=
t;<br><br>static float scale_factor =3D float(1) /<br>=C2=A0 =C2=A0float(st=
d::min(int16_t(-std::numeric_limits&lt;int16_t&gt;::min()),<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0std::numeric_limits&lt;int16_t&gt;::max()));=
<br><br>std::complex&lt;float&gt; sc16_to_float (const std::complex&lt;int1=
6_t&gt;&amp; input) {<br>=C2=A0 =C2=A0 return std::complex&lt;float&gt;</di=
v><div dir=3D"ltr">=C2=A0 =C2=A0 =C2=A0 (std::real(input) * scale_factor,<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0std::imag (input) * scale_factor);<br>}<br><di=
v class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">}}}</div=
></div><div dir=3D"ltr"><br></div><div>There are, obviously, more efficient=
 ways to do this. I believe that VOLK provides CPU optimized functions some=
thing along the lines of the above code. Hope this is useful! - MLD</div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, =
Sep 6, 2019 at 8:47 AM J Subash via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div bgco=
lor=3D"#FFFFFF"><p>Hi Imad,</p><p><br></p><p>Thanks very much for your repl=
y. Unfortunately that solution does not work.=C2=A0<br></p><p>Because if it=
 reads 4 bytes (two int16_t in C/C++ parlance; &lt;i2 in numpy world) which=
 for argument sake holds 15, 16 (which are integers). These are then cast a=
s floats which makes them 15.0 and 16.0 and then when viewed as np.complex6=
4 becomes 15.0 + 16.0j.</p><p><br></p><p>I have had a look at the converter=
s section in the uhd API (<a class=3D"gmail-m_4827500726389168830m_-9837920=
89008337014gmail-m_-4456416580714273248moz-txt-link-freetext" href=3D"https=
://github.com/EttusResearch/uhd/tree/master/host/lib/convert" target=3D"_bl=
ank">https://github.com/EttusResearch/uhd/tree/master/host/lib/convert</a>)=
 but can&#39;t get my head around the code.</p><p><br></p><p>Thanks.</p></d=
iv></blockquote></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000005766910591e5b0e6--


--===============4672592936121930843==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4672592936121930843==--

