Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8439A311E88
	for <lists+usrp-users@lfdr.de>; Sat,  6 Feb 2021 16:58:50 +0100 (CET)
Received: from [::1] (port=60958 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l8Pyu-0001mc-Po; Sat, 06 Feb 2021 10:58:44 -0500
Received: from postman.dtnt.info ([62.219.91.51]:59306)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <ofer@navigicom.com>) id 1l8Pyq-0001f8-Cu
 for usrp-users@lists.ettus.com; Sat, 06 Feb 2021 10:58:40 -0500
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
 by postman.dtnt.info (Postfix) with ESMTPS id CD4664389D
 for <usrp-users@lists.ettus.com>; Sat,  6 Feb 2021 17:57:20 +0200 (IST)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
 by o.dtnt.email (Postfix) with ESMTP id B9A429FB80
 for <usrp-users@lists.ettus.com>; Sat,  6 Feb 2021 17:57:20 +0200 (IST)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
 by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id QNQb5vC0zPpv for <usrp-users@lists.ettus.com>;
 Sat,  6 Feb 2021 17:57:17 +0200 (IST)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
 [209.85.210.51]) by o.dtnt.email (Postfix) with ESMTPSA id 090299F9CD
 for <usrp-users@lists.ettus.com>; Sat,  6 Feb 2021 17:57:16 +0200 (IST)
Received: by mail-ot1-f51.google.com with SMTP id 100so3324485otg.3
 for <usrp-users@lists.ettus.com>; Sat, 06 Feb 2021 07:57:16 -0800 (PST)
X-Gm-Message-State: AOAM531FHIF0hpMFRdXDwmAczQ/0uj45RffgB1Hzf90ep+nMVmY5P3+N
 ICEN1Hox/pGIIsXlL+ru+LIpVpmgAWfFD+00Abk=
X-Google-Smtp-Source: ABdhPJyACpa9eBArgpnHBBJyVRBHYq2mg4dT1O9a0IHWBw4HB8+Pf+aQuk6mlHJhg+MRCetqyjht1CT2t1leQKRAK68=
X-Received: by 2002:a9d:6757:: with SMTP id w23mr7452991otm.101.1612627033598; 
 Sat, 06 Feb 2021 07:57:13 -0800 (PST)
MIME-Version: 1.0
Date: Sat, 6 Feb 2021 17:57:02 +0200
X-Gmail-Original-Message-ID: <CACDReSyFymp6diTdVZSsHhW_8HLxon4T3LvWjHws59_7LFB16w@mail.gmail.com>
Message-ID: <CACDReSyFymp6diTdVZSsHhW_8HLxon4T3LvWjHws59_7LFB16w@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: CD4664389D.A5E9C
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Subject: [USRP-users] Failed to compile UHD 3.15 on E310 target
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
From: Ofer Saferman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ofer Saferman <ofer@navigicom.com>
Content-Type: multipart/mixed; boundary="===============5539254215765612733=="
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

--===============5539254215765612733==
Content-Type: multipart/alternative; boundary="0000000000007e2f7105baacfd8e"

--0000000000007e2f7105baacfd8e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I made a small modification to UHD and would like to compile and use my
version.
Since I never succeeded to cross-compile I decided to try to compile it on
the target itself.
I am working with an USRP E310.
I cloned the 3.15.LTS repository, modified one of the files and tried to
compile.
During compilation I get the following errors (at about 11% of the process):
--------------------------------------------------------------------
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h: In member
function =E2=80=98virtual void
__convert_fc32_1_sc16_item32_le_1_PRIORITY_SIMD::operator()(const
input_type&, const output_type&, size_t)=E2=80=99:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:6740:1: error:
inlining failed in call to always_inline =E2=80=98float32x4_t
vdupq_n_f32(float32_t)=E2=80=99: target specific option mismatch
 vdupq_n_f32 (float32_t __a)
 ^~~~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:27:33:
note: called from here
     float32x4_t Q0 =3D vdupq_n_f32(float(scale_factor));
                      ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1: error:
inlining failed in call to always_inline =E2=80=98void vst1_s16(int16_t*,
int16x4_t)=E2=80=99: target specific option mismatch
 vst1_s16 (int16_t * __a, int16x4_t __b)
 ^~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:56:17:
note: called from here
         vst1_s16((reinterpret_cast<int16_t*>(&output[i + 6])), D15);
         ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1: error:
inlining failed in call to always_inline =E2=80=98int16x4_t vrev32_s16(int1=
6x4_t)=E2=80=99:
target specific option mismatch
 vrev32_s16 (int16x4_t __a)
 ^~~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:55:37:
note: called from here
         int16x4_t D15   =3D vrev32_s16(D14);
                           ~~~~~~~~~~^~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1: error:
inlining failed in call to always_inline =E2=80=98int16x4_t vmovn_s32(int32=
x4_t)=E2=80=99:
target specific option mismatch
 vmovn_s32 (int32x4_t __a)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:54:36:
note: called from here
         int16x4_t D14   =3D vmovn_s32(Q13);
                           ~~~~~~~~~^~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: error:
inlining failed in call to always_inline =E2=80=98int32x4_t
vcvtq_s32_f32(float32x4_t)=E2=80=99: target specific option mismatch
 vcvtq_s32_f32 (float32x4_t __a)
 ^~~~~~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:53:40:
note: called from here
         int32x4_t Q13   =3D vcvtq_s32_f32(Q11);
                           ~~~~~~~~~~~~~^~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1: error:
inlining failed in call to always_inline =E2=80=98float32x4_t
vmulq_f32(float32x4_t, float32x4_t)=E2=80=99: target specific option mismat=
ch
 vmulq_f32 (float32x4_t __a, float32x4_t __b)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:52:36:
note: called from here
         float32x4_t Q11 =3D vmulq_f32(Q10, Q0);
                           ~~~~~~~~~^~~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1: error:
inlining failed in call to always_inline =E2=80=98void vst1_s16(int16_t*,
int16x4_t)=E2=80=99: target specific option mismatch
 vst1_s16 (int16_t * __a, int16x4_t __b)
 ^~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:50:17:
note: called from here
         vst1_s16((reinterpret_cast<int16_t*>(&output[i + 4])), D13);
         ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1: error:
inlining failed in call to always_inline =E2=80=98int16x4_t vrev32_s16(int1=
6x4_t)=E2=80=99:
target specific option mismatch
 vrev32_s16 (int16x4_t __a)
 ^~~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:49:36:
note: called from here
         int16x4_t D13  =3D vrev32_s16(D12);
                          ~~~~~~~~~~^~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1: error:
inlining failed in call to always_inline =E2=80=98int16x4_t vmovn_s32(int32=
x4_t)=E2=80=99:
target specific option mismatch
 vmovn_s32 (int32x4_t __a)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:48:35:
note: called from here
         int16x4_t D12  =3D vmovn_s32(Q9);
                          ~~~~~~~~~^~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: error:
inlining failed in call to always_inline =E2=80=98int32x4_t
vcvtq_s32_f32(float32x4_t)=E2=80=99: target specific option mismatch
 vcvtq_s32_f32 (float32x4_t __a)
 ^~~~~~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:47:39:
note: called from here
         int32x4_t Q9   =3D vcvtq_s32_f32(Q8);
                          ~~~~~~~~~~~~~^~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1: error:
inlining failed in call to always_inline =E2=80=98float32x4_t
vmulq_f32(float32x4_t, float32x4_t)=E2=80=99: target specific option mismat=
ch
 vmulq_f32 (float32x4_t __a, float32x4_t __b)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:46:35:
note: called from here
         float32x4_t Q8 =3D vmulq_f32(Q7, Q0);
                          ~~~~~~~~~^~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1: error:
inlining failed in call to always_inline =E2=80=98void vst1_s16(int16_t*,
int16x4_t)=E2=80=99: target specific option mismatch
 vst1_s16 (int16_t * __a, int16x4_t __b)
 ^~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:44:17:
note: called from here
         vst1_s16((reinterpret_cast<int16_t*>(&output[i + 2])), D11);
         ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1: error:
inlining failed in call to always_inline =E2=80=98int16x4_t vrev32_s16(int1=
6x4_t)=E2=80=99:
target specific option mismatch
 vrev32_s16 (int16x4_t __a)
 ^~~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:43:36:
note: called from here
         int16x4_t D11  =3D vrev32_s16(D10);
                          ~~~~~~~~~~^~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1: error:
inlining failed in call to always_inline =E2=80=98int16x4_t vmovn_s32(int32=
x4_t)=E2=80=99:
target specific option mismatch
 vmovn_s32 (int32x4_t __a)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:42:35:
note: called from here
         int16x4_t D10  =3D vmovn_s32(Q6);
                          ~~~~~~~~~^~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: error:
inlining failed in call to always_inline =E2=80=98int32x4_t
vcvtq_s32_f32(float32x4_t)=E2=80=99: target specific option mismatch
 vcvtq_s32_f32 (float32x4_t __a)
 ^~~~~~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:41:39:
note: called from here
         int32x4_t Q6   =3D vcvtq_s32_f32(Q5);
                          ~~~~~~~~~~~~~^~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1: error:
inlining failed in call to always_inline =E2=80=98float32x4_t
vmulq_f32(float32x4_t, float32x4_t)=E2=80=99: target specific option mismat=
ch
 vmulq_f32 (float32x4_t __a, float32x4_t __b)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:40:35:
note: called from here
         float32x4_t Q5 =3D vmulq_f32(Q4, Q0);
                          ~~~~~~~~~^~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1: error:
inlining failed in call to always_inline =E2=80=98void vst1_s16(int16_t*,
int16x4_t)=E2=80=99: target specific option mismatch
 vst1_s16 (int16_t * __a, int16x4_t __b)
 ^~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:38:17:
note: called from here
         vst1_s16((reinterpret_cast<int16_t*>(&output[i])), D9);
         ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1: error:
inlining failed in call to always_inline =E2=80=98int16x4_t vrev32_s16(int1=
6x4_t)=E2=80=99:
target specific option mismatch
 vrev32_s16 (int16x4_t __a)
 ^~~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:37:36:
note: called from here
         int16x4_t D9   =3D vrev32_s16(D8);
                          ~~~~~~~~~~^~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1: error:
inlining failed in call to always_inline =E2=80=98int16x4_t vmovn_s32(int32=
x4_t)=E2=80=99:
target specific option mismatch
 vmovn_s32 (int32x4_t __a)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:36:35:
note: called from here
         int16x4_t D8   =3D vmovn_s32(Q3);
                          ~~~~~~~~~^~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: error:
inlining failed in call to always_inline =E2=80=98int32x4_t
vcvtq_s32_f32(float32x4_t)=E2=80=99: target specific option mismatch
 vcvtq_s32_f32 (float32x4_t __a)
 ^~~~~~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:35:39:
note: called from here
         int32x4_t Q3   =3D vcvtq_s32_f32(Q2);
                          ~~~~~~~~~~~~~^~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1: error:
inlining failed in call to always_inline =E2=80=98float32x4_t
vmulq_f32(float32x4_t, float32x4_t)=E2=80=99: target specific option mismat=
ch
 vmulq_f32 (float32x4_t __a, float32x4_t __b)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:34:35:
note: called from here
         float32x4_t Q2 =3D vmulq_f32(Q1, Q0);
                          ~~~~~~~~~^~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1: error:
inlining failed in call to always_inline =E2=80=98float32x4_t vld1q_f32(con=
st
float32_t*)=E2=80=99: target specific option mismatch
 vld1q_f32 (const float32_t * __a)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:32:36:
note: called from here
         float32x4_t Q10 =3D vld1q_f32(reinterpret_cast<const
float*>(&input[i + 6]));

 ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1: error:
inlining failed in call to always_inline =E2=80=98float32x4_t vld1q_f32(con=
st
float32_t*)=E2=80=99: target specific option mismatch
 vld1q_f32 (const float32_t * __a)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:31:36:
note: called from here
         float32x4_t Q7  =3D vld1q_f32(reinterpret_cast<const
float*>(&input[i + 4]));

 ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1: error:
inlining failed in call to always_inline =E2=80=98float32x4_t vld1q_f32(con=
st
float32_t*)=E2=80=99: target specific option mismatch
 vld1q_f32 (const float32_t * __a)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:30:36:
note: called from here
         float32x4_t Q4  =3D vld1q_f32(reinterpret_cast<const
float*>(&input[i + 2]));

 ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1: error:
inlining failed in call to always_inline =E2=80=98float32x4_t vld1q_f32(con=
st
float32_t*)=E2=80=99: target specific option mismatch
 vld1q_f32 (const float32_t * __a)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:29:36:
note: called from here
         float32x4_t Q1  =3D vld1q_f32(reinterpret_cast<const
float*>(&input[i]));

 ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:6740:1: error:
inlining failed in call to always_inline =E2=80=98float32x4_t
vdupq_n_f32(float32_t)=E2=80=99: target specific option mismatch
 vdupq_n_f32 (float32_t __a)
 ^~~~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:27:33:
note: called from here
     float32x4_t Q0 =3D vdupq_n_f32(float(scale_factor));
                      ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:6740:1: error:
inlining failed in call to always_inline =E2=80=98float32x4_t
vdupq_n_f32(float32_t)=E2=80=99: target specific option mismatch
 vdupq_n_f32 (float32_t __a)
 ^~~~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:27:33:
note: called from here
     float32x4_t Q0 =3D vdupq_n_f32(float(scale_factor));
                      ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1: error:
inlining failed in call to always_inline =E2=80=98void vst1_s16(int16_t*,
int16x4_t)=E2=80=99: target specific option mismatch
 vst1_s16 (int16_t * __a, int16x4_t __b)
 ^~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:56:17:
