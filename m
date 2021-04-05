Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B61353BCD
	for <lists+usrp-users@lfdr.de>; Mon,  5 Apr 2021 07:40:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1C56F38405A
	for <lists+usrp-users@lfdr.de>; Mon,  5 Apr 2021 01:39:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="0QZ+jqRX";
	dkim-atps=neutral
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	by mm2.emwd.com (Postfix) with ESMTPS id B430D383CCF
	for <USRP-users@lists.ettus.com>; Mon,  5 Apr 2021 01:39:13 -0400 (EDT)
Received: by mail-vs1-f41.google.com with SMTP id t12so5535558vsj.11
        for <USRP-users@lists.ettus.com>; Sun, 04 Apr 2021 22:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hJ3ht7u/NjY92C43tfLHVOAlW2T7/vji6wcLgupWWd8=;
        b=0QZ+jqRXb/0dnveepa/p62CuR4blnObkZxovUZ32eLwIL7aD7zxTCIiW3+mqGZGQvE
         /ERjt+IKX7UkNPi1cP/SohROjopN6++A99o/LIhQFJ0RkCPULZQa/8KXpUTzD1QKwDBB
         A9WWavXw2oAnLFvRhuTcBPh6I9ncEZlAit4gdfWlEITJatB0ugJbrsOOxBc/wUzYEsSn
         GTh1VfLcxWipHe3ShX+UQ71gKoqHSxK3ghCdKtefk5VaEcKGLyr/HBxkCcTgb/V7wIdA
         8OXihsYZd+f0es6D6vPn4DY9emj7WA1HPiU+6kgTWlkYgzm6556fH9uuSgR0gJEY/qFd
         CAPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hJ3ht7u/NjY92C43tfLHVOAlW2T7/vji6wcLgupWWd8=;
        b=ZEIfd7aTtcbKUu8BX/Ub2uC3rzYoKdWG3NXsxISC8+J0GntZaTwcQPdqFMTnHDnhkn
         4GjxeZTniLy26/hx00Krt8eL9QV4O4Rc391nttg/SJz3iT0Q4koKQeJ+Ty39Xu/TcUKL
         fbzeXQiiGn56ln0IR06ahxbDG64yXgavoNr8r0ue5I4mdGitflhqeKGYZ1F5DoAT8Qnv
         GifvG8O0cVvRDRGKjzfIPx7lMeaO5FbjkA7QfxXeT4ItCjsTSKqz+nxTdTXHkU/BFBae
         6oiOG19wUhjUt8bl/C7pOWW2hIib8T51hgCK9kZYeop7JAmdY4/yzwG9vTEbovAdLsMX
         MAvA==
X-Gm-Message-State: AOAM533DotwPGimBUumeO4E4Qa1PgR6fAA7JnzHqSwrrWHZvSFeJHEOR
	01jedN/oT2KQMTLh6qeluQPVz4FdFU90elP8oB4xOg==
X-Google-Smtp-Source: ABdhPJzCo7laJREiLfVnA69RjejUwO4JrOcMcXdWYCLMgf2IsOzFLq8IfKm+2zJqLDSH65OA36/Yqyjc4974qHiX7rg=
X-Received: by 2002:a67:8007:: with SMTP id b7mr1048147vsd.29.1617601152750;
 Sun, 04 Apr 2021 22:39:12 -0700 (PDT)
MIME-Version: 1.0
References: <CALNMZ8X7gRZH=MN+iCW1LQzGgsAUJrU91s8atfrTQ9LnL91oHQ@mail.gmail.com>
 <09494F90-D4DB-401F-8CAE-FF766FAA689E@gmail.com>
In-Reply-To: <09494F90-D4DB-401F-8CAE-FF766FAA689E@gmail.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Mon, 5 Apr 2021 15:39:01 +1000
Message-ID: <CALNMZ8XbFrbS-ef5MP=Pd4fmzHJu5+dMsRdG4o4-Krt+AjeiJQ@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: FV6XT5ES724OUXOZXG4QC62LBK7BVQ7I
X-Message-ID-Hash: FV6XT5ES724OUXOZXG4QC62LBK7BVQ7I
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem with interfacing Raspberry Pi 4 to USRP B210 with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FV6XT5ES724OUXOZXG4QC62LBK7BVQ7I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8132028121609626630=="

