Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D7151823AC2
	for <lists+usrp-users@lfdr.de>; Thu,  4 Jan 2024 03:42:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9F4143848D7
	for <lists+usrp-users@lfdr.de>; Wed,  3 Jan 2024 21:42:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1704336130; bh=SsYS0ZzhbRh+8DuQI5/K1FdeAtn/zoxD7nIs5shCERA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=cKVE+/xdAXnMezZmvvMkkofSg/dA0GRb74LsRL8i6o88JH5SlWAzohCisdT87SOXc
	 G2MwX/gdlyKMU9PITI872+peslP6FS/r7vHCyeFndrOh1IdHRJxKcX8Ve6nRCEQA8T
	 iZNsySLKnQxHeNSvJ0rAqKMkfvyy7i1b0U/8o9yCXf/Jpvyo956iKSOFXoVVHcbZuB
	 i9yW3LUzrayuVEG8cUZXub7Su5ULRnugCWCnIPnifXuBCs507t1FgFt4v7HNyVwIrs
	 LH8Pt/p6w4tM50gwY8rzzBVev7FeNO5cQsvejVIRj2oQHNcSEoZ/bMvVwtvOVJwPiv
	 D3esvWzWKSjNw==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id B8255380ABB
	for <usrp-users@lists.ettus.com>; Wed,  3 Jan 2024 21:41:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QGB2V++g";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-781706de787so8090085a.0
        for <usrp-users@lists.ettus.com>; Wed, 03 Jan 2024 18:41:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704336118; x=1704940918; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FGaP3o/sNkU1z5JAiScLHUrtCrhowdlq21NVthbOrvQ=;
        b=QGB2V++g5Qj9yFtr/lYEl+mfdNv+4sc/PRizdPZtqLdx6YiUaMJJfakjeCoy0Z0uj/
         yzVhiPvIw9xuckahsZGTH0PvL2X7TDLZGPYye8VSrr1+35aXTIpr0qGhRIM9turBm8Sm
         EwiuOyL1ZM/RPacU8UvOGhTgg1Y1lZWiLh0VGfBCGCX2luqRcwdYJwPuBsykNqhvxH2N
         mDpl8etgA+3i17iDxPv7KvWqhh2fw2pHijNdbV5rgh8FeTZvO9eQvE2PyDhCKZGO4Lhn
         hIR28G3sWW7K5dI0/egLykOJpXtVhO8X6CLHMAZyZpuoA81IOo27vWFFX+J2Mqgep+qK
         8fPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704336118; x=1704940918;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FGaP3o/sNkU1z5JAiScLHUrtCrhowdlq21NVthbOrvQ=;
        b=v/yvPoTApyq1rfwZXOVrsXOiHQsObh4sGE0CmJsiQlJvM00skGCEcnVTIFweRjKWPU
         OlshfWIDBej5kG45nBZUNz1EklP2qMrm6Vgb5r8ZL9vJ00cbfk5rjgzMOcwqnsN3mj93
         J0RI+0YEMSH0XIuKefGxF9cjzeu4lz7R+AbvliVo9yHk3fCUWdtPkkwalsiLPllJXGtj
         d+CNWqWZiUv0fbEPykmp/Erz385/NGYF8wru69fDYhYa5VT7kzX1tNvChQKJ5qpuGPrb
         SHDkPuWA4RsE3OVGhMlpD3Ar+J2x076r9qZIoIR8WcI65G6xjBY3o5lG7JHSky/GA+eQ
         TJow==
X-Gm-Message-State: AOJu0YzZvPfkAYirqAOp9DCvQuSYEMr1TnqkOLodFOOlzuib6cX+tcn1
	tVfbIn22lI4qDtGHmvA9txk65V1r5Bk=
