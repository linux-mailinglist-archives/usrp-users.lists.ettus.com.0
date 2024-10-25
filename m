Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 550EE9AF65B
	for <lists+usrp-users@lfdr.de>; Fri, 25 Oct 2024 02:51:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F2F31385B33
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2024 20:51:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729817473; bh=3/yKqOl3yVWeIc0dST6nuMj5UiZUUXKq75qRggqkUOk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ueHhQsRBcxMFYgVn/MpW93MYHxrcPSkFtsqZAIe+5SR5N1CCe5ILF4MNvO95cIwlm
	 qAwd5oy8iDrogyUhCqBi5W5/rMzTBSbD2nhF7ImJoUBDGvKwkQ1gPucioCcIMavD0S
	 bPy61xmZEfQ3CAQTaIxLLfHFQuDGbcmGDu4uEKAaiI1diSpd/4oC6jMSVsJn7bZIf7
	 NJLqOrQnmGNDkkXRBqmgilMXhZ+FzZji0kcI1TgwIhWGhUmNv6BcmPGdWY9wykKmVo
	 XelNKZtuuj5B62svaqsJ3yyY5bTWNO2jO14syn4wJjd2h23hzrSQ5W9Jj70qo1yQoe
	 hxSOO0S6Se3ug==
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by mm2.emwd.com (Postfix) with ESMTPS id BD00E385A2D
	for <usrp-users@lists.ettus.com>; Thu, 24 Oct 2024 20:50:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Z9z+x6XA";
	dkim-atps=neutral
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e290d48d3f7so1619254276.3
        for <usrp-users@lists.ettus.com>; Thu, 24 Oct 2024 17:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729817418; x=1730422218; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JSzu9ycUBrKE/oyXxZhg/RAS5pue2y85YmdWdO0kCbc=;
        b=Z9z+x6XAwm7pNsPnPOxTc0LrqpjXihB9nJbCbR9lVANzJVxuMAWsr4nhcqhjS+NmMo
         PbybUxgCVFBaVLRGUYG6JhjedBXWyIiZI66ybWwLQ/LY5mP4kUVi9ZOD9XQIe/qDq9ac
         E5/zXqCKM9NBh82hLEc5IwYgVMpHE3KIKtA4xythgSiGTfrED7g+sOOv8EfIaqhHuze5
         ICLUR1OUUbq1xfD65UwoiDjJJErytVPeKyZLLutAfiZ/1CBxUzluhFdDfD7jNVVzrsZf
         NG54quS3qGG2wFWPWt8EsdwM6zxrjalgxzQbm3ciXGhm8n/IyXyP+C9xkrCKr21WeJHL
         F3Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729817418; x=1730422218;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JSzu9ycUBrKE/oyXxZhg/RAS5pue2y85YmdWdO0kCbc=;
        b=WtCQPBRX9SxHxJ8dDpSY0IKiaoKYvRz+gyypCl0Zv23zRd6XIeivZzOYs81GbgjB+Z
         cqQc1PZByXFaiUJoA43uULzUmQZXN6HmvZlZnrAQgYTujz1eDUzK9nY9LEZieGqSWIWT
         KcHTRtW/gOGHUdLD77n8wprT3uMaRneo3wNBVdqL/b7RC9u58TNKwPmtaXSbJ86jkwOF
         Uw1ZrO+D1O85W9eypA7NdWk7qhZxfjxnvf5vF5YTFR4bmDlzbr9Ttq39nI5ebzx029tv
         uw2LXfY+TuoM/jH9PBIJtFjrplABVr9UxnQru83TtBf+wuT8Vb6lFkF8N6oMG8EVuGcg
         0MpQ==
X-Gm-Message-State: AOJu0Yx9Fq6bZwnDTLGunlla+L25S6B4/vKRpvcRC88Omo5SIy1Cv2Bj
	NI2kv4C6+E/CiwDOvJJihwMgjaZHj+EMbxIFUKwMvZGSnu/eHkx/Sm0nnA==
X-Google-Smtp-Source: AGHT+IFC7dLo954eMBBmHYRudYvcelJ235HTae/VGDx08S5tnIvU4dNrTvO1HYN0XG7kzmivJiXVuQ==
X-Received: by 2002:a05:6902:1615:b0:e2b:e060:32d1 with SMTP id 3f1490d57ef6-e2e3a609790mr9344373276.1.1729817417905;
        Thu, 24 Oct 2024 17:50:17 -0700 (PDT)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6d1799fd530sm1077536d6.85.2024.10.24.17.50.16
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2024 17:50:17 -0700 (PDT)
Message-ID: <2a533d7c-eb0a-4ab7-ba51-80d3344e7fc6@gmail.com>
Date: Thu, 24 Oct 2024 20:50:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <nTAStEeEHUFCLFpTODDxZxARez7keaH9BbpdJr7o@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <nTAStEeEHUFCLFpTODDxZxARez7keaH9BbpdJr7o@lists.ettus.com>
Message-ID-Hash: HSCVQCLD6M7LWPUE5CAQJHSMXTF5TK6G
X-Message-ID-Hash: HSCVQCLD6M7LWPUE5CAQJHSMXTF5TK6G
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 - RfnocError: OpTimeout: Control operation timed out waiting for ACK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HSCVQCLD6M7LWPUE5CAQJHSMXTF5TK6G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0970564563934023747=="

