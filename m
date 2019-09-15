Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCF5B2FC9
	for <lists+usrp-users@lfdr.de>; Sun, 15 Sep 2019 14:10:18 +0200 (CEST)
Received: from [::1] (port=59810 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i9TM7-0003Ik-AU; Sun, 15 Sep 2019 08:10:15 -0400
Received: from starfish.geekisp.com ([216.168.135.166]:44194)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <philip@balister.org>) id 1i9TM0-0003CZ-Vg
 for USRP-users@lists.ettus.com; Sun, 15 Sep 2019 08:10:09 -0400
Received: (qmail 25113 invoked by uid 1003); 15 Sep 2019 12:09:26 -0000
Received: from unknown (HELO ?192.168.11.139?)
 (philip@opensdr.com@73.152.143.112)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted) SMTP;
 15 Sep 2019 12:09:26 -0000
To: Wael Ali <wa2el.ali@gmail.com>, USRP-users@lists.ettus.com
References: <CAOCyOuMCrkq4QrLEHpPFK-K8nRhX-FSTibcHyP5j2iJ4o=9S2g@mail.gmail.com>
Openpgp: preference=signencrypt
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
Message-ID: <059c1852-c2bc-c352-0b63-8f2f7e6de861@balister.org>
Date: Sun, 15 Sep 2019 08:09:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAOCyOuMCrkq4QrLEHpPFK-K8nRhX-FSTibcHyP5j2iJ4o=9S2g@mail.gmail.com>
Content-Language: en-MW
Subject: Re: [USRP-users] cannot load fpga to b205mini from wandboard
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

On 9/15/19 7:55 AM, Wael Ali via USRP-users wrote:
> Dear all,
> please help me with this issue,
> 
> I've built a poky distro. with yocto project for wandboard and uhd package
> is pre-installed.
> 
> the problem is, when I tried to use "uhd_usrp_probe"  with (three different
> usrp 205mini) I faced the following error
> 
> root@wandboard:~# uhd_usrp_probe
> linux; GNU C++ version 7.3.0; Boost_106600; UHD_003.010.002.000-release
> 
> -- Loading firmware image: /usr/share/uhd/images/usrp_b200_fw.hex...
> -- Detected Device: B205mini
> -- Loading FPGA image: /usr/share/uhd/images/usrp_b205mini_fpga.bin...
> 39%Error: EnvironmentError: IOError: load_fpga: cannot write bitstream to
> FX3 (-4: LIBUSB_ERROR_CODE -4)

A quick google suggest error -4 is No device, are you sure the USB is
working? Do you seen messages when you insert/remove the b205? What does
ls usb say?

Philip



> root@wandboard:~# uhd_usrp_probe
> linux; GNU C++ version 7.3.0; Boost_106600; UHD_003.010.002.000-release
> 
> -- Loading firmware image: /usr/share/uhd/images/usrp_b200_fw.hex...
> -- Detected Device: B205mini
> -- Loading FPGA image: /usr/share/uhd/images/usrp_b205mini_fpga.bin...
> 38%Error: EnvironmentError: IOError: load_fpga: cannot write bitstream to
> FX3 (-4: LIBUSB_ERROR_CODE -4)
> root@wandboard:~# uhd_usrp_probe
> linux; GNU C++ version 7.3.0; Boost_106600; UHD_003.010.002.000-release
> 
> -- Loading firmware image: /usr/share/uhd/images/usrp_b200_fw.hex...
> -- Detected Device: B205mini
> -- Loading FPGA image: /usr/share/uhd/images/usrp_b205mini_fpga.bin...
> 38%Error: EnvironmentError: IOError: load_fpga: cannot write bitstream to
> FX3 (-4: LIBUSB_ERROR_CODE -4)
> 
> As you can see, uhd: 3.10.2
> also, I faced the same problem after re-downloading fpga image from ettus
> website
> 
> thanks in advance
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
