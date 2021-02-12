Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB6F319F73
	for <lists+usrp-users@lfdr.de>; Fri, 12 Feb 2021 14:10:28 +0100 (CET)
Received: from [::1] (port=38262 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lAYDI-0000z9-E3; Fri, 12 Feb 2021 08:10:24 -0500
Received: from sonic304-21.consmr.mail.ne1.yahoo.com ([66.163.191.147]:43330)
 by mm2.emwd.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <mikerd1@verizon.net>) id 1lAYDE-0000rM-Ao
 for usrp-users@lists.ettus.com; Fri, 12 Feb 2021 08:10:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048;
 t=1613135378; bh=bngfImBAePleRdJW542R74kGTi9xnjQqcz4MFEjiuQ0=;
 h=Subject:To:References:From:Date:In-Reply-To:From:Subject:Reply-To;
 b=cnsXag1qalXR+6Da4VzhdEEDqtZRIaffhtXOJL0UK3b2C4rYyU5dZ5TVH8tP85xnzTFcMNm3Spi/RFdMl3eCWM+TnQMdA64NjDvMRzsl8dUiuEbCFu5tXwJft/jCspSFTyqhexC9w2ullEB971NEHTztV3vO3eyZE7rwWDHQpg4uMTK16fZyBIu5EvieEYAXGnYzcdNrFNWS5lK3p3Xk0JHgH2X4Ct7XEbZnjuKIQTW1lsY7xLhCYfEnxBoFCvcAKtcpE+7Id2DzWLtJYc+JX2TnY0eG6JfJyoP/XwIX+HgH6LaZNtNHIHEgtBV50Wng+voLgAB1To+01TkDhs1NiA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1613135378; bh=vJ7NuqqRTt2kjI5UECPBQhAPP8rhGU1uG02ZsLOFY78=;
 h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
 b=ZC5IgNlI1WVv3poxh8AecgjeDGP+1GI333y2kRQ6bauSAYNuvZrV/ZO6jh7HR2zMIZ8d+G0WMU4dzuaMlcv8vZNOmytImcfKpokKgF66KKgn+WeOmtiOmM1XO9usEY5JEsysmE2hmpC2EVw2nXruF7zJwqMqgZ4Nt7DjU6/GrpEEYX8sZxT0/5FCYNxaHFGHyxUhAn56kvl2llYYgrldSNYF/K0kvsahshoJwzBk18nZo4c55zGRP6HldmJARfUpSbmzW5EoCWh0pTZO92/eXh0epkSClOoi4I1uHjLJVbEZ3l4F+C96NQYb5c+SgAyU3QbcFcC+2kLnr3D1Jp3NPw==
