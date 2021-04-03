Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A101A35338C
	for <lists+usrp-users@lfdr.de>; Sat,  3 Apr 2021 13:08:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 77B0A383B57
	for <lists+usrp-users@lfdr.de>; Sat,  3 Apr 2021 07:08:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="q52+X/Z4";
	dkim-atps=neutral
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 93B83383A8B
	for <USRP-users@lists.ettus.com>; Sat,  3 Apr 2021 07:08:11 -0400 (EDT)
Received: by mail-lj1-f169.google.com with SMTP id z8so7880024ljm.12
        for <USRP-users@lists.ettus.com>; Sat, 03 Apr 2021 04:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bKPxihozGiEXihnxcvtNZ3sdTkwLhuR6faljOYAwzxI=;
        b=q52+X/Z4EFER5V65aNKNwMRKYuHsT/OSZAGklDLyInP3Z5lCwCiCFJOKQ2MXuyYvY9
         MLK1lBK0hjCMlAt9qMqttsgd06YSIpbO8rS7+jnu9gcfGvhq2jMN+GoNq6PSV07AN2V7
         wECTg5rZesueSWfu/1un5FjQHEXtabLYTiAcOyGtWlxlhNwFc9Ik8DkD07eFkQvDJwR5
         H782TfpYRXfXjLZtl5qWUU0859N6txLUIvuWDg2JY+vXN+Y8P0X9KgcVkL+BNLqzWsHd
         yn1Jfej+Mdg9+5bIIlNh444arfRBQDnZgxlJ4lHmsszAUy8N+SQuiB3D6e3Xo7HsWcGd
         YRBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bKPxihozGiEXihnxcvtNZ3sdTkwLhuR6faljOYAwzxI=;
        b=hgMOU8EIH4stTcv1Y2H8iIGUjqLGevj50e5k4pPfPZ+IHQDAMRgNBN7RuOwP7u6CJu
         HTX0GJyS0R0uq1Q61wqjahR6xoXEkhPBrijTnMApdQYFtpDkUFNBKfM1dUn8ot154zoI
         aFmZkUYpyElTUADGtsz517m+rJb+yw8/IO4ustTbHzQPM/XP9Kbfj1aMvMRpCsVcADKK
         0LMWSjqvmDXXQA3tLw/gYmV18QFWZfkHGht/5s8afEOpBq25DGMO9bM1GbNa4b1C5SvZ
         ANnzSoAwpjCGWNFI2blT9cYS3jNHLcts2SdVY9f0esVfbBSHaZty8IcfTnmxmhpJ53eO
         F7Cw==
X-Gm-Message-State: AOAM532dw7esWrIT07rGgaTKgcVG168Ywo6Ut9xrPQhY3FqdCs/HcotP
	jc2WrRmIM+iIy7IUetMpDp7YfXzFRR/mrVtUZO8enw==
X-Google-Smtp-Source: ABdhPJwn7+chHpy9rKgxrLmVbhV1ePF11vvcSgZ3lKsjbdktwzWRCOEamRuxwyhs0vw99UK4ae+bkxrV+NJ8KctxRJI=
X-Received: by 2002:a2e:9811:: with SMTP id a17mr10853225ljj.52.1617448090216;
 Sat, 03 Apr 2021 04:08:10 -0700 (PDT)
MIME-Version: 1.0
References: <CALNMZ8W__YmMuZzNEwSRKE6WhdYr5b0c0-XdAM-39i=YFrOO4A@mail.gmail.com>
 <4C788C8B-7A43-4838-90A5-590E404AAF67@gmail.com>
