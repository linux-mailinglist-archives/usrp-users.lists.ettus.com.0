Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 47811353479
	for <lists+usrp-users@lfdr.de>; Sat,  3 Apr 2021 17:15:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1D85B3840CC
	for <lists+usrp-users@lfdr.de>; Sat,  3 Apr 2021 11:15:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gExueXq8";
	dkim-atps=neutral
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 4C3BC3840BF
	for <USRP-users@lists.ettus.com>; Sat,  3 Apr 2021 11:15:03 -0400 (EDT)
Received: by mail-qt1-f174.google.com with SMTP id f12so1013983qtf.2
        for <USRP-users@lists.ettus.com>; Sat, 03 Apr 2021 08:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=N/n0HHn4gevlNKGHP4PMGeOlSMW3I63fbf9SLBXrMkA=;
        b=gExueXq8HAeypwJNVRZijvjTLqqaS1amZUKx3yglJMdsHAUPRlh+YFLOuJ3j5aXHbm
         yJTsZYsNv8xI8JWh2km4llXZ7l8+dQXsy6TnyvXqF2P1jLtrNmUT/1ObLu4WNhdAp/f1
         VxcJDVRuSWf9JePqTJj2sNPruiOL2A5cJUZ3v1k/mckloZiJtcJx9MGz8qJeabJgDZWk
         UfDqkWN8rU8RM8Qt7rIhKp0zVesZjznj1tzsGGNtG5Et09oybPnlq/d5oK6WMTKx45wd
         aVypTCHGMXZ3BfTrnivsTB8G67jaMbAcxCGeROV7jHCIBGuKh//Es2rPpmXd7tf3ssuF
         FidA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=N/n0HHn4gevlNKGHP4PMGeOlSMW3I63fbf9SLBXrMkA=;
        b=bjb6iB+xC6M1feaKMqu7LyvrMCv5R0gf/KcmYHb+1mO3vxTI4c+ilDM2OVk45u0+bn
         3qjoDSltXNc83JssSYYVb+ME+CbyGeNw/mLcNJn6M5xTcZzHayR4cTPoiBfDY667Rt7i
         RCdflcNGmSnmm+NKFVu+iGwFIJVYjPX43Zcu5g7iPB6MCNn+X5PC8eAYOPsZ7bEtyqJJ
         kA77mZ7BrGE2RPDsoQVkaSyB62w4Os0Llfccvit/5AFUFDPr/F5Ykk62E075xQrHC0aE
         cFd4ACy0m/2P6Ba+PJNrkebBb0VzU+Z+VoLp2x74pwTevsVj7OcGxzx6HWSz//Wr8mnA
         dc8A==
X-Gm-Message-State: AOAM530z+V+s+qrckLoxLSx4KEciP2smHC9O0LUaN5lycjECFiEq+BZL
	gpdLb0aootZJ9UZq7Q8OwDe26MS1CEo=
X-Google-Smtp-Source: ABdhPJw/b0jxKn1CrykOu6mocuLoZrOIk3xtWOxsbYIEFSVgtnzrC9NyH3L/86d7tP9xh0k6DsLyWQ==
X-Received: by 2002:ac8:7303:: with SMTP id x3mr15842757qto.136.1617462902598;
        Sat, 03 Apr 2021 08:15:02 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id r17sm8429454qtx.62.2021.04.03.08.15.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Apr 2021 08:15:02 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sat, 3 Apr 2021 11:15:01 -0400
