Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BE80E311FA9
	for <lists+usrp-users@lfdr.de>; Sat,  6 Feb 2021 20:25:03 +0100 (CET)
Received: from [::1] (port=34254 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l8TCW-0005hP-IH; Sat, 06 Feb 2021 14:25:00 -0500
Received: from resdmta-po-01v.sys.comcast.net ([96.114.154.209]:37806)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <w6rz@comcast.net>) id 1l8TCS-0005ag-BT
 for usrp-users@lists.ettus.com; Sat, 06 Feb 2021 14:24:56 -0500
Received: from resqmta-po-07v.sys.comcast.net ([96.114.154.166])
 by resdmta-po-01v.sys.comcast.net with ESMTP
 id 8SuNlFOJaHIag8TBnl79i9; Sat, 06 Feb 2021 19:24:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1612639455;
 bh=y0Po5WaIfWuvZZ7O0M68QdeRRFMFF/Q3UZnIqCBoqpA=;
 h=Received:Received:Received:Subject:To:From:Message-ID:Date:
 MIME-Version:Content-Type;
 b=f6/96N5YhweF+N54mGOZGZ5eOAjh/KNkKNLWFS3OtXicLXEOoxv1VFD6NLBsc+bbd
 /Ja6vMPE2JbirR9mnqL4nxZhXgVNOH+3jrD+1ZoUmd2osj4WE9BRc8vxQBLBCkBjly
 uTR4V1yDfaSGRRrpbzhbNGIV+Vk6UJykYusZOjR1/3zK6el2Orgy2urdxSZBcT0YF1
 HQPNN/T86h1TC3uUzlJ2RPHn+9A6HsywjOi1UXX5JVwc6OXzlRK3R7hzzfYsK8NjX1
 A5cyQ7GVZMalrguGH0EK9xUY8vYsQnMt9xHj+IAWk9HhFTQA9rx6Mm+kl16haN+uQI
 WpCIHp5Mym9Sg==
Received: from resomta-po-18v.sys.comcast.net ([96.114.154.242])
 by resqmta-po-07v.sys.comcast.net with ESMTP
 id 8SmplpVp5iCWI8TBml8r3Z; Sat, 06 Feb 2021 19:24:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1612639454;
 bh=y0Po5WaIfWuvZZ7O0M68QdeRRFMFF/Q3UZnIqCBoqpA=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=Heu1T+E1VV6hWB4+PKU4v5I2vaEf/oe338UAGTg4EyIkCCty1OQhY0lTVEDgyhs0I
 C0+Ukt/TeCSyjkg40rHeDY+tvzwdZZQA8iqN1bDvtEscfqFy60YxHQdkXsjSoXLnTH
 ynhSioyllO/9BjmVOxtONVthBfnYC0ecaQSR5ys3PZhxv2s6WkzxplMeOn+4Iroo96
 Z4Y5I60Z4iK74kJmyvxATGsnTyQhW0sg3J9rsVJ2ButGgoGcYoOFMlSc7UiGHwpCVk
 +4zjLRd3tY63awJiGNFGc8a0CqypkbQ+cp6MhMLpMZm66LgtWD6LdfHvkp/5UK7Yqg
 BFH0ZHptVUGew==
Received: from [IPv6:2601:647:4700:284:7061:c102:42e7:6b32]
 ([IPv6:2601:647:4700:284:7061:c102:42e7:6b32])
 by resomta-po-18v.sys.comcast.net with ESMTPSA
 id 8TBbl7VzaSjDM8TBllBw3D; Sat, 06 Feb 2021 19:24:14 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <CACDReSyFymp6diTdVZSsHhW_8HLxon4T3LvWjHws59_7LFB16w@mail.gmail.com>
Message-ID: <30d5b192-c1af-4494-bd4f-4d4ba63d4a71@comcast.net>
Date: Sat, 6 Feb 2021 11:24:03 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CACDReSyFymp6diTdVZSsHhW_8HLxon4T3LvWjHws59_7LFB16w@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Failed to compile UHD 3.15 on E310 target
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
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Type: multipart/mixed; boundary="===============7182921833209024194=="
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

This is a multi-part message in MIME format.
--===============7182921833209024194==
Content-Type: multipart/alternative;
 boundary="------------F7AEC38C2A0F37FDFA5D0909"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------F7AEC38C2A0F37FDFA5D0909
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

You have to specify a NEON architecture during CMake.

cmake -DCMAKE_CXX_FLAGS:STRING="-march=armv7-a -mfloat-abi=hard 
-mfpu=neon -mtune=cortex-a9 -Wno-psabi" 
-DCMAKE_C_FLAGS:STRING="-march=armv7-a -mfloat-abi=hard -mfpu=neon 
-mtune=cortex-a9 -Wno-psabi" -DCMAKE_ASM_FLAGS:STRING="-march=armv7-a 
-mfloat-abi=hard -mfpu=neon -mtune=cortex-a9 -g" ../

Ron

