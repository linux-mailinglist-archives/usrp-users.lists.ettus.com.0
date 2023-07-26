Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FB376405C
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jul 2023 22:14:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 55E58384C25
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jul 2023 16:14:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690402455; bh=DAMWqZUsb57XjpPZUo4QRTellkzpWITqMTBfChFm6Ro=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=FdwlKzyByMFPvNToEMuLbvnWbH233oW3ZmUI/zq//zmxayjXQe3zB8TG26M8wSznA
	 DZZqjhqx7GTh8dzdmnotsaJdBbVmpmDnl75V5xPpn5F0Gg7poO0EDuscLzuM9QajWA
	 28A6iq3Ev9jTnx3WcGX0AR9FsrRA91X+Meo5kHRPgwwEDhurGV7fFi9nm3WPMHSIBr
	 3QCXcchRoaDo+8CRrp4h3SlqxntvJ5kgVF6MkTqaPqo63bdJFD/jtL+ggbOCxkK0Qi
	 OTjkzaRAKdsksvJzY+ogzSeMMnwkuRSRs1NewZ5Ai6XkcsdNNvkvH7tZN+pYmuE9Z2
	 ILx4gJYLtrOPg==
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 5EBB5384A98
	for <usrp-users@lists.ettus.com>; Wed, 26 Jul 2023 16:13:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hGebeeCk";
	dkim-atps=neutral
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3a425ef874dso226159b6e.0
        for <usrp-users@lists.ettus.com>; Wed, 26 Jul 2023 13:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690402436; x=1691007236;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R5QWuqLT/XQgGOOhj/rcO0qsXTnP/o7T/AW6i9WF10w=;
        b=hGebeeCk8tgwoUEmpAVe555/t1Zd8MRul+dUoNEiegjhoXDWP7oFP1breHjPv1Lwna
         DCi+mcveG+oH/52tiXxbjU4yoEXIO7sYAtDN/p5kVKDBfSrimI4ucRd73b3QOVenaqjr
         tSEMGtGSbGoV5FC+0w5Nzrtoz40sB7rueOu0uLZJ95iYCKz+8J9ZVUTfVImASbsODeS2
         egi5BqqxTI8tFxpjxO6jmdICg/gv6iESB5sU9oxPDyvHlKif/02LAO+9f3SMhEmPdX6Z
         UUSLy8lEig27vPVVsdhBo6k/djew2dMX3ZsWRX+C/XCow56EYT7BPez1JcUpkir34RLf
         sWBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690402436; x=1691007236;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=R5QWuqLT/XQgGOOhj/rcO0qsXTnP/o7T/AW6i9WF10w=;
        b=YVUx5pFMB/tVWbSYKW9641zFqaj+tLiyX5OP42+K6W1s/WhbdSh626rJZlmZvfvGln
         dbAEc0BRNLza8qBKbNq9DuEaonp3lCZ08Ml3czDwKUyNy+Zx/a4P2q0qeGIn7+TdSeiG
         pojj9VG/+5uhqSW9UnIov49OQFk1J0bXfIWPOCzAzCmS9MWunf9yAskm77r64E2RhP90
         tiqcZYIcbJGalHaxyXKJU8RjKpvoX/dnX0+i9o9AuIwScMFMAoAXs3JLlIji/LOoC8se
         8fxyUo9Ln5vDrhfY5QEyfb3TjhIT8kB5BWj89QURqZEyJ3BRm1pfjTITiEqMbVzh3X7K
         ybKg==
X-Gm-Message-State: ABy/qLbLuFU2jZE6NAO8xdu18u3X62x3mrQro0PjVVEmS1No8Sy9u55x
	gfcx+BbG6wiMoc6B7Hc4l/3T87VwMQU=
X-Google-Smtp-Source: APBJJlFzMt+qR7fOOnR1AMAUqI0Zdi39RapAFoQqHM/bMqgxCJYTNvjaJNMSFKTvEpHjp0D1BLYFVw==
X-Received: by 2002:a05:6808:1287:b0:3a4:298f:b2e0 with SMTP id a7-20020a056808128700b003a4298fb2e0mr790076oiw.26.1690402436204;
        Wed, 26 Jul 2023 13:13:56 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id g30-20020a0caade000000b006365b23b5dfsm5349676qvb.23.2023.07.26.13.13.55
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jul 2023 13:13:55 -0700 (PDT)
Message-ID: <14381bbf-65a9-9e23-9b0c-474fdf83302b@gmail.com>
Date: Wed, 26 Jul 2023 16:13:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <ISUI0SMv0WzNwlprilRmKRzmo6MBHrSx7DAiylwI@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <ISUI0SMv0WzNwlprilRmKRzmo6MBHrSx7DAiylwI@lists.ettus.com>
Message-ID-Hash: WZTPNMR5AWU35RRSZNV4NPHVOCTRNV4W
X-Message-ID-Hash: WZTPNMR5AWU35RRSZNV4NPHVOCTRNV4W
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Which optical transceivers are compatible with X410?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WZTPNMR5AWU35RRSZNV4NPHVOCTRNV4W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2499576685401145217=="

