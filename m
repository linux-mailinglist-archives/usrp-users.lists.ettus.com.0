Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAFED411F
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2019 15:28:16 +0200 (CEST)
Received: from [::1] (port=58898 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iIuxo-0001I6-BN; Fri, 11 Oct 2019 09:28:12 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:37368)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1iIuxk-0001CG-87
 for usrp-users@lists.ettus.com; Fri, 11 Oct 2019 09:28:08 -0400
Received: by mail-ot1-f46.google.com with SMTP id k32so7947958otc.4
 for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2019 06:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2ytqfpC0wEg5AGT2i2/WePydHt0vT845ygzRbiksFQo=;
 b=SsDgTHPyyKM5E44JQcWaPz1XVRneBKLR5AgzU655ZJe9nBNfuOffEMSpUE2xvOe/VH
 o2JczVyklceGvi+udJtDNN9gzVFteNrLpA1b/giQsehZRfubjo+F8HfFYOpdTyIAD1Es
 WkKqfPwz2puK+3DW/lit0GZe7ndjW+XlXxWZyX3K9eup8UkNNQWM4OnZ5B24b8wXqwFd
 cTxyCBP4NqCxs1zFVVnh3UQFZ+KXrWMoiXWSzCT1Y5OXtg6X1trZEeMaHbr+AE4C8lBL
 DW438G5EmmPS8+HQTqp45BtASy8sdeQK8B5DHbV8R8LTVpu0uXd1IRqljmzvGG1iTROG
 WUGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2ytqfpC0wEg5AGT2i2/WePydHt0vT845ygzRbiksFQo=;
 b=ILLoS1A2KkS2IEC0KlQJGQ85b3NpPwM2cg41JWxu/CGa2jOFz8ZAQA0riptUpPHrQW
 o8HmGZForHOiwGaIufnMrvkQWbqebWnxkKANE1pRLVA71flC1ioAPp5TNn2+e3Rgd5cf
 mHE2+625K8Nc0eKDNaJx/E3iFRxGIPxITRJf9X5VYz7orS/tR8nF5PwwaIRdmed5vuXD
 /B8eYjK1FJZ9cflhnxoY76MdghpvrRmtnf8/VTjsitAQJKP4HYuwAuo3UNccXV294PXy
 J5NHASN3+Pgg/kb1uOqcIIjidjg37j1wbnC/rZzlIElCPW+NR5cVoOzDfZcxdFtAbfnO
 kbeA==
X-Gm-Message-State: APjAAAVDBr4Htyu9OKm7LbJKl44ZUqsSIbJR21Dwsdnrkm4T5tuL51Mk
 Dfo3a2hFtNokWJDv1pBYPxhgM2PT5a/zxAGOfWKd9Fk9
X-Google-Smtp-Source: APXvYqwyvFhkoSgtPvt4GKavJcERkHBXM5JsrUWaIswfLheP8/dZi+DcQlU7nfdfN2sgU9ocoBw0LQZOZsV1W3wW4Fs=
X-Received: by 2002:a9d:70d0:: with SMTP id w16mr11762906otj.107.1570800447418; 
 Fri, 11 Oct 2019 06:27:27 -0700 (PDT)
MIME-Version: 1.0
References: <CANQ3h3_fwR=baRxHo+Aicms8C3CFnWzR51qSS99xo2u--OY2vg@mail.gmail.com>
In-Reply-To: <CANQ3h3_fwR=baRxHo+Aicms8C3CFnWzR51qSS99xo2u--OY2vg@mail.gmail.com>
Date: Fri, 11 Oct 2019 09:27:16 -0400
Message-ID: <CAGNhwTNRQwC2-gVFQFFyfk0ubGCfoL2a1kShguyMny1Y_9Xw_g@mail.gmail.com>
To: Saeid Hashemi <saeidh@gmail.com>
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4393425028131676191=="
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

--===============4393425028131676191==
Content-Type: multipart/alternative; boundary="000000000000ae85f80594a27ad1"

--000000000000ae85f80594a27ad1
Content-Type: text/plain; charset="UTF-8"

Hi Saeid - The error shows that the version of UHD as installed isn't fully
compatible with the version of GR. GR 3.7.9.1 is quite old  ... unless you
need that specific version of GR, I'd recommend uninstalling that GR and
installing 3.7.14.5 from source. There are install guides around for doing
this build on Ubuntu of various versions. Hope this is useful! - MLD

