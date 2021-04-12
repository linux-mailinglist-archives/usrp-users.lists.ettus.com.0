Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 311EB35CA02
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 17:36:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 74072384376
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 11:36:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ikfDWFFu";
	dkim-atps=neutral
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 74F68384079
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 11:35:01 -0400 (EDT)
Received: by mail-qv1-f44.google.com with SMTP id i9so6272949qvo.3
        for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 08:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=+YWSEy5hhZlTL9SKi4GdGTXhOiNOH7dJeDpMT7GWD0Y=;
        b=ikfDWFFuI2zq/1Zc8qRkW0CHHuAwhK07qucnoAHAH71OaxWZNk4deBhmhKnUTJfgR7
         YyBGZ/yOSvrsCNNam92fBIkJVM50ZcDTy2siYqkfz10SAL8IW0glBeTWqqmgTtKQ8aNv
         uUs6SJi4s0g7RT9bYMimh0MGdFjXvszyZqfgVvGmazw2ur2JzuQqCkNkVrxm0pzAAxzW
         5vpfXzju8h9LgEtUA4e1jFQKYx7iyieVs0bx09exbnm0r0rjb3ZMeLCpYM0ajzZ5wLVp
         Y6QM5X4LoW8WBqXSJOfv3KEB8gNO2bnuHxFQxTvypyZ7T65DbfcF346tQe3jfd2/zwSK
         Ti/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=+YWSEy5hhZlTL9SKi4GdGTXhOiNOH7dJeDpMT7GWD0Y=;
        b=l3F7tnLvaQOJ9wo79dDxggFWH+p0da9GZC7J945IU8C1e2E8z4/Rp4PZ503gKohGyX
         S5TOOVwYs/2GkX8fWj92ObWZLxFKM+BkxAZHLa2sQ7IuNNNeu5IHZTfpzn5MEqVINROS
         PusZV3Q35aTuO6uKm2yr/x85mYkauZJ1PqWMD0iDTpEU5OIT4fKDyEA9iM+nMM9moo8w
         88TjrgtrFCrRg03mtdGdD4Ar93eB5nQNiywotx5dWyNrk7q6jNgbJ0X2XWPfLf8K2msf
         4VgdNSbLisrHVddyX/ziwc0Wf3rcGYP+JiiYjxzytDE7LI2xlQ2O8alAaon7yE+Geem9
         oTiA==
X-Gm-Message-State: AOAM531cWnrZB+jC+IA7XwQRJho0119cyBtsiJ6C/MAN6BXT40jPywEZ
	jXvu7NBSSNe2pDUos6dzAIwqKFh5BDE=
X-Google-Smtp-Source: ABdhPJwQYsZYbMHnWKcXtp5BhdEm+4TbId6sjc09XwJjRz+vlkYvRZRvd45UhDmhpFJJQ+zRVjWZiw==
X-Received: by 2002:ad4:408c:: with SMTP id l12mr10608278qvp.58.1618241700394;
        Mon, 12 Apr 2021 08:35:00 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id o26sm8111089qko.83.2021.04.12.08.34.59
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 08:34:59 -0700 (PDT)
Message-ID: <607468A2.10007@gmail.com>
Date: Mon, 12 Apr 2021 11:34:58 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <22ad92d2d65441459dbe459751afc1de@boeing.com> <CALNMZ8UP0zYFyOmLa9g_r_eOfAjs8hVKSuYUoBuGmeWBZwj7rg@mail.gmail.com> <0283780d4734431b8ea74e6b03de304a@boeing.com> <CALNMZ8WDGoccHW+nHxbryn3t2=O9Rdp=ZBzMBVm2+ibxdnUd=g@mail.gmail.com>
In-Reply-To: <CALNMZ8WDGoccHW+nHxbryn3t2=O9Rdp=ZBzMBVm2+ibxdnUd=g@mail.gmail.com>
Message-ID-Hash: PDTZMR4D7L2ZTJRQSYPP6DVRGTLXQKN3
X-Message-ID-Hash: PDTZMR4D7L2ZTJRQSYPP6DVRGTLXQKN3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: Problem with interfacing Raspberry Pi 4 to USRP B210 with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PDTZMR4D7L2ZTJRQSYPP6DVRGTLXQKN3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0910521863151925539=="

This is a multi-part message in MIME format.
--===============0910521863151925539==
Content-Type: multipart/alternative;
 boundary="------------010409030502000704040906"

This is a multi-part message in MIME format.
--------------010409030502000704040906
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/11/2021 09:16 PM, Brendan Horsfield wrote:
> Ken,
>
> Are you using a USRP B210, or something different?  If I try to record=20
> one second's worth of samples on my Raspberry Pi / B210 combo, I can=20
> barely achieve 8 Msps on one channel. Changing the over-the-wire=20
> parameter from sc16 to sc8 allows me to achieve 15 Msps, but that's=20
> about it.
>
> I can think of a few possible explanations:
>
>   * I am using the Python API, while you are using the C++ API
>     (shouldn't make a big difference according to the Ettus Knowledge
>     Base, but still...)
>
Even when you're using a lot of underlying libraries written in C++ from=20
Python, you still have to pay the Python-is-an-interpreter and
   data-marshalling costs of Python.  If all you're doing is wanting to=20
record a bit of data, you might consider one of the
   "canned" example applications like "rx_samples_to_file".

If you want to proceed with a more full-blown Python app development,=20
you cannot get around the fact that is doesn't do well for
   sustained processing of high-speed sample streams.  Granted, science=20
and engineering have long-used Python for fairly-intense
   data-analysis tasks, but NOT IN REAL TIME at HIGH SAMPLE RATES.

I completely understand the allure of using Python--I moved 99% of my=20
dev "life" to Python from C many years ago and I haven't looked
   back.  But for some tasks, it's not the answer.
>
>   * You are using different transport parameters to me
>     (e.g. recv_frame_size, num_recv_frames)
>   * Your Linux buffer size settings are different to mine
>
> Note that if I reduce my recording time to 1 - 2 milliseconds (approx=20
> 80,000 samples), I can achieve 50 Msps with almost zero dropped=20
> samples.  This is more than enough for my application, but it would=20
> still be nice to know why I am not seeing the same performance as=20
> other users!  :)
>
> Cheers,
> Brendan.
>
>
> On Mon, Apr 12, 2021 at 10:17 AM Clark (US), Kenneth C=20
> <kenneth.c.clark2@boeing.com <mailto:kenneth.c.clark2@boeing.com>> wrot=
e:
>
>     Brendan,
>
>     Most of my work has been done at 15 Msamp/sec, my observation at
>     higher rates was not based on a lot of testing.  I was just happy
>     it worked at all above 20 Msamp/sec (aka it was really using USB-3)=
.
>
>     Running some quick tests here, for one second long recordings, 40
>     Msamp/sec always drops something.  35 Msamp/sec mostly drops
>     something.  30 Msamp/sec mostly works, but does drop something a
>     noticeable number of times.
>
>     Playing with the recording duration, things are better with
>     shorter durations.  Which I guess if each samples has a 0.00001%
>     of getting dropped, then the longer the recording, the greater the
>     chance for something getting dropped.  And I suppose there is some
>     operating system file flush threshold that also kicks in?
>
>     I was probably a little optimistic in my performance report.=20
>     Again, I was just happy it worked at all at USB-3 rates.
>
>     I think there is also an option to record as 12-bit values, which
>     as you approach the rates of the A-to-D (which I think is in the
>     12-bit range?) you are not really giving up anything, as there is
>     not much DDC =E2=80=98averaging=E2=80=99 to give you more bits of r=
esolution.  I
>     have not looked at that (12 bit wire values), and I might be
>     making that up.  I do see a =E2=80=9Csc8=E2=80=9D wirefmt option fo=
r the
>     rx_samples_to_file, which runs at higher rates without overflow.
>
>     Ken
>
>     *From:*Brendan Horsfield [mailto:brendan.horsfield@vectalabs.com
>     <mailto:brendan.horsfield@vectalabs.com>]
>     *Sent:* Sunday, April 11, 2021 23:16
>     *To:* Clark (US), Kenneth C <kenneth.c.clark2@boeing.com
>     <mailto:kenneth.c.clark2@boeing.com>>
>     *Cc:* usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com=
>
>     *Subject:* [EXTERNAL] Re: Problem with interfacing Raspberry Pi 4
>     to USRP B210 with Python API
>
>
>     =09
>
>     EXT email: be mindful of links/attachments.
>
>
>      =20
>
>     Hi Ken,
>
>     When you say "I am able to reliably record above 20 Msps with the
>     =E2=80=98wire format=E2=80=99 at 16-bit complex I&Q", do you mean t=
hat you can do
>     this indefinitely (or at least, up to the size of your RAM disk)?=20
>     Or is there a limit to how much data you can capture before you
>     get an overrun?
>
>     I find I can reliably capture around 1MB of data at 50 Msps on one
>     channel, or 25 Msps on two channels.  However, if I try to capture
>     more than 1MB of data in one go, I get a stream of error messages.
>
>     Brendan.
>
>     On Tue, Apr 6, 2021 at 12:40 AM Clark (US), Kenneth C
>     <kenneth.c.clark2@boeing.com <mailto:kenneth.c.clark2@boeing.com>>
>     wrote:
>
>         Brendan,
>
>         I am just using the =E2=80=98examples=E2=80=99 C/C++ builds.  I=
 have not used
