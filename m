Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 199DC10924
	for <lists+usrp-users@lfdr.de>; Wed,  1 May 2019 16:32:54 +0200 (CEST)
Received: from [::1] (port=56460 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hLqHy-0005HA-2u; Wed, 01 May 2019 10:32:50 -0400
Received: from sanddollar.geekisp.com ([216.168.135.167]:15244)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <philip@balister.org>) id 1hLqHP-00053j-Bn
 for usrp-users@lists.ettus.com; Wed, 01 May 2019 10:32:45 -0400
Received: (qmail 20878 invoked by uid 1003); 1 May 2019 14:31:39 -0000
Received: from unknown (HELO ?192.168.11.100?)
 (philip@opensdr.com@73.152.143.112)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 1 May 2019 14:31:39 -0000
To: Jason Matusiak <jason@gardettoengineering.com>,
 Ettus Mail List <usrp-users@lists.ettus.com>
References: <BL0PR12MB2340BD354F1A9FDB6CE37E97AF3B0@BL0PR12MB2340.namprd12.prod.outlook.com>
 <BL0PR12MB234015C72FC859EABF9D3918AF3B0@BL0PR12MB2340.namprd12.prod.outlook.com>
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
Message-ID: <68d2c33b-0aed-8d4e-a233-f14bb460049f@balister.org>
Date: Wed, 1 May 2019 10:31:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <BL0PR12MB234015C72FC859EABF9D3918AF3B0@BL0PR12MB2340.namprd12.prod.outlook.com>
Content-Language: en-MW
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] E320 numpy missing?
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

On 05/01/2019 09:55 AM, Jason Matusiak via USRP-users wrote:
> I also get a "ImportError: No module named sip" when I try to run: uhd_siggen_gui
> 
> So I think a few things might be missing from the cross-compile setup.

I took a few minutes and looked at the current state of the BSP. It
looks like you might have this image:

https://github.com/EttusResearch/meta-ettus/blob/master/meta-ettus-core/recipes-core/images/developer-image.bb

I forget where numpy is the gnuradio dependency tree, but I'm going to
guess if you enable python support in gnuradio (yes it might be possible
to use gnuradio without python) you will need numpy to build/run.

Philip

> 
> ________________________________
> From: Jason Matusiak
> Sent: Wednesday, May 1, 2019 8:46 AM
> To: Ettus Mail List
> Subject: E320 numpy missing?
> 
> Finally got my E320 in and I cross-compiled a new setup.  I tried to fire up my flowgraph (which works fine on an E310) and it is complaining about numpy missing.
> 
> If I do a search from / on the E320, the only numpy that is showing up is:
> /usr/include/boost/python/numpy
> 
> If I do a search from a good E310 in / I see:
> ./usr/lib/python2.7/site-packages/numpy
> ./usr/lib/python2.7/site-packages/numpy/core/include/numpy
> ./usr/lib/python2.7/site-packages/Cython/Includes/numpy
> ./usr/include/boost/python/numpy
> 
> 
> Back on the host machine, my E320 cross-compile prefix shows numpy:
> ./sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/include/boost/python/numpy
> 
> My good E310 prefix shows:
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1.13.1-r0/numpy-1.13.1/build/src.linux-x86_64-2.7/numpy
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1.13.1-r0/numpy-1.13.1/build/src.linux-x86_64-2.7/numpy/core/include/numpy
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1.13.1-r0/numpy-1.13.1/numpy
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1.13.1-r0/numpy-1.13.1/numpy/core/include/numpy
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packages/Cython/Includes/numpy
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packages/numpy
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packages/numpy/core/include/numpy
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/include/boost/python/numpy
> 
> So, was numpy forgotten?  Left out for a reason?  I am going to attempt to build it by hand, but I have a fear that I am going to go down dependency hell with this and other missing packages that GR might want.
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
