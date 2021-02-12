Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D84B531A124
	for <lists+usrp-users@lfdr.de>; Fri, 12 Feb 2021 16:11:21 +0100 (CET)
Received: from [::1] (port=39202 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lAa6K-0002o7-Sg; Fri, 12 Feb 2021 10:11:20 -0500
Received: from sonic312-23.consmr.mail.ne1.yahoo.com ([66.163.191.204]:38828)
 by mm2.emwd.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <mikerd1@verizon.net>) id 1lAa6G-0002iR-TO
 for usrp-users@lists.ettus.com; Fri, 12 Feb 2021 10:11:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048;
 t=1613142635; bh=ah9ynPNDSMcPCoIhavaXTlBZbyO7AiTA8zegY5hkx7w=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject:Reply-To;
 b=iO5KBMXIkXqhnEJB7n9cPO1F3YNy2yIvNM2JOsqafIYpGEDp474wb2s4rNEGBtpCf+2sT/KQGpc2aMwhEjO8w37IN1CQO274PLnifyxcgtFQooZ3D7qKDZWl7Xe2yvDy1tu57+jOqFp5TOzLfOnYjcbX27Yfgh/JXw3vkmm12RpmHVC9e80uspPbqaJfcHNEBbR6ZRK/jaiccJ1McE0QIvJQuMhSEoACAHL0OCcaGEiuLcDCdE/6Vbq3K2dw9J6760tJR2oxWwuQF4c0ThP3e4hpmbq8faPqhbAN8OfAnnHbKv3PvXDhF0GojigHL4m2tBl1e11Q0gfp5UGe17BY2A==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1613142635; bh=RGo6x+QjIk2BzMKZM+IKGtjtxtvBg5Qjsh5X8iiZqiq=;
 h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
 b=F0DKkqZ61PZ5jo63HcjKEIL0pEirl4l+EYqml2f7xkkIAeEU8fbQSBN0TvhIikCbuWCS2r0PM0crKoYu5A06epqhKHwN0QaUVE7rbDBevv0O7MKtizYNrgiZKd7WMTPxr+Qqm4E2eSC27nay3NXeEulsCtNS1LyKilR+3ZvIks1dlEdhE0Demius05amIp1wi9mZO6rTUGGHNmF2hpciv5Py/WVdyDdvVzmwDengVzBBgOlWEF4WnREV6tICrqNw8xq+dePbyrdRW/2itdowvaawen7562qF/aMT/BX2cPWlpgzOeaAfmu2AcSmbfVTUbCSz/HmY3rJvaEhKeqvTiQ==
