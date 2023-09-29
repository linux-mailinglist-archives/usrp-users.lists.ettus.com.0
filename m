Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D9C7B3B3B
	for <lists+usrp-users@lfdr.de>; Fri, 29 Sep 2023 22:26:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CCF86385393
	for <lists+usrp-users@lfdr.de>; Fri, 29 Sep 2023 16:26:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696019205; bh=BeY2lRZVs+45gUu2QYxVs4cEN3GDkPebyJVXT2Z+N6k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=nKLmifHb+Z/RcQPWCgZ/D/EMUEDYzYKwwWZre4aS4X5MJt4jaWgmQKzTiAFSgYM9N
	 9D/lnLsjZMxOaJS6Zqu9cDVXLe+2OifxApFsuCYpwj1TpaJGNr+8xW2KGCzjjvo3NK
	 MlEGpnyNKXvY3ZQrz2yRUkDk1uuTQGKvH5UShGS2sTZ+4VkDV0CqEVYKXdsETUaGtB
	 NaRAcS4NyTh/+b4TwN8cJb7eqp057oyWPKg/KsWS0gy5YwVF2rExgeFIT3A4FDpLDB
	 3mBIwB09E3ennlnG97zlCf0erR3kqFvOHZL2vQoIigaI+FJ687lNPfSV3fpQcaG+x1
	 EnAJ8ixaJFBjA==
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 667C9384EC6
	for <usrp-users@lists.ettus.com>; Fri, 29 Sep 2023 16:26:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Rb1r4xwU";
	dkim-atps=neutral
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-774141bb415so824190785a.3
        for <usrp-users@lists.ettus.com>; Fri, 29 Sep 2023 13:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696019201; x=1696624001; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1UpuKf8K+ippnDd3kNqdS0Es1Wrjf0SmJD283hqfCZs=;
        b=Rb1r4xwU8IEJhoh1b3xGwyZ1+vdMT6Pq+/mSicoJ2QuDCIO3OPi3w20VPahS5+GlOS
         GMNWAFYw//qtvkMuPZ2ABt0P+BAYiN5nESl5xBdo71mhsfGkuCVV4MEea5PTSKzlkL5B
         Dvw41rOrN45MqlHHSGcrfRLqPi+hUAWbv2gxUcxmiFUz3SCypa2gjq6vYBfGAJtAESO3
         2dFr6N1W52DMpdy4LydBuWF15Rty8qX57MjkFKhsGEVK+IfTa+uJBWtzoKrSKDF9blY9
         DO5gkgmez+I3QRdCeWpiy/B1wXqQTPmIoYfpUbUU+TXv3DIdG1yMfayBayp24QmG+8B2
         N3qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696019201; x=1696624001;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1UpuKf8K+ippnDd3kNqdS0Es1Wrjf0SmJD283hqfCZs=;
        b=UU36F3/lZldxlAqpa3J9049VQfOuvb6H9VzwrJ7rY0AbKIhme6uonBV8kXJU10cRuw
         K1qjj/6PIXil39Gs0oJdRO7oUVDUTfKv1If7cu5zVzqIn6okpwS9PrYmQxYFjlqSpSKR
         RMD354CI4GvHIZr8Mz6ZWBkdsLXgFstr+4Dc7AhoHWMh88NAjvG0I8Cg5JKSKf1n4WuQ
         alxg2wWLk0aIoPI5b8rPmMpZ3wELJIqae+k0jveCDRaWjkJfyRW/jExpqZ/IcHtWEDZ4
         pfba+zCC6pbTTd3lT6Yjac+sxG5SPV0xF9AVhYgP4z4EFjxP2Ljn7BD2hWKpUF56pFk/
         ueNg==
X-Gm-Message-State: AOJu0YxgFEeow2bAEYE700+OuYKPpWe21SJTIz0s14Mc27VLuHfpNzTP
	Ovp54+Sz1jsLso73wSGCUVxMQGDzXgk=
