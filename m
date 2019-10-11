Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADA7D4783
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2019 20:25:09 +0200 (CEST)
Received: from [::1] (port=37212 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iIzb9-00067c-H5; Fri, 11 Oct 2019 14:25:07 -0400
Received: from mail-lj1-f177.google.com ([209.85.208.177]:45991)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saeidh@gmail.com>) id 1iIzb5-0005ya-Fa
 for usrp-users@lists.ettus.com; Fri, 11 Oct 2019 14:25:03 -0400
Received: by mail-lj1-f177.google.com with SMTP id q64so10707850ljb.12
 for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2019 11:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=J6KVccTroV5IJRto/8t/zrsMMAowBkLsbYvEvHjYeuM=;
 b=Nbs/0VWNL1wWLmHxMsU1evdguo+74k1MjJIBIaX+lsg7/FAerm40i5YaNw8X7iN4F/
 PUoupVrGElC8ac9gm0T7LaeqfKBSmu58P6rnRQz9s74YnrRWiO0aj7XHt03fljhBgC/P
 xzPSp4DvmF2jGzwGl9IY1jVMjGKYVO+cZt2avLEtoVsd6E+fHpFoyjn4kzIeQFqOOx4N
 HBdIJOsxD1QyuSQfucoOHH4nsbljswdMkV6sWuxEYF3bS+13XvEXGwbAm/OQeCV+RL2H
 A8Yf4YCpRkOtRxbqHtaYWBofIklCbIhXPWwysPykHtjKrsoRLsIvzTGUBNo1zNQzyjAB
 l6hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J6KVccTroV5IJRto/8t/zrsMMAowBkLsbYvEvHjYeuM=;
 b=nMTXoqnK3qGlge3IiwoBup8NmCIQC+i+HaNjv6RwEDYdUbFJ09bj70qBeYIQUMbz8y
 /PxBby56YgZmEslZ/1jD/C1FYvminoEozdEL6Wunw4J6fwiR99XmlS3FDpABR/+H8vZ+
 SmN6+IvF9gWdbB0Xl84sZuMSXA+X7fcEQjhuF/3icH0XgQwS6lZ6uvDguYk7MvVQsRBf
 vQg7Z09Z4YR7v5jgdyJBsGo+NjLPM5hBj0l/8gt0616QEqM/kS5pBAslfSbT3h5oEA6Y
 xcT8fm7awQx7IAFIi2fNgqFzXUOagec/XZG9nkyb2KglgavRBB1IfD+c3scbCUDTFF/t
 8nCQ==
X-Gm-Message-State: APjAAAVShuJ05l4J4LZPl5gE1lsYLMouBAWHouxSzMgre5ghw8wVUx8D
 Ab371Km6deE/PDIm/exen1abX5W5wBZK/vK4wag=
X-Google-Smtp-Source: APXvYqwhV9EVEf0Uqt85QXwDGhiRy0XsATIQqxYuQep0t23OdrWeKgXh2QpS6CdKnVjRVkJty5LrvdXmBjqyHEfs2mA=
X-Received: by 2002:a2e:3919:: with SMTP id g25mr9838401lja.162.1570818262163; 
 Fri, 11 Oct 2019 11:24:22 -0700 (PDT)
MIME-Version: 1.0
References: <CANQ3h3_fwR=baRxHo+Aicms8C3CFnWzR51qSS99xo2u--OY2vg@mail.gmail.com>
 <CAGNhwTNRQwC2-gVFQFFyfk0ubGCfoL2a1kShguyMny1Y_9Xw_g@mail.gmail.com>
In-Reply-To: <CAGNhwTNRQwC2-gVFQFFyfk0ubGCfoL2a1kShguyMny1Y_9Xw_g@mail.gmail.com>
Date: Fri, 11 Oct 2019 14:24:08 -0400
Message-ID: <CANQ3h39_-YDpCHEgCcR=r3z=iK7QOmJPFYnY8DATs5++zh+uug@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
Subject: Re: [USRP-users] uhd_fft failure
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
From: Saeid Hashemi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Saeid Hashemi <saeidh@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4465085861598321614=="
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

--===============4465085861598321614==
Content-Type: multipart/alternative; boundary="00000000000085e5570594a6a0b1"

--00000000000085e5570594a6a0b1
Content-Type: text/plain; charset="UTF-8"

I will follow your advice, but it's worth mentioning I simply did apt-get
gnuradio and should therefore have a compatible version of uhd installed
automatically as a dependency. I did not install uhd separately.


On Fri, Oct 11, 2019 at 9:27 AM Michael Dickens <michael.dickens@ettus.com>
wrote:

> Hi Saeid - The error shows that the version of UHD as installed isn't
> fully compatible with the version of GR. GR 3.7.9.1 is quite old  ...
> unless you need that specific version of GR, I'd recommend uninstalling
> that GR and installing 3.7.14.5 from source. There are install guides
> around for doing this build on Ubuntu of various versions. Hope this is
> useful! - MLD
>
> On Thu, Oct 10, 2019 at 6:40 PM Saeid Hashemi via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello everyone,
>>
>> I've been having some problems running the uhd_fft function recently. I
>> did a fresh install of Ubuntu 16.04, then installed gnuradio using the
>> package manager. When I run uhd_fft this is what I get. Would anyone have
>> an idea as to where the problem is?
>>
>> Thanks,
>> Saeid
>>
>> nuc03@nuc03:~$ apt-show-versions gnuradio
>> gnuradio:amd64/xenial 3.7.9.1-2ubuntu1 uptodate
>>
>>
>> nuc03@nuc03:~$ uhd_fft
>> Traceback (most recent call last):
>>   File "/usr/bin/uhd_fft", line 48, in <module>
>>     from gnuradio import uhd
>>   File "/usr/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py", line
>> 135, in <module>
>>     _prepare_uhd_swig()
>>   File "/usr/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py", line
>> 38, in _prepare_uhd_swig
>>     import uhd_swig
>>   File "/usr/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py", line
>> 28, in <module>
>>     _uhd_swig = swig_import_helper()
>>   File "/usr/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py", line
>> 24, in swig_import_helper
>>     _mod = imp.load_module('_uhd_swig', fp, pathname, description)
>> ImportError: /usr/lib/python2.7/dist-packages/gnuradio/uhd/_
>> uhd_swig.x86_64-linux-gnu.so: undefined symbol:
>> _ZN3uhd11time_spec_t15get_system_timeEv
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>
> --
> Michael Dickens
> Ettus Research Technical Support
> Email: support@ettus.com
> Web: https://ettus.com/
>

