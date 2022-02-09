Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDEC4AFA15
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 19:35:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5BD6E3854A8
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 13:35:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YI+VtWJG";
	dkim-atps=neutral
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id BE9F1384951
	for <usrp-users@lists.ettus.com>; Wed,  9 Feb 2022 13:34:12 -0500 (EST)
Received: by mail-qk1-f180.google.com with SMTP id m25so2369077qka.9
        for <usrp-users@lists.ettus.com>; Wed, 09 Feb 2022 10:34:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=D5hBU05WglGkF0oEoAcko1OwNYx73eB7RN3OXMx+xEI=;
        b=YI+VtWJGyWRVnjAL3wJMVee2dSeAA2k8VsAeTl7TI8kzjHevesvLegIfREMZVd8TjV
         EYpGNxtuXLcfW73b8GZfn5GLr+mmJ9P89yFvyDGMKD5pVuVDBdE88FG7tYf1wFwbrB/N
         H3AGCCkYoE5WKZS+ukzIglwFKZNiZ6FVNAHURGS1YlQrKyYb0bugmcCN4IgeGxfzEK8w
         449dY2FP+yVD37DXYO5LNh0TF2lX5rilYAx9teIwzkhxs5OMr840sw9zrKmLg0guxrRc
         01kv05RhcPeXwdwOro+3Lq1nyJ7F+4LeixIUFHPKfkfy36ikEAreyf1bSwAgxYiA+It+
         cUSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=D5hBU05WglGkF0oEoAcko1OwNYx73eB7RN3OXMx+xEI=;
        b=Tn+/W7F8BbNKjHHoYs5JBT17WA2d+8SEpAdLLJIUc0/NRyLPXILRzV9rgk0umQKkYn
         QJBYZx8zaiCw8CZ0Il82Yx5ANP45I9xdyB02RVw6jOkC+OZMppx1GLlRwOkmNgrFaOFp
         nDVRPDZGTbHY+Y5NlWd9JdD5+4A/J67TQp4+v/eZiRDnUuDCPrwFd8AJLmvmhCNKD4EG
         SNnIZbveQqzOm4VWOUizAIeCpzb/V6h3piJyOwd4CqHYLh4aIWSP/fZbkh9a/qb/5g/b
         o9cr/PZLYuu9DQDzYzGbFwILyGn3af5oW31TKVJkTx8Jp68/2ll/gFxp99VwFEhyrQBO
         luUA==
X-Gm-Message-State: AOAM532mfI2IUQ+YIZRnDvoxyrIIHdU99Nx0VRHBOlQKHSaRcfk/3RC/
	xrknhhLlRSZeDJYkr6PbPeU=
X-Google-Smtp-Source: ABdhPJzUjq27QdUvxkYcRwYMg8ue4r2qmeKyYtypQJjiUkZtNgg771NfF4Fe4Y9t4ANzJsm9GH7GaA==
X-Received: by 2002:a05:620a:4014:: with SMTP id h20mr1837430qko.275.1644431652195;
        Wed, 09 Feb 2022 10:34:12 -0800 (PST)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id q12sm9784655qtx.51.2022.02.09.10.34.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Feb 2022 10:34:11 -0800 (PST)
Message-ID: <fab6015f-d263-bb77-c2a0-c123344ec4c1@gmail.com>
Date: Wed, 9 Feb 2022 13:34:10 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Giuseppe Santaromita <giuseppe.santaromita1@gmail.com>,
 usrp-users@lists.ettus.com
References: <deed8d5e-6ab5-21dc-5da9-9f580e859dee@gmail.com>
 <19c6d891-f98b-d88c-e55f-0e11ae0a2ef5@gmail.com>
 <52c77c46-09b6-9a26-440f-9e044dbff869@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <52c77c46-09b6-9a26-440f-9e044dbff869@gmail.com>
