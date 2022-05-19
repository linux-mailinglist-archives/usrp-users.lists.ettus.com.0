Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8DB52D7C4
	for <lists+usrp-users@lfdr.de>; Thu, 19 May 2022 17:34:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 09ADE384AD5
	for <lists+usrp-users@lfdr.de>; Thu, 19 May 2022 11:34:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652974445; bh=r1POe4idZohPyBAEzzltrQLLPPmOS7DYrfu13/c7r/8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=zltXPpr9lI9OUOJgyj4MK8+PonMZ1I8MhnhU5lNPyLGWvKW+ToH5CKq+rFmmIj+dz
	 kYrm/Zaw/5OWtisSuAb8W5paMpv9BBe5iayubMwd2REcNItoTiXnctV73/AjayVaOy
	 sz39FGxMwHj8gpHTSfuSXEFwNnYdnVQ1C6ooZM0DZBoPIia5+YN7D7sf3J+dJPdJtV
	 qojFHBZ8i0BnL8qVdjAbo3IUZWLk1rEp/bClFLV5u/Fq0c4YLSexIb0taogpVPGDPT
	 GC1bwzYCVvF7EoZowMaCfM6WDI/bQsbJWSw2x8pm5g32O/5tI6kUa4/kOgqYb1Ytib
	 wMUpma3T/lsTg==
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id D0C7438492C
	for <usrp-users@lists.ettus.com>; Thu, 19 May 2022 11:33:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="n+PzQ27Q";
	dkim-atps=neutral
Received: by mail-qv1-f51.google.com with SMTP id y20so4806572qvx.3
        for <usrp-users@lists.ettus.com>; Thu, 19 May 2022 08:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=+MrOrKhk8VUD8QPENAGATrtbWiy5bIxF2PWeoapvzDM=;
        b=n+PzQ27Q73bON/EmWf2lXuzRcLcAFwQS7+xyj5eXZ+V9+e6EjylQ/B9V62MWlH9wgl
         OxFJy0QadRDDB+ULjDa4Ka8/pDSO+cQ8NYSFpgJvhgNlVAL8VrM+OWps7od6i1sk82fg
         7ZNmjb5iqI/+lFHRN8ZOqtLKmhjQHqx5C3InBSu1oNHiR4hUIo2BjuXhrForCrjfYY5/
         pixOleh01eYQFlTib+jxhOSjD6FbHJEId0ZxQlZ4X5OKb29VQh451eUn7BljMJnyF4oR
         6d7kOkCm9+jb0naO0vvkqifE+v47WHQALAR8ydzQH8+rzTuMBhLDgv3ZDzLglkJ1erp+
         Ui4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=+MrOrKhk8VUD8QPENAGATrtbWiy5bIxF2PWeoapvzDM=;
        b=THZ28IVtBdPp7mLfxG8vWdJw7wyS0VbfA7XDvnN+5UQ79bONuIYfkIVPtlO+2FHn8X
         yG3+3gj6j57ObLXSgTzvogUYY9bEpfDlULvqKdkppEXlxUwKIisRxxNGF4C3cLmGZbDf
         kYVZRDLTQCKcehUR1cE3IqCtIbdsEdbtCM9jIripp7Fz7R3u00AN0+MqxBCVBdqnw2BB
         zH++5dhRKZboqBVahlNkNeQDlNHPIHEH61npwoaWoLHX8k3X3OunaN66YYKhIdUiSu1q
         /j8vYpjE1kI/z1i3+cizP97TjX6leUDnpJsSSQmdzh/l7ayNMCL+DTHCXb1aR84nueHF
         mzIA==
X-Gm-Message-State: AOAM530aQqtmaAI66y/RmML+Xp0Fc+BqEQEy8cLdA9KpiZf6jpNu4ZfE
	pLZOuX33NRhVvDbwDOzyQU5hUgutK/c=
X-Google-Smtp-Source: ABdhPJyWcCxBKjkgbO1arZk3zpIUwuXsRbK6b1fi6GquPrhVk9UXon8QcDm8OFlZ0+rslMqHrfaCnA==
X-Received: by 2002:a05:6214:c4b:b0:461:d12b:268 with SMTP id r11-20020a0562140c4b00b00461d12b0268mr4440906qvj.103.1652974386216;
        Thu, 19 May 2022 08:33:06 -0700 (PDT)
