Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4E06F5FFA
	for <lists+usrp-users@lfdr.de>; Wed,  3 May 2023 22:21:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7328E384829
	for <lists+usrp-users@lfdr.de>; Wed,  3 May 2023 16:21:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683145303; bh=3lsL3l0IDC0M76lRYbAvrKNxN2BCc+MAVzmoDFKuCQA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=DsWynWDOnivPaV1mcY2fXoFuUIJG98FMooMnugMr/HY+kSOoWN+PwEv3QFeiS0Gi5
	 zcioMpzexXhzdhjNeM7idHD2j7GVQeLXnZ0wrGxlbywJV/MDoRsGjrfER6poewgoAK
	 X7XExF13KIA4hOHA734u1CQ0L9t1d/7YHa527m2fJ7B7U7eJa8CLS+2jBB61OI9H5s
	 iAEb74GPg37kXC1n8PjTMM1HY5qALDjxypEcBrygq/4XEicfCeL7EjYxkhZplAwolx
	 1qv9HD83SMhu4xvBb8lwS8T48PmmEE31wVDexgBI76WKOCvAe67uA+5oDU9WLHZ12W
	 1yChTAOoSMEZQ==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 15C4138400C
	for <usrp-users@lists.ettus.com>; Wed,  3 May 2023 16:21:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Wzas54Da";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-958bb7731a9so1109888066b.0
        for <usrp-users@lists.ettus.com>; Wed, 03 May 2023 13:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683145282; x=1685737282;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8pyvd0639OdTZ10wutL7tlyDoQjojRiuwWYWw1hMekw=;
        b=Wzas54DaXc4ATmcNotw8ZLbf/N+hYWd5eK5HM4s8p5LRujVW5cFiW7RJGoe72jgJbL
         y/AhtDrXbFEueMdXh069w1QMqXVQ+Vh7TceVbKUQ2TBK2v3WvLc5ZmSbC9q3R9BVKL4i
         +1DdIc8CbQPcQRbPWoE0nn1TULjYT6AvjkqIUJMP8RS87g9Qtbq49kE16GK+PH4L47wK
         gbCSwCPcQUmGqkHeKoFhVNDYxY3bIka/xcu5IVoINzx7sChpwAwMHkVMzV9+e/3Ac7V8
         2RurYVouZh/+ro/9j1LMTY0vZ0lVh3aAGAtwlHNNWwzLlmJybDLmA/VAXGsUDeqeydUv
         1SGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683145282; x=1685737282;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8pyvd0639OdTZ10wutL7tlyDoQjojRiuwWYWw1hMekw=;
        b=IUW0TOZVi2EnRgJtk1pkKetbjOGsOkdz0jh7Ic82C2bfjZrx8sGhclXwkym+yHYr1u
         cIIfE2PfTmNVwhUsfstZJQjik4C6Wb9pcQyDjSJwDfopDGkiRrVeUF3iXnCnTlXMFfyj
         iCgOmEJbseC5cYC50Ms4ogXm2YYWCX/tNWvugVnoluJPvV3sgfYsBhGqSyDN6jbEm1FI
         hLc3fUGgvfWCaFnVj4ArpHV9SmFmSrso9yUA3HNx+Blw+Gq7oBe62bX3FyQCSNelVN1M
         6Xd/YEFDtxjjW06ocIhI1PK5oNggoc0zwL4VuTQFyiAuqf7qOtqo8T80ohA6O0wdjutg
         NS0w==
X-Gm-Message-State: AC+VfDx68NlzFm1A0sJ6BOTk3lexneZDhwfIjn38/WPbX8R707ZMtGmS
	l4YpK10w1o0EgUG5Nirp2kmAz/yXr/8TIlCu8hrzGp2P
X-Google-Smtp-Source: ACHHUZ49pxTkVkTZ1YF9B/ZDgm9EPGFpjgW1bjGMXzu/3WPhWyWK0Ruh0hj1nIHxlxE1RctGWDvMXPUQzZ522P8esXg=
X-Received: by 2002:a17:907:9722:b0:889:5686:486a with SMTP id
 jg34-20020a170907972200b008895686486amr4229789ejc.30.1683145281607; Wed, 03
 May 2023 13:21:21 -0700 (PDT)
MIME-Version: 1.0
References: <tIHW0hfmq6zm852uNJmdiB4DIPKv1j0etaPhSqws@lists.ettus.com>
In-Reply-To: <tIHW0hfmq6zm852uNJmdiB4DIPKv1j0etaPhSqws@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 3 May 2023 16:21:10 -0400
Message-ID: <CAEXYVK68ogoNnHkJLwhoYQG9oDpuaG9fNHHZ_Deift5FOumaJg@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: MLZIF7CSDMYOD5TEIKTTEUMVWVQQYUUR
X-Message-ID-Hash: MLZIF7CSDMYOD5TEIKTTEUMVWVQQYUUR
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Block Not found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MLZIF7CSDMYOD5TEIKTTEUMVWVQQYUUR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8124732894554257574=="