>         the python modules.
>
>         I would think editing the CMake file would remove the need for
>         the =E2=80=93D flag.
>
>         I have had very good luck running a B205 USB-3 on a
>         RPi-4-8GB.  Only a couple of dependencies to install, which
>         were documented on the Ettus UHD website.
>
>         I did create a RAM-Drive, since the 8 GByte RAM has room for
>         that.  And I am able to reliably record above 20 Msps with the
>         =E2=80=98wire format=E2=80=99 at 16-bit complex I&Q.  (No real =
reason to do
>         32-float, since the native samples are 16-bit I&Q in the FPGA
>         on the B205, right?)
>
>         I use the =E2=80=98host examples=E2=80=99 in the latest 4.x ver=
sion of UHD.=20
>         And they are pretty easy to modify.  I have adapted for things
>         like using the 1-PPS, and doing times receive and transmit.
>
>         Ken
>
>         *From:*Brendan Horsfield
>         [mailto:brendan.horsfield@vectalabs.com
>         <mailto:brendan.horsfield@vectalabs.com>]
>         *Sent:* Sunday, April 4, 2021 01:35
>         *To:* Clark (US), Kenneth C <kenneth.c.clark2@boeing.com
>         <mailto:kenneth.c.clark2@boeing.com>>
>         *Cc:* usrp-users@lists.ettus.com
>         <mailto:usrp-users@lists.ettus.com>; patchvonbraun@gmail.com
>         <mailto:patchvonbraun@gmail.com>
>         *Subject:* [EXTERNAL] Re: [USRP-users] Re: Problem with
>         interfacing Raspberry Pi 4 to USRP B210 with Python API
>
>
>         =09
>
>         EXT email: be mindful of links/attachments.
>
>
>          =20
>
>         Thanks Ken.  As you suggested, I added
>         -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic" to the CMake call.
>
>         The good news is that the UHD build & installation process
>         completed successfully.
>
>         The bad news is that when I try to import the uhd module in
>         Python3, I get the following error:
>
>         pi@raspberrypi:~ $ python3
>         Python 3.7.3 (default, Jan 22 2021, 20:04:44)
>         [GCC 8.3.0] on linux
>         Type "help", "copyright", "credits" or "license" for more
>         information.
>         >>> import uhd
>         Traceback (most recent call last):
>           File "<stdin>", line 1, in <module>
>           File "/usr/local/lib/python3/dist-packages/uhd/__init__.py",
>         line 10, in <module>
>             from . import types
>           File "/usr/local/lib/python3/dist-packages/uhd/types.py",
>         line 10, in <module>
>             from . import libpyuhd as lib
>         ImportError: /usr/local/lib/libuhd.so.4.0.0: undefined symbol:
>         __atomic_fetch_add_8
>         >>>
>
>         Did you encounter this problem too?
>
>         I guess the next step is to hack the "CMakeLists.txt" files as
>         per the link you sent me.  Just to clarify one point first:=20
>         If I modify the CMakeLists.txt files, do I still need to
>         include -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic" in the CMake call=
?
>
>         Thanks,
>
>         Brendan.
>
>         On Sat, Apr 3, 2021 at 10:29 PM Clark (US), Kenneth C
>         <kenneth.c.clark2@boeing.com
>         <mailto:kenneth.c.clark2@boeing.com>> wrote:
>
>
>             I had the same problem build UHD on RPi4
>
>             Answer here:
>             https://gitlab.kitware.com/cmake/cmake/-/issues/21174
>
>             Add to CMake call:
>             -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic"
>
>             Regards,
>
>             Ken
>
>
>             -----Original Message-----
>             From: usrp-users-request@lists.ettus.com
>             <mailto:usrp-users-request@lists.ettus.com>
>             [mailto:usrp-users-request@lists.ettus.com
>             <mailto:usrp-users-request@lists.ettus.com>]
>             Sent: Saturday, April 3, 2021 11:13
>             To: usrp-users@lists.ettus.com
>             <mailto:usrp-users@lists.ettus.com>
>             Subject: [EXTERNAL] USRP-users Digest, Vol 128, Issue 7
>
>             EXT email: be mindful of links/attachments.
>
>
>
>             Send USRP-users mailing list submissions to
>             usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.c=
om>
>
>             To subscribe or unsubscribe via email, send a message with
>             subject or body 'help' to
>             usrp-users-request@lists.ettus.com
>             <mailto:usrp-users-request@lists.ettus.com>
>
>             You can reach the person managing the list at
>             usrp-users-owner@lists.ettus.com
>             <mailto:usrp-users-owner@lists.ettus.com>
>
>             When replying, please edit your Subject line so it is more
>             specific than "Re: Contents of USRP-users digest..."
>
>             Today's Topics:
>
>                1. Re: Problem with interfacing Raspberry Pi 4 to USRP
>             B210 with Python API
>                   (Brendan Horsfield)
>                2. Re: Intermittent problem with GPS synchronization
>             for multiple E310 units
>                   (Ofer Saferman)
>
>
>             -----------------------------------------------------------=
-----------
>
>             Message: 1
>             Date: Sat, 3 Apr 2021 21:07:59 +1000
>             From: Brendan Horsfield <brendan.horsfield@vectalabs.com
>             <mailto:brendan.horsfield@vectalabs.com>>
>             Subject: [USRP-users] Re: Problem with interfacing
>             Raspberry Pi 4 to
>                     USRP B210 with Python API
>             To: Marcus D Leech <patchvonbraun@gmail.com
>             <mailto:patchvonbraun@gmail.com>>
>             Cc: USRP-users@lists.ettus.com
>             <mailto:USRP-users@lists.ettus.com>
>             Message-ID:
>                   =20
>             <CALNMZ8Wg3gQnkAomrhhCBPAGtTfUbm3fkMzJhCWhUAgHrLuzyA@mail.g=
mail.com
>             <mailto:CALNMZ8Wg3gQnkAomrhhCBPAGtTfUbm3fkMzJhCWhUAgHrLuzyA=
@mail.gmail.com>>
>             Content-Type: multipart/alternative;
>             boundary=3D"000000000000dc3aeb05bf0f7ace"
>
>             Hi Marcus,
>
>             I have tried your suggestion, but unfortunately without
>             success:
>
>             Per your advice, I have edited the file "cmake.lwt" in the
>             folder
>             /usr/local/lib/python3.7/dist-packages/pybombs/templates
>             to include the option "-DENABLE_PYTHON_API=3DON" in the
>             calls to cmake.  The modified commands are as follows:
>
>             configure: cmake .. -DENABLE_PYTHON_API=3DON
>             -DCMAKE_BUILD_TYPE=3D$cmakebuildtype
>             -DCMAKE_INSTALL_PREFIX=3D$prefix $config_opt -Wno-dev
>             configure_static: cmake .. -DENABLE_PYTHON_API=3DON
>             -DCMAKE_BUILD_TYPE=3D$cmakebuildtype
>             -DCMAKE_INSTALL_PREFIX=3D$prefix -DENABLE_STATIC_LIBS=3DTru=
e
>             $config_opt
>
>             I removed the previous UHD installation and re-ran
>             "pybombs install uhd", but the end result was much the
>             same:  the installation process completed without errors,
>             but the Python API was not included in the installation.
>
>             QUESTION 1:  Can you tell me if PyBOMBS actually builds
>             the UHD driver from source, or does it simply copy a
>             pre-compiled binary onto my system?  The reason I ask is
>             that PyBOMBS is quite quick to install the UHD driver,
>             whereas the non-PyBOMBS approach is VERY slow (i.e. around
>             60 minutes to get to 53%, at which point it crashes out
>             with an error).
>
>             QUESTION 2:  This whole process feels more difficult than
>             it should be.
>             Why isn't the Python API installed with the UHD driver by
>             default?  Would I be better off using another language
>             (like C++) to control the USRP?
>
>             Thanks,
>             Brendan.
>
>
>
>             On Fri, Apr 2, 2021 at 11:25 PM Marcus D Leech
>             <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>>
>             wrote:
>
>             > Perhaps look at the PyBombs recipe for your
>             platform=E2=80=94there=E2=80=99s probably
>             > a compiler flag that needs to be set that you=E2=80=99re
>             missing, but I don=E2=80=99t
>             > know what that is.
>             >
>             > Also, in general, you don=E2=80=99t need to become root t=
o
>             compile and build
>             > code=E2=80=94only needed during the =E2=80=9Cmake install=
=E2=80=9D
>             >
>             >
>             >
>             > Sent from my iPhone
>             >
>             > On Apr 2, 2021, at 7:19 AM, Brendan Horsfield <
>             > brendan.horsfield@vectalabs.com
>             <mailto:brendan.horsfield@vectalabs.com>> wrote:
>             >
>             > =EF=BB=BF
>             > Hi Folks,
>             >
>             > I would like to interface my Raspberry Pi 4 to a USRP
>             B210 via the
>             > Python API.  This requires the UHD driver to be built
>             from source.
>             > Unfortunately, whenever I try this I encounter some
>             errors that stop
>             > the build process in its tracks.
>             >
>             > Details of the error are as follows:
>             >
>             > [ 53%] Linking CXX executable test_clock_synch
>             > /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference =
to
>             > `__atomic_compare_exchange_8'
>             > /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference =
to
>             > `__atomic_load_8'
>             > /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference =
to
>             > `__atomic_store_8'
>             > /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference =
to
>             > `__atomic_fetch_add_8'
>             > collect2: error: ld returned 1 exit status
>             > make[2]: ***
>             [examples/CMakeFiles/test_clock_synch.dir/build.make:95:
>             > examples/test_clock_synch] Error 1
>             > make[1]: *** [CMakeFiles/Makefile2:1039:
>             > examples/CMakeFiles/test_clock_synch.dir/all] Error 2
>             > make: *** [Makefile:163: all] Error 2
>             >
>             > The process I have been using is as follows:
>             >
>             > STEP 1:  INSTALL DEPENDENCIES
>             > sudo apt-get install libboost-all-dev libusb-1.0-0-dev
>             doxygen
>             > python3-docutils python3-mako python3-numpy python3-reque=
sts
>             > python3-ruamel.yaml python3-setuptools cmake build-essent=
ial
>             >
>             > STEP 2:  BUILD UHD DRIVER FROM SOURCE
>             > cd /home/pi
>             > mkdir workarea-uhd
>             > cd workarea-uhd
>             > git clone https://github.com/EttusResearch/uhd
>             > cd uhd
>             > git checkout v4.0.0.0
>             > cd host
>             > mkdir build
>             > cd build
>             > sudo cmake -DNEON_SIMD_ENABLE=3DOFF -DENABLE_PYTHON_API=3D=
ON
>             ../ sudo make
>             > --->  (ERRORS OCCUR DURING "MAKE" PROCESS)
>             >
>             > My system configuration is as follows:
>             > Hardware: Raspberry Pi 4 Model B Rev 1.4
>             > OS: Raspbian GNU/Linux 10 (buster) (32-bit, armv7l)
>             Ettus USRP B210
>             >
>             > Does anyone know what the problem could be, and how I
>             can resolve it?
>             >
>             > One final note:  Using PyBOMBS, I was able to
>             successfully build &
>             > install the UHD driver and connect to the USRP.=20
>             Unfortunately the
>             > PyBOMBS build does not include the Python API, which is
>             what I really
>             > want.  Is there a different version of the PyBOMBS build
>             that includes the Python API?
>             >
>             > Thanks & Regards,
>             > Brendan.
>             >
>             >
>             >
>             > _______________________________________________
>             > USRP-users mailing list -- usrp-users@lists.ettus.com
>             <mailto:usrp-users@lists.ettus.com> To unsubscribe
>             > send an email to usrp-users-leave@lists.ettus.com
>             <mailto:usrp-users-leave@lists.ettus.com>
>             >
>             >
>             -------------- next part --------------
>             A message part incompatible with plain text digests has
>             been removed ...
>             Name: not available
>             Type: text/html
>             Size: 5624 bytes
>             Desc: not available
>
>             ------------------------------
>
>             Message: 2
>             Date: Sat, 3 Apr 2021 14:12:35 +0300
>             From: Ofer Saferman <ofer@navigicom.com
>             <mailto:ofer@navigicom.com>>
>             Subject: [USRP-users] Re: Intermittent problem with GPS
>                     synchronization for multiple E310 units
>             To: usrp-users <usrp-users@lists.ettus.com
>             <mailto:usrp-users@lists.ettus.com>>
>             Message-ID:
>             <CACDReSwXUvJ8_LimfVOn4StHQEGhNntY-nCSv0aYdBsX=3DAtV_w@mail=
.gmail.com
>             <mailto:AtV_w@mail.gmail.com>>
>             Content-Type: multipart/alternative;
>             boundary=3D"000000000000566d1705bf0f8b0e"
>
>             Hello Philip,
>
>             Thank you for the explanation.
>             What would you suggest?
>             opkg exists. There must be a way to install ntpd without
>             needing to rebuild the image.
>             Maybe use pybombs or other methods?
>             git also works. Maybe download a different package manager
>             and compile it?
>
>             It seems that Marcus pointed out a great benefit of E310
>             units running gpsd, but without ntpd system clock can't
>             sync and it seems that this feature can vastly simplify
>             gps synchronization among E310 units.
>
>             I would be very grateful if anybody can suggest a solution
>             to install ntpd on E310 units running UHD 3.15 SD-card imag=
e.
>
>             Regards,
>             Ofer Saferman.
>
>             On Sat, Apr 3, 2021 at 10:30 AM
>             <usrp-users-request@lists.ettus.com
>             <mailto:usrp-users-request@lists.ettus.com>> wrote:
>
>             > Send USRP-users mailing list submissions to
>             > usrp-users@lists.ettus.com
>             <mailto:usrp-users@lists.ettus.com>
>             >
>             > To subscribe or unsubscribe via email, send a message
>             with subject or
>             > body 'help' to
>             > usrp-users-request@lists.ettus.com
>             <mailto:usrp-users-request@lists.ettus.com>
>             >
>             > You can reach the person managing the list at
>             > usrp-users-owner@lists.ettus.com
>             <mailto:usrp-users-owner@lists.ettus.com>
>             >
>             > When replying, please edit your Subject line so it is
>             more specific
>             > than "Re: Contents of USRP-users digest..."Today's Topics=
:
>             >
>             >    1. Re: Intermittent problem with GPS synchronization
>             for multiple
>             > E310 units
>             >       (Philip Balister)
>             >
>             >
>             >
>             > ---------- Forwarded message ----------
>             > From: Philip Balister <philip@balister.org
>             <mailto:philip@balister.org>>
>             > To: Ofer Saferman <ofer@navigicom.com
>             <mailto:ofer@navigicom.com>>, "Marcus D. Leech" <
>             > patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>>
>             > Cc: Rob Kossler <rkossler@nd.edu
>             <mailto:rkossler@nd.edu>>, usrp-users
>             > <usrp-users@lists.ettus.com
>             <mailto:usrp-users@lists.ettus.com>>
>             > Bcc:
>             > Date: Fri, 2 Apr 2021 10:09:43 -0400
>             > Subject: [USRP-users] Re: Intermittent problem with GPS
>             > synchronization for multiple E310 units On 4/2/21 7:17
>             AM, Ofer
>             > Saferman wrote:
>             > > Marcus Hi,
>             > >
>             > > Your suggestion below to install ntpd does not work.
>             > > The image does not include it. Although the old thread
>             says
>             > > otherwise I think it refers to an older UHD release
>             that did include ntpd.
>             > > Any accurate instructions on how to install it anyway?
>             > > Maybe opkg should be configured to access another
>             repository?
>             > > Doing: opkg list | grep ntpd, does not yield anything
>             useful so it
>             > > is not just a question of typing it correctly.
>             >
>             > As far as I know, no image has been setup to use package
>             feeds.
>             >
>             > I know ntpd worked in release4 images, pretty sure the
>             newer image was
>             > redone and things have been left out that used to be ther=
e.
>             >
>             > Philip
>             >
>             > >
>             > > Regards,
>             > > Ofer Saferman
>             > >
>             > > On Thu, Apr 1, 2021 at 4:34 PM Marcus D. Leech
>             > > <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.co=
m>>
>             > > wrote:
>             > >
>             > >> On 04/01/2021 06:00 AM, Ofer Saferman wrote:
>             > >>
>             > >> Hello Marcus,
>             > >>
>             > >> I am working on E310 with the latest UHD-3.15 SD card
>             image.
>             > >> It seems not to include ntpd that is required to
>             synchronize system
>             > >> time to GPS time.
>             > >> Any idea how to install it on the E310?
>             > >>
>             > >> Regards,
>             > >> Ofer Saferman
>             > >>
>             > >> sudo opkg install ntpd
>             > >>
>             > >> should work, but it has been a while since I
>             installed any packages
>             > >> on
>             > my
>             > >> E310.
>             > >>
>             > >> The E310 is based on OpenEmbedded Linux, so all the
>             info about
>             > installing
>             > >> and managing packages on OpenEmbedded apply.
>             > >>
>             > >>
>             > >>
>             > >> On Wed, Mar 31, 2021 at 11:40 PM Marcus D Leech <
>             > patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>>
>             > >> wrote:
>             > >>
>             > >>> Just use gettimeofday() or any of the myriad subtle
>             variants
>             > >>> available
>             > in
>             > >>> boost to get you the Linux system time, and use that
>             in a call to
>             > >>> set_time_next_pps().
>             > >>>
>             > >>> The fact that all your E310s will be running GPSD
>             means they=E2=80=99ll be
>             > >>> adjusting system time appropriately and they=E2=80=99=
ll all
>             agree on what
>             > >>> time
>             > it
>             > >>> is, depending on the level of precision you need.
>             > >>>
>             > >>> Sent from my iPhone
>             > >>>
>             > >>> On Mar 31, 2021, at 3:50 PM, Ofer Saferman
>             <ofer@navigicom.com <mailto:ofer@navigicom.com>> wrote:
>             > >>>
>             > >>> =EF=BB=BF
>             > >>> Thank you Rob. Your suggestions are always helpful.
>             I will look
>             > >>> into using gps_gpgga.
>             > >>> Thank you Marcus. I am already adding one, per other
>             examples
>             > >>> posted
>             > here
>             > >>> and sync_to_gps example. Can you please comment how
>             I can benefit
>             > >>> from
>             > the
>             > >>> fact that E310 units use gpsd in Linux?
>             > >>>
>             > >>> Regards,
>             > >>> Ofer Saferman
>             > >>>
>             > >>> On Wed, Mar 31, 2021 at 10:13 PM Marcus D Leech <
>             > patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>>
>             > >>> wrote:
>             > >>>
>             > >>>>
>             > >>>>
>             > >>>> Sent from my iPhone
>             > >>>>
>             > >>>> On Mar 31, 2021, at 2:22 PM, Rob Kossler
>             <rkossler@nd.edu <mailto:rkossler@nd.edu>> wrote:
>             > >>>>
>             > >>>> =EF=BB=BF
>             > >>>> Hi Ofer,
>             > >>>> Take a look at the Ettus source code gps_ctrl.cpp.  =
In
>             > >>>> particular,
>             > look
>             > >>>> at the get_sentence() usage which in the case of
>             "gps_time" waits
>             > >>>> for
>             > the
>             > >>>> next occurrence (wait=3Dtrue),  but for the others
>             does not wait.
>             > >>>> But
>             > this
>             > >>>> doesn't fully explain the behavior you are seeing.=20
>             If you do the
>             > following:
>             > >>>> 1) wait for PPS time to change
>             > >>>> 2) read the "gps_time" sensor
>             > >>>> 3) set_time_next_pps (use the value you just read)
>             > >>>>
>             > >>>> Add 1 to the time you just read before calling
>             set_time_next_pps.
>             > >>>>
>             > >>>>
>             > >>>> It should still work because the "gps_time" command
>             should just
>             > >>>> wait until the next PPS.  I guess it depends upon ho=
w
>             > >>>> "synchronized" are
>             > the
>             > >>>> received NMEA string with the PPS edge.  Step 1
>             above waits for
>             > >>>> the
>             > PPS
>             > >>>> edge, but maybe the NMEA string arrives 0.1 secs
>             before or after
>             > that.  I
>             > >>>> don't really know. Perhaps you need to switch to
>             using "gps_gpgga"
>             > such
>             > >>>> that there is no additional wait added and also
>             perhaps you
>             > >>>> should
>             > add step
>             > >>>> 1B which would be just a fixed delay of perhaps 0.4
>             secs so that
>             > >>>> you
>             > will
>             > >>>> read the NMEA string in between the PPS edges.
>             > >>>> Rob
>             > >>>>
>             > >>>> On Wed, Mar 31, 2021 at 1:22 PM Rob Kossler
>             <rkossler@nd.edu <mailto:rkossler@nd.edu>> wrote:
>             > >>>>
>             > >>>>> Hi Ofer,
>             > >>>>> I don't know why the "gps_time" sensor takes long
>             to read. But,
>             > >>>>> can
>             > you
>             > >>>>> try the other sensors (perhaps there is a
>             "gps_gpgga" sensor?)?
>             > >>>>> The
>             > time
>             > >>>>> is embedded in these as well.
>             > >>>>> Rob
>             > >>>>>
>             > >>>>>
>             > >>>>> On Wed, Mar 31, 2021 at 12:21 PM Ofer Saferman
>             > >>>>> <ofer@navigicom.com <mailto:ofer@navigicom.com>>
>             > >>>>> wrote:
>             > >>>>>
>             > >>>>>> Marcus Hi,
>             > >>>>>>
>             > >>>>>> If the gps_time "sensor" returns a value only
>             once per second
>             > >>>>>> how
>             > come
>             > >>>>>> I manage to read it sometimes in less than 1 secon=
d?
>             > >>>>>> In my code the situation is worse than the simple
>             example
>             > >>>>>> below. It usually takes more than 1 sec. to read
>             it and
>             > >>>>>> sometimes even 1.7 or
>             > 1.8
>             > >>>>>> seconds. I don't understand how the size or
>             complexity of the
>             > >>>>>> code
>             > affects
>             > >>>>>> the time it takes to read gps_time.
>             > >>>>>>
>             > >>>>>> How to treat your comment about the use of GPSD
>             and good
>             > >>>>>> synchronization as it relates to code?
>             > >>>>>> Should I not change the time source in code and
>             go through the
>             > >>>>>> whole process of synchronization using gps_time?
>             > >>>>>> Can I "assume" the systems are synced just by the
>             effect they
>             > >>>>>> were connected enough time to a GPS antenna? and
>             then just
>             > >>>>>> access their
>             > time -
>             > >>>>>> radio_ctrl->get_time_last_pps()?
>             > >>>>>> How to use this information programmatically?
>             > >>>>>>
>             > >>>>>> Regards,
>             > >>>>>> Ofer Saferman
>             > >>>>>>
>             > >>>>>>
>             > >>>>>> ---------- Forwarded message ----------
>             > >>>>>>> From: "Marcus D. Leech" <patchvonbraun@gmail.com
>             <mailto:patchvonbraun@gmail.com>>
>             > >>>>>>> To: usrp-users@lists.ettus.com
>             <mailto:usrp-users@lists.ettus.com>
>             > >>>>>>> Cc:
>             > >>>>>>> Bcc:
>             > >>>>>>> Date: Wed, 31 Mar 2021 09:19:20 -0400
>             > >>>>>>> Subject: [USRP-users] Re: Intermittent problem
>             with GPS
>             > >>>>>>> synchronization for multiple E310 units On
>             03/31/2021 06:49
>             > >>>>>>> AM, Ofer Saferman wrote:
>             > >>>>>>>> Hello,
>             > >>>>>>>>
>             > >>>>>>>> I have a system that uses 4 USRP E310 units.
>             > >>>>>>>> Each unit is connected to a GPS antenna.
>             > >>>>>>>> Time source is set to gpsdo.
>             > >>>>>>>>
>             > >>>>>>>> I run the same software remotely on all 4 units
>             from a PC.
>             > Software
>             > >>>>>>>> runs on the units themselves.
>             > >>>>>>>> I print out messages to show if the reference
>             is locked and
>             > >>>>>>>> the
>             > GPS
>             > >>>>>>> is
>             > >>>>>>>> locked and also what is the GPS time that each
>             unit was
>             > >>>>>>> synchronized to.
>             > >>>>>>>> In some cases the units synchronize to the same
>             GPS time and
>             > >>>>>>>> in
>             > >>>>>>> other
>             > >>>>>>>> cases there is 1 second difference between GPS
>             time of
>             > >>>>>>>> different
>             > >>>>>>> units
>             > >>>>>>>> thus causing the units to be unsynchronized.
>             > >>>>>>>>
>             > >>>>>>>> I was wondering how this was possible.
>             > >>>>>>>> The synchronization process (documented by
>             others in the past
>             > >>>>>>>> on
>             > >>>>>>> the
>             > >>>>>>>> mailing list) is:
>             > >>>>>>>> * Wait for ref and GPS lock
>             > >>>>>>>> * Wait for a pps edge (get_time_last_pps)
>             > >>>>>>>> * Read gps_time value
>             > >>>>>>>> * Sync system clock to GPS clock on next PPS edg=
e
>             > >>>>>>> (set_time_next_pps +
>             > >>>>>>>> 1.0 sec)
>             > >>>>>>>>
>             > >>>>>>>> Something similar is also implemented in the
>             sync_to_gps example.
>             > >>>>>>>>
>             > >>>>>>>> In order to debug the problem I decided to time
>             the reading
>             > >>>>>>>> of the gps_time sensor to see if there is a
>             clue why
>             > >>>>>>>> different units miss
>             > >>>>>>> the
>             > >>>>>>>> PPS edge and lock to a time of the next second.
>             > >>>>>>>>
>             > >>>>>>>> I was very surprised to find out that it takes
>             between 0.9 to
>             > >>>>>>>> 1.2 seconds to read the gps_time sensor.
>             > >>>>>>>> This explains exactly why it is difficult to
>             synchronize
>             > >>>>>>>> multiple units to the same time instance
>             because if one unit
>             > >>>>>>>> takes 0.9
>             > >>>>>>> seconds
>             > >>>>>>>> to read the sensor and the other unit takes 1.2
>             seconds to
>             > >>>>>>>> read
>             > the
>             > >>>>>>>> sensor then each unit will lock on a different
>             GPS time 1
>             > >>>>>>>> second
>             > >>>>>>> apart.
>             > >>>>>>>>
>             > >>>>>>>> Here is a short software I wrote to time the
>             gps_time sensor
>             > >>>>>>> reading:
>             > >>>>>>>>
>             ---------------------------------------------------------
>             > >>>>>>>> #include <uhd/utils/safe_main.hpp> #include
>             <uhd/device3.hpp>
>             > >>>>>>>> //#include <uhd/usrp/multi_usrp.hpp> #include
>             > >>>>>>>> <uhd/types/sensors.hpp> #include
>             <boost/program_options.hpp>
>             > >>>>>>>> #include <boost/format.hpp> #include <chrono>
>             #include
>             > >>>>>>>> <iostream>
>             > >>>>>>>>
>             > >>>>>>>> namespace po =3D boost::program_options;
>             > >>>>>>>>
>             > >>>>>>>> int UHD_SAFE_MAIN(int argc, char *argv[]){
>             > >>>>>>>>
>             > >>>>>>>> std::string args;
>             > >>>>>>>>
>             > >>>>>>>>  po::options_description desc("Allowed options")=
;
>             > >>>>>>>>  desc.add_options()
>             > >>>>>>>>    ("help", "help message") ("args",
>             > >>>>>>>>
>             po::value<std::string>(&args)->default_value(""), "device
>             > >>>>>>>> address args")
>             > >>>>>>>>  ;
>             > >>>>>>>>
>             > >>>>>>>>  po::variables_map vm;
>             > >>>>>>>>  po::store(po::parse_command_line(argc, argv,
>             desc), vm);
>             > >>>>>>>>  po::notify(vm);
>             > >>>>>>>>
>             > >>>>>>>>  //print the help message
>             > >>>>>>>>  if (vm.count("help")){
>             > >>>>>>>>    std::cout << boost::format("Timinig of
>             gps_time: %s")
>             > >>>>>>>> %
>             > >>>>>>> desc
>             > >>>>>>>> << std::endl;
>             > >>>>>>>>    return ~0;
>             > >>>>>>>>  }
>             > >>>>>>>>
>             > >>>>>>>> uhd::device3::sptr usrp =3D uhd::device3::make(a=
rgs);
>             > >>>>>>>> //uhd::usrp::multi_usrp::sptr usrp =3D
>             > >>>>>>> uhd::usrp::multi_usrp::make(args);
>             > >>>>>>>>
>             > >>>>>>>> uhd::sensor_value_t gps_time =3D
>             > >>>>>>>>
>             > >>>>>>>
>             >
>             usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/s=
ensors/gps_
>             > usrp->time").get();
>             > >>>>>>>> //uhd::sensor_value_t gps_time =3D
>             > >>>>>>> usrp->get_mboard_sensor("gps_time", 0);
>             > >>>>>>>>
>             > >>>>>>>> std::chrono::steady_clock::time_point
>             start_time, end_time;
>             > >>>>>>>> std::chrono::duration<double> time_diff; //
>             Default unit for
>             > >>>>>>> duration
>             > >>>>>>>> is seconds.
>             > >>>>>>>>
>             > >>>>>>>> for(int ii=3D0 ; ii<20 ; ii++)
>             > >>>>>>>> {
>             > >>>>>>>> start_time =3D std::chrono::steady_clock::now();
>             gps_time =3D
>             > >>>>>>>>
>             > >>>>>>>
>             >
>             usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/s=
ensors/gps_
>             > usrp->time").get();
>             > >>>>>>>> //gps_time =3D
>             usrp->get_mboard_sensor("gps_time", 0); end_time
>             > >>>>>>>> =3D std::chrono::steady_clock::now(); time_diff =
=3D
>             end_time -
>             > >>>>>>>> start_time;
>             > >>>>>>>>
>             > >>>>>>>> std::cout << "gps_time[" <<
>             (boost::format("%02d") % ii) << "]: "
>             > >>>>>>> <<
>             > >>>>>>>> int64_t(gps_time.to_int()) << ". Time to read
>             \"gps_time\": "
>             > >>>>>>>> <<
>             > >>>>>>>> (boost::format("%0.9f") % time_diff.count()) <<
>             " seconds" <<
>             > >>>>>>> std::endl;
>             > >>>>>>>> }
>             > >>>>>>>>
>             > >>>>>>>>  return 0;
>             > >>>>>>>> }
>             > >>>>>>>>
>             > >>>>>>>
>             >
>             -----------------------------------------------------------=
-----------
>             > ----------
>             > >>>>>>>> Here are the results of one typical run:
>             > >>>>>>>> gps_time[00]: 1617183840. Time to read "gps_time=
":
>             > >>>>>>>> 0.884164380
>             > >>>>>>> seconds
>             > >>>>>>>> gps_time[01]: 1617183841. Time to read "gps_time=
":
>             > >>>>>>>> 0.877966469
>             > >>>>>>> seconds
>             > >>>>>>>> gps_time[02]: 1617183842. Time to read "gps_time=
":
>             > >>>>>>>> 1.170869661
>             > >>>>>>> seconds
>             > >>>>>>>> gps_time[03]: 1617183843. Time to read "gps_time=
":
>             > >>>>>>>> 0.882917987
>             > >>>>>>> seconds
>             > >>>>>>>> gps_time[04]: 1617183844. Time to read "gps_time=
":
>             > >>>>>>>> 1.172120154
>             > >>>>>>> seconds
>             > >>>>>>>> gps_time[05]: 1617183845. Time to read "gps_time=
":
>             > >>>>>>>> 0.879271985
>             > >>>>>>> seconds
>             > >>>>>>>> gps_time[06]: 1617183846. Time to read "gps_time=
":
>             > >>>>>>>> 0.878609099
>             > >>>>>>> seconds
>             > >>>>>>>> gps_time[07]: 1617183847. Time to read "gps_time=
":
>             > >>>>>>>> 1.115639282
>             > >>>>>>> seconds
>             > >>>>>>>> gps_time[08]: 1617183848. Time to read "gps_time=
":
>             > >>>>>>>> 1.125365551
>             > >>>>>>> seconds
>             > >>>>>>>> gps_time[09]: 1617183849. Time to read "gps_time=
":
>             > >>>>>>>> 0.843803231
>             > >>>>>>> seconds
>             > >>>>>>>> gps_time[10]: 1617183850. Time to read "gps_time=
":
>             > >>>>>>>> 1.125065740
>             > >>>>>>> seconds
>             > >>>>>>>> gps_time[11]: 1617183851. Time to read "gps_time=
":
>             > >>>>>>>> 0.847519817
>             > >>>>>>> seconds
>             > >>>>>>>> gps_time[12]: 1617183852. Time to read "gps_time=
":
>             > >>>>>>>> 1.121398945
>             > >>>>>>> seconds
>             > >>>>>>>> gps_time[13]: 1617183853. Time to read "gps_time=
":
>             > >>>>>>>> 0.844371533
>             > >>>>>>> seconds
>             > >>>>>>>> gps_time[14]: 1617183854. Time to read "gps_time=
":
>             > >>>>>>>> 1.124722726
>             > >>>>>>> seconds
>             > >>>>>>>> gps_time[15]: 1617183855. Time to read "gps_time=
":
>             > >>>>>>>> 0.845688380
>             > >>>>>>> seconds
>             > >>>>>>>> gps_time[16]: 1617183856. Time to read "gps_time=
":
>             > >>>>>>>> 1.129568096
>             > >>>>>>> seconds
>             > >>>>>>>> gps_time[17]: 1617183857. Time to read "gps_time=
":
>             > >>>>>>>> 0.882436229
>             > >>>>>>> seconds
>             > >>>>>>>> gps_time[18]: 1617183858. Time to read "gps_time=
":
>             > >>>>>>>> 1.168227593
>             > >>>>>>> seconds
>             > >>>>>>>> gps_time[19]: 1617183859. Time to read "gps_time=
":
>             > >>>>>>>> 0.881948247
>             > >>>>>>> seconds
>             > >>>>>>>>
>             > >>>>>>>
>             >
>             -----------------------------------------------------------=
-----------
>             > -------------
>             > >>>>>>>> In the code you can find commented out the
>             usual way to
>             > >>>>>>>> access the sensor using multi_usrp and
>             get_mboard_sensor. The
>             > >>>>>>>> results are
>             > >>>>>>> quite
>             > >>>>>>>> similar.
>             > >>>>>>>>
>             > >>>>>>>> I wonder if anybody encountered this issue
>             before or
>             > >>>>>>>> addressed it
>             > >>>>>>> in
>             > >>>>>>>> any way.
>             > >>>>>>>> I wonder why it takes so much time to get the
>             value of GPS
>             > >>>>>>>> time
>             > >>>>>>> when
>             > >>>>>>>> it is a simple parsing of an NMEA message
>             coming from the GPS
>             > >>>>>>> receiver.
>             > >>>>>>>>
>             > >>>>>>>> I am trying now various tricks to make the
>             software robust
>             > >>>>>>>> and
>             > >>>>>>> immune
>             > >>>>>>>> to this phenomenon. I can report my findings
>             further if I
>             > >>>>>>>> succeed
>             > >>>>>>> to
>             > >>>>>>>> find a workaround if there is any interest.
>             > >>>>>>>>
>             > >>>>>>>> Can anyone comment on this? Can this be
>             resolved so that the
>             > >>>>>>> reading
>             > >>>>>>>> of gps_time will be much faster?
>             > >>>>>>>> Is there another way to get GPS time faster
>             indirectly? Maybe
>             > >>>>>>>> from parsing NMEA messages ourselves?
>             > >>>>>>>>
>             > >>>>>>>> Regards,
>             > >>>>>>>> Ofer Saferman
>             > >>>>>>>>
>             > >>>>>>> This probably has to do with the way that
>             particular "sensor"
>             > >>>>>>> works--the
>             > >>>>>>> NMEA time value is only emitted once per second,
>             and the
>             > >>>>>>>    code for that sensor has some heuristic for
>             determining
>             > >>>>>>> "freshness"
>             > >>>>>>> of the value.
>             > >>>>>>>
>             > >>>>>>> I'll point out that on E310, the system is
>             configured to use
>             > >>>>>>> GPSD,
>             > so
>             > >>>>>>> that the Linux system time across several
>             systems that have
>             > >>>>>>> all
>             > been
>             > >>>>>>> "listening" to GPS for a while will all be
>             synchronized
>             > >>>>>>> quite
>             > well.
>             > >>>>>>>
>             > >>>>>>>
>             > >>>>>>>
>             > >>>>>>>
>             > >>>>>> --
>             > >>>>>> This message has been scanned for viruses and
>             dangerous content
>             > >>>>>> by *MailScanner* <http://www.mailscanner.info/>,
>             and is
>             > >>>>>> believed to be clean.
>             > _______________________________________________
>             > >>>>>> USRP-users mailing list --
>             usrp-users@lists.ettus.com
>             <mailto:usrp-users@lists.ettus.com> To
>             > >>>>>> unsubscribe send an email to
>             usrp-users-leave@lists.ettus.com
>             <mailto:usrp-users-leave@lists.ettus.com>
>             > >>>>>>
>             > >>>>> _______________________________________________
>             > >>>> USRP-users mailing list --
>             usrp-users@lists.ettus.com
>             <mailto:usrp-users@lists.ettus.com> To
>             > >>>> unsubscribe send an email to
>             usrp-users-leave@lists.ettus.com
>             <mailto:usrp-users-leave@lists.ettus.com>
>             > >>>>
>             > >>>>
>             > >>> --
>             > >>> This message has been scanned for viruses and
>             dangerous content by
>             > >>> *MailScanner* <http://www.mailscanner.info/>, and is
>             believed to
>             > >>> be clean.
>             > >>>
>             > >>>
>             > >> --
>             > >> This message has been scanned for viruses and
>             dangerous content by
>             > >> *MailScanner* <http://www.mailscanner.info/>, and
>             > is
>             > >> believed to be clean.
>             > >>
>             > >>
>             > >>
>             > >
>             > >
>             > > _______________________________________________
>             > > USRP-users mailing list -- usrp-users@lists.ettus.com
>             <mailto:usrp-users@lists.ettus.com> To unsubscribe
>             > > send an email to usrp-users-leave@lists.ettus.com
>             <mailto:usrp-users-leave@lists.ettus.com>
>             > > _______________________________________________
>             > USRP-users mailing list -- usrp-users@lists.ettus.com
>             <mailto:usrp-users@lists.ettus.com> To unsubscribe
>             > send an email to usrp-users-leave@lists.ettus.com
>             <mailto:usrp-users-leave@lists.ettus.com>
>             >
>
>             --
>             This message has been scanned for viruses and dangerous
>             content by MailScanner, and is believed to be clean.
>
>             -------------- next part --------------
>             A message part incompatible with plain text digests has
>             been removed ...
>             Name: not available
>             Type: text/html
>             Size: 27834 bytes
>             Desc: not available
>
>             ------------------------------
>
>             Subject: Digest Footer
>
>             _______________________________________________
>             USRP-users mailing list -- usrp-users@lists.ettus.com
>             <mailto:usrp-users@lists.ettus.com> To unsubscribe send an
>             email to usrp-users-leave@lists.ettus.com
>             <mailto:usrp-users-leave@lists.ettus.com>
>
>
>             ------------------------------
>
>             End of USRP-users Digest, Vol 128, Issue 7
>             ******************************************
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------010409030502000704040906
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3DUTF-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 04/11/2021 09:16 PM, Brendan
      Horsfield wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CALNMZ8WDGoccHW+nHxbryn3t2=3DO9Rdp=3DZBzMBVm2+ibxdnUd=3Dg@mai=
l.gmail.com"
      type=3D"cite">
      <div dir=3D"ltr">Ken,=C2=A0
        <div><br>
        </div>
        <div>Are you using a USRP B210, or something different?=C2=A0 If =
I
          try to record one second's=C2=A0worth of samples on my Raspberr=
y Pi
          / B210 combo, I can barely achieve=C2=A08 Msps on one channel.=C2=
=A0
          Changing the over-the-wire parameter from sc16 to sc8 allows
          me to achieve 15 Msps, but that's about it.
          <div><br>
          </div>
          <div>I can think of a few possible explanations:<br>
          </div>
          <div>
            <ul>
              <li>I am using the Python API, while you are using the C++
                API (shouldn't make a big difference according to the
                Ettus Knowledge Base, but still...)</li>
            </ul>
          </div>
        </div>
      </div>
    </blockquote>
    Even when you're using a lot of underlying libraries written in C++
    from Python, you still have to pay the Python-is-an-interpreter and<b=
r>
    =C2=A0 data-marshalling costs of Python.=C2=A0 If all you're doing is=
 wanting
    to record a bit of data, you might consider one of the<br>
    =C2=A0 "canned" example applications like "rx_samples_to_file".<br>
    <br>
    If you want to proceed with a more full-blown Python app
    development, you cannot get around the fact that is doesn't do well
    for<br>
    =C2=A0 sustained processing of high-speed sample streams.=C2=A0 Grant=
ed,
    science and engineering have long-used Python for fairly-intense<br>
    =C2=A0 data-analysis tasks, but NOT IN REAL TIME at HIGH SAMPLE RATES=
.<br>
    <br>
    I completely understand the allure of using Python--I moved 99% of
    my dev "life" to Python from C many years ago and I haven't looked<br=
>
    =C2=A0 back.=C2=A0 But for some tasks, it's not the answer.<br>
    <blockquote
cite=3D"mid:CALNMZ8WDGoccHW+nHxbryn3t2=3DO9Rdp=3DZBzMBVm2+ibxdnUd=3Dg@mai=
l.gmail.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <div>
            <ul>
              <li>You are using different transport parameters to me
                (e.g.=C2=A0recv_frame_size,=C2=A0num_recv_frames)</li>
              <li>Your Linux buffer size settings are different to mine</=
li>
            </ul>
            <div>
              <div>Note that if I reduce my recording time to 1 - 2
                milliseconds (approx 80,000 samples), I can achieve 50
                Msps with almost zero=C2=A0dropped samples.=C2=A0 This is=
 more
                than enough for my application, but it would still be
                nice to know why I am not seeing the same performance as
                other users!=C2=A0 :)</div>
              <div><br>
              </div>
              <div>Cheers,</div>
              <div>Brendan.</div>
              <div><br>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 12, 2021 at 10:=
17
          AM Clark (US), Kenneth C &lt;<a moz-do-not-send=3D"true"
            href=3D"mailto:kenneth.c.clark2@boeing.com" target=3D"_blank"=
>kenneth.c.clark2@boeing.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div lang=3D"EN-US">
            <div>
              <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">Brendan,</span></p>
              <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">=C2=A0</span></p>
              <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">Most
                  of my work has been done at 15 Msamp/sec, my
                  observation at higher rates was not based on a lot of
                  testing.=C2=A0 I was just happy it worked at all above =
20
                  Msamp/sec (aka it was really using USB-3).</span></p>
              <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">=C2=A0</span></p>
              <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">Running
                  some quick tests here, for one second long recordings,
                  40 Msamp/sec always drops something.=C2=A0 35 Msamp/sec
                  mostly drops something.=C2=A0 30 Msamp/sec mostly works=
,
                  but does drop something a noticeable number of times.</=
span></p>
              <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">=C2=A0</span></p>
              <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">Playing
                  with the recording duration, things are better with
                  shorter durations.=C2=A0 Which I guess if each samples =
has
                  a 0.00001% of getting dropped, then the longer the
                  recording, the greater the chance for something
                  getting dropped.=C2=A0 And I suppose there is some
                  operating system file flush threshold that also kicks
                  in?</span></p>
              <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">=C2=A0</span></p>
              <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">I
                  was probably a little optimistic in my performance
                  report.=C2=A0 Again, I was just happy it worked at all =
at
                  USB-3 rates.</span></p>
              <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">=C2=A0</span></p>
              <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">I
                  think there is also an option to record as 12-bit
                  values, which as you approach the rates of the A-to-D
                  (which I think is in the 12-bit range?) you are not
                  really giving up anything, as there is not much DDC
                  =E2=80=98averaging=E2=80=99 to give you more bits of re=
solution.=C2=A0 I
                  have not looked at that (12 bit wire values), and I
                  might be making that up.=C2=A0 I do see a =E2=80=9Csc8=E2=
=80=9D wirefmt
                  option for the rx_samples_to_file, which runs at
                  higher rates without overflow.</span></p>
              <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">=C2=A0</span></p>
              <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">Ken</span></p>
              <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">=C2=A0</span></p>
              <p class=3D"MsoNormal"><b><span
                    style=3D"font-size:11pt;font-family:Calibri,sans-seri=
f">From:</span></b><span
                  style=3D"font-size:11pt;font-family:Calibri,sans-serif"=
>
                  Brendan Horsfield [mailto:<a moz-do-not-send=3D"true"
                    href=3D"mailto:brendan.horsfield@vectalabs.com"
                    target=3D"_blank">brendan.horsfield@vectalabs.com</a>=
]
                  <br>
                  <b>Sent:</b> Sunday, April 11, 2021 23:16<br>
                  <b>To:</b> Clark (US), Kenneth C &lt;<a
                    moz-do-not-send=3D"true"
                    href=3D"mailto:kenneth.c.clark2@boeing.com"
                    target=3D"_blank">kenneth.c.clark2@boeing.com</a>&gt;=
<br>
                  <b>Cc:</b> <a moz-do-not-send=3D"true"
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                  <b>Subject:</b> [EXTERNAL] Re: Problem with
                  interfacing Raspberry Pi 4 to USRP B210 with Python
                  API</span></p>
              <p class=3D"MsoNormal">=C2=A0</p>
              <table border=3D"0" cellpadding=3D"0">
                <tbody>
                  <tr>
                    <td style=3D"background:white;padding:0.75pt">
                      <table
                        style=3D"width:100%;margin-left:0.75pt;margin-rig=
ht:0.75pt"
                        align=3D"left" border=3D"0" cellpadding=3D"0"
                        cellspacing=3D"0" width=3D"100%">
                        <tbody>
                          <tr>
                            <td
                              style=3D"background:rgb(145,10,25);padding:=
5.25pt
                              1.5pt"><br>
                            </td>
                            <td
                              style=3D"width:100%;background:rgb(253,242,=
244);padding:5.25pt
                              3.75pt 5.25pt 11.25pt" width=3D"100%">
                              <div>
                                <p class=3D"MsoNormal">
                                  <span