note: called from here
         vst1_s16((reinterpret_cast<int16_t*>(&output[i + 6])), D15);
         ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1: error:
inlining failed in call to always_inline =E2=80=98int16x4_t vrev32_s16(int1=
6x4_t)=E2=80=99:
target specific option mismatch
 vrev32_s16 (int16x4_t __a)
 ^~~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:55:37:
note: called from here
         int16x4_t D15   =3D vrev32_s16(D14);
                           ~~~~~~~~~~^~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1: error:
inlining failed in call to always_inline =E2=80=98int16x4_t vmovn_s32(int32=
x4_t)=E2=80=99:
target specific option mismatch
 vmovn_s32 (int32x4_t __a)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:54:36:
note: called from here
         int16x4_t D14   =3D vmovn_s32(Q13);
                           ~~~~~~~~~^~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: error:
inlining failed in call to always_inline =E2=80=98int32x4_t
vcvtq_s32_f32(float32x4_t)=E2=80=99: target specific option mismatch
 vcvtq_s32_f32 (float32x4_t __a)
 ^~~~~~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:53:40:
note: called from here
         int32x4_t Q13   =3D vcvtq_s32_f32(Q11);
                           ~~~~~~~~~~~~~^~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1: error:
inlining failed in call to always_inline =E2=80=98float32x4_t
vmulq_f32(float32x4_t, float32x4_t)=E2=80=99: target specific option mismat=
ch
 vmulq_f32 (float32x4_t __a, float32x4_t __b)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:52:36:
note: called from here
         float32x4_t Q11 =3D vmulq_f32(Q10, Q0);
                           ~~~~~~~~~^~~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1: error:
inlining failed in call to always_inline =E2=80=98void vst1_s16(int16_t*,
int16x4_t)=E2=80=99: target specific option mismatch
 vst1_s16 (int16_t * __a, int16x4_t __b)
 ^~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:50:17:
note: called from here
         vst1_s16((reinterpret_cast<int16_t*>(&output[i + 4])), D13);
         ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1: error:
inlining failed in call to always_inline =E2=80=98int16x4_t vrev32_s16(int1=
6x4_t)=E2=80=99:
target specific option mismatch
 vrev32_s16 (int16x4_t __a)
 ^~~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:49:36:
note: called from here
         int16x4_t D13  =3D vrev32_s16(D12);
                          ~~~~~~~~~~^~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1: error:
inlining failed in call to always_inline =E2=80=98int16x4_t vmovn_s32(int32=
x4_t)=E2=80=99:
target specific option mismatch
 vmovn_s32 (int32x4_t __a)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:48:35:
note: called from here
         int16x4_t D12  =3D vmovn_s32(Q9);
                          ~~~~~~~~~^~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: error:
inlining failed in call to always_inline =E2=80=98int32x4_t
vcvtq_s32_f32(float32x4_t)=E2=80=99: target specific option mismatch
 vcvtq_s32_f32 (float32x4_t __a)
 ^~~~~~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:47:39:
note: called from here
         int32x4_t Q9   =3D vcvtq_s32_f32(Q8);
                          ~~~~~~~~~~~~~^~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1: error:
inlining failed in call to always_inline =E2=80=98float32x4_t
vmulq_f32(float32x4_t, float32x4_t)=E2=80=99: target specific option mismat=
ch
 vmulq_f32 (float32x4_t __a, float32x4_t __b)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:46:35:
note: called from here
         float32x4_t Q8 =3D vmulq_f32(Q7, Q0);
                          ~~~~~~~~~^~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1: error:
inlining failed in call to always_inline =E2=80=98void vst1_s16(int16_t*,
int16x4_t)=E2=80=99: target specific option mismatch
 vst1_s16 (int16_t * __a, int16x4_t __b)
 ^~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:44:17:
note: called from here
         vst1_s16((reinterpret_cast<int16_t*>(&output[i + 2])), D11);
         ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1: error:
inlining failed in call to always_inline =E2=80=98int16x4_t vrev32_s16(int1=
6x4_t)=E2=80=99:
target specific option mismatch
 vrev32_s16 (int16x4_t __a)
 ^~~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:43:36:
note: called from here
         int16x4_t D11  =3D vrev32_s16(D10);
                          ~~~~~~~~~~^~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1: error:
inlining failed in call to always_inline =E2=80=98int16x4_t vmovn_s32(int32=
x4_t)=E2=80=99:
target specific option mismatch
 vmovn_s32 (int32x4_t __a)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:42:35:
note: called from here
         int16x4_t D10  =3D vmovn_s32(Q6);
                          ~~~~~~~~~^~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: error:
inlining failed in call to always_inline =E2=80=98int32x4_t
vcvtq_s32_f32(float32x4_t)=E2=80=99: target specific option mismatch
 vcvtq_s32_f32 (float32x4_t __a)
 ^~~~~~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:41:39:
note: called from here
         int32x4_t Q6   =3D vcvtq_s32_f32(Q5);
                          ~~~~~~~~~~~~~^~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1: error:
inlining failed in call to always_inline =E2=80=98float32x4_t
vmulq_f32(float32x4_t, float32x4_t)=E2=80=99: target specific option mismat=
ch
 vmulq_f32 (float32x4_t __a, float32x4_t __b)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:40:35:
note: called from here
         float32x4_t Q5 =3D vmulq_f32(Q4, Q0);
                          ~~~~~~~~~^~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1: error:
inlining failed in call to always_inline =E2=80=98void vst1_s16(int16_t*,
int16x4_t)=E2=80=99: target specific option mismatch
 vst1_s16 (int16_t * __a, int16x4_t __b)
 ^~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:38:17:
note: called from here
         vst1_s16((reinterpret_cast<int16_t*>(&output[i])), D9);
         ~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1: error:
inlining failed in call to always_inline =E2=80=98int16x4_t vrev32_s16(int1=
6x4_t)=E2=80=99:
target specific option mismatch
 vrev32_s16 (int16x4_t __a)
 ^~~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:37:36:
note: called from here
         int16x4_t D9   =3D vrev32_s16(D8);
                          ~~~~~~~~~~^~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1: error:
inlining failed in call to always_inline =E2=80=98int16x4_t vmovn_s32(int32=
x4_t)=E2=80=99:
target specific option mismatch
 vmovn_s32 (int32x4_t __a)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:36:35:
note: called from here
         int16x4_t D8   =3D vmovn_s32(Q3);
                          ~~~~~~~~~^~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: error:
inlining failed in call to always_inline =E2=80=98int32x4_t
vcvtq_s32_f32(float32x4_t)=E2=80=99: target specific option mismatch
 vcvtq_s32_f32 (float32x4_t __a)
 ^~~~~~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:35:39:
note: called from here
         int32x4_t Q3   =3D vcvtq_s32_f32(Q2);
                          ~~~~~~~~~~~~~^~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1: error:
inlining failed in call to always_inline =E2=80=98float32x4_t
vmulq_f32(float32x4_t, float32x4_t)=E2=80=99: target specific option mismat=
ch
 vmulq_f32 (float32x4_t __a, float32x4_t __b)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:34:35:
note: called from here
         float32x4_t Q2 =3D vmulq_f32(Q1, Q0);
                          ~~~~~~~~~^~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1: error:
inlining failed in call to always_inline =E2=80=98float32x4_t vld1q_f32(con=
st
float32_t*)=E2=80=99: target specific option mismatch
 vld1q_f32 (const float32_t * __a)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:32:36:
note: called from here
         float32x4_t Q10 =3D vld1q_f32(reinterpret_cast<const
float*>(&input[i + 6]));

 ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1: error:
inlining failed in call to always_inline =E2=80=98float32x4_t vld1q_f32(con=
st
float32_t*)=E2=80=99: target specific option mismatch
 vld1q_f32 (const float32_t * __a)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:31:36:
note: called from here
         float32x4_t Q7  =3D vld1q_f32(reinterpret_cast<const
float*>(&input[i + 4]));

 ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1: error:
inlining failed in call to always_inline =E2=80=98float32x4_t vld1q_f32(con=
st
float32_t*)=E2=80=99: target specific option mismatch
 vld1q_f32 (const float32_t * __a)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:30:36:
note: called from here
         float32x4_t Q4  =3D vld1q_f32(reinterpret_cast<const
float*>(&input[i + 2]));

 ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:
/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1: error:
inlining failed in call to always_inline =E2=80=98float32x4_t vld1q_f32(con=
st
float32_t*)=E2=80=99: target specific option mismatch
 vld1q_f32 (const float32_t * __a)
 ^~~~~~~~~
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:29:36:
note: called from here
         float32x4_t Q1  =3D vld1q_f32(reinterpret_cast<const
float*>(&input[i]));

 ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
make[2]: *** [lib/CMakeFiles/uhd.dir/build.make:467:
lib/CMakeFiles/uhd.dir/convert/convert_with_neon.cpp.o] Error 1
make[1]: *** [CMakeFiles/Makefile2:125: lib/CMakeFiles/uhd.dir/all] Error 2
make: *** [Makefile:163: all] Error 2
---------------------------------------------------------------------------=
--------------

Can you help me out to make this compilation work?

Regards,
Ofer Saferman

--=20
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--0000000000007e2f7105baacfd8e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I made a small modifi=
cation to UHD and would like to compile and use my version.</div><div>Since=
 I never succeeded to cross-compile I decided to try to compile it on the t=
arget itself.</div><div>I am working with an USRP E310.</div><div>I cloned =
the 3.15.LTS repository, modified one of the files and tried to compile.</d=
iv><div>During compilation I get the following errors (at about 11% of the =
process):</div><div>-------------------------------------------------------=
-------------</div><div>In file included from /home/root/uhd/uhd-3.15.LTS/h=
ost/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-musl=
eabi/8.2.0/include/arm_neon.h: In member function =E2=80=98virtual void __c=
onvert_fc32_1_sc16_item32_le_1_PRIORITY_SIMD::operator()(const input_type&a=
mp;, const output_type&amp;, size_t)=E2=80=99:<br>/usr/lib/gcc/arm-oe-linux=
-musleabi/8.2.0/include/arm_neon.h:6740:1: error: inlining failed in call t=
o always_inline =E2=80=98float32x4_t vdupq_n_f32(float32_t)=E2=80=99: targe=
t specific option mismatch<br>=C2=A0vdupq_n_f32 (float32_t __a)<br>=C2=A0^~=
~~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon=
.cpp:27:33: note: called from here<br>=C2=A0 =C2=A0 =C2=A0float32x4_t Q0 =
=3D vdupq_n_f32(float(scale_factor));<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~=
<br>In file included from /home/root/uhd/uhd-3.15.LTS/host/lib/convert/conv=
ert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/a=
rm_neon.h:10844:1: error: inlining failed in call to always_inline =E2=80=
=98void vst1_s16(int16_t*, int16x4_t)=E2=80=99: target specific option mism=
atch<br>=C2=A0vst1_s16 (int16_t * __a, int16x4_t __b)<br>=C2=A0^~~~~~~~<br>=
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:56:17: n=
ote: called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vst1_s16((reinte=
rpret_cast&lt;int16_t*&gt;(&amp;output[i + 6])), D15);<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~<br>In file included from /home/root/uhd/uhd-3.15.LTS/host/lib/convert/con=
vert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/=
arm_neon.h:9027:1: error: inlining failed in call to always_inline =E2=80=
=98int16x4_t vrev32_s16(int16x4_t)=E2=80=99: target specific option mismatc=
h<br>=C2=A0vrev32_s16 (int16x4_t __a)<br>=C2=A0^~~~~~~~~~<br>/home/root/uhd=
/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:55:37: note: called fr=
om here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int16x4_t D15 =C2=A0 =3D vrev3=
2_s16(D14);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~~~~~~~~~^~~~~<br>In file included f=
rom /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<=
br>/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1: erro=
r: inlining failed in call to always_inline =E2=80=98int16x4_t vmovn_s32(in=
t32x4_t)=E2=80=99: target specific option mismatch<br>=C2=A0vmovn_s32 (int3=
2x4_t __a)<br>=C2=A0^~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/conve=
rt/convert_with_neon.cpp:54:36: note: called from here<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0int16x4_t D14 =C2=A0 =3D vmovn_s32(Q13);<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0~~~~~~~~~^~~~~<br>In file included from /home/root/uhd/uhd-3.15.L=
TS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-=
musleabi/8.2.0/include/arm_neon.h:7440:1: error: inlining failed in call to=
 always_inline =E2=80=98int32x4_t vcvtq_s32_f32(float32x4_t)=E2=80=99: targ=
