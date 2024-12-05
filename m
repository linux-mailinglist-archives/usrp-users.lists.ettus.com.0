Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E299C9E5D00
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 18:23:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3AAAF38587A
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 12:23:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733419428; bh=AXxJ00qqVq9yTxxXF7pFosiQCvQVRs6iDWR/+S4tscw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ADfYFa4q877Mk8RvQOCoxYL+bNyp1mED3G7Jrlm5LnptweO0Sa19lO6uwKFCk8jwF
	 fPU+lRxQVkMEZ7YXzw0zwl4okij2bx3CMzzjEUyXXUdTe7cEhhi27Xfry695Xpd6Jj
	 UpfsRL9tzUM8u0+SGGcdl4SKY7cya/kNaYdP4DEbFCbA089c3+fs6iwv+w+c6512vx
	 lPdCfQzLJD9Jr8KTuGusvmEtpiW7P1YFE7DRymcVfqpTNUN8wx3///V+K33xaGJzj8
	 qNAKhs98pNelCoGj2VuuyoiVELHITHwjrEjbn9M1YPFtHZYjGQYtXA4AsrREWZXwJ2
	 gBftWpjMfdwrA==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 67F213851C6
	for <usrp-users@lists.ettus.com>; Thu,  5 Dec 2024 12:23:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EMLl7k+D";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7b673aacf13so178272585a.0
        for <usrp-users@lists.ettus.com>; Thu, 05 Dec 2024 09:23:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733419386; x=1734024186; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vf0cMG9pi/bcmRjgQOw1ljiMRObZ+RVTpoZJ4JNdnEA=;
        b=EMLl7k+D4Ke+6q5UfNeTNvTK7F8XdBFHSoN4oAZGu1UkPHWFbTHr0BmX6FGHN+LsAB
         Y9iCQh2j/aUTcnOknXc6n8C/iz4kpDS/030IDT7M7KASBU24I6i0W5YkF6Ir7atZBmCi
         kVWyKn+lxKzw8xGBtCy89gmLSgK+yNLobYpcVaget/2tawfXMc2BfcQ7r74/ZEXWd8H3
         oj8n79HJPTb9sxfpkIvtnFhJKM/Iex5NUbdlqOUmf1K0huePiyc3BLTM3MUzVH03GcTl
         3V4k0IBX8vRCJ608FaEg8GKh9LbX5idUldbpTV9b6x3sMyOvUvKfcPhkDF3vDvX+HlES
         GMQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733419386; x=1734024186;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Vf0cMG9pi/bcmRjgQOw1ljiMRObZ+RVTpoZJ4JNdnEA=;
        b=Qip/P3Fw6HrsBmzEHTO0hmxVVAHy5GmObVEgq0x/lzxHeTTz41i4PPdcoZf71KRzTh
         U/3Q0Hfv3iezmgHKvTjRWfp+4WxzIO4yj6MpsF5VCzxdJdIfd/3+psZZZYh5TbFm0aO2
         hs0bRy7L/OCIsZOycdFjjZOi7UtMaCrq9gR+AkcxXVUnALXE+UDNeS0yrxGK7TwPnWKK
         YxbXF4E9bGczPSC7aXc5Hw2ZvqMCsjoOIHJkKUgEk7b45hEo2/jVfRO98+kw7ac9zYnj
         EKhS0ypCN3d7yisi+/ddLtRVVJgq9N0L8cDw5xq7px55FuVlymbaXKDYRivF3K6TFmWf
         5C7Q==
X-Gm-Message-State: AOJu0YwYiw9Csa1K0Lv4+XgdMnFUTvDJZO4dTnpF/GFBozpD4UW/0AQQ
	aHpkbOeihlb0WT5MOkNX0yYkbOLyDagyRhCH55U47ePFys7QBbKKJn4bHQ==
X-Gm-Gg: ASbGnct2fWr1V387MmiURbixbJ0TMfPHM6XIaR+S3awfOWZi+oXRA700gXqce777c9F
	rvhzTFK0/2Kmv8wkdKoWowHXV2hBX+OWRqVJmlpgBz5DRFCPp+DXiiWUBxFXIC6eEGRB7RllIDn
	9mJW376nsKvu5EmJzdVPsqUp8Md8SDcGmOE6y9TIC1Mh/WSD4PfNpPpa3e0fmMOcLEUE71h5+Ik
	+wzAh2pfeieJ2bAx/VZ+9dJ9a+iwqkxp4tqlXTHYmXqj+7BYxgy1oxCl2PciDFMFmmnMjCXArmY
	s4DP7/bBoT8jReUuhLTRGpOOuUTnclidLKSSz8qWNAdnk93F