Message-Id: <B129306E-EF88-4A7B-8511-6CEC3A5ABDDF@gmail.com>
References: <CALNMZ8Wg3gQnkAomrhhCBPAGtTfUbm3fkMzJhCWhUAgHrLuzyA@mail.gmail.com>
In-Reply-To: <CALNMZ8Wg3gQnkAomrhhCBPAGtTfUbm3fkMzJhCWhUAgHrLuzyA@mail.gmail.com>
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
X-Mailer: iPhone Mail (18D61)
Message-ID-Hash: 3H7BJJ3TTFWYOMS5A4WBD6FKG5CH56MQ
X-Message-ID-Hash: 3H7BJJ3TTFWYOMS5A4WBD6FKG5CH56MQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem with interfacing Raspberry Pi 4 to USRP B210 with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3H7BJJ3TTFWYOMS5A4WBD6FKG5CH56MQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4757690177394006475=="


--===============4757690177394006475==
Content-Type: multipart/alternative; boundary=Apple-Mail-FC88BD10-8EE6-4C10-B7B1-00B21619F04D
Content-Transfer-Encoding: 7bit


--Apple-Mail-FC88BD10-8EE6-4C10-B7B1-00B21619F04D
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable



Sent from my iPhone

> On Apr 3, 2021, at 7:08 AM, Brendan Horsfield <b
> QUESTION 2:  This whole process feels more difficult than it should be.  W=
hy isn't the Python API installed with the UHD driver by default?  Would I b=
e better off using another language (like C++) to control the USRP?
>=20
> Thanks,
> Brendan.
>=20
Well, NI/Ettus have zero control over how various distros choose to package a=
nd build UHD, similarly for PyBombs=E2=80=94PyBombs isn=E2=80=99t maintained=
 by NI/Ettus.=20

So if you =E2=80=9Cland=E2=80=9D on a distro where the packaged UHD doesn=E2=
=80=99t include Python support, then you end up building UHD yourself. Which=
 may entail the pain you encountered due to missing compiler flags.=20

Because the Linux world is so incredibly diverse, it=E2=80=99s rare that the=
 developer of a given code base is also responsible for packaging for a give=
n distro/platform. That=E2=80=99s why there are =E2=80=9Cpackage maintainers=
=E2=80=9D for each distro, and they=E2=80=99re the ones who end up making de=
cisions like enabling support for various options, turning on =E2=80=9Cweird=
=E2=80=9D compiler flags, etc.=20

UHD is no different in this regard.=20

>=20
>=20
>> On Fri, Apr 2, 2021 at 11:25 PM Marcus D Leech <patchvonbraun@gmail.com> w=
rote:
>> Perhaps look at the PyBombs recipe for your platform=E2=80=94there=E2=80=99=
s probably a compiler flag that needs to be set that you=E2=80=99re missing,=
 but I don=E2=80=99t know what that is.=20
>>=20
>> Also, in general, you don=E2=80=99t need to become root to compile and bu=
ild code=E2=80=94only needed during the =E2=80=9Cmake install=E2=80=9D
>>=20
>>=20
>>=20
>> Sent from my iPhone
>>=20
>>>> On Apr 2, 2021, at 7:19 AM, Brendan Horsfield <brendan.horsfield@vectal=
abs.com> wrote:
>>>>=20
>>> =EF=BB=BF
>>> Hi Folks,
>>>=20
>>> I would like to interface my Raspberry Pi 4 to a USRP B210 via the Pytho=
n API.  This requires the UHD driver to be built from source.  Unfortunately=
, whenever I try this I encounter some errors that stop the build process in=
 its tracks.
