Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FF69E428F
	for <lists+usrp-users@lfdr.de>; Wed,  4 Dec 2024 18:57:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E9E37385F01
	for <lists+usrp-users@lfdr.de>; Wed,  4 Dec 2024 12:57:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733335032; bh=5JQgbYiQtqXtxbYm3yjGSlQgj6h14UYDNw1dEzTBYzU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=wxvbkSuw9ubf5mlaNeJOxZvs9E1a5M9Yjz6Yy3Vav1ewB+58Kc6Wf+d5DJNRSrzoz
	 LMOkDq8L0JE6gCSCmUTSMlpEOAGMmx6mnqZzMhv7ItwIETMx4HtK6FY1JFTK/nGR7A
	 vJvJaK+m7ePph6mQT3GZW6rL6bE/UJZudJ0fWxzheGxlUBb57KuviAeYWmFhgo2m3z
	 ZABQuCYqfT1R5r5ftb5AYZdRclfgybuty8e+JOK1W4Ysp85eLgXlDc1CrTgOuBfa5h
	 bsMtSCUIj/OCNP0YSWagNQNHAcJLFvKnDqjWAhqdydHdY5OYf3nZSB8xz9ZAkmsXWl
	 j+iB8FIx10bBQ==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 03C2E385E0E
	for <usrp-users@lists.ettus.com>; Wed,  4 Dec 2024 12:56:23 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OjM8yo1K";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-46686a258f7so64358921cf.1
        for <usrp-users@lists.ettus.com>; Wed, 04 Dec 2024 09:56:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733334983; x=1733939783; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=miW+/uPLYET4r+72QjVSltzdnWXXJhbyC/HAzgH1aDA=;
        b=OjM8yo1KgZz9FjT94gGU/tqyL4Y1an8JKkJQQjO2JJgIxdSILWXBRezkgFZuAziOVY
         gnZmkfbP7E11zOnf5FHgFmkpgW76AzlAQWX7mK15jR1wz0XsY8WISxQ80x3MhuuO2gWo
         QFLnqlSGXz8tB7EUD+QQYBxMXZof4j/eV2GmRhcfTOoj+0GltP85N+CGht6XJ9JrRChd
         3IZXJ4WSfsKz4ohwkMCn1JbobHHtxJpcO7pN8uf574x+ET6PtNVcBSlLhGFnA5SNXyP7
         ZcMbsWHGHjA51oX3glF1WLn03OTOTCfgQ7ym2Qi+hVuu8oTOLxleCIUs5CShAwyE6foX
         X0tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733334983; x=1733939783;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=miW+/uPLYET4r+72QjVSltzdnWXXJhbyC/HAzgH1aDA=;
        b=bw3YaeEC0yzk455Mj/DHTDCIE8w3PYJDYhfmYaPa4i0Viun2IRlFjUm0h0M7FNwS7T
         AwMDNocqL+SrGNV+xAB1Om1GykRNCEoe8lFec1/zi0aOqkNILo2dfM3gyESBoXQwI2wb
         dtg3i5LieeMD3SwnxaGtwx5H3FiXF95KQWZAJFhe5VfswzV8ojnoDgy/L4nN8G0vL271
         b+ZDtU4rs+697x37ZUwvq3xdsstu7tgJ3YZ8tBCWqdNML6jDfUO1TmlfTE49Bp4WgyPP
         zMn5UffOLGVW69SFwKLWlixqHL9IJP9CwaMoKDSpQYQd9B+nX3LpTUTXmFHQVrGpZznZ
         G4IQ==
X-Gm-Message-State: AOJu0YzbGJm90srljXFginPyerdbUt+XF1yM6tE9ETW1hS+Z23HGyGPZ
	9svHFDfcOTQh61MokKBJGovpzuq+cWk3wz40lO6f1H2FK1LOOn9YgzytGQ==
X-Gm-Gg: ASbGncstiLy6/tnlj5dPqS+1c5hMyUBtZLaOaMJTUD1DcNZ4/V3jIcf2mLyn3ElH7IK
	x/UlD3FvC+SDsmc7g+x+1UhgVMR0Em+n5ZHatHmPrNSBVGnc3C/ffCBjlm0cer98mUhHMNxznk5
	5BtPqlnDQRcDU5UMqFlN+POrCQ9oO/7qCnvUj60NzcK5TT/ryp3FdsiWZXUCbJLd1cuXJ5HnW6n
	pwIvsUVk8WGsuK85z0+lDo8vEblzeybZw85PxZDbS5aigLqk3sn+Sh9RcQC