--00000000000085e5570594a6a0b1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I will follow your advice, but it&#39;s worth mentioning I=
 simply did apt-get gnuradio and should therefore have a compatible version=
 of uhd installed automatically as a dependency. I did not install uhd sepa=
rately.<div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Fri, Oct 11, 2019 at 9:27 AM Michael Dickens &lt;<=
a href=3D"mailto:michael.dickens@ettus.com">michael.dickens@ettus.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr">Hi Saeid - The error shows that the version of UHD as installed =
isn&#39;t fully compatible with the version of GR. GR=C2=A03.7.9.1 is quite=
 old=C2=A0 ... unless you need that specific version of GR, I&#39;d recomme=
nd uninstalling that GR and installing 3.7.14.5 from source. There are inst=
all guides around for doing this build on Ubuntu of various versions. Hope =
this is useful! - MLD</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, Oct 10, 2019 at 6:40 PM Saeid Hashemi via USRP=
-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr">Hello everyone,<div><br></div><d=
iv>I&#39;ve been having some problems running the uhd_fft function recently=
. I did a fresh install of Ubuntu 16.04, then installed gnuradio using the =
package manager. When I run uhd_fft this is what I get. Would anyone have a=
n idea as to where the problem=C2=A0is?</div><div><br></div><div>Thanks,</d=
iv><div>Saeid</div><div><br></div><blockquote style=3D"margin:0px 0px 0px 4=
0px;border:none;padding:0px"><div><font face=3D"monospace" size=3D"1">nuc03=
@nuc03:~$ apt-show-versions gnuradio</font></div><div><font face=3D"monospa=
ce" size=3D"1">gnuradio:amd64/xenial 3.7.9.1-2ubuntu1 uptodate</font></div>=
</blockquote><div><br></div><blockquote style=3D"margin:0px 0px 0px 40px;bo=
rder:none;padding:0px"><div><font face=3D"monospace" size=3D"1">nuc03@nuc03=
:~$ uhd_fft</font></div><div><font face=3D"monospace" size=3D"1">Traceback =
(most recent call last):</font></div><div><font face=3D"monospace" size=3D"=
1">=C2=A0 File &quot;/usr/bin/uhd_fft&quot;, line 48, in &lt;module&gt;</fo=
nt></div><div><font face=3D"monospace" size=3D"1">=C2=A0 =C2=A0 from gnurad=
io import uhd</font></div><div><font face=3D"monospace" size=3D"1">=C2=A0 F=
ile &quot;/usr/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py&quot;, =
line 135, in &lt;module&gt;</font></div><div><font face=3D"monospace" size=
=3D"1">=C2=A0 =C2=A0 _prepare_uhd_swig()</font></div><div><font face=3D"mon=
ospace" size=3D"1">=C2=A0 File &quot;/usr/lib/python2.7/dist-packages/gnura=
dio/uhd/__init__.py&quot;, line 38, in _prepare_uhd_swig</font></div><div><=
font face=3D"monospace" size=3D"1">=C2=A0 =C2=A0 import uhd_swig</font></di=
v><div><font face=3D"monospace" size=3D"1">=C2=A0 File &quot;/usr/lib/pytho=
n2.7/dist-packages/gnuradio/uhd/uhd_swig.py&quot;, line 28, in &lt;module&g=
t;</font></div><div><font face=3D"monospace" size=3D"1">=C2=A0 =C2=A0 _uhd_=
swig =3D swig_import_helper()</font></div><div><font face=3D"monospace" siz=
e=3D"1">=C2=A0 File &quot;/usr/lib/python2.7/dist-packages/gnuradio/uhd/uhd=
_swig.py&quot;, line 24, in swig_import_helper</font></div><div><font face=
=3D"monospace" size=3D"1">=C2=A0 =C2=A0 _mod =3D imp.load_module(&#39;_uhd_=
swig&#39;, fp, pathname, description)</font></div><div><font face=3D"monosp=
ace" size=3D"1">ImportError: /usr/lib/python2.7/dist-packages/gnuradio/uhd/=
_<a href=3D"http://uhd_swig.x86_64-linux-gnu.so" target=3D"_blank">uhd_swig=
.x86_64-linux-gnu.so</a>: undefined symbol: _ZN3uhd11time_spec_t15get_syste=
m_timeEv</font></div></blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr"><div><div dir=3D"ltr">Michael Dickens<br>Ettus Research T=
echnical Support<br>Email: <a href=3D"mailto:support@ettus.com" target=3D"_=
blank">support@ettus.com</a><br>Web: <a href=3D"https://ettus.com/" target=
=3D"_blank">https://ettus.com/</a></div></div></div></div>
</blockquote></div>

--00000000000085e5570594a6a0b1--


--===============4465085861598321614==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4465085861598321614==--