X-Google-Smtp-Source: AGHT+IGIXJ07hSAcPUmWe4SGdWRzNRnI4z0/byDbcH0ZIs1DA3rI5ImJpbjvs9zNc4sAuz44nBXsMQ==
X-Received: by 2002:a05:620a:4622:b0:7b1:48d1:574d with SMTP id af79cd13be357-7b6bc911aa5mr18435985a.8.1733419386385;
        Thu, 05 Dec 2024 09:23:06 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b6b5a9e61fsm78854385a.105.2024.12.05.09.23.05
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 09:23:05 -0800 (PST)
Message-ID: <c6884d1d-c5d8-4e18-a65c-238dd84662b2@gmail.com>
Date: Thu, 5 Dec 2024 12:23:05 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <n30WHF9HF9lelKnoGIwRyX8e2xge2XIMrvSmxEyxS8@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <n30WHF9HF9lelKnoGIwRyX8e2xge2XIMrvSmxEyxS8@lists.ettus.com>
Message-ID-Hash: N3MR3UPAL6DGRGAOK232QSL4SWSXILN5
X-Message-ID-Hash: N3MR3UPAL6DGRGAOK232QSL4SWSXILN5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Benchmarking x410 with Mellanox with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N3MR3UPAL6DGRGAOK232QSL4SWSXILN5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5886815897014708335=="

This is a multi-part message in MIME format.
--===============5886815897014708335==
Content-Type: multipart/alternative;
 boundary="------------7IdyQA3EMiwCIaFPJdQlYnQ3"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7IdyQA3EMiwCIaFPJdQlYnQ3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/12/2024 11:44, houshang.azizi@accelleran.com wrote:
>
> Hello
>
> Have you managed to fix this?
>
> I have a similar issue as you can see below.
>
> Thanks
>
Well, again, what happens when you do the simple benchmark_rate test 
*WITHOUT* DPDK involved?