X-YMail-OSG: pEa4ihYVM1nSxiSY1j4buXupv1AB90gFLYGZyuGJ26nirjtDNLpE6Onc9aDEEYK
 0XuuMmFX5fw3s1CJPnu9ZnXRLSYMdwQe9c7MBCTynm1in12mhgsLB1yzadZC.LCgmonEB3Q6SS_u
 Md9zV.N_q00hfsSm71LiIluvw1HXXITxAQXl1nbK8J1GffWTHTf5XvqiWBpACRmZxqdvFnh4gcaW
 yHdbOLo607dOaSd.Rmbg2SNUbNh8FGC3hSbYeRYv97rnKAJCp95f57lTDy88uZsfFhZ4BqqkmMtt
 lEXMm9NYdgwhMjmJHKcmkXghfHlML9P07mKutx.JMLSLtVdFUffKLCb0DAcGalcjhRzFVvUuiVvt
 zhkzl.veeaJ8RLifcfHpVsnc1vQpGm.ctcxnwT4FqlRbqEhy0ppRSckVT67wzZzcMbfHjqBGBRtC
 gKgd7.rEd5ct4JA.IbNppZNOTmIssHuxVgk0PjjdMQaahNHgTkD8gqAuBgsLqt.nGU2pt0j6tCgS
 5mfmutyHzY0h9BI79Cbrj3SIe1SAaVI6P5dRN9L55gQtOg8dCAayX56oNUDZaqrK1LPl3.Ov9Yg.
 FijQJyeeLc1PMfwmPeMASQPj_DDokjRcPeWHPH3U.LJ_QRSn2YvIa9c1SDVCaLdXrWqZHToXJH9T
 zwIYy1.CJ825k3JgnGm15t2hjtZ.WCt6BzsSZBFEJEwQq8kj5QYDaek89bPQTgrdxh3nTn.b4qf6
 z5JbhBCgYYu_e2OAx6Q5oSg0hj2flJ7JjtSPp98xdK7krnR7K4hRDA9WzBbRKAJT8sTmx5d511Ia
 b7JLSLke8KohPFRT8FRSrpCyANnfVDLXQk_jLSfiEJKZRzq7CzZX3BA_md7myti2t6iU6ktmEqfR
 WC1ed8A9h8AtkG7Yk9OdzxA94gwZG3oYD7Irl2njEjgMnTrBj8M0QJQQ0FY8uALYq_nsfMCnnSZX
 N_9.m2d0pf48PcR_0H3WtxjfVl6L2e1R4ULKHfwjbz1UXKEYK4r_2WWj5LMkYadfY3DYXi2eaLev
 a58SBAeP2blwNJBYMDjqj1aa342E2TTQUCbTuHrK_JoWUhynwdtizss2oPOMyamDR8hipNcGJxKo
 6EKnINhUP_mv0e8SL5EInwzAR0rspdfFduVHGeneHNLjwrXFHdBE_eEdDG_SGTouPSTNBWPzHsZr
 nIocqHpGqUtHD86aB47aMe_nxoYSYEeBN7PB3hWRfgifjTpBWZjx0Pf906y4cNFf97ABol2xYNcK
 6JE4QSguTEOkZj79i.DuLiwku4rA5UWqhzXKXgoxkF_L0OhiAhHVu0YsBJET5.5cdOyziVKq0JHT
 KM1wqUVKg4UGJM8_JaglTCgWvFSJ.wrflPR5EBTpnFBgeLuRYqUwCdVL81l8i_n0da5uVBEvSp9Z
 pkP.W0_Wa7K9_.D5dybbXCXmuNr8VSXlWJc84EPZWIaTNDxbKeOx8oy5HcpZE.5GU3kVsvMcAar_
 _9AFbHrQj6Und50KNNZdJz8wevSmkRdde9.BsEW9aw1mMpOvaOVdVUfrXlLgTjEWe_tARxIBrbfH
 kErzfYZQnZbVkaoRhm.nMUEIAm.RV1TaRcJzbwVT.8QGTG.2BrTXJ6J_zj0_eqnNQeI0H0UEPa.j
 PiSD0iDG_He3MsVpYhn_FlMwWaZ3C28Ec2YV2yD5o30WvBBgt45mtQmzcP7eKKPZZg3e47vRsN6k
 DVLwuhzSlqflQW8_1GPP7gHjpyXiO98SVse.wgm9hAsT.GilwlP1s1Npm.avB_1f1ekQh1mgEma3
 PorZZTnPCfZ.yYILkWmN1IC_x0QCawBV99Z3PMzDb55sY9JT3Inhd5LaIfbnRu5NGHrurPlq0ePB
 qpislqjWEe6B.c5XyNsnCAARqi25MC0YiMRJ8quc7l6OQXDHMKJjg4sVxUSYJiyrrV9NsE29MHMX
 gfEx6zj_s8AexGpOWf7tFC.wbIEUHA1TjOnVXgZ6sTq9iRxwMikERVmx9UJHLwWDH6fQ2QjEiPZ.
 ZO8wqFenDFH_vx3_aX0SxAiD2DE6YgM98alncKGLVtvD5LRbBhO0QaylX0piV..3SkBa.KsPf9Gn
 QTlZqwbUxYu00tTdhxjrLDipGWBtk6YuuallwsDedrZMD0a3I4NwiquC6.FuFDnPQhdwhsiiyuga
 Luz0S2LI2wn5P7Yiovtq8Nf5fIO.v.txwAUHBlp7hyL01kljJNmFg6PZCBMF028BV42mQuJnmR5Y
 _SoiKcLsgWirnlOcp7DgNMCQVGBzrsQGs9zyzGID6bpLTzsRjDpribBMH5p_7aBj_IaBZF6EdETA
 zBiXGJ2ou2TkMNTZt6qtBeQKhuSgt4KaJlAkkRch616ezzu6eC5bNYr.lrq3eYY4mkQAOZ5AjHmt
 LuI.vQuU9ZjTjhp9g5GMX86NCH1xrDc1HCUGd8UH7zHRGTLTdnH_7xuHxLM0cPxHAUFJT0iGmQl9
 j