Message-ID-Hash: FS3WYQBN7GBICHC5CDK4QKLJUS275CCP
X-Message-ID-Hash: FS3WYQBN7GBICHC5CDK4QKLJUS275CCP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Mender Update Process N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FS3WYQBN7GBICHC5CDK4QKLJUS275CCP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0276173178165099955=="

This is a multi-part message in MIME format.
--===============0276173178165099955==
Content-Type: multipart/alternative;
 boundary="------------dtjv20aXQ4Cf69myJUrtT4jG"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------dtjv20aXQ4Cf69myJUrtT4jG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-02-09 13:31, Giuseppe Santaromita wrote:
>
> Yep. The guideline say:
>
>
> After copying the Mender file system image to the N3xx, connect to the 
> N3xx using either the Serial Console, or via SSH to gain shell access.
>
> On the N3xx, run|mender -rootfs /path/to/latest.mender|to update the 
> file system:
>
>     root@ni-n3xx-serial:~# mender -rootfs /home/root/usrp_n3xx_fs.mender
>
>
> Am I doing something wrong?
>
> Giuseppe
>
>
Clearly *something* is wrong--either the documentation is incomplete or 
incorrect.

I've never used mender myself, I always just program a new system image 
by writing an SD card image to the uSD card.


--------------dtjv20aXQ4Cf69myJUrtT4jG
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-09 13:31, Giuseppe
      Santaromita wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:52c77c46-09b6-9a26-440f-9e044dbff869@gmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Yep. The guideline say:</p>
      <br class=3D"Apple-interchange-newline">
      <p style=3D"margin: 0.5em 0px; line-height: inherit; color: rgb(0,
        0, 0); font-family: &quot;Lucida Sans Unicode&quot;,
        &quot;Lucida Grande&quot;, sans-serif; font-size: 14px;
        font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-thickness:
        initial; text-decoration-style: initial; text-decoration-color:
        initial;">After copying the Mender file system image to the
        N3xx, connect to the N3xx using either the Serial Console, or
        via SSH to gain shell access.</p>
      <p style=3D"margin: 0.5em 0px; line-height: inherit; color: rgb(0,
        0, 0); font-family: &quot;Lucida Sans Unicode&quot;,
        &quot;Lucida Grande&quot;, sans-serif; font-size: 14px;
        font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-thickness:
        initial; text-decoration-style: initial; text-decoration-color:
        initial;">On the N3xx, run<span>=C2=A0</span><code
          style=3D"font-family: monospace, Courier; color: black;
          background-color: rgb(249, 249, 249); border: 1px solid
          rgb(221, 221, 221); border-radius: 2px; padding: 1px 4px;">mend=
er
          -rootfs /path/to/latest.mender</code><span>=C2=A0</span>to upda=
te
        the file system:</p>
      <pre style=3D"font-family: monospace, Courier; color: rgb(0, 0, 0);=
 background-color: rgb(249, 249, 249); border: 1px solid rgb(221, 221, 22=
1); padding: 1em; white-space: pre-wrap; line-height: 1.3em; font-size: 1=
4px; font-style: normal; font-variant-ligatures: normal; font-variant-cap=
s: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-ali=
gn: start; text-indent: 0px; text-transform: none; widows: 2; word-spacin=
g: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initia=
l; text-decoration-style: initial; text-decoration-color: initial;">   ro=
ot@ni-n3xx-serial:~# mender -rootfs /home/root/usrp_n3xx_fs.mender
</pre>
      <p><br>
      </p>
      <p>Am I doing something wrong?<br>
      </p>
      <p>Giuseppe</p>
      <br>
    </blockquote>
    Clearly *something* is wrong--either the documentation is incomplete
    or incorrect.<br>
    <br>
    I've never used mender myself, I always just program a new system
    image by writing an SD card image to the uSD card.<br>
    <br>
    <br>
  </body>
</html>

--------------dtjv20aXQ4Cf69myJUrtT4jG--

--===============0276173178165099955==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0276173178165099955==--