This is a multi-part message in MIME format.
--===============2499576685401145217==
Content-Type: multipart/alternative;
 boundary="------------N0fpmSZSCkvP9zMtCcR2sx1S"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------N0fpmSZSCkvP9zMtCcR2sx1S
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/07/2023 10:27, perper@o2.pl wrote:
>
> There supposed to be some list of adapters that could work with X410 he=
re:
>
> https://kb.ettus.com/X410#100_Gigabit_Ethernet
>
> There is this sentence in =E2=80=9CGuidance on SFP+ Adapters for Fiber=20
> Connectivity on NI Ettus USRP X410=E2=80=9C section:
>
> =E2=80=9CHere are is a list of known-good cables and adapters.=E2=80=9C
>
> But there is no list after all.
>
>
> Best Regards,
> Piotr Krysik
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Maybe your browser isn't rendering anything?

Here is the list from that web-page:


*Recommended 100 Gigabit Ethernet Bundles*

  * Dual 100 Gigabit Ethernet PCIe Interface Kit, NIC and Cable
      o ni.com part number 788216-01
        <https://search.ni.com/nisearch/app/main/p/bot/no/ap/global/lang/=
en/pg/1/q/788216-01/>

*Recommended 100 Gigabit Ethernet Cards*

  * Mellanox/NVIDIA ConnectX-5 EX 100 GbE NIC (MCX516A-CCAT (PCIe Gen3
    x16))
      o NVIDIA=C2=AE MCX516A-CCAT ConnectX-5 EN Adapter Card 100GbE PCIe =
Gen
        3x16
        <https://store.nvidia.com/en-us/networking/store/product/MCX516A-=
CCAT/nvidiamcx516a-ccatconnectx-5enadaptercard100gbe/>
  * Mellanox/NVIDIA ConnectX-5 EX 100 GbE NIC (MCX516A-CDAT (PCIe Gen4
    x16))
      o NVIDIA=C2=AE MCX516A-CCAT ConnectX-5 EN Adapter Card 100GbE PCIe =
Gen
        4x16
        <https://store.nvidia.com/en-us/networking/store/product/MCX516A-=
CDAT/nvidiamcx516a-cdatconnectx-5exenadaptercard100gbe/>

*Recommended 100 Gigabit Ethernet Cables*

  * Mellanox/NVIDIA 3m QSFP28 MCP1600-C003E26N
      o NVIDIA=C2=AE MCP1600-C003E26N DAC Cable Ethernet 100GbE QSFP28 3m
        <https://store.nvidia.com/en-us/networking/store/product/MCP1600-=
C003E26N/nvidiamcp1600-c003e26ndaccableethernet100gbeqsfp283m/>
      o Shorter length variants also recommended

*Recommended Host PC*

  * At least 15 CPU Cores
  * At least 32 GB RAM
  * Ubuntu 20.04 (5.4.0-89-generic kernel)

*Validated Hardware and Software Configuration Examples *

  * Ubuntu 20.04 (5.4.0-89-generic kernel), DPDK 19.11, with Intel(R)
    Core(TM) i9-10920X CPU @ 3.50GHz - 24 CPU - 4.8 GHz Max CPU freq -
    64 GB RAM. Mellanox/NVIDIA ConnectX-5 EX 100 GbE NIC (MCX516A-CCAT
    (PCIe Gen3 x16)). Mellanox/NVIDIA 3m QSFP28 MCP1600-C003E26N cables.

  * Ubuntu 20.04 (5.4.0-89-generic kernel), DPDK 20.11, with AMD Ryzen
    Threadripper 3960X 24-Core Processor - 48 CPU - 3.6 GHz CPU freq -
    64 GB RAM. Mellanox/NVIDIA ConnectX-5 EX 100 GbE NIC (MCX516A-CDAT
    (PCIe Gen4 x16)). Mellanox/NVIDIA 3m QSFP28 MCP1600-C003E26N cables.


--------------N0fpmSZSCkvP9zMtCcR2sx1S
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/07/2023 10:27, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:perper@o2.pl">perper@o2.pl</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:ISUI0SMv0WzNwlprilRmKRzmo6MBHrSx7DAiylwI@lists.ettus.co=
m">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>There supposed to be some list of adapters that could work with
        X410 here:</p>
      <p><a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/=
