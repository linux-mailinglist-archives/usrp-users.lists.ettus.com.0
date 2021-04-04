Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA78353613
	for <lists+usrp-users@lfdr.de>; Sun,  4 Apr 2021 03:04:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D01F9383DF6
	for <lists+usrp-users@lfdr.de>; Sat,  3 Apr 2021 21:04:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XEqtN7ux";
	dkim-atps=neutral
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 903E1383DE5
	for <USRP-users@lists.ettus.com>; Sat,  3 Apr 2021 21:03:22 -0400 (EDT)
Received: by mail-qt1-f180.google.com with SMTP id l13so6173380qtu.9
        for <USRP-users@lists.ettus.com>; Sat, 03 Apr 2021 18:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=gJqZqIhE3UOLc1PsUXP96qbllF9nTrU4y/T1jeRoLXU=;
        b=XEqtN7ux/b3bFOdIp2GneqxEGHAyu/B3zR+Xu3381qge1FmARjnAtJB10VucWF8Kyv
         Hj79E9Wc5HTTVVWd1GlmFFkVZAQduM+ei4d19cybtcLS/AICNb14u47dHfYPTpIfzR9t
         q5REdeHVQGKpV+rQEPzHsfAHcgOd3o6EHxpjT6wukC94+SBnQvPQgGl8rOjsCBPV/J2C
         M8xkfpB6di/j3QadnVX+tWuCVHmf9/MA8mNLNZayqNqDct1YhC0vOLoUtPoARbcdAvAY
         VWgvawTxrO01QyUCDJF8q/seWTn26icEPhIJd2OIdLMCrmLdhfLsk+HN1NZwc7e0ufZ7
         j5oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=gJqZqIhE3UOLc1PsUXP96qbllF9nTrU4y/T1jeRoLXU=;
        b=t+7wrgD1fg2U0CmPikuX1emddU37RVCavs7j7MoAoea6zX4FnxPHUml5/kNQunruhE
         SCHCaQWgVnXhmaJB9m/GB1dDVI1wKZf/m/SCX9wsPumtBVOTkMJavCTnxgF7ioW2piuP
         sIYTC/q65fuKq5JDROcz3BO7PM9zn20LNymAP0nLg6cRfxBmr1wYFXlR18FnpA1wHn73
         efYi8o1xNLe+KkQV8HE7Rugl8YDg5oiS/8Xq78iNK+Va9xTSiyNdUjrRcisPps02XJ/B
         Wslx68o0agzt8ZrgbczT93Agc1GqkV7jWeogQBxw/x+riaUz82/IYH/jkAu5Q2yMpjbV
         6+tg==
X-Gm-Message-State: AOAM531W9M6EjBH850xI46UeQGJ+dJFb4dyfWhfZ31tE2VPpzqVazNAk
	GKDts+fuvr13Il47np6sv68oOinzvYc=
X-Google-Smtp-Source: ABdhPJyLBqbpfoJOfMBZpvWuAyjlUqDD6StOoqMY36j7Ry6cWkY3FUaJ710tjcn64Frmx0Hjm77aKg==
X-Received: by 2002:ac8:6684:: with SMTP id d4mr16788749qtp.34.1617498201783;
        Sat, 03 Apr 2021 18:03:21 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id s28sm10640595qkj.73.2021.04.03.18.03.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Apr 2021 18:03:21 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sat, 3 Apr 2021 21:03:20 -0400
Message-Id: <09494F90-D4DB-401F-8CAE-FF766FAA689E@gmail.com>
References: <CALNMZ8X7gRZH=MN+iCW1LQzGgsAUJrU91s8atfrTQ9LnL91oHQ@mail.gmail.com>
In-Reply-To: <CALNMZ8X7gRZH=MN+iCW1LQzGgsAUJrU91s8atfrTQ9LnL91oHQ@mail.gmail.com>
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
X-Mailer: iPhone Mail (18D61)
Message-ID-Hash: ZZSSNL3MGBIBYOMBMXYM2ZLSSRAXCBP7
X-Message-ID-Hash: ZZSSNL3MGBIBYOMBMXYM2ZLSSRAXCBP7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem with interfacing Raspberry Pi 4 to USRP B210 with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZZSSNL3MGBIBYOMBMXYM2ZLSSRAXCBP7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5072894287090170349=="


--===============5072894287090170349==
Content-Type: multipart/alternative; boundary=Apple-Mail-3C16B057-8228-4A8B-B880-88FB12F5BB80
Content-Transfer-Encoding: 7bit


