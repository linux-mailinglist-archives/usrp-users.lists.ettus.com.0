Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C6457EB04
	for <lists+usrp-users@lfdr.de>; Sat, 23 Jul 2022 03:19:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 31091383D7E
	for <lists+usrp-users@lfdr.de>; Fri, 22 Jul 2022 21:19:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658539189; bh=IMVwindpPtHfy8bsHWm+3JsV3RqblmFAVOX9Dc/pNlc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=YiyYBP7Q5zigV0pPYnZsmhLruHkMrjxp8dflROOCE+DUn5r8BAOneqU7Iwd79aStG
	 rnVa/pUc8MyemcefFJfnumkaUGkn7yVl+8365E0EGs74mIR1+KpYhzqnCv8pPbOPhH
	 tprlWc22TibD5LbEXfm3VUGA+Fd6dUvIe7GE48HveTp5DN2doLEeVYMaoj9YeaIbMg
	 ENZ7FzKkk+H2fGCgK1m5tvYLWTr7+95EjRBUwqA/3PM0DaUcMFn20IEhH921i4k2G0
	 d6FNi47jDptY5bhnEqktF7GDwnIyTvcR9lpp1JaZUuad10FKyDaWagRiOafM5095tU
	 TkTxFRrZrLYsg==
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id D39DB383909
	for <usrp-users@lists.ettus.com>; Fri, 22 Jul 2022 21:18:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FBJQdXhn";
	dkim-atps=neutral
Received: by mail-qv1-f46.google.com with SMTP id q3so3773877qvp.5
        for <usrp-users@lists.ettus.com>; Fri, 22 Jul 2022 18:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=mYXiaAnYs7jr3150n8X58wzE7WjF5eVjiP1lFWGoIZ4=;
        b=FBJQdXhnCUZC9dWHvzApcd+6ngGvKA09wQo+Wothu5RhFmFVVL20BM9jMhgFZfhXAm
         qdWa8LzRU9z0SxGWrxdCcZJ/Jo1PjYA11JuoMe4I54yPwaUKXySq4foNxLjHBohrd2ca
         Xi7Np/oNbnoxA4dxPdBbEqjHNBEBBGOhFEkI3XunZkY6tpR+H/2yFodkb3I4RTfrYcNy
         VVl6SkXqc86qBaHdg+0kokqlBwSes673FaVMK1RxS6x0M++M1urRrAtZo7toymkjjaAJ
         4r8FvFm0Jwh8XhtOkKp4f2R+7gBOq8cNu/UEPXeTL+qMlEzCCHU3R+8qLRmYe5Dzdlmf
         /w+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=mYXiaAnYs7jr3150n8X58wzE7WjF5eVjiP1lFWGoIZ4=;
        b=eCwh8g1aVDhTiCJ38rXSYAY2u/RcpEBlupdYrWKi7xUQnnXTFaxohgez3mjB6L+73A
         KQzCWF5z9r3HD7nsSLw1O5B8txl0VC+KBrY8L4awyjtOI2ks16flB8ecAQbAHLANWU/J
         wWrlqFUeF/JzpdS9JPnC3WxIgJriYtw0F9IUoLpfBGbsugZfSEFtxzGh7pqbPgdeVZPl
         umAcTe5iMjuKCbIdVs6aIhOMMUE7bHN29u3JG2ZGSwW+lDteJ8oXkz7vFI/W0RDdIPNv
         yzZ6uCd7WQMHxPSFu4fPyX+e46pLgPvlGlmq4olwDN6NkkHUqvfmrsZBZKmnnBMhAB0P
         LlHA==
X-Gm-Message-State: AJIora/qA8c0NfS/Qsh+FyIBM4EzjaxtTIDRkVPnzts/0gSKtTc44T+P
	wuU3a/SbizQ49iyLpERmhPlE+VX9/hU=
X-Google-Smtp-Source: AGRyM1vNqtWiTAJ7N+LAVt5BgCcTesRmhzyPrSoFl7DmXG7FSY20JI05Tzpiw4osVnKpCZI/Fzxw3A==
X-Received: by 2002:ad4:5b87:0:b0:474:2411:b480 with SMTP id 7-20020ad45b87000000b004742411b480mr2461505qvp.39.1658539126758;
        Fri, 22 Jul 2022 18:18:46 -0700 (PDT)
