Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B73E20F697
	for <lists+usrp-users@lfdr.de>; Tue, 30 Jun 2020 16:01:38 +0200 (CEST)
Received: from [::1] (port=50038 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jqGpL-0000NH-7q; Tue, 30 Jun 2020 10:01:35 -0400
Received: from mail-ej1-f43.google.com ([209.85.218.43]:34696)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ejkreinar@gmail.com>) id 1jqGpG-0000H6-Au
 for usrp-users@lists.ettus.com; Tue, 30 Jun 2020 10:01:30 -0400
Received: by mail-ej1-f43.google.com with SMTP id y10so20776836eje.1
 for <usrp-users@lists.ettus.com>; Tue, 30 Jun 2020 07:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=H4bA1MyaUVjPdjh7ssf4/zmz0V0+UzAxITNaOgevNRI=;
 b=CGs+3WTVx3F/rZBKqiLDu2KODc9aXwxAm0jlROcY6FDbRVVlYyYK/eaxgxHzyvkd4J
 Q8C01gk1H1Zi5dlHVgwbeghLxYDElkMYjJ6GIojF35zkMLyZ1iYM1xerc4wMnAlZ5NzC
 NIWhvwl2+OYEUQ5Zklw2UPHyg7PnsyTimVG8+lVeWfY1i31a7VsYNqPqfR45tQ9Lv3Gh
 Dytus03IEcPY6CssF847xJRq054inPha4/01CV/AP9OnTt/CwBi24oaFenku78loLR8J
 6XCtwaHedCZ2O6xUUpTPN2S/Dwar8xXdaI3eIkbyKMjDiIuomkYziBHRoHhjIX4/AjiT
 5/bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=H4bA1MyaUVjPdjh7ssf4/zmz0V0+UzAxITNaOgevNRI=;
 b=tmmDW6+GyKiyvVvxUAeewnMlmFgrs0SxEPOKNvBtIkM0vpUW8h5855GkNFeNpHGCAh
 fxzzMOYpU/rasiBTV8Ns0ZVYsRZu+mCnYfhmHZ8ZZNA4d2lahNT/3dJO9Pxh4WIl7h16
 t32yyDYfYds6jIwG03idYD0cqj2eoRyE3ZxGqGR7V6dr64uD9wl4aeJ7ruDLkVga7cNP
 KveYzQ479VbuVJfaIHrYrvS+obhLAOQqjod5PQEE+rl4HDbHHTdGYhc4edzU+NfK/pAY
 5QwS2GaYBqHWQM4RCERmN4aNBvvmp51e0493q11qTZfFYF8faffw0y0Rha8PcZcm9ArD
 4cAA==
X-Gm-Message-State: AOAM5336kw2cIcNl5vv1aNDtiqigKrMEoFNOy6cSW4Jip7RmLS/GcS6E
 LeW22JEvwBc0OQT8dRTV0nBS3oOf2s9ZshzLwmWMhN071hA=
X-Google-Smtp-Source: ABdhPJyT6lJK7UTn5DWQRA5gqz2PouADzKbg8M4uzKDDCjq1uCrQfnk0PjFiUl87pDGAZAYh7AlCCBTvntrlmx/vBPQ=
X-Received: by 2002:a17:906:69c3:: with SMTP id
 g3mr19347014ejs.47.1593525648191; 
 Tue, 30 Jun 2020 07:00:48 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 30 Jun 2020 10:00:37 -0400
Message-ID: <CADRnH23bYgB4VKpKEy8r8r=AsPHgSAhfbTV1hFUV_P58RAqzeA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 discuss-gnuradio@gnu.org
Subject: [USRP-users] How to find and link OOT module with gnuradio 3.8?
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
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Content-Type: multipart/mixed; boundary="===============6825346764175239078=="
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

--===============6825346764175239078==
Content-Type: multipart/alternative; boundary="00000000000033767605a94d9a8b"

--00000000000033767605a94d9a8b
Content-Type: text/plain; charset="UTF-8"

Hi gnuradio and usrp-users,

I'm trying to update rfnoc OOT modules for gnuradio 3.8 (gasp).

But I'm having trouble finding and linking to gr-ettus specifically, and I
wonder how we're supposed to call find_package(<OOT>) and then link to OOT
modules in general with the updated cmake workflow... Trying to find and
link gr-ettus, I've tried a few things...

1) find_package(ettus)

I believe this worked against gnuradio-3.7. Now, I get the following error
during cmake configure...

```
--   No package 'ettus' found
CMake Error at /usr/local/lib/cmake/ettus/ettusConfig.cmake:41 (include):
  include could not find load file:
    /usr/local/lib/cmake/ettus/ettusTarget.cmake
```

2) find_package(gnuradio-ettus)

This seems more promising, since GR_LIBRARY_FOO seems to
install gnuradio-ettus cmake files into the lib/cmake/ettus install
location. This fails in cmake configure with the following error:

```
CMake Error at gr-theseus/CMakeLists.txt:84 (find_package):
  By not providing "Findgnuradio-ettus.cmake" in CMAKE_MODULE_PATH this
  project has asked CMake to find a package configuration file provided by
  "gnuradio-ettus", but CMake did not find one.

  Could not find a package configuration file provided by "gnuradio-ettus"
  with any of the following names:

    gnuradio-ettusConfig.cmake
    gnuradio-ettus-config.cmake

  Add the installation prefix of "gnuradio-ettus" to CMAKE_PREFIX_PATH or
set
  "gnuradio-ettus_DIR" to a directory containing one of the above files.  If
  "gnuradio-ettus" provides a separate development package or SDK, be sure
it
  has been installed.
```


Interestingly, if I change the GR_CMAKE_DIR *inside gr-ettus* to point to
${CMAKE_MODULES_DIR)/gnuradio-ettus (
https://github.com/EttusResearch/gr-ettus/blob/b69260655e974786ea6e611bd91ab578b13ec72a/CMakeLists.txt#L69),
then the gnuradio-ettus cmake modules get installed to
lib/cmake/gnuradio-ettus. Then, in my OOT module, calling
find_package(gnuradio-ettus) finds gr-ettus, and
target_link_libraries(<my-library> gnuradio-ettus) links successfully.

So: Is this right? Am I missing something obvious here? Should gnuradio OOT
modules set their GR_CMAKE_DIR to gnuradio-<module>?

Thanks for the help!
EJ

--00000000000033767605a94d9a8b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi gnuradio and usrp-users,<br><br>I&#39;m trying to updat=
e rfnoc OOT modules for gnuradio 3.8 (gasp).<div><br></div><div>But I&#39;m=
 having trouble=C2=A0finding and linking to gr-ettus specifically, and I wo=
nder how we&#39;re supposed to call find_package(&lt;OOT&gt;) and then link=
 to OOT modules in general with the updated cmake workflow... Trying to fin=
d and link gr-ettus, I&#39;ve tried a few things...</div><div><br>1) find_p=
ackage(ettus)</div><div><br></div><div>I believe this worked against gnurad=
io-3.7. Now, I get the following error during cmake configure...<br><br>```=
<br>-- =C2=A0 No package &#39;ettus&#39; found<br>CMake Error at /usr/local=
/lib/cmake/ettus/ettusConfig.cmake:41 (include):<br>=C2=A0 include could no=
t find load file:<br>=C2=A0 =C2=A0 /usr/local/lib/cmake/ettus/ettusTarget.c=
make</div><div>```</div><div><br></div><div>2) find_package(gnuradio-ettus)=
<br><br>This seems more promising, since GR_LIBRARY_FOO seems to install=C2=
=A0gnuradio-ettus cmake files into the=C2=A0lib/cmake/ettus install locatio=
n. This fails in cmake configure with the following error:<br><br>```<br>CM=
ake Error at gr-theseus/CMakeLists.txt:84 (find_package):<br>=C2=A0 By not =
providing &quot;Findgnuradio-ettus.cmake&quot; in CMAKE_MODULE_PATH this<br=
>=C2=A0 project has asked CMake to find a package configuration file provid=
ed by<br>=C2=A0 &quot;gnuradio-ettus&quot;, but CMake did not find one.<br>=
<br>=C2=A0 Could not find a package configuration file provided by &quot;gn=
uradio-ettus&quot;<br>=C2=A0 with any of the following names:<br><br>=C2=A0=
 =C2=A0 gnuradio-ettusConfig.cmake<br>=C2=A0 =C2=A0 gnuradio-ettus-config.c=
make<br><br>=C2=A0 Add the installation prefix of &quot;gnuradio-ettus&quot=
; to CMAKE_PREFIX_PATH or set<br>=C2=A0 &quot;gnuradio-ettus_DIR&quot; to a=
 directory containing one of the above files.=C2=A0 If<br>=C2=A0 &quot;gnur=
adio-ettus&quot; provides a separate development package or SDK, be sure it=
<br>=C2=A0 has been installed.<br>```</div><div><br></div><div><br></div><d=
iv>Interestingly, if I change the GR_CMAKE_DIR *inside gr-ettus* to point=
=C2=A0to ${CMAKE_MODULES_DIR)/gnuradio-ettus=C2=A0(<a href=3D"https://githu=
b.com/EttusResearch/gr-ettus/blob/b69260655e974786ea6e611bd91ab578b13ec72a/=
CMakeLists.txt#L69">https://github.com/EttusResearch/gr-ettus/blob/b6926065=
5e974786ea6e611bd91ab578b13ec72a/CMakeLists.txt#L69</a>), then the gnuradio=
-ettus cmake modules get installed to lib/cmake/gnuradio-ettus. Then, in my=
 OOT module, calling find_package(gnuradio-ettus) finds gr-ettus, and targe=
t_link_libraries(&lt;my-library&gt; gnuradio-ettus) links successfully.</di=
v><div><br></div><div>So: Is this right? Am I missing something obvious her=
e? Should gnuradio OOT modules set their=C2=A0GR_CMAKE_DIR to gnuradio-&lt;=
module&gt;?=C2=A0</div><div><br></div><div>Thanks for the=C2=A0help!<br>EJ<=
/div><div><br></div></div>

--00000000000033767605a94d9a8b--


--===============6825346764175239078==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6825346764175239078==--