--===============8132028121609626630==
Content-Type: multipart/alternative; boundary="00000000000019287005bf331e67"

--00000000000019287005bf331e67
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A quick update for benefit of those following this thread:

As a sanity check, I have tried to compile & build one of the C++ examples
on the Ettus homepage, only to get exactly the same error messages that I
got with the Python API:

pi@raspberrypi:~/cpp-dev/init_usrp/build $ sudo make
[ 50%] Linking CXX executable init_usrp
/usr/bin/ld: /usr/local/lib/libuhd.so: undefined reference to
`__atomic_compare_exchange_8'
/usr/bin/ld: /usr/local/lib/libuhd.so: undefined reference to
`__atomic_load_8'
/usr/bin/ld: /usr/local/lib/libuhd.so: undefined reference to
`__atomic_store_8'
/usr/bin/ld: /usr/local/lib/libuhd.so: undefined reference to
`__atomic_fetch_add_8'
collect2: error: ld returned 1 exit status
make[2]: *** [CMakeFiles/init_usrp.dir/build.make:88: init_usrp] Error 1
make[1]: *** [CMakeFiles/Makefile2:76: CMakeFiles/init_usrp.dir/all] Error =
2
make: *** [Makefile:84: all] Error 2

Clearly the sticking point is the -latomic linking failure.  I have still
got some suggestions to work through over the next week or so.  I'll post
another update if I find a working solution.

Brendan.



On Sun, Apr 4, 2021 at 11:03 AM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> The C++ API is the standard API for UHD follows by the legacy C API and
> then the Python API.  The Python API is still considered experimental, an=
d
> it will necessarily have performance issues=E2=80=94that=E2=80=99s just t=
he nature of an
> interpreted language trying to do high performance real-time signal
> processing=E2=80=94even when you use things like numpy.
>
> Sent from my iPhone
>
> On Apr 3, 2021, at 7:37 PM, Brendan Horsfield <
> brendan.horsfield@vectalabs.com> wrote:
>
> =EF=BB=BF
> Your point is well taken, although I confess I am still a bit surprised
> that Python support is not the norm, given the popularity of this languag=
e
> in the scientific & engineering community.
>
> Getting back to my problem:  Am I correct in assuming that the C++ API is
> included as standard with every UHD build?  If so, rather than spending
> days/weeks trying to add Python support to UHD on the Raspberry Pi, would
> it be faster for me to just create a C++ function to communicate with the
> USRP, and put a Python wrapper around it?
>
> On Sun, Apr 4, 2021 at 1:15 AM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>>
>>
>> Sent from my iPhone
>>
>> On Apr 3, 2021, at 7:08 AM, Brendan Horsfield <b
>>
>> QUESTION 2:  This whole process feels more difficult than it should be.
>> Why isn't the Python API installed with the UHD driver by default?  Woul=
d I
>> be better off using another language (like C++) to control the USRP?
>>
>> Thanks,
>> Brendan.
>>
>> Well, NI/Ettus have zero control over how various distros choose to
>> package and build UHD, similarly for PyBombs=E2=80=94PyBombs isn=E2=80=
=99t maintained by
>> NI/Ettus.
>>
>> So if you =E2=80=9Cland=E2=80=9D on a distro where the packaged UHD does=
n=E2=80=99t include
>> Python support, then you end up building UHD yourself. Which may entail =
the
>> pain you encountered due to missing compiler flags.
>>
>> Because the Linux world is so incredibly diverse, it=E2=80=99s rare that=
 the
>> developer of a given code base is also responsible for packaging for a
>> given distro/platform. That=E2=80=99s why there are =E2=80=9Cpackage mai=
ntainers=E2=80=9D for each
>> distro, and they=E2=80=99re the ones who end up making decisions like en=
abling
>> support for various options, turning on =E2=80=9Cweird=E2=80=9D compiler=
 flags, etc.