Received: from [192.168.2.203] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id v64-20020a376143000000b006a32baf67aasm1460453qkb.27.2022.05.19.08.33.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 May 2022 08:33:05 -0700 (PDT)
Message-ID: <52ab522a-4a29-c027-8452-7566e50a9522@gmail.com>
Date: Thu, 19 May 2022 11:33:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: "Dobler, Anton" <anton.dobler@unibw.de>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <1652973983841.1075@unibw.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1652973983841.1075@unibw.de>
Message-ID-Hash: QD2ZF6ZPAGYICKYDANBQ7T6BEAMLROMP
X-Message-ID-Hash: QD2ZF6ZPAGYICKYDANBQ7T6BEAMLROMP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD4.2 & DPDK
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QD2ZF6ZPAGYICKYDANBQ7T6BEAMLROMP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0777202365307741753=="

This is a multi-part message in MIME format.
--===============0777202365307741753==
Content-Type: multipart/alternative;
 boundary="------------wi0m0hcFaOyd8mS5XPwcdX0G"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------wi0m0hcFaOyd8mS5XPwcdX0G
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-05-19 11:26, Dobler, Anton wrote:
>
> Dear community,
>
>
> I try to use DPDK together with UHD4.2 but I get the following error:
>
>
> ./benchmark_rate --args "mgmt_addr=3D169.254.2.13,addr=3D1.0.1.2,=20
> second_addr=3D1.0.2.2,use_dpdk=3D1" --rx_rate=3D125e6
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11;=20
> UHD_4.2.0.0-4-g04d14cd7
> [DEBUG] [PREFS] Loaded user config file /root/.config/uhd.conf
> EAL: Detected 16 lcore(s)
> EAL: Detected 1 NUMA nodes
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> EAL: Selected IOVA mode 'VA'
> EAL: No available hugepages reported in hugepages-1048576kB
> EAL: Probing VFIO support...
> EAL: VFIO support initialized
> EAL: PCI device 0000:00:04.0 on NUMA socket 0
> EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat
> EAL: PCI device 0000:00:04.1 on NUMA socket 0
> EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat
> EAL: PCI device 0000:00:04.2 on NUMA socket 0
> EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat
> EAL: PCI device 0000:00:04.3 on NUMA socket 0
> EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat
> EAL: PCI device 0000:00:04.4 on NUMA socket 0
> EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat
> EAL: PCI device 0000:00:04.5 on NUMA socket 0
> EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat
> EAL: PCI device 0000:00:04.6 on NUMA socket 0
> EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat
> EAL: PCI device 0000:00:04.7 on NUMA socket 0
> EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat
> EAL: PCI device 0000:00:1f.6 on NUMA socket 0
> EAL:=C2=A0 =C2=A0probe driver: 8086:15b9 net_e1000_em
> EAL: PCI device 0000:d5:00.0 on NUMA socket 0
> EAL:=C2=A0 =C2=A0probe driver: 8086:10fb net_ixgbe
> EAL:=C2=A0 =C2=A0using IOMMU type 1 (Type 1)
> EAL: Ignore mapping IO port bar(2)
> EAL: PCI device 0000:d5:00.1 on NUMA socket 0
> EAL:=C2=A0 =C2=A0probe driver: 8086:10fb net_ixgbe
> EAL: Ignore mapping IO port bar(2)
> [DEBUG] [MPMD] Discovering MPM devices on port 49600
> [ERROR] [DPDK] Could not find route to destination address 1.0.1.2
> [ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could=20
> not find route to destination address 1.0.1.2
> [00:00:00.000503] Creating the usrp device with:=20
> mgmt_addr=3D169.254.2.13,addr=3D1.0.1.2, second_addr=3D1.0.2.2,use_dpdk=
=3D1...
> [DEBUG] [MPMD] Discovering MPM devices on port 49600
> [ERROR] [DPDK] Could not find route to destination address 1.0.1.2
> [ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could=20
> not find route to destination address 1.0.1.2
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D169.254.2.13,type=3Dn3xx,product=3Dn310,serial=3D3176E00,na=
me=3Dni-n3xx-3176E00,fpga=3DXG,claimed=3DFalse,addr=3D1.0.1.2,second_addr=
=3D1.0.2.2,use_dpdk=3D1
> [DEBUG] [MPMD] Claiming mboard 0
> [DEBUG] [MPMD] Device args:=20
> `mgmt_addr=3D169.254.2.13,type=3Dn3xx,product=3Dn310,serial=3D3176E00,n=
ame=3Dni-n3xx-3176E00,fpga=3DXG,claimed=3DFalse,addr=3D1.0.1.2,second_add=
r=3D1.0.2.2,use_dpdk=3D1'.=20
> RPC address: 169.254.2.13
> [DEBUG] [MPMD] MPM reports device info:=20
> addr=3D1.0.1.2,claimed=3DTrue,connection=3Dremote,dboard_0_pid=3D336,db=
oard_0_serial=3D31732ED,dboard_1_pid=3D336,dboard_1_serial=3D31732F6,desc=
ription=3DN300-Series=20
> Device,eeprom_version=3D2,fourth_addr=3D169.254.2.13,fpga=3DXG,fpga_ver=
sion=3D8.0,fpga_version_hash=3D8daa80c.clean,fs_version=3D20220419212711,=
mender_artifact=3Dv4.2.0.0_n3xx,mpm_sw_version=3D4.2.0.0-g46a70d85,mpm_ve=
rsion=3D4.2,name=3Dni-n3xx-3176E00,pid=3D16962,product=3Dn310,rev=3D6,rpc=
_connection=3Dremote,second_addr=3D1.0.2.2,serial=3D3176E00,type=3Dn3xx
> [DEBUG] [MPMD] Found 8 motherboard sensors.
> [DEBUG] [MPMD] Initializing mboard 0
> [INFO] [MPM.PeriphManager] init() called with device args=20
> `fpga=3DXG,mgmt_addr=3D169.254.2.13,name=3Dni-n3xx-3176E00,product=3Dn3=
10,second_addr=3D1.0.2.2,use_dpdk=3D1,clock_source=3Dinternal,time_source=
=3Dinternal'.
> [DEBUG] [MPMD::MB_IFACE] Adding clock iface `radio_clk`, frequency:=20
> 125 MHz, mutable: Yes
> [DEBUG] [MPMD::MB_IFACE] Adding clock iface `bus_clk`, frequency: 200=20
> MHz, mutable: No
> [ERROR] [DPDK] Could not find route to destination address 1.0.1.2
> [WARNING] [MPMD::XPORT::UDP] Error during MTU discovery on address=20
> 1.0.1.2: RuntimeError: DPDK: Could not find route to destination=20
> address 1.0.1.2
> [ERROR] [DPDK] Could not find route to destination address 1.0.2.2
> [WARNING] [MPMD::XPORT::UDP] Error during MTU discovery on address=20
> 1.0.2.2: RuntimeError: DPDK: Could not find route to destination=20
> address 1.0.2.2
> [ERROR] [MPMD::MB_IFACE] No CHDR connection available!
> Error: RuntimeError: No CHDR connection available!
>
> I use the uhd.conf as follows:
>
> [use_dpdk=3D1]
> dpdk-mtu=3D9000
> dpdk-driver=3D/usr/lib/x86_64-linux-gnu/dpdk/pmds-20.0/dpdk/
> dpdk-corelist=3D0,9,10
> dpdk-num-mbufs=3D4096
> dpdk-mbufs-cache-size=3D315
>
> ;ens2f0
> [dpdk-mac=3D90:e2:ba:f1:38:1c]
> dpdk-lcore =3D 9
> dpdk-ipv4 =3D 1.0.2.1/24
>
> ;ens2f1
> [dpdk-mac=3D90:e2:ba:f1:38:1d]
> dpdk-lcore =3D 10
> dpdk-ipv4 =3D 1.0.1.1/24=E2=80=8B
>
>
> Any help would be highly appreciated!
>
> Best regards,
>
> Anton
>
>
>
>
KInd of a weird address range to use, but my guess is that your USRP=20
device isn't programmed to those addresses.


--------------wi0m0hcFaOyd8mS5XPwcdX0G
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-05-19 11:26, Dobler, Anton
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:1652973983841.1075@unibw.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none">p { margin-top: 0px=
; margin-bottom: 0px; }</style>
      <p>Dear community,<br>
      </p>
      <p><br>
      </p>
      <p>I try to use DPDK together with UHD4.2 but I get the following
        error:<br>
      </p>
      <p><br>
      </p>
      <div>./benchmark_rate --args "mgmt_addr=3D169.254.2.13,addr=3D1.0.1=
.2,
        second_addr=3D1.0.2.2,use_dpdk=3D1" --rx_rate=3D125e6</div>
      <div><br>
      </div>
      <div>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
        DPDK_19.11; UHD_4.2.0.0-4-g04d14cd7</div>
      <div>[DEBUG] [PREFS] Loaded user config file
        /root/.config/uhd.conf</div>
      <div>EAL: Detected 16 lcore(s)</div>
      <div>EAL: Detected 1 NUMA nodes</div>
      <div>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket</div>
      <div>EAL: Selected IOVA mode 'VA'</div>
      <div>EAL: No available hugepages reported in hugepages-1048576kB</d=
iv>
      <div>EAL: Probing VFIO support...</div>
      <div>EAL: VFIO support initialized</div>
      <div>EAL: PCI device 0000:00:04.0 on NUMA socket 0</div>
      <div>EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat</div>
      <div>EAL: PCI device 0000:00:04.1 on NUMA socket 0</div>
      <div>EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat</div>
      <div>EAL: PCI device 0000:00:04.2 on NUMA socket 0</div>
      <div>EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat</div>
      <div>EAL: PCI device 0000:00:04.3 on NUMA socket 0</div>
      <div>EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat</div>
      <div>EAL: PCI device 0000:00:04.4 on NUMA socket 0</div>
      <div>EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat</div>
      <div>EAL: PCI device 0000:00:04.5 on NUMA socket 0</div>
      <div>EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat</div>
      <div>EAL: PCI device 0000:00:04.6 on NUMA socket 0</div>
      <div>EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat</div>
      <div>EAL: PCI device 0000:00:04.7 on NUMA socket 0</div>
      <div>EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat</div>
      <div>EAL: PCI device 0000:00:1f.6 on NUMA socket 0</div>
      <div>EAL:=C2=A0 =C2=A0probe driver: 8086:15b9 net_e1000_em</div>
      <div>EAL: PCI device 0000:d5:00.0 on NUMA socket 0</div>
      <div>EAL:=C2=A0 =C2=A0probe driver: 8086:10fb net_ixgbe</div>
      <div>EAL:=C2=A0 =C2=A0using IOMMU type 1 (Type 1)</div>
      <div>EAL: Ignore mapping IO port bar(2)</div>
      <div>EAL: PCI device 0000:d5:00.1 on NUMA socket 0</div>
      <div>EAL:=C2=A0 =C2=A0probe driver: 8086:10fb net_ixgbe</div>
      <div>EAL: Ignore mapping IO port bar(2)</div>
      <div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
      <div>[ERROR] [DPDK] Could not find route to destination address
        1.0.1.2</div>
      <div>[ERROR] [X300] X300 Network discovery error RuntimeError:
        DPDK: Could not find route to destination address 1.0.1.2</div>
      <div>[00:00:00.000503] Creating the usrp device with:
        mgmt_addr=3D169.254.2.13,addr=3D1.0.1.2,
        second_addr=3D1.0.2.2,use_dpdk=3D1...</div>
      <div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
      <div>[ERROR] [DPDK] Could not find route to destination address
        1.0.1.2</div>
      <div>[ERROR] [X300] X300 Network discovery error RuntimeError:
        DPDK: Could not find route to destination address 1.0.1.2</div>
      <div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=3D169.254.2.13,type=3Dn3xx,product=3Dn310,serial=3D3176E00,name=
=3Dni-n3xx-3176E00,fpga=3DXG,claimed=3DFalse,addr=3D1.0.1.2,second_addr=3D=
1.0.2.2,use_dpdk=3D1</div>
      <div>[DEBUG] [MPMD] Claiming mboard 0</div>
      <div>[DEBUG] [MPMD] Device args:
`mgmt_addr=3D169.254.2.13,type=3Dn3xx,product=3Dn310,serial=3D3176E00,nam=
e=3Dni-n3xx-3176E00,fpga=3DXG,claimed=3DFalse,addr=3D1.0.1.2,second_addr=3D=
1.0.2.2,use_dpdk=3D1'.
        RPC address: 169.254.2.13</div>
      <div>[DEBUG] [MPMD] MPM reports device info:
addr=3D1.0.1.2,claimed=3DTrue,connection=3Dremote,dboard_0_pid=3D336,dboa=
rd_0_serial=3D31732ED,dboard_1_pid=3D336,dboard_1_serial=3D31732F6,descri=
ption=3DN300-Series
Device,eeprom_version=3D2,fourth_addr=3D169.254.2.13,fpga=3DXG,fpga_versi=
on=3D8.0,fpga_version_hash=3D8daa80c.clean,fs_version=3D20220419212711,me=
nder_artifact=3Dv4.2.0.0_n3xx,mpm_sw_version=3D4.2.0.0-g46a70d85,mpm_vers=
ion=3D4.2,name=3Dni-n3xx-3176E00,pid=3D16962,product=3Dn310,rev=3D6,rpc_c=
onnection=3Dremote,second_addr=3D1.0.2.2,serial=3D3176E00,type=3Dn3xx</di=
v>
      <div>[DEBUG] [MPMD] Found 8 motherboard sensors.</div>
      <div>[DEBUG] [MPMD] Initializing mboard 0</div>
      <div>[INFO] [MPM.PeriphManager] init() called with device args
`fpga=3DXG,mgmt_addr=3D169.254.2.13,name=3Dni-n3xx-3176E00,product=3Dn310=
,second_addr=3D1.0.2.2,use_dpdk=3D1,clock_source=3Dinternal,time_source=3D=
internal'.</div>
      <div>[DEBUG] [MPMD::MB_IFACE] Adding clock iface `radio_clk`,
        frequency: 125 MHz, mutable: Yes</div>
      <div>[DEBUG] [MPMD::MB_IFACE] Adding clock iface `bus_clk`,
        frequency: 200 MHz, mutable: No</div>
      <div>[ERROR] [DPDK] Could not find route to destination address
        1.0.1.2</div>
      <div>[WARNING] [MPMD::XPORT::UDP] Error during MTU discovery on
        address 1.0.1.2: RuntimeError: DPDK: Could not find route to
        destination address 1.0.1.2</div>
      <div>[ERROR] [DPDK] Could not find route to destination address
        1.0.2.2</div>
      <div>[WARNING] [MPMD::XPORT::UDP] Error during MTU discovery on
        address 1.0.2.2: RuntimeError: DPDK: Could not find route to
        destination address 1.0.2.2</div>
      <div>[ERROR] [MPMD::MB_IFACE] No CHDR connection available!</div>
      <div>Error: RuntimeError: No CHDR connection available!<br>
      </div>
      <div><br>
      </div>
      <div>I use the uhd.conf as follows:<br>
      </div>
      <div><br>
      </div>
      <div>
        <div>[use_dpdk=3D1]</div>
        <div>dpdk-mtu=3D9000</div>
        <div>dpdk-driver=3D/usr/lib/x86_64-linux-gnu/dpdk/pmds-20.0/dpdk/=
</div>
        <div>dpdk-corelist=3D0,9,10</div>
        <div>dpdk-num-mbufs=3D4096</div>
        <div>dpdk-mbufs-cache-size=3D315</div>
        <div><br>
        </div>
        <div>;ens2f0</div>
        <div>[dpdk-mac=3D90:e2:ba:f1:38:1c]</div>
        <div>dpdk-lcore =3D 9</div>
        <div>dpdk-ipv4 =3D 1.0.2.1/24</div>
        <div><br>
        </div>
        <div>;ens2f1</div>
        <div>[dpdk-mac=3D90:e2:ba:f1:38:1d]</div>
        <div>dpdk-lcore =3D 10</div>
        <div>dpdk-ipv4 =3D 1.0.1.1/24=E2=80=8B<br>
        </div>
        <br>
      </div>
      <div><br>
      </div>
      <div>Any help would be highly appreciated!<br>
      </div>
      <div><br>
      </div>
      <div>Best regards,<br>
      </div>
      <div><br>
      </div>
      <div>Anton=C2=A0<br>
      </div>
      <div><br>
      </div>
      <div><br>
      </div>
      <p><br>
      </p>
      <p><br>
      </p>
    </blockquote>
    KInd of a weird address range to use, but my guess is that your USRP
    device isn't programmed to those addresses.<br>
    <br>
    <br>
  </body>
</html>

--------------wi0m0hcFaOyd8mS5XPwcdX0G--

--===============0777202365307741753==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0777202365307741753==--