et specific option mismatch<br>=C2=A0vcvtq_s32_f32 (float32x4_t __a)<br>=C2=
=A0^~~~~~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_wi=
th_neon.cpp:53:40: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0int32x4_t Q13 =C2=A0 =3D vcvtq_s32_f32(Q11);<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0~~~~~~~~~~~~~^~~~~<br>In file included from /home/root/uhd/uhd-3.15.LTS/=
host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-mus=
leabi/8.2.0/include/arm_neon.h:1172:1: error: inlining failed in call to al=
ways_inline =E2=80=98float32x4_t vmulq_f32(float32x4_t, float32x4_t)=E2=80=
=99: target specific option mismatch<br>=C2=A0vmulq_f32 (float32x4_t __a, f=
loat32x4_t __b)<br>=C2=A0^~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/=
convert/convert_with_neon.cpp:52:36: note: called from here<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0float32x4_t Q11 =3D vmulq_f32(Q10, Q0);<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0~~~~~~~~~^~~~~~~~~<br>In file included from /home/root/uhd=
/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/ar=
m-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1: error: inlining faile=
d in call to always_inline =E2=80=98void vst1_s16(int16_t*, int16x4_t)=E2=
=80=99: target specific option mismatch<br>=C2=A0vst1_s16 (int16_t * __a, i=
nt16x4_t __b)<br>=C2=A0^~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/con=
vert/convert_with_neon.cpp:50:17: note: called from here<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0vst1_s16((reinterpret_cast&lt;int16_t*&gt;(&amp;output[=
i + 4])), D13);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~~~~~~~^~~~~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>In file included from /home/root/u=
hd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/=
arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1: error: inlining fail=
ed in call to always_inline =E2=80=98int16x4_t vrev32_s16(int16x4_t)=E2=80=
=99: target specific option mismatch<br>=C2=A0vrev32_s16 (int16x4_t __a)<br=
>=C2=A0^~~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_w=
ith_neon.cpp:49:36: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0int16x4_t D13 =C2=A0=3D vrev32_s16(D12);<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ~~~~~~~~=
~~^~~~~<br>In file included from /home/root/uhd/uhd-3.15.LTS/host/lib/conve=
rt/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/in=
clude/arm_neon.h:7552:1: error: inlining failed in call to always_inline =
=E2=80=98int16x4_t vmovn_s32(int32x4_t)=E2=80=99: target specific option mi=
smatch<br>=C2=A0vmovn_s32 (int32x4_t __a)<br>=C2=A0^~~~~~~~~<br>/home/root/=
uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:48:35: note: called=
 from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int16x4_t D12 =C2=A0=3D vmo=
vn_s32(Q9);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ~~~~~~~~~^~~~<br>In file included from /hom=
e/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/=
lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: error: inlin=
ing failed in call to always_inline =E2=80=98int32x4_t vcvtq_s32_f32(float3=
2x4_t)=E2=80=99: target specific option mismatch<br>=C2=A0vcvtq_s32_f32 (fl=
oat32x4_t __a)<br>=C2=A0^~~~~~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/l=
ib/convert/convert_with_neon.cpp:47:39: note: called from here<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0int32x4_t Q9 =C2=A0 =3D vcvtq_s32_f32(Q8);<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ~~~~~~~~~~~~~^~~~<br>In file included from /home/root/uhd=
/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/ar=
m-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1: error: inlining failed=
 in call to always_inline =E2=80=98float32x4_t vmulq_f32(float32x4_t, float=
32x4_t)=E2=80=99: target specific option mismatch<br>=C2=A0vmulq_f32 (float=
32x4_t __a, float32x4_t __b)<br>=C2=A0^~~~~~~~~<br>/home/root/uhd/uhd-3.15.=
LTS/host/lib/convert/convert_with_neon.cpp:46:35: note: called from here<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0float32x4_t Q8 =3D vmulq_f32(Q7, Q0);<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ~~~~~~~~~^~~~~~~~<br>In file included from /home/root/uhd=
/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/ar=
m-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1: error: inlining faile=
d in call to always_inline =E2=80=98void vst1_s16(int16_t*, int16x4_t)=E2=
=80=99: target specific option mismatch<br>=C2=A0vst1_s16 (int16_t * __a, i=
nt16x4_t __b)<br>=C2=A0^~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/con=
vert/convert_with_neon.cpp:44:17: note: called from here<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0vst1_s16((reinterpret_cast&lt;int16_t*&gt;(&amp;output[=
i + 2])), D11);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~~~~~~~^~~~~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>In file included from /home/root/u=
hd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/=
arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:9027:1: error: inlining fail=
ed in call to always_inline =E2=80=98int16x4_t vrev32_s16(int16x4_t)=E2=80=
=99: target specific option mismatch<br>=C2=A0vrev32_s16 (int16x4_t __a)<br=
>=C2=A0^~~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_w=
ith_neon.cpp:43:36: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0int16x4_t D11 =C2=A0=3D vrev32_s16(D10);<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ~~~~~~~~=
~~^~~~~<br>In file included from /home/root/uhd/uhd-3.15.LTS/host/lib/conve=
rt/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/in=
clude/arm_neon.h:7552:1: error: inlining failed in call to always_inline =
=E2=80=98int16x4_t vmovn_s32(int32x4_t)=E2=80=99: target specific option mi=
smatch<br>=C2=A0vmovn_s32 (int32x4_t __a)<br>=C2=A0^~~~~~~~~<br>/home/root/=
uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:42:35: note: called=
 from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int16x4_t D10 =C2=A0=3D vmo=
vn_s32(Q6);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ~~~~~~~~~^~~~<br>In file included from /hom=
e/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/=
lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: error: inlin=
ing failed in call to always_inline =E2=80=98int32x4_t vcvtq_s32_f32(float3=
2x4_t)=E2=80=99: target specific option mismatch<br>=C2=A0vcvtq_s32_f32 (fl=
oat32x4_t __a)<br>=C2=A0^~~~~~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/l=
ib/convert/convert_with_neon.cpp:41:39: note: called from here<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0int32x4_t Q6 =C2=A0 =3D vcvtq_s32_f32(Q5);<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ~~~~~~~~~~~~~^~~~<br>In file included from /home/root/uhd=
/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/ar=
m-oe-linux-musleabi/8.2.0/include/arm_neon.h:1172:1: error: inlining failed=
 in call to always_inline =E2=80=98float32x4_t vmulq_f32(float32x4_t, float=
32x4_t)=E2=80=99: target specific option mismatch<br>=C2=A0vmulq_f32 (float=
32x4_t __a, float32x4_t __b)<br>=C2=A0^~~~~~~~~<br>/home/root/uhd/uhd-3.15.=
LTS/host/lib/convert/convert_with_neon.cpp:40:35: note: called from here<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0float32x4_t Q5 =3D vmulq_f32(Q4, Q0);<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ~~~~~~~~~^~~~~~~~<br>In file included from /home/root/uhd=
/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/ar=
m-oe-linux-musleabi/8.2.0/include/arm_neon.h:10844:1: error: inlining faile=
d in call to always_inline =E2=80=98void vst1_s16(int16_t*, int16x4_t)=E2=
=80=99: target specific option mismatch<br>=C2=A0vst1_s16 (int16_t * __a, i=
nt16x4_t __b)<br>=C2=A0^~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/con=
vert/convert_with_neon.cpp:38:17: note: called from here<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0vst1_s16((reinterpret_cast&lt;int16_t*&gt;(&amp;output[=
i])), D9);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~~~~~~~^~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>In file included from /home/root/uhd/uhd-3.1=
5.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-lin=
ux-musleabi/8.2.0/include/arm_neon.h:9027:1: error: inlining failed in call=
 to always_inline =E2=80=98int16x4_t vrev32_s16(int16x4_t)=E2=80=99: target=
 specific option mismatch<br>=C2=A0vrev32_s16 (int16x4_t __a)<br>=C2=A0^~~~=
