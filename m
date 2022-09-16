Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BA95BB409
	for <lists+usrp-users@lfdr.de>; Fri, 16 Sep 2022 23:41:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B800A383672
	for <lists+usrp-users@lfdr.de>; Fri, 16 Sep 2022 17:41:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663364464; bh=+k9ffrfh+dJ10ngvr2Y8KQ+R5dTZW4kCioDBH59oiuk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=tdUOcaAVmoNr4QLRm0UR13l3NzOoEkCYrwzHdm7rLEi+mRj7wzDcpX5TNKzGhojIT
	 cnVy4pjjfB0bGYF5ywu/+3rVroWRSs17nsEsMXlMzysHOvWh3cdFvEPPx/LJPTcyqj
	 Ts5z0eTRf8NBmAVEsgXCfD14GGlKMft2xtSLippz5f0wBxWZRBk0IGq79+WeLbdktn
	 UOFKGJAhklmECcZeghSUL0Cv/MqO2lgTXnW4rart1/OxBkn/GPybBhobPy3i2Xj2XL
	 I37PuNdh+bGV974eaj9VDI44D7iVYX970LA+LW0ErEfqKnSxMx/ZpINuuGEfJfSrn+
	 9rvb5tUIab4Qg==
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 7F1D5380C1A
	for <usrp-users@lists.ettus.com>; Fri, 16 Sep 2022 17:39:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pTq14RY0";
	dkim-atps=neutral
Received: by mail-qt1-f180.google.com with SMTP id c11so16962853qtw.8
        for <usrp-users@lists.ettus.com>; Fri, 16 Sep 2022 14:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date;
        bh=1Ba+T/7xWEsIgmWPidz/+6w8AYF7ZiWRxeavwi3/3b8=;
        b=pTq14RY0lVOgAMP+/nFFaxglXipW//mnZl93PbNPK/7WMaxOw1vJ0ASUyamjFK5Ths
         xY7DHyuP9lEjoaoFr+AgTg6P+gM7Wt3XXUlWTC3aC2AYP7UKCord7/3PVnKO4jQYFYia
         SLLZFDKKYtw5PqwFHa/P1uUU0xxfbJ28+nkN7jmmBu8sx3D4mHlH9VCEoRM5lUdfx4v3
         lUKwQigJ+Q6qhGuFqzdccd+u+QZPqpydQRpVM0ifijrIaF+IOwjLv343kDWimMZucL6t
         B521eNUqFAV9jddzxj/FPWe05ueNh48hGk4G0IiMJWrH4AFrSUeNsiu4Yd/fQd6x+sTw
         d9Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date;
        bh=1Ba+T/7xWEsIgmWPidz/+6w8AYF7ZiWRxeavwi3/3b8=;
        b=6v6x7zcAPzHRjGy42sN0rEyijCJnF+COCYRoq2SMi3Os9ZdMsdvQbDGACvWWTQN3YL
         +Z+XRJUJfRljkkdoa6VJ+AhhAFlvO+F1D9PC6w7SIzMCtHRWR2j+cYlSDjIh40SqSj3A
         BI5mIY7baFR/xV5+Ssj0vo3SbLQiKXf2/UgAQ/tXz+tbRU/xQ6Ict1jW3ayOSEw/+FNB
         l/Nf6aj1Nre9VjMRpb0zyTGFw9Pu1Lwpeu4NdgYODGi/Ww4vEpuS839eN1u3N7R6YGWx
         G2PvXqkt97NgPiKdXF2Y75HTK6FS85D40L5VhO4SxwqGkC/r2zvhkBkRa9LsJmctObFJ
         S1ng==
X-Gm-Message-State: ACrzQf3oZvYyJtGx3ieCRaWRjubKh+MP8uj/eYtAI+kVruBjJBQ+Z3op
	k0it9wn3NQNxBLKD67s/ztWb2UgcdXs=
X-Google-Smtp-Source: AMsMyM54UKtlMXtmUXbHGdgnyK4/bb6Lqpbl/YByyTIDa53Nwh0NFwSOfXvLdk9WQkOBS7xWMGbHLQ==
X-Received: by 2002:ac8:5c94:0:b0:35b:b301:fd14 with SMTP id r20-20020ac85c94000000b0035bb301fd14mr6251274qta.531.1663364356729;
        Fri, 16 Sep 2022 14:39:16 -0700 (PDT)
Received: from [192.168.2.160] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id fb24-20020a05622a481800b0035ba7012724sm5874142qtb.70.2022.09.16.14.39.16
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Sep 2022 14:39:16 -0700 (PDT)
Message-ID: <e64dacc5-9266-246f-92cb-de50943bb56b@gmail.com>
Date: Fri, 16 Sep 2022 17:39:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <1XjFeZuxJCE4wbZQgmUQYUbtQzoD6MBlvUBkWoW78@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1XjFeZuxJCE4wbZQgmUQYUbtQzoD6MBlvUBkWoW78@lists.ettus.com>
Message-ID-Hash: Y3L5RKEI7MUUKNNA5R7J5DM2LQOSR26S
X-Message-ID-Hash: Y3L5RKEI7MUUKNNA5R7J5DM2LQOSR26S
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Question: maximum single channel sample rate on X410 with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y3L5RKEI7MUUKNNA5R7J5DM2LQOSR26S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6006361155123470597=="