style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:rgb(33,33,33=
)">EXT
                                    email: be mindful of
                                    links/attachments.</span></p>
                              </div>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                      <pre><span style=3D"color:black">
=C2=A0</span></pre>
                    </td>
                  </tr>
                </tbody>
              </table>
              <div>
                <p class=3D"MsoNormal"><span
                    style=3D"font-size:10pt;font-family:Calibri,sans-seri=
f">Hi
                    Ken,</span></p>
                <div>
                  <p class=3D"MsoNormal"><span
                      style=3D"font-size:10pt;font-family:Calibri,sans-se=
rif">=C2=A0</span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
                      style=3D"font-size:10pt;font-family:Calibri,sans-se=
rif">When
                      you say "I am able to reliably record above 20
                      Msps with the =E2=80=98wire format=E2=80=99 at 16-b=
it complex
                      I&amp;Q", do you mean that you can do this
                      indefinitely (or at least, up to the size of your
                      RAM disk)?=C2=A0 Or is there a limit to how much da=
ta
                      you can capture before you get an overrun?</span></=
p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
                      style=3D"font-size:10pt;font-family:Calibri,sans-se=
rif">=C2=A0</span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
                      style=3D"font-size:10pt;font-family:Calibri,sans-se=
rif">I
                      find I can reliably capture around 1MB of data at
                      50 Msps on one channel, or 25 Msps on two
                      channels.=C2=A0 However, if I try to capture more t=
