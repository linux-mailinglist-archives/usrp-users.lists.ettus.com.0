Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B89D3408
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2019 00:40:10 +0200 (CEST)
Received: from [::1] (port=46932 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iIh6K-0007rw-7y; Thu, 10 Oct 2019 18:40:04 -0400
Received: from mail-lf1-f44.google.com ([209.85.167.44]:35109)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saeidh@gmail.com>) id 1iIh6F-0007lI-P0
 for usrp-users@lists.ettus.com; Thu, 10 Oct 2019 18:39:59 -0400
Received: by mail-lf1-f44.google.com with SMTP id w6so5597938lfl.2
 for <usrp-users@lists.ettus.com>; Thu, 10 Oct 2019 15:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=L1XjEWn5VSXq+LsIve8C5KdFKeoM/pLq5If9HiAvwOY=;
 b=CLqDWoLfLpn58EtvtBtV3FMCnULWTKiX1Ankck3mDqzrbQunWLaYmYQCUlKK7UZER4
 LaMqjESLJccUGsO0xD4OfFKhYqxTLIT3Cqt6Ty4eAcS9l82wxC45+uAhRB9q4avkCkV7
 FxI9yo7wxzO/hJ2RczeFZwNh2UszyhJoVEbLEQw6UQ1c9KBSCpUEFGVLXQu0FzSxe7fa
 O+aKQ8hFunN2nv1MmZ+z5NvDV8XZdzcAeW9IYSqeOUbtYKGrDUWOqbalxx8TIRIVNvmY
 ty6JsUh0UBGCnPsrL0KIxAtpFoX6F0DQ4Uk3un2CEn9jvXBpv2qYbdzgan3iC0LRlH7t
 F/Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=L1XjEWn5VSXq+LsIve8C5KdFKeoM/pLq5If9HiAvwOY=;
 b=aCVKY0WdGsgJr4piThfIy8qV04231wPuqHSJJtYbEM4u+p+0G3LPvpr4Ykr9YT8d3j
 +6Zwl+qpyyc6FPT33iIQRITvswWkuZ0cL0c53xed6g0REtVDeZYn9Pl8ylf+E2QGoejA
 Yl0vSL6bCwFNnAUWGw1GXIzUMtWCYjsoE8EeFELNJOp4F8CWKq8ZO+GsyMqTjxF8RZzU
 u2QOhi6wpNbxBRFo7S+bGqATkeCfBmhEUbIZZCGT6OzMsC5Rltpk4z+uP7LBw2xbD3EB
 jCcJxbe5XjAeQZZLhsBtFnOiDZjlaPLUhmAfNmn8s5BF2XxxgufxtTu2ur37t793dK3U
 b6Xw==
X-Gm-Message-State: APjAAAUNYCyukpmc+t26TsoPOI9fzoRCyCIkJt7Pr+hskylsNqU3BSJ1
 86ZBB460VVSnU5q5uw0VbGucQPDzMqFpCwrDYTB9NTcG
X-Google-Smtp-Source: APXvYqyk9UAAdhdNIQubMFDEVj1NAkN6JMrZd5FC434XykU69oYCHyEtJCHjy+viuyErjwe7LQsm6xgDvbJaXgl6Uxs=
X-Received: by 2002:ac2:5306:: with SMTP id c6mr7232249lfh.106.1570747157225; 
 Thu, 10 Oct 2019 15:39:17 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 10 Oct 2019 18:39:04 -0400
Message-ID: <CANQ3h3_fwR=baRxHo+Aicms8C3CFnWzR51qSS99xo2u--OY2vg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] uhd_fft failure
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
Content-Type: multipart/mixed; boundary="===============3943297753293279886=="
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

--===============3943297753293279886==
Content-Type: multipart/alternative; boundary="00000000000056a4d505949612da"

--00000000000056a4d505949612da
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I've been having some problems running the uhd_fft function recently. I did
a fresh install of Ubuntu 16.04, then installed gnuradio using the package
manager. When I run uhd_fft this is what I get. Would anyone have an idea
as to where the problem is?

Thanks,
Saeid

nuc03@nuc03:~$ apt-show-versions gnuradio
gnuradio:amd64/xenial 3.7.9.1-2ubuntu1 uptodate