X-Google-Smtp-Source: AGHT+IHQ+906zqyzsxQRGqUQI1TNlnEwHlnYQrmmIWAKF3rZzcyEBPO745nya2nXuT34euGitXzSEw==
X-Received: by 2002:ad4:5aa8:0:b0:680:ca9:66db with SMTP id u8-20020ad45aa8000000b006800ca966dbmr25338qvg.127.1704336117642;
        Wed, 03 Jan 2024 18:41:57 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id pm14-20020ad446ce000000b0067f0a06c1e3sm11495780qvb.132.2024.01.03.18.41.57
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jan 2024 18:41:57 -0800 (PST)
Message-ID: <b708e42d-b752-43cc-92e1-930da2e7d99c@gmail.com>
Date: Wed, 3 Jan 2024 21:41:48 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Fuot9L9oqsqulvnSDET1JGzXtXsC2UkNbk6DalbMo@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Fuot9L9oqsqulvnSDET1JGzXtXsC2UkNbk6DalbMo@lists.ettus.com>
Message-ID-Hash: PYAVF44BTQZQKMNU2AR6MP7FRJA5DFWT
X-Message-ID-Hash: PYAVF44BTQZQKMNU2AR6MP7FRJA5DFWT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [WARNING] [DPDK::IO_SERVICE] Dropping packet: No link entry in rx table, Lookup error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PYAVF44BTQZQKMNU2AR6MP7FRJA5DFWT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0292382393628877158=="

