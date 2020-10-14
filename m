Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2C828E423
	for <lists+usrp-users@lfdr.de>; Wed, 14 Oct 2020 18:15:21 +0200 (CEST)
Received: from [::1] (port=59550 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kSjQq-0003az-RE; Wed, 14 Oct 2020 12:15:16 -0400
Received: from starfish.geekisp.com ([216.168.135.166]:5466)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <philip@balister.org>) id 1kSjQm-0003NF-T4
 for usrp-users@lists.ettus.com; Wed, 14 Oct 2020 12:15:12 -0400
Received: (qmail 16402 invoked by uid 1003); 14 Oct 2020 16:09:13 -0000
Received: from unknown (HELO ?192.168.11.139?)
 (philip@opensdr.com@73.251.10.143)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 14 Oct 2020 16:09:13 -0000
To: Martin Braun <martin.braun@ettus.com>,
 Michael Dickens <michael.dickens@ettus.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
References: <SN2PR01MB1968CB85A0B328D1E069A0EDA8070@SN2PR01MB1968.prod.exchangelabs.com>
 <CAGNhwTOCLRdzV7pn0yv0+vOOE5ozHqg684YRgwC3=-T_f72AtQ@mail.gmail.com>
 <CAFOi1A5wY9OEucm_+CR1VAnC982Q4ec=7nk+mr0NS1-MoMAL5Q@mail.gmail.com>
Autocrypt: addr=philip@balister.org; prefer-encrypt=mutual; keydata=
 mQENBE6PN4EBCADXwOSVOvTrJ370tH2RmiR22OuCBcKfnKTLztyV5zA0veDB1kmrIajh+sJe
 HWNqsib0v19S3wdrvqzKrztSfNAgUctvkAuTOloU81dmbAjDSge6nFxjzIIz6XjNvmP5xl9J
 rstPm4i4dhAs5436xf4Bh0vn3C/Bp4fKwXBSW/Xto7vuiuSK03ojon3F8O2WNEmKxHyubFP1
 2tNvXOp/PeAR4LTnYq6fdAAofvbpbPDBg8qICe6j1UXaIyU93IbW+bJp1RFbeakWxiTw+eQ2
 fVjG5XnubNX0YBlmjHDJhjeqV1uwkImNHlZknecLjT7g37vIMwz+PTfPIhmIGffzqtHlABEB
 AAG0JVBoaWxpcCBCYWxpc3RlciA8cGhpbGlwQGJhbGlzdGVyLm9yZz6JAT4EEwECACgCGyMG
 CwkIBwMCBhUIAgkKCwQWAgMBAh4BAheABQJYM1D9BQkRKOdqAAoJEMDJd4rr0merDX4H/3Pr
 nYKDnml7LRiikoOTFJb4r7ub04skrkGI2DAYvRUPH110KXaan84Qo2Yl4r/ma15Lpqx+cdPR
 3KbFlSWyjgY6CMN/BclutsK4mFkoxnmhdYJvc5M2TDfZLxBPMTeQiHo0MwxUB5v81mv812bx
 YKfEOg3ndk7C/TE0Q8ZER7p6fU3ol/e0ilLyaCpd85nkEcOEI7BdBBGhKWii+Cwvv8g2ofQZ
 3wAsqQFp7PFxlEjo5Xc1QGqo7L+UlDG23QjUn33n+wZMZm9EUZFu1c1MAGZsvXiqKw8P07Mj
 yyf6h6EMVP8wME7gnkxsZkpKv04mSvKpDLIInmRW9ZlHXaJ4Yxi5AQ0ETo83gQEIAPs+ZC0R
 gF4blrRIiVHdkARncAxUwSUbti5Ku23dQ0iBizozh4YGucgW48gxsvJCkCc9s/4C9e3vYiCZ
 GVGC8x6Ll3vE7xwRQ/euVqJ0mXG7tNK1zAPpSgI6aooPSZCW7PBvwY8uMvzzCzP+EBd0+oA5
 uXQSEcyOJUYy4beferoHUiBjBkyNd+v2iaJf7KjAYYxJOcPvtnq/VL09hlmtCD5zghOn80rt
 LqF66BJkHmATopSWyor1qz7gmowdCkFkUJDNW7yJT1wVANqDd9P5A8vYhngwJTHsvXVftmvB
 gLiJjYuKst36G2AOHgm4ls5jRMa/k7jWue1RKM5LxzgBtLUAEQEAAYkBJQQYAQIADwIbDAUC
 WDNRbAUJESjn5AAKCRDAyXeK69Jnq1qYB/93aiBdenAuu0H/zGWEFFB14cdhDR4S4q0EbfXl
 1z9o3Irazw6WMtLe12zJ4/Xl41Mh/IH8/+AgDnigisrkKRN1TkiOGDUVnS0akkhML3ONbeFd
 ocYEwBAPDTxAaWNoyjDe/bORokSJn31cFoG6QYyzUct79npHorbaXW0zW+KC77Do53yUKQ8+
 icWpfiCMk1YzSHCr0y5NZNVxac9a0+IDzH/YBbNdJLNaMvXcuege1Qqz85pdR0P4XuCVRD2j
 ZAbcGJzZXlu9ZzpIHjtZoyF8paJRMQwzWEO3/Txksmm7K8eu8Tz2JVpjiOIj44MOTKoRGKjO
 6eUfr0u7CwnEyqiQ