X-Google-Smtp-Source: AGHT+IGOTMIPAhGHn5qNs0GQqZFMy+B+Ch2iRTWJFb5tQRIrhNQ13rGh9przGlOoVv+LB/YxPo4bVg==
X-Received: by 2002:a05:620a:1a87:b0:774:186f:4d82 with SMTP id bl7-20020a05620a1a8700b00774186f4d82mr5260863qkb.50.1696019200593;
        Fri, 29 Sep 2023 13:26:40 -0700 (PDT)
Received: from [192.168.2.154] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id g9-20020a37e209000000b0076ee973b9a7sm4591243qki.27.2023.09.29.13.26.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 13:26:40 -0700 (PDT)
Message-ID: <3f383729-6ea3-8a01-5979-d0d4758a7105@gmail.com>
Date: Fri, 29 Sep 2023 16:26:39 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAHN2CUf=xOzHmyRBaaXMWSuv5ZrprVEaO-BPXq+dH21NtxAkjQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAHN2CUf=xOzHmyRBaaXMWSuv5ZrprVEaO-BPXq+dH21NtxAkjQ@mail.gmail.com>
Message-ID-Hash: WCOLDHQVSBYQKBLFSWEOPJ6SWOEUBOXO
X-Message-ID-Hash: WCOLDHQVSBYQKBLFSWEOPJ6SWOEUBOXO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK with X310 and Intel X520-DA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WCOLDHQVSBYQKBLFSWEOPJ6SWOEUBOXO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7075881265297316418=="

This is a multi-part message in MIME format.
--===============7075881265297316418==
Content-Type: multipart/alternative;
 boundary="------------zwbewEs1EZdnHYwjEe22ryv9"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------zwbewEs1EZdnHYwjEe22ryv9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 29/09/2023 15:18, Shane Flandermeyer wrote:
> Hello all,
>
> I'm trying to configure my X310 to transmit at its full 200 MS/s rate=20
> without underflows. People have recommended DPDK, but it seems that=20
> DPDK can't find the X310 when I try to run scripts. I can use the X310=20
> when I don't bind the NIC to vfio-pci, but running the benchmark_rate=20
> script with DPDK (as root) gives the following:
>
> $ ./benchmark_rate --rx_rate 200e6 --tx_rate 200e6 --args=20
> "addr=3D192.168.30.2,use_dpdk=3D1"
>
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;=20
> UHD_4.5.0.HEAD-0-g471af98f
> EAL: Detected CPU lcores: 32
> EAL: Detected NUMA nodes: 1
> EAL: Detected shared linkage of DPDK
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> EAL: Selected IOVA mode 'VA'
> EAL: No available 1048576 kB hugepages reported
> EAL: VFIO support initialized
> EAL: Using IOMMU type 1 (Type 1)
> EAL: Ignore mapping IO port bar(2)
> EAL: Probe PCI driver: net_ixgbe (8086:10fb) device: 0000:61:00.0=20
> (socket 0)
> EAL: Ignore mapping IO port bar(2)
> EAL: Probe PCI driver: net_ixgbe (8086:10fb) device: 0000:61:00.1=20
> (socket 0)
> TELEMETRY: No legacy callbacks, legacy socket not created
> [ERROR] [DPDK] Could not find route to destination address 192.168.30.2
> [ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could=20
> not find route to destination address 192.168.30.2
> [00:00:00.000300] Creating the usrp device with:=20
> addr=3D192.168.30.2,use_dpdk=3D1...
> [ERROR] [DPDK] Could not find route to destination address 192.168.30.2
> [ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could=20
> not find route to destination address 192.168.30.2
> Error: LookupError: KeyError: No devices found for ----->
> Device Address:
> =C2=A0 =C2=A0 addr: 192.168.30.2
> =C2=A0 =C2=A0 use_dpdk: 1
>
> *Additional info that may be helpful:*
> - After binding the NIC, dpdk-devbind gives the following
>
> $ dpdk-devbind.py -s
>
> Network devices using DPDK-compatible driver
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 0000:61:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'=20
> drv=3Dvfio-pci unused=3Dixgbe
> 0000:61:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'=20
> drv=3Dvfio-pci unused=3Dixgbe
>
> Network devices using kernel driver
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 0000:64:00.0 'I210 Gigabit Network Connection 1533' if=3Denp100s0=20
> drv=3Digb unused=3Dvfio-pci
> 0000:6a:00.0 'Ethernet Controller 10G X550T 1563' if=3Denp106s0f0=20
> drv=3Dixgbe unused=3Dvfio-pci *Active*
> 0000:6a:00.1 'Ethernet Controller 10G X550T 1563' if=3Denp106s0f1=20
> drv=3Dixgbe unused=3Dvfio-pci
>
> No 'Baseband' devices detected
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>
> Crypto devices using kernel driver
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 0000:24:00.1 'Starship/Matisse Cryptographic Coprocessor PSPCPP 1486'=20
> drv=3Dccp unused=3Dvfio-pci
>
> No 'DMA' devices detected
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
>
> No 'Eventdev' devices detected
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>
> No 'Mempool' devices detected
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
>
> No 'Compress' devices detected
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>
> No 'Misc (rawdev)' devices detected
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> No 'Regex' devices detected
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
> - My configuration file is located at /root/.config/uhd.conf, and has=20
> the following contents:
> [use_dpdk=3D1]
> dpdk-mtu=3D9000
> dpdk-driver=3D/usr/lib/x86_64-linux-gnu/dpdk/pmds-22.0
> dpdk-corelist=3D0,1
> dpdk-num-mbufs=3D4095
> dpdk-mbufs-cache-size=3D315
> dpdk_link_timeout=3D9000
>
> [dpdk-mac=3D90:e2:ba:dd:5b:cc]
> dpdk-io-cpu =3D 1
> dpdk-ipv4 =3D 192.168.30.1/24 <http://192.168.30.1/24>
>
> Does anyone have any ideas for why it isn't working? Thank you!
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Which FPGA image are you running on the X310?


--------------zwbewEs1EZdnHYwjEe22ryv9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 29/09/2023 15:18, Shane Flandermeye=
r
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAHN2CUf=3DxOzHmyRBaaXMWSuv5ZrprVEaO-BPXq+dH21NtxAkjQ@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Hello all,</div>
        <div><br>
        </div>
        <div>I'm trying to configure my X310 to transmit at its full 200
          MS/s rate without underflows. People have recommended DPDK,
          but it seems that DPDK can't find the X310 when I try to run
          scripts. I can use the X310 when I don't bind the NIC to
          vfio-pci, but running the benchmark_rate script with DPDK (as
          root) gives the following:<br>
        </div>
        <div><br>
        </div>
        $ ./benchmark_rate --rx_rate 200e6 --tx_rate 200e6 --args
        "addr=3D192.168.30.2,use_dpdk=3D1"<br>
        <br>
        [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
        DPDK_21.11; UHD_4.5.0.HEAD-0-g471af98f<br>
        EAL: Detected CPU lcores: 32<br>
        EAL: Detected NUMA nodes: 1<br>
        EAL: Detected shared linkage of DPDK<br>
        EAL: Multi-process socket /var/run/dpdk/rte/mp_socket<br>
        EAL: Selected IOVA mode 'VA'<br>
        EAL: No available 1048576 kB hugepages reported<br>
        EAL: VFIO support initialized<br>
        EAL: Using IOMMU type 1 (Type 1)<br>
        EAL: Ignore mapping IO port bar(2)<br>
        EAL: Probe PCI driver: net_ixgbe (8086:10fb) device:
        0000:61:00.0 (socket 0)<br>
        EAL: Ignore mapping IO port bar(2)<br>
        EAL: Probe PCI driver: net_ixgbe (8086:10fb) device:
        0000:61:00.1 (socket 0)<br>
        TELEMETRY: No legacy callbacks, legacy socket not created<br>
        [ERROR] [DPDK] Could not find route to destination address
        192.168.30.2<br>
        [ERROR] [X300] X300 Network discovery error RuntimeError: DPDK:
        Could not find route to destination address 192.168.30.2<br>
        [00:00:00.000300] Creating the usrp device with:
        addr=3D192.168.30.2,use_dpdk=3D1...<br>
        [ERROR] [DPDK] Could not find route to destination address
        192.168.30.2<br>
        [ERROR] [X300] X300 Network discovery error RuntimeError: DPDK:
        Could not find route to destination address 192.168.30.2<br>
        Error: LookupError: KeyError: No devices found for -----&gt;<br>
        Device Address:<br>
        =C2=A0 =C2=A0 addr: 192.168.30.2<br>
        =C2=A0 =C2=A0 use_dpdk: 1<br>
        <div><br>
        </div>
        <div><b>Additional info that may be helpful:</b></div>
        <div>- After binding the NIC, dpdk-devbind gives the following</d=
iv>
        <div><br>
        </div>
        <div>$ dpdk-devbind.py -s<br>
          <br>
          Network devices using DPDK-compatible driver<br>
          =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
          0000:61:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection
          10fb' drv=3Dvfio-pci unused=3Dixgbe<br>
          0000:61:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection
          10fb' drv=3Dvfio-pci unused=3Dixgbe<br>
          <br>
          Network devices using kernel driver<br>
          =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
          0000:64:00.0 'I210 Gigabit Network Connection 1533'
          if=3Denp100s0 drv=3Digb unused=3Dvfio-pci <br>
          0000:6a:00.0 'Ethernet Controller 10G X550T 1563'
          if=3Denp106s0f0 drv=3Dixgbe unused=3Dvfio-pci *Active*<br>
          0000:6a:00.1 'Ethernet Controller 10G X550T 1563'
          if=3Denp106s0f1 drv=3Dixgbe unused=3Dvfio-pci <br>
          <br>
          No 'Baseband' devices detected<br>
          =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
          <br>
          Crypto devices using kernel driver<br>
          =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
          0000:24:00.1 'Starship/Matisse Cryptographic Coprocessor
          PSPCPP 1486' drv=3Dccp unused=3Dvfio-pci <br>
          <br>
          No 'DMA' devices detected<br>
          =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
          <br>
          No 'Eventdev' devices detected<br>
          =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
          <br>
          No 'Mempool' devices detected<br>
          =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>
          <br>
          No 'Compress' devices detected<br>
          =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
          <br>
          No 'Misc (rawdev)' devices detected<br>
          =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
          <br>
          No 'Regex' devices detected<br>
          =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D</div>
        <div><br>
        </div>
        <div>- My configuration file is located at
          /root/.config/uhd.conf, and has the following contents:</div>
        <div>[use_dpdk=3D1]<br>
          dpdk-mtu=3D9000<br>
          dpdk-driver=3D/usr/lib/x86_64-linux-gnu/dpdk/pmds-22.0<br>
          dpdk-corelist=3D0,1<br>
          dpdk-num-mbufs=3D4095<br>
          dpdk-mbufs-cache-size=3D315<br>
          dpdk_link_timeout=3D9000<br>
          =C2=A0 =C2=A0 <br>
          [dpdk-mac=3D90:e2:ba:dd:5b:cc]<br>
          dpdk-io-cpu =3D 1<br>
          dpdk-ipv4 =3D <a href=3D"http://192.168.30.1/24"
            moz-do-not-send=3D"true">192.168.30.1/24</a></div>
        <div><br>
        </div>
        <div>Does anyone have any ideas for why it isn't working? Thank
          you!<br>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    Which FPGA image are you running on the X310?<br>
    <br>
    <br>
  </body>
</html>

--------------zwbewEs1EZdnHYwjEe22ryv9--

--===============7075881265297316418==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7075881265297316418==--
