Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A25B0947C
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jul 2025 20:53:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BE8573865FE
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jul 2025 14:53:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752778425; bh=nAlZJq33sBBNEtnLrUv81QC+8se7BehWAPi/0WGVB5o=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=kdKjwgARj6azf0JxtnoVY8+uICEgBm2K27YhREJiGwUHqsUD5U8I6sqQSSjOi1sDk
	 rzBX9sqIbAqp3CKiDTHZQsIowoNyKydxDvG/wgNgxwc6ePj8cYhQXS7nwH0IgznCFH
	 yuFtcr/MzvXVKVJaD4UrGQ3xjMm/80anF/eNT/r6m7fuUiR5kmyYeQ9J/p43U8HJRS
	 RhdGKb4acI7SEtKNM0Zt0zJ71zbsqjrcQZCSak2TIOTaslXYIHlRIOhuddwioE+yGC
	 E49mZ+n/hGcgr7UOwLQjLC+FIyCXBECljU329EjF63Y6YpXUCjsYx/F04k1i39T1Qu
	 BwDFlqOcYOA0g==
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 4CAB138658B
	for <usrp-users@lists.ettus.com>; Thu, 17 Jul 2025 14:53:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HA6mNkj6";
	dkim-atps=neutral
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-41c3addd37cso948265b6e.3
        for <usrp-users@lists.ettus.com>; Thu, 17 Jul 2025 11:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752778409; x=1753383209; darn=lists.ettus.com;
        h=user-agent:to:from:subject:message-id:date:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QEwszp8jQ0h/uYHPCY94bnIm6OhGf0YQrrOSezwDYS8=;
        b=HA6mNkj6vApkuQ/Ca5FyTs0oBPSlYb8yMvX/86OP2XfOUJAuSUj8FZXMyCPDkWSIIa
         cy0enDPtGJSbyA6MuPFyD0wRuxyEbGMNVtQNzGuxo2Ho9yIJ+96VfMOo8v58TATyEUlK
         H0U0/4vmoBGA5McK4/KFfn6fdsVkDZs7ENoSVbdVJX5n+m3Rh7vsMwWe7OmJvrv4jcT6
         Hf9qxuPazWJOfBH5ik0UmZwfFy2u7GWqBc+KoEiVvVkRw+jIop/5mPMp8uCn/DKtinm1
         yUbO4SDnGpxapG6tq7K91yFZqCIVxXSwG534MWyxw2jqxj3liwztFvyq4uBjQgMBWkql
         1yyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752778409; x=1753383209;
        h=user-agent:to:from:subject:message-id:date:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QEwszp8jQ0h/uYHPCY94bnIm6OhGf0YQrrOSezwDYS8=;
        b=HaK4cpKCOT+wYEwHZLQmgZsjIr/2G4tpQ+JNUqWv+o08883Mu+7sSQIh3sT4I3Bbbt
         LlZ1W34UpRy2IuQB4se515zFNNt4w4Ht0d5tic8T1joWPA7tUZtjKshxfcL1ZKMwIeBu
         +ncFQEumLUPFmaEvQlI8YXmyO/JzHYfhVZQ+6lpMZozVmNX3NA/dqTgoeHyDWnbuBJkh
         ycZWXnZh8rDfuELM5jNSX1Bm7Sk4uyQG7xX5AKNUDgbyTOhFKyKVaOy5P0fmkaKTaLZ6
         qzCMadFIADhVJo7qCGf1xxZR0cXdkNBVtAWudtsv08k3cVzzJ1MyEpzK/Itzg+vJKUk2
         5TIA==
X-Gm-Message-State: AOJu0YyFQYWH4X+3AX6mFEG7K6EB3VAUtnFPTJjjLPleTPaIFJ/lmg/b
	pSXbnFf7MOxnkp//J5/CSGJ+rqbJBJnTxaCf32+HZDQsGcjP61ld+MYD7yDqPQ==
X-Gm-Gg: ASbGnctj+LGS+ZmceFfDUIzoRgN2A39Mjc6Drye6Yg/HUTV9WQ1R6ouTXaiRkVXiqX1
	I9PXdAh9GO2svkRRkN8XoFDaQR4EShj99+w+lJFjA4sAfnaZWjNQt2MFeJf/+xpKy64OvopbwUp
	/yNVL1UlLxL8xeqw0u+uafiMT9rI3FZw1ak+thVSZFySdZ6IY9yaDf9H3mCW/8CGQ8uqzDqS7M9
	uVh+gfFX1+IXIcBc0eZ8qs0JPtRt9zm8qo+eD7wL/CeUS7188i7TBKoM16BHuWzL2V6UpWGyYW4
	rESN22q7w3ZgfCdkAOLcCzPLaR1sVtCOOjRgDdXXTmIYT1EbllYACcABvIw4QxxbkaDgeqbg1K6
	ZFkJ7YeSUj1dfZFUNbin+BbbYc1ubwF69Edustw==