X-Google-Smtp-Source: AGHT+IFhqlTwcrLxJwBqdVyCP5367SLq26Rc3gnJDY9UxJxTi6W2QChGVIExz1y3iGbBYUZmEP8aEg==
X-Received: by 2002:a05:622a:1892:b0:466:82b9:3ff2 with SMTP id d75a77b69052e-4670c3db880mr97056011cf.45.1733334983032;
        Wed, 04 Dec 2024 09:56:23 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-466c3fa58fesm76326501cf.0.2024.12.04.09.56.22
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Dec 2024 09:56:22 -0800 (PST)
Message-ID: <8ec56e2d-8822-4e47-be35-dca8e5eb1722@gmail.com>
Date: Wed, 4 Dec 2024 12:56:11 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <zmtVDWFOKPj8KJezKqxQFJbDDAMZwPamlu4H0iIo@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <zmtVDWFOKPj8KJezKqxQFJbDDAMZwPamlu4H0iIo@lists.ettus.com>
Message-ID-Hash: 65SGE5LROY5C6OZA45KYNYNOPA66B57W
X-Message-ID-Hash: 65SGE5LROY5C6OZA45KYNYNOPA66B57W
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [ERROR] [DPDK] Could not find route to destination address 192.168.10.2
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/65SGE5LROY5C6OZA45KYNYNOPA66B57W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9128405664497252751=="

