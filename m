Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A9B47064D
	for <lists+usrp-users@lfdr.de>; Fri, 10 Dec 2021 17:49:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A7C08384A30
	for <lists+usrp-users@lfdr.de>; Fri, 10 Dec 2021 11:49:26 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a1iOBJJ9";
	dkim-atps=neutral
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 2B4EB384A48
	for <usrp-users@lists.ettus.com>; Fri, 10 Dec 2021 11:48:16 -0500 (EST)
Received: by mail-qk1-f173.google.com with SMTP id w14so8261604qkf.5
        for <usrp-users@lists.ettus.com>; Fri, 10 Dec 2021 08:48:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=QzeqJaLuGQQhTDIllns0kZKOTvNT39jDMGkdQOBu8vA=;
        b=a1iOBJJ9paYCfLCvzWCxjY11/Eelz8ZPysiosVaa4cbdKBLPUvhtU8CYAo7N50dVfX
         +B+AKyqIcMJffRQy/iDGKghbP7U9OIRcA3WDTMJfiangSDRNHw4iyZnPJ3pq2f80TPX8
         oH9h1CB3Ql0FZdetzwwjl9LtNR2g/LlU+6JCQkeepVSRD/WxA5sSdceK4ybU1BG7gx4o
         8y0cziBO2suMFSTEkYOYrn3uVzJoXpIZGOk2rxr5lT6wRGPc/wSemmi+shIHQgGXHPhX
         5ebqPjlFRiYS8QaRuafb3ZqiMizsK6Tc0cQUJGA2a8gpcX9IswjtSCNa0Lyok1KwcUoi
         1o/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=QzeqJaLuGQQhTDIllns0kZKOTvNT39jDMGkdQOBu8vA=;
        b=zreIPHZpf7/Q79Pp805MwyBo9IU3IhE8E3//lvHGyDC+4fZ7Ce8fmkf971mQY638x2
         SJUduRk1XozEp2cEI/EtGKfgZztiInTIiux6FgTF3Z2B4jm7UHB+T6RbtJktgKyk6rqP
         fV7fE7Z7euh1QL2hVi3q8LQxiaaM3wZTSrv/tRGn4vHatIbOnHDLLDHD9swkYHBavW2P
         aQUvOylyuwlNjLuDvUv+qu4uRb13vNjCKKJbT4vyU3IZCqVHGzO58toDDhXH8mdTM+9J
         nZXl9ZsdtDyYUOPdCOUUg3vgruf5Yvc3BVRKrWyyEuvOt0R+j+7ntjLlOWlsoK24/tzR
         hAFQ==
X-Gm-Message-State: AOAM531J2pd393MWKc3TKH6QJtPMwrDSFVXUvwcGYS6uFRlR4P40k0cw
	GF2sBmmjB61NRMHQYJ2Ua0i+4rWTlBo=
X-Google-Smtp-Source: ABdhPJwov0RUBIhXuB3Ypdbqu2cX1GPcNyJZmj4LQc1JaadY1jNCSbu914S/v7R4nU89n7o4gLBUlg==
X-Received: by 2002:a37:a392:: with SMTP id m140mr21685891qke.726.1639154895250;
        Fri, 10 Dec 2021 08:48:15 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id k19sm1501884qko.73.2021.12.10.08.48.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Dec 2021 08:48:14 -0800 (PST)
Message-ID: <f6882ec6-07a3-1851-530b-13beaf28e038@gmail.com>
Date: Fri, 10 Dec 2021 11:48:13 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <lvDxsv6xHvBWycLv842HNnvkLtZ1quZiZqPIa60E@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <lvDxsv6xHvBWycLv842HNnvkLtZ1quZiZqPIa60E@lists.ettus.com>
Message-ID-Hash: 5M6CVFWBTFSQSPIHGEOMCF2JKBUY23T2
X-Message-ID-Hash: 5M6CVFWBTFSQSPIHGEOMCF2JKBUY23T2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5M6CVFWBTFSQSPIHGEOMCF2JKBUY23T2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7394489156668717557=="