X-Google-Smtp-Source: AGHT+IG6TxPnNLuaSduZNHWqNa2TzW52XMTxPauolmr2OlTy58EBK7lH9gvD18cVTJnzXyo/0kz8Kw==
X-Received: by 2002:a05:6808:f93:b0:3f9:76d2:e437 with SMTP id 5614622812f47-41d04e8e135mr6190903b6e.20.1752778408787;
        Thu, 17 Jul 2025 11:53:28 -0700 (PDT)
Received: from [192.168.5.40] ([47.186.162.138])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4141c1ac4f9sm3689185b6e.37.2025.07.17.11.53.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Jul 2025 11:53:27 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 17 Jul 2025 13:53:06 -0500
Message-ID: <Mailbird-67b125f3-6214-4b57-94f3-f1d53636cb82@gmail.com>
From: "page heller" <pageheller@gmail.com>
To: "usrp-users lists.ettus.com" <usrp-users@lists.ettus.com>
User-Agent: Mailbird/3.0.39.0
X-Mailbird-ID: Mailbird-67b125f3-6214-4b57-94f3-f1d53636cb82@gmail.com
Message-ID-Hash: N4BSZOUZM3VJGDW3X6BCMKBHV6A4NOT2
X-Message-ID-Hash: N4BSZOUZM3VJGDW3X6BCMKBHV6A4NOT2
X-MailFrom: pageheller@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] installing python3-uhd API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N4BSZOUZM3VJGDW3X6BCMKBHV6A4NOT2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6451804799734861202=="

--===============6451804799734861202==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_53728188.872904595646"

------=_NextPart_53728188.872904595646
Content-Type: text/plain;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm having some trouble installing the python API. I've been using uhd for =
a long time, but this is the first time for me to install the API. I am usi=
ng Ubuntu 22.04 with "UHD 4.8.0.0ubuntu1-jammy1", as reported by the first =
line of code below, and python 3.12.3.is from the manual webpage:
To perform the mentioned steps, use the commands below:
<UHD Install Dir>\bin\uhd_config_info.exe --version #find the version of UH=
D <python> -m pip install uhd=3D=3D<version_from_config_info> #install matc=
hing wheel
$ python3 -m pip install uhd=3D=3DUHD_4.8.0.0ubuntu1-jammy1
ERROR: Could not find a version that satisfies the requirement
uhd=3D=3DUHD_4.8.0.0ubuntu1-jammy1 (from versions: none)
ERROR: No matching distribution found for uhd=3D=3DUHD_4.8.0.0ubuntu1-jammy1

$ python3 -m pip index versions uhd
WARNING: pip index is currently an experimental command. It may be
removed/changed in a future release without prior warning.
ERROR: No matching distribution found for uhd
I tried UHD with a space, with an underline, are removing it; same result e=
ach time. What is the correct way to represent the specification for uhd=3D=
=3D?=C2=A0 Is Ubuntu 22 a mismatch with uhd 4.8.0.0?

------=_NextPart_53728188.872904595646
Content-Type: text/html;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-family: Ar=
ial;color: #1A1A1A;text-align: left" dir=3D"ltr">I'm having some trouble in=
stalling the python API. I've been using uhd for a long time, but this is t=
he first time for me to install the API. I am using Ubuntu 22.04 with "<spa=
n style=3D"color: rgb(0, 0, 0);font-family: Arial, Helvetica, sans-serif;fo=
nt-size: 13px">UHD 4.8.0.0ubuntu1-jammy1", as reported by the first line of=
 code below, and python 3.12.3.is from the manual webpage:</span><div><p st=
yle=3D"font-variant-numeric: normal;font-variant-east-asian: normal;font-va=
riant-alternates: normal;font-size-adjust: none;font-kerning: auto;font-opt=
ical-sizing: auto;font-feature-settings: normal;font-variation-settings: no=
rmal;font-variant-position: normal;font-stretch: normal;font-size: 14px;lin=
e-height: 22px;font-family: Roboto, sans-serif;color: rgb(0, 0, 0)">To perf=
orm the mentioned steps, use the commands below:</p><pre class=3D"fragment"=
 style=3D"direction: ltr;overflow: auto;border: 1px solid rgb(220, 224, 216=
);background-color: rgb(253, 253, 252);padding: 4px 6px;margin: 4px 8px 4px=
 2px;overflow-wrap: break-word;line-height: 18.375px;font-family: monospace=