~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cp=
p:37:36: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int16x=
4_t D9 =C2=A0 =3D vrev32_s16(D8);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ~~~~~~~~~~^~~~<br>In f=
ile included from /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with=
_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.=
h:7552:1: error: inlining failed in call to always_inline =E2=80=98int16x4_=
t vmovn_s32(int32x4_t)=E2=80=99: target specific option mismatch<br>=C2=A0v=
movn_s32 (int32x4_t __a)<br>=C2=A0^~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/=
host/lib/convert/convert_with_neon.cpp:36:35: note: called from here<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int16x4_t D8 =C2=A0 =3D vmovn_s32(Q3);<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ~~~~~~~~~^~~~<br>In file included from /home/root/uhd/uhd=
-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe=
-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: error: inlining failed in =
call to always_inline =E2=80=98int32x4_t vcvtq_s32_f32(float32x4_t)=E2=80=
=99: target specific option mismatch<br>=C2=A0vcvtq_s32_f32 (float32x4_t __=
a)<br>=C2=A0^~~~~~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/c=
onvert_with_neon.cpp:35:39: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0int32x4_t Q3 =C2=A0 =3D vcvtq_s32_f32(Q2);<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ~~~~~~~~~~~~~^~~~<br>In file included from /home/root/uhd/uhd-3.15.LTS/=
host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-mus=
leabi/8.2.0/include/arm_neon.h:1172:1: error: inlining failed in call to al=
ways_inline =E2=80=98float32x4_t vmulq_f32(float32x4_t, float32x4_t)=E2=80=
=99: target specific option mismatch<br>=C2=A0vmulq_f32 (float32x4_t __a, f=
loat32x4_t __b)<br>=C2=A0^~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/=
convert/convert_with_neon.cpp:34:35: note: called from here<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0float32x4_t Q2 =3D vmulq_f32(Q1, Q0);<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ~~~~~~~~~^~~~~~~~<br>In file included from /home/root/uhd/uhd-3.15.L=
TS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-=
musleabi/8.2.0/include/arm_neon.h:10392:1: error: inlining failed in call t=
o always_inline =E2=80=98float32x4_t vld1q_f32(const float32_t*)=E2=80=99: =
target specific option mismatch<br>=C2=A0vld1q_f32 (const float32_t * __a)<=
br>=C2=A0^~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_=
with_neon.cpp:32:36: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0float32x4_t Q10 =3D vld1q_f32(reinterpret_cast&lt;const float*&gt;(&a=
mp;input[i + 6]));<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~<br>In file included from /home/root/uhd/uhd-3.15=
.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linu=
x-musleabi/8.2.0/include/arm_neon.h:10392:1: error: inlining failed in call=
 to always_inline =E2=80=98float32x4_t vld1q_f32(const float32_t*)=E2=80=99=
: target specific option mismatch<br>=C2=A0vld1q_f32 (const float32_t * __a=
)<br>=C2=A0^~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/conver=
t_with_neon.cpp:31:36: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0float32x4_t Q7 =C2=A0=3D vld1q_f32(reinterpret_cast&lt;const floa=
t*&gt;(&amp;input[i + 4]));<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~~~~~~~~^~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>In file included from /home/root/uh=
d/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/a=
rm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1: error: inlining fail=
ed in call to always_inline =E2=80=98float32x4_t vld1q_f32(const float32_t*=
)=E2=80=99: target specific option mismatch<br>=C2=A0vld1q_f32 (const float=
32_t * __a)<br>=C2=A0^~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/conv=
ert/convert_with_neon.cpp:30:36: note: called from here<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0float32x4_t Q4 =C2=A0=3D vld1q_f32(reinterpret_cast&lt;=
const float*&gt;(&amp;input[i + 2]));<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~~~~~~~~^~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>In file included from /home=
/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/l=
ib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:10392:1: error: inlin=
ing failed in call to always_inline =E2=80=98float32x4_t vld1q_f32(const fl=
oat32_t*)=E2=80=99: target specific option mismatch<br>=C2=A0vld1q_f32 (con=
st float32_t * __a)<br>=C2=A0^~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/=
lib/convert/convert_with_neon.cpp:29:36: note: called from here<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0float32x4_t Q1 =C2=A0=3D vld1q_f32(reinterpret_c=
ast&lt;const float*&gt;(&amp;input[i]));<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~~~~~~~~=
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>In file included from /home/=
root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/li=
b/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:6740:1: error: inlinin=
g failed in call to always_inline =E2=80=98float32x4_t vdupq_n_f32(float32_=
t)=E2=80=99: target specific option mismatch<br>=C2=A0vdupq_n_f32 (float32_=
t __a)<br>=C2=A0^~~~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert=
/convert_with_neon.cpp:27:33: note: called from here<br>=C2=A0 =C2=A0 =C2=
=A0float32x4_t Q0 =3D vdupq_n_f32(float(scale_factor));<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ~~~~~~~~~~~^=
~~~~~~~~~~~~~~~~~~~~<br>In file included from /home/root/uhd/uhd-3.15.LTS/h=
ost/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-musl=
eabi/8.2.0/include/arm_neon.h:6740:1: error: inlining failed in call to alw=
ays_inline =E2=80=98float32x4_t vdupq_n_f32(float32_t)=E2=80=99: target spe=
cific option mismatch<br>=C2=A0vdupq_n_f32 (float32_t __a)<br>=C2=A0^~~~~~~=
~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:=
27:33: note: called from here<br>=C2=A0 =C2=A0 =C2=A0float32x4_t Q0 =3D vdu=
pq_n_f32(float(scale_factor));<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~<br>In =
file included from /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_wit=
h_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon=
.h:10844:1: error: inlining failed in call to always_inline =E2=80=98void v=
st1_s16(int16_t*, int16x4_t)=E2=80=99: target specific option mismatch<br>=
=C2=A0vst1_s16 (int16_t * __a, int16x4_t __b)<br>=C2=A0^~~~~~~~<br>/home/ro=
ot/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:56:17: note: cal=
led from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vst1_s16((reinterpret_ca=
st&lt;int16_t*&gt;(&amp;output[i + 6])), D15);<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>In=
 file included from /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_wi=
