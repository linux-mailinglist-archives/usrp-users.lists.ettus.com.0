Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 965582853E
	for <lists+usrp-users@lfdr.de>; Thu, 23 May 2019 19:46:44 +0200 (CEST)
Received: from [::1] (port=38290 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hTrnb-0004nn-QD; Thu, 23 May 2019 13:46:39 -0400
Received: from starfish.geekisp.com ([216.168.135.166]:29966)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <philip@balister.org>) id 1hTrn3-0004iD-OP
 for usrp-users@lists.ettus.com; Thu, 23 May 2019 13:46:35 -0400
Received: (qmail 22787 invoked by uid 1003); 23 May 2019 17:45:25 -0000
Received: from unknown (HELO ?192.168.11.100?)
 (philip@opensdr.com@73.152.143.112)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 23 May 2019 17:45:24 -0000
To: Jason Matusiak <jason@gardettoengineering.com>,
 Ettus Mail List <usrp-users@lists.ettus.com>
References: <BL0PR12MB2340105F797573EE26E8A94BAF070@BL0PR12MB2340.namprd12.prod.outlook.com>
 <171e841b-4b5b-9906-5170-b5b572ecd1e8@balister.org>
 <BL0PR12MB23405B101450C7833CFCBC16AF070@BL0PR12MB2340.namprd12.prod.outlook.com>
 <508d4b7c-b2ad-de58-d294-be80d2845e33@balister.org>
 <BL0PR12MB23400161A1572DF6798C2903AF070@BL0PR12MB2340.namprd12.prod.outlook.com>
 <BL0PR12MB2340408E4880262FA37CF3FAAF010@BL0PR12MB2340.namprd12.prod.outlook.com>
 <151d15f6-d8c7-a3b2-7a60-bbe76223384a@balister.org>
 <BL0PR12MB2340BA94FF8739B061AB2B89AF010@BL0PR12MB2340.namprd12.prod.outlook.com>
 <3afd262c-763e-fb47-a4c5-a2f1a2411977@balister.org>
 <BL0PR12MB23402482C4BEEAD6A4A162D9AF010@BL0PR12MB2340.namprd12.prod.outlook.com>