>
> |ad@bm-super11-intel:~/accelleran$ sudo dpdk-devbind.py --status|
>
> |Network devices using DPDK-compatible driver|
>
> |============================================|
>
> |0000:43:00.1 'Ethernet Controller X710 for 10GbE SFP+ 1572' 
> drv=vfio-pci unused=i40e|
>
> |0000:43:00.2 'Ethernet Controller X710 for 10GbE SFP+ 1572' 
> drv=vfio-pci unused=i40e|
>
> |Network devices using kernel driver|
>
> |===================================|
>
> |0000:04:00.0 'Ethernet Controller 10G X550T 1563' if=eno1 drv=ixgbe 
> unused=vfio-pci *Active*|
>
> |0000:04:00.1 'Ethernet Controller 10G X550T 1563' if=eno2 drv=ixgbe 
> unused=vfio-pci |
>
> |0000:43:00.0 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=ens1f0 
> drv=i40e unused=vfio-pci |
>
> |0000:43:00.3 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=ens1f3 
> drv=i40e unused=vfio-pci *Active*|
>
> |0000:70:00.0 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=ens2f0 
> drv=i40e unused=vfio-pci |
>
> |0000:70:00.1 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=ens2f1 
> drv=i40e unused=vfio-pci |
>
> |Other Baseband devices|
>
> |======================|
>
> |0000:f7:00.0 'Device 57c0' unused=vfio-pci|
>
> |No 'Crypto' devices detected|
>
> |============================|
>
> |DMA devices using kernel driver|
>
> |===============================|
>
> |0000:f6:01.0 'Device 0b25' drv=idxd unused=vfio-pci |
>
> |No 'Eventdev' devices detected|
>
> |==============================|
>
> |No 'Mempool' devices detected|
>
> |=============================|
>
> |No 'Compress' devices detected|
>
> |==============================|
>
> |No 'Misc (rawdev)' devices detected|
>
> |===================================|
>
> |No 'Regex' devices detected|
>
> |===========================|
>
> |No 'ML' devices detected|
>
> |========================|
>
> |ad@bm-super11-intel:~/accelleran$ |
>
> |ad@bm-super11-intel:~/accelleran$ uhd_find_devices|
>
> |[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_23.11; 
> UHD_4.7.0.HEAD-0-ga5ed1872|
>
> |--------------------------------------------------|
>
> |-- UHD Device 0|
>
> |--------------------------------------------------|
>
> |Device Address:|
>
> |serial: 32000F1|
>
> |addr: 10.10.0.100|
>
> |claimed: False|
>
> |fpga: XG|
>
> |mgmt_addr: 10.10.0.100|
>
> |name: ni-n3xx-32000F1|
>
> |product: n310|
>
> |type: n3xx|
>
> |ad@bm-super11-intel:~/accelleran$ sudo 
> /usr/local/lib/uhd/examples/benchmark_rate --rx_rate 125e6 --rx_subdev 
> "A:0 B:0" --rx_channels 0,1 --tx_rate 125e6 --tx_subdev "A:0 B:0" 
> --tx_channels 0,1 --args 
> "addr=10.10.1.100,second_addr=10.10.2.100,mgmt_addr=10.10.0.100,master_clock_rate=125e6,use_dpdk=1"|
>
> |[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_23.11; 
> UHD_4.7.0.HEAD-0-ga5ed1872|
>
> |EAL: Detected CPU lcores: 64|
>
> |EAL: Detected NUMA nodes: 1|
>
> |EAL: Detected shared linkage of DPDK|
>
> |EAL: Multi-process socket /var/run/dpdk/rte/mp_socket|
>
> |EAL: Selected IOVA mode 'VA'|
>
> |EAL: VFIO support initialized|
>
> |EAL: Using IOMMU type 1 (Type 1)|
>
> |EAL: Ignore mapping IO port bar(1)|
>
> |EAL: Ignore mapping IO port bar(4)|
>
> |EAL: Probe PCI driver: net_i40e (8086:1572) device: 0000:43:00.1 
> (socket 0)|
>
> |EAL: Ignore mapping IO port bar(1)|
>
> |EAL: Ignore mapping IO port bar(4)|
>
> |EAL: Probe PCI driver: net_i40e (8086:1572) device: 0000:43:00.2 
> (socket 0)|
>
> |TELEMETRY: No legacy callbacks, legacy socket not created|
>
> |i40e_alloc_rx_queue_mbufs(): Failed to allocate mbuf for RX|
>
> |i40e_dev_rx_queue_start(): Failed to allocate RX queue mbuf|
>
> |[ERROR] [DPDK] Port 1: Could not start device|
>
> |EAL: FATAL: already called initialization.|
>
> |EAL: already called initialization.|
>
> |[00:00:00.000306] Creating the usrp device with: 
> addr=10.10.1.100,second_addr=10.10.2.100,mgmt_addr=10.10.0.100,master_clock_rate=125e6,use_dpdk=1...|
>
> |EAL: FATAL: already called initialization.|
>
> |EAL: already called initialization.|
>
> |[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK: 
> Failure to start device|
>
> |[ERROR] [DPDK] Error with EAL initialization|
>
> |[ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL 
> initialization|
>
> |[ERROR] [DPDK] Error with EAL initialization|
>
> |[ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL 
> initialization|
>
> |EAL: FATAL: already called initialization.|
>
> |EAL: already called initialization.|
>
> |Error: LookupError: KeyError: No devices found for ----->|
>
> |Device Address:|
>
> |addr: 10.10.1.100|
>
> |second_addr: 10.10.2.100|
>
> |mgmt_addr: 10.10.0.100|
>
> |master_clock_rate: 125e6|
>
> |use_dpdk: 1|
>
> |[ERROR] [DPDK] Error with EAL initialization|
>
> |[ERROR] [X300] X300 Network discovery error RuntimeError: Error with 
> EAL initialization|
>
> |Segmentation fault|
>
> |ad@bm-super11-intel:~/accelleran$|
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------7IdyQA3EMiwCIaFPJdQlYnQ3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 05/12/2024 11:44,
      <a class="moz-txt-link-abbreviated" href="mailto:houshang.azizi@accelleran.com">houshang.azizi@accelleran.com</a> wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:n30WHF9HF9lelKnoGIwRyX8e2xge2XIMrvSmxEyxS8@lists.ettus.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p>Hello</p>
      <p>Have you managed to fix this?</p>
      <p>I have a similar issue as you can see below.</p>
      <p>Thanks</p>
    </blockquote>
    Well, again, what happens when you do the simple benchmark_rate test
    *WITHOUT* DPDK involved?<br>
    <br>
    <br>
    <blockquote type="cite"
cite="mid:n30WHF9HF9lelKnoGIwRyX8e2xge2XIMrvSmxEyxS8@lists.ettus.com">
      <p><br>
      </p>
      <p><code>ad@bm-super11-intel:~/accelleran$ sudo dpdk-devbind.py
          --status</code></p>
      <p><code>Network devices using DPDK-compatible driver</code></p>
      <p><code>============================================</code></p>
      <p><code>0000:43:00.1 'Ethernet Controller X710 for 10GbE SFP+
          1572' drv=vfio-pci unused=i40e</code></p>
      <p><code>0000:43:00.2 'Ethernet Controller X710 for 10GbE SFP+
          1572' drv=vfio-pci unused=i40e</code></p>
      <p><code>Network devices using kernel driver</code></p>
      <p><code>===================================</code></p>
      <p><code>0000:04:00.0 'Ethernet Controller 10G X550T 1563' if=eno1
          drv=ixgbe unused=vfio-pci *Active*</code></p>
      <p><code>0000:04:00.1 'Ethernet Controller 10G X550T 1563' if=eno2
          drv=ixgbe unused=vfio-pci </code></p>
      <p><code>0000:43:00.0 'Ethernet Controller X710 for 10GbE SFP+
          1572' if=ens1f0 drv=i40e unused=vfio-pci </code></p>
      <p><code>0000:43:00.3 'Ethernet Controller X710 for 10GbE SFP+
          1572' if=ens1f3 drv=i40e unused=vfio-pci *Active*</code></p>
      <p><code>0000:70:00.0 'Ethernet Controller X710 for 10GbE SFP+
          1572' if=ens2f0 drv=i40e unused=vfio-pci </code></p>
      <p><code>0000:70:00.1 'Ethernet Controller X710 for 10GbE SFP+
          1572' if=ens2f1 drv=i40e unused=vfio-pci </code></p>
      <p><code>Other Baseband devices</code></p>
      <p><code>======================</code></p>
      <p><code>0000:f7:00.0 'Device 57c0' unused=vfio-pci</code></p>
      <p><code>No 'Crypto' devices detected</code></p>
      <p><code>============================</code></p>
      <p><code>DMA devices using kernel driver</code></p>
      <p><code>===============================</code></p>
      <p><code>0000:f6:01.0 'Device 0b25' drv=idxd unused=vfio-pci </code></p>
      <p><code>No 'Eventdev' devices detected</code></p>
      <p><code>==============================</code></p>
      <p><code>No 'Mempool' devices detected</code></p>
      <p><code>=============================</code></p>
      <p><code>No 'Compress' devices detected</code></p>
      <p><code>==============================</code></p>
      <p><code>No 'Misc (rawdev)' devices detected</code></p>
      <p><code>===================================</code></p>
      <p><code>No 'Regex' devices detected</code></p>
      <p><code>===========================</code></p>
      <p><code>No 'ML' devices detected</code></p>
      <p><code>========================</code></p>
      <p><code>ad@bm-super11-intel:~/accelleran$ </code></p>
      <p><code>ad@bm-super11-intel:~/accelleran$ uhd_find_devices</code></p>
      <p><code>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
          DPDK_23.11; UHD_4.7.0.HEAD-0-ga5ed1872</code></p>
      <p><code>--------------------------------------------------</code></p>
      <p><code>-- UHD Device 0</code></p>
      <p><code>--------------------------------------------------</code></p>
      <p><code>Device Address:</code></p>
      <p><code> serial: 32000F1</code></p>
      <p><code> addr: 10.10.0.100</code></p>
      <p><code> claimed: False</code></p>
      <p><code> fpga: XG</code></p>
      <p><code> mgmt_addr: 10.10.0.100</code></p>
      <p><code> name: ni-n3xx-32000F1</code></p>
      <p><code> product: n310</code></p>
      <p><code> type: n3xx</code></p>
      <p><code>ad@bm-super11-intel:~/accelleran$ sudo
          /usr/local/lib/uhd/examples/benchmark_rate --rx_rate 125e6
          --rx_subdev "A:0 B:0" --rx_channels 0,1 --tx_rate 125e6
          --tx_subdev "A:0 B:0" --tx_channels 0,1 --args
"addr=10.10.1.100,second_addr=10.10.2.100,mgmt_addr=10.10.0.100,master_clock_rate=125e6,use_dpdk=1"</code></p>
      <p><code>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
          DPDK_23.11; UHD_4.7.0.HEAD-0-ga5ed1872</code></p>
      <p><code>EAL: Detected CPU lcores: 64</code></p>
      <p><code>EAL: Detected NUMA nodes: 1</code></p>
      <p><code>EAL: Detected shared linkage of DPDK</code></p>
      <p><code>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket</code></p>
      <p><code>EAL: Selected IOVA mode 'VA'</code></p>
      <p><code>EAL: VFIO support initialized</code></p>
      <p><code>EAL: Using IOMMU type 1 (Type 1)</code></p>
      <p><code>EAL: Ignore mapping IO port bar(1)</code></p>
      <p><code>EAL: Ignore mapping IO port bar(4)</code></p>
      <p><code>EAL: Probe PCI driver: net_i40e (8086:1572) device:
          0000:43:00.1 (socket 0)</code></p>
      <p><code>EAL: Ignore mapping IO port bar(1)</code></p>
      <p><code>EAL: Ignore mapping IO port bar(4)</code></p>
      <p><code>EAL: Probe PCI driver: net_i40e (8086:1572) device:
          0000:43:00.2 (socket 0)</code></p>
      <p><code>TELEMETRY: No legacy callbacks, legacy socket not created</code></p>
      <p><code>i40e_alloc_rx_queue_mbufs(): Failed to allocate mbuf for
          RX</code></p>
      <p><code>i40e_dev_rx_queue_start(): Failed to allocate RX queue
          mbuf</code></p>
      <p><code>[ERROR] [DPDK] Port 1: Could not start device</code></p>
      <p><code>EAL: FATAL: already called initialization.</code></p>
      <p><code>EAL: already called initialization.</code></p>
      <p><code>[00:00:00.000306] Creating the usrp device with:
addr=10.10.1.100,second_addr=10.10.2.100,mgmt_addr=10.10.0.100,master_clock_rate=125e6,use_dpdk=1...</code></p>
      <p><code>EAL: FATAL: already called initialization.</code></p>
      <p><code>EAL: already called initialization.</code></p>
      <p><code>[ERROR] [X300] X300 Network discovery error RuntimeError:
          DPDK: Failure to start device</code></p>
      <p><code>[ERROR] [DPDK] Error with EAL initialization</code></p>
      <p><code>[ERROR] [UHD] Device discovery error: RuntimeError: Error
          with EAL initialization</code></p>
      <p><code>[ERROR] [DPDK] Error with EAL initialization</code></p>
      <p><code>[ERROR] [UHD] Device discovery error: RuntimeError: Error
          with EAL initialization</code></p>
      <p><code>EAL: FATAL: already called initialization.</code></p>
      <p><code>EAL: already called initialization.</code></p>
      <p><code>Error: LookupError: KeyError: No devices found for
          -----&gt;</code></p>
      <p><code>Device Address:</code></p>
      <p><code> addr: 10.10.1.100</code></p>
      <p><code> second_addr: 10.10.2.100</code></p>
      <p><code> mgmt_addr: 10.10.0.100</code></p>
      <p><code> master_clock_rate: 125e6</code></p>
      <p><code> use_dpdk: 1</code></p>
      <p><code>[ERROR] [DPDK] Error with EAL initialization</code></p>
      <p><code>[ERROR] [X300] X300 Network discovery error RuntimeError:
          Error with EAL initialization</code></p>
      <p><code>Segmentation fault</code></p>
      <p><code>ad@bm-super11-intel:~/accelleran$</code></p>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------7IdyQA3EMiwCIaFPJdQlYnQ3--

--===============5886815897014708335==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5886815897014708335==--