>>
>> UHD is no different in this regard.
>>
>>
>>
>> On Fri, Apr 2, 2021 at 11:25 PM Marcus D Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> Perhaps look at the PyBombs recipe for your platform=E2=80=94there=E2=
=80=99s probably a
>>> compiler flag that needs to be set that you=E2=80=99re missing, but I d=
on=E2=80=99t know
>>> what that is.
>>>
>>> Also, in general, you don=E2=80=99t need to become root to compile and =
build
>>> code=E2=80=94only needed during the =E2=80=9Cmake install=E2=80=9D
>>>
>>>
>>>
>>> Sent from my iPhone
>>>
>>> On Apr 2, 2021, at 7:19 AM, Brendan Horsfield <
>>> brendan.horsfield@vectalabs.com> wrote:
>>>
>>> =EF=BB=BF
>>> Hi Folks,
>>>
>>> I would like to interface my Raspberry Pi 4 to a USRP B210 via the
>>> Python API.  This requires the UHD driver to be built from source.
>>> Unfortunately, whenever I try this I encounter some errors that stop th=
e
>>> build process in its tracks.
>>>
>>> Details of the error are as follows:
>>>
>>> [ 53%] Linking CXX executable test_clock_synch
>>> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
>>> `__atomic_compare_exchange_8'
>>> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
>>> `__atomic_load_8'
>>> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
>>> `__atomic_store_8'
>>> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
>>> `__atomic_fetch_add_8'
>>> collect2: error: ld returned 1 exit status
>>> make[2]: *** [examples/CMakeFiles/test_clock_synch.dir/build.make:95:
>>> examples/test_clock_synch] Error 1
>>> make[1]: *** [CMakeFiles/Makefile2:1039:
>>> examples/CMakeFiles/test_clock_synch.dir/all] Error 2
>>> make: *** [Makefile:163: all] Error 2
>>>
>>> The process I have been using is as follows:
>>>
>>> STEP 1:  INSTALL DEPENDENCIES
>>> sudo apt-get install libboost-all-dev libusb-1.0-0-dev doxygen
>>> python3-docutils python3-mako python3-numpy python3-requests
>>> python3-ruamel.yaml python3-setuptools cmake build-essential
>>>
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
>>>
>>> My system configuration is as follows:
>>> Hardware: Raspberry Pi 4 Model B Rev 1.4
>>> OS: Raspbian GNU/Linux 10 (buster) (32-bit, armv7l)
>>> Ettus USRP B210
>>>
>>> Does anyone know what the problem could be, and how I can resolve it?
>>>
>>> One final note:  Using PyBOMBS, I was able to successfully build &
>>> install the UHD driver and connect to the USRP.  Unfortunately the PyBO=
MBS
>>> build does not include the Python API, which is what I really want.  Is
>>> there a different version of the PyBOMBS build that includes the Python=
 API?
>>>
>>> Thanks & Regards,
>>> Brendan.
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>>

--00000000000019287005bf331e67
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>A quick update for benefit of those following this th=
read:=C2=A0=C2=A0</div><div><br></div><div>As a sanity check, I have tried =
to compile &amp; build one of the C++ examples on the Ettus homepage, only =
to get exactly the same error messages that I got with the Python API:=C2=
=A0</div><div><br></div><div>pi@raspberrypi:~/cpp-dev/init_usrp/build $ sud=
o make<br>[ 50%] Linking CXX executable init_usrp<br>/usr/bin/ld: /usr/loca=
l/lib/libuhd.so: undefined reference to `__atomic_compare_exchange_8&#39;<b=
r>/usr/bin/ld: /usr/local/lib/libuhd.so: undefined reference to `__atomic_l=
oad_8&#39;<br>/usr/bin/ld: /usr/local/lib/libuhd.so: undefined reference to=
 `__atomic_store_8&#39;<br>/usr/bin/ld: /usr/local/lib/libuhd.so: undefined=
 reference to `__atomic_fetch_add_8&#39;<br>collect2: error: ld returned 1 =