han
                      1MB of data in one go, I get a stream of error
                      messages.</span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
                      style=3D"font-size:10pt;font-family:Calibri,sans-se=
rif">=C2=A0</span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
                      style=3D"font-size:10pt;font-family:Calibri,sans-se=
rif">Brendan.</span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
                      style=3D"font-size:10pt;font-family:Calibri,sans-se=
rif">=C2=A0</span></p>
                </div>
              </div>
              <p class=3D"MsoNormal"><span
                  style=3D"font-size:10pt;font-family:Calibri,sans-serif"=
>=C2=A0</span></p>
              <div>
                <div>
                  <p class=3D"MsoNormal"><span
                      style=3D"font-size:10pt;font-family:Calibri,sans-se=
rif">On
                      Tue, Apr 6, 2021 at 12:40 AM Clark (US), Kenneth C
                      &lt;<a moz-do-not-send=3D"true"
                        href=3D"mailto:kenneth.c.clark2@boeing.com"
                        target=3D"_blank">kenneth.c.clark2@boeing.com</a>=
&gt;
                      wrote:</span></p>
                </div>
                <blockquote
                  style=3D"border-top:none;border-right:none;border-botto=
m:none;border-left:1pt
                  solid rgb(204,204,204);padding:0in 0in 0in
                  6pt;margin-left:4.8pt;margin-right:0in">
                  <div>
                    <div>
                      <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">Brendan,</span></p>
                      <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">=C2=A0</span></p>
                      <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">I
                          am just using the =E2=80=98examples=E2=80=99 C/=