On 2/6/21 07:57, Ofer Saferman via USRP-users wrote:
> Hello,
>
> I made a small modification to UHD and would like to compile and use 
> my version.
> Since I never succeeded to cross-compile I decided to try to compile 
> it on the target itself.
> I am working with an USRP E310.
> I cloned the 3.15.LTS repository, modified one of the files and tried 
> to compile.
> During compilation I get the following errors (at about 11% of the 
> process):
> --------------------------------------------------------------------
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h: In member 
> function ‘virtual void 
> __convert_fc32_1_sc16_item32_le_1_PRIORITY_SIMD::operator()(const 
> input_type&, const output_type&, size_t)’:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:6740:1: 
> error: inlining failed in call to always_inline ‘float32x4_t 
> vdupq_n_f32(float32_t)’: target specific option mismatch
>  vdupq_n_f32 (float32_t __a)
>  ^~~~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:27:33: 
> note: called from here
>      float32x4_t Q0 = vdupq_n_f32(float(scale_factor));
>                       ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1: 
> error: inlining failed in call to always_inline ‘void 
> vst1_s16(int16_t*, int16x4_t)’: target specific option mismatch
>  vst1_s16 (int16_t * __a, int16x4_t __b)
>  ^~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:56:17: 
> note: called from here
>  vst1_s16((reinterpret_cast<int16_t*>(&output[i + 6])), D15);
>  ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1: 
> error: inlining failed in call to always_inline ‘int16x4_t 
> vrev32_s16(int16x4_t)’: target specific option mismatch
>  vrev32_s16 (int16x4_t __a)
>  ^~~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:55:37: 
> note: called from here
>          int16x4_t D15   = vrev32_s16(D14);
>                            ~~~~~~~~~~^~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1: 
> error: inlining failed in call to always_inline ‘int16x4_t 
> vmovn_s32(int32x4_t)’: target specific option mismatch
>  vmovn_s32 (int32x4_t __a)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:54:36: 
> note: called from here
>          int16x4_t D14   = vmovn_s32(Q13);
>                            ~~~~~~~~~^~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: 
> error: inlining failed in call to always_inline ‘int32x4_t 
> vcvtq_s32_f32(float32x4_t)’: target specific option mismatch
>  vcvtq_s32_f32 (float32x4_t __a)
>  ^~~~~~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:53:40: 
> note: called from here
>          int32x4_t Q13   = vcvtq_s32_f32(Q11);
>                            ~~~~~~~~~~~~~^~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1: 
> error: inlining failed in call to always_inline ‘float32x4_t 
> vmulq_f32(float32x4_t, float32x4_t)’: target specific option mismatch
>  vmulq_f32 (float32x4_t __a, float32x4_t __b)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:52:36: 
> note: called from here
>          float32x4_t Q11 = vmulq_f32(Q10, Q0);
>                            ~~~~~~~~~^~~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1: 
> error: inlining failed in call to always_inline ‘void 
> vst1_s16(int16_t*, int16x4_t)’: target specific option mismatch
>  vst1_s16 (int16_t * __a, int16x4_t __b)
>  ^~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:50:17: 
> note: called from here
>  vst1_s16((reinterpret_cast<int16_t*>(&output[i + 4])), D13);
>  ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1: 
> error: inlining failed in call to always_inline ‘int16x4_t 
> vrev32_s16(int16x4_t)’: target specific option mismatch
>  vrev32_s16 (int16x4_t __a)
>  ^~~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:49:36: 
> note: called from here
>          int16x4_t D13  = vrev32_s16(D12);
>                           ~~~~~~~~~~^~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1: 
> error: inlining failed in call to always_inline ‘int16x4_t 
> vmovn_s32(int32x4_t)’: target specific option mismatch
>  vmovn_s32 (int32x4_t __a)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:48:35: 
> note: called from here
>          int16x4_t D12  = vmovn_s32(Q9);
>                           ~~~~~~~~~^~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: 
> error: inlining failed in call to always_inline ‘int32x4_t 
> vcvtq_s32_f32(float32x4_t)’: target specific option mismatch
>  vcvtq_s32_f32 (float32x4_t __a)
>  ^~~~~~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:47:39: 
> note: called from here
>          int32x4_t Q9   = vcvtq_s32_f32(Q8);
>                           ~~~~~~~~~~~~~^~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1: 
> error: inlining failed in call to always_inline ‘float32x4_t 
> vmulq_f32(float32x4_t, float32x4_t)’: target specific option mismatch
>  vmulq_f32 (float32x4_t __a, float32x4_t __b)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:46:35: 
> note: called from here
>          float32x4_t Q8 = vmulq_f32(Q7, Q0);
>                           ~~~~~~~~~^~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1: 
> error: inlining failed in call to always_inline ‘void 
> vst1_s16(int16_t*, int16x4_t)’: target specific option mismatch
>  vst1_s16 (int16_t * __a, int16x4_t __b)
>  ^~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:44:17: 
> note: called from here
>  vst1_s16((reinterpret_cast<int16_t*>(&output[i + 2])), D11);
>  ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1: 
> error: inlining failed in call to always_inline ‘int16x4_t 
> vrev32_s16(int16x4_t)’: target specific option mismatch
>  vrev32_s16 (int16x4_t __a)
>  ^~~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:43:36: 
> note: called from here
>          int16x4_t D11  = vrev32_s16(D10);
>                           ~~~~~~~~~~^~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1: 
> error: inlining failed in call to always_inline ‘int16x4_t 
> vmovn_s32(int32x4_t)’: target specific option mismatch
>  vmovn_s32 (int32x4_t __a)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:42:35: 
> note: called from here
>          int16x4_t D10  = vmovn_s32(Q6);
>                           ~~~~~~~~~^~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: 
> error: inlining failed in call to always_inline ‘int32x4_t 
> vcvtq_s32_f32(float32x4_t)’: target specific option mismatch
>  vcvtq_s32_f32 (float32x4_t __a)
>  ^~~~~~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:41:39: 
> note: called from here
>          int32x4_t Q6   = vcvtq_s32_f32(Q5);
>                           ~~~~~~~~~~~~~^~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1: 
> error: inlining failed in call to always_inline ‘float32x4_t 
> vmulq_f32(float32x4_t, float32x4_t)’: target specific option mismatch
>  vmulq_f32 (float32x4_t __a, float32x4_t __b)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:40:35: 
> note: called from here
>          float32x4_t Q5 = vmulq_f32(Q4, Q0);
>                           ~~~~~~~~~^~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1: 
> error: inlining failed in call to always_inline ‘void 
> vst1_s16(int16_t*, int16x4_t)’: target specific option mismatch
>  vst1_s16 (int16_t * __a, int16x4_t __b)
>  ^~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:38:17: 
> note: called from here
>  vst1_s16((reinterpret_cast<int16_t*>(&output[i])), D9);
>  ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1: 
> error: inlining failed in call to always_inline ‘int16x4_t 
> vrev32_s16(int16x4_t)’: target specific option mismatch
>  vrev32_s16 (int16x4_t __a)
>  ^~~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:37:36: 
> note: called from here
>          int16x4_t D9   = vrev32_s16(D8);
>                           ~~~~~~~~~~^~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1: 
> error: inlining failed in call to always_inline ‘int16x4_t 
> vmovn_s32(int32x4_t)’: target specific option mismatch
>  vmovn_s32 (int32x4_t __a)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:36:35: 
> note: called from here
>          int16x4_t D8   = vmovn_s32(Q3);
>                           ~~~~~~~~~^~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: 
> error: inlining failed in call to always_inline ‘int32x4_t 
> vcvtq_s32_f32(float32x4_t)’: target specific option mismatch
>  vcvtq_s32_f32 (float32x4_t __a)
>  ^~~~~~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:35:39: 
> note: called from here
>          int32x4_t Q3   = vcvtq_s32_f32(Q2);
>                           ~~~~~~~~~~~~~^~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1: 
> error: inlining failed in call to always_inline ‘float32x4_t 
> vmulq_f32(float32x4_t, float32x4_t)’: target specific option mismatch
>  vmulq_f32 (float32x4_t __a, float32x4_t __b)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:34:35: 
> note: called from here
>          float32x4_t Q2 = vmulq_f32(Q1, Q0);
>                           ~~~~~~~~~^~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1: 
> error: inlining failed in call to always_inline ‘float32x4_t 
> vld1q_f32(const float32_t*)’: target specific option mismatch
>  vld1q_f32 (const float32_t * __a)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:32:36: 
> note: called from here
>          float32x4_t Q10 = vld1q_f32(reinterpret_cast<const 
> float*>(&input[i + 6]));
>  ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1: 
> error: inlining failed in call to always_inline ‘float32x4_t 
> vld1q_f32(const float32_t*)’: target specific option mismatch
>  vld1q_f32 (const float32_t * __a)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:31:36: 
> note: called from here
>          float32x4_t Q7  = vld1q_f32(reinterpret_cast<const 
> float*>(&input[i + 4]));
>  ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1: 
> error: inlining failed in call to always_inline ‘float32x4_t 
> vld1q_f32(const float32_t*)’: target specific option mismatch
>  vld1q_f32 (const float32_t * __a)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:30:36: 
> note: called from here
>          float32x4_t Q4  = vld1q_f32(reinterpret_cast<const 
> float*>(&input[i + 2]));
>  ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1: 
> error: inlining failed in call to always_inline ‘float32x4_t 
> vld1q_f32(const float32_t*)’: target specific option mismatch
>  vld1q_f32 (const float32_t * __a)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:29:36: 
> note: called from here
>          float32x4_t Q1  = vld1q_f32(reinterpret_cast<const 
> float*>(&input[i]));
>  ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:6740:1: 
> error: inlining failed in call to always_inline ‘float32x4_t 
> vdupq_n_f32(float32_t)’: target specific option mismatch
>  vdupq_n_f32 (float32_t __a)
>  ^~~~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:27:33: 
> note: called from here
>      float32x4_t Q0 = vdupq_n_f32(float(scale_factor));
>                       ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:6740:1: 
> error: inlining failed in call to always_inline ‘float32x4_t 
> vdupq_n_f32(float32_t)’: target specific option mismatch
>  vdupq_n_f32 (float32_t __a)
>  ^~~~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:27:33: 
> note: called from here
>      float32x4_t Q0 = vdupq_n_f32(float(scale_factor));
>                       ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1: 
> error: inlining failed in call to always_inline ‘void 
> vst1_s16(int16_t*, int16x4_t)’: target specific option mismatch
>  vst1_s16 (int16_t * __a, int16x4_t __b)
>  ^~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:56:17: 
> note: called from here
>  vst1_s16((reinterpret_cast<int16_t*>(&output[i + 6])), D15);
>  ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1: 
> error: inlining failed in call to always_inline ‘int16x4_t 
> vrev32_s16(int16x4_t)’: target specific option mismatch
>  vrev32_s16 (int16x4_t __a)
>  ^~~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:55:37: 
> note: called from here
>          int16x4_t D15   = vrev32_s16(D14);
>                            ~~~~~~~~~~^~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1: 
> error: inlining failed in call to always_inline ‘int16x4_t 
> vmovn_s32(int32x4_t)’: target specific option mismatch
>  vmovn_s32 (int32x4_t __a)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:54:36: 
> note: called from here
>          int16x4_t D14   = vmovn_s32(Q13);
>                            ~~~~~~~~~^~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: 
> error: inlining failed in call to always_inline ‘int32x4_t 
> vcvtq_s32_f32(float32x4_t)’: target specific option mismatch
>  vcvtq_s32_f32 (float32x4_t __a)
>  ^~~~~~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:53:40: 
> note: called from here
>          int32x4_t Q13   = vcvtq_s32_f32(Q11);
>                            ~~~~~~~~~~~~~^~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1: 
> error: inlining failed in call to always_inline ‘float32x4_t 
> vmulq_f32(float32x4_t, float32x4_t)’: target specific option mismatch
>  vmulq_f32 (float32x4_t __a, float32x4_t __b)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:52:36: 
> note: called from here
>          float32x4_t Q11 = vmulq_f32(Q10, Q0);
>                            ~~~~~~~~~^~~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1: 
> error: inlining failed in call to always_inline ‘void 
> vst1_s16(int16_t*, int16x4_t)’: target specific option mismatch
>  vst1_s16 (int16_t * __a, int16x4_t __b)
>  ^~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:50:17: 
> note: called from here
>  vst1_s16((reinterpret_cast<int16_t*>(&output[i + 4])), D13);
>  ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1: 
> error: inlining failed in call to always_inline ‘int16x4_t 
> vrev32_s16(int16x4_t)’: target specific option mismatch
>  vrev32_s16 (int16x4_t __a)
>  ^~~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:49:36: 
> note: called from here
>          int16x4_t D13  = vrev32_s16(D12);
>                           ~~~~~~~~~~^~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1: 
> error: inlining failed in call to always_inline ‘int16x4_t 
> vmovn_s32(int32x4_t)’: target specific option mismatch
>  vmovn_s32 (int32x4_t __a)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:48:35: 
> note: called from here
>          int16x4_t D12  = vmovn_s32(Q9);
>                           ~~~~~~~~~^~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: 
> error: inlining failed in call to always_inline ‘int32x4_t 
> vcvtq_s32_f32(float32x4_t)’: target specific option mismatch
>  vcvtq_s32_f32 (float32x4_t __a)
>  ^~~~~~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:47:39: 
> note: called from here
>          int32x4_t Q9   = vcvtq_s32_f32(Q8);
>                           ~~~~~~~~~~~~~^~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1: 
> error: inlining failed in call to always_inline ‘float32x4_t 
> vmulq_f32(float32x4_t, float32x4_t)’: target specific option mismatch
>  vmulq_f32 (float32x4_t __a, float32x4_t __b)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:46:35: 
> note: called from here
>          float32x4_t Q8 = vmulq_f32(Q7, Q0);
>                           ~~~~~~~~~^~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1: 
> error: inlining failed in call to always_inline ‘void 
> vst1_s16(int16_t*, int16x4_t)’: target specific option mismatch
>  vst1_s16 (int16_t * __a, int16x4_t __b)
>  ^~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:44:17: 
> note: called from here
>  vst1_s16((reinterpret_cast<int16_t*>(&output[i + 2])), D11);
>  ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1: 
> error: inlining failed in call to always_inline ‘int16x4_t 
> vrev32_s16(int16x4_t)’: target specific option mismatch
>  vrev32_s16 (int16x4_t __a)
>  ^~~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:43:36: 
> note: called from here
>          int16x4_t D11  = vrev32_s16(D10);
>                           ~~~~~~~~~~^~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1: 
> error: inlining failed in call to always_inline ‘int16x4_t 
> vmovn_s32(int32x4_t)’: target specific option mismatch
>  vmovn_s32 (int32x4_t __a)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:42:35: 
> note: called from here
>          int16x4_t D10  = vmovn_s32(Q6);
>                           ~~~~~~~~~^~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: 
> error: inlining failed in call to always_inline ‘int32x4_t 
> vcvtq_s32_f32(float32x4_t)’: target specific option mismatch
>  vcvtq_s32_f32 (float32x4_t __a)
>  ^~~~~~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:41:39: 
> note: called from here
>          int32x4_t Q6   = vcvtq_s32_f32(Q5);
>                           ~~~~~~~~~~~~~^~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1: 
> error: inlining failed in call to always_inline ‘float32x4_t 
> vmulq_f32(float32x4_t, float32x4_t)’: target specific option mismatch
>  vmulq_f32 (float32x4_t __a, float32x4_t __b)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:40:35: 
> note: called from here
>          float32x4_t Q5 = vmulq_f32(Q4, Q0);
>                           ~~~~~~~~~^~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1: 
> error: inlining failed in call to always_inline ‘void 
> vst1_s16(int16_t*, int16x4_t)’: target specific option mismatch
>  vst1_s16 (int16_t * __a, int16x4_t __b)
>  ^~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:38:17: 
> note: called from here
>  vst1_s16((reinterpret_cast<int16_t*>(&output[i])), D9);
>  ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1: 
> error: inlining failed in call to always_inline ‘int16x4_t 
> vrev32_s16(int16x4_t)’: target specific option mismatch
>  vrev32_s16 (int16x4_t __a)
>  ^~~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:37:36: 
> note: called from here
>          int16x4_t D9   = vrev32_s16(D8);
>                           ~~~~~~~~~~^~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1: 
> error: inlining failed in call to always_inline ‘int16x4_t 
> vmovn_s32(int32x4_t)’: target specific option mismatch
>  vmovn_s32 (int32x4_t __a)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:36:35: 
> note: called from here
>          int16x4_t D8   = vmovn_s32(Q3);
>                           ~~~~~~~~~^~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: 
> error: inlining failed in call to always_inline ‘int32x4_t 
> vcvtq_s32_f32(float32x4_t)’: target specific option mismatch
>  vcvtq_s32_f32 (float32x4_t __a)
>  ^~~~~~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:35:39: 
> note: called from here
>          int32x4_t Q3   = vcvtq_s32_f32(Q2);
>                           ~~~~~~~~~~~~~^~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1: 
> error: inlining failed in call to always_inline ‘float32x4_t 
> vmulq_f32(float32x4_t, float32x4_t)’: target specific option mismatch
>  vmulq_f32 (float32x4_t __a, float32x4_t __b)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:34:35: 
> note: called from here
>          float32x4_t Q2 = vmulq_f32(Q1, Q0);
>                           ~~~~~~~~~^~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1: 
> error: inlining failed in call to always_inline ‘float32x4_t 
> vld1q_f32(const float32_t*)’: target specific option mismatch
>  vld1q_f32 (const float32_t * __a)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:32:36: 
> note: called from here
>          float32x4_t Q10 = vld1q_f32(reinterpret_cast<const 
> float*>(&input[i + 6]));
>  ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1: 
> error: inlining failed in call to always_inline ‘float32x4_t 
> vld1q_f32(const float32_t*)’: target specific option mismatch
>  vld1q_f32 (const float32_t * __a)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:31:36: 
> note: called from here
>          float32x4_t Q7  = vld1q_f32(reinterpret_cast<const 
> float*>(&input[i + 4]));
>  ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1: 
> error: inlining failed in call to always_inline ‘float32x4_t 
> vld1q_f32(const float32_t*)’: target specific option mismatch
>  vld1q_f32 (const float32_t * __a)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:30:36: 
> note: called from here
>          float32x4_t Q4  = vld1q_f32(reinterpret_cast<const 
> float*>(&input[i + 2]));
>  ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from 
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
> /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1: 
> error: inlining failed in call to always_inline ‘float32x4_t 
> vld1q_f32(const float32_t*)’: target specific option mismatch
>  vld1q_f32 (const float32_t * __a)
>  ^~~~~~~~~
> /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:29:36: 
> note: called from here
>          float32x4_t Q1  = vld1q_f32(reinterpret_cast<const 
> float*>(&input[i]));
>  ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> make[2]: *** [lib/CMakeFiles/uhd.dir/build.make:467: 
> lib/CMakeFiles/uhd.dir/convert/convert_with_neon.cpp.o] Error 1
> make[1]: *** [CMakeFiles/Makefile2:125: lib/CMakeFiles/uhd.dir/all] 
> Error 2
> make: *** [Makefile:163: all] Error 2
> -----------------------------------------------------------------------------------------
>
> Can you help me out to make this compilation work?
>
> Regards,
> Ofer Saferman
>
>
> -- 
> This message has been scanned for viruses and
> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and is
> believed to be clean.
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------F7AEC38C2A0F37FDFA5D0909
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>You have to specify a NEON architecture during CMake.</p>
    <p>cmake -DCMAKE_CXX_FLAGS:STRING="-march=armv7-a -mfloat-abi=hard
      -mfpu=neon -mtune=cortex-a9 -Wno-psabi"
      -DCMAKE_C_FLAGS:STRING="-march=armv7-a -mfloat-abi=hard -mfpu=neon
      -mtune=cortex-a9 -Wno-psabi"
      -DCMAKE_ASM_FLAGS:STRING="-march=armv7-a -mfloat-abi=hard
      -mfpu=neon -mtune=cortex-a9 -g" ../</p>
    <p>Ron<br>
    </p>
    <div class="moz-cite-prefix">On 2/6/21 07:57, Ofer Saferman via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CACDReSyFymp6diTdVZSsHhW_8HLxon4T3LvWjHws59_7LFB16w@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Hello,</div>
        <div><br>
        </div>
        <div>I made a small modification to UHD and would like to
          compile and use my version.</div>
        <div>Since I never succeeded to cross-compile I decided to try
          to compile it on the target itself.</div>
        <div>I am working with an USRP E310.</div>
        <div>I cloned the 3.15.LTS repository, modified one of the files
          and tried to compile.</div>
        <div>During compilation I get the following errors (at about 11%
          of the process):</div>
        <div>--------------------------------------------------------------------</div>
        <div>In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
          /usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:
          In member function ‘virtual void
          __convert_fc32_1_sc16_item32_le_1_PRIORITY_SIMD::operator()(const
          input_type&amp;, const output_type&amp;, size_t)’:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:6740:1:
          error: inlining failed in call to always_inline ‘float32x4_t
          vdupq_n_f32(float32_t)’: target specific option mismatch<br>
           vdupq_n_f32 (float32_t __a)<br>
           ^~~~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:27:33:
          note: called from here<br>
               float32x4_t Q0 = vdupq_n_f32(float(scale_factor));<br>
                                ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1:
          error: inlining failed in call to always_inline ‘void
          vst1_s16(int16_t*, int16x4_t)’: target specific option
          mismatch<br>
           vst1_s16 (int16_t * __a, int16x4_t __b)<br>
           ^~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:56:17:
          note: called from here<br>
                 
           vst1_s16((reinterpret_cast&lt;int16_t*&gt;(&amp;output[i +
          6])), D15);<br>
                 
           ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1:
          error: inlining failed in call to always_inline ‘int16x4_t
          vrev32_s16(int16x4_t)’: target specific option mismatch<br>
           vrev32_s16 (int16x4_t __a)<br>
           ^~~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:55:37:
          note: called from here<br>
                   int16x4_t D15   = vrev32_s16(D14);<br>
                                     ~~~~~~~~~~^~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1:
          error: inlining failed in call to always_inline ‘int16x4_t
          vmovn_s32(int32x4_t)’: target specific option mismatch<br>
           vmovn_s32 (int32x4_t __a)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:54:36:
          note: called from here<br>
                   int16x4_t D14   = vmovn_s32(Q13);<br>
                                     ~~~~~~~~~^~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1:
          error: inlining failed in call to always_inline ‘int32x4_t
          vcvtq_s32_f32(float32x4_t)’: target specific option mismatch<br>
           vcvtq_s32_f32 (float32x4_t __a)<br>
           ^~~~~~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:53:40:
          note: called from here<br>
                   int32x4_t Q13   = vcvtq_s32_f32(Q11);<br>
                                     ~~~~~~~~~~~~~^~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1:
          error: inlining failed in call to always_inline ‘float32x4_t
          vmulq_f32(float32x4_t, float32x4_t)’: target specific option
          mismatch<br>
           vmulq_f32 (float32x4_t __a, float32x4_t __b)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:52:36:
          note: called from here<br>
                   float32x4_t Q11 = vmulq_f32(Q10, Q0);<br>
                                     ~~~~~~~~~^~~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1:
          error: inlining failed in call to always_inline ‘void
          vst1_s16(int16_t*, int16x4_t)’: target specific option
          mismatch<br>
           vst1_s16 (int16_t * __a, int16x4_t __b)<br>
           ^~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:50:17:
          note: called from here<br>
                 
           vst1_s16((reinterpret_cast&lt;int16_t*&gt;(&amp;output[i +
          4])), D13);<br>
                 
           ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1:
          error: inlining failed in call to always_inline ‘int16x4_t
          vrev32_s16(int16x4_t)’: target specific option mismatch<br>
           vrev32_s16 (int16x4_t __a)<br>
           ^~~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:49:36:
          note: called from here<br>
                   int16x4_t D13  = vrev32_s16(D12);<br>
                                    ~~~~~~~~~~^~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1:
          error: inlining failed in call to always_inline ‘int16x4_t
          vmovn_s32(int32x4_t)’: target specific option mismatch<br>
           vmovn_s32 (int32x4_t __a)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:48:35:
          note: called from here<br>
                   int16x4_t D12  = vmovn_s32(Q9);<br>
                                    ~~~~~~~~~^~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1:
          error: inlining failed in call to always_inline ‘int32x4_t
          vcvtq_s32_f32(float32x4_t)’: target specific option mismatch<br>
           vcvtq_s32_f32 (float32x4_t __a)<br>
           ^~~~~~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:47:39:
          note: called from here<br>
                   int32x4_t Q9   = vcvtq_s32_f32(Q8);<br>
                                    ~~~~~~~~~~~~~^~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1:
          error: inlining failed in call to always_inline ‘float32x4_t
          vmulq_f32(float32x4_t, float32x4_t)’: target specific option
          mismatch<br>
           vmulq_f32 (float32x4_t __a, float32x4_t __b)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:46:35:
          note: called from here<br>
                   float32x4_t Q8 = vmulq_f32(Q7, Q0);<br>
                                    ~~~~~~~~~^~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1:
          error: inlining failed in call to always_inline ‘void
          vst1_s16(int16_t*, int16x4_t)’: target specific option
          mismatch<br>
           vst1_s16 (int16_t * __a, int16x4_t __b)<br>
           ^~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:44:17:
          note: called from here<br>
                 
           vst1_s16((reinterpret_cast&lt;int16_t*&gt;(&amp;output[i +
          2])), D11);<br>
                 
           ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1:
          error: inlining failed in call to always_inline ‘int16x4_t
          vrev32_s16(int16x4_t)’: target specific option mismatch<br>
           vrev32_s16 (int16x4_t __a)<br>
           ^~~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:43:36:
          note: called from here<br>
                   int16x4_t D11  = vrev32_s16(D10);<br>
                                    ~~~~~~~~~~^~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1:
          error: inlining failed in call to always_inline ‘int16x4_t
          vmovn_s32(int32x4_t)’: target specific option mismatch<br>
           vmovn_s32 (int32x4_t __a)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:42:35:
          note: called from here<br>
                   int16x4_t D10  = vmovn_s32(Q6);<br>
                                    ~~~~~~~~~^~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1:
          error: inlining failed in call to always_inline ‘int32x4_t
          vcvtq_s32_f32(float32x4_t)’: target specific option mismatch<br>
           vcvtq_s32_f32 (float32x4_t __a)<br>
           ^~~~~~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:41:39:
          note: called from here<br>
                   int32x4_t Q6   = vcvtq_s32_f32(Q5);<br>
                                    ~~~~~~~~~~~~~^~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1:
          error: inlining failed in call to always_inline ‘float32x4_t
          vmulq_f32(float32x4_t, float32x4_t)’: target specific option
          mismatch<br>
           vmulq_f32 (float32x4_t __a, float32x4_t __b)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:40:35:
          note: called from here<br>
                   float32x4_t Q5 = vmulq_f32(Q4, Q0);<br>
                                    ~~~~~~~~~^~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1:
          error: inlining failed in call to always_inline ‘void
          vst1_s16(int16_t*, int16x4_t)’: target specific option
          mismatch<br>
           vst1_s16 (int16_t * __a, int16x4_t __b)<br>
           ^~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:38:17:
          note: called from here<br>
                 
           vst1_s16((reinterpret_cast&lt;int16_t*&gt;(&amp;output[i])),
          D9);<br>
                 
           ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1:
          error: inlining failed in call to always_inline ‘int16x4_t
          vrev32_s16(int16x4_t)’: target specific option mismatch<br>
           vrev32_s16 (int16x4_t __a)<br>
           ^~~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:37:36:
          note: called from here<br>
                   int16x4_t D9   = vrev32_s16(D8);<br>
                                    ~~~~~~~~~~^~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1:
          error: inlining failed in call to always_inline ‘int16x4_t
          vmovn_s32(int32x4_t)’: target specific option mismatch<br>
           vmovn_s32 (int32x4_t __a)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:36:35:
          note: called from here<br>
                   int16x4_t D8   = vmovn_s32(Q3);<br>
                                    ~~~~~~~~~^~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1:
          error: inlining failed in call to always_inline ‘int32x4_t
          vcvtq_s32_f32(float32x4_t)’: target specific option mismatch<br>
           vcvtq_s32_f32 (float32x4_t __a)<br>
           ^~~~~~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:35:39:
          note: called from here<br>
                   int32x4_t Q3   = vcvtq_s32_f32(Q2);<br>
                                    ~~~~~~~~~~~~~^~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1:
          error: inlining failed in call to always_inline ‘float32x4_t
          vmulq_f32(float32x4_t, float32x4_t)’: target specific option
          mismatch<br>
           vmulq_f32 (float32x4_t __a, float32x4_t __b)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:34:35:
          note: called from here<br>
                   float32x4_t Q2 = vmulq_f32(Q1, Q0);<br>
                                    ~~~~~~~~~^~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1:
          error: inlining failed in call to always_inline ‘float32x4_t
          vld1q_f32(const float32_t*)’: target specific option mismatch<br>
           vld1q_f32 (const float32_t * __a)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:32:36:
          note: called from here<br>
                   float32x4_t Q10 = vld1q_f32(reinterpret_cast&lt;const
          float*&gt;(&amp;input[i + 6]));<br>
                                   
           ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1:
          error: inlining failed in call to always_inline ‘float32x4_t
          vld1q_f32(const float32_t*)’: target specific option mismatch<br>
           vld1q_f32 (const float32_t * __a)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:31:36:
          note: called from here<br>
                   float32x4_t Q7  = vld1q_f32(reinterpret_cast&lt;const
          float*&gt;(&amp;input[i + 4]));<br>
                                   
           ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1:
          error: inlining failed in call to always_inline ‘float32x4_t
          vld1q_f32(const float32_t*)’: target specific option mismatch<br>
           vld1q_f32 (const float32_t * __a)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:30:36:
          note: called from here<br>
                   float32x4_t Q4  = vld1q_f32(reinterpret_cast&lt;const
          float*&gt;(&amp;input[i + 2]));<br>
                                   
           ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1:
          error: inlining failed in call to always_inline ‘float32x4_t
          vld1q_f32(const float32_t*)’: target specific option mismatch<br>
           vld1q_f32 (const float32_t * __a)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:29:36:
          note: called from here<br>
                   float32x4_t Q1  = vld1q_f32(reinterpret_cast&lt;const
          float*&gt;(&amp;input[i]));<br>
                                   
           ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:6740:1:
          error: inlining failed in call to always_inline ‘float32x4_t
          vdupq_n_f32(float32_t)’: target specific option mismatch<br>
           vdupq_n_f32 (float32_t __a)<br>
           ^~~~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:27:33:
          note: called from here<br>
               float32x4_t Q0 = vdupq_n_f32(float(scale_factor));<br>
                                ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:6740:1:
          error: inlining failed in call to always_inline ‘float32x4_t
          vdupq_n_f32(float32_t)’: target specific option mismatch<br>
           vdupq_n_f32 (float32_t __a)<br>
           ^~~~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:27:33:
          note: called from here<br>
               float32x4_t Q0 = vdupq_n_f32(float(scale_factor));<br>
                                ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1:
          error: inlining failed in call to always_inline ‘void
          vst1_s16(int16_t*, int16x4_t)’: target specific option
          mismatch<br>
           vst1_s16 (int16_t * __a, int16x4_t __b)<br>
           ^~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:56:17:
          note: called from here<br>
                 
           vst1_s16((reinterpret_cast&lt;int16_t*&gt;(&amp;output[i +
          6])), D15);<br>
                 
           ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1:
          error: inlining failed in call to always_inline ‘int16x4_t
          vrev32_s16(int16x4_t)’: target specific option mismatch<br>
           vrev32_s16 (int16x4_t __a)<br>
           ^~~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:55:37:
          note: called from here<br>
                   int16x4_t D15   = vrev32_s16(D14);<br>
                                     ~~~~~~~~~~^~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1:
          error: inlining failed in call to always_inline ‘int16x4_t
          vmovn_s32(int32x4_t)’: target specific option mismatch<br>
           vmovn_s32 (int32x4_t __a)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:54:36:
          note: called from here<br>
                   int16x4_t D14   = vmovn_s32(Q13);<br>
                                     ~~~~~~~~~^~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1:
          error: inlining failed in call to always_inline ‘int32x4_t
          vcvtq_s32_f32(float32x4_t)’: target specific option mismatch<br>
           vcvtq_s32_f32 (float32x4_t __a)<br>
           ^~~~~~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:53:40:
          note: called from here<br>
                   int32x4_t Q13   = vcvtq_s32_f32(Q11);<br>
                                     ~~~~~~~~~~~~~^~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1:
          error: inlining failed in call to always_inline ‘float32x4_t
          vmulq_f32(float32x4_t, float32x4_t)’: target specific option
          mismatch<br>
           vmulq_f32 (float32x4_t __a, float32x4_t __b)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:52:36:
          note: called from here<br>
                   float32x4_t Q11 = vmulq_f32(Q10, Q0);<br>
                                     ~~~~~~~~~^~~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1:
          error: inlining failed in call to always_inline ‘void
          vst1_s16(int16_t*, int16x4_t)’: target specific option
          mismatch<br>
           vst1_s16 (int16_t * __a, int16x4_t __b)<br>
           ^~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:50:17:
          note: called from here<br>
                 
           vst1_s16((reinterpret_cast&lt;int16_t*&gt;(&amp;output[i +
          4])), D13);<br>
                 
           ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1:
          error: inlining failed in call to always_inline ‘int16x4_t
          vrev32_s16(int16x4_t)’: target specific option mismatch<br>
           vrev32_s16 (int16x4_t __a)<br>
           ^~~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:49:36:
          note: called from here<br>
                   int16x4_t D13  = vrev32_s16(D12);<br>
                                    ~~~~~~~~~~^~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1:
          error: inlining failed in call to always_inline ‘int16x4_t
          vmovn_s32(int32x4_t)’: target specific option mismatch<br>
           vmovn_s32 (int32x4_t __a)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:48:35:
          note: called from here<br>
                   int16x4_t D12  = vmovn_s32(Q9);<br>
                                    ~~~~~~~~~^~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1:
          error: inlining failed in call to always_inline ‘int32x4_t
          vcvtq_s32_f32(float32x4_t)’: target specific option mismatch<br>
           vcvtq_s32_f32 (float32x4_t __a)<br>
           ^~~~~~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:47:39:
          note: called from here<br>
                   int32x4_t Q9   = vcvtq_s32_f32(Q8);<br>
                                    ~~~~~~~~~~~~~^~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1:
          error: inlining failed in call to always_inline ‘float32x4_t
          vmulq_f32(float32x4_t, float32x4_t)’: target specific option
          mismatch<br>
           vmulq_f32 (float32x4_t __a, float32x4_t __b)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:46:35:
          note: called from here<br>
                   float32x4_t Q8 = vmulq_f32(Q7, Q0);<br>
                                    ~~~~~~~~~^~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1:
          error: inlining failed in call to always_inline ‘void
          vst1_s16(int16_t*, int16x4_t)’: target specific option
          mismatch<br>
           vst1_s16 (int16_t * __a, int16x4_t __b)<br>
           ^~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:44:17:
          note: called from here<br>
                 
           vst1_s16((reinterpret_cast&lt;int16_t*&gt;(&amp;output[i +
          2])), D11);<br>
                 
           ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1:
          error: inlining failed in call to always_inline ‘int16x4_t
          vrev32_s16(int16x4_t)’: target specific option mismatch<br>
           vrev32_s16 (int16x4_t __a)<br>
           ^~~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:43:36:
          note: called from here<br>
                   int16x4_t D11  = vrev32_s16(D10);<br>
                                    ~~~~~~~~~~^~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1:
          error: inlining failed in call to always_inline ‘int16x4_t
          vmovn_s32(int32x4_t)’: target specific option mismatch<br>
           vmovn_s32 (int32x4_t __a)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:42:35:
          note: called from here<br>
                   int16x4_t D10  = vmovn_s32(Q6);<br>
                                    ~~~~~~~~~^~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1:
          error: inlining failed in call to always_inline ‘int32x4_t
          vcvtq_s32_f32(float32x4_t)’: target specific option mismatch<br>
           vcvtq_s32_f32 (float32x4_t __a)<br>
           ^~~~~~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:41:39:
          note: called from here<br>
                   int32x4_t Q6   = vcvtq_s32_f32(Q5);<br>
                                    ~~~~~~~~~~~~~^~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1:
          error: inlining failed in call to always_inline ‘float32x4_t
          vmulq_f32(float32x4_t, float32x4_t)’: target specific option
          mismatch<br>
           vmulq_f32 (float32x4_t __a, float32x4_t __b)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:40:35:
          note: called from here<br>
                   float32x4_t Q5 = vmulq_f32(Q4, Q0);<br>
                                    ~~~~~~~~~^~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1:
          error: inlining failed in call to always_inline ‘void
          vst1_s16(int16_t*, int16x4_t)’: target specific option
          mismatch<br>
           vst1_s16 (int16_t * __a, int16x4_t __b)<br>
           ^~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:38:17:
          note: called from here<br>
                 
           vst1_s16((reinterpret_cast&lt;int16_t*&gt;(&amp;output[i])),
          D9);<br>
                 
           ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1:
          error: inlining failed in call to always_inline ‘int16x4_t
          vrev32_s16(int16x4_t)’: target specific option mismatch<br>
           vrev32_s16 (int16x4_t __a)<br>
           ^~~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:37:36:
          note: called from here<br>
                   int16x4_t D9   = vrev32_s16(D8);<br>
                                    ~~~~~~~~~~^~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1:
          error: inlining failed in call to always_inline ‘int16x4_t
          vmovn_s32(int32x4_t)’: target specific option mismatch<br>
           vmovn_s32 (int32x4_t __a)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:36:35:
          note: called from here<br>
                   int16x4_t D8   = vmovn_s32(Q3);<br>
                                    ~~~~~~~~~^~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1:
          error: inlining failed in call to always_inline ‘int32x4_t
          vcvtq_s32_f32(float32x4_t)’: target specific option mismatch<br>
           vcvtq_s32_f32 (float32x4_t __a)<br>
           ^~~~~~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:35:39:
          note: called from here<br>
                   int32x4_t Q3   = vcvtq_s32_f32(Q2);<br>
                                    ~~~~~~~~~~~~~^~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1:
          error: inlining failed in call to always_inline ‘float32x4_t
          vmulq_f32(float32x4_t, float32x4_t)’: target specific option
          mismatch<br>
           vmulq_f32 (float32x4_t __a, float32x4_t __b)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:34:35:
          note: called from here<br>
                   float32x4_t Q2 = vmulq_f32(Q1, Q0);<br>
                                    ~~~~~~~~~^~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1:
          error: inlining failed in call to always_inline ‘float32x4_t
          vld1q_f32(const float32_t*)’: target specific option mismatch<br>
           vld1q_f32 (const float32_t * __a)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:32:36:
          note: called from here<br>
                   float32x4_t Q10 = vld1q_f32(reinterpret_cast&lt;const
          float*&gt;(&amp;input[i + 6]));<br>
                                   
           ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1:
          error: inlining failed in call to always_inline ‘float32x4_t
          vld1q_f32(const float32_t*)’: target specific option mismatch<br>
           vld1q_f32 (const float32_t * __a)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:31:36:
          note: called from here<br>
                   float32x4_t Q7  = vld1q_f32(reinterpret_cast&lt;const
          float*&gt;(&amp;input[i + 4]));<br>
                                   
           ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1:
          error: inlining failed in call to always_inline ‘float32x4_t
          vld1q_f32(const float32_t*)’: target specific option mismatch<br>
           vld1q_f32 (const float32_t * __a)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:30:36:
          note: called from here<br>
                   float32x4_t Q4  = vld1q_f32(reinterpret_cast&lt;const
          float*&gt;(&amp;input[i + 2]));<br>
                                   
           ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>
          In file included from
          /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1:
          error: inlining failed in call to always_inline ‘float32x4_t
          vld1q_f32(const float32_t*)’: target specific option mismatch<br>
           vld1q_f32 (const float32_t * __a)<br>
           ^~~~~~~~~<br>
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:29:36:
          note: called from here<br>
                   float32x4_t Q1  = vld1q_f32(reinterpret_cast&lt;const
          float*&gt;(&amp;input[i]));<br>
                                   
           ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>
          make[2]: *** [lib/CMakeFiles/uhd.dir/build.make:467:
          lib/CMakeFiles/uhd.dir/convert/convert_with_neon.cpp.o] Error
          1<br>
          make[1]: *** [CMakeFiles/Makefile2:125:
          lib/CMakeFiles/uhd.dir/all] Error 2<br>
          make: *** [Makefile:163: all] Error 2</div>
        <div>-----------------------------------------------------------------------------------------</div>
        <div><br>
        </div>
        <div>Can you help me out to make this compilation work?</div>
        <div><br>
        </div>
        <div>Regards,</div>
        <div>Ofer Saferman<br>
        </div>
        <div><br>
        </div>
      </div>
      <br>
      -- <br>
      This message has been scanned for viruses and
      <br>
      dangerous content by
      <a href="http://www.mailscanner.info/" moz-do-not-send="true"><b>MailScanner</b></a>,
      and is
      <br>
      believed to be clean.
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------F7AEC38C2A0F37FDFA5D0909--


--===============7182921833209024194==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7182921833209024194==--

