Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C7B3535ED
	for <lists+usrp-users@lfdr.de>; Sun,  4 Apr 2021 01:38:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 013C4383F92
	for <lists+usrp-users@lfdr.de>; Sat,  3 Apr 2021 19:38:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="acC8cnY3";
	dkim-atps=neutral
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 8FF5C383AE2
	for <USRP-users@lists.ettus.com>; Sat,  3 Apr 2021 19:37:57 -0400 (EDT)
Received: by mail-vs1-f43.google.com with SMTP id t12so4422382vsj.11
        for <USRP-users@lists.ettus.com>; Sat, 03 Apr 2021 16:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=siXFQagAHSUjJbI9RIDBGBWS6b9NzzNDsptLBcIDywg=;
        b=acC8cnY3TK3TcyhK849+KeDz88xM12Ie956Kc7+4CNFY7Dz4WGwFuiJGmqqu4yy1rB
         7K2BN+JkDK9GV1zNVxGQeQx9tVLuqAPfZXm9oA9Ram5LqFeH5D8POnUW+Uy+fR7szsOk
         Qb7ZEq1L8mYzGXZtv96QMN+Kh0q2yx3/KjXeD0JE80TZDD8+nllv4GIty4WmXXnNRoUa
         TVW82ICZQMzX2c8D1v0bsAE65RZouyciuZhQ/+svhzk2/OCHZqNpD2cqK+61/tjG0/VN
         EgYC0LSzClxlXMDjbi3+T6j/A9T6s6rlSu15C7BN/tdoh8VY6/oEd8d+D/WFE73gnyZB
         sNOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=siXFQagAHSUjJbI9RIDBGBWS6b9NzzNDsptLBcIDywg=;
        b=qvzycuj214vj6mKM88kZkR0Kk8LlS2zhMSmxZzMgnEP2BMyCb+Eokp/GluKM+bEDKd
         jFr6yzP/7cnOccyNEtR9WgHLtWWjSrp6r+KkeSr24Qduiaqyq7Fx9xCRNQWHdvzx1oVq
         chIuBToWLyBPhuES6Bv/e7AqHyAMgDA0PtXKEDAE60IgjScPQeHoQ6o/tdgTwSw8UmVW
         p3OqHzQEicQ+oXXI3jaLzsijqk2r7mF9OcmOhoEPNLVlXVJZsA9JIfEHJyVoQ5baq6CJ
         q+2jZ63Wfzh+Lx/NyfUJ6afhPKK7CyPi6fPXD079tsQa7ujo/v4OR8UGU6sS+XJtv5RE
         3Mzw==
X-Gm-Message-State: AOAM531uNxYa7OSsThAgyqqJgFYqZtgNup976DWDo50GJ1nh+ce7m4m0
	BFjSv8d+hjq06z7dOH6DqYnfHOp9bLqJTD0LEltQWA==
X-Google-Smtp-Source: ABdhPJwzqA9y2ZmaQhV+h1Qs+714erJKtI/EhMjR3p2NQ33upfDLsMY1e39nd2i2LPj0nJ8v16kdZcSttKLSexaAQx8=
X-Received: by 2002:a67:cb01:: with SMTP id b1mr11265773vsl.29.1617493076928;
 Sat, 03 Apr 2021 16:37:56 -0700 (PDT)
MIME-Version: 1.0
References: <CALNMZ8Wg3gQnkAomrhhCBPAGtTfUbm3fkMzJhCWhUAgHrLuzyA@mail.gmail.com>
 <B129306E-EF88-4A7B-8511-6CEC3A5ABDDF@gmail.com>
In-Reply-To: <B129306E-EF88-4A7B-8511-6CEC3A5ABDDF@gmail.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Sun, 4 Apr 2021 09:37:45 +1000
Message-ID: <CALNMZ8X7gRZH=MN+iCW1LQzGgsAUJrU91s8atfrTQ9LnL91oHQ@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: O7OLJWRBNLQZZBZPL6EKP72UZOICX3EI
X-Message-ID-Hash: O7OLJWRBNLQZZBZPL6EKP72UZOICX3EI
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem with interfacing Raspberry Pi 4 to USRP B210 with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O7OLJWRBNLQZZBZPL6EKP72UZOICX3EI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8637554152469949854=="

