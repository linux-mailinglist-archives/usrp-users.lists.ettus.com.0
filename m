Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D2429ABCFE
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 17:52:19 +0200 (CEST)
Received: from [::1] (port=39066 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6GX1-00027v-Qo; Fri, 06 Sep 2019 11:52:15 -0400
Received: from mail-oi1-f182.google.com ([209.85.167.182]:43415)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1i6GWy-00023G-1F
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 11:52:12 -0400
Received: by mail-oi1-f182.google.com with SMTP id t84so5324138oih.10
 for <usrp-users@lists.ettus.com>; Fri, 06 Sep 2019 08:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Uh1yaVXBYfdc/0lH9NYUVCiCFIr/6KlnSvtTUnUks3g=;
 b=D7e6nMjX9BjIdqInKVg00lrAcpCakFrMdQXmJF7lbeTkBjNvIcHMW98sbe+2j8tEtt
 0E1/SC3mOVQpDJ75MqV4Q1TDLAXK+9OXDvBeouqw0ZNuG4TivgHTIBdfAPAKi0GhzUTQ
 EDU4syg3BzSvxYln/B2rjsuX/NjmBT4jrFjvv/wP7O2XhTPSBRpwhrLROQ9Cm8T8bF8I
 GnXOyocAIlYyWFfVxgJqsMXLYo81zAKEXSBUSBzRUGqV4z31TI6BFaOPLutQuzMO4eVy
 vvmP4KbSznB0/cicDQXPsbsYaCZcIYdBv30T2ay0Tkk6brL+UQZdHB0h5dll5Ecrm/s4
 oRsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Uh1yaVXBYfdc/0lH9NYUVCiCFIr/6KlnSvtTUnUks3g=;
 b=Lq+42GiencQ4irAo8KDmU0xRaenXI+GemdA6iGTPyW0x07y7bJS/hPwnoa9c4yVrWv
 KaNPUeM30zrDwVDzKYzik3ZbDcPPy9BijwCVFY+2OKDxzA522VIopR/ElMCuAokTOHsO
 Ikgcutg81jbaFD9s6ZNIW2MvRRx5JiVri6BshLTgPXaHx0XlCc5EKJ+/rcl8liJbPLll
 W5JoYcS7ekO4SLt4j2x/kFy0d9SfSZGRGeHq0IwYM3iDvr9vlgej+yqH48gJNeP69nmZ
 pYAX64q7NzPpJpnDMYk3PIDygXw26dGYho5HdWncAGZhmEeuiLb2TxdBe6V8YyLaQAo9
 lxXQ==
X-Gm-Message-State: APjAAAW8kNBOZBiBI+BegoqAx+kXGe7vcHONw/mgTV1z9hJOEAOPdEMt
 kB5ZLS1+HQ/la/2uzBB1DQtjM6BE2LoWGpM9LbMPgkch
X-Google-Smtp-Source: APXvYqxw/16b2BLZvA9BKhCatGG1J2lvPKmiwLk/th/jEdv+PAPXIWG39MB+0b2xW+YBm5QQ1PATS3Mocz7Fv6VC8fM=
X-Received: by 2002:aca:280a:: with SMTP id 10mr7135183oix.38.1567785091199;
 Fri, 06 Sep 2019 08:51:31 -0700 (PDT)
MIME-Version: 1.0
References: <5b42d964-619f-3034-5b9a-44f464afe630@bham.ac.uk>
 <CAGNhwTOr8=U6fwpw9psPH0DeBaDevjXCnBedCBfgnbxE_M4XAw@mail.gmail.com>
 <41f739d3442449bd983706ba42de6405@bham.ac.uk>
 <16e12136-dd4d-470b-c5dc-eca9dd4a9901@decyben.com>
 <8b346437-1042-b480-fdbe-6b764b3e25d1@bham.ac.uk>
In-Reply-To: <8b346437-1042-b480-fdbe-6b764b3e25d1@bham.ac.uk>
Date: Fri, 6 Sep 2019 11:51:19 -0400
Message-ID: <CAGNhwTOXxcYqKJ9AbXu-mRMxbJxmmtVhPoODi_5KMMB-J8aPfQ@mail.gmail.com>
To: J Subash <j.subash@bham.ac.uk>
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5653649037373839651=="
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

--===============5653649037373839651==
Content-Type: multipart/alternative; boundary="0000000000007206fb0591e4695d"

--0000000000007206fb0591e4695d
Content-Type: text/plain; charset="UTF-8"

Hi Joel - IIRC UHD takes and provides std::complex<float> values that are
in (-1.0,+1.0), meaning that the minimum (most negative) value is
-1.0+epsilon and the maximum (most positive) value is 1.0-epsilon, where
"epsilon" is the smallest positive 32-bit float value (approximately
1.17549e-38).

If you're looking just for conversion from sc16 (aka
"std::complex<int16_t>") to std::complex<float> in C++ (note that "float"
is 32-bits in C++), you could do something like the following (which should
work with pretty much any C++ standard):

