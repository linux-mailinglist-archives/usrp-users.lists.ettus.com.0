Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC70C28E562
	for <lists+usrp-users@lfdr.de>; Wed, 14 Oct 2020 19:30:39 +0200 (CEST)
Received: from [::1] (port=60170 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kSkbl-0007va-LD; Wed, 14 Oct 2020 13:30:37 -0400
Received: from mail-oi1-f177.google.com ([209.85.167.177]:39397)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1kSkbh-0007nr-Cm
 for usrp-users@lists.ettus.com; Wed, 14 Oct 2020 13:30:33 -0400
Received: by mail-oi1-f177.google.com with SMTP id c13so17046oiy.6
 for <usrp-users@lists.ettus.com>; Wed, 14 Oct 2020 10:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wZQ0wbGAiI4aIbGlUw7kgJTswMc/8/Zc2Y4Ao3k9Quk=;
 b=IcCUlH1qfGWflFfDWamj5B6xYrqTW9MheljF2chlB0PLyyNY8CUh0AClWa6D4RiUiM
 16VTOKtiEqWrHQJk5maH/H7047E91km684F8Qbi3uWFzP3NXBYvJCqjh1clhlVCfvxCb
 iFSZIAU0u0qU0+gcBjmjggkwOCeU6KxtAyJV0R5iBNSRZ8ntwErsRE97jDkjsbDBDAHV
 UD9buTTrFqlro873GZRrWM3E96gcBgZLmUmqR8WKBUlfZcbec37xWhy8MlYPTWQXdP64
 HvMYBERwPcT1bHhX97Yz2aYEI8v1RryI3q9tf/KpQKK7E8Ic0i8xlyuJYE7jGREmFoYu
 nJfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wZQ0wbGAiI4aIbGlUw7kgJTswMc/8/Zc2Y4Ao3k9Quk=;
 b=WvmeRYL/6sBaC5ZW0RgfUwTpljCkbhX+7qShQX/ySCTpHBQdwrEwUTpgu0YQVaJ4OB
 8Ox7IHPP2en4WxwAXs9d2E61fnKazpM8fN5bAZF/y+c4dXBbeh54G60j7uK1T6fili5z
 4DKldWiuof310hXtP8uUXBGaWQeq5HpnhqSak1AJGynCdnswklKGJMmcjhPbTMNuzPNQ
 Aky6oSNOqErDeppKtER3EuuvbxcGLdHpvH21ch8TGcbmDtb4dxAdd4LKfPaHoIbU20s0
 qixQaZb4hMuP5RZLynvh6D/3+AZyISUkkQvD3BzdGHp0SM7HG6W9aQhCzp3l2BoOvn92
 hjtQ==
X-Gm-Message-State: AOAM532llUv/H56TTk9cBruCSlfqS8eEJkwRc57lvxOeAdG8cIFToLjJ
 Q66Jj7sG4j8AWzj6Pg2R57naXGuCkVtUU2G5uN4CnN65
X-Google-Smtp-Source: ABdhPJy/j45301pdjW7oNx8zJWHsHrP0DahTNcnMdHiM6WfhMs026BBaFRegUFXPFG5P0GRdoLzIpIdtK58UQ4pvIls=
X-Received: by 2002:aca:38c1:: with SMTP id f184mr241215oia.145.1602696592630; 
 Wed, 14 Oct 2020 10:29:52 -0700 (PDT)
MIME-Version: 1.0
References: <SN2PR01MB1968CB85A0B328D1E069A0EDA8070@SN2PR01MB1968.prod.exchangelabs.com>
 <CAGNhwTOCLRdzV7pn0yv0+vOOE5ozHqg684YRgwC3=-T_f72AtQ@mail.gmail.com>
 <CAFOi1A5wY9OEucm_+CR1VAnC982Q4ec=7nk+mr0NS1-MoMAL5Q@mail.gmail.com>
 <4fcc0ced-e20c-2b9e-90ac-2cf36704f391@balister.org>
In-Reply-To: <4fcc0ced-e20c-2b9e-90ac-2cf36704f391@balister.org>
Date: Wed, 14 Oct 2020 12:29:41 -0500
Message-ID: <CAFche=i0aFOYSN_Ye9_Q-=ygCnL_5Q=03yV-we0GL1au8fy+Mg@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Subject: Re: [USRP-users] Cross-Compile Issues with E320
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
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5895406526481061357=="
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

--===============5895406526481061357==
Content-Type: multipart/alternative; boundary="000000000000163fe205b1a4e17e"

--000000000000163fe205b1a4e17e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Philip,

All the files are located in that same location Michael mentioned, sorted
by product and named by release. So this should never go stale.

https://files.ettus.com/binaries/cache/

If you're ever unsure which one is the right one for your version, you can
check the manifest file, which is what uhd_images_downloader does. For
example:

https://github.com/EttusResearch/uhd/blob/v4.0.0.0/images/manifest.txt

Thanks

Wade

On Wed, Oct 14, 2020 at 11:15 AM Philip Balister via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 10/14/20 6:00 AM, Martin Braun via USRP-users wrote:
> > A quick reminder that
> >
> > uhd_images_downloader -t e320 -t sdk
> >
> > will download the corresponding SDK for your UHD version even when the
> link
> > Michael provided is no longer accurate.
>
> Installing uhd on a machine just to figure out a download link seems
> excessive. Can you publish direct links in a form that do not go stale?
>
> Philip
>
> >
> > M
> >
> > On Mon, 12 Oct 2020, 17:48 Michael Dickens via USRP-users, <
> > usrp-users@lists.ettus.com> wrote:
> >
> >> Hi Mark - You need to use a more recent SDK for the cross-build. Here
> are
> >> the SDKs for the 2 most recent UHD releases. I hope this helps! - MLD
> >>
> >> <
> >>
> https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e32=
0_sdk_default-v3.15.0.0.zip
> >>>
> >> <
> >>
> https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.0.0.0/e3xx_e320=
_sdk_default-v4.0.0.0.zip
> >>>
> >>
> >>
> >> On Mon, Oct 12, 2020 at 10:47 AM Andrews, Mark J. via USRP-users <
> >> usrp-users@lists.ettus.com> wrote:
> >>
> >>> Hello,
> >>>
> >>> I am trying to cross-compile UHD on an E320 with the OE SDK, but I
> cannot
> >>> get past the cmake step due to multiple errors.  On the host PC, I am
> able
> >>> to install the SDK and source the environment variable without issues=
.
> >>> When I go to build UHD, the first error is that the CMakeLists.txt
> file for
> >>> UHD 3.15 has a minimum CMake version of 3.5.1, but the OE SDK cmake i=
s
> >>> version 2.8.12.2 (my host PC is version 3.18.4).  I manually edited t=
he
> >>> CMakeLists.txt to accept the older version of CMake, but then it has =
a
> >>> boost version error and cannot find several python packages (platform=
,
> >>> mako, requests, numpy).  I again edited it for the Boost version, but
> it
> >>> still can't find the python packages.  Do I need to somehow install
> all the
> >>> UHD dependencies in the OE SDK paths after installing it?  Or am I
> doing
> >>> something else wrong?
> >>>
> >>> I also tried running "import sys" to see the Python path configuratio=
n
> >>> and the "program name", "sys._base_executable", and "sys.executable"
> are
> >>> all pointing to "/usr/bin/python3" instead of the
> >>> "/home/~/oe/sysroots/x86_64-oesdk-linux" path.  Not sure if that's
> part of
> >>> the problem or not, but it seemed suspicious.  The cmake and import s=
ys
> >>> outputs are copied below.
> >>>
> >>>
> >>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >>> cmake
> -DCMAKE_TOOLCHAIN_FILE=3D../host/cmake/Toolchains/oe-sdk_cross.cmake
> >>> -DCMAKE_INSTALL_PREFIX=3D/usr -DENABLE_E300=3DON ..
> >>>
> >>> -- Configuring the Python interpreter...
> >>> -- Manually determining build Python version...
> >>> ImportError: No module named site
> >>> -- Python interpreter:
> >>> /home/~/oe/sysroots/x86_64-oesdk-linux/usr/bin/python Version:
> >>> -- Override with: -DPYTHON_EXECUTABLE=3D<path-to-python>
> >>> -- Manually determining runtime Python version...
> >>> ImportError: No module named site
> >>> -- Python runtime interpreter:
> >>> /home/~/oe/sysroots/x86_64-oesdk-linux/usr/bin/python Version:
> >>> -- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D<path-to-python>
> >>> -- Finding Python Libraries...
> >>> CMake Warning (dev) at cmake/Modules/UHDPython.cmake:168
> (find_package):
> >>>   Ignoring EXACT since no version is requested.
> >>> Call Stack (most recent call first):
> >>>   cmake/Modules/UHDVersion.cmake:9 (include)
> >>>   cmake/Modules/UHDPackage.cmake:9 (include)
> >>>   CMakeLists.txt:103 (include)
> >>> This warning is for project developers.  Use -Wno-dev to suppress it.
> >>>
> >>> -- Python Libraries:
> >>> /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/
> >>> libpython2.7.so
> >>> -- Python include directories:
> >>>
> /home/`/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/include/python=
2.7
> >>> -- Working off of feature or development branch. Updating version
> number.
> >>> ImportError: No module named site
> >>> ImportError: No module named site
> >>> ImportError: No module named site
> >>> -- Using UHD Images Directory: /usr/share/uhd/images
> >>> -- Build type not specified: defaulting to release.
> >>> --
> >>> -- Configuring Boost C++ Libraries...
> >>> --
> >>> -- Checking for Boost version 1.57 or greater
> >>> --   Looking for required Boost components...
> >>> --     Disabling boost::asio use of std::string_view
> >>> --   Boost version: 1.57.0
> >>> --   Boost include directories:
> >>> /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/include
> >>> --   Boost library directories:
> >>> /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib
> >>> --   Boost libraries:
> >>>
> /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_c=
hrono-mt.so;/home/!/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/=
libboost_date_time-mt.so;/home/!/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnu=
eabi/usr/lib/libboost_filesystem-mt.so;/home/~/oe/sysroots/armv7ahf-vfp-neo=
n-oe-linux-gnueabi/usr/lib/libboost_program_options-mt.so;/home/~/oe/sysroo=
ts/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_regex-mt.so;/home/~/=
oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_unit_test_f=
ramework.so;/home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/=
libboost_serialization-mt.so;/home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux=
-gnueabi/usr/lib/libboost_thread-mt.so;/home/~/oe/sysroots/armv7ahf-vfp-neo=
n-oe-linux-gnueabi/usr/lib/libboost_system-mt.so
> >>> -- Looking for Boost version 1.57 or greater - found
> >>> --
> >>> -- Python checking for Python version 2.7 or greater
> >>> ImportError: No module named site
> >>> -- Python checking for Python version 2.7 or greater - "import
> platform"
> >>> failed
> >>> --
> >>> -- Python checking for Mako templates 0.4.2 or greater
> >>> ImportError: No module named site
> >>> -- Python checking for Mako templates 0.4.2 or greater - "import mako=
"
> >>> failed
> >>> --
> >>> -- Python checking for requests 2.0 or greater
> >>> ImportError: No module named site
> >>> -- Python checking for requests 2.0 or greater - "import requests"
> failed
> >>> --
> >>> -- Python checking for numpy 1.7 or greater
> >>> ImportError: No module named site
> >>> -- Python checking for numpy 1.7 or greater - "import numpy" failed
> >>> --
> >>> -- Configuring LibUHD support...
> >>> --   Dependency Boost_FOUND =3D 1
> >>> --   Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D FALSE
> >>> --   Dependency HAVE_PYTHON_MODULE_MAKO =3D FALSE
> >>> CMake Error at cmake/Modules/UHDComponent.cmake:59 (message):
> >>>   Dependencies for required component LibUHD not met.
> >>> Call Stack (most recent call first):
> >>>   CMakeLists.txt:363 (LIBUHD_REGISTER_COMPONENT)
> >>>
> >>>
> >>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
> >>> import sys
> >>>
> >>> Python path configuration:
> >>>   PYTHONHOME =3D '/home/~/oe/sysroots/x86_64-oesdk-linux'
> >>>   PYTHONPATH =3D (not set)
> >>>   program name =3D '/usr/bin/python3'
> >>>   isolated =3D 0
> >>>   environment =3D 1
> >>>   user site =3D 1
> >>>   import site =3D 1
> >>>   sys._base_executable =3D '/usr/bin/python3'
> >>>   sys.base_prefix =3D '/home/~/oe/sysroots/x86_64-oesdk-linux'
> >>>   sys.base_exec_prefix =3D '/home/~/oe/sysroots/x86_64-oesdk-linux'
> >>>   sys.executable =3D '/usr/bin/python3'
> >>>   sys.prefix =3D '/home/~/oe/sysroots/x86_64-oesdk-linux'
> >>>   sys.exec_prefix =3D '/home/~/oe/sysroots/x86_64-oesdk-linux'
> >>>   sys.path =3D [
> >>>     '/home/~/oe/sysroots/x86_64-oesdk-linux/lib/python38.zip',
> >>>     '/home/~/oe/sysroots/x86_64-oesdk-linux/lib/python3.8',
> >>>     '/home/~/oe/sysroots/x86_64-oesdk-linux/lib/python3.8/lib-dynload=
',
> >>>   ]
> >>> Fatal Python error: init_fs_encoding: failed to get the Python codec =
of
> >>> the filesystem encoding
> >>> Python runtime state: core initialized
> >>> ModuleNotFoundError: No module named 'encodings'
> >>>
> >>>
> >>>
> >>>
> >>>
> >>> _______________________________________________
> >>> USRP-users mailing list
> >>> USRP-users@lists.ettus.com
> >>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>
> >> _______________________________________________
> >> USRP-users mailing list
> >> USRP-users@lists.ettus.com
> >> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000163fe205b1a4e17e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Philip,</div><div><br></div><div>All the files are lo=
cated in that same location Michael mentioned, sorted by product and named =
by release. So this should never go stale.<br></div><div><br></div><div><a =
href=3D"https://files.ettus.com/binaries/cache/">https://files.ettus.com/bi=
naries/cache/</a></div><div><br></div><div>If you&#39;re ever unsure which =
one is the right one for your version, you can check the manifest file, whi=
ch is what uhd_images_downloader does. For example:<br></div><div><br></div=
><div><a href=3D"https://github.com/EttusResearch/uhd/blob/v4.0.0.0/images/=
manifest.txt">https://github.com/EttusResearch/uhd/blob/v4.0.0.0/images/man=
ifest.txt</a></div><div><br></div><div>Thanks</div><div><br></div><div>Wade=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Wed, Oct 14, 2020 at 11:15 AM Philip Balister via USRP-users &=
lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On 10/14/20 6:00 AM, Martin Braun via USRP-users wrote:<br>
&gt; A quick reminder that<br>
&gt; <br>
&gt; uhd_images_downloader -t e320 -t sdk<br>
&gt; <br>
&gt; will download the corresponding SDK for your UHD version even when the=
 link<br>
&gt; Michael provided is no longer accurate.<br>
<br>
Installing uhd on a machine just to figure out a download link seems<br>
excessive. Can you publish direct links in a form that do not go stale?<br>
<br>
Philip<br>
<br>
&gt; <br>
&gt; M<br>
&gt; <br>
&gt; On Mon, 12 Oct 2020, 17:48 Michael Dickens via USRP-users, &lt;<br>
&gt; <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br>
&gt; <br>
&gt;&gt; Hi Mark - You need to use a more recent SDK for the cross-build. H=
ere are<br>
&gt;&gt; the SDKs for the 2 most recent UHD releases. I hope this helps! - =
MLD<br>
&gt;&gt;<br>
&gt;&gt; &lt;<br>
&gt;&gt; <a href=3D"https://files.ettus.com/binaries/cache/e3xx/meta-ettus-=
v3.15.0.0/e3xx_e320_sdk_default-v3.15.0.0.zip" rel=3D"noreferrer" target=3D=
"_blank">https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e=
3xx_e320_sdk_default-v3.15.0.0.zip</a><br>
&gt;&gt;&gt;<br>
&gt;&gt; &lt;<br>
&gt;&gt; <a href=3D"https://files.ettus.com/binaries/cache/e3xx/meta-ettus-=
v4.0.0.0/e3xx_e320_sdk_default-v4.0.0.0.zip" rel=3D"noreferrer" target=3D"_=
blank">https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.0.0.0/e3xx=
_e320_sdk_default-v4.0.0.0.zip</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Mon, Oct 12, 2020 at 10:47 AM Andrews, Mark J. via USRP-users &=
lt;<br>
&gt;&gt; <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;&gt; Hello,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I am trying to cross-compile UHD on an E320 with the OE SDK, b=
ut I cannot<br>
&gt;&gt;&gt; get past the cmake step due to multiple errors.=C2=A0 On the h=
ost PC, I am able<br>
&gt;&gt;&gt; to install the SDK and source the environment variable without=
 issues.<br>
&gt;&gt;&gt; When I go to build UHD, the first error is that the CMakeLists=
.txt file for<br>
&gt;&gt;&gt; UHD 3.15 has a minimum CMake version of 3.5.1, but the OE SDK =
cmake is<br>
&gt;&gt;&gt; version 2.8.12.2 (my host PC is version 3.18.4).=C2=A0 I manua=
lly edited the<br>
&gt;&gt;&gt; CMakeLists.txt to accept the older version of CMake, but then =
it has a<br>
&gt;&gt;&gt; boost version error and cannot find several python packages (p=
latform,<br>
&gt;&gt;&gt; mako, requests, numpy).=C2=A0 I again edited it for the Boost =
version, but it<br>
&gt;&gt;&gt; still can&#39;t find the python packages.=C2=A0 Do I need to s=
omehow install all the<br>
&gt;&gt;&gt; UHD dependencies in the OE SDK paths after installing it?=C2=
=A0 Or am I doing<br>
&gt;&gt;&gt; something else wrong?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I also tried running &quot;import sys&quot; to see the Python =
path configuration<br>
&gt;&gt;&gt; and the &quot;program name&quot;, &quot;sys._base_executable&q=
uot;, and &quot;sys.executable&quot; are<br>
&gt;&gt;&gt; all pointing to &quot;/usr/bin/python3&quot; instead of the<br=
>
&gt;&gt;&gt; &quot;/home/~/oe/sysroots/x86_64-oesdk-linux&quot; path.=C2=A0=
 Not sure if that&#39;s part of<br>
&gt;&gt;&gt; the problem or not, but it seemed suspicious.=C2=A0 The cmake =
and import sys<br>
&gt;&gt;&gt; outputs are copied below.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;&gt;&gt; cmake -DCMAKE_TOOLCHAIN_FILE=3D../host/cmake/Toolchains/oe-sdk=
_cross.cmake<br>
&gt;&gt;&gt; -DCMAKE_INSTALL_PREFIX=3D/usr -DENABLE_E300=3DON ..<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; -- Configuring the Python interpreter...<br>
&gt;&gt;&gt; -- Manually determining build Python version...<br>
&gt;&gt;&gt; ImportError: No module named site<br>
&gt;&gt;&gt; -- Python interpreter:<br>
&gt;&gt;&gt; /home/~/oe/sysroots/x86_64-oesdk-linux/usr/bin/python Version:=
<br>
&gt;&gt;&gt; -- Override with: -DPYTHON_EXECUTABLE=3D&lt;path-to-python&gt;=
<br>
&gt;&gt;&gt; -- Manually determining runtime Python version...<br>
&gt;&gt;&gt; ImportError: No module named site<br>
&gt;&gt;&gt; -- Python runtime interpreter:<br>
&gt;&gt;&gt; /home/~/oe/sysroots/x86_64-oesdk-linux/usr/bin/python Version:=
<br>
&gt;&gt;&gt; -- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D&lt;path-to-py=
thon&gt;<br>
&gt;&gt;&gt; -- Finding Python Libraries...<br>
&gt;&gt;&gt; CMake Warning (dev) at cmake/Modules/UHDPython.cmake:168 (find=
_package):<br>
&gt;&gt;&gt;=C2=A0 =C2=A0Ignoring EXACT since no version is requested.<br>
&gt;&gt;&gt; Call Stack (most recent call first):<br>
&gt;&gt;&gt;=C2=A0 =C2=A0cmake/Modules/UHDVersion.cmake:9 (include)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0cmake/Modules/UHDPackage.cmake:9 (include)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0CMakeLists.txt:103 (include)<br>
&gt;&gt;&gt; This warning is for project developers.=C2=A0 Use -Wno-dev to =
suppress it.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; -- Python Libraries:<br>
&gt;&gt;&gt; /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib=
/<br>
&gt;&gt;&gt; <a href=3D"http://libpython2.7.so" rel=3D"noreferrer" target=
=3D"_blank">libpython2.7.so</a><br>
&gt;&gt;&gt; -- Python include directories:<br>
&gt;&gt;&gt; /home/`/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/inc=
lude/python2.7<br>
&gt;&gt;&gt; -- Working off of feature or development branch. Updating vers=
ion number.<br>
&gt;&gt;&gt; ImportError: No module named site<br>
&gt;&gt;&gt; ImportError: No module named site<br>
&gt;&gt;&gt; ImportError: No module named site<br>
&gt;&gt;&gt; -- Using UHD Images Directory: /usr/share/uhd/images<br>
&gt;&gt;&gt; -- Build type not specified: defaulting to release.<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; -- Configuring Boost C++ Libraries...<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; -- Checking for Boost version 1.57 or greater<br>
&gt;&gt;&gt; --=C2=A0 =C2=A0Looking for required Boost components...<br>
&gt;&gt;&gt; --=C2=A0 =C2=A0 =C2=A0Disabling boost::asio use of std::string=
_view<br>
&gt;&gt;&gt; --=C2=A0 =C2=A0Boost version: 1.57.0<br>
&gt;&gt;&gt; --=C2=A0 =C2=A0Boost include directories:<br>
&gt;&gt;&gt; /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/inc=
lude<br>
&gt;&gt;&gt; --=C2=A0 =C2=A0Boost library directories:<br>
&gt;&gt;&gt; /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib=
<br>
&gt;&gt;&gt; --=C2=A0 =C2=A0Boost libraries:<br>
&gt;&gt;&gt; /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib=
/libboost_chrono-mt.so;/home/!/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnuea=
bi/usr/lib/libboost_date_time-mt.so;/home/!/oe/sysroots/armv7ahf-vfp-neon-o=
e-linux-gnueabi/usr/lib/libboost_filesystem-mt.so;/home/~/oe/sysroots/armv7=
ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_program_options-mt.so;/home/=
~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_regex-mt.=
so;/home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_=
unit_test_framework.so;/home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnuea=
bi/usr/lib/libboost_serialization-mt.so;/home/~/oe/sysroots/armv7ahf-vfp-ne=
on-oe-linux-gnueabi/usr/lib/libboost_thread-mt.so;/home/~/oe/sysroots/armv7=
ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_system-mt.so<br>
&gt;&gt;&gt; -- Looking for Boost version 1.57 or greater - found<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; -- Python checking for Python version 2.7 or greater<br>
&gt;&gt;&gt; ImportError: No module named site<br>
&gt;&gt;&gt; -- Python checking for Python version 2.7 or greater - &quot;i=
mport platform&quot;<br>
&gt;&gt;&gt; failed<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; -- Python checking for Mako templates 0.4.2 or greater<br>
&gt;&gt;&gt; ImportError: No module named site<br>
&gt;&gt;&gt; -- Python checking for Mako templates 0.4.2 or greater - &quot=
;import mako&quot;<br>
&gt;&gt;&gt; failed<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; -- Python checking for requests 2.0 or greater<br>
&gt;&gt;&gt; ImportError: No module named site<br>
&gt;&gt;&gt; -- Python checking for requests 2.0 or greater - &quot;import =
requests&quot; failed<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; -- Python checking for numpy 1.7 or greater<br>
&gt;&gt;&gt; ImportError: No module named site<br>
&gt;&gt;&gt; -- Python checking for numpy 1.7 or greater - &quot;import num=
py&quot; failed<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; -- Configuring LibUHD support...<br>
&gt;&gt;&gt; --=C2=A0 =C2=A0Dependency Boost_FOUND =3D 1<br>
&gt;&gt;&gt; --=C2=A0 =C2=A0Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D FAL=
SE<br>
&gt;&gt;&gt; --=C2=A0 =C2=A0Dependency HAVE_PYTHON_MODULE_MAKO =3D FALSE<br=
>
&gt;&gt;&gt; CMake Error at cmake/Modules/UHDComponent.cmake:59 (message):<=
br>
&gt;&gt;&gt;=C2=A0 =C2=A0Dependencies for required component LibUHD not met=
.<br>
&gt;&gt;&gt; Call Stack (most recent call first):<br>
&gt;&gt;&gt;=C2=A0 =C2=A0CMakeLists.txt:363 (LIBUHD_REGISTER_COMPONENT)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<br>
&gt;&gt;&gt; import sys<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Python path configuration:<br>
&gt;&gt;&gt;=C2=A0 =C2=A0PYTHONHOME =3D &#39;/home/~/oe/sysroots/x86_64-oes=
dk-linux&#39;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0PYTHONPATH =3D (not set)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0program name =3D &#39;/usr/bin/python3&#39;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0isolated =3D 0<br>
&gt;&gt;&gt;=C2=A0 =C2=A0environment =3D 1<br>
&gt;&gt;&gt;=C2=A0 =C2=A0user site =3D 1<br>
&gt;&gt;&gt;=C2=A0 =C2=A0import site =3D 1<br>
&gt;&gt;&gt;=C2=A0 =C2=A0sys._base_executable =3D &#39;/usr/bin/python3&#39=
;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0sys.base_prefix =3D &#39;/home/~/oe/sysroots/x86_6=
4-oesdk-linux&#39;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0sys.base_exec_prefix =3D &#39;/home/~/oe/sysroots/=
x86_64-oesdk-linux&#39;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0sys.executable =3D &#39;/usr/bin/python3&#39;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0sys.prefix =3D &#39;/home/~/oe/sysroots/x86_64-oes=
dk-linux&#39;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0sys.exec_prefix =3D &#39;/home/~/oe/sysroots/x86_6=
4-oesdk-linux&#39;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0sys.path =3D [<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0&#39;/home/~/oe/sysroots/x86_64-oesdk-linux=
/lib/python38.zip&#39;,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0&#39;/home/~/oe/sysroots/x86_64-oesdk-linux=
/lib/python3.8&#39;,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0&#39;/home/~/oe/sysroots/x86_64-oesdk-linux=
/lib/python3.8/lib-dynload&#39;,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0]<br>
&gt;&gt;&gt; Fatal Python error: init_fs_encoding: failed to get the Python=
 codec of<br>
&gt;&gt;&gt; the filesystem encoding<br>
&gt;&gt;&gt; Python runtime state: core initialized<br>
&gt;&gt;&gt; ModuleNotFoundError: No module named &#39;encodings&#39;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank=
">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_=
lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">US=
RP-users@lists.ettus.com</a><br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000163fe205b1a4e17e--


--===============5895406526481061357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5895406526481061357==--

