Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DB5EE84A
	for <lists+usrp-users@lfdr.de>; Mon,  4 Nov 2019 20:27:56 +0100 (CET)
Received: from [::1] (port=42050 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iRi0x-0005yQ-QL; Mon, 04 Nov 2019 14:27:47 -0500
Received: from sanddollar.geekisp.com ([216.168.135.167]:7584)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <philip@balister.org>) id 1iRi0u-0005ue-Oc
 for USRP-users@lists.ettus.com; Mon, 04 Nov 2019 14:27:44 -0500
Received: (qmail 13210 invoked by uid 1003); 4 Nov 2019 19:27:09 -0000
Received: from unknown (HELO ?10.40.37.30?) (philip@opensdr.com@64.134.100.98)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted)
 SMTP; 4 Nov 2019 19:27:09 -0000
To: "zcao@c3commsystems.com" <zcao@c3commsystems.com>,
 USRP-users <USRP-users@lists.ettus.com>
References: <F8807E43-2706-48BD-84BC-3C53C4EE65CB@c3commsystems.com>
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
Message-ID: <b21ca1df-ce39-ee8e-70c7-9a89726ff11e@balister.org>
Date: Mon, 4 Nov 2019 20:27:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <F8807E43-2706-48BD-84BC-3C53C4EE65CB@c3commsystems.com>
Content-Language: en-US
Subject: Re: [USRP-users] Problems when Running UHD_3.14.1 Examples on E310
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

On 11/4/19 5:04 PM, zcao--- via USRP-users wrote:
> Hi, 
> 
> We are trying to run UHD examples on E310. The process we took are as the following.
> 
> 1. Flash a fresh SDcard using the dev image located at http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg3/ <http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg3/>
> 
> 2. Cross-compile UHD source code on a development machine and install the build on to the E310 device using sshfs. Note that this is a different from what is proposed in AN-311. We installed UHD 3.14 onto the device directly.
> 
> 3. Running /usr/bin/uhd_find_devices, we got the following output, looks normal.
> 
> [INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700; UHD_3.14.1.1-0-g0347a6d8
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 31819A1
>     name: 
>     node: /dev/axi_fpga
>     product: E3XX SG3
>     type: e3x0
> 
> 
> However, we ran into the following problems, which seem to be related.
> 
> 1. We cannot run /usr/bin/uhd_usrp_probe, because of the FPGA compatibility. Specifically, the error messages are
> 
> Error: RuntimeError: Expected FPGA compatibility number 255.x, but got 14.0:
> The FPGA build is not compatible with the host code build.
> Please run:
> 
>  "/usr/lib/uhd/utils/uhd_images_downloader.py"
> 
> 
> 2. But running the above python script gives us the following error messages.
> 
> -sh: /usr/lib/uhd/utils/uhd_images_downloader.py: /usr/local/oecore-x86_64/sysroots/x86_64-oesdk-linux/usr/bin/python2: bad interpreter: No such file or directory/

Look at the script /usr/lib/uhd/utils/uhd_images_downloader.py and edit
the #!/bin/fo/bar/python to something reasonable.

Philip

> 
> 
> Note that the python script is looking for the SDK, which should be on the development machine, instead of the device itself.
> 
> Would really appreciate it if anyone knows how to handle above issues in E310 device itself?
> 
> Thanks,
> Arnold
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