Openpgp: preference=signencrypt
Autocrypt: addr=philip@balister.org; prefer-encrypt=mutual; keydata=
 xsBNBE6PN4EBCADXwOSVOvTrJ370tH2RmiR22OuCBcKfnKTLztyV5zA0veDB1kmrIajh+sJe
 HWNqsib0v19S3wdrvqzKrztSfNAgUctvkAuTOloU81dmbAjDSge6nFxjzIIz6XjNvmP5xl9J
 rstPm4i4dhAs5436xf4Bh0vn3C/Bp4fKwXBSW/Xto7vuiuSK03ojon3F8O2WNEmKxHyubFP1
 2tNvXOp/PeAR4LTnYq6fdAAofvbpbPDBg8qICe6j1UXaIyU93IbW+bJp1RFbeakWxiTw+eQ2
 fVjG5XnubNX0YBlmjHDJhjeqV1uwkImNHlZknecLjT7g37vIMwz+PTfPIhmIGffzqtHlABEB
 AAHNJVBoaWxpcCBCYWxpc3RlciA8cGhpbGlwQGJhbGlzdGVyLm9yZz7CwH4EEwECACgCGyMG
 CwkIBwMCBhUIAgkKCwQWAgMBAh4BAheABQJYM1D9BQkRKOdqAAoJEMDJd4rr0merDX4H/3Pr
 nYKDnml7LRiikoOTFJb4r7ub04skrkGI2DAYvRUPH110KXaan84Qo2Yl4r/ma15Lpqx+cdPR
 3KbFlSWyjgY6CMN/BclutsK4mFkoxnmhdYJvc5M2TDfZLxBPMTeQiHo0MwxUB5v81mv812bx
 YKfEOg3ndk7C/TE0Q8ZER7p6fU3ol/e0ilLyaCpd85nkEcOEI7BdBBGhKWii+Cwvv8g2ofQZ
 3wAsqQFp7PFxlEjo5Xc1QGqo7L+UlDG23QjUn33n+wZMZm9EUZFu1c1MAGZsvXiqKw8P07Mj
 yyf6h6EMVP8wME7gnkxsZkpKv04mSvKpDLIInmRW9ZlHXaJ4YxjOwE0ETo83gQEIAPs+ZC0R
 gF4blrRIiVHdkARncAxUwSUbti5Ku23dQ0iBizozh4YGucgW48gxsvJCkCc9s/4C9e3vYiCZ
 GVGC8x6Ll3vE7xwRQ/euVqJ0mXG7tNK1zAPpSgI6aooPSZCW7PBvwY8uMvzzCzP+EBd0+oA5
 uXQSEcyOJUYy4beferoHUiBjBkyNd+v2iaJf7KjAYYxJOcPvtnq/VL09hlmtCD5zghOn80rt
 LqF66BJkHmATopSWyor1qz7gmowdCkFkUJDNW7yJT1wVANqDd9P5A8vYhngwJTHsvXVftmvB
 gLiJjYuKst36G2AOHgm4ls5jRMa/k7jWue1RKM5LxzgBtLUAEQEAAcLAZQQYAQIADwIbDAUC
 WDNRbAUJESjn5AAKCRDAyXeK69Jnq1qYB/93aiBdenAuu0H/zGWEFFB14cdhDR4S4q0EbfXl
 1z9o3Irazw6WMtLe12zJ4/Xl41Mh/IH8/+AgDnigisrkKRN1TkiOGDUVnS0akkhML3ONbeFd
 ocYEwBAPDTxAaWNoyjDe/bORokSJn31cFoG6QYyzUct79npHorbaXW0zW+KC77Do53yUKQ8+
 icWpfiCMk1YzSHCr0y5NZNVxac9a0+IDzH/YBbNdJLNaMvXcuege1Qqz85pdR0P4XuCVRD2j
 ZAbcGJzZXlu9ZzpIHjtZoyF8paJRMQwzWEO3/Txksmm7K8eu8Tz2JVpjiOIj44MOTKoRGKjO
 6eUfr0u7CwnEyqiQ
Message-ID: <fecf1aa1-6f3b-1f8d-9610-d984a5bbb0cd@balister.org>
Date: Thu, 23 May 2019 13:45:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <BL0PR12MB23402482C4BEEAD6A4A162D9AF010@BL0PR12MB2340.namprd12.prod.outlook.com>
Content-Language: en-MW
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] GR in the E320
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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

On 05/23/2019 12:25 PM, Jason Matusiak via USRP-users wrote:
> OK, I've actually done that before, but when I boot up and run this command, it isn't happy:
> root@ni-neon-rev2-mender:/usr/share/gnuradio/examples/analog# python ./fmtest.py
> Traceback (most recent call last):
>   File "./fmtest.py", line 23, in <module>
>     from gnuradio import gr
>   File "/usr/lib/python2.7/site-packages/gnuradio/gr/__init__.py", line 44, in <module>
>     from top_block import *
>   File "/usr/lib/python2.7/site-packages/gnuradio/gr/top_block.py", line 30, in <module>
>     from hier_block2 import hier_block2
>   File "/usr/lib/python2.7/site-packages/gnuradio/gr/hier_block2.py", line 25, in <module>
>     import pmt
>   File "/usr/lib/python2.7/site-packages/pmt/__init__.py", line 58, in <module>
>     from pmt_to_python import pmt_to_python as to_python
>   File "/usr/lib/python2.7/site-packages/pmt/pmt_to_python.py", line 22, in <module>
>     import numpy
>   File "/usr/lib/python2.7/site-packages/numpy/__init__.py", line 142, in <module>
>     from . import add_newdocs
>   File "/usr/lib/python2.7/site-packages/numpy/add_newdocs.py", line 13, in <module>
>     from numpy.lib import add_newdoc
>   File "/usr/lib/python2.7/site-packages/numpy/lib/__init__.py", line 8, in <module>
>     from .type_check import *
>   File "/usr/lib/python2.7/site-packages/numpy/lib/type_check.py", line 11, in <module>
>     import numpy.core.numeric as _nx
>   File "/usr/lib/python2.7/site-packages/numpy/core/__init__.py", line 35, in <module>
>     from . import _internal  # for freeze programs
>   File "/usr/lib/python2.7/site-packages/numpy/core/_internal.py", line 18, in <module>
>     from .numerictypes import object_
>   File "/usr/lib/python2.7/site-packages/numpy/core/numerictypes.py", line 87, in <module>
>     import numbers
> ImportError: No module named numbers