X-YMail-OSG: vkjIN7oVM1nK2eiKjNaEeSQ6MB4GpDaCJbhWmsD1CCqKwNgMmyz.681w4h2thqN
 6GHitlj8bq2eYnB9CJ4UNnmpFXovLIYCeV9nzd5ZtYf4G_kTcbzENbve1Yq_23o.TcmER1UsRu.m
 zepywNLMitB_7NULEb9RP.zYfsZt6G2WYScBfc6Bu1WbJ2aZd5fSHsf.jJNwDbEe1.OKCIMXejgU
 q9chTUi0IEzfwCq9pz8eI3orhCxw4QJDA1hQdKb3.KiUZr8Od08MWQ7uRWxj264Oraq6KNUY4_sw
 1pe6IIJZPoAeAk4odXxjrF34uVoAvOzpxjw113T2.vaHUszmU0goAMKyPGm4t4rC4iadHWc9AgW6
 C9Gg8UMxqayxRJat7FwdVPETY3ZaWCFn2IxFiPkO.fw3LwvZVNLJgnruai5zU2B4I0p5sVQL4ULO
 WuI7yqrG1W9uGaEjSsmlMiuZ2NRWKiOWaSkhqLs7esqJKL.3aRw6QbGAjisbj9AWqcNgqZ5oy14l
 osaNX4hxe2ZzeiSxzeqDRVmkYAVhn8jbH4VukTNN42s1wacjrPkhX.mp4TcXiE_UR.W68LaHYxSn
 mVYSQGODoUYB.kuA7byeWIgzNOFUkE2W3acsNo_c69p4.LTFsNCJQJQcV.EsYegb5fWIXJWe4QMm
 9ZCaOu7MNP83_f6JpRye6i9kbUwijNDG7SIgUVEEfZSfWoydthywDAhdfNOcxXy8wBzXQSx2clV3
 t3ZxS3AGfkb8rlL0TFMMwFiBc_vV0z1V9r0cwNJ7zfpN5U7jKUcTK1vB3V85KRSASU4vnWsv0yDd
 3UFoyt9VA49vV0dZvQSc89rqQpyCmXoyi1F0U4Oqmmm3luSZHvAdATYIVaP7DXGlBL3gAaIuX9p3
 VcqX00EFmF4.wO5apFlqFpZe_oEjAKGDp_asOOVjLlKo78aOFO7.G0jIi9yFO9KhutxrWyUgzA07
 SQY2kqIOVNNdNrIwJfnTwOujIaWMUd8jf3xwVMaP0FgKO58JECVGo9YxibjeNjXHRMGo6fRLb5Yv
 FRuETj0A7diWuq9VFVpa_baNcJwhRaVe9Oz13STJICmofqP2GM9MlPljABDYVnQ.IdiphD5NASmV
 lDKQ8YwTegcMh54tNKbUa6zis8NI1nmYy2jWOK9Iu8CVUv1waUn8LmOU3DKzucLic_u5NkFUynY_
 Fssu4iE9vklrXekdM5BAwv2jWWMnCTwxXjCNaIZrZL8QtjzXrn3ok99xNwHfE.sT7MamZFmNZdqf
 87dz7KqGTjHFdrky7kRJ6PyStIoyWxiZbXQJluROAhmDEfpu_EB35w7xwaNatxDd0j_kShTy1faT
 6RdhjphFtKIUwWR6nV9FU3pWsxG1YZ3Hw_DmCIGI.TBREowPYwuxP8DnTlQb8H5obZrlqLhwC1HF
 62b8.Zrl8eofiDAk1rOL3bW8YuGZu5mJx2D1eEKEfR23.SRRU9Tox0ePdgveauiP6V.367lenmpl
 v8uD9NxL7wmFjLZYKw09eldaVtSgtwoi2LdGLrclb7KkFYXw3oOIaze0h5eI2iA2qHE6ovx1y1Hk
 R_gsFKdazuPrFu5WgRCfDm_DO.VclgNYDWsltxf4ycdnTCwwX.6l2FGNR.A_P3_6KOT0LaXDCw8O
 1AeYOoHUI1SQbwqujdkmFbfS6QG7pxFIwyHSKzxuYJho.bfSxPAAaa_7itSyxygVgSo_nArfmniY
 Qc.w8khvyWMU8u1a8YKgcy4m8Kf6lPgK1efbcXylT1xs0xgnL2H5igcTa4UAJkqXs0fQFhWYy2bv
 .9cLCwWTOAjP86tat8XqeShuIAqwO7.g1z0HiMW0B_gQ9eTM3aREH.B3nocwReer6.g.KgnfKpau
 gqFJB.Ff_YlLPwjWJ8_Ixf5Vz0JXMXtIt667XNQO2sZiQ95bjazcDVBrEM1PkPFzxm8TUIeDOUNu
 UGg_For8v91gAOxC1Q6gLGTCiGNdHtCiHHU5_TUVahaMYnZrANySm8UGPcib_B8288hTxN_DDlLl
 ogX7Sabko7hn4FrThW3sDw08Ya3t3plhYH3QB3yDeb7ai42Vy2bNdaCcgdRM2FRqyj708zSG4e_N
 kUBjqgWmsHlOH2muSBbpkOJ3J4auQMcogIbmOUvApOuBim1EbI3BRMn_ujuA0rU2j9esS5fYt7wQ
 QJhkFQNXzPe7TGm7LwnCnqkvaOgNTAWX3eGb95DRWT4cudiYSIIu48VOM3SMemoWJmjhYVLmgUH6
 uhvv2YW4Xn0NciCXdthHYtLs6VChBvJpid5T84UMzAcQoQmG32HHmgOPksQPagTOwS_Gr59QLqKD
 Ew70CV2F2bt36_.g6hrg.sWHjp2p3C7jg7cn..NfYjuveZAXhx7ofv4bsnXIhUx8bwjrj6v3Zw9k
 1vDrqNVn12tvLgasQl13c3.7HuEepLWovA7gpcrczkRtM4W71BF9gQimgQQ.3SefqRaNqNMEW.ot
 wpsGYhWR.vRx.7UR09IRrECcIhfFdSZby.ivA3LPeF2jDE5jjh0tqm6_enYQV8FzsEqFSbk6FMEo
 _BDNdQQ--