X410#100_Gigabit_Ethernet">https://kb.ettus.com/X410#100_Gigabit_Ethernet=
</a></p>
      <p>There is this sentence in =E2=80=9CGuidance on SFP+ Adapters for=
 Fiber
        Connectivity on NI Ettus USRP X410=E2=80=9C section:</p>
      <p>=E2=80=9CHere are is a list of known-good cables and adapters.=E2=
=80=9C</p>
      <p>But there is no list after all.</p>
      <p><br>
      </p>
      <p>Best Regards,<br>
        Piotr Krysik</p>
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
    Maybe your browser isn't rendering anything?<br>
    <br>
    Here is the list from that web-page:<br>
    <br>
    <br>
    <p><b>Recommended 100 Gigabit Ethernet Bundles</b>
    </p>
    <ul>
      <li> Dual 100 Gigabit Ethernet PCIe Interface Kit, NIC and Cable
        <ul>
          <li> <a rel=3D"nofollow" class=3D"external text"
href=3D"https://search.ni.com/nisearch/app/main/p/bot/no/ap/global/lang/e=
n/pg/1/q/788216-01/">ni.com
              part number 788216-01</a></li>
        </ul>
      </li>
    </ul>
    <p><b>Recommended 100 Gigabit Ethernet Cards</b>
    </p>
    <ul>
      <li> Mellanox/NVIDIA ConnectX-5 EX 100 GbE NIC (MCX516A-CCAT (PCIe
        Gen3 x16))
        <ul>
          <li> <a rel=3D"nofollow" class=3D"external text"
href=3D"https://store.nvidia.com/en-us/networking/store/product/MCX516A-C=
CAT/nvidiamcx516a-ccatconnectx-5enadaptercard100gbe/">NVIDIA=C2=AE
              MCX516A-CCAT ConnectX-5 EN Adapter Card 100GbE PCIe Gen
              3x16 </a></li>
        </ul>
      </li>
      <li> Mellanox/NVIDIA ConnectX-5 EX 100 GbE NIC (MCX516A-CDAT (PCIe
        Gen4 x16))
        <ul>
          <li> <a rel=3D"nofollow" class=3D"external text"
href=3D"https://store.nvidia.com/en-us/networking/store/product/MCX516A-C=
DAT/nvidiamcx516a-cdatconnectx-5exenadaptercard100gbe/">NVIDIA=C2=AE
              MCX516A-CCAT ConnectX-5 EN Adapter Card 100GbE PCIe Gen
              4x16 </a></li>
        </ul>
      </li>
    </ul>
    <p><b>Recommended 100 Gigabit Ethernet Cables</b>
    </p>
    <ul>
      <li> Mellanox/NVIDIA 3m QSFP28 MCP1600-C003E26N
        <ul>
          <li> <a rel=3D"nofollow" class=3D"external text"
href=3D"https://store.nvidia.com/en-us/networking/store/product/MCP1600-C=
003E26N/nvidiamcp1600-c003e26ndaccableethernet100gbeqsfp283m/">NVIDIA=C2=AE
              MCP1600-C003E26N DAC Cable Ethernet 100GbE QSFP28 3m </a></=
li>
          <li> Shorter length variants also recommended</li>
        </ul>
      </li>
    </ul>
    <p><b>Recommended Host PC</b>
    </p>
    <ul>
      <li> At least 15 CPU Cores</li>
      <li> At least 32 GB RAM</li>
      <li> Ubuntu 20.04 (5.4.0-89-generic kernel) </li>
    </ul>
    <p><b> Validated Hardware and Software Configuration Examples </b>
    </p>
    <ul>
      <li> Ubuntu 20.04 (5.4.0-89-generic kernel), DPDK 19.11, with
        Intel(R) Core(TM) i9-10920X CPU @ 3.50GHz - 24 CPU - 4.8 GHz Max
        CPU freq - 64 GB RAM. Mellanox/NVIDIA ConnectX-5 EX 100 GbE NIC
        (MCX516A-CCAT (PCIe Gen3 x16)). Mellanox/NVIDIA 3m QSFP28
        MCP1600-C003E26N cables.</li>
    </ul>
    <ul>
      <li> Ubuntu 20.04 (5.4.0-89-generic kernel), DPDK 20.11, with AMD
        Ryzen Threadripper 3960X 24-Core Processor - 48 CPU - 3.6 GHz
        CPU freq - 64 GB RAM. Mellanox/NVIDIA ConnectX-5 EX 100 GbE NIC
        (MCX516A-CDAT (PCIe Gen4 x16)). Mellanox/NVIDIA 3m QSFP28
        MCP1600-C003E26N cables.</li>
    </ul>
    <p><br>
    </p>
  </body>
</html>

--------------N0fpmSZSCkvP9zMtCcR2sx1S--

--===============2499576685401145217==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2499576685401145217==--