Received: from [192.168.2.199] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id bb33-20020a05622a1b2100b0031ee918e9f9sm3825858qtb.39.2022.07.22.18.18.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jul 2022 18:18:46 -0700 (PDT)
Message-ID: <eb6a1f1f-83df-d1c0-ee06-1ea9f84ac43f@gmail.com>
Date: Fri, 22 Jul 2022 21:18:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <hqzcXCdL6e3hc3yrpepNEDUBXUsv1xhuYpH2bTHJk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <hqzcXCdL6e3hc3yrpepNEDUBXUsv1xhuYpH2bTHJk@lists.ettus.com>
Message-ID-Hash: H7VGEA756ZFJWR53TFWZIZVRD2CMYGSN
X-Message-ID-Hash: H7VGEA756ZFJWR53TFWZIZVRD2CMYGSN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Diagnosing Overflow (out of sequence) errors on four x300 multi 8 channel system
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H7VGEA756ZFJWR53TFWZIZVRD2CMYGSN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0026348745071133150=="

This is a multi-part message in MIME format.
--===============0026348745071133150==
Content-Type: multipart/alternative;
 boundary="------------jggOjG0EwU7m3U71gvRGhe04"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------jggOjG0EwU7m3U71gvRGhe04
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-07-22 21:12, balinfd3@gmail.com wrote:
>
> Hello Everyone,
>
> I have 4 x300 (8 channels) recording 20MHz bandwidth continuously on=20
> all 8 channels at the same time onto a RAID. That=E2=80=99s 645MB/s of =
data=20
> rate recorded onto the RAID. Sometimes the recording goes on for 10=20
> hours without any issues whatsoever=E2=80=A6sometimes it hiccups every =
4 hours=20
> with /*=E2=80=9COverflow (Out of Sequence)*/ errors. Below is the syste=
m=20
> specs. Continued after system specs=E2=80=A6
>
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-
>
> *CPU:* AMD Ryzen 7 5700G 8: Cores 16 threads
>
> *RAM*: 32GB RAM DD4
>
> *Motherboard:* ASUS Pro WS x570-ACE with latest BIOS ver 4201
>
> *Ethernet Card*: 4-Port Intel X710 10G Ethernet Card with i40e driver=20
> as of March 2022 =E2=80=94> plugged into PCIe x8 and running at x8
>
> *OS*: Linux Mint 20.3 Una 64 bit with Kernel 5.15.041 (Clean, fresh=20
> install via reformat)
>
> *OS Drive*: 1TB Samsung NVME EVO 970 Plus
>
> *RAID:* Areca 1883IX-24: RAID 6 w/12x 16TB Seagate Exos (145TB ext4=20
> partition) =E2=80=94> plugged into PCIe x8 and running at x8. Latest=20
> Firmware/BIOS/Bootloader package dated June 2022.
>
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94-
>
> *UHD ver:* 3.15.0.0.rc3 (UHD_3.15.0.HEAD-0-g4e06022c)
>
> 4x x300 via 10G connection to the back of the Intel X710 4port 10G card=
.
>
> *Ring buffers:* maxed out at RX 4096 and TX 4096 on the Intel X710 on=20
> all 4 ports
>
> *Memory buffers*: rmem and wmem set to 800,000,000
>
> Swap disabled; swappiness disabled; vm.dirty_background_ratio =3D 2,=20
> vm.dirty_ratio=3D5
>
> CPU Governor overridden to =E2=80=9Cuserspace=E2=80=9D and forced to ru=
n at 4.67GHz on=20
> all 8 cores all the time.
>
> =E2=80=9Cnetstat -s=E2=80=9D and =E2=80=9Cethtool -S=E2=80=9D confirms =
*not a single packed is dropped=20
> or overrun or missed.*
>
>
> I am having difficulties finding where is the bottleneck=E2=80=A6and wh=
y is=20
> not consistent=E2=80=A6why it hiccups in 10 minutes or runs great for m=
any=20
> hours=E2=80=A6.if that is what the error suggests. Benchmarking the RAI=
D 6=20
> shows 1.6GB/s write and 600MB/s read. Also, what is the difference=20
> between *Overflow (overflow) and Overflow (out of sequence )* ? I am=20
> not getting the Overflow (overflow).
>
>
> I am leading to believe that the RAID might be the culprit...but at=20
> 645MB of incoming data, it should even sweat =E2=80=A6.
>
>
> Any advice would be greatly appreciated! Thanks!
>
>
>
Could you perhaps show us the error log?

UHD normally issues "O" for overrun, and "S" for a sequence error.

A sequence error usually means that some part of the network stack=20
delivered frames out-of-sequence, like sequence 3 being delivered before=20
sequence 2, etc.=C2=A0 Are you
 =C2=A0 directly connected to your X310, or is there a 10GiG switch in=20
