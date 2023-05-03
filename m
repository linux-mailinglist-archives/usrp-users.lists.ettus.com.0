Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5666F5FFD
	for <lists+usrp-users@lfdr.de>; Wed,  3 May 2023 22:22:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 795393842D0
	for <lists+usrp-users@lfdr.de>; Wed,  3 May 2023 16:22:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683145378; bh=0aIQkEWQCOCbnq5sMBERoNxaSSf/HsD7W4BtNukowzI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ghByGlCmCytjZGT3zJT0JtALdjN7sQknOX2zOgSyo4kj2pLOTvWMJ8kaXol2dWFBA
	 zywR2Jbrg+EnwQGTG8i0ik1zMxHV31GC4F4keM4QeZhdH9YtHxw2oLOZIOe2lE3tkA
	 C1auyvbWMMfP9yOl4+5LDdiXW7PkOWliZ3DPxepKixIxy5EKd9WXvBuJjvqRG2DtQl
	 +Xz7jOMEcyITdoCXsifLhxAlVGx46jGOlhSyaRK+TyymATiQCHmko3peRV0Hrs4vbj
	 +IvAE9V17Wpn2vv/jKLZmrgZve6esoSy49AuUsrr1CXw0s7iT23lgLZVjfDuAVOQcD
	 L1HXBtirphaJw==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 07CB338480E
	for <usrp-users@lists.ettus.com>; Wed,  3 May 2023 16:22:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jnN/XwYT";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-50be17a1eceso3116692a12.2
        for <usrp-users@lists.ettus.com>; Wed, 03 May 2023 13:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683145356; x=1685737356;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CLkVAV/xN4taSKPDr8B3UIMgP6+VOUrwdo/w0xYfjGI=;
        b=jnN/XwYT3/tHE7O0k/RWstMKN1BrIOpCg/tT3CDemFeDptYhJ3mSgO0/AR7/i86oHu
         LzON2bWyPAd0FpLAz68YMdQDnQrgBAPzVOts+C5zIkvh9VbhSJ1UXH2SjypYaIAX3LKH
         wRMPR3e2ZBFh2G5erVP/ufb0Wo4nEXc4qKPckKGDd7UzBj+IpRykge53z7Q1+IPch9ha
         P4WeRvwoyCa//8+FgiDA6TYrEqxpN9m3HQhDHJsCX0A3DMQLWMoExF/TLOJDjFZXDu/b
         VMpvcbrrnFIY1/oSFMC+NphRXCQWV4tnO3b3lcFLKP9ujU2Tt+QCjPGMGsNrCLkFfxnj
         DYaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683145356; x=1685737356;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CLkVAV/xN4taSKPDr8B3UIMgP6+VOUrwdo/w0xYfjGI=;
        b=KGdlfXFGA/xI5Znp28CdE2CxGR9WKoHoaXrgxu+pow8k2qkWJfbN9X8foJcyceovnx
         27zu6o712qwLknazThKqDU3csEZslP3DXn5EmL0VNgL9qLGdiuRvTxntjTfHz3VPXgnI
         VfCjwWUNaHTYxziamjxzRqIyxUToZdjbeO8l5e26hMi2JwHy+nnZcJtIg9cfUF3IFY1m
         Zd21ys3cE9T2jgrkoLbR/GOFaNWMVLrzku3OGNNx3r+SPzTLDEVBkOLhb/M8W97Z+TM1
         giR7VBp3a68PnRKKBu3xGAHp00dnhidaFWJ28zx2urnXltxQMo3ZsCOVdYNU3AiSkfrt
         z64w==
X-Gm-Message-State: AC+VfDyAEdEuqATpmxt4S25ImuRS25T1Bjr6t5NU/I6a/3A9UAW3bBDs
	kiTEEhXD4tzMyYtI0J6yzcOkxIVvD8FxAwla01Q1B6Mz
X-Google-Smtp-Source: ACHHUZ4V+knQPuHagd/VFg36Z3SO6/BzrRtBV7nysk4SKSP0I6XVN9lUqSv/r2/oocO4Qo8ZvIrH17UYANAJtPoANL0=
X-Received: by 2002:a17:907:784:b0:953:1f45:3ced with SMTP id
 xd4-20020a170907078400b009531f453cedmr3956080ejb.8.1683145355632; Wed, 03 May
 2023 13:22:35 -0700 (PDT)
MIME-Version: 1.0
References: <tIHW0hfmq6zm852uNJmdiB4DIPKv1j0etaPhSqws@lists.ettus.com> <CAEXYVK68ogoNnHkJLwhoYQG9oDpuaG9fNHHZ_Deift5FOumaJg@mail.gmail.com>
In-Reply-To: <CAEXYVK68ogoNnHkJLwhoYQG9oDpuaG9fNHHZ_Deift5FOumaJg@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 3 May 2023 16:22:24 -0400
Message-ID: <CAEXYVK51eOfk+xqHzczqrFQtdzwCLMVsr9BATt7TME2M32R2xg@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: WU3RLTFTSTMEYW6XFQSQ5FX75FIGWDRK
X-Message-ID-Hash: WU3RLTFTSTMEYW6XFQSQ5FX75FIGWDRK
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Block Not found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WU3RLTFTSTMEYW6XFQSQ5FX75FIGWDRK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1927339708086298038=="

--===============1927339708086298038==
Content-Type: multipart/alternative; boundary="00000000000007289405facfd11c"

--00000000000007289405facfd11c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Mistype:

  uhd_usrp_probe --interactive-reg-iface 0/Block#0