This is a multi-part message in MIME format.
--===============7394489156668717557==
Content-Type: multipart/alternative;
 boundary="------------Et3fi16Zj86AGUHcXxm0SHqx"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Et3fi16Zj86AGUHcXxm0SHqx
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-08 03:25, iw1fnw@gmail.com wrote:
>
> I did some more experiments, but without results=E2=80=A6
>
> Just to answer your last, the USRP is connected directly to the NIC=20
> (no switches).
>
> |abusso@ttclabsdr:~$ sudo ethtool enp4s0f0 Settings for enp4s0f0:=20
> Supported ports: [ FIBRE ] Supported link modes: 10000baseT/Full=20
> Supported pause frame use: Symmetric Receive-only Supports=20
> auto-negotiation: No Supported FEC modes: Not reported Advertised link=20
> modes: 10000baseT/Full Advertised pause frame use: No Advertised=20
> auto-negotiation: No Advertised FEC modes: Not reported Speed:=20
> 10000Mb/s Duplex: Full Port: Direct Attach Copper PHYAD: 0=20
> Transceiver: internal Auto-negotiation: off Supports Wake-on: g=20
> Wake-on: g Current message level: 0x00000007 (7) drv probe link Link=20
> detected: yes |
>
> Since there are two 10GBit connections, I tried the programming using=20
> one or the other, but result is the same. So, I do not think it is a=20
> problem of cable or SFP+ adapter.
>
> I checked with wireshark what is going on, and the result is that=20
> there is an exchange of 72 UDP packets of short length (16 bytes) from=20
> PC to USRP, each followed by a reply of 16 bytes, and the=20
> communication terminates with a longer one from PC (272 bytes)=20
> followed by 4 bytes reply from USRP. So, it seems not much data is=20
> transferred and the real image transfer never starts.
>
> The packets are not all the same, so something seems going on, but I=20
> have the impression that the last one creates some problems. For the=20
> first 72, the answer is quite immediate (20-30us), but the last reply=20
> from USRP takes almost 1 second.
>
> If needed, I can attach the wireshark extrack.
>
>
||So, has this device always done this, or it started doing it at some=20
point recently?=C2=A0 How old is the device?


--------------Et3fi16Zj86AGUHcXxm0SHqx
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-08 03:25, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:iw1fnw@gmail.com">iw1fnw@gmail.com</a=
>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:lvDxsv6xHvBWycLv842HNnvkLtZ1quZiZqPIa60E@lists.ettus.co=
m">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I did some more experiments, but without results=E2=80=A6</p>
      <p>Just to answer your last, the USRP is connected directly to the
        NIC (no switches).</p>
      <pre><code>abusso@ttclabsdr:~$ sudo ethtool enp4s0f0
Settings for enp4s0f0:
        Supported ports: [ FIBRE ]
        Supported link modes:   10000baseT/Full
        Supported pause frame use: Symmetric Receive-only
        Supports auto-negotiation: No
        Supported FEC modes: Not reported
        Advertised link modes:  10000baseT/Full
        Advertised pause frame use: No
        Advertised auto-negotiation: No
        Advertised FEC modes: Not reported
        Speed: 10000Mb/s
        Duplex: Full
        Port: Direct Attach Copper
        PHYAD: 0
        Transceiver: internal
        Auto-negotiation: off
        Supports Wake-on: g
        Wake-on: g
        Current message level: 0x00000007 (7)
                               drv probe link
        Link detected: yes

</code></pre>
      <p>Since there are two 10GBit connections, I tried the programming
        using one or the other, but result is the same. So, I do not
        think it is a problem of cable or SFP+ adapter.</p>
      <p>I checked with wireshark what is going on, and the result is
        that there is an exchange of 72 UDP packets of short length (16
        bytes) from PC to USRP, each followed by a reply of 16 bytes,
        and the communication terminates with a longer one from PC (272
        bytes) followed by 4 bytes reply from USRP. So, it seems not
        much data is transferred and the real image transfer never
        starts.</p>
      <p>The packets are not all the same, so something seems going on,
        but I have the impression that the last one creates some
        problems. For the first 72, the answer is quite immediate
        (20-30us), but the last reply from USRP takes almost 1 second. </=
p>
      <p>If needed, I can attach the wireshark extrack.</p>
      <br>
    </blockquote>
    <code></code>So, has this device always done this, or it started
    doing it at some point recently?=C2=A0 How old is the device?<br>
    <br>
    <br>
  </body>
</html>
--------------Et3fi16Zj86AGUHcXxm0SHqx--

--===============7394489156668717557==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7394489156668717557==--