In-Reply-To: <4C788C8B-7A43-4838-90A5-590E404AAF67@gmail.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Sat, 3 Apr 2021 21:07:59 +1000
Message-ID: <CALNMZ8Wg3gQnkAomrhhCBPAGtTfUbm3fkMzJhCWhUAgHrLuzyA@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: C3FOZFNBRHY4MBUL5ZBEW5P7FUW3KKBF
X-Message-ID-Hash: C3FOZFNBRHY4MBUL5ZBEW5P7FUW3KKBF
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem with interfacing Raspberry Pi 4 to USRP B210 with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C3FOZFNBRHY4MBUL5ZBEW5P7FUW3KKBF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4247734585860431568=="

--===============4247734585860431568==
Content-Type: multipart/alternative; boundary="000000000000dc3aeb05bf0f7ace"

--000000000000dc3aeb05bf0f7ace
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

I have tried your suggestion, but unfortunately without success:

Per your advice, I have edited the file "cmake.lwt" in the folder
/usr/local/lib/python3.7/dist-packages/pybombs/templates to include the
option "-DENABLE_PYTHON_API=3DON" in the calls to cmake.  The modified
commands are as follows:

configure: cmake .. -DENABLE_PYTHON_API=3DON
-DCMAKE_BUILD_TYPE=3D$cmakebuildtype -DCMAKE_INSTALL_PREFIX=3D$prefix
$config_opt -Wno-dev
configure_static: cmake .. -DENABLE_PYTHON_API=3DON
-DCMAKE_BUILD_TYPE=3D$cmakebuildtype -DCMAKE_INSTALL_PREFIX=3D$prefix
-DENABLE_STATIC_LIBS=3DTrue $config_opt

I removed the previous UHD installation and re-ran "pybombs install uhd",
but the end result was much the same:  the installation process completed
without errors, but the Python API was not included in the installation.

QUESTION 1:  Can you tell me if PyBOMBS actually builds the UHD driver from
source, or does it simply copy a pre-compiled binary onto my system?  The
reason I ask is that PyBOMBS is quite quick to install the UHD driver,
whereas the non-PyBOMBS approach is VERY slow (i.e. around 60 minutes to
get to 53%, at which point it crashes out with an error).

QUESTION 2:  This whole process feels more difficult than it should be.
Why isn't the Python API installed with the UHD driver by default?  Would I
be better off using another language (like C++) to control the USRP?

Thanks,
Brendan.