--===============8124732894554257574==
Content-Type: multipart/alternative; boundary="0000000000009d9ea905facfcc5c"

--0000000000009d9ea905facfcc5c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Try doing:

  uhd_usrp_probe --interactive-ref-iface 0/Block#0

And inside there, try:

  peek32 0

What does it print out?  Does it match your NOC_ID in your controller?

Brian

On Wed, May 3, 2023 at 4:03=E2=80=AFPM <jmaloyan@umass.edu> wrote:

> This is the output of uhd_usrp_probe
>
>
> /
>
> | Device: N300-Series Device
>
> | _____________________________________________________
>
> | /
>
> | | Mboard: ni-n3xx-3255102
>
> | | dboard_0_pid: 338
>
> | | dboard_0_serial: 3252A17
>
> | | dboard_1_pid: 338
>
> | | dboard_1_serial: 3252A18
>
> | | eeprom_version: 3
>
> | | fs_version: 20230131233809
>
> | | mender_artifact: v4.4.0.0_n3xx
>
> | | mpm_sw_version: 4.4.0.0-g5fac246b
>
> | | pid: 16962
>
> | | product: n320
>
> | | rev: 10
>
> | | rpc_connection: remote
>
> | | serial: 3255102
>
> | | type: n3xx
>
> | | MPM Version: 4.4
>
> | | FPGA Version: 8.1
>
> | | FPGA git hash: 5fac246.dirty
>
> | | RFNoC capable: Yes
>
> | |
>
> | | Time sources: internal, external, gpsdo, sfp0
>
> | | Clock sources: external, internal, gpsdo
>
> | | Sensors: ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky,
> gps_time, gps_tpv
>
> | _____________________________________________________
>
> | /
>
> | | RFNoC blocks on this device:
>
> | |
>
> | | * 0/Block#0
>
> | | * 0/Block#1
>
> | | * 0/Radio#0
>
> | | * 0/Radio#1
>
> | | * 0/Replay#0
>
> | ________________
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009d9ea905facfcc5c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Try doing:<div><br></div><div>=C2=A0 uhd_usrp_probe --inte=
ractive-ref-iface 0/Block#0</div><div><br></div><div>And inside there, try:=
</div><div><br></div><div>=C2=A0 peek32 0</div><div><br></div><div>What doe=
s it print=C2=A0out?=C2=A0 Does it match your NOC_ID in your controller?</d=
iv><div><br></div><div>Brian</div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, May 3, 2023 at 4:03=E2=80=AFPM &l=
t;<a href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.edu</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>This is the ou=
tput of uhd_usrp_probe</p><p><br></p><p>/</p><p>|       Device: N300-Series=
 Device</p><p>|     _____________________________________________________</=
p><p>|    /</p><p>|   |       Mboard: ni-n3xx-3255102</p><p>|   |   dboard_=
0_pid: 338</p><p>|   |   dboard_0_serial: 3252A17</p><p>|   |   dboard_1_pi=
d: 338</p><p>|   |   dboard_1_serial: 3252A18</p><p>|   |   eeprom_version:=
 3</p><p>|   |   fs_version: 20230131233809</p><p>|   |   mender_artifact: =
v4.4.0.0_n3xx</p><p>|   |   mpm_sw_version: 4.4.0.0-g5fac246b</p><p>|   |  =
 pid: 16962</p><p>|   |   product: n320</p><p>|   |   rev: 10</p><p>|   |  =
 rpc_connection: remote</p><p>|   |   serial: 3255102</p><p>|   |   type: n=
3xx</p><p>|   |   MPM Version: 4.4</p><p>|   |   FPGA Version: 8.1</p><p>| =
  |   FPGA git hash: 5fac246.dirty</p><p>|   |   RFNoC capable: Yes</p><p>|=
   |   </p><p>|   |   Time sources:  internal, external, gpsdo, sfp0</p><p>=
|   |   Clock sources: external, internal, gpsdo</p><p>|   |   Sensors: ref=
_locked, gps_locked, temp, fan, gps_gpgga, gps_sky, gps_time, gps_tpv</p><p=
>|     _____________________________________________________</p><p>|    /</=
p><p>|   |       RFNoC blocks on this device:</p><p>|   |   </p><p>|   |   =
* 0/Block#0</p><p>|   |   * 0/Block#1</p><p>|   |   * 0/Radio#0</p><p>|   |=
   * 0/Radio#1</p><p>|   |   * 0/Replay#0</p><p>|     ________________</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009d9ea905facfcc5c--

--===============8124732894554257574==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8124732894554257574==--