nuc03@nuc03:~$ uhd_fft
Traceback (most recent call last):
  File "/usr/bin/uhd_fft", line 48, in <module>
    from gnuradio import uhd
  File "/usr/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py", line
135, in <module>
    _prepare_uhd_swig()
  File "/usr/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py", line
38, in _prepare_uhd_swig
    import uhd_swig
  File "/usr/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py", line
28, in <module>
    _uhd_swig = swig_import_helper()
  File "/usr/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py", line
24, in swig_import_helper
    _mod = imp.load_module('_uhd_swig', fp, pathname, description)
ImportError: /usr/lib/python2.7/dist-packages/gnuradio/uhd/_
uhd_swig.x86_64-linux-gnu.so: undefined symbol:
_ZN3uhd11time_spec_t15get_system_timeEv

--00000000000056a4d505949612da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello everyone,<div><br></div><div>I&#39;ve been having so=
me problems running the uhd_fft function recently. I did a fresh install of=
 Ubuntu 16.04, then installed gnuradio using the package manager. When I ru=
n uhd_fft this is what I get. Would anyone have an idea as to where the pro=
blem=C2=A0is?</div><div><br></div><div>Thanks,</div><div>Saeid</div><div><b=
r></div><blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"><di=
v><font face=3D"monospace" size=3D"1">nuc03@nuc03:~$ apt-show-versions gnur=
adio</font></div><div><font face=3D"monospace" size=3D"1">gnuradio:amd64/xe=
nial 3.7.9.1-2ubuntu1 uptodate</font></div></blockquote><div><br></div><blo=
ckquote style=3D"margin:0 0 0 40px;border:none;padding:0px"><div><font face=
=3D"monospace" size=3D"1">nuc03@nuc03:~$ uhd_fft</font></div><div><font fac=
e=3D"monospace" size=3D"1">Traceback (most recent call last):</font></div><=
div><font face=3D"monospace" size=3D"1">=C2=A0 File &quot;/usr/bin/uhd_fft&=
quot;, line 48, in &lt;module&gt;</font></div><div><font face=3D"monospace"=
 size=3D"1">=C2=A0 =C2=A0 from gnuradio import uhd</font></div><div><font f=
ace=3D"monospace" size=3D"1">=C2=A0 File &quot;/usr/lib/python2.7/dist-pack=
ages/gnuradio/uhd/__init__.py&quot;, line 135, in &lt;module&gt;</font></di=
v><div><font face=3D"monospace" size=3D"1">=C2=A0 =C2=A0 _prepare_uhd_swig(=
)</font></div><div><font face=3D"monospace" size=3D"1">=C2=A0 File &quot;/u=
sr/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py&quot;, line 38, in =
_prepare_uhd_swig</font></div><div><font face=3D"monospace" size=3D"1">=C2=
=A0 =C2=A0 import uhd_swig</font></div><div><font face=3D"monospace" size=
=3D"1">=C2=A0 File &quot;/usr/lib/python2.7/dist-packages/gnuradio/uhd/uhd_=
swig.py&quot;, line 28, in &lt;module&gt;</font></div><div><font face=3D"mo=
nospace" size=3D"1">=C2=A0 =C2=A0 _uhd_swig =3D swig_import_helper()</font>=
</div><div><font face=3D"monospace" size=3D"1">=C2=A0 File &quot;/usr/lib/p=
ython2.7/dist-packages/gnuradio/uhd/uhd_swig.py&quot;, line 24, in swig_imp=
ort_helper</font></div><div><font face=3D"monospace" size=3D"1">=C2=A0 =C2=
=A0 _mod =3D imp.load_module(&#39;_uhd_swig&#39;, fp, pathname, description=
)</font></div><div><font face=3D"monospace" size=3D"1">ImportError: /usr/li=
b/python2.7/dist-packages/gnuradio/uhd/_<a href=3D"http://uhd_swig.x86_64-l=
inux-gnu.so">uhd_swig.x86_64-linux-gnu.so</a>: undefined symbol: _ZN3uhd11t=
ime_spec_t15get_system_timeEv</font></div></blockquote></div>

--00000000000056a4d505949612da--


--===============3943297753293279886==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3943297753293279886==--