On Fri, Apr 2, 2021 at 11:25 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Perhaps look at the PyBombs recipe for your platform=E2=80=94there=E2=80=
=99s probably a
> compiler flag that needs to be set that you=E2=80=99re missing, but I don=
=E2=80=99t know
> what that is.
>
> Also, in general, you don=E2=80=99t need to become root to compile and bu=
ild
> code=E2=80=94only needed during the =E2=80=9Cmake install=E2=80=9D
>
>
>
> Sent from my iPhone
>
> On Apr 2, 2021, at 7:19 AM, Brendan Horsfield <
> brendan.horsfield@vectalabs.com> wrote:
>
> =EF=BB=BF
> Hi Folks,
>
> I would like to interface my Raspberry Pi 4 to a USRP B210 via the Python
> API.  This requires the UHD driver to be built from source.  Unfortunatel=
y,
> whenever I try this I encounter some errors that stop the build process i=
n
> its tracks.
>
> Details of the error are as follows:
>
> [ 53%] Linking CXX executable test_clock_synch
> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
> `__atomic_compare_exchange_8'
> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
> `__atomic_load_8'
> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
> `__atomic_store_8'
> /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
> `__atomic_fetch_add_8'
> collect2: error: ld returned 1 exit status
> make[2]: *** [examples/CMakeFiles/test_clock_synch.dir/build.make:95:
> examples/test_clock_synch] Error 1
> make[1]: *** [CMakeFiles/Makefile2:1039:
> examples/CMakeFiles/test_clock_synch.dir/all] Error 2
> make: *** [Makefile:163: all] Error 2
>
> The process I have been using is as follows:
>
> STEP 1:  INSTALL DEPENDENCIES
> sudo apt-get install libboost-all-dev libusb-1.0-0-dev doxygen
> python3-docutils python3-mako python3-numpy python3-requests
> python3-ruamel.yaml python3-setuptools cmake build-essential
>
> STEP 2:  BUILD UHD DRIVER FROM SOURCE
> cd /home/pi
> mkdir workarea-uhd
> cd workarea-uhd
> git clone https://github.com/EttusResearch/uhd
> cd uhd
> git checkout v4.0.0.0
> cd host
> mkdir build
> cd build
> sudo cmake -DNEON_SIMD_ENABLE=3DOFF -DENABLE_PYTHON_API=3DON ../
> sudo make  --->  (ERRORS OCCUR DURING "MAKE" PROCESS)
>
> My system configuration is as follows:
> Hardware: Raspberry Pi 4 Model B Rev 1.4
> OS: Raspbian GNU/Linux 10 (buster) (32-bit, armv7l)
> Ettus USRP B210
>
> Does anyone know what the problem could be, and how I can resolve it?
>
> One final note:  Using PyBOMBS, I was able to successfully build & instal=
l
> the UHD driver and connect to the USRP.  Unfortunately the PyBOMBS build
> does not include the Python API, which is what I really want.  Is there a
> different version of the PyBOMBS build that includes the Python API?
>
> Thanks & Regards,
> Brendan.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--000000000000dc3aeb05bf0f7ace
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus,<div><br></div><div>I have tried your suggestion=
, but unfortunately without success:</div><div><br></div><div>Per your advi=
ce, I have edited the file &quot;cmake.lwt&quot; in the folder /usr/local/l=
ib/python3.7/dist-packages/pybombs/templates to include the option &quot;-D=
ENABLE_PYTHON_API=3DON&quot; in the calls to cmake.=C2=A0 The modified comm=
ands are as follows:</div><div><br></div><div>configure: cmake .. -DENABLE_=
PYTHON_API=3DON -DCMAKE_BUILD_TYPE=3D$cmakebuildtype -DCMAKE_INSTALL_PREFIX=
=3D$prefix $config_opt -Wno-dev<br></div><div>configure_static: cmake .. -D=
ENABLE_PYTHON_API=3DON -DCMAKE_BUILD_TYPE=3D$cmakebuildtype -DCMAKE_INSTALL=
_PREFIX=3D$prefix -DENABLE_STATIC_LIBS=3DTrue $config_opt<br></div><div><br=
></div><div>I removed the previous UHD installation and re-ran &quot;pybomb=
s install uhd&quot;, but the end result was much the same:=C2=A0 the instal=
lation process completed without errors, but the Python API was not include=
d in the installation.</div><div><br></div><div>QUESTION 1:=C2=A0 Can you t=
ell me if PyBOMBS actually builds the UHD driver from source, or does it si=
mply copy a pre-compiled binary onto my system?=C2=A0 The reason I ask is t=
hat PyBOMBS is quite quick to install the UHD driver, whereas the non-PyBOM=
BS approach is VERY slow (i.e. around 60 minutes to get to 53%, at which po=
int it crashes out with an error).</div><div><br></div><div>QUESTION 2:=C2=
=A0 This whole process feels more difficult than it should be.=C2=A0 Why is=
n&#39;t the Python API installed with the UHD driver by default?=C2=A0 Woul=
d I be better off using another language (like C++) to control the USRP?</d=
iv><div><br></div><div>Thanks,</div><div>Brendan.</div><div><br></div><div>=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Fri, Apr 2, 2021 at 11:25 PM Marcus D Leech &lt;<a href=3D"mai=
lto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Perha=
ps look at the PyBombs recipe for your platform=E2=80=94there=E2=80=99s pro=
bably a compiler flag that needs to be set that you=E2=80=99re missing, but=
 I don=E2=80=99t know what that is.=C2=A0<div><br></div><div>Also, in gener=