--Apple-Mail-3C16B057-8228-4A8B-B880-88FB12F5BB80
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The C++ API is the standard API for UHD follows by the legacy C API and then=
 the Python API.  The Python API is still considered experimental, and it wi=
ll necessarily have performance issues=E2=80=94that=E2=80=99s just the natur=
e of an interpreted language trying to do high performance real-time signal p=
rocessing=E2=80=94even when you use things like numpy.=20

Sent from my iPhone

> On Apr 3, 2021, at 7:37 PM, Brendan Horsfield <brendan.horsfield@vectalabs=
.com> wrote:
>=20
> =EF=BB=BF
> Your point is well taken, although I confess I am still a bit surprised th=
at Python support is not the norm, given the popularity of this language in t=
he scientific & engineering community. =20
>=20
> Getting back to my problem:  Am I correct in assuming that the C++ API is i=
ncluded as standard with every UHD build?  If so, rather than spending days/=
weeks trying to add Python support to UHD on the Raspberry Pi, would it be f=
aster for me to just create a C++ function to communicate with the USRP, and=
 put a Python wrapper around it?
>=20
>> On Sun, Apr 4, 2021 at 1:15 AM Marcus D Leech <patchvonbraun@gmail.com> w=
rote:
>>=20
>>=20
>> Sent from my iPhone
>>=20
>>> On Apr 3, 2021, at 7:08 AM, Brendan Horsfield <b
>>> QUESTION 2:  This whole process feels more difficult than it should be. =
 Why isn't the Python API installed with the UHD driver by default?  Would I=
 be better off using another language (like C++) to control the USRP?
>>>=20
>>> Thanks,
>>> Brendan.
>>>=20
>> Well, NI/Ettus have zero control over how various distros choose to packa=
ge and build UHD, similarly for PyBombs=E2=80=94PyBombs isn=E2=80=99t mainta=
ined by NI/Ettus.=20
>>=20
>> So if you =E2=80=9Cland=E2=80=9D on a distro where the packaged UHD doesn=
=E2=80=99t include Python support, then you end up building UHD yourself. Wh=
ich may entail the pain you encountered due to missing compiler flags.=20
>>=20
>> Because the Linux world is so incredibly diverse, it=E2=80=99s rare that t=
he developer of a given code base is also responsible for packaging for a gi=
ven distro/platform. That=E2=80=99s why there are =E2=80=9Cpackage maintaine=
rs=E2=80=9D for each distro, and they=E2=80=99re the ones who end up making d=
ecisions like enabling support for various options, turning on =E2=80=9Cweir=
d=E2=80=9D compiler flags, etc.=20
>>=20
>> UHD is no different in this regard.=20
>>=20
>>>=20
>>>=20
>>>> On Fri, Apr 2, 2021 at 11:25 PM Marcus D Leech <patchvonbraun@gmail.com=
> wrote:
>>>> Perhaps look at the PyBombs recipe for your platform=E2=80=94there=E2=80=
=99s probably a compiler flag that needs to be set that you=E2=80=99re missi=
ng, but I don=E2=80=99t know what that is.=20
>>>>=20
>>>> Also, in general, you don=E2=80=99t need to become root to compile and b=
uild code=E2=80=94only needed during the =E2=80=9Cmake install=E2=80=9D
>>>>=20
>>>>=20
>>>>=20
>>>> Sent from my iPhone
>>>>=20
>>>>>> On Apr 2, 2021, at 7:19 AM, Brendan Horsfield <brendan.horsfield@vect=
alabs.com> wrote:
>>>>>>=20
>>>>> =EF=BB=BF
>>>>> Hi Folks,
>>>>>=20
>>>>> I would like to interface my Raspberry Pi 4 to a USRP B210 via the Pyt=
hon API.  This requires the UHD driver to be built from source.  Unfortunate=
ly, whenever I try this I encounter some errors that stop the build process i=
n its tracks.
>>>>>=20
>>>>> Details of the error are as follows:
>>>>>=20
>>>>> [ 53%] Linking CXX executable test_clock_synch
>>>>> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomic_=
compare_exchange_8'
>>>>> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomic_=
load_8'
>>>>> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomic_=
store_8'
>>>>> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomic_=
fetch_add_8'
>>>>> collect2: error: ld returned 1 exit status
>>>>> make[2]: *** [examples/CMakeFiles/test_clock_synch.dir/build.make:95: e=
xamples/test_clock_synch] Error 1
>>>>> make[1]: *** [CMakeFiles/Makefile2:1039: examples/CMakeFiles/test_cloc=
k_synch.dir/all] Error 2
>>>>> make: *** [Makefile:163: all] Error 2
>>>>>=20
>>>>> The process I have been using is as follows:
>>>>>=20
>>>>> STEP 1:  INSTALL DEPENDENCIES
>>>>> sudo apt-get install libboost-all-dev libusb-1.0-0-dev doxygen python3=
-docutils python3-mako python3-numpy python3-requests python3-ruamel.yaml py=
thon3-setuptools cmake build-essential
>>>>>=20
>>>>> STEP 2:  BUILD UHD DRIVER FROM SOURCE
>>>>> cd /home/pi
>>>>> mkdir workarea-uhd
>>>>> cd workarea-uhd
>>>>> git clone https://github.com/EttusResearch/uhd
>>>>> cd uhd
>>>>> git checkout v4.0.0.0
>>>>> cd host
>>>>> mkdir build
>>>>> cd build
>>>>> sudo cmake -DNEON_SIMD_ENABLE=3DOFF -DENABLE_PYTHON_API=3DON ../
>>>>> sudo make  --->  (ERRORS OCCUR DURING "MAKE" PROCESS)
>>>>>=20
>>>>> My system configuration is as follows:
>>>>> Hardware: Raspberry Pi 4 Model B Rev 1.4
>>>>> OS: Raspbian GNU/Linux 10 (buster) (32-bit, armv7l)
>>>>> Ettus USRP B210
>>>>>=20
>>>>> Does anyone know what the problem could be, and how I can resolve it?
>>>>>=20
>>>>> One final note:  Using PyBOMBS, I was able to successfully build & ins=
tall the UHD driver and connect to the USRP.  Unfortunately the PyBOMBS buil=
d does not include the Python API, which is what I really want.  Is there a d=
ifferent version of the PyBOMBS build that includes the Python API?
>>>>>=20
>>>>> Thanks & Regards,
>>>>> Brendan.
>>>>>=20
>>>>>=20
>>>>>  =20
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-3C16B057-8228-4A8B-B880-88FB12F5BB80
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The C++ API is the standard API for UHD fol=
lows by the legacy C API and then the Python API. &nbsp;The Python API is st=
ill considered experimental, and it will necessarily have performance issues=
=E2=80=94that=E2=80=99s just the nature of an interpreted language trying to=
 do high performance real-time signal processing=E2=80=94even when you use t=