C++ builds.=C2=A0 I
                          have not used the python modules.</span></p>
                      <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">=C2=A0</span></p>
                      <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">I
                          would think editing the CMake file would
                          remove the need for the =E2=80=93D flag.</span>=
</p>
                      <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">=C2=A0</span></p>
                      <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">I
                          have had very good luck running a B205 USB-3
                          on a RPi-4-8GB.=C2=A0 Only a couple of dependen=
cies
                          to install, which were documented on the Ettus
                          UHD website.</span></p>
                      <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">=C2=A0</span></p>
                      <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">I
                          did create a RAM-Drive, since the 8 GByte RAM
                          has room for that.=C2=A0 And I am able to relia=
bly
                          record above 20 Msps with the =E2=80=98wire for=
mat=E2=80=99 at
                          16-bit complex I&amp;Q.=C2=A0 (No real reason t=
o do
                          32-float, since the native samples are 16-bit
                          I&amp;Q in the FPGA on the B205, right?)</span>=
</p>
                      <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">=C2=A0</span></p>
                      <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">I
                          use the =E2=80=98host examples=E2=80=99 in the =
latest 4.x
                          version of UHD.=C2=A0 And they are pretty easy =
to
                          modify.=C2=A0 I have adapted for things like us=
ing
                          the 1-PPS, and doing times receive and
                          transmit.</span></p>
                      <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">=C2=A0</span></p>
                      <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">Ken</span></p>
                      <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">=C2=A0</span></p>
                      <p class=3D"MsoNormal"><b><span
                            style=3D"font-size:11pt;font-family:Calibri,s=
ans-serif">From:</span></b><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif"> Brendan Horsfiel=
d
                          [mailto:<a moz-do-not-send=3D"true"
                            href=3D"mailto:brendan.horsfield@vectalabs.co=
m"
                            target=3D"_blank">brendan.horsfield@vectalabs=
.com</a>]
                          <br>
                          <b>Sent:</b> Sunday, April 4, 2021 01:35<br>
                          <b>To:</b> Clark (US), Kenneth C &lt;<a
                            moz-do-not-send=3D"true"
                            href=3D"mailto:kenneth.c.clark2@boeing.com"
                            target=3D"_blank">kenneth.c.clark2@boeing.com=
</a>&gt;<br>
                          <b>Cc:</b> <a moz-do-not-send=3D"true"
                            href=3D"mailto:usrp-users@lists.ettus.com"
                            target=3D"_blank">usrp-users@lists.ettus.com<=
/a>;
                          <a moz-do-not-send=3D"true"
                            href=3D"mailto:patchvonbraun@gmail.com"
                            target=3D"_blank">patchvonbraun@gmail.com</a>=
<br>
                          <b>Subject:</b> [EXTERNAL] Re: [USRP-users]
                          Re: Problem with interfacing Raspberry Pi 4 to
                          USRP B210 with Python API</span></p>
                      <p class=3D"MsoNormal">=C2=A0</p>
                      <table border=3D"0" cellpadding=3D"0">
                        <tbody>
                          <tr>
                            <td style=3D"background:white;padding:0.75pt"=
>
                              <table
                                style=3D"width:100%;margin-left:0.75pt;ma=
rgin-right:0.75pt"
                                align=3D"left" border=3D"0" cellpadding=3D=
"0"
                                cellspacing=3D"0" width=3D"100%">
                                <tbody>
                                  <tr>
                                    <td
                                      style=3D"background:rgb(145,10,25);=
padding:5.25pt
                                      1.5pt"><br>
                                    </td>
                                    <td
                                      style=3D"width:100%;background:rgb(=
253,242,244);padding:5.25pt
                                      3.75pt 5.25pt 11.25pt"
                                      width=3D"100%">
                                      <div>
                                        <p class=3D"MsoNormal"><span
style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:rgb(33,33,33=
)">EXT
                                            email: be mindful of
                                            links/attachments.</span></p>
                                      </div>
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                              <pre><span style=3D"color:black">
=C2=A0</span></pre>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                      <div>
                        <p class=3D"MsoNormal"><span
                            style=3D"font-size:10pt;font-family:Calibri,s=
ans-serif">Thanks
                            Ken.=C2=A0 As you suggested, I added
                            -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic" to the
                            CMake call.=C2=A0=C2=A0</span></p>
                        <div>
                          <p class=3D"MsoNormal"><span
                              style=3D"font-size:10pt;font-family:Calibri=
,sans-serif">=C2=A0</span></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal"><span
                              style=3D"font-size:10pt;font-family:Calibri=
,sans-serif">The
                              good news is that the UHD build &amp;
                              installation process completed
                              successfully.</span></p>
                          <div>
                            <div>
                              <p class=3D"MsoNormal"><span
                                  style=3D"font-size:10pt;font-family:Cal=
ibri,sans-serif">=C2=A0</span></p>
                            </div>
                            <div>
                              <p class=3D"MsoNormal"><span
                                  style=3D"font-size:10pt;font-family:Cal=
ibri,sans-serif">The
                                  bad news is that when I try to import
                                  the uhd module in Python3, I get=C2=A0t=
he
                                  following error:</span></p>
                            </div>
                            <div>
                              <p class=3D"MsoNormal"><span
                                  style=3D"font-size:10pt;font-family:Cal=
ibri,sans-serif">=C2=A0</span></p>
                            </div>
                            <div>
                              <p class=3D"MsoNormal"><span
                                  style=3D"font-size:10pt;font-family:Cal=
ibri,sans-serif">pi@raspberrypi:~
                                  $ python3<br>
                                  Python 3.7.3 (default, Jan 22 2021,
                                  20:04:44) <br>
                                  [GCC 8.3.0] on linux<br>
                                  Type "help", "copyright", "credits" or
                                  "license" for more information.<br>
                                  &gt;&gt;&gt; import uhd<br>
                                  Traceback (most recent call last):<br>
                                  =C2=A0 File "&lt;stdin&gt;", line 1, in
                                  &lt;module&gt;<br>
                                  =C2=A0 File
                                  "/usr/local/lib/python3/dist-packages/u=
hd/__init__.py",
                                  line 10, in &lt;module&gt;<br>
                                  =C2=A0 =C2=A0 from . import types<br>
                                  =C2=A0 File
                                  "/usr/local/lib/python3/dist-packages/u=
hd/types.py",
                                  line 10, in &lt;module&gt;<br>
                                  =C2=A0 =C2=A0 from . import libpyuhd as=
 lib<br>
                                  ImportError:
                                  /usr/local/lib/libuhd.so.4.0.0:
                                  undefined symbol: __atomic_fetch_add_8<=
br>
                                  &gt;&gt;&gt;=C2=A0</span></p>
                            </div>
                            <div>
                              <p class=3D"MsoNormal"><span
                                  style=3D"font-size:10pt;font-family:Cal=
ibri,sans-serif">=C2=A0</span></p>
                            </div>
                            <div>
                              <p class=3D"MsoNormal"><span
                                  style=3D"font-size:10pt;font-family:Cal=
ibri,sans-serif">Did
                                  you encounter this problem too?</span><=
/p>
                            </div>
                            <div>
                              <p class=3D"MsoNormal"><span
                                  style=3D"font-size:10pt;font-family:Cal=
ibri,sans-serif">=C2=A0</span></p>
                            </div>
                            <div>
                              <p class=3D"MsoNormal"><span
                                  style=3D"font-size:10pt;font-family:Cal=
ibri,sans-serif">I
                                  guess the next step is to hack the
                                  "CMakeLists.txt" files as per the link
                                  you sent me.=C2=A0 Just to clarify one
                                  point first:=C2=A0 If I modify the
                                  CMakeLists.txt files, do I still need
                                  to include
                                  -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic" i=
n
                                  the CMake call?</span></p>
                            </div>
                            <div>
                              <p class=3D"MsoNormal"><span
                                  style=3D"font-size:10pt;font-family:Cal=
ibri,sans-serif">=C2=A0</span></p>
                            </div>
                            <div>
                              <p class=3D"MsoNormal"><span
                                  style=3D"font-size:10pt;font-family:Cal=
ibri,sans-serif">Thanks,</span></p>
                            </div>
                            <div>
                              <p class=3D"MsoNormal"><span
                                  style=3D"font-size:10pt;font-family:Cal=
ibri,sans-serif">Brendan.</span></p>
                            </div>
                            <div>
                              <p class=3D"MsoNormal"><span
                                  style=3D"font-size:10pt;font-family:Cal=
ibri,sans-serif">=C2=A0=C2=A0</span></p>
                            </div>
                            <div>
                              <p class=3D"MsoNormal"><span
                                  style=3D"font-size:10pt;font-family:Cal=
ibri,sans-serif">=C2=A0</span></p>
                            </div>
                          </div>
                        </div>
                      </div>
                      <p class=3D"MsoNormal"><span
                          style=3D"font-size:10pt;font-family:Calibri,san=
s-serif">=C2=A0</span></p>
                      <div>
                        <div>
                          <p class=3D"MsoNormal"><span
                              style=3D"font-size:10pt;font-family:Calibri=
,sans-serif">On
                              Sat, Apr 3, 2021 at 10:29 PM Clark (US),
                              Kenneth C &lt;<a moz-do-not-send=3D"true"
                                href=3D"mailto:kenneth.c.clark2@boeing.co=
m"
                                target=3D"_blank">kenneth.c.clark2@boeing=
.com</a>&gt;

                              wrote:</span></p>
                        </div>
                        <blockquote
                          style=3D"border-top:none;border-right:none;bord=
er-bottom:none;border-left:1pt
                          solid rgb(204,204,204);padding:0in 0in 0in
                          6pt;margin:5pt 0in 5pt 4.8pt">
                          <p class=3D"MsoNormal"><span
                              style=3D"font-size:10pt;font-family:Calibri=
,sans-serif"><br>
                              I had the same problem build UHD on RPi4<br=
>
                              <br>
                              Answer here:<br>
                              <a moz-do-not-send=3D"true"
                                href=3D"https://gitlab.kitware.com/cmake/=
cmake/-/issues/21174"
                                target=3D"_blank">https://gitlab.kitware.=
com/cmake/cmake/-/issues/21174</a><br>
                              <br>
                              Add to CMake call:<br>
                              -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic"<br>
                              <br>
                              Regards,<br>
                              <br>
                              Ken<br>
                              <br>
                              <br>
                              -----Original Message-----<br>
                              From: <a moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users-request@lists.e=
ttus.com"
                                target=3D"_blank">usrp-users-request@list=
s.ettus.com</a>
                              [mailto:<a moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users-request@lists.e=
ttus.com"
                                target=3D"_blank">usrp-users-request@list=
s.ettus.com</a>]<br>
                              Sent: Saturday, April 3, 2021 11:13<br>
                              To: <a moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users@lists.ettus.com=
"
                                target=3D"_blank">usrp-users@lists.ettus.=
com</a><br>
                              Subject: [EXTERNAL] USRP-users Digest, Vol
                              128, Issue 7<br>
                              <br>
                              EXT email: be mindful of
                              links/attachments.<br>
                              <br>
                              <br>
                              <br>
                              Send USRP-users mailing list submissions
                              to<br>
                              =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a moz-do-not-s=
end=3D"true"
                                href=3D"mailto:usrp-users@lists.ettus.com=
"
                                target=3D"_blank">usrp-users@lists.ettus.=
com</a><br>
                              <br>
                              To subscribe or unsubscribe via email,
                              send a message with subject or body 'help'
                              to<br>
                              =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a moz-do-not-s=
end=3D"true"
                                href=3D"mailto:usrp-users-request@lists.e=
ttus.com"
                                target=3D"_blank">usrp-users-request@list=
s.ettus.com</a><br>
                              <br>
                              You can reach the person managing the list
                              at<br>
                              =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a moz-do-not-s=
end=3D"true"
                                href=3D"mailto:usrp-users-owner@lists.ett=
us.com"
                                target=3D"_blank">usrp-users-owner@lists.=
ettus.com</a><br>
                              <br>
                              When replying, please edit your Subject
                              line so it is more specific than "Re:
                              Contents of USRP-users digest..."<br>
                              <br>
                              Today's Topics:<br>
                              <br>
                              =C2=A0 =C2=A01. Re: Problem with interfacin=