This is a multi-part message in MIME format.
--===============6006361155123470597==
Content-Type: multipart/alternative;
 boundary="------------yZ0Qa4uQJLd6DZQ8B0VewU25"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------yZ0Qa4uQJLd6DZQ8B0VewU25
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-09-16 16:25, perper@o2.pl wrote:
>
> Hello,
>
> It seems that I have to answer my own question. Currently I succeeded=20
> to get 245.76MSamp/s in benchmark_rate for single channel with DPDK=20
> over single 10Gbit link for an RFSoC device similar to USRP X410.
>
> My setup:
>
>  *
>
>     UHD 4.3, Ubuntu 20.04, DPDK 19.11 installed from packages
>
>  *
>
>     command: benchmark_rate --rx_subdev "A:0" --rx_channels 0
>     --args=3D"addr=3D192.168.10.2,mgmt_addr=3D192.168.0.39,use_dpdk=3D1=
"
>     --rx_rate 245.76e6
>
>  *
>
>     Hardware: AMD Ryzen Threadripper 2990WX, 128GB RAM, motherboard
>     Asus X399
>
> This is not a mind-blowing rate, because I=E2=80=99m able to get quite =
stable=20
> 245.76 MSamp/s without DPDK.
>
> But it is a good start taking into account number of different strange=20
> steps during DPDK installation and setup and very poor performance at=20
> the beginning.
>
> Solutions to some issues were totally counterintuitive. I.e. in the=20
> end I still had one ~oveflow per second at 245.76MSamp rate. The=20
> solution was to run the program WITHOUT root rights/sudo (what=20
> requires additional steps that were described by Rob Kossler).
>
> =E2=80=94
> Best Regards,
> Piotr Krysik
>
The problem is that it's a question with absolutely no generic answer.=C2=
=A0=20
People run SDR "stacks" on computers covering
 =C2=A0 literally several generations of CPU design (both Intel and AMD),=
=20
different clock rates, bus speeds, memory speeds,
 =C2=A0 OS versions, different collections of peripheral cards like Ether=
net=20
interfaces (1Gig and 10GIg), etc.

Further there likely aren't a huge number of users of the X410 at this=20
point, and I suspect that many (not all, mind)
 =C2=A0 users of the X410 don't want to share very much about system=20
configuration things.

There's also probably a fair amount of "it depends" as to whether DPDK=20
will improve performance or not involving
 =C2=A0 DPDK versions, type of 10GiG hardware, and which kernel version.


--------------yZ0Qa4uQJLd6DZQ8B0VewU25
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-09-16 16:25, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:perper@o2.pl">perper@o2.pl</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1XjFeZuxJCE4wbZQgmUQYUbtQzoD6MBlvUBkWoW78@lists.ettus.c=
om">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello,</p>
      <p>It seems that I have to answer my own question. Currently I
        succeeded to get 245.76MSamp/s in benchmark_rate for single
        channel with DPDK over single 10Gbit link for an RFSoC device
        similar to USRP X410.</p>
      <p>My setup:</p>
      <ul>
        <li>
          <p>UHD 4.3, Ubuntu 20.04, DPDK 19.11 installed from packages</p=
>
        </li>
        <li>
          <p>command: benchmark_rate --rx_subdev "A:0" --rx_channels 0
            --args=3D"addr=3D192.168.10.2,mgmt_addr=3D192.168.0.39,use_dp=
dk=3D1"
            --rx_rate 245.76e6</p>
        </li>
        <li>
          <p>Hardware: AMD Ryzen Threadripper 2990WX, 128GB RAM,
            motherboard Asus X399</p>
        </li>
      </ul>
      <p>This is not a mind-blowing rate, because I=E2=80=99m able to get=
 quite
        stable 245.76 MSamp/s without DPDK.</p>
      <p>But it is a good start taking into account number of different
        strange steps during DPDK installation and setup and very poor
        performance at the beginning.</p>
      <p>Solutions to some issues were totally counterintuitive. I.e. in
        the end I still had one ~oveflow per second at 245.76MSamp rate.
        The solution was to run the program WITHOUT root rights/sudo
        (what requires additional steps that were described by Rob
        Kossler).</p>
      <p>=E2=80=94<br>
        Best Regards,<br>
        Piotr Krysik<br>
      </p>
    </blockquote>
    The problem is that it's a question with absolutely no generic
    answer.=C2=A0 People run SDR "stacks" on computers covering<br>
    =C2=A0 literally several generations of CPU design (both Intel and AM=
D),
    different clock rates, bus speeds, memory speeds,<br>
    =C2=A0 OS versions, different collections of peripheral cards like
    Ethernet interfaces (1Gig and 10GIg), etc.<br>
    <br>
    Further there likely aren't a huge number of users of the X410 at
    this point, and I suspect that many (not all, mind)<br>
    =C2=A0 users of the X410 don't want to share very much about system
    configuration things.<br>
    <br>
    There's also probably a fair amount of "it depends" as to whether
    DPDK will improve performance or not involving<br>
    =C2=A0 DPDK versions, type of 10GiG hardware, and which kernel versio=
n.<br>
    <br>
    <br>
  </body>
</html>

--------------yZ0Qa4uQJLd6DZQ8B0VewU25--

--===============6006361155123470597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6006361155123470597==--
