Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A50802AFB8D
	for <lists+usrp-users@lfdr.de>; Wed, 11 Nov 2020 23:48:01 +0100 (CET)
Received: from [::1] (port=51838 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcyuD-0001ap-5Z; Wed, 11 Nov 2020 17:47:57 -0500
Received: from mail-oi1-f177.google.com ([209.85.167.177]:46029)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mattlanoue22@gmail.com>)
 id 1kcyu8-0001VX-UF
 for usrp-users@lists.ettus.com; Wed, 11 Nov 2020 17:47:52 -0500
Received: by mail-oi1-f177.google.com with SMTP id j7so4053332oie.12
 for <usrp-users@lists.ettus.com>; Wed, 11 Nov 2020 14:47:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=WPTKqx0UgKgQ33QA2oUVHlGcPBLVnBr4wLOLrnqMC3s=;
 b=ePf+OW7ogOPMnvfw/5YKmuWIoIrQC4KHOJMTkJxXUr2+Vi+JBqAZHqDuPUhKvfoQlx
 1dpmt2YzmzxaauBWTo6ACSixW4OvmJiTEUKlk4qu3mctwMu5iyDm1+M979hHfrEdID0W
 T+kLhvziUaVmYPm1HTIr41kzPaU6pDPTm4k3Zd+7RSebB4SksjZIBzBBT2JSU1Y6CmYA
 Km2q3Gan+ZiOxbK5fKSrGHHT85nFFpeo4S2CigJBpNKJhBPFngbOXVXSuk+wnDZQNLgG
 omlbgqAabz+wXpo7Zf95EFJ+TPi/7dT26UxBtsvRi+sCjIO8SzTm6NG7hFdOsQKPJijP
 5sEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=WPTKqx0UgKgQ33QA2oUVHlGcPBLVnBr4wLOLrnqMC3s=;
 b=uLX1rGmfzUGTLjlJfZdZUTE00Xj8a/SmbO4RaDHNiCn3/szacmsy3UB1Jq+MCHT+X7
 B+YvXCSg929iXeGfMzbje3GVt5CJdmcJvSuYPARvHXbPVM5MN1WQCwec6YMboamRcTWC
 2ge54Pu/APOq35IwXLk8PxoPkWEX5ZY3TJtLPPsKQkWiYBSeLqSn0RK7/aJFd8yb4Vh4
 CJNZ+N2V+ASlHRFrzjXUDcY00WcvTNgmvS1Mz4xoT6travumZC1oKqgHudNwnlKQ6RA1
 8OzDTx+q2M5elsPyQ1fhSAtUpsnHcRXdGvtY9YIpdAgurq1bgBpeFnoyliA9WDJZGze0
 TsZA==
X-Gm-Message-State: AOAM531xCrYzY0L2QB3RwxoP5LTrTdL/bAczwY9A6iCBLfuC2HnEMKr1
 sKl6chzwZGpdEPTStpOywcQZGqOf5hgbg5c8ohe2uvPuJUdJgQ==
X-Google-Smtp-Source: ABdhPJy2pjpXnemS6BSrQ3WXzXIuNxcH5gb4e5zGgl4aTtVSjgYIgko+RlSmUCJyhh/RBvLhwrQdIW4O42+J2o4wn6A=
X-Received: by 2002:aca:5383:: with SMTP id h125mr3701916oib.179.1605134831882; 
 Wed, 11 Nov 2020 14:47:11 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 11 Nov 2020 14:47:00 -0800
Message-ID: <CAMvz+5awThbHfeqxf_hy2fJE0e_u6FG59hn8SPLiD5Lyi8FaSw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] X310 with OAI FPGA Image Compatibility
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
From: Matt Lanoue via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Matt Lanoue <mattlanoue22@gmail.com>
Content-Type: multipart/mixed; boundary="===============7084719839521221369=="
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

--===============7084719839521221369==
Content-Type: multipart/alternative; boundary="00000000000078960e05b3dc9326"

--00000000000078960e05b3dc9326
Content-Type: text/plain; charset="UTF-8"

Team Ettus,

While running code to simulate an eNB, I get a failure because FPGA
compatibility number 36 is expected, but 38 is found.

[PHY]    Starting ru_thread 0, is_slave 0, send_dmr[INFO] [UHD] linux; GNU
C++ version 7.5.0; Boost_106501; UHD_3.15.0.0-release
[INFO] [X300] X300 initialization sequence...
terminate called after throwing an instance of 'uhd::runtime_error'
    what(): RuntimeError: Expected FPGA compatibility number 36, but got 38:
The FPGA image on your device is not compatible with this host code build.
:

I am trying to run the OAI 4G LTE test setup (
https://gitlab.eurecom.fr/oai/openairinterface5g/-/wikis/HowToConnectOAIENBWithOAIUEWithoutS1Interface#1-hw-setup)
during the final step of 3.1 (actually initializing the eNB).
I have updated the .conf file so that the build script detects the USRP as
given on the Ettus knowledge base (
https://kb.ettus.com/Getting_Started_with_4G_LTE_using_Eurecom_OpenAirInterface_(OAI)_on_the_USRP_2974
).

Can anybody help me figure out how to fix the image version mismatch?

Thanks,
Matt

--00000000000078960e05b3dc9326
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Team Ettus,</div><div dir=3D"ltr"><br></d=
iv><div dir=3D"ltr">While running code to simulate an eNB, I get a failure =
because FPGA compatibility=C2=A0number 36 is expected, but 38 is found.=C2=
=A0=C2=A0<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><div>[PHY]=
=C2=A0 =C2=A0 Starting ru_thread 0, is_slave 0, send_dmr[INFO] [UHD] linux;=
 GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.0-release</div><div>[INFO]=
 [X300] X300 initialization sequence...</div><div>terminate called after th=
rowing an instance of &#39;uhd::runtime_error&#39;</div><div>=C2=A0 =C2=A0 =
what(): RuntimeError: Expected FPGA compatibility number 36, but got 38:</d=
iv><div>The FPGA image on your device is not compatible=C2=A0with this host=
 code build.</div><div>:</div></div><div dir=3D"ltr"><br></div><div dir=3D"=
ltr">I am trying to run the OAI 4G LTE test setup (<a href=3D"https://gitla=
b.eurecom.fr/oai/openairinterface5g/-/wikis/HowToConnectOAIENBWithOAIUEWith=
outS1Interface#1-hw-setup">https://gitlab.eurecom.fr/oai/openairinterface5g=
/-/wikis/HowToConnectOAIENBWithOAIUEWithoutS1Interface#1-hw-setup</a>) duri=
ng the final step of 3.1 (actually initializing the eNB).</div><div dir=3D"=
ltr">I have updated the .conf file so that the build script detects the USR=
P as given on the Ettus knowledge base (<a href=3D"https://kb.ettus.com/Get=
ting_Started_with_4G_LTE_using_Eurecom_OpenAirInterface_(OAI)_on_the_USRP_2=
974">https://kb.ettus.com/Getting_Started_with_4G_LTE_using_Eurecom_OpenAir=
Interface_(OAI)_on_the_USRP_2974</a>).=C2=A0</div><div dir=3D"ltr"><br></di=
v><div dir=3D"ltr"><div>Can anybody help me figure out how to fix the image=
 version mismatch?</div><div><br></div><div>Thanks,</div><div>Matt</div></d=
iv></div>

--00000000000078960e05b3dc9326--


--===============7084719839521221369==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7084719839521221369==--

