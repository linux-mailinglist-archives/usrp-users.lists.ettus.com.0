Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F812CE45
	for <lists+usrp-users@lfdr.de>; Tue, 28 May 2019 20:12:47 +0200 (CEST)
Received: from [::1] (port=51940 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hVgaW-0003K0-Fl; Tue, 28 May 2019 14:12:40 -0400
Received: from starfish.geekisp.com ([216.168.135.166]:47045)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <philip@balister.org>) id 1hVgZy-0003FO-IJ
 for usrp-users@lists.ettus.com; Tue, 28 May 2019 14:12:36 -0400
Received: (qmail 15839 invoked by uid 1003); 28 May 2019 18:11:23 -0000
Received: from unknown (HELO ?192.168.11.100?)
 (philip@opensdr.com@73.152.143.112)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 28 May 2019 18:11:23 -0000
To: Sugandha Gupta <sugandha.gupta@ettus.com>,
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAG_kd17n-vX73zmQHEP8KmYjDmLMsuqCMCKxirmz128Sfv2b=g@mail.gmail.com>
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
Message-ID: <f1550419-7f99-310e-b4b4-e038b4ca2f59@balister.org>
Date: Tue, 28 May 2019 14:11:22 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <CAG_kd17n-vX73zmQHEP8KmYjDmLMsuqCMCKxirmz128Sfv2b=g@mail.gmail.com>
Content-Language: en-MW
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] [UHD] Update to USRP E310 filesystem (v3.15.0.0
 pre-release)
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

On 05/24/2019 07:55 PM, Sugandha Gupta via USRP-users wrote:
> Hi all
> 
> We finally have a new filesystem for E310. This is an early release so
> people can try it out before the final UHD-3.15.0.0 release.
> The filesystem is now very similar to N3XX and E320 filesystem and will be
> updated with every UHD release in future.

Is there a table the maps code names (like neon and sulfur) to the
products they support?

Philip

> 
> Here is a summary of the changes:
> -  The new filesystem ( <https://github.com/EttusResearch/meta-ettus>
> v3.15.0.0-e310_prerelease
> <https://github.com/EttusResearch/meta-ettus/releases/tag/v3.15.0.0-e310_prerelease>
> ) <https://github.com/EttusResearch/meta-ettus> uses Linux kernel 4.15.
> Customers can build custom filesystems as well. More details on that are in
> the README
> <https://github.com/EttusResearch/ettus-docker/tree/master/oe-build>. We
> plan to move to Linux 4.18 for the final 3.15.0.0 release. Timeline for
> that is still TBD.
> - UHD version: v3.15.0.0-e310_prerelease
> <https://github.com/EttusResearch/uhd/commits/v3.15.0.0-e310_prerelease>
> - E310 FPGA
> <https://github.com/EttusResearch/fpga/tree/v3.15.0.0-e310_prerelease/usrp3/top/e31x>
> architecture now supports MPM <https://files.ettus.com/manual/page_mpm.html>.
> If you have been using RFNoC, you should able to use your existing blocks
> with no changes. The only change is the name of the image bit files
> generated.
> - These filesystems do not include GNURadio. Adding GNURadio maint 3.7
> means adding python2 support on top of python3 which blows up the size of
> the filesystem. In order to keep rootfs size small and have faster remote
> mender <https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_rasm_mender>
> updates, we decided to leave it out the default image. In order to use
> GNURadio, custom images need to be created. We will add instructions for
> adding GNURadio to the manual/knowledge base soon.
> 
> Note that the SD card shipped with E310s does not contain the latest
> filesystem images. In order to use the new filesystems, the SD cards need
> to be manually flashed. You can download the filesystem and new SDK here
> <http://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0-e310_prerelease>.
> Follow the instructions in E310 manual page
> <https://files.ettus.com/manual/page_usrp_e3xx.html> to burn a new SD card
> and get started. The manual page also contains a Migration Guide to help
> setup the device and suggests possible changes to customer applications.
> Please let us know if you have any questions. You can report bugs here
> https://github.com/EttusResearch/uhd/issues.
> 
> - Sugandha
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