--===============8637554152469949854==
Content-Type: multipart/alternative; boundary="00000000000046fbbf05bf19f4a4"

--00000000000046fbbf05bf19f4a4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Your point is well taken, although I confess I am still a bit surprised
that Python support is not the norm, given the popularity of this language
in the scientific & engineering community.

Getting back to my problem:  Am I correct in assuming that the C++ API is
included as standard with every UHD build?  If so, rather than spending
days/weeks trying to add Python support to UHD on the Raspberry Pi, would
it be faster for me to just create a C++ function to communicate with the
USRP, and put a Python wrapper around it?

On Sun, Apr 4, 2021 at 1:15 AM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

>
>
> Sent from my iPhone
>
> On Apr 3, 2021, at 7:08 AM, Brendan Horsfield <b
>
> QUESTION 2:  This whole process feels more difficult than it should be.
> Why isn't the Python API installed with the UHD driver by default?  Would=
 I
> be better off using another language (like C++) to control the USRP?
>
> Thanks,
> Brendan.
>
> Well, NI/Ettus have zero control over how various distros choose to
> package and build UHD, similarly for PyBombs=E2=80=94PyBombs isn=E2=80=99=
t maintained by
> NI/Ettus.
>
> So if you =E2=80=9Cland=E2=80=9D on a distro where the packaged UHD doesn=
=E2=80=99t include Python
> support, then you end up building UHD yourself. Which may entail the pain
> you encountered due to missing compiler flags.
>
> Because the Linux world is so incredibly diverse, it=E2=80=99s rare that =
the
> developer of a given code base is also responsible for packaging for a
> given distro/platform. That=E2=80=99s why there are =E2=80=9Cpackage main=
tainers=E2=80=9D for each
> distro, and they=E2=80=99re the ones who end up making decisions like ena=
bling
> support for various options, turning on =E2=80=9Cweird=E2=80=9D compiler =
flags, etc.
>
> UHD is no different in this regard.
>
>
>
> On Fri, Apr 2, 2021 at 11:25 PM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> Perhaps look at the PyBombs recipe for your platform=E2=80=94there=E2=80=
=99s probably a
>> compiler flag that needs to be set that you=E2=80=99re missing, but I do=
n=E2=80=99t know
>> what that is.
>>
>> Also, in general, you don=E2=80=99t need to become root to compile and b=
uild
>> code=E2=80=94only needed during the =E2=80=9Cmake install=E2=80=9D
>>
>>
>>
>> Sent from my iPhone
>>
>> On Apr 2, 2021, at 7:19 AM, Brendan Horsfield <
>> brendan.horsfield@vectalabs.com> wrote:
>>
>> =EF=BB=BF
>> Hi Folks,
>>
>> I would like to interface my Raspberry Pi 4 to a USRP B210 via the Pytho=
n
>> API.  This requires the UHD driver to be built from source.  Unfortunate=
ly,
>> whenever I try this I encounter some errors that stop the build process =
in
>> its tracks.
>>
>> Details of the error are as follows:
>>
>> [ 53%] Linking CXX executable test_clock_synch
>> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
>> `__atomic_compare_exchange_8'
>> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
>> `__atomic_load_8'
>> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
>> `__atomic_store_8'
>> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
>> `__atomic_fetch_add_8'
>> collect2: error: ld returned 1 exit status
>> make[2]: *** [examples/CMakeFiles/test_clock_synch.dir/build.make:95:
>> examples/test_clock_synch] Error 1
>> make[1]: *** [CMakeFiles/Makefile2:1039:
>> examples/CMakeFiles/test_clock_synch.dir/all] Error 2
>> make: *** [Makefile:163: all] Error 2
>>
>> The process I have been using is as follows:
>>
>> STEP 1:  INSTALL DEPENDENCIES
>> sudo apt-get install libboost-all-dev libusb-1.0-0-dev doxygen
>> python3-docutils python3-mako python3-numpy python3-requests
>> python3-ruamel.yaml python3-setuptools cmake build-essential
>>
>> STEP 2:  BUILD UHD DRIVER FROM SOURCE
>> cd /home/pi
>> mkdir workarea-uhd
>> cd workarea-uhd
>> git clone https://github.com/EttusResearch/uhd
>> cd uhd
>> git checkout v4.0.0.0
>> cd host
>> mkdir build
>> cd build
>> sudo cmake -DNEON_SIMD_ENABLE=3DOFF -DENABLE_PYTHON_API=3DON ../
>> sudo make  --->  (ERRORS OCCUR DURING "MAKE" PROCESS)
>>
>> My system configuration is as follows:
>> Hardware: Raspberry Pi 4 Model B Rev 1.4
>> OS: Raspbian GNU/Linux 10 (buster) (32-bit, armv7l)
>> Ettus USRP B210
>>
>> Does anyone know what the problem could be, and how I can resolve it?
>>
>> One final note:  Using PyBOMBS, I was able to successfully build &
>> install the UHD driver and connect to the USRP.  Unfortunately the PyBOM=
BS
>> build does not include the Python API, which is what I really want.  Is
>> there a different version of the PyBOMBS build that includes the Python =
API?
>>
>> Thanks & Regards,
>> Brendan.
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>