X-Sonic-MF: <mikerd1@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.ne1.yahoo.com with HTTP; Fri, 12 Feb 2021 13:09:38 +0000
Received: by smtp404.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID 050280bea4d701ab52194fce7b8e8864; 
 Fri, 12 Feb 2021 13:09:36 +0000 (UTC)
To: usrp-users@lists.ettus.com
References: <2261a9568f445a8385c11b8eb0af02e64aacb840@webmail>
Message-ID: <e55f3d2e-6a22-444e-bba6-9eaa7fefe1f6@verizon.net>
Date: Fri, 12 Feb 2021 08:09:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <2261a9568f445a8385c11b8eb0af02e64aacb840@webmail>
Content-Language: en-US
X-Mailer: WebService/1.1.17712
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.9.1)
Subject: Re: [USRP-users] SWIG Error Cross-compiling gr-ettus
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
From: Mike via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mike <mikerd1@verizon.net>
Content-Type: multipart/mixed; boundary="===============0822754774268131127=="
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
--===============0822754774268131127==
Content-Type: multipart/alternative;
 boundary="------------46C54838F00491EBE0D8561B"
Content-Language: en-US
Content-Length: 28105

This is a multi-part message in MIME format.
--------------46C54838F00491EBE0D8561B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Dennis,

I'm certainly not the expert on this but I think that UHD 3.15 is for 
gnuradio  3.7 and UHD 4.x is for gnuradio 3.8.  Also, it seems like you 
want to upgrade from Ubuntu 18.04LTS to Ubuntu 20 when moving to gr 3.8 
because of the migration to python3.  For now, that's why I'm still at 
UHD 3.15 and gr 3.7 (still running Ubuntu 18.04).

That might be over simplifying it but I think that is the general idea.

Mike