Run python and then try "import numbers". See that fail :)

Now try to figure what package provides numbers. I'm busy on a
non-gnuradio thing at them moment, but will try and make sure this isn't
a problem with the numpy recipe.

Philip

> 
> 
> ________________________________
> From: Philip Balister <philip@balister.org>
> Sent: Thursday, May 23, 2019 12:04 PM
> To: Jason Matusiak; Ettus Mail List
> Subject: Re: [USRP-users] GR in the E320
> 
> On 05/23/2019 11:54 AM, Jason Matusiak via USRP-users wrote:
>> OK, thanks Philip,
>>
>> This is all a little new/different for me.
>>
>> So once I've added in meta-sdr, all I should need to do is run gnuradio-demo-image?
>>
>> also, would I need to modify the following environment variables since I am building something out of meta-sdr?
>>
>> $ TEMPLATECONF=$(pwd)/meta-ettus/<MACHINELAYER>/conf
>> $ source ./oe-core/oe-init-build-env ./build ./bitbake
> 
> My email fu is terrible today ....
> 
> Probably use the templates for the E320 build then add meta-sdr by hand,
> I'd build dev image first, it doesn't have an x server.
> 
> And once again, I do contract work to make this stuff work, beyond the
> cases I can play with personally.
> 
> Philip
> 
> 
>>
>>
>> ________________________________
>> From: Philip Balister <philip@balister.org>
>> Sent: Thursday, May 23, 2019 11:43 AM
>> To: Jason Matusiak; Ettus Mail List
>> Subject: Re: [USRP-users] GR in the E320
>>
>> Oops, replied to copy in my inbox ...
>>
>> Adding meta-sdr to pick up gnuradio shouldn't have changed any machine
>> specific config.
>>
>> Regarding mender, it is great if you have a rack of usrp's to update,
>> but if you are working with one, I'd skip it and write cards by hand.
>> >From what I understand this would be much quicker.
>>
>> I don't have an E320, so pretty much flying blind regarding hardware issues.
>>
>> Philip
>>
>> On 05/23/2019 11:16 AM, Jason Matusiak via USRP-users wrote:
>>> Philip, before building one of your images, does anything need to be done to get ethernet to work?  It seems like after using mender to setup a new image and rebooting, I cannot bring up sfp0 to save my life.  It won't work until I reboot again, but I think that that drops the mender image reverts to the old one since I didn't commit it.   Any steps I am missing?
>>>
>>>
>>> ________________________________
>>> From: Jason Matusiak
>>> Sent: Tuesday, May 21, 2019 11:18 AM
>>> To: Philip Balister; Ettus Mail List
>>> Subject: Re: [USRP-users] GR in the E320
>>>
>>> OK, that seems to be building (who knows if it will succeed), thanks.
>>>
>>> I can't seem to find directions online about how to add in my own recipes, or those written up somewhere?  Basically, I am trying to figure out how I can add something like gr-my_blocks to the project (either part of bitbake, or as a stand-alone build I move over to the device afterwards.
>>>
>>> ________________________________
>>> From: Philip Balister <philip@balister.org>
>>> Sent: Tuesday, May 21, 2019 11:05 AM
>>> To: Jason Matusiak; Ettus Mail List
>>> Subject: Re: [USRP-users] GR in the E320
>>>
>>> Edit bblayers.conf in your conf directory. There is also an add layer
>>> command, but I'm old fashioned :)
>>>
>>> Philip
>>>
>>> On 05/21/2019 10:50 AM, Jason Matusiak via USRP-users wrote:
>>>> Interesting, thanks.  They are using sumo, so I will try to check that branch out and see how it works.
>>>>
>>>> I will need to research how to add it in and build it as I see pulling it down and checking out sumo alone isn't enough.
>>>>
>>>> Thanks for the insights.
>>>>
>>>> ________________________________
>>>> From: Philip Balister <philip@balister.org>
>>>> Sent: Tuesday, May 21, 2019 10:39 AM
>>>> To: Jason Matusiak; Ettus Mail List
>>>> Subject: Re: [USRP-users] GR in the E320
>>>>
>>>> You need the meta-sdr layer. Choosing a branch may be tricky, only the
>>>> older ones have 3.7 support. My recent work in master is all in support
>>>> of transitioning to the unreleased 3.8 gnuradio, which is much better
>>>> for embedded builds.
>>>>
>>>> Might also be some pain due to Ettus forking the uhd recipe.
>>>>
>>>> Philip
>>>>
>>>> On 05/21/2019 10:30 AM, Jason Matusiak via USRP-users wrote:
>>>>> OK, so I am a total newbie when it comes to open-embedded.  I know that the docker to build doesn't include a gnuradio-image bitbake option (only developer-image), so I tried to make one.  I created a new gnuradio-image.bb file and added gnuradio to the list of things to build.  Sadly, I appear to need to do more than that as it won't build:
>>>>>
>>>>> oe-builder@b3d40f15af25:~$ bitbake gnuradio-image --verbose
>>>>> Loading cache: 100% |##########################################################################################################################################################################################################################| Time: 0:00:00
>>>>> Loaded 2964 entries from dependency cache.
>>>>> NOTE: Resolving any missing task queue dependencies
>>>>> NOTE: selecting opkg-utils-native to satisfy virtual/update-alternatives-native due to PREFERRED_PROVIDERS
>>>>> NOTE: selecting linux-yocto to satisfy virtual/kernel due to PREFERRED_PROVIDERS
>>>>> NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native due to PREFERRED_PROVIDERS
>>>>> NOTE: selecting opkg-native to satisfy opkg-native due to PREFERRED_PROVIDERS
>>>>> NOTE: selecting nativesdk-glibc to satisfy runtime nativesdk-glibc due to PREFERRED_PROVIDER_virtual/nativesdk-libc = nativesdk-glibc
>>>>> ERROR: Nothing RPROVIDES 'gnuradio' (but /home/oe-builder/meta-ettus/meta-ettus-core/recipes-core/images/gnuradio-image.bb RDEPENDS on or otherwise requires it)
>>>>> NOTE: Runtime target 'gnuradio' is unbuildable, removing...
>>>>> Missing or unbuildable dependency chain was: ['gnuradio']
>>>>> NOTE: Target 'gnuradio-image' is unbuildable, removing...
>>>>> Missing or unbuildable dependency chain was: ['gnuradio-image', 'gnuradio']
>>>>> ERROR: Required build target 'gnuradio-image' has no buildable providers.
>>>>> Missing or unbuildable dependency chain was: ['gnuradio-image', 'gnuradio']
>>>>>
>>>>> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>>>>>
>>>>> Anyone know how to do add it (once that works, I'll want to add some of my own OOT packages as well)?
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>>
>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> 
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