g
                              Raspberry Pi 4 to USRP B210 with Python
                              API<br>
                              =C2=A0 =C2=A0 =C2=A0 (Brendan Horsfield)<br=
>
                              =C2=A0 =C2=A02. Re: Intermittent problem wi=
th GPS
                              synchronization for multiple E310 units<br>
                              =C2=A0 =C2=A0 =C2=A0 (Ofer Saferman)<br>
                              <br>
                              <br>
----------------------------------------------------------------------<br=
>
                              <br>
                              Message: 1<br>
                              Date: Sat, 3 Apr 2021 21:07:59 +1000<br>
                              From: Brendan Horsfield &lt;<a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:brendan.horsfield@vectalab=
s.com"
                                target=3D"_blank">brendan.horsfield@vecta=
labs.com</a>&gt;<br>
                              Subject: [USRP-users] Re: Problem with
                              interfacing Raspberry Pi 4 to<br>
                              =C2=A0 =C2=A0 =C2=A0 =C2=A0 USRP B210 with =
Python API<br>
                              To: Marcus D Leech &lt;<a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:patchvonbraun@gmail.com"
                                target=3D"_blank">patchvonbraun@gmail.com=
</a>&gt;<br>
                              Cc: <a moz-do-not-send=3D"true"
                                href=3D"mailto:USRP-users@lists.ettus.com=
"
                                target=3D"_blank">USRP-users@lists.ettus.=
com</a><br>
                              Message-ID:<br>
                              =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a moz-do-n=
ot-send=3D"true"
href=3D"mailto:CALNMZ8Wg3gQnkAomrhhCBPAGtTfUbm3fkMzJhCWhUAgHrLuzyA@mail.g=
mail.com"
                                target=3D"_blank">CALNMZ8Wg3gQnkAomrhhCBP=
AGtTfUbm3fkMzJhCWhUAgHrLuzyA@mail.gmail.com</a>&gt;<br>
                              Content-Type: multipart/alternative;<br>
                              =C2=A0 =C2=A0 =C2=A0 =C2=A0
                              boundary=3D"000000000000dc3aeb05bf0f7ace"<b=
r>
                              <br>
                              Hi Marcus,<br>
                              <br>
                              I have tried your suggestion, but
                              unfortunately without success:<br>
                              <br>
                              Per your advice, I have edited the file
                              "cmake.lwt" in the folder
                              /usr/local/lib/python3.7/dist-packages/pybo=
mbs/templates
                              to include the option
                              "-DENABLE_PYTHON_API=3DON" in the calls to
                              cmake.=C2=A0 The modified commands are as
                              follows:<br>
                              <br>
                              configure: cmake .. -DENABLE_PYTHON_API=3DO=
N
                              -DCMAKE_BUILD_TYPE=3D$cmakebuildtype
                              -DCMAKE_INSTALL_PREFIX=3D$prefix $config_op=
t
                              -Wno-dev<br>
                              configure_static: cmake ..
                              -DENABLE_PYTHON_API=3DON
                              -DCMAKE_BUILD_TYPE=3D$cmakebuildtype
                              -DCMAKE_INSTALL_PREFIX=3D$prefix
                              -DENABLE_STATIC_LIBS=3DTrue $config_opt<br>
                              <br>
                              I removed the previous UHD installation
                              and re-ran "pybombs install uhd", but the
                              end result was much the same:=C2=A0 the
                              installation process completed without
                              errors, but the Python API was not
                              included in the installation.<br>
                              <br>
                              QUESTION 1:=C2=A0 Can you tell me if PyBOMB=
S
                              actually builds the UHD driver from
                              source, or does it simply copy a
                              pre-compiled binary onto my system?=C2=A0 T=
he
                              reason I ask is that PyBOMBS is quite
                              quick to install the UHD driver, whereas
                              the non-PyBOMBS approach is VERY slow
                              (i.e. around 60 minutes to get to 53%, at
                              which point it crashes out with an error).<=
br>
                              <br>
                              QUESTION 2:=C2=A0 This whole process feels =
more
                              difficult than it should be.<br>
                              Why isn't the Python API installed with
                              the UHD driver by default?=C2=A0 Would I be
                              better off using another language (like
                              C++) to control the USRP?<br>
                              <br>
                              Thanks,<br>
                              Brendan.<br>
                              <br>
                              <br>
                              <br>
                              On Fri, Apr 2, 2021 at 11:25 PM Marcus D
                              Leech &lt;<a moz-do-not-send=3D"true"
                                href=3D"mailto:patchvonbraun@gmail.com"
                                target=3D"_blank">patchvonbraun@gmail.com=
</a>&gt;<br>
                              wrote:<br>
                              <br>
                              &gt; Perhaps look at the PyBombs recipe
                              for your platform=E2=80=94there=E2=80=99s p=
robably<br>
                              &gt; a compiler flag that needs to be set
                              that you=E2=80=99re missing, but I don=E2=80=
=99t<br>
                              &gt; know what that is.<br>
                              &gt;<br>
                              &gt; Also, in general, you don=E2=80=99t ne=
ed to
                              become root to compile and build<br>
                              &gt; code=E2=80=94only needed during the =E2=
=80=9Cmake
                              install=E2=80=9D<br>
                              &gt;<br>
                              &gt;<br>
                              &gt;<br>
                              &gt; Sent from my iPhone<br>
                              &gt;<br>
                              &gt; On Apr 2, 2021, at 7:19 AM, Brendan
                              Horsfield &lt;<br>
                              &gt; <a moz-do-not-send=3D"true"
                                href=3D"mailto:brendan.horsfield@vectalab=
s.com"
                                target=3D"_blank">brendan.horsfield@vecta=
labs.com</a>&gt;
                              wrote:<br>
                              &gt;<br>
                              &gt; =EF=BB=BF<br>
                              &gt; Hi Folks,<br>
                              &gt;<br>
                              &gt; I would like to interface my
                              Raspberry Pi 4 to a USRP B210 via the<br>
                              &gt; Python API.=C2=A0 This requires the UH=
D
                              driver to be built from source.<br>
                              &gt; Unfortunately, whenever I try this I
                              encounter some errors that stop<br>
                              &gt; the build process in its tracks.<br>
                              &gt;<br>
                              &gt; Details of the error are as follows:<b=
r>
                              &gt;<br>
                              &gt; [ 53%] Linking CXX executable
                              test_clock_synch<br>
                              &gt; /usr/bin/ld: ../lib/libuhd.so.4.0.0:
                              undefined reference to<br>
                              &gt; `__atomic_compare_exchange_8'<br>
                              &gt; /usr/bin/ld: ../lib/libuhd.so.4.0.0:
                              undefined reference to<br>
                              &gt; `__atomic_load_8'<br>
                              &gt; /usr/bin/ld: ../lib/libuhd.so.4.0.0:
                              undefined reference to<br>
                              &gt; `__atomic_store_8'<br>
                              &gt; /usr/bin/ld: ../lib/libuhd.so.4.0.0:
                              undefined reference to<br>
                              &gt; `__atomic_fetch_add_8'<br>
                              &gt; collect2: error: ld returned 1 exit
                              status<br>
                              &gt; make[2]: ***
                              [examples/CMakeFiles/test_clock_synch.dir/b=
uild.make:95:<br>
                              &gt; examples/test_clock_synch] Error 1<br>
                              &gt; make[1]: ***
                              [CMakeFiles/Makefile2:1039:<br>
                              &gt;
                              examples/CMakeFiles/test_clock_synch.dir/al=
l]
                              Error 2<br>
                              &gt; make: *** [Makefile:163: all] Error 2<=
br>
                              &gt;<br>
                              &gt; The process I have been using is as
                              follows:<br>
                              &gt;<br>
                              &gt; STEP 1:=C2=A0 INSTALL DEPENDENCIES<br>
                              &gt; sudo apt-get install libboost-all-dev
                              libusb-1.0-0-dev doxygen<br>
                              &gt; python3-docutils python3-mako
                              python3-numpy python3-requests<br>
                              &gt; python3-ruamel.yaml
                              python3-setuptools cmake build-essential<br=
>
                              &gt;<br>
                              &gt; STEP 2:=C2=A0 BUILD UHD DRIVER FROM SO=
URCE<br>
                              &gt; cd /home/pi<br>
                              &gt; mkdir workarea-uhd<br>
                              &gt; cd workarea-uhd<br>
                              &gt; git clone <a moz-do-not-send=3D"true"
href=3D"https://github.com/EttusResearch/uhd" target=3D"_blank">https://g=
ithub.com/EttusResearch/uhd</a><br>
                              &gt; cd uhd<br>
                              &gt; git checkout v4.0.0.0<br>
                              &gt; cd host<br>
                              &gt; mkdir build<br>
                              &gt; cd build<br>
                              &gt; sudo cmake -DNEON_SIMD_ENABLE=3DOFF
                              -DENABLE_PYTHON_API=3DON ../ sudo make<br>
                              &gt; ---&gt;=C2=A0 (ERRORS OCCUR DURING "MA=
KE"
                              PROCESS)<br>
                              &gt;<br>
                              &gt; My system configuration is as
                              follows:<br>
                              &gt; Hardware: Raspberry Pi 4 Model B Rev
                              1.4<br>
                              &gt; OS: Raspbian GNU/Linux 10 (buster)
                              (32-bit, armv7l) Ettus USRP B210<br>
                              &gt;<br>
                              &gt; Does anyone know what the problem
                              could be, and how I can resolve it?<br>
                              &gt;<br>
                              &gt; One final note:=C2=A0 Using PyBOMBS, I=
 was
                              able to successfully build &amp;<br>
                              &gt; install the UHD driver and connect to
                              the USRP.=C2=A0 Unfortunately the<br>
                              &gt; PyBOMBS build does not include the
                              Python API, which is what I really<br>
                              &gt; want.=C2=A0 Is there a different versi=
on
                              of the PyBOMBS build that includes the
                              Python API?<br>
                              &gt;<br>
                              &gt; Thanks &amp; Regards,<br>
                              &gt; Brendan.<br>
                              &gt;<br>
                              &gt;<br>
                              &gt;<br>
                              &gt;
                              ___________________________________________=
____<br>
                              &gt; USRP-users mailing list -- <a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users@lists.ettus.com=
"
                                target=3D"_blank">
                                usrp-users@lists.ettus.com</a> To
                              unsubscribe<br>
                              &gt; send an email to <a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users-leave@lists.ett=
us.com"
                                target=3D"_blank">
                                usrp-users-leave@lists.ettus.com</a><br>
                              &gt;<br>
                              &gt;<br>
                              -------------- next part --------------<br>
                              A message part incompatible with plain
                              text digests has been removed ...<br>
                              Name: not available<br>
                              Type: text/html<br>
                              Size: 5624 bytes<br>
                              Desc: not available<br>
                              <br>
                              ------------------------------<br>
                              <br>
                              Message: 2<br>
                              Date: Sat, 3 Apr 2021 14:12:35 +0300<br>
                              From: Ofer Saferman &lt;<a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:ofer@navigicom.com"
                                target=3D"_blank">ofer@navigicom.com</a>&=
gt;<br>
                              Subject: [USRP-users] Re: Intermittent
                              problem with GPS<br>
                              =C2=A0 =C2=A0 =C2=A0 =C2=A0 synchronization=
 for multiple E310
                              units<br>
                              To: usrp-users &lt;<a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users@lists.ettus.com=
"
                                target=3D"_blank">usrp-users@lists.ettus.=
com</a>&gt;<br>
                              Message-ID:<br>
                              =C2=A0 =C2=A0 =C2=A0 =C2=A0
                              &lt;CACDReSwXUvJ8_LimfVOn4StHQEGhNntY-nCSv0=
aYdBsX=3D<a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:AtV_w@mail.gmail.com"
                                target=3D"_blank">AtV_w@mail.gmail.com</a=
>&gt;<br>
                              Content-Type: multipart/alternative;<br>
                              =C2=A0 =C2=A0 =C2=A0 =C2=A0
                              boundary=3D"000000000000566d1705bf0f8b0e"<b=
r>
                              <br>
                              Hello Philip,<br>
                              <br>
                              Thank you for the explanation.<br>
                              What would you suggest?<br>
                              opkg exists. There must be a way to
                              install ntpd without needing to rebuild
                              the image.<br>
                              Maybe use pybombs or other methods?<br>
                              git also works. Maybe download a different
                              package manager and compile it?<br>
                              <br>
                              It seems that Marcus pointed out a great
                              benefit of E310 units running gpsd, but
                              without ntpd system clock can't sync and
                              it seems that this feature can vastly
                              simplify gps synchronization among E310
                              units.<br>
                              <br>
                              I would be very grateful if anybody can
                              suggest a solution to install ntpd on E310
                              units running UHD 3.15 SD-card image.<br>
                              <br>
                              Regards,<br>
                              Ofer Saferman.<br>
                              <br>
                              On Sat, Apr 3, 2021 at 10:30 AM &lt;<a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users-request@lists.e=
ttus.com"
                                target=3D"_blank">usrp-users-request@list=
s.ettus.com</a>&gt;
                              wrote:<br>
                              <br>
                              &gt; Send USRP-users mailing list
                              submissions to<br>
                              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a mo=
z-do-not-send=3D"true"
                                href=3D"mailto:usrp-users@lists.ettus.com=
"
                                target=3D"_blank">usrp-users@lists.ettus.=
com</a><br>
                              &gt;<br>
                              &gt; To subscribe or unsubscribe via
                              email, send a message with subject or<br>
                              &gt; body 'help' to<br>
                              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a mo=
z-do-not-send=3D"true"
                                href=3D"mailto:usrp-users-request@lists.e=
ttus.com"
                                target=3D"_blank">usrp-users-request@list=
s.ettus.com</a><br>
                              &gt;<br>
                              &gt; You can reach the person managing the
                              list at<br>
                              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a mo=
z-do-not-send=3D"true"
                                href=3D"mailto:usrp-users-owner@lists.ett=
us.com"
                                target=3D"_blank">usrp-users-owner@lists.=