between your host and the X310?



--------------jggOjG0EwU7m3U71gvRGhe04
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-07-22 21:12, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:balinfd3@gmail.com">balinfd3@gmail.co=
m</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:hqzcXCdL6e3hc3yrpepNEDUBXUsv1xhuYpH2bTHJk@lists.ettus.c=
om">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello Everyone,</p>
      <p>I have 4 x300 (8 channels) recording 20MHz bandwidth
        continuously on all 8 channels at the same time onto a RAID.
        That=E2=80=99s 645MB/s of data rate recorded onto the RAID. Somet=
imes
        the recording goes on for 10 hours without any issues
        whatsoever=E2=80=A6sometimes it hiccups every 4 hours with <em><s=
trong>=E2=80=9COverflow
            (Out of Sequence)</strong></em> errors. Below is the system
        specs. Continued after system specs=E2=80=A6</p>
      <p>=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-</p>
      <p><strong>CPU:</strong> AMD Ryzen 7 5700G 8: Cores 16 threads</p>
      <p><strong>RAM</strong>: 32GB RAM DD4</p>
      <p><strong>Motherboard:</strong> ASUS Pro WS x570-ACE with latest
        BIOS ver 4201</p>
      <p><strong>Ethernet Card</strong>: 4-Port Intel X710 10G Ethernet
        Card with i40e driver as of March 2022 =E2=80=94&gt; plugged into=
 PCIe
        x8 and running at x8</p>
      <p><strong>OS</strong>: Linux Mint 20.3 Una 64 bit with Kernel
        5.15.041 (Clean, fresh install via reformat)</p>
      <p><strong>OS Drive</strong>: 1TB Samsung NVME EVO 970 Plus</p>
      <p><strong>RAID:</strong> Areca 1883IX-24: RAID 6 w/12x 16TB
        Seagate Exos (145TB ext4 partition) =E2=80=94&gt; plugged into PC=
Ie x8
        and running at x8. Latest Firmware/BIOS/Bootloader package dated
        June 2022. </p>
      <p>=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94-</p>
      <p><strong>UHD ver:</strong> 3.15.0.0.rc3
        (UHD_3.15.0.HEAD-0-g4e06022c)</p>
      <p>4x x300 via 10G connection to the back of the Intel X710 4port
        10G card.</p>
      <p><strong>Ring buffers:</strong> maxed out at RX 4096 and TX 4096
        on the Intel X710 on all 4 ports</p>
      <p><strong>Memory buffers</strong>: rmem and wmem set to
        800,000,000</p>
      <p>Swap disabled; swappiness disabled; vm.dirty_background_ratio =3D
        2, vm.dirty_ratio=3D5</p>
      <p>CPU Governor overridden to =E2=80=9Cuserspace=E2=80=9D and force=
d to run at
        4.67GHz on all 8 cores all the time.</p>
      <p>=E2=80=9Cnetstat -s=E2=80=9D and =E2=80=9Cethtool -S=E2=80=9D co=
nfirms <strong>not a single
          packed is dropped or overrun or missed.</strong></p>
      <p><br>
      </p>
      <p>I am having difficulties finding where is the bottleneck=E2=80=A6=
and
        why is not consistent=E2=80=A6why it hiccups in 10 minutes or run=
s great
        for many hours=E2=80=A6.if that is what the error suggests. Bench=
marking
        the RAID 6 shows 1.6GB/s write and 600MB/s read. Also, what is
        the difference between <strong>Overflow (overflow) and Overflow
          (out of sequence )</strong> ? I am not getting the Overflow
        (overflow). </p>
      <p><br>
      </p>
      <p>I am leading to believe that the RAID might be the
        culprit...but at 645MB of incoming data, it should even sweat =E2=
=80=A6.</p>
      <p><br>
      </p>
      <p>Any advice would be greatly appreciated! Thanks!</p>
      <p><br>
      </p>
      <br>
    </blockquote>
    Could you perhaps show us the error log?<br>
    <br>
    UHD normally issues "O" for overrun, and "S" for a sequence error.<br=
>
    <br>
    A sequence error usually means that some part of the network stack
    delivered frames out-of-sequence, like sequence 3 being delivered
    before sequence 2, etc.=C2=A0 Are you<br>
    =C2=A0 directly connected to your X310, or is there a 10GiG switch in
    between your host and the X310?<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------jggOjG0EwU7m3U71gvRGhe04--

--===============0026348745071133150==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0026348745071133150==--