{{{
#include <complex>
#include <limits>
#include <sys/types.h>

static float scale_factor = float(1) /
   float(std::min(int16_t(-std::numeric_limits<int16_t>::min()),
           std::numeric_limits<int16_t>::max()));

std::complex<float> sc16_to_float (const std::complex<int16_t>& input) {
    return std::complex<float>
      (std::real(input) * scale_factor,
       std::imag (input) * scale_factor);
}
}}}

There are, obviously, more efficient ways to do this. I believe that VOLK
provides CPU optimized functions something along the lines of the above
code. Hope this is useful! - MLD

On Fri, Sep 6, 2019 at 8:47 AM J Subash via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Imad,
>
>
> Thanks very much for your reply. Unfortunately that solution does not
> work.
>
> Because if it reads 4 bytes (two int16_t in C/C++ parlance; <i2 in numpy
> world) which for argument sake holds 15, 16 (which are integers). These are
> then cast as floats which makes them 15.0 and 16.0 and then when viewed as
> np.complex64 becomes 15.0 + 16.0j.
>
>
> I have had a look at the converters section in the uhd API (
> https://github.com/EttusResearch/uhd/tree/master/host/lib/convert) but
> can't get my head around the code.
>
>
> Thanks.
>

--0000000000007206fb0591e4695d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_defa=
ult" style=3D"font-family:verdana,sans-serif">Hi Joel - IIRC UHD takes and =
provides=C2=A0std::complex&lt;float&gt; values that are in (-1.0,+1.0), mea=
ning that the minimum (most negative) value is -1.0+epsilon and the maximum=
 (most positive) value is=C2=A01.0-epsilon, where &quot;epsilon&quot; is th=
e smallest positive 32-bit float value (approximately 1.17549e-38).</div><d=
iv class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></d=
iv><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">If=
 you&#39;re looking just for conversion from sc16 (aka &quot;std::complex&l=
t;int16_t&gt;&quot;) to std::complex&lt;float&gt; in C++ (note that &quot;f=
loat&quot; is 32-bits in C++), you could do something like the following (w=
hich should work with pretty much any C++ standard):</div><div class=3D"gma=
il_default" style=3D"font-family:verdana,sans-serif"><br></div><div class=
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
s section in the uhd API (<a class=3D"m_-983792089008337014gmail-m_-4456416=
580714273248moz-txt-link-freetext" href=3D"https://github.com/EttusResearch=
/uhd/tree/master/host/lib/convert" target=3D"_blank">https://github.com/Ett=
usResearch/uhd/tree/master/host/lib/convert</a>) but can&#39;t get my head =
around the code.</p><p><br></p><p>Thanks.</p></div></blockquote></div></div=
></div>

--0000000000007206fb0591e4695d--


--===============5653649037373839651==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5653649037373839651==--