exit status<br>make[2]: *** [CMakeFiles/init_usrp.dir/build.make:88: init_u=
srp] Error 1<br>make[1]: *** [CMakeFiles/Makefile2:76: CMakeFiles/init_usrp=
.dir/all] Error 2<br>make: *** [Makefile:84: all] Error 2<br></div><div><br=
></div><div><div>Clearly the sticking point is the -latomic linking failure=
.=C2=A0 I have still got some suggestions to work through over the next wee=
k or so.=C2=A0 I&#39;ll post another update if I find a working solution.</=
div><div><br></div><div>Brendan.</div><div><br></div><div><br></div><div></=
div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Sun, Apr 4, 2021 at 11:03 AM Marcus D Leech &lt;<a href=3D"mai=
lto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">The C=
++ API is the standard API for UHD follows by the legacy C API and then the=
 Python API.=C2=A0 The Python API is still considered experimental, and it =
will necessarily have performance issues=E2=80=94that=E2=80=99s just the na=
ture of an interpreted language trying to do high performance real-time sig=
nal processing=E2=80=94even when you use things like numpy.=C2=A0<br><br><d=
iv dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote ty=
pe=3D"cite">On Apr 3, 2021, at 7:37 PM, Brendan Horsfield &lt;<a href=3D"ma=
ilto:brendan.horsfield@vectalabs.com" target=3D"_blank">brendan.horsfield@v=
ectalabs.com</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"c=
ite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Your point is well taken, a=
lthough I confess I am still a bit surprised that Python support is not the=
 norm, given the popularity of this language in the scientific &amp; engine=
ering community.=C2=A0=C2=A0<div><br></div><div>Getting back to my problem:=
=C2=A0 Am I correct in assuming that the C++ API is included as standard wi=
th every UHD build?=C2=A0 If so, rather than spending days/weeks trying to =
add Python support to UHD on the Raspberry Pi, would it be faster for me to=
 just create a C++ function to communicate with the USRP, and put a Python =
wrapper around it?</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Sun, Apr 4, 2021 at 1:15 AM Marcus D Leech &lt;<=
a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"auto"><br><br><div dir=3D"ltr">Sent from my iPhone</div=
><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 3, 2021, at 7:08 AM,=
 Brendan Horsfield &lt;b</blockquote></div><blockquote type=3D"cite"><div d=
ir=3D"ltr"><div dir=3D"ltr"><div>QUESTION 2:=C2=A0 This whole process feels=
 more difficult than it should be.=C2=A0 Why isn&#39;t the Python API insta=
lled with the UHD driver by default?=C2=A0 Would I be better off using anot=
her language (like C++) to control the USRP?</div><div><br></div><div>Thank=
s,</div><div>Brendan.</div><div><br></div></div></div></blockquote>Well, NI=
/Ettus have zero control over how various distros choose to package and bui=
ld UHD, similarly for PyBombs=E2=80=94PyBombs isn=E2=80=99t maintained by N=
I/Ettus.=C2=A0<div><br></div><div>So if you =E2=80=9Cland=E2=80=9D on a dis=
tro where the packaged UHD doesn=E2=80=99t include Python support, then you=
 end up building UHD yourself. Which may entail the pain you encountered du=
e to missing compiler flags.=C2=A0<br><br>Because the Linux world is so inc=
redibly diverse, it=E2=80=99s rare that the developer of a given code base =
is also responsible for packaging for a given distro/platform. That=E2=80=
=99s why there are =E2=80=9Cpackage maintainers=E2=80=9D for each distro, a=
nd they=E2=80=99re the ones who end up making decisions like enabling suppo=
rt for various options, turning on =E2=80=9Cweird=E2=80=9D compiler flags, =
etc.=C2=A0</div><div><br></div><div>UHD is no different in this regard.=C2=
=A0</div><div><br><blockquote type=3D"cite"><div dir=3D"ltr"><div dir=3D"lt=
r"><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Fri, Apr 2, 2021 at 11:25 PM Marcus D Leech &lt;<a hre=
f=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"auto">Perhaps look at the PyBombs recipe for your platform=
=E2=80=94there=E2=80=99s probably a compiler flag that needs to be set that=
 you=E2=80=99re missing, but I don=E2=80=99t know what that is.=C2=A0<div><=