Message-ID: <4fcc0ced-e20c-2b9e-90ac-2cf36704f391@balister.org>
Date: Wed, 14 Oct 2020 12:14:31 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAFOi1A5wY9OEucm_+CR1VAnC982Q4ec=7nk+mr0NS1-MoMAL5Q@mail.gmail.com>
Content-Language: en-US
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
From: Philip Balister via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Philip Balister <philip@balister.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

On 10/14/20 6:00 AM, Martin Braun via USRP-users wrote:
> A quick reminder that
> 
> uhd_images_downloader -t e320 -t sdk
> 
> will download the corresponding SDK for your UHD version even when the link
> Michael provided is no longer accurate.

Installing uhd on a machine just to figure out a download link seems
excessive. Can you publish direct links in a form that do not go stale?

Philip

> 
> M
> 
> On Mon, 12 Oct 2020, 17:48 Michael Dickens via USRP-users, <
> usrp-users@lists.ettus.com> wrote:
> 
>> Hi Mark - You need to use a more recent SDK for the cross-build. Here are
>> the SDKs for the 2 most recent UHD releases. I hope this helps! - MLD
>>
>> <
>> https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e320_sdk_default-v3.15.0.0.zip
>>>
>> <
>> https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.0.0.0/e3xx_e320_sdk_default-v4.0.0.0.zip
>>>
>>
>>
>> On Mon, Oct 12, 2020 at 10:47 AM Andrews, Mark J. via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hello,
>>>
>>> I am trying to cross-compile UHD on an E320 with the OE SDK, but I cannot
>>> get past the cmake step due to multiple errors.  On the host PC, I am able
>>> to install the SDK and source the environment variable without issues.
>>> When I go to build UHD, the first error is that the CMakeLists.txt file for
>>> UHD 3.15 has a minimum CMake version of 3.5.1, but the OE SDK cmake is
>>> version 2.8.12.2 (my host PC is version 3.18.4).  I manually edited the
>>> CMakeLists.txt to accept the older version of CMake, but then it has a
>>> boost version error and cannot find several python packages (platform,
>>> mako, requests, numpy).  I again edited it for the Boost version, but it
>>> still can't find the python packages.  Do I need to somehow install all the
>>> UHD dependencies in the OE SDK paths after installing it?  Or am I doing
>>> something else wrong?
>>>
>>> I also tried running "import sys" to see the Python path configuration
>>> and the "program name", "sys._base_executable", and "sys.executable" are
>>> all pointing to "/usr/bin/python3" instead of the
>>> "/home/~/oe/sysroots/x86_64-oesdk-linux" path.  Not sure if that's part of
>>> the problem or not, but it seemed suspicious.  The cmake and import sys
>>> outputs are copied below.
>>>
>>>
>>> ===============================================================
>>> cmake -DCMAKE_TOOLCHAIN_FILE=../host/cmake/Toolchains/oe-sdk_cross.cmake
>>> -DCMAKE_INSTALL_PREFIX=/usr -DENABLE_E300=ON ..
>>>
>>> -- Configuring the Python interpreter...
>>> -- Manually determining build Python version...
>>> ImportError: No module named site
>>> -- Python interpreter:
>>> /home/~/oe/sysroots/x86_64-oesdk-linux/usr/bin/python Version:
>>> -- Override with: -DPYTHON_EXECUTABLE=<path-to-python>
>>> -- Manually determining runtime Python version...
>>> ImportError: No module named site
>>> -- Python runtime interpreter:
>>> /home/~/oe/sysroots/x86_64-oesdk-linux/usr/bin/python Version:
>>> -- Override with: -DRUNTIME_PYTHON_EXECUTABLE=<path-to-python>
>>> -- Finding Python Libraries...
>>> CMake Warning (dev) at cmake/Modules/UHDPython.cmake:168 (find_package):
>>>   Ignoring EXACT since no version is requested.
>>> Call Stack (most recent call first):
>>>   cmake/Modules/UHDVersion.cmake:9 (include)
>>>   cmake/Modules/UHDPackage.cmake:9 (include)
>>>   CMakeLists.txt:103 (include)
>>> This warning is for project developers.  Use -Wno-dev to suppress it.
>>>
>>> -- Python Libraries:
>>> /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/
>>> libpython2.7.so
>>> -- Python include directories:
>>> /home/`/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/include/python2.7
>>> -- Working off of feature or development branch. Updating version number.
>>> ImportError: No module named site
>>> ImportError: No module named site
>>> ImportError: No module named site
>>> -- Using UHD Images Directory: /usr/share/uhd/images
>>> -- Build type not specified: defaulting to release.
>>> --
>>> -- Configuring Boost C++ Libraries...
>>> --
>>> -- Checking for Boost version 1.57 or greater
>>> --   Looking for required Boost components...
>>> --     Disabling boost::asio use of std::string_view
>>> --   Boost version: 1.57.0
>>> --   Boost include directories:
>>> /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/include
>>> --   Boost library directories:
>>> /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib
>>> --   Boost libraries:
>>> /home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_chrono-mt.so;/home/!/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_date_time-mt.so;/home/!/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_filesystem-mt.so;/home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_program_options-mt.so;/home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_regex-mt.so;/home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_unit_test_framework.so;/home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_serialization-mt.so;/home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_thread-mt.so;/home/~/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/lib/libboost_system-mt.so
>>> -- Looking for Boost version 1.57 or greater - found
>>> --
>>> -- Python checking for Python version 2.7 or greater
>>> ImportError: No module named site
>>> -- Python checking for Python version 2.7 or greater - "import platform"
>>> failed
>>> --
>>> -- Python checking for Mako templates 0.4.2 or greater
>>> ImportError: No module named site
>>> -- Python checking for Mako templates 0.4.2 or greater - "import mako"
>>> failed
>>> --
>>> -- Python checking for requests 2.0 or greater
>>> ImportError: No module named site
>>> -- Python checking for requests 2.0 or greater - "import requests" failed
>>> --
>>> -- Python checking for numpy 1.7 or greater
>>> ImportError: No module named site
>>> -- Python checking for numpy 1.7 or greater - "import numpy" failed
>>> --
>>> -- Configuring LibUHD support...
>>> --   Dependency Boost_FOUND = 1
>>> --   Dependency HAVE_PYTHON_PLAT_MIN_VERSION = FALSE
>>> --   Dependency HAVE_PYTHON_MODULE_MAKO = FALSE
>>> CMake Error at cmake/Modules/UHDComponent.cmake:59 (message):
>>>   Dependencies for required component LibUHD not met.
>>> Call Stack (most recent call first):
>>>   CMakeLists.txt:363 (LIBUHD_REGISTER_COMPONENT)
>>>
>>>
>>> ====================================================
>>> import sys
>>>
>>> Python path configuration:
>>>   PYTHONHOME = '/home/~/oe/sysroots/x86_64-oesdk-linux'
>>>   PYTHONPATH = (not set)
>>>   program name = '/usr/bin/python3'
>>>   isolated = 0
>>>   environment = 1
>>>   user site = 1
>>>   import site = 1
>>>   sys._base_executable = '/usr/bin/python3'
>>>   sys.base_prefix = '/home/~/oe/sysroots/x86_64-oesdk-linux'
>>>   sys.base_exec_prefix = '/home/~/oe/sysroots/x86_64-oesdk-linux'
>>>   sys.executable = '/usr/bin/python3'
>>>   sys.prefix = '/home/~/oe/sysroots/x86_64-oesdk-linux'
>>>   sys.exec_prefix = '/home/~/oe/sysroots/x86_64-oesdk-linux'
>>>   sys.path = [
>>>     '/home/~/oe/sysroots/x86_64-oesdk-linux/lib/python38.zip',
>>>     '/home/~/oe/sysroots/x86_64-oesdk-linux/lib/python3.8',
>>>     '/home/~/oe/sysroots/x86_64-oesdk-linux/lib/python3.8/lib-dynload',
>>>   ]
>>> Fatal Python error: init_fs_encoding: failed to get the Python codec of
>>> the filesystem encoding
>>> Python runtime state: core initialized
>>> ModuleNotFoundError: No module named 'encodings'
>>>
>>>
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> 
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