--00000000000046fbbf05bf19f4a4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Your point is well taken, although I confess I am still a =
bit surprised that Python support is not the norm, given the popularity of =
this language in the scientific &amp; engineering community.=C2=A0=C2=A0<di=
v><br></div><div>Getting back to my problem:=C2=A0 Am I correct in assuming=
 that the C++ API is included as standard with every UHD build?=C2=A0 If so=
, rather than spending days/weeks trying to add Python support to UHD on th=
e Raspberry Pi, would it be faster for me to just create a C++ function to =
communicate with the USRP, and put a Python wrapper around it?</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun,=
 Apr 4, 2021 at 1:15 AM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@=
gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"auto"><br><br><div dir=3D"ltr=
">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">O=
n Apr 3, 2021, at 7:08 AM, Brendan Horsfield &lt;b</blockquote></div><block=
quote type=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr"><div>QUESTION 2:=C2=
=A0 This whole process feels more difficult than it should be.=C2=A0 Why is=
n&#39;t the Python API installed with the UHD driver by default?=C2=A0 Woul=
d I be better off using another language (like C++) to control the USRP?</d=
iv><div><br></div><div>Thanks,</div><div>Brendan.</div><div><br></div></div=
></div></blockquote>Well, NI/Ettus have zero control over how various distr=
os choose to package and build UHD, similarly for PyBombs=E2=80=94PyBombs i=
sn=E2=80=99t maintained by NI/Ettus.=C2=A0<div><br></div><div>So if you =E2=
=80=9Cland=E2=80=9D on a distro where the packaged UHD doesn=E2=80=99t incl=
ude Python support, then you end up building UHD yourself. Which may entail=
 the pain you encountered due to missing compiler flags.=C2=A0<br><br>Becau=
se the Linux world is so incredibly diverse, it=E2=80=99s rare that the dev=
eloper of a given code base is also responsible for packaging for a given d=
istro/platform. That=E2=80=99s why there are =E2=80=9Cpackage maintainers=
=E2=80=9D for each distro, and they=E2=80=99re the ones who end up making d=
ecisions like enabling support for various options, turning on =E2=80=9Cwei=
rd=E2=80=9D compiler flags, etc.=C2=A0</div><div><br></div><div>UHD is no d=
ifferent in this regard.=C2=A0</div><div><br><blockquote type=3D"cite"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div><br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 2, 2021 at 11:25 P=
M Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_=
blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"auto">Perhaps look at the PyBombs=
 recipe for your platform=E2=80=94there=E2=80=99s probably a compiler flag =
