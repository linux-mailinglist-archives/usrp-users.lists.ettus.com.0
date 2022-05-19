Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1558252D909
	for <lists+usrp-users@lfdr.de>; Thu, 19 May 2022 17:49:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0AC7F384CAA
	for <lists+usrp-users@lfdr.de>; Thu, 19 May 2022 11:49:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652975350; bh=sOUiFk09XA137W4HAdwa7eAQFwIqMpuZtisOH/QYkvs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=dtvKh5e5d1KOdl/K3/toOCqmrGcak8mo592q6fRfsxDUllZHbWuFOV89TcYZJ4H3u
	 dVSVu09sXHTI1t6hkI3uYgj/ikkKIPusnq19r5e3WuqB4rzv+rXLw7cltLBxizlG9D
	 jfleGclgR1cAy+4EGup7vDuGCton+drakkhtv0jr/5S05U3P28Lx6jxlv4QSnZR3WD
	 JavGQrEjl8OITvHsFEptvIfhXpnWIDaLKmnvcOy9fK8v58X2WtqHTYS+L7uovdctG8
	 9NeFJA66uq6Fv4fnq0fRWjY8h9dU9I/T1JZUnGJ/M/dai1AUsvckC3FHafVfWq10G8
	 SvU1KTi/dFn4g==
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 2AB823846FF
	for <usrp-users@lists.ettus.com>; Thu, 19 May 2022 11:48:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Vcb0QgaY";
	dkim-atps=neutral
Received: by mail-qk1-f176.google.com with SMTP id 135so2488539qkm.4
        for <usrp-users@lists.ettus.com>; Thu, 19 May 2022 08:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=bSJdX5pFPLSaT4aFz1e7Sd03cRKSV+3ZRqk/Gq8xChg=;
        b=Vcb0QgaYHy8A6ghDCp616cfA9OtZBxJOu/wE49ko0KL/VVBsuto50GOqvbYpnph02f
         ygwrcN3vFZa2cmLUc64wh8tiPttvYRE8OhUuaKNMdrxZPjVbYWmd76BcfT6vhVcg6Xov
         Qpnurn4X7S/I5WFU4IMZF4cZKBNLJ4gK9j+K+xMGKojcHSuapoO0q9uEQdDduY55pThL
         s78Sn6P7veHatZNmSjDN2SAcQ4jmZbJHSNbT5zOsoESZZwxtJCoOpKVlk//UPpfbcT5N
         HUGCFYWa/3UnIMCttiGeQZ8sMjI00Gxl9kmQ2D0nAIOdUSDTZtF08VqU7Q73usvBQfag
         eN2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=bSJdX5pFPLSaT4aFz1e7Sd03cRKSV+3ZRqk/Gq8xChg=;
        b=JlxMZDDfyqjCs4Ax+SqHIi94Q5fnzUnivFHSc1eoP4lARwy9SgPR/4vhWDx/xEn7Nr
         i52hAjm1SOn9KdqL9vT5g5vynQW61jpuQjnEJkEMUQJx9l+v1WQ1JvaP8Ydi0dXe6i90
         GADXgz/4jrmxeKhuDP0apKzF88dlst5sAE3j+H56wM2r6qMF0CuGrQlVCfpcnY92Wpnj
         4hBXrBSyN5dNKb4JmoJuVXbClVFC3BC1d0CWzM2iEcEvnV59KfHEpSNqwDam/xHcF19H
         vzsnbt2JBBnocmh5vJLPB9JzhSDML1ffLoRjVcyQMdaP7YXLC34BWkwVuHkBDEt8aE8U
         6zjw==
X-Gm-Message-State: AOAM532hAS/SdKSqI9838GYbHESY1pFFTtAuCBKQ71HmUzM6oxpBVJbG
	LdEVPF2M3ZpeCoXLelM8K4pIVYhQazM=