br></div><div>Also, in general, you don=E2=80=99t need to become root to co=
mpile and build code=E2=80=94only needed during the =E2=80=9Cmake install=
=E2=80=9D</div><div><br></div><div><br><br><div dir=3D"ltr">Sent from my iP=
hone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 2, 2021, at=
 7:19 AM, Brendan Horsfield &lt;<a href=3D"mailto:brendan.horsfield@vectala=
bs.com" target=3D"_blank">brendan.horsfield@vectalabs.com</a>&gt; wrote:<br=
><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<div dir=3D"ltr">Hi Folks,<div><br></div><div>I would like to interface =
my Raspberry Pi 4 to a USRP B210 via the Python API.=C2=A0 This requires th=
e UHD driver to be built from source.=C2=A0 Unfortunately, whenever I try t=
his I encounter some errors that stop the build process in its tracks.</div=
><div><br></div><div>Details of the error are as follows:</div><div><br></d=
iv><div>[ 53%] Linking CXX executable test_clock_synch<br>/usr/bin/ld: ../l=
ib/libuhd.so.4.0.0: undefined reference to `__atomic_compare_exchange_8&#39=
;<br>/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomic_=
load_8&#39;<br>/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to =
`__atomic_store_8&#39;<br>/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined re=
ference to `__atomic_fetch_add_8&#39;<br>collect2: error: ld returned 1 exi=
t status<br>make[2]: *** [examples/CMakeFiles/test_clock_synch.dir/build.ma=
ke:95: examples/test_clock_synch] Error 1<br>make[1]: *** [CMakeFiles/Makef=
ile2:1039: examples/CMakeFiles/test_clock_synch.dir/all] Error 2<br>make: *=
** [Makefile:163: all] Error 2<br></div><div><br></div><div>The process I h=
ave been using is as follows:</div><div><br></div><div>STEP 1:=C2=A0 INSTAL=
L DEPENDENCIES<br>sudo apt-get install libboost-all-dev libusb-1.0-0-dev do=
xygen python3-docutils python3-mako python3-numpy python3-requests python3-=
ruamel.yaml python3-setuptools cmake build-essential<br><br>STEP 2:=C2=A0 B=
UILD UHD DRIVER FROM SOURCE</div><div>cd /home/pi<br>mkdir workarea-uhd<br>=
cd workarea-uhd<br>git clone <a href=3D"https://github.com/EttusResearch/uh=
d" target=3D"_blank">https://github.com/EttusResearch/uhd</a><br>cd uhd<br>=
git checkout v4.0.0.0<br>cd host<br>mkdir build<br>cd build<br>sudo cmake -=
DNEON_SIMD_ENABLE=3DOFF -DENABLE_PYTHON_API=3DON ../<br>sudo make=C2=A0 ---=
&gt;=C2=A0=C2=A0(ERRORS OCCUR DURING &quot;MAKE&quot; PROCESS)<br><br>My sy=
stem configuration is as follows:<br>Hardware: Raspberry Pi 4 Model B Rev 1=
.4<br>OS: Raspbian GNU/Linux 10 (buster) (32-bit, armv7l)<br>Ettus USRP B21=
0<br></div><div><br></div><div>Does anyone know what the problem could be, =
and how I can resolve it?<br></div><div><br></div><div>One final note:=C2=
=A0 Using PyBOMBS, I was able to successfully build &amp; install the UHD d=
river and connect to the USRP.=C2=A0 Unfortunately the PyBOMBS build does n=
ot include the Python API, which is what I really=C2=A0want.=C2=A0 Is there=
 a different version of the PyBOMBS build that includes the Python API?</di=
v><div><br></div><div>Thanks &amp; Regards,</div><div>Brendan.</div><div><b=
r></div><div><br></div><div>=C2=A0=C2=A0</div></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></div></blockquote></div>
</div></blockquote></div></div></blockquote></div>
</div></blockquote></div></blockquote></div>

--00000000000019287005bf331e67--

--===============8132028121609626630==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8132028121609626630==--