ettus.com</a><br>
                              &gt;<br>
                              &gt; When replying, please edit your
                              Subject line so it is more specific<br>
                              &gt; than "Re: Contents of USRP-users
                              digest..."Today's Topics:<br>
                              &gt;<br>
                              &gt;=C2=A0 =C2=A0 1. Re: Intermittent probl=
em with
                              GPS synchronization for multiple<br>
                              &gt; E310 units<br>
                              &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0(Philip Bali=
ster)<br>
                              &gt;<br>
                              &gt;<br>
                              &gt;<br>
                              &gt; ---------- Forwarded message
                              ----------<br>
                              &gt; From: Philip Balister &lt;<a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:philip@balister.org"
                                target=3D"_blank">philip@balister.org</a>=
&gt;<br>
                              &gt; To: Ofer Saferman &lt;<a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:ofer@navigicom.com"
                                target=3D"_blank">ofer@navigicom.com</a>&=
gt;,
                              "Marcus D. Leech" &lt;<br>
                              &gt; <a moz-do-not-send=3D"true"
                                href=3D"mailto:patchvonbraun@gmail.com"
                                target=3D"_blank">patchvonbraun@gmail.com=
</a>&gt;<br>
                              &gt; Cc: Rob Kossler &lt;<a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:rkossler@nd.edu"
                                target=3D"_blank">rkossler@nd.edu</a>&gt;=
,
                              usrp-users<br>
                              &gt; &lt;<a moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users@lists.ettus.com=
"
                                target=3D"_blank">usrp-users@lists.ettus.=
com</a>&gt;<br>
                              &gt; Bcc:<br>
                              &gt; Date: Fri, 2 Apr 2021 10:09:43 -0400<b=
r>
                              &gt; Subject: [USRP-users] Re:
                              Intermittent problem with GPS<br>
                              &gt; synchronization for multiple E310
                              units On 4/2/21 7:17 AM, Ofer<br>
                              &gt; Saferman wrote:<br>
                              &gt; &gt; Marcus Hi,<br>
                              &gt; &gt;<br>
                              &gt; &gt; Your suggestion below to install
                              ntpd does not work.<br>
                              &gt; &gt; The image does not include it.
                              Although the old thread says<br>
                              &gt; &gt; otherwise I think it refers to
                              an older UHD release that did include
                              ntpd.<br>
                              &gt; &gt; Any accurate instructions on how
                              to install it anyway?<br>
                              &gt; &gt; Maybe opkg should be configured
                              to access another repository?<br>
                              &gt; &gt; Doing: opkg list | grep ntpd,
                              does not yield anything useful so it<br>
                              &gt; &gt; is not just a question of typing
                              it correctly.<br>
                              &gt;<br>
                              &gt; As far as I know, no image has been
                              setup to use package feeds.<br>
                              &gt;<br>
                              &gt; I know ntpd worked in release4
                              images, pretty sure the newer image was<br>
                              &gt; redone and things have been left out
                              that used to be there.<br>
                              &gt;<br>
                              &gt; Philip<br>
                              &gt;<br>
                              &gt; &gt;<br>
                              &gt; &gt; Regards,<br>
                              &gt; &gt; Ofer Saferman<br>
                              &gt; &gt;<br>
                              &gt; &gt; On Thu, Apr 1, 2021 at 4:34 PM
                              Marcus D. Leech<br>
                              &gt; &gt; &lt;<a moz-do-not-send=3D"true"
                                href=3D"mailto:patchvonbraun@gmail.com"
                                target=3D"_blank">patchvonbraun@gmail.com=
</a>&gt;<br>
                              &gt; &gt; wrote:<br>
                              &gt; &gt;<br>
                              &gt; &gt;&gt; On 04/01/2021 06:00 AM, Ofer
                              Saferman wrote:<br>
                              &gt; &gt;&gt;<br>
                              &gt; &gt;&gt; Hello Marcus,<br>
                              &gt; &gt;&gt;<br>
                              &gt; &gt;&gt; I am working on E310 with
                              the latest UHD-3.15 SD card image.<br>
                              &gt; &gt;&gt; It seems not to include ntpd
                              that is required to synchronize system<br>
                              &gt; &gt;&gt; time to GPS time.<br>
                              &gt; &gt;&gt; Any idea how to install it
                              on the E310?<br>
                              &gt; &gt;&gt;<br>
                              &gt; &gt;&gt; Regards,<br>
                              &gt; &gt;&gt; Ofer Saferman<br>
                              &gt; &gt;&gt;<br>
                              &gt; &gt;&gt; sudo opkg install ntpd<br>
                              &gt; &gt;&gt;<br>
                              &gt; &gt;&gt; should work, but it has been
                              a while since I installed any packages<br>
                              &gt; &gt;&gt; on<br>
                              &gt; my<br>
                              &gt; &gt;&gt; E310.<br>
                              &gt; &gt;&gt;<br>
                              &gt; &gt;&gt; The E310 is based on
                              OpenEmbedded Linux, so all the info about<b=
r>
                              &gt; installing<br>
                              &gt; &gt;&gt; and managing packages on
                              OpenEmbedded apply.<br>
                              &gt; &gt;&gt;<br>
                              &gt; &gt;&gt;<br>
                              &gt; &gt;&gt;<br>
                              &gt; &gt;&gt; On Wed, Mar 31, 2021 at
                              11:40 PM Marcus D Leech &lt;<br>
                              &gt; <a moz-do-not-send=3D"true"
                                href=3D"mailto:patchvonbraun@gmail.com"
                                target=3D"_blank">patchvonbraun@gmail.com=
</a>&gt;<br>
                              &gt; &gt;&gt; wrote:<br>
                              &gt; &gt;&gt;<br>
                              &gt; &gt;&gt;&gt; Just use gettimeofday()
                              or any of the myriad subtle variants<br>
                              &gt; &gt;&gt;&gt; available<br>
                              &gt; in<br>
                              &gt; &gt;&gt;&gt; boost to get you the
                              Linux system time, and use that in a call
                              to<br>
                              &gt; &gt;&gt;&gt; set_time_next_pps().<br>
                              &gt; &gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt; The fact that all your
                              E310s will be running GPSD means they=E2=80=
=99ll
                              be<br>
                              &gt; &gt;&gt;&gt; adjusting system time
                              appropriately and they=E2=80=99ll all agree=
 on
                              what<br>
                              &gt; &gt;&gt;&gt; time<br>
                              &gt; it<br>
                              &gt; &gt;&gt;&gt; is, depending on the
                              level of precision you need.<br>
                              &gt; &gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt; Sent from my iPhone<br>
                              &gt; &gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt; On Mar 31, 2021, at 3:50
                              PM, Ofer Saferman &lt;<a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:ofer@navigicom.com"
                                target=3D"_blank">ofer@navigicom.com</a>&=
gt;
                              wrote:<br>
                              &gt; &gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt; =EF=BB=BF<br>
                              &gt; &gt;&gt;&gt; Thank you Rob. Your
                              suggestions are always helpful. I will
                              look<br>
                              &gt; &gt;&gt;&gt; into using gps_gpgga.<br>
                              &gt; &gt;&gt;&gt; Thank you Marcus. I am
                              already adding one, per other examples<br>
                              &gt; &gt;&gt;&gt; posted<br>
                              &gt; here<br>
                              &gt; &gt;&gt;&gt; and sync_to_gps example.
                              Can you please comment how I can benefit<br=
>
                              &gt; &gt;&gt;&gt; from<br>
                              &gt; the<br>
                              &gt; &gt;&gt;&gt; fact that E310 units use
                              gpsd in Linux?<br>
                              &gt; &gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt; Regards,<br>
                              &gt; &gt;&gt;&gt; Ofer Saferman<br>
                              &gt; &gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt; On Wed, Mar 31, 2021 at
                              10:13 PM Marcus D Leech &lt;<br>
                              &gt; <a moz-do-not-send=3D"true"
                                href=3D"mailto:patchvonbraun@gmail.com"
                                target=3D"_blank">patchvonbraun@gmail.com=
</a>&gt;<br>
                              &gt; &gt;&gt;&gt; wrote:<br>
                              &gt; &gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt; Sent from my iPhone<b=
r>
                              &gt; &gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt; On Mar 31, 2021, at
                              2:22 PM, Rob Kossler &lt;<a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:rkossler@nd.edu"
                                target=3D"_blank">rkossler@nd.edu</a>&gt;
                              wrote:<br>
                              &gt; &gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt; =EF=BB=BF<br>
                              &gt; &gt;&gt;&gt;&gt; Hi Ofer,<br>
                              &gt; &gt;&gt;&gt;&gt; Take a look at the
                              Ettus source code gps_ctrl.cpp.=C2=A0 In<br=
>
                              &gt; &gt;&gt;&gt;&gt; particular,<br>
                              &gt; look<br>
                              &gt; &gt;&gt;&gt;&gt; at the
                              get_sentence() usage which in the case of
                              "gps_time" waits<br>
                              &gt; &gt;&gt;&gt;&gt; for<br>
                              &gt; the<br>
                              &gt; &gt;&gt;&gt;&gt; next occurrence
                              (wait=3Dtrue),=C2=A0 but for the others doe=
s not
                              wait.<br>
                              &gt; &gt;&gt;&gt;&gt; But<br>
                              &gt; this<br>
                              &gt; &gt;&gt;&gt;&gt; doesn't fully
                              explain the behavior you are seeing.=C2=A0 =
If
                              you do the<br>
                              &gt; following:<br>
                              &gt; &gt;&gt;&gt;&gt; 1) wait for PPS time
                              to change<br>
                              &gt; &gt;&gt;&gt;&gt; 2) read the
                              "gps_time" sensor<br>
                              &gt; &gt;&gt;&gt;&gt; 3) set_time_next_pps
                              (use the value you just read)<br>
                              &gt; &gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt; Add 1 to the time
                              you just read before calling
                              set_time_next_pps.<br>
                              &gt; &gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt; It should still work
                              because the "gps_time" command should just<=
br>
                              &gt; &gt;&gt;&gt;&gt; wait until the next
                              PPS.=C2=A0 I guess it depends upon how<br>
                              &gt; &gt;&gt;&gt;&gt; "synchronized" are<br=
>
                              &gt; the<br>
                              &gt; &gt;&gt;&gt;&gt; received NMEA string
                              with the PPS edge.=C2=A0 Step 1 above waits=
 for<br>
                              &gt; &gt;&gt;&gt;&gt; the<br>
                              &gt; PPS<br>
                              &gt; &gt;&gt;&gt;&gt; edge, but maybe the
                              NMEA string arrives 0.1 secs before or
                              after<br>
                              &gt; that.=C2=A0 I<br>
                              &gt; &gt;&gt;&gt;&gt; don't really know.=C2=
=A0
                              Perhaps you need to switch to using
                              "gps_gpgga"<br>
                              &gt; such<br>
                              &gt; &gt;&gt;&gt;&gt; that there is no
                              additional wait added and also perhaps you<=
br>
                              &gt; &gt;&gt;&gt;&gt; should<br>
                              &gt; add step<br>
                              &gt; &gt;&gt;&gt;&gt; 1B which would be
                              just a fixed delay of perhaps 0.4 secs so
                              that<br>
                              &gt; &gt;&gt;&gt;&gt; you<br>
                              &gt; will<br>
                              &gt; &gt;&gt;&gt;&gt; read the NMEA string
                              in between the PPS edges.<br>
                              &gt; &gt;&gt;&gt;&gt; Rob<br>
                              &gt; &gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt; On Wed, Mar 31, 2021
                              at 1:22 PM Rob Kossler &lt;<a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:rkossler@nd.edu"
                                target=3D"_blank">rkossler@nd.edu</a>&gt;
                              wrote:<br>
                              &gt; &gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt; Hi Ofer,<br>
                              &gt; &gt;&gt;&gt;&gt;&gt; I don't know why
                              the "gps_time" sensor takes long to read.
                              But,<br>
                              &gt; &gt;&gt;&gt;&gt;&gt; can<br>
                              &gt; you<br>
                              &gt; &gt;&gt;&gt;&gt;&gt; try the other
                              sensors (perhaps there is a "gps_gpgga"
                              sensor?)?<br>
                              &gt; &gt;&gt;&gt;&gt;&gt; The<br>
                              &gt; time<br>
                              &gt; &gt;&gt;&gt;&gt;&gt; is embedded in
                              these as well.<br>
                              &gt; &gt;&gt;&gt;&gt;&gt; Rob<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt; On Wed, Mar 31,
                              2021 at 12:21 PM Ofer Saferman<br>
                              &gt; &gt;&gt;&gt;&gt;&gt; &lt;<a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:ofer@navigicom.com"
                                target=3D"_blank">ofer@navigicom.com</a>&=
gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt; wrote:<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; Marcus Hi,<br=
>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; If the
                              gps_time "sensor" returns a value only
                              once per second<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; how<br>
                              &gt; come<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; I manage to
                              read it sometimes in less than 1 second?<br=
>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; In my code
                              the situation is worse than the simple
                              example<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; below. It
                              usually takes more than 1 sec. to read it
                              and<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; sometimes
                              even 1.7 or<br>
                              &gt; 1.8<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; seconds. I
                              don't understand how the size or
                              complexity of the<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; code<br>
                              &gt; affects<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; the time it
                              takes to read gps_time.<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; How to treat
                              your comment about the use of GPSD and
                              good<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;
                              synchronization as it relates to code?<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; Should I not
                              change the time source in code and go
                              through the<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; whole
                              process of synchronization using gps_time?<=
br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; Can I
                              "assume" the systems are synced just by
                              the effect they<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; were
                              connected enough time to a GPS antenna?
                              and then just<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; access their<=
br>
                              &gt; time -<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;
                              radio_ctrl-&gt;get_time_last_pps()?<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; How to use
                              this information programmatically?<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; Regards,<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; Ofer
                              Saferman<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; ----------
                              Forwarded message ----------<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; From:
                              "Marcus D. Leech" &lt;<a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:patchvonbraun@gmail.com"
                                target=3D"_blank">patchvonbraun@gmail.com=
</a>&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; To: <a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users@lists.ettus.com=
"
                                target=3D"_blank">usrp-users@lists.ettus.=
com</a><br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; Cc:<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; Bcc:<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; Date:
                              Wed, 31 Mar 2021 09:19:20 -0400<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; Subject:
                              [USRP-users] Re: Intermittent problem with
                              GPS<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              synchronization for multiple E310 units On
                              03/31/2021 06:49<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; AM, Ofer
                              Saferman wrote:<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              Hello,<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I
                              have a system that uses 4 USRP E310 units.<=
