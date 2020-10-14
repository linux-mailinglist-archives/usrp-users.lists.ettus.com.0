Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC10528E03C
	for <lists+usrp-users@lfdr.de>; Wed, 14 Oct 2020 14:01:55 +0200 (CEST)
Received: from [::1] (port=57594 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kSfTe-0003Oa-5F; Wed, 14 Oct 2020 08:01:54 -0400
Received: from mail-ej1-f45.google.com ([209.85.218.45]:33656)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kSfTa-0003GO-BB
 for usrp-users@lists.ettus.com; Wed, 14 Oct 2020 08:01:50 -0400
Received: by mail-ej1-f45.google.com with SMTP id c22so4503717ejx.0
 for <usrp-users@lists.ettus.com>; Wed, 14 Oct 2020 05:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j3IAWbSwMf+SAPD9aX4QEY7Ps6ylc4qhmHSqY85HLrI=;
 b=AInbvcr+O4AbT7XTRARxDIdsY/BsE7pAR0CYfGqXoW4slipCYaZswXvs+bWg1jUAG0
 lJAMfUz4cDZEj63UHBke8Nqnr1g1m9/ZwCb91q3xIEJ/aT660Are2yfxmorJ6PXT9yFu
 CwlSYGMgBn6kpPu8xRfcqPBC+FC2LH2ohZUAflOUHxBaAS94hjDg3Z2JpeK3lTy8tr1+
 /XIgN2ajCDgxkovzj8n2lPZhw5o+4AWN7EfORU1j3JJ9lxREo2eLbts+s9bXi4W25qPz
 In489kfVAhqhPkCbFY2pHeHZsAQkEiRqdPeFX1zCq6iXHqnk2oR5oy9S1B/QZDSKoWfo
 aB9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j3IAWbSwMf+SAPD9aX4QEY7Ps6ylc4qhmHSqY85HLrI=;
 b=WjTvo2Vsf/bEIH6t6z7nQrkDSyxguhbVnHQTefyczW1N1XmOiXSOEnpKn70apDMUzm
 pGlYeyCgQ1GJ4mjeBQW7wU/wx2L7PMRHVPCADCbl4hlBSSFiXYl3ZhjJtQ8LUo1FHssJ
 w5U4BHMNaskGvuB7K46Z5nBs/iPqXikhfDLrPqmEOL8vsj99mWAlSpFoULFDPuaEJEfE
 Jz8El0CYbJJMfA4Fn5FuyqCXQVHDmvhDw1WFAxcVE1BTvPBNbw6cqZ1gRdjPZM/94u+O
 SS30aOBICkeGzg1Bt3Gwk8kzELJLnZU1kNmcdJqKUxjfwvP6qgrMC6yUVb71vbtPHwbs
 2CEQ==
X-Gm-Message-State: AOAM532fr5MgqSzpdM283D15MrZxA989XJHVnLtJCyfVDJ5q9+A3+IU+
 XRLgFj6zeCOtSCwArBmUX6rslTr1gmJp2DUbKhFaRSL50FM1sQ==
X-Google-Smtp-Source: ABdhPJyudHfRPvp/6A7F48zyinpDj+8Y6RROJBDi/Cqx5O/gAxll4rzlZN35h93/Vur/3sKRXDtcxK1cFENR50ys7fg=
X-Received: by 2002:a17:906:d8e:: with SMTP id
 m14mr5109799eji.448.1602676869030; 
 Wed, 14 Oct 2020 05:01:09 -0700 (PDT)
MIME-Version: 1.0
References: <SN2PR01MB1968CB85A0B328D1E069A0EDA8070@SN2PR01MB1968.prod.exchangelabs.com>
 <CAGNhwTOCLRdzV7pn0yv0+vOOE5ozHqg684YRgwC3=-T_f72AtQ@mail.gmail.com>
In-Reply-To: <CAGNhwTOCLRdzV7pn0yv0+vOOE5ozHqg684YRgwC3=-T_f72AtQ@mail.gmail.com>
Date: Wed, 14 Oct 2020 14:00:48 +0200
Message-ID: <CAFOi1A5wY9OEucm_+CR1VAnC982Q4ec=7nk+mr0NS1-MoMAL5Q@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2734416744931746115=="
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

--===============2734416744931746115==
Content-Type: multipart/alternative; boundary="00000000000078003705b1a04958"

--00000000000078003705b1a04958
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A quick reminder that

uhd_images_downloader -t e320 -t sdk

will download the corresponding SDK for your UHD version even when the link
Michael provided is no longer accurate.

M

On Mon, 12 Oct 2020, 17:48 Michael Dickens via USRP-users, <
usrp-users@lists.ettus.com> wrote:

> Hi Mark - You need to use a more recent SDK for the cross-build. Here are
> the SDKs for the 2 most recent UHD releases. I hope this helps! - MLD
>
> <
> https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e32=
0_sdk_default-v3.15.0.0.zip
> >
> <
> https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.0.0.0/e3xx_e320=
_sdk_default-v4.0.0.0.zip
> >
>
>
> On Mon, Oct 12, 2020 at 10:47 AM Andrews, Mark J. via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello,
>>
>> I am trying to cross-compile UHD on an E320 with the OE SDK, but I canno=
t
>> get past the cmake step due to multiple errors.  On the host PC, I am ab=
le
>> to install the SDK and source the environment variable without issues.
>> When I go to build UHD, the first error is that the CMakeLists.txt file =
for
>> UHD 3.15 has a minimum CMake version of 3.5.1, but the OE SDK cmake is
>> version 2.8.12.2 (my host PC is version 3.18.4).  I manually edited the
>> CMakeLists.txt to accept the older version of CMake, but then it has a
>> boost version error and cannot find several python packages (platform,
>> mako, requests, numpy).  I again edited it for the Boost version, but it
>> still can't find the python packages.  Do I need to somehow install all =
the
>> UHD dependencies in the OE SDK paths after installing it?  Or am I doing
>> something else wrong?
>>
>> I also tried running "import sys" to see the Python path configuration
>> and the "program name", "sys._base_executable", and "sys.executable" are
>> all pointing to "/usr/bin/python3" instead of the
>> "/home/~/oe/sysroots/x86_64-oesdk-linux" path.  Not sure if that's part =
of
>> the problem or not, but it seemed suspicious.  The cmake and import sys
>> outputs are copied below.
>>
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> cmake -DCMAKE_TOOLCHAIN_FILE=3D../host/cmake/Toolchains/oe-sdk_cross.cma=
ke
>> -DCMAKE_INSTALL_PREFIX=3D/usr -DENABLE_E300=3DON ..
>>
>> -- Configuring the Python interpreter...
>> -- Manually determining build Python version...
>> ImportError: No module named site
>> -- Python interpreter:
>> /home/~/oe/sysroots/x86_64-oesdk-linux/usr/bin/python Version:
>> -- Override with: -DPYTHON_EXECUTABLE=3D<path-to-python>
>> -- Manually determining runtime Python version...
>> ImportError: No module named site
>> -- Python runtime interpreter:
>> /home/~/oe/sysroots/x86_64-oesdk-linux/usr/bin/python Version:
>> -- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D<path-to-python>
>> -- Finding Python Libraries...
>> CMake Warning (dev) at cmake/Modules/UHDPython.cmake:168 (find_package):
>>   Ignoring EXACT since no version is requested.
>> Call Stack (most recent call first):
>>   cmake/Modules/UHDVersion.cmake:9 (include)
>>   cmake/Modules/UHDPackage.cmake:9 (include)
>>   CMakeLists.txt:103 (include)
>> This warning is for project developers.  Use -Wno-dev to suppress it.
>>
>> -- Python Libraries:
>> /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/
>> libpython2.7.so
>> -- Python include directories:
>> /home/`/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/include/pytho=
n2.7
>> -- Working off of feature or development branch. Updating version number=
.
>> ImportError: No module named site
>> ImportError: No module named site
>> ImportError: No module named site
>> -- Using UHD Images Directory: /usr/share/uhd/images
>> -- Build type not specified: defaulting to release.
>> --
>> -- Configuring Boost C++ Libraries...
>> --
>> -- Checking for Boost version 1.57 or greater
>> --   Looking for required Boost components...
>> --     Disabling boost::asio use of std::string_view
>> --   Boost version: 1.57.0
>> --   Boost include directories:
>> /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/include
>> --   Boost library directories:
>> /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib
>> --   Boost libraries:
>> /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_=
chrono-mt.so;/home/!/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib=
/libboost_date_time-mt.so;/home/!/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gn=
ueabi/usr/lib/libboost_filesystem-mt.so;/home/~/oe/sysroots/armv7ahf-vfp-ne=
on-oe-linux-gnueabi/usr/lib/libboost_program_options-mt.so;/home/~/oe/sysro=
ots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_regex-mt.so;/home/~=
/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_unit_test_=
framework.so;/home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib=
/libboost_serialization-mt.so;/home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linu=
x-gnueabi/usr/lib/libboost_thread-mt.so;/home/~/oe/sysroots/armv7ahf-vfp-ne=
on-oe-linux-gnueabi/usr/lib/libboost_system-mt.so
>> -- Looking for Boost version 1.57 or greater - found
>> --
>> -- Python checking for Python version 2.7 or greater
>> ImportError: No module named site
>> -- Python checking for Python version 2.7 or greater - "import platform"
>> failed
>> --
>> -- Python checking for Mako templates 0.4.2 or greater
>> ImportError: No module named site
>> -- Python checking for Mako templates 0.4.2 or greater - "import mako"
>> failed
>> --
>> -- Python checking for requests 2.0 or greater
>> ImportError: No module named site
>> -- Python checking for requests 2.0 or greater - "import requests" faile=
d
>> --
>> -- Python checking for numpy 1.7 or greater
>> ImportError: No module named site
>> -- Python checking for numpy 1.7 or greater - "import numpy" failed
>> --
>> -- Configuring LibUHD support...
>> --   Dependency Boost_FOUND =3D 1
>> --   Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D FALSE
>> --   Dependency HAVE_PYTHON_MODULE_MAKO =3D FALSE
>> CMake Error at cmake/Modules/UHDComponent.cmake:59 (message):
>>   Dependencies for required component LibUHD not met.
>> Call Stack (most recent call first):
>>   CMakeLists.txt:363 (LIBUHD_REGISTER_COMPONENT)
>>
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>> import sys
>>
>> Python path configuration:
>>   PYTHONHOME =3D '/home/~/oe/sysroots/x86_64-oesdk-linux'
>>   PYTHONPATH =3D (not set)
>>   program name =3D '/usr/bin/python3'
>>   isolated =3D 0
>>   environment =3D 1
>>   user site =3D 1
>>   import site =3D 1
>>   sys._base_executable =3D '/usr/bin/python3'
>>   sys.base_prefix =3D '/home/~/oe/sysroots/x86_64-oesdk-linux'
>>   sys.base_exec_prefix =3D '/home/~/oe/sysroots/x86_64-oesdk-linux'
>>   sys.executable =3D '/usr/bin/python3'
>>   sys.prefix =3D '/home/~/oe/sysroots/x86_64-oesdk-linux'
>>   sys.exec_prefix =3D '/home/~/oe/sysroots/x86_64-oesdk-linux'
>>   sys.path =3D [
>>     '/home/~/oe/sysroots/x86_64-oesdk-linux/lib/python38.zip',
>>     '/home/~/oe/sysroots/x86_64-oesdk-linux/lib/python3.8',
>>     '/home/~/oe/sysroots/x86_64-oesdk-linux/lib/python3.8/lib-dynload',
>>   ]
>> Fatal Python error: init_fs_encoding: failed to get the Python codec of
>> the filesystem encoding
>> Python runtime state: core initialized
>> ModuleNotFoundError: No module named 'encodings'
>>
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000078003705b1a04958
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">A quick reminder that=C2=A0<div dir=3D"auto"><br></div><d=
iv dir=3D"auto">uhd_images_downloader -t e320 -t sdk</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">will download the corresponding SDK for your U=
HD version even when the link Michael provided is no longer accurate.</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">M</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 12 Oct 2020,=
 17:48 Michael Dickens via USRP-users, &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><div dir=3D"ltr">Hi Mark - You need to use a more rece=
nt SDK for the cross-build. Here are the SDKs for the 2 most recent UHD rel=
eases. I hope this helps! - MLD<br><div><br></div><div>&lt;=C2=A0<a href=3D=
"https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e320=
_sdk_default-v3.15.0.0.zip" target=3D"_blank" rel=3D"noreferrer">https://fi=
les.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e320_sdk_defaul=
t-v3.15.0.0.zip</a> &gt;</div><div>&lt;=C2=A0<a href=3D"https://files.ettus=
.com/binaries/cache/e3xx/meta-ettus-v4.0.0.0/e3xx_e320_sdk_default-v4.0.0.0=
.zip" target=3D"_blank" rel=3D"noreferrer">https://files.ettus.com/binaries=
/cache/e3xx/meta-ettus-v4.0.0.0/e3xx_e320_sdk_default-v4.0.0.0.zip</a> &gt;=
</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, Oct 12, 2020 at 10:47 AM Andrews, Mark J. via =
USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I am trying to cross-compile UHD on an E320 with the OE SDK, but I cannot g=
et past the cmake step due to multiple errors.=C2=A0 On the host PC, I am a=
ble to install the SDK and source the environment variable without issues.=
=C2=A0 When I go to build UHD, the first error
 is that the CMakeLists.txt file for UHD 3.15 has a minimum CMake version o=
f 3.5.1, but the OE SDK cmake is version 2.8.12.2 (my host PC is version 3.=
18.4).=C2=A0 I manually edited the CMakeLists.txt to accept the older versi=
on of CMake, but then it has a boost
 version error and cannot find several python packages (platform, mako, req=
uests, numpy).=C2=A0 I again edited it for the Boost version, but it still =
can&#39;t find the python packages.=C2=A0 Do I need to somehow install all =
the UHD dependencies in the OE SDK paths after
 installing it?=C2=A0 Or am I doing something else wrong?=C2=A0 <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I also tried running &quot;import sys&quot; to see the Python path configur=
ation and the &quot;program name&quot;, &quot;sys._base_executable&quot;, a=
nd &quot;sys.executable&quot; are all pointing to &quot;/usr/bin/python3&qu=
ot; instead of the &quot;/home/~/oe/sysroots/x86_64-oesdk-linux&quot; path.=
=C2=A0 Not sure if that&#39;s
 part of the problem or not, but it seemed suspicious.=C2=A0 The cmake and =
import sys outputs are copied below.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
cmake -DCMAKE_TOOLCHAIN_FILE=3D../host/cmake/Toolchains/oe-sdk_cross.cmake =
-DCMAKE_INSTALL_PREFIX=3D/usr -DENABLE_E300=3DON ..
<div><br>
</div>
-- Configuring the Python interpreter... </div>
<div>-- Manually determining build Python version...</div>
<div>ImportError: No module named site</div>
<div>-- Python interpreter: /home/~/oe/sysroots/x86_64-oesdk-linux/usr/bin/=
python Version:
</div>
<div>-- Override with: -DPYTHON_EXECUTABLE=3D&lt;path-to-python&gt;</div>
<div>-- Manually determining runtime Python version...</div>
<div>ImportError: No module named site</div>
<div>-- Python runtime interpreter: /home/~/oe/sysroots/x86_64-oesdk-linux/=
usr/bin/python Version:
</div>
<div>-- Override with: -DRUNTIME_PYTHON_EXECUTABLE=3D&lt;path-to-python&gt;=
</div>
<div>-- Finding Python Libraries...</div>
<div>CMake Warning (dev) at cmake/Modules/UHDPython.cmake:168 (find_package=
):</div>
<div>=C2=A0 Ignoring EXACT since no version is requested.</div>
<div>Call Stack (most recent call first):</div>
<div>=C2=A0 cmake/Modules/UHDVersion.cmake:9 (include)</div>
<div>=C2=A0 cmake/Modules/UHDPackage.cmake:9 (include)</div>
<div>=C2=A0 CMakeLists.txt:103 (include)</div>
<div>This warning is for project developers.=C2=A0 Use -Wno-dev to suppress=
 it.</div>
<div><br>
</div>
<div>-- Python Libraries: /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gn=
ueabi/usr/lib/<a href=3D"http://libpython2.7.so" target=3D"_blank" rel=3D"n=
oreferrer">libpython2.7.so</a></div>
<div>-- Python include directories: /home/`/oe/sysroots/armv7ahf-vfp-neon-o=
e-linux-gnueabi/usr/include/python2.7</div>
<div>-- Working off of feature or development branch. Updating version numb=
er.</div>
<div>ImportError: No module named site</div>
<div>ImportError: No module named site</div>
<div>ImportError: No module named site</div>
<div>-- Using UHD Images Directory: /usr/share/uhd/images</div>
<div>-- Build type not specified: defaulting to release.</div>
<div>-- </div>
<div>-- Configuring Boost C++ Libraries...</div>
<div>-- </div>
<div>-- Checking for Boost version 1.57 or greater</div>
<div>-- =C2=A0 Looking for required Boost components...</div>
<div>-- =C2=A0 =C2=A0 Disabling boost::asio use of std::string_view</div>
<div>-- =C2=A0 Boost version: 1.57.0</div>
<div>-- =C2=A0 Boost include directories: /home/~/oe/sysroots/armv7ahf-vfp-=
neon-oe-linux-gnueabi/usr/include</div>
<div>-- =C2=A0 Boost library directories: /home/~/oe/sysroots/armv7ahf-vfp-=
neon-oe-linux-gnueabi/usr/lib</div>
<div>-- =C2=A0 Boost libraries: /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-li=
nux-gnueabi/usr/lib/libboost_chrono-mt.so;/home/!/oe/sysroots/armv7ahf-vfp-=
neon-oe-linux-gnueabi/usr/lib/libboost_date_time-mt.so;/home/!/oe/sysroots/=
armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_filesystem-mt.so;/home/=
~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_program_o=
ptions-mt.so;/home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib=
/libboost_regex-mt.so;/home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueab=
i/usr/lib/libboost_unit_test_framework.so;/home/~/oe/sysroots/armv7ahf-vfp-=
neon-oe-linux-gnueabi/usr/lib/libboost_serialization-mt.so;/home/~/oe/sysro=
ots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_thread-mt.so;/home/=
~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_system-mt=
.so</div>
<div>-- Looking for Boost version 1.57 or greater - found</div>
<div>-- </div>
<div>-- Python checking for Python version 2.7 or greater</div>
<div>ImportError: No module named site</div>
<div>-- Python checking for Python version 2.7 or greater - &quot;import pl=
atform&quot; failed</div>
<div>-- </div>
<div>-- Python checking for Mako templates 0.4.2 or greater</div>
<div>ImportError: No module named site</div>
<div>-- Python checking for Mako templates 0.4.2 or greater - &quot;import =
mako&quot; failed</div>
<div>-- </div>
<div>-- Python checking for requests 2.0 or greater</div>
<div>ImportError: No module named site</div>
<div>-- Python checking for requests 2.0 or greater - &quot;import requests=
&quot; failed</div>
<div>-- </div>
<div>-- Python checking for numpy 1.7 or greater</div>
<div>ImportError: No module named site</div>
<div>-- Python checking for numpy 1.7 or greater - &quot;import numpy&quot;=
 failed</div>
<div>-- </div>
<div>-- Configuring LibUHD support...</div>
<div>-- =C2=A0 Dependency Boost_FOUND =3D 1</div>
<div>-- =C2=A0 Dependency HAVE_PYTHON_PLAT_MIN_VERSION =3D FALSE</div>
<div>-- =C2=A0 Dependency HAVE_PYTHON_MODULE_MAKO =3D FALSE</div>
<div>CMake Error at cmake/Modules/UHDComponent.cmake:59 (message):</div>
<div>=C2=A0 Dependencies for required component LibUHD not met.</div>
<div>Call Stack (most recent call first):</div>
<div>=C2=A0 CMakeLists.txt:363 (LIBUHD_REGISTER_COMPONENT)</div>
<div><br>
</div>
<div><br>
</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D</div>
<div>import sys</div>
<div><br>
</div>
<div>Python path configuration:
<div>=C2=A0 PYTHONHOME =3D &#39;/home/~/oe/sysroots/x86_64-oesdk-linux&#39;=
</div>
<div>=C2=A0 PYTHONPATH =3D (not set)</div>
<div>=C2=A0 program name =3D &#39;/usr/bin/python3&#39;</div>
<div>=C2=A0 isolated =3D 0</div>
<div>=C2=A0 environment =3D 1</div>
<div>=C2=A0 user site =3D 1</div>
<div>=C2=A0 import site =3D 1</div>
<div>=C2=A0 sys._base_executable =3D &#39;/usr/bin/python3&#39;</div>
<div>=C2=A0 sys.base_prefix =3D &#39;/home/~/oe/sysroots/x86_64-oesdk-linux=
&#39;</div>
<div>=C2=A0 sys.base_exec_prefix =3D &#39;/home/~/oe/sysroots/x86_64-oesdk-=
linux&#39;</div>
<div>=C2=A0 sys.executable =3D &#39;/usr/bin/python3&#39;</div>
<div>=C2=A0 sys.prefix =3D &#39;/home/~/oe/sysroots/x86_64-oesdk-linux&#39;=
</div>
<div>=C2=A0 sys.exec_prefix =3D &#39;/home/~/oe/sysroots/x86_64-oesdk-linux=
&#39;</div>
<div>=C2=A0 sys.path =3D [</div>
<div>=C2=A0 =C2=A0 &#39;/home/~/oe/sysroots/x86_64-oesdk-linux/lib/python38=
.zip&#39;,</div>
<div>=C2=A0 =C2=A0 &#39;/home/~/oe/sysroots/x86_64-oesdk-linux/lib/python3.=
8&#39;,</div>
<div>=C2=A0 =C2=A0 &#39;/home/~/oe/sysroots/x86_64-oesdk-linux/lib/python3.=
8/lib-dynload&#39;,</div>
<div>=C2=A0 ]</div>
<div>Fatal Python error: init_fs_encoding: failed to get the Python codec o=
f the filesystem encoding</div>
<div>Python runtime state: core initialized</div>
<div>ModuleNotFoundError: No module named &#39;encodings&#39;</div>
<br>
<br>
</div>
<br>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000078003705b1a04958--


--===============2734416744931746115==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2734416744931746115==--