>>>=20
>>> Details of the error are as follows:
>>>=20
>>> [ 53%] Linking CXX executable test_clock_synch
>>> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomic_co=
mpare_exchange_8'
>>> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomic_lo=
ad_8'
>>> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomic_st=
ore_8'
>>> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomic_fe=
tch_add_8'
>>> collect2: error: ld returned 1 exit status
>>> make[2]: *** [examples/CMakeFiles/test_clock_synch.dir/build.make:95: ex=
amples/test_clock_synch] Error 1
>>> make[1]: *** [CMakeFiles/Makefile2:1039: examples/CMakeFiles/test_clock_=
synch.dir/all] Error 2
>>> make: *** [Makefile:163: all] Error 2
>>>=20
>>> The process I have been using is as follows:
>>>=20
>>> STEP 1:  INSTALL DEPENDENCIES
>>> sudo apt-get install libboost-all-dev libusb-1.0-0-dev doxygen python3-d=
ocutils python3-mako python3-numpy python3-requests python3-ruamel.yaml pyth=
on3-setuptools cmake build-essential
>>>=20
>>> STEP 2:  BUILD UHD DRIVER FROM SOURCE
>>> cd /home/pi
>>> mkdir workarea-uhd
>>> cd workarea-uhd
>>> git clone https://github.com/EttusResearch/uhd
>>> cd uhd
>>> git checkout v4.0.0.0
>>> cd host
>>> mkdir build
>>> cd build
>>> sudo cmake -DNEON_SIMD_ENABLE=3DOFF -DENABLE_PYTHON_API=3DON ../
>>> sudo make  --->  (ERRORS OCCUR DURING "MAKE" PROCESS)
>>>=20
>>> My system configuration is as follows:
>>> Hardware: Raspberry Pi 4 Model B Rev 1.4
>>> OS: Raspbian GNU/Linux 10 (buster) (32-bit, armv7l)
>>> Ettus USRP B210
>>>=20
>>> Does anyone know what the problem could be, and how I can resolve it?
>>>=20
>>> One final note:  Using PyBOMBS, I was able to successfully build & insta=
ll the UHD driver and connect to the USRP.  Unfortunately the PyBOMBS build d=
oes not include the Python API, which is what I really want.  Is there a dif=
ferent version of the PyBOMBS build that includes the Python API?
>>>=20
>>> Thanks & Regards,
>>> Brendan.
>>>=20
>>>=20
>>>  =20
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-FC88BD10-8EE6-4C10-B7B1-00B21619F04D
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><br><br><div dir=3D"ltr">Sent from my iPhon=
e</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 3, 2021, at 7:0=
8 AM, Brendan Horsfield &lt;b</blockquote></div><blockquote type=3D"cite"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div>QUESTION 2:&nbsp; This whole process fe=
els more difficult than it should be.&nbsp; Why isn't the Python API install=
ed with the UHD driver by default?&nbsp; Would I be better off using another=
 language (like C++) to control the USRP?</div><div><br></div><div>Thanks,</=
div><div>Brendan.</div><div><br></div></div></div></blockquote>Well, NI/Ettu=
s have zero control over how various distros choose to package and build UHD=
, similarly for PyBombs=E2=80=94PyBombs isn=E2=80=99t maintained by NI/Ettus=
.&nbsp;<div><br></div><div>So if you =E2=80=9Cland=E2=80=9D on a distro wher=
e the packaged UHD doesn=E2=80=99t include Python support, then you end up b=
uilding UHD yourself. Which may entail the pain you encountered due to missi=
ng compiler flags.&nbsp;<br><br>Because the Linux world is so incredibly div=
erse, it=E2=80=99s rare that the developer of a given code base is also resp=
onsible for packaging for a given distro/platform. That=E2=80=99s why there a=
re =E2=80=9Cpackage maintainers=E2=80=9D for each distro, and they=E2=80=99r=
e the ones who end up making decisions like enabling support for various opt=
ions, turning on =E2=80=9Cweird=E2=80=9D compiler flags, etc.&nbsp;</div><di=
v><br></div><div>UHD is no different in this regard.&nbsp;</div><div><br><bl=
ockquote type=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr"><div><br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri=
, Apr 2, 2021 at 11:25 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun=
@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"auto">Perhaps look at the PyBom=
bs recipe for your platform=E2=80=94there=E2=80=99s probably a compiler flag=
 that needs to be set that you=E2=80=99re missing, but I don=E2=80=99t know w=