On Thu, Oct 10, 2019 at 6:40 PM Saeid Hashemi via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello everyone,
>
> I've been having some problems running the uhd_fft function recently. I
> did a fresh install of Ubuntu 16.04, then installed gnuradio using the
> package manager. When I run uhd_fft this is what I get. Would anyone have
> an idea as to where the problem is?
>
> Thanks,
> Saeid
>
> nuc03@nuc03:~$ apt-show-versions gnuradio
> gnuradio:amd64/xenial 3.7.9.1-2ubuntu1 uptodate
>
>
> nuc03@nuc03:~$ uhd_fft
> Traceback (most recent call last):
>   File "/usr/bin/uhd_fft", line 48, in <module>
>     from gnuradio import uhd
>   File "/usr/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py", line
> 135, in <module>
>     _prepare_uhd_swig()
>   File "/usr/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py", line
> 38, in _prepare_uhd_swig
>     import uhd_swig
>   File "/usr/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py", line
> 28, in <module>
>     _uhd_swig = swig_import_helper()
>   File "/usr/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py", line
> 24, in swig_import_helper
>     _mod = imp.load_module('_uhd_swig', fp, pathname, description)
> ImportError: /usr/lib/python2.7/dist-packages/gnuradio/uhd/_
> uhd_swig.x86_64-linux-gnu.so: undefined symbol:
> _ZN3uhd11time_spec_t15get_system_timeEv
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/

--000000000000ae85f80594a27ad1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Saeid - The error shows that the version of UHD as inst=
alled isn&#39;t fully compatible with the version of GR. GR=C2=A03.7.9.1 is=
 quite old=C2=A0 ... unless you need that specific version of GR, I&#39;d r=
ecommend uninstalling that GR and installing 3.7.14.5 from source. There ar=
e install guides around for doing this build on Ubuntu of various versions.=
 Hope this is useful! - MLD</div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Thu, Oct 10, 2019 at 6:40 PM Saeid Hashemi vi=
a USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@l=
ists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr">Hello everyone,<div><br></div><div>I&#39;ve =
been having some problems running the uhd_fft function recently. I did a fr=
esh install of Ubuntu 16.04, then installed gnuradio using the package mana=
ger. When I run uhd_fft this is what I get. Would anyone have an idea as to=
 where the problem=C2=A0is?</div><div><br></div><div>Thanks,</div><div>Saei=
d</div><div><br></div><blockquote style=3D"margin:0px 0px 0px 40px;border:n=
one;padding:0px"><div><font face=3D"monospace" size=3D"1">nuc03@nuc03:~$ ap=
t-show-versions gnuradio</font></div><div><font face=3D"monospace" size=3D"=
1">gnuradio:amd64/xenial 3.7.9.1-2ubuntu1 uptodate</font></div></blockquote=
><div><br></div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;pa=
dding:0px"><div><font face=3D"monospace" size=3D"1">nuc03@nuc03:~$ uhd_fft<=
/font></div><div><font face=3D"monospace" size=3D"1">Traceback (most recent=
 call last):</font></div><div><font face=3D"monospace" size=3D"1">=C2=A0 Fi=
le &quot;/usr/bin/uhd_fft&quot;, line 48, in &lt;module&gt;</font></div><di=
v><font face=3D"monospace" size=3D"1">=C2=A0 =C2=A0 from gnuradio import uh=
d</font></div><div><font face=3D"monospace" size=3D"1">=C2=A0 File &quot;/u=
sr/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py&quot;, line 135, in=
 &lt;module&gt;</font></div><div><font face=3D"monospace" size=3D"1">=C2=A0=
 =C2=A0 _prepare_uhd_swig()</font></div><div><font face=3D"monospace" size=
=3D"1">=C2=A0 File &quot;/usr/lib/python2.7/dist-packages/gnuradio/uhd/__in=
it__.py&quot;, line 38, in _prepare_uhd_swig</font></div><div><font face=3D=
"monospace" size=3D"1">=C2=A0 =C2=A0 import uhd_swig</font></div><div><font=
 face=3D"monospace" size=3D"1">=C2=A0 File &quot;/usr/lib/python2.7/dist-pa=
ckages/gnuradio/uhd/uhd_swig.py&quot;, line 28, in &lt;module&gt;</font></d=
iv><div><font face=3D"monospace" size=3D"1">=C2=A0 =C2=A0 _uhd_swig =3D swi=
g_import_helper()</font></div><div><font face=3D"monospace" size=3D"1">=C2=
=A0 File &quot;/usr/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py&qu=
ot;, line 24, in swig_import_helper</font></div><div><font face=3D"monospac=
e" size=3D"1">=C2=A0 =C2=A0 _mod =3D imp.load_module(&#39;_uhd_swig&#39;, f=
p, pathname, description)</font></div><div><font face=3D"monospace" size=3D=
"1">ImportError: /usr/lib/python2.7/dist-packages/gnuradio/uhd/_<a href=3D"=
http://uhd_swig.x86_64-linux-gnu.so" target=3D"_blank">uhd_swig.x86_64-linu=
x-gnu.so</a>: undefined symbol: _ZN3uhd11time_spec_t15get_system_timeEv</fo=
nt></div></blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Michael D=
ickens<br>Ettus Research Technical Support<br>Email: <a href=3D"mailto:supp=
ort@ettus.com" target=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"h=
ttps://ettus.com/" target=3D"_blank">https://ettus.com/</a></div></div></di=
v></div>

--000000000000ae85f80594a27ad1--


--===============4393425028131676191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4393425028131676191==--