X-Sonic-MF: <mikerd1@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic312.consmr.mail.ne1.yahoo.com with HTTP; Fri, 12 Feb 2021 15:10:35 +0000
Received: by smtp402.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID 3dae3af256989b71e9eeb8b929e6ecd3; 
 Fri, 12 Feb 2021 15:10:31 +0000 (UTC)
To: dtrask1@tampabay.rr.com
Cc: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
References: <68e236b30d38c258e0912a9a1e5fd0d736081ada@webmail>
Message-ID: <c3eedefd-0679-a2ae-7c59-2ba08da58fee@verizon.net>
Date: Fri, 12 Feb 2021 10:10:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <68e236b30d38c258e0912a9a1e5fd0d736081ada@webmail>
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
Content-Type: multipart/mixed; boundary="===============0402840877206829756=="
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
--===============0402840877206829756==
Content-Type: multipart/alternative;
 boundary="------------428CD53032D5B9B9B4DF8871"
Content-Language: en-US
Content-Length: 34048

This is a multi-part message in MIME format.
--------------428CD53032D5B9B9B4DF8871
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Dennis,

That is what I am using.  I have been able to create and execute normal 
GNU Radio OOT modules on the E310.  So, it would appear that my gnuradio 
environment is working with that configuration. My problems only start 
when I try to execute a flow graph that contains an OOT RFNoC block.

I will add that before I programmed the FPGA with my new build I had 
successfully executed a flow graph that utilized the existing DDC 
block.  This also helps confirm that my existing configuration of 
UHD-3.15.LTS, gnuradio maint-3.7,  and gr-ettus maint-3.7 appear to be 
working together correctly.

I will also add that I am running Ubuntu 18.04LTS

Mike