This is a multi-part message in MIME format.
--===============9128405664497252751==
Content-Type: multipart/alternative;
 boundary="------------T09WLTecdYhKz5l0smZdli5e"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------T09WLTecdYhKz5l0smZdli5e
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/12/2024 06:11, houshang.azizi@accelleran.com wrote:
>
> I tried with |sudo su| as well (not working):
>
> |root@bm-super11-intel:/home/ad# cat /root/.config/uhd.conf|
>
> |[use_dpdk=3D1]|
>
> |dpdk_mtu=3D9000|
>
> |dpdk_driver=3D/usr/lib/x86_64-linux-gnu/dpdk/pmds-22.0/|
>
> |dpdk_corelist=3D2,3,4|
>
> |dpdk_num_mbufs=3D4095|
>
> |dpdk_mbuf_cache_size=3D315|
>
> |[dpdk_mac=3D3c:ec:ef:af:7b:8d]|
>
> |dpdk_lcore =3D 3|
>
> |dpdk_ipv4 =3D 10.10.1.1/24|
>
> |dpdk_num_desc =3D 4096|
>
> |[dpdk_mac=3D3c:ec:ef:af:7b:8e]|
>
> |dpdk_lcore =3D 4|
>
> |dpdk_ipv4 =3D 10.10.2.1/24|
>
> |dpdk_num_desc =3D 4096|
>
> |root@bm-super11-intel:/home/ad#=20
> /usr/local/lib/uhd/examples/benchmark_rate --rx_rate 125e6 --rx_subdev=20
> "A:0 B:0" --rx_channels 0,1 --tx_rate 125e6 --tx_subdev "A:0 B:0"=20
> --tx_channels 0,1 --args=20
> "addr=3D10.10.1.100,second_addr=3D10.10.2.100,mgmt_addr=3D10.10.0.100,m=
aster_clock_rate=3D125e6,use_dpdk=3D1"|
>
> |[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;=20
> UHD_4.7.0.0-0-unknown|
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
> |EAL: No available 1048576 kB hugepages reported|
>
> |EAL: VFIO support initialized|
>
> |EAL: Using IOMMU type 1 (Type 1)|
>
> |EAL: Ignore mapping IO port bar(1)|
>
> |EAL: Ignore mapping IO port bar(4)|
>
> |EAL: Probe PCI driver: net_i40e (8086:1572) device: 0000:43:00.1=20
> (socket 0)|
>
> |EAL: Ignore mapping IO port bar(1)|
>
> |EAL: Ignore mapping IO port bar(4)|
>
> |EAL: Probe PCI driver: net_i40e (8086:1572) device: 0000:43:00.2=20
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
> |[00:00:00.000208] Creating the usrp device with:=20
> addr=3D10.10.1.100,second_addr=3D10.10.2.100,mgmt_addr=3D10.10.0.100,ma=
ster_clock_rate=3D125e6,use_dpdk=3D1...|
>
> |EAL: FATAL: already called initialization.|
>
> |EAL: already called initialization.|
>
> |[ERROR] [X300] X300 Network discovery error RuntimeError: DPDK:=20
> Failure to start device|
>
> |[ERROR] [DPDK] Error with EAL initialization|
>
> |[ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL=20
> initialization|
>
> |[ERROR] [DPDK] Error with EAL initialization|
>
> |[ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL=20
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
> |[ERROR] [X300] X300 Network discovery error RuntimeError: Error with=20
> EAL initialization|
>
> root@bm-super11-intel:/home/ad#
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
IF you do all of that, but at a lower rate, and NOT using DPDK, what=20
happens?

Have you confirmed the actual IP addresses of your network interfaces?=C2=
=A0=20
Have you confirmed that you haven't swapped
 =C2=A0 cables?

Can you ping the individual IPs of the USRP?


--------------T09WLTecdYhKz5l0smZdli5e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 04/12/2024 06:11,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:houshang.azizi=
@accelleran.com">houshang.azizi@accelleran.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:zmtVDWFOKPj8KJezKqxQFJbDDAMZwPamlu4H0iIo@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I tried with <code>sudo su</code> as well (not working):</p>
      <p><code>root@bm-super11-intel:/home/ad# cat
          /root/.config/uhd.conf</code></p>
      <p><code>[use_dpdk=3D1]</code></p>
      <p><code>dpdk_mtu=3D9000</code></p>
      <p><code>dpdk_driver=3D/usr/lib/x86_64-linux-gnu/dpdk/pmds-22.0/</c=
ode></p>
      <p><code>dpdk_corelist=3D2,3,4</code></p>
      <p><code>dpdk_num_mbufs=3D4095</code></p>
      <p><code>dpdk_mbuf_cache_size=3D315</code></p>
      <p><code>[dpdk_mac=3D3c:ec:ef:af:7b:8d]</code></p>
      <p><code>dpdk_lcore =3D 3</code></p>
      <p><code>dpdk_ipv4 =3D 10.10.1.1/24</code></p>
      <p><code>dpdk_num_desc =3D 4096</code></p>
      <p><code>[dpdk_mac=3D3c:ec:ef:af:7b:8e]</code></p>
      <p><code>dpdk_lcore =3D 4</code></p>
      <p><code>dpdk_ipv4 =3D 10.10.2.1/24</code></p>
      <p><code>dpdk_num_desc =3D 4096</code></p>
      <p><code>root@bm-super11-intel:/home/ad#
          /usr/local/lib/uhd/examples/benchmark_rate --rx_rate 125e6
          --rx_subdev "A:0 B:0" --rx_channels 0,1 --tx_rate 125e6
          --tx_subdev "A:0 B:0" --tx_channels 0,1 --args
"addr=3D10.10.1.100,second_addr=3D10.10.2.100,mgmt_addr=3D10.10.0.100,mas=
ter_clock_rate=3D125e6,use_dpdk=3D1"</code></p>
      <p><code>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
          DPDK_21.11; UHD_4.7.0.0-0-unknown</code></p>
      <p><code>EAL: Detected CPU lcores: 64</code></p>
      <p><code>EAL: Detected NUMA nodes: 1</code></p>
      <p><code>EAL: Detected shared linkage of DPDK</code></p>
      <p><code>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket</cod=
e></p>
      <p><code>EAL: Selected IOVA mode 'VA'</code></p>
      <p><code>EAL: No available 1048576 kB hugepages reported</code></p>
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
      <p><code>TELEMETRY: No legacy callbacks, legacy socket not created<=
/code></p>
      <p><code>i40e_alloc_rx_queue_mbufs(): Failed to allocate mbuf for
          RX</code></p>
      <p><code>i40e_dev_rx_queue_start(): Failed to allocate RX queue
          mbuf</code></p>
      <p><code>[ERROR] [DPDK] Port 1: Could not start device</code></p>
      <p><code>EAL: FATAL: already called initialization.</code></p>
      <p><code>EAL: already called initialization.</code></p>
      <p><code>[00:00:00.000208] Creating the usrp device with:
addr=3D10.10.1.100,second_addr=3D10.10.2.100,mgmt_addr=3D10.10.0.100,mast=
er_clock_rate=3D125e6,use_dpdk=3D1...</code></p>
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
      <p>root@bm-super11-intel:/home/ad#</p>
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
    IF you do all of that, but at a lower rate, and NOT using DPDK, what
    happens?<br>
    <br>
    Have you confirmed the actual IP addresses of your network
    interfaces?=C2=A0 Have you confirmed that you haven't swapped<br>
    =C2=A0 cables?<br>
    <br>
    Can you ping the individual IPs of the USRP?<br>
    <br>
    <br>
  </body>
</html>

--------------T09WLTecdYhKz5l0smZdli5e--

--===============9128405664497252751==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9128405664497252751==--