, fixed;font-size: 14.7px;color: rgb(0, 0, 0)">&lt;UHD Install Dir&gt;\bin\=
uhd_config_info.exe --version #find the version of UHD
&lt;python&gt; -m pip install uhd=3D=3D&lt;version_from_config_info&gt; #in=
stall matching wheel</pre><p style=3D"font-variant-numeric: normal;font-var=
iant-east-asian: normal;font-variant-alternates: normal;font-size-adjust: n=
one;font-kerning: auto;font-optical-sizing: auto;font-feature-settings: nor=
mal;font-variation-settings: normal;font-variant-position: normal;font-stre=
tch: normal;font-size: 14px;line-height: 22px;font-family: Roboto, sans-ser=
if;color: rgb(0, 0, 0)"><span style=3D"font-family: Arial, Helvetica, sans-=
serif;font-size: 13px">$ python3 -m pip install uhd=3D=3DUHD_4.8.0.0ubuntu1=
-jammy1</span><br style=3D"font-family: Arial, Helvetica, sans-serif;font-s=
ize: 13px"><span style=3D"font-family: Arial, Helvetica, sans-serif;font-si=
ze: 13px">ERROR: Could not find a version that satisfies the requirement</s=
pan><br style=3D"font-family: Arial, Helvetica, sans-serif;font-size: 13px"=
><span style=3D"font-family: Arial, Helvetica, sans-serif;font-size: 13px">=
uhd=3D=3DUHD_4.8.0.0ubuntu1-jammy1 (from versions: none)</span><br style=3D=
"font-family: Arial, Helvetica, sans-serif;font-size: 13px"><span style=3D"=
font-family: Arial, Helvetica, sans-serif;font-size: 13px">ERROR: No matchi=
ng distribution found for uhd=3D=3DUHD_4.8.0.0ubuntu1-jammy1</span><br styl=
e=3D"font-family: Arial, Helvetica, sans-serif;font-size: 13px"><br style=
=3D"font-family: Arial, Helvetica, sans-serif;font-size: 13px"><span style=
=3D"font-family: Arial, Helvetica, sans-serif;font-size: 13px">$ python3 -m=
 pip index versions uhd</span><br style=3D"font-family: Arial, Helvetica, s=
ans-serif;font-size: 13px"><span style=3D"font-family: Arial, Helvetica, sa=
ns-serif;font-size: 13px">WARNING: pip index is currently an experimental c=
ommand. It may be</span><br style=3D"font-family: Arial, Helvetica, sans-se=
rif;font-size: 13px"><span style=3D"font-family: Arial, Helvetica, sans-ser=
if;font-size: 13px">removed/changed in a future release without prior warni=
ng.</span><br style=3D"font-family: Arial, Helvetica, sans-serif;font-size:=
 13px"><span style=3D"font-family: Arial, Helvetica, sans-serif;font-size: =
13px">ERROR: No matching distribution found for uhd</span></p><p style=3D"f=
ont-variant-numeric: normal;font-variant-east-asian: normal;font-variant-al=
ternates: normal;font-size-adjust: none;font-kerning: auto;font-optical-siz=
ing: auto;font-feature-settings: normal;font-variation-settings: normal;fon=
t-variant-position: normal;font-stretch: normal;font-size: 14px;line-height=
: 22px;font-family: Roboto, sans-serif;color: rgb(0, 0, 0)">I tried UHD wit=
h a space, with an underline, are removing it; same result each time. What =
is the correct way to represent the specification for uhd=3D=3D?&nbsp; Is U=
buntu 22 a mismatch with uhd 4.8.0.0?</p><p style=3D"font-variant-numeric: =
normal;font-variant-east-asian: normal;font-variant-alternates: normal;font=
-size-adjust: none;font-kerning: auto;font-optical-sizing: auto;font-featur=
e-settings: normal;font-variation-settings: normal;font-variant-position: n=
ormal;font-stretch: normal;font-size: 14px;line-height: 22px;font-family: R=
oboto, sans-serif;color: rgb(0, 0, 0)"><br></p></div></div>
------=_NextPart_53728188.872904595646--

--===============6451804799734861202==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6451804799734861202==--