hat that is.&nbsp;<div><br></div><div>Also, in general, you don=E2=80=99t ne=
ed to become root to compile and build code=E2=80=94only needed during the =E2=
=80=9Cmake install=E2=80=9D</div><div><br></div><div><br><br><div dir=3D"ltr=
">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On=
 Apr 2, 2021, at 7:19 AM, Brendan Horsfield &lt;<a href=3D"mailto:brendan.ho=
rsfield@vectalabs.com" target=3D"_blank">brendan.horsfield@vectalabs.com</a>=
&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"=
ltr">=EF=BB=BF<div dir=3D"ltr">Hi Folks,<div><br></div><div>I would like to i=
nterface my Raspberry Pi 4 to a USRP B210 via the Python API.&nbsp; This req=
uires the UHD driver to be built from source.&nbsp; Unfortunately, whenever I=
 try this I encounter some errors that stop the build process in its tracks.=
</div><div><br></div><div>Details of the error are as follows:</div><div><br=
></div><div>[ 53%] Linking CXX executable test_clock_synch<br>/usr/bin/ld: .=
./lib/libuhd.so.4.0.0: undefined reference to `__atomic_compare_exchange_8'<=
br>/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomic_loa=
d_8'<br>/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomi=
c_store_8'<br>/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `_=
_atomic_fetch_add_8'<br>collect2: error: ld returned 1 exit status<br>make[2=
]: *** [examples/CMakeFiles/test_clock_synch.dir/build.make:95: examples/tes=
t_clock_synch] Error 1<br>make[1]: *** [CMakeFiles/Makefile2:1039: examples/=
CMakeFiles/test_clock_synch.dir/all] Error 2<br>make: *** [Makefile:163: all=
] Error 2<br></div><div><br></div><div>The process I have been using is as f=
ollows:</div><div><br></div><div>STEP 1:&nbsp; INSTALL DEPENDENCIES<br>sudo a=
pt-get install libboost-all-dev libusb-1.0-0-dev doxygen python3-docutils py=
thon3-mako python3-numpy python3-requests python3-ruamel.yaml python3-setupt=
ools cmake build-essential<br><br>STEP 2:&nbsp; BUILD UHD DRIVER FROM SOURCE=
</div><div>cd /home/pi<br>mkdir workarea-uhd<br>cd workarea-uhd<br>git clone=
 <a href=3D"https://github.com/EttusResearch/uhd" target=3D"_blank">https://=
github.com/EttusResearch/uhd</a><br>cd uhd<br>git checkout v4.0.0.0<br>cd ho=
st<br>mkdir build<br>cd build<br>sudo cmake -DNEON_SIMD_ENABLE=3DOFF -DENABL=
E_PYTHON_API=3DON ../<br>sudo make&nbsp; ---&gt;&nbsp;&nbsp;(ERRORS OCCUR DU=
RING "MAKE" PROCESS)<br><br>My system configuration is as follows:<br>Hardwa=
re: Raspberry Pi 4 Model B Rev 1.4<br>OS: Raspbian GNU/Linux 10 (buster) (32=
-bit, armv7l)<br>Ettus USRP B210<br></div><div><br></div><div>Does anyone kn=
ow what the problem could be, and how I can resolve it?<br></div><div><br></=
div><div>One final note:&nbsp; Using PyBOMBS, I was able to successfully bui=
ld &amp; install the UHD driver and connect to the USRP.&nbsp; Unfortunately=
 the PyBOMBS build does not include the Python API, which is what I really&n=
bsp;want.&nbsp; Is there a different version of the PyBOMBS build that inclu=
des the Python API?</div><div><br></div><div>Thanks &amp; Regards,</div><div=
>Brendan.</div><div><br></div><div><br></div><div>&nbsp;&nbsp;</div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D=
"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe send a=
n email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_bl=
ank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquote></div=
></div></blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-FC88BD10-8EE6-4C10-B7B1-00B21619F04D--

--===============4757690177394006475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4757690177394006475==--