al, you don=E2=80=99t need to become root to compile and build code=E2=80=
=94only needed during the =E2=80=9Cmake install=E2=80=9D</div><div><br></di=
v><div><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><=
br><blockquote type=3D"cite">On Apr 2, 2021, at 7:19 AM, Brendan Horsfield =
&lt;<a href=3D"mailto:brendan.horsfield@vectalabs.com" target=3D"_blank">br=
endan.horsfield@vectalabs.com</a>&gt; wrote:<br><br></blockquote></div><blo=
ckquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hi Folks,<=
div><br></div><div>I would like to interface my Raspberry Pi 4 to a USRP B2=
10 via the Python API.=C2=A0 This requires the UHD driver to be built from =
source.=C2=A0 Unfortunately, whenever I try this I encounter some errors th=
at stop the build process in its tracks.</div><div><br></div><div>Details o=
f the error are as follows:</div><div><br></div><div>[ 53%] Linking CXX exe=
cutable test_clock_synch<br>/usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined =
reference to `__atomic_compare_exchange_8&#39;<br>/usr/bin/ld: ../lib/libuh=
d.so.4.0.0: undefined reference to `__atomic_load_8&#39;<br>/usr/bin/ld: ..=
/lib/libuhd.so.4.0.0: undefined reference to `__atomic_store_8&#39;<br>/usr=
/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to `__atomic_fetch_add=
_8&#39;<br>collect2: error: ld returned 1 exit status<br>make[2]: *** [exam=
ples/CMakeFiles/test_clock_synch.dir/build.make:95: examples/test_clock_syn=
ch] Error 1<br>make[1]: *** [CMakeFiles/Makefile2:1039: examples/CMakeFiles=
/test_clock_synch.dir/all] Error 2<br>make: *** [Makefile:163: all] Error 2=
<br></div><div><br></div><div>The process I have been using is as follows:<=
/div><div><br></div><div>STEP 1:=C2=A0 INSTALL DEPENDENCIES<br>sudo apt-get=
 install libboost-all-dev libusb-1.0-0-dev doxygen python3-docutils python3=
-mako python3-numpy python3-requests python3-ruamel.yaml python3-setuptools=
 cmake build-essential<br><br>STEP 2:=C2=A0 BUILD UHD DRIVER FROM SOURCE</d=
iv><div>cd /home/pi<br>mkdir workarea-uhd<br>cd workarea-uhd<br>git clone <=
a href=3D"https://github.com/EttusResearch/uhd" target=3D"_blank">https://g=
ithub.com/EttusResearch/uhd</a><br>cd uhd<br>git checkout v4.0.0.0<br>cd ho=
st<br>mkdir build<br>cd build<br>sudo cmake -DNEON_SIMD_ENABLE=3DOFF -DENAB=
LE_PYTHON_API=3DON ../<br>sudo make=C2=A0 ---&gt;=C2=A0=C2=A0(ERRORS OCCUR =
DURING &quot;MAKE&quot; PROCESS)<br><br>My system configuration is as follo=
ws:<br>Hardware: Raspberry Pi 4 Model B Rev 1.4<br>OS: Raspbian GNU/Linux 1=
0 (buster) (32-bit, armv7l)<br>Ettus USRP B210<br></div><div><br></div><div=
>Does anyone know what the problem could be, and how I can resolve it?<br><=
/div><div><br></div><div>One final note:=C2=A0 Using PyBOMBS, I was able to=
 successfully build &amp; install the UHD driver and connect to the USRP.=
=C2=A0 Unfortunately the PyBOMBS build does not include the Python API, whi=
ch is what I really=C2=A0want.=C2=A0 Is there a different version of the Py=
BOMBS build that includes the Python API?</div><div><br></div><div>Thanks &=
amp; Regards,</div><div>Brendan.</div><div><br></div><div><br></div><div>=
=C2=A0=C2=A0</div></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></div></blockquote></div>

--000000000000dc3aeb05bf0f7ace--

--===============4247734585860431568==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4247734585860431568==--