This is a multi-part message in MIME format.
--===============0292382393628877158==
Content-Type: multipart/alternative;
 boundary="------------W0glvAQElC1oLW1tcTagT4Qy"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------W0glvAQElC1oLW1tcTagT4Qy
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 03/01/2024 15:18, jmaloyan@umass.edu wrote:
>
> Hello,
>
> I am currently trying to use DPDK, however, there is an error I=20
> currently am unable to resolve.
>
> |./benchmark_rate --rx_rate 245.76e6 --rx_channels 0 --tx_rate=20
> 245.76e6 --tx_channels 0 --args "addr=3D192.168.10.2,use_dpdk=3D1"|
>
> |[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11;=20
> UHD_4.5.0.main-2-ga7657c80|
>
> |[WARNING] [PREFS] Loaded config from /root/.uhd. This location is=20
> considered deprecated, consider moving your config file to=20
> /root/.config instead.|
>
> |EAL: Detected 32 lcore(s)|
>
> |EAL: Detected 1 NUMA nodes|
>
> |EAL: Multi-process socket /var/run/dpdk/rte/mp_socket|
>
> |EAL: Selected IOVA mode 'PA'|
>
> |EAL: No available hugepages reported in hugepages-1048576kB|
>
> |EAL: Probing VFIO support...|
>
> |EAL: VFIO support initialized|
>
> |EAL: PCI device 0000:06:00.0 on NUMA socket -1|
>
> |EAL: probe driver: 15b3:1017 net_mlx5|
>
> |EAL: PCI device 0000:06:00.1 on NUMA socket -1|
>
> |EAL: probe driver: 15b3:1017 net_mlx5|
>
> |[WARNING] [DPDK::IO_SERVICE] Dropping packet: No link entry in rx tabl=
e|
>
> |[00:00:00.000350] Creating the usrp device with:=20
> addr=3D192.168.10.2,use_dpdk=3D1...|
>
> |[WARNING] [DPDK::IO_SERVICE] Dropping packet: No link entry in rx tabl=
e|
>
> |Error: LookupError: KeyError: No devices found for ----->|
>
> |Device Address:|
>
> |addr: 192.168.10.2|
>
> |use_dpdk: 1|
>
> The error displays as a warning, however, the program immediately goes=20
> into a lookup error where it says the device can not be found. I do=20
> not know how to resolve either of these issues, or know if they are=20
> related. Any help is greatly appreciated.
>
> Thanks,
>
> Joe
>
>
My *guess* is that DPDK hasn't been configured to use your NIC at the=20
desired address (probably 192.168.10.1).

Also, you haven't said which device type this is, nor what your exact=20
physical network setup is.

I'll note that for some USRPs, the 192.168.10.X address is used by=20
default by the 1Gbit configuration of the hardware.

For example, on the X310, with the HG image, the SFP0 port has the=20
192.168.10.2 address, and operates at 1Gbit, while
 =C2=A0 the 2nd SFP port operates at 10Gbit, with an address of 192.168.4=
0.2.

I'll note further that using DPDK at 1GBit is unlikely to see much, if=20
any, performance improvement.

https://files.ettus.com/manual/page_usrp_x3x0.html



--------------W0glvAQElC1oLW1tcTagT4Qy
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 03/01/2024 15:18, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.ed=
u</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:Fuot9L9oqsqulvnSDET1JGzXtXsC2UkNbk6DalbMo@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello,</p>
      <p>I am currently trying to use DPDK, however, there is an error I
        currently am unable to resolve.</p>
      <p><code>./benchmark_rate --rx_rate 245.76e6 --rx_channels 0
          --tx_rate 245.76e6 --tx_channels 0 --args
          "addr=3D192.168.10.2,use_dpdk=3D1"</code></p>
      <p><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
          DPDK_19.11; UHD_4.5.0.main-2-ga7657c80</code></p>
      <p><code>[WARNING] [PREFS] Loaded config from /root/.uhd. This
          location is considered deprecated, consider moving your config
          file to /root/.config instead.</code></p>
      <p><code>EAL: Detected 32 lcore(s)</code></p>
      <p><code>EAL: Detected 1 NUMA nodes</code></p>
      <p><code>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket</cod=
e></p>
      <p><code>EAL: Selected IOVA mode 'PA'</code></p>
      <p><code>EAL: No available hugepages reported in
          hugepages-1048576kB</code></p>
      <p><code>EAL: Probing VFIO support...</code></p>
      <p><code>EAL: VFIO support initialized</code></p>
      <p><code>EAL: PCI device 0000:06:00.0 on NUMA socket -1</code></p>
      <p><code>EAL: probe driver: 15b3:1017 net_mlx5</code></p>
      <p><code>EAL: PCI device 0000:06:00.1 on NUMA socket -1</code></p>
      <p><code>EAL: probe driver: 15b3:1017 net_mlx5</code></p>
      <p><code>[WARNING] [DPDK::IO_SERVICE] Dropping packet: No link
          entry in rx table</code></p>
      <p><code>[00:00:00.000350] Creating the usrp device with:
          addr=3D192.168.10.2,use_dpdk=3D1...</code></p>
      <p><code>[WARNING] [DPDK::IO_SERVICE] Dropping packet: No link
          entry in rx table</code></p>
      <p><code>Error: LookupError: KeyError: No devices found for
          -----&gt;</code></p>
      <p><code>Device Address:</code></p>
      <p><code> addr: 192.168.10.2</code></p>
      <p><code> use_dpdk: 1</code></p>
      <p>The error displays as a warning, however, the program
        immediately goes into a lookup error where it says the device
        can not be found. I do not know how to resolve either of these
        issues, or know if they are related. Any help is greatly
        appreciated.</p>
      <p>Thanks,</p>
      <p>Joe</p>
      <br>
    </blockquote>
    My *guess* is that DPDK hasn't been configured to use your NIC at
    the desired address (probably 192.168.10.1).<br>
    <br>
    Also, you haven't said which device type this is, nor what your
    exact physical network setup is.<br>
    <br>
    I'll note that for some USRPs, the 192.168.10.X address is used by
    default by the 1Gbit configuration of the hardware.<br>
    <br>
    For example, on the X310, with the HG image, the SFP0 port has the
    192.168.10.2 address, and operates at 1Gbit, while<br>
    =C2=A0 the 2nd SFP port operates at 10Gbit, with an address of
    192.168.40.2.<br>
    <br>
    I'll note further that using DPDK at 1GBit is unlikely to see much,
    if any, performance improvement.<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_usrp_x3x0.html">https://files.ettus.com/manual/page_usrp_x3x0.h=
tml</a><br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------W0glvAQElC1oLW1tcTagT4Qy--

--===============0292382393628877158==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0292382393628877158==--