br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Each
                              unit is connected to a GPS antenna.<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Time
                              source is set to gpsdo.<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I
                              run the same software remotely on all 4
                              units from a PC.<br>
                              &gt; Software<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; runs
                              on the units themselves.<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I
                              print out messages to show if the
                              reference is locked and<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; the<b=
r>
                              &gt; GPS<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; is<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              locked and also what is the GPS time that
                              each unit was<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              synchronized to.<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; In
                              some cases the units synchronize to the
                              same GPS time and<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; in<br=
>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; other<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              cases there is 1 second difference between
                              GPS time of<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              different<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; units<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; thus
                              causing the units to be unsynchronized.<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I
                              was wondering how this was possible.<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; The
                              synchronization process (documented by
                              others in the past<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; on<br=
>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; the<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              mailing list) is:<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; *
                              Wait for ref and GPS lock<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; *
                              Wait for a pps edge (get_time_last_pps)<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; *
                              Read gps_time value<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; *
                              Sync system clock to GPS clock on next PPS
                              edge<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              (set_time_next_pps +<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1.0
                              sec)<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              Something similar is also implemented in
                              the sync_to_gps example.<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; In
                              order to debug the problem I decided to
                              time the reading<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; of
                              the gps_time sensor to see if there is a
                              clue why<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              different units miss<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; the<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; PPS
                              edge and lock to a time of the next
                              second.<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I
                              was very surprised to find out that it
                              takes between 0.9 to<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1.2
                              seconds to read the gps_time sensor.<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; This
                              explains exactly why it is difficult to
                              synchronize<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              multiple units to the same time instance
                              because if one unit<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              takes 0.9<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; to
                              read the sensor and the other unit takes
                              1.2 seconds to<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; read<=
br>
                              &gt; the<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              sensor then each unit will lock on a
                              different GPS time 1<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              second<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; apart.<br=
>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Here
                              is a short software I wrote to time the
                              gps_time sensor<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; reading:<=
br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              -------------------------------------------=
--------------<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              #include &lt;uhd/utils/safe_main.hpp&gt;
                              #include &lt;uhd/device3.hpp&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              //#include &lt;uhd/usrp/multi_usrp.hpp&gt;
                              #include<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              &lt;uhd/types/sensors.hpp&gt; #include
                              &lt;boost/program_options.hpp&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              #include &lt;boost/format.hpp&gt; #include
                              &lt;chrono&gt; #include<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              &lt;iostream&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              namespace po =3D boost::program_options;<br=
>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; int
                              UHD_SAFE_MAIN(int argc, char *argv[]){<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              std::string args;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0=
 =C2=A0
                              =C2=A0po::options_description desc("Allowed
                              options");<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0=
 =C2=A0
                              =C2=A0desc.add_options()<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0=
 =C2=A0 =C2=A0
                              =C2=A0 =C2=A0("help", "help message") ("arg=
s",<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              po::value&lt;std::string&gt;(&amp;args)-&gt=
;default_value(""),
                              "device<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              address args")<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0=
 =C2=A0
                              =C2=A0;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0=
 =C2=A0
                              =C2=A0po::variables_map vm;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0=
 =C2=A0
                              =C2=A0po::store(po::parse_command_line(argc=
,
                              argv, desc), vm);<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0=
 =C2=A0
                              =C2=A0po::notify(vm);<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0=
 =C2=A0
                              =C2=A0//print the help message<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0=
 =C2=A0
                              =C2=A0if (vm.count("help")){<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0=
 =C2=A0 =C2=A0
                              =C2=A0 =C2=A0std::cout &lt;&lt;
                              boost::format("Timinig of gps_time: %s")<br=
>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; %<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; desc<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              &lt;&lt; std::endl;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0=
 =C2=A0 =C2=A0
                              =C2=A0 =C2=A0return ~0;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0=
 =C2=A0
                              =C2=A0}<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              uhd::device3::sptr usrp =3D
                              uhd::device3::make(args);<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              //uhd::usrp::multi_usrp::sptr usrp =3D<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              uhd::usrp::multi_usrp::make(args);<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              uhd::sensor_value_t gps_time =3D<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt;
usrp-&gt;get_tree()-&gt;access&lt;uhd::sensor_value_t&gt;("/mboards/0/sen=
sors/gps_<br>
                              &gt; usrp-&gt;time").get();<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              //uhd::sensor_value_t gps_time =3D<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              usrp-&gt;get_mboard_sensor("gps_time", 0);<=
br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              std::chrono::steady_clock::time_point
                              start_time, end_time;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              std::chrono::duration&lt;double&gt;
                              time_diff; // Default unit for<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; duration<=
br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; is
                              seconds.<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              for(int ii=3D0 ; ii&lt;20 ; ii++)<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; {<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              start_time =3D
                              std::chrono::steady_clock::now(); gps_time
                              =3D<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt;
usrp-&gt;get_tree()-&gt;access&lt;uhd::sensor_value_t&gt;("/mboards/0/sen=
sors/gps_<br>
                              &gt; usrp-&gt;time").get();<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              //gps_time =3D
                              usrp-&gt;get_mboard_sensor("gps_time", 0);
                              end_time<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =3D
                              std::chrono::steady_clock::now();
                              time_diff =3D end_time -<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              start_time;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              std::cout &lt;&lt; "gps_time[" &lt;&lt;
                              (boost::format("%02d") % ii) &lt;&lt; "]:
                              "<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; &lt;&lt;<=
br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              int64_t(gps_time.to_int()) &lt;&lt; ".
                              Time to read \"gps_time\": "<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              &lt;&lt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              (boost::format("%0.9f") %
                              time_diff.count()) &lt;&lt; " seconds"
                              &lt;&lt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              std::endl;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; }<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0=
 =C2=A0
                              =C2=A0return 0;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; }<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt;
                              -------------------------------------------=
---------------------------<br>
                              &gt; ----------<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Here
                              are the results of one typical run:<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              gps_time[00]: 1617183840. Time to read
                              "gps_time":<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              0.884164380<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              gps_time[01]: 1617183841. Time to read
                              "gps_time":<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              0.877966469<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              gps_time[02]: 1617183842. Time to read
                              "gps_time":<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              1.170869661<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              gps_time[03]: 1617183843. Time to read
                              "gps_time":<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              0.882917987<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              gps_time[04]: 1617183844. Time to read
                              "gps_time":<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              1.172120154<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              gps_time[05]: 1617183845. Time to read
                              "gps_time":<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              0.879271985<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              gps_time[06]: 1617183846. Time to read
                              "gps_time":<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              0.878609099<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              gps_time[07]: 1617183847. Time to read
                              "gps_time":<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              1.115639282<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              gps_time[08]: 1617183848. Time to read
                              "gps_time":<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              1.125365551<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              gps_time[09]: 1617183849. Time to read
                              "gps_time":<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              0.843803231<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              gps_time[10]: 1617183850. Time to read
                              "gps_time":<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              1.125065740<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              gps_time[11]: 1617183851. Time to read
                              "gps_time":<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              0.847519817<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              gps_time[12]: 1617183852. Time to read
                              "gps_time":<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              1.121398945<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              gps_time[13]: 1617183853. Time to read
                              "gps_time":<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              0.844371533<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              gps_time[14]: 1617183854. Time to read
                              "gps_time":<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              1.124722726<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              gps_time[15]: 1617183855. Time to read
                              "gps_time":<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              0.845688380<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              gps_time[16]: 1617183856. Time to read
                              "gps_time":<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              1.129568096<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              gps_time[17]: 1617183857. Time to read
                              "gps_time":<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              0.882436229<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              gps_time[18]: 1617183858. Time to read
                              "gps_time":<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              1.168227593<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              gps_time[19]: 1617183859. Time to read
                              "gps_time":<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              0.881948247<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt;
                              -------------------------------------------=
---------------------------<br>
                              &gt; -------------<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; In
                              the code you can find commented out the
                              usual way to<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              access the sensor using multi_usrp and
                              get_mboard_sensor. The<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              results are<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; quite<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              similar.<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I
                              wonder if anybody encountered this issue
                              before or<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              addressed it<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; in<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; any
                              way.<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I
                              wonder why it takes so much time to get
                              the value of GPS<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; time<=
br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; when<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; it
                              is a simple parsing of an NMEA message
                              coming from the GPS<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              receiver.<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I am
                              trying now various tricks to make the
                              software robust<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; and<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; immune<br=
>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; to
                              this phenomenon. I can report my findings
                              further if I<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              succeed<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; to<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; find
                              a workaround if there is any interest.<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Can
                              anyone comment on this? Can this be
                              resolved so that the<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; reading<b=
r>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; of
                              gps_time will be much faster?<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Is
                              there another way to get GPS time faster
                              indirectly? Maybe<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; from
                              parsing NMEA messages ourselves?<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              Regards,<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Ofer
                              Saferman<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; This
                              probably has to do with the way that
                              particular "sensor"<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              works--the<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; NMEA
                              time value is only emitted once per
                              second, and the<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=
=A0 code
                              for that sensor has some heuristic for
                              determining<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;
                              "freshness"<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; of the
                              value.<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; I'll
                              point out that on E310, the system is
                              configured to use<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; GPSD,<br>
                              &gt; so<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; that the
                              Linux system time across several systems
                              that have<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; all<br>
                              &gt; been<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=
=A0
                              "listening" to GPS for a while will all be
                              synchronized<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; quite<br>
                              &gt; well.<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; --<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; This message
                              has been scanned for viruses and dangerous
                              content<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; by
                              *MailScanner* &lt;<a
                                moz-do-not-send=3D"true"
                                href=3D"http://www.mailscanner.info/"
                                target=3D"_blank">http://www.mailscanner.=
info/</a>&gt;,
                              and is<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; believed to
                              be clean.<br>
                              &gt;
                              ___________________________________________=
____<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; USRP-users
                              mailing list -- <a moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users@lists.ettus.com=
"
                                target=3D"_blank">
                                usrp-users@lists.ettus.com</a> To<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt; unsubscribe
                              send an email to <a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users-leave@lists.ett=
us.com"
                                target=3D"_blank">
                                usrp-users-leave@lists.ettus.com</a><br>
                              &gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;&gt;
                              ___________________________________________=
____<br>
                              &gt; &gt;&gt;&gt;&gt; USRP-users mailing
                              list -- <a moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users@lists.ettus.com=
"
                                target=3D"_blank">
                                usrp-users@lists.ettus.com</a> To<br>
                              &gt; &gt;&gt;&gt;&gt; unsubscribe send an
                              email to <a moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users-leave@lists.ett=
us.com"
                                target=3D"_blank">
                                usrp-users-leave@lists.ettus.com</a><br>
                              &gt; &gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt; --<br>
                              &gt; &gt;&gt;&gt; This message has been
                              scanned for viruses and dangerous content
                              by<br>
                              &gt; &gt;&gt;&gt; *MailScanner* &lt;<a
                                moz-do-not-send=3D"true"
                                href=3D"http://www.mailscanner.info/"
                                target=3D"_blank">http://www.mailscanner.=
info/</a>&gt;,
                              and is believed to<br>
                              &gt; &gt;&gt;&gt; be clean.<br>
                              &gt; &gt;&gt;&gt;<br>
                              &gt; &gt;&gt;&gt;<br>
                              &gt; &gt;&gt; --<br>
                              &gt; &gt;&gt; This message has been
                              scanned for viruses and dangerous content
                              by<br>
                              &gt; &gt;&gt; *MailScanner* &lt;<a
                                moz-do-not-send=3D"true"
                                href=3D"http://www.mailscanner.info/"
                                target=3D"_blank">http://www.mailscanner.=
info/</a>&gt;,
                              and<br>
                              &gt; is<br>
                              &gt; &gt;&gt; believed to be clean.<br>
                              &gt; &gt;&gt;<br>
                              &gt; &gt;&gt;<br>
                              &gt; &gt;&gt;<br>
                              &gt; &gt;<br>
                              &gt; &gt;<br>
                              &gt; &gt;
                              ___________________________________________=
____<br>
                              &gt; &gt; USRP-users mailing list -- <a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users@lists.ettus.com=
"
                                target=3D"_blank">
                                usrp-users@lists.ettus.com</a> To
                              unsubscribe<br>
                              &gt; &gt; send an email to <a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users-leave@lists.ett=
us.com"
                                target=3D"_blank">
                                usrp-users-leave@lists.ettus.com</a><br>
                              &gt; &gt;
                              ___________________________________________=
____<br>
                              &gt; USRP-users mailing list -- <a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users@lists.ettus.com=
"
                                target=3D"_blank">
                                usrp-users@lists.ettus.com</a> To
                              unsubscribe<br>
                              &gt; send an email to <a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users-leave@lists.ett=
us.com"
                                target=3D"_blank">
                                usrp-users-leave@lists.ettus.com</a><br>
                              &gt;<br>
                              <br>
                              --<br>
                              This message has been scanned for viruses
                              and dangerous content by MailScanner, and
                              is believed to be clean.<br>
                              <br>
                              -------------- next part --------------<br>
                              A message part incompatible with plain
                              text digests has been removed ...<br>
                              Name: not available<br>
                              Type: text/html<br>
                              Size: 27834 bytes<br>
                              Desc: not available<br>
                              <br>
                              ------------------------------<br>
                              <br>
                              Subject: Digest Footer<br>
                              <br>
_______________________________________________<br>
                              USRP-users mailing list -- <a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users@lists.ettus.com=
"
                                target=3D"_blank">
                                usrp-users@lists.ettus.com</a> To
                              unsubscribe send an email to <a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users-leave@lists.ett=
us.com"
                                target=3D"_blank">
                                usrp-users-leave@lists.ettus.com</a><br>
                              <br>
                              <br>
                              ------------------------------<br>
                              <br>
                              End of USRP-users Digest, Vol 128, Issue 7<=
br>
                              ******************************************<=
/span></p>
                        </blockquote>
                      </div>
                    </div>
                  </div>
                </blockquote>
              </div>
            </div>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap=3D"">_______________________________________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------010409030502000704040906--

--===============0910521863151925539==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0910521863151925539==--