that needs to be set that you=E2=80=99re missing, but I don=E2=80=99t know =
what that is.=C2=A0<div><br></div><div>Also, in general, you don=E2=80=99t =
need to become root to compile and build code=E2=80=94only needed during th=
e =E2=80=9Cmake install=E2=80=9D</div><div><br></div><div><br><br><div dir=
=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"=
cite">On Apr 2, 2021, at 7:19 AM, Brendan Horsfield &lt;<a href=3D"mailto:b=
rendan.horsfield@vectalabs.com" target=3D"_blank">brendan.horsfield@vectala=
bs.com</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><=
div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hi Folks,<div><br></div><div>I wo=
uld like to interface my Raspberry Pi 4 to a USRP B210 via the Python API.=
=C2=A0 This requires the UHD driver to be built from source.=C2=A0 Unfortun=
ately, whenever I try this I encounter some errors that stop the build proc=
ess in its tracks.</div><div><br></div><div>Details of the error are as fol=
lows:</div><div><br></div><div>[ 53%] Linking CXX executable test_clock_syn=
ch<br>/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomic=
_compare_exchange_8&#39;<br>/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined =
reference to `__atomic_load_8&#39;<br>/usr/bin/ld: ../lib/libuhd.so.4.0.0: =
undefined reference to `__atomic_store_8&#39;<br>/usr/bin/ld: ../lib/libuhd=
.so.4.0.0: undefined reference to `__atomic_fetch_add_8&#39;<br>collect2: e=
rror: ld returned 1 exit status<br>make[2]: *** [examples/CMakeFiles/test_c=
lock_synch.dir/build.make:95: examples/test_clock_synch] Error 1<br>make[1]=
: *** [CMakeFiles/Makefile2:1039: examples/CMakeFiles/test_clock_synch.dir/=
all] Error 2<br>make: *** [Makefile:163: all] Error 2<br></div><div><br></d=
iv><div>The process I have been using is as follows:</div><div><br></div><d=
iv>STEP 1:=C2=A0 INSTALL DEPENDENCIES<br>sudo apt-get install libboost-all-=
dev libusb-1.0-0-dev doxygen python3-docutils python3-mako python3-numpy py=
thon3-requests python3-ruamel.yaml python3-setuptools cmake build-essential=
<br><br>STEP 2:=C2=A0 BUILD UHD DRIVER FROM SOURCE</div><div>cd /home/pi<br=
>mkdir workarea-uhd<br>cd workarea-uhd<br>git clone <a href=3D"https://gith=
ub.com/EttusResearch/uhd" target=3D"_blank">https://github.com/EttusResearc=
h/uhd</a><br>cd uhd<br>git checkout v4.0.0.0<br>cd host<br>mkdir build<br>c=
d build<br>sudo cmake -DNEON_SIMD_ENABLE=3DOFF -DENABLE_PYTHON_API=3DON ../=
<br>sudo make=C2=A0 ---&gt;=C2=A0=C2=A0(ERRORS OCCUR DURING &quot;MAKE&quot=
; PROCESS)<br><br>My system configuration is as follows:<br>Hardware: Raspb=
erry Pi 4 Model B Rev 1.4<br>OS: Raspbian GNU/Linux 10 (buster) (32-bit, ar=
mv7l)<br>Ettus USRP B210<br></div><div><br></div><div>Does anyone know what=
 the problem could be, and how I can resolve it?<br></div><div><br></div><d=
iv>One final note:=C2=A0 Using PyBOMBS, I was able to successfully build &a=
mp; install the UHD driver and connect to the USRP.=C2=A0 Unfortunately the=
 PyBOMBS build does not include the Python API, which is what I really=C2=
=A0want.=C2=A0 Is there a different version of the PyBOMBS build that inclu=
des the Python API?</div><div><br></div><div>Thanks &amp; Regards,</div><di=
v>Brendan.</div><div><br></div><div><br></div><div>=C2=A0=C2=A0</div></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></div></blockquote></div>
</div></blockquote></div></div></blockquote></div>

--00000000000046fbbf05bf19f4a4--

--===============8637554152469949854==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8637554152469949854==--