On 2/11/21 1:29 PM, Dennis Trask via USRP-users wrote:
> I have cross-compiled UHD v3.15.0.0 and gnuradio maint-3.8 for the 
> E310. When I try to setup the cross-compile of gr-ettus maint-3.8, I 
> get a series of errors related to SWIG. Any idea how to work around this?
>
> My cmake command is:
>
> cmake 
> -DCMAKE_TOOLCHAIN_FILE=~/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmake 
> -DCMAKE_INSTALL_PREFIX=/usr ..
>
> And here are the errors:
>
> CMake Error at 
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 
> (add_custom_command):
>   Error evaluating generator expression:
>
> $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>   Target "gnuradio::runtime_swig" not found.
> Call Stack (most recent call first):
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 
> (SWIG_ADD_SOURCE_TO_MODULE)
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 
> (swig_add_library)
>   swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
> CMake Error at 
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 
> (add_custom_command):
>   Error evaluating generator expression:
>
> $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>   Target "gnuradio::runtime_swig" not found.
> Call Stack (most recent call first):
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 
> (SWIG_ADD_SOURCE_TO_MODULE)
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 
> (swig_add_library)
>   swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
> CMake Error at 
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 
> (add_custom_command):
>   Error evaluating generator expression:
>
> $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>   Target "gnuradio::runtime_swig" not found.
> Call Stack (most recent call first):
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 
> (SWIG_ADD_SOURCE_TO_MODULE)
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 
> (swig_add_library)
>   swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
> CMake Error at 
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 
> (add_custom_command):
>   Error evaluating generator expression:
>
> $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>   Target "gnuradio::runtime_swig" not found.
> Call Stack (most recent call first):
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 
> (SWIG_ADD_SOURCE_TO_MODULE)
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 
> (swig_add_library)
>   swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
> CMake Error at 
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrMiscUtils.cmake:127 
> (add_dependencies):
>   The dependency target "gnuradio::runtime_swig" of target
>   "_ettus_swig_doc_tag" does not exist.
> Call Stack (most recent call first):
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:65 
> (GR_GEN_TARGET_DEPS)
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:112 
> (GR_SWIG_MAKE_DOCS)
>   swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
> CMake Error at 
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:144 
> (target_include_directories):
>   Error evaluating generator expression:
>
> $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>   Target "gnuradio::runtime_swig" not found.
> Call Stack (most recent call first):
>   swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
> CMake Error at 
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:144 
> (target_include_directories):
>   Error evaluating generator expression:
>
> $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>   Target "gnuradio::runtime_swig" not found.
> Call Stack (most recent call first):
>   swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
> CMake Error at 
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 
> (add_custom_command):
>   Error evaluating generator expression:
>
> $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>   Target "gnuradio::runtime_swig" not found.
> Call Stack (most recent call first):
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 
> (SWIG_ADD_SOURCE_TO_MODULE)
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 
> (swig_add_library)
>   swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
> CMake Error at 
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 
> (add_custom_command):
>   Error evaluating generator expression:
>
> $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>   Target "gnuradio::runtime_swig" not found.
> Call Stack (most recent call first):
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 
> (SWIG_ADD_SOURCE_TO_MODULE)
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 
> (swig_add_library)
>   swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
> CMake Error at 
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 
> (add_custom_command):
>   Error evaluating generator expression:
>
> $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>   Target "gnuradio::runtime_swig" not found.
> Call Stack (most recent call first):
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 
> (SWIG_ADD_SOURCE_TO_MODULE)
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 
> (swig_add_library)
>   swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
> CMake Error at 
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 
> (add_custom_command):
>   Error evaluating generator expression:
>
> $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>   Target "gnuradio::runtime_swig" not found.
> Call Stack (most recent call first):
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 
> (SWIG_ADD_SOURCE_TO_MODULE)
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 
> (swig_add_library)
>   swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
> CMake Error at 
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 
> (add_custom_command):
>   Error evaluating generator expression:
>
> $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>   Target "gnuradio::runtime_swig" not found.
> Call Stack (most recent call first):
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 
> (SWIG_ADD_SOURCE_TO_MODULE)
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 
> (swig_add_library)
>   swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
> CMake Error at 
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 
> (add_custom_command):
>   Error evaluating generator expression:
>
> $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>   Target "gnuradio::runtime_swig" not found.
> Call Stack (most recent call first):
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 
> (SWIG_ADD_SOURCE_TO_MODULE)
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 
> (swig_add_library)
>   swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
> CMake Error at 
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 
> (add_custom_command):
>   Error evaluating generator expression:
>
> $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>   Target "gnuradio::runtime_swig" not found.
> Call Stack (most recent call first):
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 
> (SWIG_ADD_SOURCE_TO_MODULE)
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 
> (swig_add_library)
>   swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
> CMake Error at 
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 
> (add_custom_command):
>   Error evaluating generator expression:
>
> $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>   Target "gnuradio::runtime_swig" not found.
> Call Stack (most recent call first):
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 
> (SWIG_ADD_SOURCE_TO_MODULE)
> /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 
> (swig_add_library)
>   swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------46C54838F00491EBE0D8561B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Dennis,</p>
    <p>I'm certainly not the expert on this but I think that UHD 3.15 is
      for gnuradio  3.7 and UHD 4.x is for gnuradio 3.8.  Also, it seems
      like you want to upgrade from Ubuntu 18.04LTS to Ubuntu 20 when
      moving to gr 3.8 because of the migration to python3.  For now,
      that's why I'm still at UHD 3.15 and gr 3.7 (still running Ubuntu
      18.04).<br>
    </p>
    <p>That might be over simplifying it but I think that is the general
      idea.</p>
    <p>Mike<br>
    </p>
    <div class="moz-cite-prefix">On 2/11/21 1:29 PM, Dennis Trask via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:2261a9568f445a8385c11b8eb0af02e64aacb840@webmail">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      I have cross-compiled UHD v3.15.0.0 and gnuradio maint-3.8 for the
      E310. When I try to setup the cross-compile of gr-ettus maint-3.8,
      I get a series of errors related to SWIG. Any idea how to work
      around this?
      <div><br>
      </div>
      <div>My cmake command is:
        <div><br>
        </div>
        <div>cmake