hings like numpy.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><di=
v dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 3, 2021, at 7:37 PM, Bren=
dan Horsfield &lt;brendan.horsfield@vectalabs.com&gt; wrote:<br><br></blockq=
uote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"l=
tr">Your point is well taken, although I confess I am still a bit surprised t=
hat Python support is not the norm, given the popularity of this language in=
 the scientific &amp; engineering community.&nbsp;&nbsp;<div><br></div><div>=
Getting back to my problem:&nbsp; Am I correct in assuming that the C++ API i=
s included as standard with every UHD build?&nbsp; If so, rather than spendi=
ng days/weeks trying to add Python support to UHD on the Raspberry Pi, would=
 it be faster for me to just create a C++ function to communicate with the U=
SRP, and put a Python wrapper around it?</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Apr 4, 2021 at 1:15 AM M=
arcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"auto"><br><br><div dir=3D"ltr">Sent from my iPhone</div><d=
iv dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 3, 2021, at 7:08 AM, Bre=
ndan Horsfield &lt;b</blockquote></div><blockquote type=3D"cite"><div dir=3D=
"ltr"><div dir=3D"ltr"><div>QUESTION 2:&nbsp; This whole process feels more d=
ifficult than it should be.&nbsp; Why isn't the Python API installed with th=
e UHD driver by default?&nbsp; Would I be better off using another language (=
like C++) to control the USRP?</div><div><br></div><div>Thanks,</div><div>Br=
endan.</div><div><br></div></div></div></blockquote>Well, NI/Ettus have zero=
 control over how various distros choose to package and build UHD, similarly=
 for PyBombs=E2=80=94PyBombs isn=E2=80=99t maintained by NI/Ettus.&nbsp;<div=
><br></div><div>So if you =E2=80=9Cland=E2=80=9D on a distro where the packa=
ged UHD doesn=E2=80=99t include Python support, then you end up building UHD=
 yourself. Which may entail the pain you encountered due to missing compiler=
 flags.&nbsp;<br><br>Because the Linux world is so incredibly diverse, it=E2=
=80=99s rare that the developer of a given code base is also responsible for=
 packaging for a given distro/platform. That=E2=80=99s why there are =E2=80=9C=