On 2/12/21 9:56 AM, dtrask1@tampabay.rr.com wrote:
> Thanks, Mike. I will try reverting to gnuradio 3.7.
>
> If I am using gnuradio maint-3.7, should I also use gr-ettus maint-3.7?
>
> Dennis
>
>
> -----------------------------------------
>
> From: "Mike via USRP-users"
> To: usrp-users@lists.ettus.com
> Cc:
> Sent: Friday February 12 2021 8:10:23AM
> Subject: Re: [USRP-users] SWIG Error Cross-compiling gr-ettus
>
> Dennis,
>
> I'm certainly not the expert on this but I think that UHD 3.15 is for 
> gnuradio  3.7 and UHD 4.x is for gnuradio 3.8. Also, it seems like you 
> want to upgrade from Ubuntu 18.04LTS to Ubuntu 20 when moving to gr 
> 3.8 because of the migration to python3.  For now, that's why I'm 
> still at UHD 3.15 and gr 3.7 (still running Ubuntu 18.04).
>
> That might be over simplifying it but I think that is the general idea.
>
> Mike
>
> On 2/11/21 1:29 PM, Dennis Trask via USRP-users wrote:
>
>     I have cross-compiled UHD v3.15.0.0 and gnuradio maint-3.8 for the
>     E310. When I try to setup the cross-compile of gr-ettus maint-3.8,
>     I get a series of errors related to SWIG. Any idea how to work
>     around this?
>
>     My cmake command is:
>
>     cmake
>     -DCMAKE_TOOLCHAIN_FILE=~/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmake
>     -DCMAKE_INSTALL_PREFIX=/usr ..
>
>     And here are the errors:
>
>     CMake Error at
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
>     (add_custom_command):
>       Error evaluating generator expression:
>
>     $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>       Target "gnuradio::runtime_swig" not found.
>     Call Stack (most recent call first):
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
>     (SWIG_ADD_SOURCE_TO_MODULE)
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
>     (swig_add_library)
>       swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
>     CMake Error at
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
>     (add_custom_command):
>       Error evaluating generator expression:
>
>     $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>       Target "gnuradio::runtime_swig" not found.
>     Call Stack (most recent call first):
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
>     (SWIG_ADD_SOURCE_TO_MODULE)
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
>     (swig_add_library)
>       swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
>     CMake Error at
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
>     (add_custom_command):
>       Error evaluating generator expression:
>
>     $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>       Target "gnuradio::runtime_swig" not found.
>     Call Stack (most recent call first):
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
>     (SWIG_ADD_SOURCE_TO_MODULE)
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
>     (swig_add_library)
>       swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
>     CMake Error at
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
>     (add_custom_command):
>       Error evaluating generator expression:
>
>     $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>       Target "gnuradio::runtime_swig" not found.
>     Call Stack (most recent call first):
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
>     (SWIG_ADD_SOURCE_TO_MODULE)
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
>     (swig_add_library)
>       swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
>     CMake Error at
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrMiscUtils.cmake:127
>     (add_dependencies):
>       The dependency target "gnuradio::runtime_swig" of target
>       "_ettus_swig_doc_tag" does not exist.
>     Call Stack (most recent call first):
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:65
>     (GR_GEN_TARGET_DEPS)
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:112
>     (GR_SWIG_MAKE_DOCS)
>       swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
>     CMake Error at
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:144
>     (target_include_directories):
>       Error evaluating generator expression:
>
>     $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>       Target "gnuradio::runtime_swig" not found.
>     Call Stack (most recent call first):
>       swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
>     CMake Error at
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:144
>     (target_include_directories):
>       Error evaluating generator expression:
>
>     $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>       Target "gnuradio::runtime_swig" not found.
>     Call Stack (most recent call first):
>       swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
>     CMake Error at
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
>     (add_custom_command):
>       Error evaluating generator expression:
>
>     $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>       Target "gnuradio::runtime_swig" not found.
>     Call Stack (most recent call first):
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
>     (SWIG_ADD_SOURCE_TO_MODULE)
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
>     (swig_add_library)
>       swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
>     CMake Error at
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
>     (add_custom_command):
>       Error evaluating generator expression:
>
>     $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>       Target "gnuradio::runtime_swig" not found.
>     Call Stack (most recent call first):
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
>     (SWIG_ADD_SOURCE_TO_MODULE)
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
>     (swig_add_library)
>       swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
>     CMake Error at
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
>     (add_custom_command):
>       Error evaluating generator expression:
>
>     $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>       Target "gnuradio::runtime_swig" not found.
>     Call Stack (most recent call first):
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
>     (SWIG_ADD_SOURCE_TO_MODULE)
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
>     (swig_add_library)
>       swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
>     CMake Error at
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
>     (add_custom_command):
>       Error evaluating generator expression:
>
>     $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>       Target "gnuradio::runtime_swig" not found.
>     Call Stack (most recent call first):
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
>     (SWIG_ADD_SOURCE_TO_MODULE)
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
>     (swig_add_library)
>       swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
>     CMake Error at
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
>     (add_custom_command):
>       Error evaluating generator expression:
>
>     $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>       Target "gnuradio::runtime_swig" not found.
>     Call Stack (most recent call first):
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
>     (SWIG_ADD_SOURCE_TO_MODULE)
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
>     (swig_add_library)
>       swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
>     CMake Error at
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
>     (add_custom_command):
>       Error evaluating generator expression:
>
>     $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>       Target "gnuradio::runtime_swig" not found.
>     Call Stack (most recent call first):
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
>     (SWIG_ADD_SOURCE_TO_MODULE)
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
>     (swig_add_library)
>       swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
>     CMake Error at
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
>     (add_custom_command):
>       Error evaluating generator expression:
>
>     $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>       Target "gnuradio::runtime_swig" not found.
>     Call Stack (most recent call first):
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
>     (SWIG_ADD_SOURCE_TO_MODULE)
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
>     (swig_add_library)
>       swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
>     CMake Error at
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418
>     (add_custom_command):
>       Error evaluating generator expression:
>
>     $<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES>
>
>       Target "gnuradio::runtime_swig" not found.
>     Call Stack (most recent call first):
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559
>     (SWIG_ADD_SOURCE_TO_MODULE)
>     /home/labuser/rfnoc/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137
>     (swig_add_library)
>       swig/CMakeLists.txt:54 (GR_SWIG_MAKE)
>
>
>
>
>     _______________________________________________
>     USRP-users mailing list
>     "mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com
>     "http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">
>     <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>     target=
>     "_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--------------428CD53032D5B9B9B4DF8871
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Dennis,</p>
    <p>That is what I am using.  I have been able to create and execute
      normal GNU Radio OOT modules on the E310.  So, it would appear
      that my gnuradio environment is working with that configuration. 
      My problems only start when I try to execute a flow graph that
      contains an OOT RFNoC block.</p>
    <p>I will add that before I programmed the FPGA with my new build I
      had successfully executed a flow graph that utilized the existing
      DDC block.  This also helps confirm that my existing configuration
      of UHD-3.15.LTS, gnuradio maint-3.7,  and gr-ettus maint-3.7
      appear to be working together correctly.</p>
    <p>I will also add that I am running Ubuntu 18.04LTS</p>
    <p>Mike<br>
    </p>
    <div class="moz-cite-prefix">On 2/12/21 9:56 AM,
      <a class="moz-txt-link-abbreviated" href="mailto:dtrask1@tampabay.rr.com">dtrask1@tampabay.rr.com</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:68e236b30d38c258e0912a9a1e5fd0d736081ada@webmail">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      Thanks, Mike. I will try reverting to gnuradio 3.7. 
      <div><br>
      </div>
      <div>If I am using gnuradio maint-3.7, should I also use gr-ettus
        maint-3.7?
        <div><br>
        </div>
        <div>Dennis</div>
        <div><br>
          <br>
          <p>-----------------------------------------</p>
          From: "Mike via USRP-users"<br>
          To: <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
          Cc:<br>
          Sent: Friday February 12 2021 8:10:23AM<br>
          Subject: Re: [USRP-users] SWIG Error Cross-compiling gr-ettus<br>
          <br>
          <p>Dennis,</p>
          <p>I'm certainly not the expert on this but I think that UHD
            3.15
            is for gnuradio  3.7 and UHD 4.x is for gnuradio 3.8. 
            Also, it seems like you want to upgrade from Ubuntu 18.04LTS
            to
            Ubuntu 20 when moving to gr 3.8 because of the migration to
            python3.  For now, that's why I'm still at UHD 3.15 and gr
            3.7
            (still running Ubuntu 18.04).<br>
          </p>
          <p>That might be over simplifying it but I think that is the
            general idea.</p>
          <p>Mike<br>
          </p>
          <div class="moz-cite-prefix">On 2/11/21 1:29 PM, Dennis Trask
            via
            USRP-users wrote:<br>
          </div>
          <blockquote>I have cross-compiled UHD v3.15.0.0 and gnuradio
            maint-3.8 for the E310. When I try to setup the
            cross-compile of
            gr-ettus maint-3.8, I get a series of errors related to
            SWIG. Any
            idea how to work around this?
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
                  <div>  The dependency target "gnuradio::runtime_swig"
                    of
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
            <br>
            _______________________________________________<br>
            USRP-users mailing list<br>
<a class="moz-txt-link-rfc2396E" href="mailto:USRP-users@lists.ettus.com">"mailto:USRP-users@lists.ettus.com"</a>&gt;<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
            "<a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
              moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"&gt;</a>
            target=<br>
            "_blank"&gt;<a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
              moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------428CD53032D5B9B9B4DF8871--


--===============0402840877206829756==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0402840877206829756==--