-DCMAKE_TOOLCHAIN_FILE=~/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmake
          -DCMAKE_INSTALL_PREFIX=/usr ..</div>
        <div><br>
        </div>
        <div>And here are the errors:<br>
          <div><br>
          </div>
          <div>
            <div>CMake Error at
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
              (add_custom_command):</div>
            <div>  Error evaluating generator expression:</div>
            <div><br>
            </div>
            <div>   
$&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>
            <div><br>
            </div>
            <div>  Target "gnuradio::runtime_swig" not found.</div>
            <div>Call Stack (most recent call first):</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
              (SWIG_ADD_SOURCE_TO_MODULE)</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
              (swig_add_library)</div>
            <div>  swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>
            <div><br>
            </div>
            <div><br>
            </div>
            <div>CMake Error at
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
              (add_custom_command):</div>
            <div>  Error evaluating generator expression:</div>
            <div><br>
            </div>
            <div>   
$&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>
            <div><br>
            </div>
            <div>  Target "gnuradio::runtime_swig" not found.</div>
            <div>Call Stack (most recent call first):</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
              (SWIG_ADD_SOURCE_TO_MODULE)</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
              (swig_add_library)</div>
            <div>  swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>
            <div><br>
            </div>
            <div><br>
            </div>
            <div>CMake Error at
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
              (add_custom_command):</div>
            <div>  Error evaluating generator expression:</div>
            <div><br>
            </div>
            <div>   
$&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>
            <div><br>
            </div>
            <div>  Target "gnuradio::runtime_swig" not found.</div>
            <div>Call Stack (most recent call first):</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
              (SWIG_ADD_SOURCE_TO_MODULE)</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
              (swig_add_library)</div>
            <div>  swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>
            <div><br>
            </div>
            <div><br>
            </div>
            <div>CMake Error at
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
              (add_custom_command):</div>
            <div>  Error evaluating generator expression:</div>
            <div><br>
            </div>
            <div>   
$&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>
            <div><br>
            </div>
            <div>  Target "gnuradio::runtime_swig" not found.</div>
            <div>Call Stack (most recent call first):</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
              (SWIG_ADD_SOURCE_TO_MODULE)</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
              (swig_add_library)</div>
            <div>  swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>
            <div><br>
            </div>
            <div><br>
            </div>
            <div>CMake Error at
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrMiscUtils.cmake:127
              (add_dependencies):</div>
            <div>  The dependency target "gnuradio::runtime_swig" of
              target</div>
            <div>  "_ettus_swig_doc_tag" does not exist.</div>
            <div>Call Stack (most recent call first):</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:65
              (GR_GEN_TARGET_DEPS)</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:112
              (GR_SWIG_MAKE_DOCS)</div>
            <div>  swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>
            <div><br>
            </div>
            <div><br>
            </div>
            <div>CMake Error at
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:144
              (target_include_directories):</div>
            <div>  Error evaluating generator expression:</div>
            <div><br>
            </div>
            <div>   
$&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>
            <div><br>
            </div>
            <div>  Target "gnuradio::runtime_swig" not found.</div>
            <div>Call Stack (most recent call first):</div>
            <div>  swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>
            <div><br>
            </div>
            <div><br>
            </div>
            <div>CMake Error at
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:144
              (target_include_directories):</div>
            <div>  Error evaluating generator expression:</div>
            <div><br>
            </div>
            <div>   
$&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>
            <div><br>
            </div>
            <div>  Target "gnuradio::runtime_swig" not found.</div>
            <div>Call Stack (most recent call first):</div>
            <div>  swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>
            <div><br>
            </div>
            <div><br>
            </div>
            <div>CMake Error at
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
              (add_custom_command):</div>
            <div>  Error evaluating generator expression:</div>
            <div><br>
            </div>
            <div>   