package maintainers=E2=80=9D for each distro, and they=E2=80=99re the ones w=
ho end up making decisions like enabling support for various options, turnin=
g on =E2=80=9Cweird=E2=80=9D compiler flags, etc.&nbsp;</div><div><br></div>=
<div>UHD is no different in this regard.&nbsp;</div><div><br><blockquote typ=
e=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr"><div><br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 2, 20=
21 at 11:25 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Perhaps look at th=
e PyBombs recipe for your platform=E2=80=94there=E2=80=99s probably a compil=
er flag that needs to be set that you=E2=80=99re missing, but I don=E2=80=99=
t know what that is.&nbsp;<div><br></div><div>Also, in general, you don=E2=80=
=99t need to become root to compile and build code=E2=80=94only needed durin=
g the =E2=80=9Cmake install=E2=80=9D</div><div><br></div><div><br><br><div d=
ir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D=
"cite">On Apr 2, 2021, at 7:19 AM, Brendan Horsfield &lt;<a href=3D"mailto:b=
rendan.horsfield@vectalabs.com" target=3D"_blank">brendan.horsfield@vectalab=
s.com</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><di=
v dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hi Folks,<div><br></div><div>I would=
 like to interface my Raspberry Pi 4 to a USRP B210 via the Python API.&nbsp=
; This requires the UHD driver to be built from source.&nbsp; Unfortunately,=
 whenever I try this I encounter some errors that stop the build process in i=
ts tracks.</div><div><br></div><div>Details of the error are as follows:</di=
v><div><br></div><div>[ 53%] Linking CXX executable test_clock_synch<br>/usr=
/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomic_compare_ex=
change_8'<br>/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__=
atomic_load_8'<br>/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference t=
o `__atomic_store_8'<br>/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined refer=
ence to `__atomic_fetch_add_8'<br>collect2: error: ld returned 1 exit status=
<br>make[2]: *** [examples/CMakeFiles/test_clock_synch.dir/build.make:95: ex=
amples/test_clock_synch] Error 1<br>make[1]: *** [CMakeFiles/Makefile2:1039:=
 examples/CMakeFiles/test_clock_synch.dir/all] Error 2<br>make: *** [Makefil=
e:163: all] Error 2<br></div><div><br></div><div>The process I have been usi=
ng is as follows:</div><div><br></div><div>STEP 1:&nbsp; INSTALL DEPENDENCIE=
S<br>sudo apt-get install libboost-all-dev libusb-1.0-0-dev doxygen python3-=
docutils python3-mako python3-numpy python3-requests python3-ruamel.yaml pyt=
hon3-setuptools cmake build-essential<br><br>STEP 2:&nbsp; BUILD UHD DRIVER =
FROM SOURCE</div><div>cd /home/pi<br>mkdir workarea-uhd<br>cd workarea-uhd<b=
r>git clone <a href=3D"https://github.com/EttusResearch/uhd" target=3D"_blan=
k">https://github.com/EttusResearch/uhd</a><br>cd uhd<br>git checkout v4.0.0=
.0<br>cd host<br>mkdir build<br>cd build<br>sudo cmake -DNEON_SIMD_ENABLE=3D=
OFF -DENABLE_PYTHON_API=3DON ../<br>sudo make&nbsp; ---&gt;&nbsp;&nbsp;(ERRO=
RS OCCUR DURING "MAKE" PROCESS)<br><br>My system configuration is as follows=
:<br>Hardware: Raspberry Pi 4 Model B Rev 1.4<br>OS: Raspbian GNU/Linux 10 (=
buster) (32-bit, armv7l)<br>Ettus USRP B210<br></div><div><br></div><div>Doe=
s anyone know what the problem could be, and how I can resolve it?<br></div>=
<div><br></div><div>One final note:&nbsp; Using PyBOMBS, I was able to succe=
ssfully build &amp; install the UHD driver and connect to the USRP.&nbsp; Un=
fortunately the PyBOMBS build does not include the Python API, which is what=
 I really&nbsp;want.&nbsp; Is there a different version of the PyBOMBS build=
 that includes the Python API?</div><div><br></div><div>Thanks &amp; Regards=
,</div><div>Brendan.</div><div><br></div><div><br></div><div>&nbsp;&nbsp;</d=
iv></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D=
"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe send a=
n email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_bl=
ank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquote></div=
></div></blockquote></div>
</div></blockquote></div></div></blockquote></div>
</div></blockquote></body></html>=

--Apple-Mail-3C16B057-8228-4A8B-B880-88FB12F5BB80--

--===============5072894287090170349==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5072894287090170349==--