X-Google-Smtp-Source: ABdhPJy69mhsyBxC10T+hzZYHzAkUPxdXTOnynu65XANQqlAUiiNx75KmdJ3nTNsqHRbzS1uANbrfA==
X-Received: by 2002:a05:620a:25cb:b0:6a1:136:a7ed with SMTP id y11-20020a05620a25cb00b006a10136a7edmr3379243qko.531.1652975289526;
        Thu, 19 May 2022 08:48:09 -0700 (PDT)
Received: from [192.168.2.203] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id i2-20020ac813c2000000b002f39b99f689sm1420190qtj.35.2022.05.19.08.48.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 May 2022 08:48:08 -0700 (PDT)
Message-ID: <8587863b-f429-eab3-c72d-cbb8bb956c43@gmail.com>
Date: Thu, 19 May 2022 11:48:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: "Dobler, Anton" <anton.dobler@unibw.de>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <1652973983841.1075@unibw.de>
 <52ab522a-4a29-c027-8452-7566e50a9522@gmail.com>
 <1652974816863.29088@unibw.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1652974816863.29088@unibw.de>
Message-ID-Hash: CABMAFLP4MJ2RI5WN64QO22E7DVOEB6U
X-Message-ID-Hash: CABMAFLP4MJ2RI5WN64QO22E7DVOEB6U
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD4.2 & DPDK
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CABMAFLP4MJ2RI5WN64QO22E7DVOEB6U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1681901574337244740=="

This is a multi-part message in MIME format.
--===============1681901574337244740==
Content-Type: multipart/alternative;
 boundary="------------MaTDYkyTFhDCxM0B0TOpjjWr"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------MaTDYkyTFhDCxM0B0TOpjjWr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-05-19 11:40, Dobler, Anton wrote:
> Thank you for your answer! I actually considered that and set the=20
> addresses of sfp0 and sfp1 to the respective addresses 1.0.1.2 and=20
> 1.0.2.2=E2=80=A6 the interfaces even come up when I do the benchmark_ra=
te test=20
> so your guess should not be the problem=E2=80=A6
> Do you have a working UHD4.2 with DPDK set up?
> BR,
> Anton
> -----------------------------------------------------------------------=
-
> *Von:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Gesendet:* Donnerstag, 19. Mai 2022 17:33:02
> *An:* Dobler, Anton; usrp-users@lists.ettus.com
> *Betreff:* Re: UHD4.2 & DPDK
> On 2022-05-19 11:26, Dobler, Anton wrote:
>>
>> Dear community,
>>
>>
>> I try to use DPDK together with UHD4.2 but I get the following error:
>>
>>
>> ./benchmark_rate --args "mgmt_addr=3D169.254.2.13,addr=3D1.0.1.2,=20
>> second_addr=3D1.0.2.2,use_dpdk=3D1" --rx_rate=3D125e6
>>
>> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11;=20
>> UHD_4.2.0.0-4-g04d14cd7
>> [DEBUG] [PREFS] Loaded user config file /root/.config/uhd.conf
>> EAL: Detected 16 lcore(s)
>> EAL: Detected 1 NUMA nodes
>> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
>> EAL: Selected IOVA mode 'VA'
>> EAL: No available hugepages reported in hugepages-1048576kB
>> EAL: Probing VFIO support...
>> EAL: VFIO support initialized
>> EAL: PCI device 0000:00:04.0 on NUMA socket 0
>> EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat
>> EAL: PCI device 0000:00:04.1 on NUMA socket 0
>> EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat
>> EAL: PCI device 0000:00:04.2 on NUMA socket 0
>> EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat
>> EAL: PCI device 0000:00:04.3 on NUMA socket 0
>> EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat
>> EAL: PCI device 0000:00:04.4 on NUMA socket 0
>> EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat
>> EAL: PCI device 0000:00:04.5 on NUMA socket 0
>> EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat
>> EAL: PCI device 0000:00:04.6 on NUMA socket 0
>> EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat
>> EAL: PCI device 0000:00:04.7 on NUMA socket 0
>> EAL:=C2=A0 =C2=A0probe driver: 8086:2021 rawdev_ioat
>> EAL: PCI device 0000:00:1f.6 on NUMA socket 0
>> EAL:=C2=A0 =C2=A0probe driver: 8086:15b9 net_e1000_em
>> EAL: PCI device 0000:d5:00.0 on NUMA socket 0
>> EAL:=C2=A0 =C2=A0probe driver: 8086:10fb net_ixgbe
>> EAL:=C2=A0 =C2=A0using IOMMU type 1 (Type 1)
>> EAL: Ignore mapping IO port bar(2)
>> EAL: PCI device 0000:d5:00.1 on NUMA socket 0
>> EAL:=C2=A0 =C2=A0probe driver: 8086:10fb net_ixgbe
>> EAL: Ignore mapping IO port bar(2)
>> [DEBUG] [MPMD] Discovering MPM devices on port 49600
>> [ERROR] [DPDK] Could not find route to destination address 1.0.1.2
>> [ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could=20
>> not find route to destination address 1.0.1.2
>> [00:00:00.000503] Creating the usrp device with:=20
>> mgmt_addr=3D169.254.2.13,addr=3D1.0.1.2, second_addr=3D1.0.2.2,use_dpd=
k=3D1...
>> [DEBUG] [MPMD] Discovering MPM devices on port 49600
>> [ERROR] [DPDK] Could not find route to destination address 1.0.1.2
>> [ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: Could=20
>> not find route to destination address 1.0.1.2
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
>> mgmt_addr=3D169.254.2.13,type=3Dn3xx,product=3Dn310,serial=3D3176E00,n=
ame=3Dni-n3xx-3176E00,fpga=3DXG,claimed=3DFalse,addr=3D1.0.1.2,second_add=
r=3D1.0.2.2,use_dpdk=3D1
>> [DEBUG] [MPMD] Claiming mboard 0
>> [DEBUG] [MPMD] Device args:=20
>> `mgmt_addr=3D169.254.2.13,type=3Dn3xx,product=3Dn310,serial=3D3176E00,=
name=3Dni-n3xx-3176E00,fpga=3DXG,claimed=3DFalse,addr=3D1.0.1.2,second_ad=
dr=3D1.0.2.2,use_dpdk=3D1'.=20
>> RPC address: 169.254.2.13
>> [DEBUG] [MPMD] MPM reports device info:=20
>> addr=3D1.0.1.2,claimed=3DTrue,connection=3Dremote,dboard_0_pid=3D336,d=
board_0_serial=3D31732ED,dboard_1_pid=3D336,dboard_1_serial=3D31732F6,des=
cription=3DN300-Series=20
>> Device,eeprom_version=3D2,fourth_addr=3D169.254.2.13,fpga=3DXG,fpga_ve=
rsion=3D8.0,fpga_version_hash=3D8daa80c.clean,fs_version=3D20220419212711=
,mender_artifact=3Dv4.2.0.0_n3xx,mpm_sw_version=3D4.2.0.0-g46a70d85,mpm_v=
ersion=3D4.2,name=3Dni-n3xx-3176E00,pid=3D16962,product=3Dn310,rev=3D6,rp=
c_connection=3Dremote,second_addr=3D1.0.2.2,serial=3D3176E00,type=3Dn3xx
>> [DEBUG] [MPMD] Found 8 motherboard sensors.
>> [DEBUG] [MPMD] Initializing mboard 0
>> [INFO] [MPM.PeriphManager] init() called with device args=20
>> `fpga=3DXG,mgmt_addr=3D169.254.2.13,name=3Dni-n3xx-3176E00,product=3Dn=
310,second_addr=3D1.0.2.2,use_dpdk=3D1,clock_source=3Dinternal,time_sourc=
e=3Dinternal'.
>> [DEBUG] [MPMD::MB_IFACE] Adding clock iface `radio_clk`, frequency:=20
>> 125 MHz, mutable: Yes
>> [DEBUG] [MPMD::MB_IFACE] Adding clock iface `bus_clk`, frequency: 200=20
>> MHz, mutable: No
>> [ERROR] [DPDK] Could not find route to destination address 1.0.1.2
>> [WARNING] [MPMD::XPORT::UDP] Error during MTU discovery on address=20
>> 1.0.1.2: RuntimeError: DPDK: Could not find route to destination=20
>> address 1.0.1.2
>> [ERROR] [DPDK] Could not find route to destination address 1.0.2.2
>> [WARNING] [MPMD::XPORT::UDP] Error during MTU discovery on address=20
>> 1.0.2.2: RuntimeError: DPDK: Could not find route to destination=20
>> address 1.0.2.2
>> [ERROR] [MPMD::MB_IFACE] No CHDR connection available!
>> Error: RuntimeError: No CHDR connection available!
>>
>> I use the uhd.conf as follows:
>>
>> [use_dpdk=3D1]
>> dpdk-mtu=3D9000
>> dpdk-driver=3D/usr/lib/x86_64-linux-gnu/dpdk/pmds-20.0/dpdk/
>> dpdk-corelist=3D0,9,10
>> dpdk-num-mbufs=3D4096
>> dpdk-mbufs-cache-size=3D315
>>
>> ;ens2f0
>> [dpdk-mac=3D90:e2:ba:f1:38:1c]
>> dpdk-lcore =3D 9
>> dpdk-ipv4 =3D 1.0.2.1/24
>>
>> ;ens2f1
>> [dpdk-mac=3D90:e2:ba:f1:38:1d]
>> dpdk-lcore =3D 10
>> dpdk-ipv4 =3D 1.0.1.1/24=E2=80=8B
>>
>>
>> Any help would be highly appreciated!
>>
>> Best regards,
>>
>> Anton
>>
>>
>>
>>
> KInd of a weird address range to use, but my guess is that your USRP=20
> device isn't programmed to those addresses.
>
>
I don't use DPDK myself--no compatible NICs in my collection.


But DPDK has a "pktgen-dpdk" that may be useful in debugging:

https://pktgen-dpdk.readthedocs.io/en/latest/


--------------MaTDYkyTFhDCxM0B0TOpjjWr
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-05-19 11:40, Dobler, Anton
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:1652974816863.29088@unibw.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      Thank you for your answer! I actually considered that and set the
      addresses of sfp0 and sfp1 to the respective addresses 1.0.1.2 and
      1.0.2.2=E2=80=A6 the interfaces even come up when I do the benchmar=
k_rate
      test so your guess should not be the problem=E2=80=A6<br>
      Do you have a working UHD4.2 with DPDK set up?<br>
      BR,<br>
      Anton
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>Von:</b> Marc=
us
          D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patc=
hvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Gesendet:</b> Donnerstag, 19. Mai 2022 17:33:02<br>
          <b>An:</b> Dobler, Anton; <a class=3D"moz-txt-link-abbreviated"=
 href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
><br>
          <b>Betreff:</b> Re: UHD4.2 &amp; DPDK</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <div class=3D"moz-cite-prefix">On 2022-05-19 11:26, Dobler, Anton
          wrote:<br>
        </div>
        <blockquote type=3D"cite" cite=3D"mid:1652973983841.1075@unibw.de=
">
          <style type=3D"text/css" style=3D"display:none">p { margin-top:=
 0px; margin-bottom: 0px; }</style>
          <p>Dear community,<br>
          </p>
          <p><br>
          </p>
          <p>I try to use DPDK together with UHD4.2 but I get the
            following error:<br>
          </p>
          <p><br>
          </p>
          <div>./benchmark_rate --args
            "mgmt_addr=3D169.254.2.13,addr=3D1.0.1.2,
            second_addr=3D1.0.2.2,use_dpdk=3D1" --rx_rate=3D125e6</div>
          <div><br>
          </div>
          <div>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
            DPDK_19.11; UHD_4.2.0.0-4-g04d14cd7</div>
          <div>[DEBUG] [PREFS] Loaded user config file
            /root/.config/uhd.conf</div>
          <div>EAL: Detected 16 lcore(s)</div>
          <div>EAL: Detected 1 NUMA nodes</div>
          <div>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket</div=
>
          <div>EAL: Selected IOVA mode 'VA'</div>
          <div>EAL: No available hugepages reported in
            hugepages-1048576kB</div>
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
          <div>EAL:=C2=A0 =C2=A0probe driver: 8086:15b9 net_e1000_em</div=
>
          <div>EAL: PCI device 0000:d5:00.0 on NUMA socket 0</div>
          <div>EAL:=C2=A0 =C2=A0probe driver: 8086:10fb net_ixgbe</div>
          <div>EAL:=C2=A0 =C2=A0using IOMMU type 1 (Type 1)</div>
          <div>EAL: Ignore mapping IO port bar(2)</div>
          <div>EAL: PCI device 0000:d5:00.1 on NUMA socket 0</div>
          <div>EAL:=C2=A0 =C2=A0probe driver: 8086:10fb net_ixgbe</div>
          <div>EAL: Ignore mapping IO port bar(2)</div>
          <div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
          <div>[ERROR] [DPDK] Could not find route to destination
            address 1.0.1.2</div>
          <div>[ERROR] [X300] X300 Network discovery error RuntimeError:
            DPDK: Could not find route to destination address 1.0.1.2</di=
v>
          <div>[00:00:00.000503] Creating the usrp device with:
            mgmt_addr=3D169.254.2.13,addr=3D1.0.1.2,
            second_addr=3D1.0.2.2,use_dpdk=3D1...</div>
          <div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
          <div>[ERROR] [DPDK] Could not find route to destination
            address 1.0.1.2</div>
          <div>[ERROR] [X300] X300 Network discovery error RuntimeError:
            DPDK: Could not find route to destination address 1.0.1.2</di=
v>
          <div>[INFO] [MPMD] Initializing 1 device(s) in parallel with
            args:
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
          <div>[ERROR] [DPDK] Could not find route to destination
            address 1.0.1.2</div>
          <div>[WARNING] [MPMD::XPORT::UDP] Error during MTU discovery
            on address 1.0.1.2: RuntimeError: DPDK: Could not find route
            to destination address 1.0.1.2</div>
          <div>[ERROR] [DPDK] Could not find route to destination
            address 1.0.2.2</div>
          <div>[WARNING] [MPMD::XPORT::UDP] Error during MTU discovery
            on address 1.0.2.2: RuntimeError: DPDK: Could not find route
            to destination address 1.0.2.2</div>
          <div>[ERROR] [MPMD::MB_IFACE] No CHDR connection available!</di=
v>
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
            <div>dpdk-driver=3D/usr/lib/x86_64-linux-gnu/dpdk/pmds-20.0/d=
pdk/</div>
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
        KInd of a weird address range to use, but my guess is that your
        USRP device isn't programmed to those addresses.<br>
        <br>
        <br>
      </div>
    </blockquote>
    I don't use DPDK myself--no compatible NICs in my collection.<br>
    <br>
    <br>
    But DPDK has a "pktgen-dpdk" that may be useful in debugging:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://pktgen-dpdk.readth=
edocs.io/en/latest/">https://pktgen-dpdk.readthedocs.io/en/latest/</a><br=
>
    <br>
    <br>
  </body>
</html>

--------------MaTDYkyTFhDCxM0B0TOpjjWr--

--===============1681901574337244740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1681901574337244740==--