$&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>
            <div><br>
            </div>
            <div>  Target "gnuradio::runtime_swig" not found.</div>
            <div>Call Stack (most recent call first):</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
              (SWIG_ADD_SOURCE_TO_MODULE)</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
              (swig_add_library)</div>
            <div>  swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>
            <div><br>
            </div>
            <div><br>
            </div>
            <div>CMake Error at
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
              (add_custom_command):</div>
            <div>  Error evaluating generator expression:</div>
            <div><br>
            </div>
            <div>   
$&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>
            <div><br>
            </div>
            <div>  Target "gnuradio::runtime_swig" not found.</div>
            <div>Call Stack (most recent call first):</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
              (SWIG_ADD_SOURCE_TO_MODULE)</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
              (swig_add_library)</div>
            <div>  swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>
            <div><br>
            </div>
            <div><br>
            </div>
            <div>CMake Error at
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
              (add_custom_command):</div>
            <div>  Error evaluating generator expression:</div>
            <div><br>
            </div>
            <div>   
$&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>
            <div><br>
            </div>
            <div>  Target "gnuradio::runtime_swig" not found.</div>
            <div>Call Stack (most recent call first):</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
              (SWIG_ADD_SOURCE_TO_MODULE)</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
              (swig_add_library)</div>
            <div>  swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>
            <div><br>
            </div>
            <div><br>
            </div>
            <div>CMake Error at
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
              (add_custom_command):</div>
            <div>  Error evaluating generator expression:</div>
            <div><br>
            </div>
            <div>   
$&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>
            <div><br>
            </div>
            <div>  Target "gnuradio::runtime_swig" not found.</div>
            <div>Call Stack (most recent call first):</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
              (SWIG_ADD_SOURCE_TO_MODULE)</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
              (swig_add_library)</div>
            <div>  swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>
            <div><br>
            </div>
            <div><br>
            </div>
            <div>CMake Error at
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
              (add_custom_command):</div>
            <div>  Error evaluating generator expression:</div>
            <div><br>
            </div>
            <div>   
$&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>
            <div><br>
            </div>
            <div>  Target "gnuradio::runtime_swig" not found.</div>
            <div>Call Stack (most recent call first):</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
              (SWIG_ADD_SOURCE_TO_MODULE)</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
              (swig_add_library)</div>
            <div>  swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>
            <div><br>
            </div>
            <div><br>
            </div>
            <div>CMake Error at
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
              (add_custom_command):</div>
            <div>  Error evaluating generator expression:</div>
            <div><br>
            </div>
            <div>   
$&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>
            <div><br>
            </div>
            <div>  Target "gnuradio::runtime_swig" not found.</div>
            <div>Call Stack (most recent call first):</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
              (SWIG_ADD_SOURCE_TO_MODULE)</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
              (swig_add_library)</div>
            <div>  swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>
            <div><br>
            </div>
            <div><br>
            </div>
            <div>CMake Error at
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
              (add_custom_command):</div>
            <div>  Error evaluating generator expression:</div>
            <div><br>
            </div>
            <div>   
$&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>
            <div><br>
            </div>
            <div>  Target "gnuradio::runtime_swig" not found.</div>
            <div>Call Stack (most recent call first):</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
              (SWIG_ADD_SOURCE_TO_MODULE)</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
              (swig_add_library)</div>
            <div>  swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>
            <div><br>
            </div>
            <div><br>
            </div>
            <div>CMake Error at
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
              (add_custom_command):</div>
            <div>  Error evaluating generator expression:</div>
            <div><br>
            </div>
            <div>   
$&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;</div>
            <div><br>
            </div>
            <div>  Target "gnuradio::runtime_swig" not found.</div>
            <div>Call Stack (most recent call first):</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
              (SWIG_ADD_SOURCE_TO_MODULE)</div>
            <div> 
/home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
              (swig_add_library)</div>
            <div>  swig/CMakeLists.txt:54 (GR_SWIG_MAKE)</div>
            <div><br>
            </div>
            <div><br>
            </div>
          </div>
        </div>
      </div>
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

--------------46C54838F00491EBE0D8561B--


--===============0822754774268131127==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0822754774268131127==--