... also assuming 0/Block#0 and 0/Block#1 are the same and your own custom
blocks.

Unsure if this assumption is correct.

Brian

On Wed, May 3, 2023 at 4:21=E2=80=AFPM Brian Padalino <bpadalino@gmail.com>=
 wrote:

> Try doing:
>
>   uhd_usrp_probe --interactive-ref-iface 0/Block#0
>
> And inside there, try:
>
>   peek32 0
>
> What does it print out?  Does it match your NOC_ID in your controller?
>
> Brian
>
> On Wed, May 3, 2023 at 4:03=E2=80=AFPM <jmaloyan@umass.edu> wrote:
>
>> This is the output of uhd_usrp_probe
>>
>>
>> /
>>
>> | Device: N300-Series Device
>>
>> | _____________________________________________________
>>
>> | /
>>
>> | | Mboard: ni-n3xx-3255102
>>
>> | | dboard_0_pid: 338
>>
>> | | dboard_0_serial: 3252A17
>>
>> | | dboard_1_pid: 338
>>
>> | | dboard_1_serial: 3252A18
>>
>> | | eeprom_version: 3
>>
>> | | fs_version: 20230131233809
>>
>> | | mender_artifact: v4.4.0.0_n3xx
>>
>> | | mpm_sw_version: 4.4.0.0-g5fac246b
>>
>> | | pid: 16962
>>
>> | | product: n320
>>
>> | | rev: 10
>>
>> | | rpc_connection: remote
>>
>> | | serial: 3255102
>>
>> | | type: n3xx
>>
>> | | MPM Version: 4.4
>>
>> | | FPGA Version: 8.1
>>
>> | | FPGA git hash: 5fac246.dirty
>>
>> | | RFNoC capable: Yes
>>
>> | |
>>
>> | | Time sources: internal, external, gpsdo, sfp0
>>
>> | | Clock sources: external, internal, gpsdo
>>
>> | | Sensors: ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky,
>> gps_time, gps_tpv
>>
>> | _____________________________________________________
>>
>> | /
>>
>> | | RFNoC blocks on this device:
>>
>> | |
>>
>> | | * 0/Block#0
>>
>> | | * 0/Block#1
>>
>> | | * 0/Radio#0
>>
>> | | * 0/Radio#1
>>
>> | | * 0/Replay#0
>>
>> | ________________
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000007289405facfd11c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Mistype:<div><br></div><div>=C2=A0 uhd_usrp_probe --intera=
ctive-reg-iface 0/Block#0</div><div><br></div><div>... also assuming 0/Bloc=
k#0 and 0/Block#1 are the same and your own custom blocks.</div><div><br></=
div><div>Unsure if this assumption is correct.</div><div><br></div><div>Bri=
an</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Wed, May 3, 2023 at 4:21=E2=80=AFPM Brian Padalino &lt;<a href=
=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Try doi=
ng:<div><br></div><div>=C2=A0 uhd_usrp_probe --interactive-ref-iface 0/Bloc=
k#0</div><div><br></div><div>And inside there, try:</div><div><br></div><di=
v>=C2=A0 peek32 0</div><div><br></div><div>What does it print=C2=A0out?=C2=
=A0 Does it match your NOC_ID in your controller?</div><div><br></div><div>=
Brian</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Wed, May 3, 2023 at 4:03=E2=80=AFPM &lt;<a href=3D"mailto:jma=
loyan@umass.edu" target=3D"_blank">jmaloyan@umass.edu</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><p>This is the output =
of uhd_usrp_probe</p><p><br></p><p>/</p><p>|       Device: N300-Series Devi=
ce</p><p>|     _____________________________________________________</p><p>=
|    /</p><p>|   |       Mboard: ni-n3xx-3255102</p><p>|   |   dboard_0_pid=
: 338</p><p>|   |   dboard_0_serial: 3252A17</p><p>|   |   dboard_1_pid: 33=
8</p><p>|   |   dboard_1_serial: 3252A18</p><p>|   |   eeprom_version: 3</p=
><p>|   |   fs_version: 20230131233809</p><p>|   |   mender_artifact: v4.4.=
0.0_n3xx</p><p>|   |   mpm_sw_version: 4.4.0.0-g5fac246b</p><p>|   |   pid:=
 16962</p><p>|   |   product: n320</p><p>|   |   rev: 10</p><p>|   |   rpc_=
connection: remote</p><p>|   |   serial: 3255102</p><p>|   |   type: n3xx</=
p><p>|   |   MPM Version: 4.4</p><p>|   |   FPGA Version: 8.1</p><p>|   |  =
 FPGA git hash: 5fac246.dirty</p><p>|   |   RFNoC capable: Yes</p><p>|   | =
  </p><p>|   |   Time sources:  internal, external, gpsdo, sfp0</p><p>|   |=
   Clock sources: external, internal, gpsdo</p><p>|   |   Sensors: ref_lock=
ed, gps_locked, temp, fan, gps_gpgga, gps_sky, gps_time, gps_tpv</p><p>|   =
  _____________________________________________________</p><p>|    /</p><p>=
|   |       RFNoC blocks on this device:</p><p>|   |   </p><p>|   |   * 0/B=
lock#0</p><p>|   |   * 0/Block#1</p><p>|   |   * 0/Radio#0</p><p>|   |   * =
0/Radio#1</p><p>|   |   * 0/Replay#0</p><p>|     ________________</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--00000000000007289405facfd11c--

--===============1927339708086298038==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1927339708086298038==--
