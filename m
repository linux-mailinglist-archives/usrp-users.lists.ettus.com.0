Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 352F025254
	for <lists+usrp-users@lfdr.de>; Tue, 21 May 2019 16:40:33 +0200 (CEST)
Received: from [::1] (port=58338 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hT5wN-0000XK-Ea; Tue, 21 May 2019 10:40:31 -0400
Received: from starfish.geekisp.com ([216.168.135.166]:21481)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <philip@balister.org>) id 1hT5vp-0000Oj-Ku
 for usrp-users@lists.ettus.com; Tue, 21 May 2019 10:40:27 -0400
Received: (qmail 451 invoked by uid 1003); 21 May 2019 14:39:17 -0000
Received: from unknown (HELO ?192.168.11.100?)
 (philip@opensdr.com@73.152.143.112)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 21 May 2019 14:39:17 -0000
To: Jason Matusiak <jason@gardettoengineering.com>,
 Ettus Mail List <usrp-users@lists.ettus.com>
References: <BL0PR12MB2340105F797573EE26E8A94BAF070@BL0PR12MB2340.namprd12.prod.outlook.com>
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
Message-ID: <171e841b-4b5b-9906-5170-b5b572ecd1e8@balister.org>
Date: Tue, 21 May 2019 10:39:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <BL0PR12MB2340105F797573EE26E8A94BAF070@BL0PR12MB2340.namprd12.prod.outlook.com>
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

You need the meta-sdr layer. Choosing a branch may be tricky, only the
older ones have 3.7 support. My recent work in master is all in support
of transitioning to the unreleased 3.8 gnuradio, which is much better
for embedded builds.

Might also be some pain due to Ettus forking the uhd recipe.

Philip

On 05/21/2019 10:30 AM, Jason Matusiak via USRP-users wrote:
> OK, so I am a total newbie when it comes to open-embedded.  I know that the docker to build doesn't include a gnuradio-image bitbake option (only developer-image), so I tried to make one.  I created a new gnuradio-image.bb file and added gnuradio to the list of things to build.  Sadly, I appear to need to do more than that as it won't build:
> 
> oe-builder@b3d40f15af25:~$ bitbake gnuradio-image --verbose
> Loading cache: 100% |##########################################################################################################################################################################################################################| Time: 0:00:00
> Loaded 2964 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
> NOTE: selecting opkg-utils-native to satisfy virtual/update-alternatives-native due to PREFERRED_PROVIDERS
> NOTE: selecting linux-yocto to satisfy virtual/kernel due to PREFERRED_PROVIDERS
> NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native due to PREFERRED_PROVIDERS
> NOTE: selecting opkg-native to satisfy opkg-native due to PREFERRED_PROVIDERS
> NOTE: selecting nativesdk-glibc to satisfy runtime nativesdk-glibc due to PREFERRED_PROVIDER_virtual/nativesdk-libc = nativesdk-glibc
> ERROR: Nothing RPROVIDES 'gnuradio' (but /home/oe-builder/meta-ettus/meta-ettus-core/recipes-core/images/gnuradio-image.bb RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'gnuradio' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['gnuradio']
> NOTE: Target 'gnuradio-image' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['gnuradio-image', 'gnuradio']
> ERROR: Required build target 'gnuradio-image' has no buildable providers.
> Missing or unbuildable dependency chain was: ['gnuradio-image', 'gnuradio']
> 
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> 
> Anyone know how to do add it (once that works, I'll want to add some of my own OOT packages as well)?
> 
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