This is a multi-part message in MIME format.
--===============0970564563934023747==
Content-Type: multipart/alternative;
 boundary="------------g0lqdEr9WoboYnMOwHeIpeiw"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------g0lqdEr9WoboYnMOwHeIpeiw
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 24/10/2024 16:36, c1337rogers@gmail.com wrote:
>
> Hi all,
>
> My setup: Ubuntu 20.04, UHD_4.7.0.HEAD-0-ga5ed1872, DPDK_19.11, X310=20
> w/ newly updated XG image, Intel X710 NIC
>
> I=E2=80=99m trying to get DPDK working with the X310 but I=E2=80=99m fa=
iling on step=20
> 0. Running any of the example programs (without DPDK for now) gives me=20
> the same error:
> |
> /usr/local/lib/uhd/examples$ ./benchmark_rate --rx_rate 10e6=20
> --rx_channels 1 --args addr=3D192.168.30.2,second_addr=3D192.168.41.2|
>
> |[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11;=20
> UHD_4.7.0.HEAD-0-ga5ed1872|
>
> |[00:00:00.000200] Creating the usrp device with:=20
> addr=3D192.168.30.2,second_addr=3D192.168.41.2...|
>
> |[INFO] [X300] X300 initialization sequence...|
>
> |[INFO] [X300] Maximum frame size: 8000 bytes.|
>
> |[INFO] [X300] Maximum frame size: 8000 bytes.|
>
> |[INFO] [X300] Radio 1x clock: 200 MHz|
>
> |[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:=20
> RfnocError: OpTimeout: Control operation timed out waiting for ACK|
>
> |Error: RuntimeError: Failure to create rfnoc_graph.|
>
> I know the 192.168.41.2 address is non-standard=E2=80=A6 this is correc=
t=20
> though and I can ping both addresses just fine. There=E2=80=99s no erro=
rs when=20
> running uhd_find_devices. uhd_usrp_probe fails with the same error as=20
> the example programs.
>
> Any thoughts on what=E2=80=99s wrong here? Disclaimer: this X310 is a=20
> community resource so I can=E2=80=99t speak to the full pedigree. I did=
 just=20
> update the FPGA after a fresh UHD 4.7 install and image_downloader run
>
> Thanks,
>
> Chris
>
>
Try running with just a single address.=C2=A0 Particular for things like=20
uhd_usrp_probe, you don't need both ports.=C2=A0 Then you can move on
 =C2=A0 to dual ethernet configurations.
--------------g0lqdEr9WoboYnMOwHeIpeiw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 24/10/2024 16:36,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:c1337rogers@gm=
ail.com">c1337rogers@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:nTAStEeEHUFCLFpTODDxZxARez7keaH9BbpdJr7o@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi all,</p>
      <p>My setup: Ubuntu 20.04, UHD_4.7.0.HEAD-0-ga5ed1872, DPDK_19.11,
        X310 w/ newly updated XG image, Intel X710 NIC</p>
      <p>I=E2=80=99m trying to get DPDK working with the X310 but I=E2=80=
=99m failing on
        step 0. Running any of the example programs (without DPDK for
        now) gives me the same error:<br>
        <code><br>
          /usr/local/lib/uhd/examples$ ./benchmark_rate --rx_rate 10e6
          --rx_channels 1 --args
          addr=3D192.168.30.2,second_addr=3D192.168.41.2</code></p>
      <p><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
          DPDK_19.11; UHD_4.7.0.HEAD-0-ga5ed1872</code></p>
      <p><code>[00:00:00.000200] Creating the usrp device with:
          addr=3D192.168.30.2,second_addr=3D192.168.41.2...</code></p>
      <p><code>[INFO] [X300] X300 initialization sequence...</code></p>
      <p><code>[INFO] [X300] Maximum frame size: 8000 bytes.</code></p>
      <p><code>[INFO] [X300] Maximum frame size: 8000 bytes.</code></p>
      <p><code>[INFO] [X300] Radio 1x clock: 200 MHz</code></p>
      <p><code>[ERROR] [RFNOC::GRAPH] Caught exception while
          initializing graph: RfnocError: OpTimeout: Control operation
          timed out waiting for ACK</code></p>
      <p><code>Error: RuntimeError: Failure to create rfnoc_graph.</code>=
</p>
      <p>I know the 192.168.41.2 address is non-standard=E2=80=A6 this is
        correct though and I can ping both addresses just fine. There=E2=80=
=99s
        no errors when running uhd_find_devices. uhd_usrp_probe fails
        with the same error as the example programs. </p>
      <p>Any thoughts on what=E2=80=99s wrong here? Disclaimer: this X310=
 is a
        community resource so I can=E2=80=99t speak to the full pedigree.=
 I did
        just update the FPGA after a fresh UHD 4.7 install and
        image_downloader run<br>
        <br>
        Thanks,</p>
      <p>Chris</p>
      <br>
    </blockquote>
    Try running with just a single address.=C2=A0 Particular for things l=
ike
    uhd_usrp_probe, you don't need both ports.=C2=A0 Then you can move on=
<br>
    =C2=A0 to dual ethernet configurations.<span
    style=3D"white-space: pre-wrap">
</span><br>
  </body>
</html>

--------------g0lqdEr9WoboYnMOwHeIpeiw--

--===============0970564563934023747==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0970564563934023747==--