th_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neo=
n.h:9027:1: error: inlining failed in call to always_inline =E2=80=98int16x=
4_t vrev32_s16(int16x4_t)=E2=80=99: target specific option mismatch<br>=C2=
=A0vrev32_s16 (int16x4_t __a)<br>=C2=A0^~~~~~~~~~<br>/home/root/uhd/uhd-3.1=
5.LTS/host/lib/convert/convert_with_neon.cpp:55:37: note: called from here<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int16x4_t D15 =C2=A0 =3D vrev32_s16(D1=
4);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~~~~~~~~~^~~~~<br>In file included from /ho=
me/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr=
/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1: error: inli=
ning failed in call to always_inline =E2=80=98int16x4_t vmovn_s32(int32x4_t=
)=E2=80=99: target specific option mismatch<br>=C2=A0vmovn_s32 (int32x4_t _=
_a)<br>=C2=A0^~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/conv=
ert_with_neon.cpp:54:36: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0int16x4_t D14 =C2=A0 =3D vmovn_s32(Q13);<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0~~~~~~~~~^~~~~<br>In file included from /home/root/uhd/uhd-3.15.LTS/host=
/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-musleab=
i/8.2.0/include/arm_neon.h:7440:1: error: inlining failed in call to always=
_inline =E2=80=98int32x4_t vcvtq_s32_f32(float32x4_t)=E2=80=99: target spec=
ific option mismatch<br>=C2=A0vcvtq_s32_f32 (float32x4_t __a)<br>=C2=A0^~~~=
~~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon=
.cpp:53:40: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int=
32x4_t Q13 =C2=A0 =3D vcvtq_s32_f32(Q11);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~~~~~=
~~~~~~~^~~~~<br>In file included from /home/root/uhd/uhd-3.15.LTS/host/lib/=
convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-musleabi/8.2=
.0/include/arm_neon.h:1172:1: error: inlining failed in call to always_inli=
ne =E2=80=98float32x4_t vmulq_f32(float32x4_t, float32x4_t)=E2=80=99: targe=
t specific option mismatch<br>=C2=A0vmulq_f32 (float32x4_t __a, float32x4_t=
 __b)<br>=C2=A0^~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/co=
nvert_with_neon.cpp:52:36: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0float32x4_t Q11 =3D vmulq_f32(Q10, Q0);<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0~~~~~~~~~^~~~~~~~~<br>In file included from /home/root/uhd/uhd-3.15.L=
TS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-=
musleabi/8.2.0/include/arm_neon.h:10844:1: error: inlining failed in call t=
o always_inline =E2=80=98void vst1_s16(int16_t*, int16x4_t)=E2=80=99: targe=
t specific option mismatch<br>=C2=A0vst1_s16 (int16_t * __a, int16x4_t __b)=
<br>=C2=A0^~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_=
with_neon.cpp:50:17: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0vst1_s16((reinterpret_cast&lt;int16_t*&gt;(&amp;output[i + 4])), D13)=
;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~<br>In file included from /home/root/uhd/uhd-3.15.LT=
S/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-m=
usleabi/8.2.0/include/arm_neon.h:9027:1: error: inlining failed in call to =
always_inline =E2=80=98int16x4_t vrev32_s16(int16x4_t)=E2=80=99: target spe=
cific option mismatch<br>=C2=A0vrev32_s16 (int16x4_t __a)<br>=C2=A0^~~~~~~~=
~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:49=
:36: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int16x4_t =
D13 =C2=A0=3D vrev32_s16(D12);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ~~~~~~~~~~^~~~~<br>In fil=
e included from /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_n=
eon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:=
7552:1: error: inlining failed in call to always_inline =E2=80=98int16x4_t =
vmovn_s32(int32x4_t)=E2=80=99: target specific option mismatch<br>=C2=A0vmo=
vn_s32 (int32x4_t __a)<br>=C2=A0^~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/ho=
st/lib/convert/convert_with_neon.cpp:48:35: note: called from here<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int16x4_t D12 =C2=A0=3D vmovn_s32(Q9);<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ~~~~~~~~~^~~~<br>In file included from /home/root/uhd/uhd=
-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe=
-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: error: inlining failed in =
call to always_inline =E2=80=98int32x4_t vcvtq_s32_f32(float32x4_t)=E2=80=
=99: target specific option mismatch<br>=C2=A0vcvtq_s32_f32 (float32x4_t __=
a)<br>=C2=A0^~~~~~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/c=
onvert_with_neon.cpp:47:39: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0int32x4_t Q9 =C2=A0 =3D vcvtq_s32_f32(Q8);<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ~~~~~~~~~~~~~^~~~<br>In file included from /home/root/uhd/uhd-3.15.LTS/=
host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-mus=
leabi/8.2.0/include/arm_neon.h:1172:1: error: inlining failed in call to al=
ways_inline =E2=80=98float32x4_t vmulq_f32(float32x4_t, float32x4_t)=E2=80=
=99: target specific option mismatch<br>=C2=A0vmulq_f32 (float32x4_t __a, f=
loat32x4_t __b)<br>=C2=A0^~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/=
convert/convert_with_neon.cpp:46:35: note: called from here<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0float32x4_t Q8 =3D vmulq_f32(Q7, Q0);<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ~~~~~~~~~^~~~~~~~<br>In file included from /home/root/uhd/uhd-3.15.L=
TS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-=
musleabi/8.2.0/include/arm_neon.h:10844:1: error: inlining failed in call t=
o always_inline =E2=80=98void vst1_s16(int16_t*, int16x4_t)=E2=80=99: targe=
t specific option mismatch<br>=C2=A0vst1_s16 (int16_t * __a, int16x4_t __b)=
<br>=C2=A0^~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_=
with_neon.cpp:44:17: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0vst1_s16((reinterpret_cast&lt;int16_t*&gt;(&amp;output[i + 2])), D11)=
;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~<br>In file included from /home/root/uhd/uhd-3.15.LT=
S/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-m=
usleabi/8.2.0/include/arm_neon.h:9027:1: error: inlining failed in call to =
always_inline =E2=80=98int16x4_t vrev32_s16(int16x4_t)=E2=80=99: target spe=
cific option mismatch<br>=C2=A0vrev32_s16 (int16x4_t __a)<br>=C2=A0^~~~~~~~=
~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:43=
:36: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int16x4_t =
D11 =C2=A0=3D vrev32_s16(D10);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ~~~~~~~~~~^~~~~<br>In fil=
e included from /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_n=
eon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:=
7552:1: error: inlining failed in call to always_inline =E2=80=98int16x4_t =
vmovn_s32(int32x4_t)=E2=80=99: target specific option mismatch<br>=C2=A0vmo=
vn_s32 (int32x4_t __a)<br>=C2=A0^~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/ho=
st/lib/convert/convert_with_neon.cpp:42:35: note: called from here<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int16x4_t D10 =C2=A0=3D vmovn_s32(Q6);<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ~~~~~~~~~^~~~<br>In file included from /home/root/uhd/uhd=
-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe=
-linux-musleabi/8.2.0/include/arm_neon.h:7440:1: error: inlining failed in =
call to always_inline =E2=80=98int32x4_t vcvtq_s32_f32(float32x4_t)=E2=80=
=99: target specific option mismatch<br>=C2=A0vcvtq_s32_f32 (float32x4_t __=
a)<br>=C2=A0^~~~~~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/c=
onvert_with_neon.cpp:41:39: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0int32x4_t Q6 =C2=A0 =3D vcvtq_s32_f32(Q5);<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ~~~~~~~~~~~~~^~~~<br>In file included from /home/root/uhd/uhd-3.15.LTS/=
host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-mus=
leabi/8.2.0/include/arm_neon.h:1172:1: error: inlining failed in call to al=
ways_inline =E2=80=98float32x4_t vmulq_f32(float32x4_t, float32x4_t)=E2=80=
=99: target specific option mismatch<br>=C2=A0vmulq_f32 (float32x4_t __a, f=
loat32x4_t __b)<br>=C2=A0^~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/=
convert/convert_with_neon.cpp:40:35: note: called from here<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0float32x4_t Q5 =3D vmulq_f32(Q4, Q0);<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ~~~~~~~~~^~~~~~~~<br>In file included from /home/root/uhd/uhd-3.15.L=
TS/host/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-=
musleabi/8.2.0/include/arm_neon.h:10844:1: error: inlining failed in call t=
o always_inline =E2=80=98void vst1_s16(int16_t*, int16x4_t)=E2=80=99: targe=
t specific option mismatch<br>=C2=A0vst1_s16 (int16_t * __a, int16x4_t __b)=
<br>=C2=A0^~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_=
with_neon.cpp:38:17: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0vst1_s16((reinterpret_cast&lt;int16_t*&gt;(&amp;output[i])), D9);<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~<br>In file included from /home/root/uhd/uhd-3.15.LTS/host/lib=
/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-musleabi/8.=
2.0/include/arm_neon.h:9027:1: error: inlining failed in call to always_inl=
ine =E2=80=98int16x4_t vrev32_s16(int16x4_t)=E2=80=99: target specific opti=
on mismatch<br>=C2=A0vrev32_s16 (int16x4_t __a)<br>=C2=A0^~~~~~~~~~<br>/hom=
e/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:37:36: note:=
 called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int16x4_t D9 =C2=A0 =
=3D vrev32_s16(D8);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ~~~~~~~~~~^~~~<br>In file included f=
rom /home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:10:<=
br>/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include/arm_neon.h:7552:1: erro=
r: inlining failed in call to always_inline =E2=80=98int16x4_t vmovn_s32(in=
t32x4_t)=E2=80=99: target specific option mismatch<br>=C2=A0vmovn_s32 (int3=
2x4_t __a)<br>=C2=A0^~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/conve=
rt/convert_with_neon.cpp:36:35: note: called from here<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0int16x4_t D8 =C2=A0 =3D vmovn_s32(Q3);<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ~~~~~~~~~^~~~<br>In file included from /home/root/uhd/uhd-3.15.LTS/host=
/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-musleab=
i/8.2.0/include/arm_neon.h:7440:1: error: inlining failed in call to always=
_inline =E2=80=98int32x4_t vcvtq_s32_f32(float32x4_t)=E2=80=99: target spec=
ific option mismatch<br>=C2=A0vcvtq_s32_f32 (float32x4_t __a)<br>=C2=A0^~~~=
~~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon=
.cpp:35:39: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int=
32x4_t Q3 =C2=A0 =3D vcvtq_s32_f32(Q2);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ~~~~~~~~~~~~~^~=
~~<br>In file included from /home/root/uhd/uhd-3.15.LTS/host/lib/convert/co=
nvert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include=
/arm_neon.h:1172:1: error: inlining failed in call to always_inline =E2=80=
=98float32x4_t vmulq_f32(float32x4_t, float32x4_t)=E2=80=99: target specifi=
c option mismatch<br>=C2=A0vmulq_f32 (float32x4_t __a, float32x4_t __b)<br>=
=C2=A0^~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_wit=
h_neon.cpp:34:35: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0float32x4_t Q2 =3D vmulq_f32(Q1, Q0);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ~~~~~~~~~^~~~~~=
~~<br>In file included from /home/root/uhd/uhd-3.15.LTS/host/lib/convert/co=
nvert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/include=
/arm_neon.h:10392:1: error: inlining failed in call to always_inline =E2=80=
=98float32x4_t vld1q_f32(const float32_t*)=E2=80=99: target specific option=
 mismatch<br>=C2=A0vld1q_f32 (const float32_t * __a)<br>=C2=A0^~~~~~~~~<br>=
/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:32:36: n=
ote: called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0float32x4_t Q10 =
=3D vld1q_f32(reinterpret_cast&lt;const float*&gt;(&amp;input[i + 6]));<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~<br>In file included from /home/root/uhd/uhd-3.15.LTS/host/lib/convert=
/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-musleabi/8.2.0/incl=
ude/arm_neon.h:10392:1: error: inlining failed in call to always_inline =E2=
=80=98float32x4_t vld1q_f32(const float32_t*)=E2=80=99: target specific opt=
ion mismatch<br>=C2=A0vld1q_f32 (const float32_t * __a)<br>=C2=A0^~~~~~~~~<=
br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cpp:31:36=
: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0float32x4_t Q=
7 =C2=A0=3D vld1q_f32(reinterpret_cast&lt;const float*&gt;(&amp;input[i + 4=
]));<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~<br>In file included from /home/root/uhd/uhd-3.15.LTS/host/lib/=
convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-musleabi/8.2=
.0/include/arm_neon.h:10392:1: error: inlining failed in call to always_inl=
ine =E2=80=98float32x4_t vld1q_f32(const float32_t*)=E2=80=99: target speci=
fic option mismatch<br>=C2=A0vld1q_f32 (const float32_t * __a)<br>=C2=A0^~~=
~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_with_neon.cp=
p:30:36: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0float3=
2x4_t Q4 =C2=A0=3D vld1q_f32(reinterpret_cast&lt;const float*&gt;(&amp;inpu=
t[i + 2]));<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~<br>In file included from /home/root/uhd/uhd-3.15.LTS/ho=
st/lib/convert/convert_with_neon.cpp:10:<br>/usr/lib/gcc/arm-oe-linux-musle=
abi/8.2.0/include/arm_neon.h:10392:1: error: inlining failed in call to alw=
ays_inline =E2=80=98float32x4_t vld1q_f32(const float32_t*)=E2=80=99: targe=
t specific option mismatch<br>=C2=A0vld1q_f32 (const float32_t * __a)<br>=
=C2=A0^~~~~~~~~<br>/home/root/uhd/uhd-3.15.LTS/host/lib/convert/convert_wit=
h_neon.cpp:29:36: note: called from here<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0float32x4_t Q1 =C2=A0=3D vld1q_f32(reinterpret_cast&lt;const float*&gt;(=
&amp;input[i]));<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~<br>make[2]: *** [lib/CMakeFiles/uhd.dir/build.make:467:=
 lib/CMakeFiles/uhd.dir/convert/convert_with_neon.cpp.o] Error 1<br>make[1]=
: *** [CMakeFiles/Makefile2:125: lib/CMakeFiles/uhd.dir/all] Error 2<br>mak=
e: *** [Makefile:163: all] Error 2</div><div>------------------------------=
-----------------------------------------------------------</div><div><br><=
/div><div>Can you help me out to make this compilation work?</div><div><br>=
</div><div>Regards,</div><div>Ofer Saferman<br></div><div><br></div></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--0000000000007e2f7105baacfd8e--


--===============5539254215765612733==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5539254215765612733==--

