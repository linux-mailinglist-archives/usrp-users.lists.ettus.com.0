Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D52606F71C4
	for <lists+usrp-users@lfdr.de>; Thu,  4 May 2023 20:09:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 94D4E38492E
	for <lists+usrp-users@lfdr.de>; Thu,  4 May 2023 14:09:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683223751; bh=JUxmVrnRnHqTEnNxrzJiQj+4Vjpyw7GkddAUR7dGxS0=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=J2wF82qbDAFHbVFfFinStAPldosy8WGybRxNICD58qVNYrj90ZCkl9xTO9nqGb+zR
	 NJyQnZC1VVcua38Tc/b5YOwMO7rN0Min38l+Cqp0ZsQQzdl2twQZPcqIv6sRZ3RQDC
	 tNdfg51DuwesVzbDmmQLLakLYbAfyPS/0x0sKUTdSq6x5Hh27Et6Sjq6ZbYQqdAa3s
	 76tEF8ihElWJpVSHqfAua/H/XplJeMBIlbLlki4L0WR2oia9oRTC5smCITlk18TdnC
	 pvM2HUXBqanfneK3Iiqtg3n3ebSqxDbKoRvNaP7hEm6EcBgWz42UZqyp62v53UK51G
	 nZmoCvcNZizAQ==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id D19B6384702
	for <usrp-users@lists.ettus.com>; Thu,  4 May 2023 14:08:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Phe+fDI/";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-50bc456cc39so1258146a12.1
        for <usrp-users@lists.ettus.com>; Thu, 04 May 2023 11:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1683223729; x=1685815729;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OlOznkKFr/5rYNp4S0ym860oLyv6ZZgJ1rfvy73Nv0o=;
        b=Phe+fDI/MGe8GB51UqQ91nVgwRhqA8W3PYCTbIfao/PMw/LM9xYP4y7RC3NmMA5KWF
         KUa2ID/v84r04FihfSf5HwfUuppQ4QU6pDT/KNtdoxnlN5XNIoX6XeuF5GsWJLg7hLpn
         0r6tI8EpH8WXD35/WbiZkQnAunlel9wXUOhpkqKO6Msn8r/g7F+oEimM9PGNtXfnpD4d
         z/o6Gk2smCPPwFm29cclhBfI/SJRD0opml7DaoDKGimZTxhd0mBa9M+XbxDFd6QWleDC
         AIDnzid1A1U/XpmDSL8P3IF+Ihd8s1vjIqpfJIirLWq8cJ9tUQqw0k7eZmPT4MS9hCvU
         UB+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683223729; x=1685815729;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OlOznkKFr/5rYNp4S0ym860oLyv6ZZgJ1rfvy73Nv0o=;
        b=Bqf6xyDUWcTKzvBN4QRd20dcYnuYniBdDt89kcl7sPBvKPB3PymAixrUQkmLjcS7Qw
         OEakJINUwlWM74Qx3wcgqDRHzxfwvHQZUOre+3zRQE8SQStSF9EFNsL+59IHpCnK0wuX
         VJA77LLNJypD+nx9wmQloNCxUHdKxxFANUbR+flXw2tOHgmDBXTpDVStB/MEer/5n6oO
         h5MeikZcMnfdvs/cK4SUmF7D1sm63zg+c+v8pdiH/Qmn3df8a00m/XJ7Krcz4O7UDQTT
         83SlsVUuWEosdvtkZSnA0e3ilaYL5w8sOb9xGeft3OPpTiAxIZy3A2JOdMzwJhE3xzaR
         Qpow==
X-Gm-Message-State: AC+VfDx9iSxqudTJrzDTEJbuSFxLiJKzfDg6CwuKzkqWqvK4HvmDpVyE
	rwLHI1b4gOwheN1FQlrGXqRByhdYVTRp9CwVRbSfSg==
X-Google-Smtp-Source: ACHHUZ7AYGU+Uldi5iuT8kS0rBr5nil1yw/QIxmBtkNkXjdYHjYS/3MUwQS5ZHLcrvhNJXh8+4fUGEoDIY0xlCdNxbc=
X-Received: by 2002:a17:906:eec8:b0:94f:61f5:9ef7 with SMTP id
 wu8-20020a170906eec800b0094f61f59ef7mr6725094ejb.44.1683223729230; Thu, 04
 May 2023 11:08:49 -0700 (PDT)
MIME-Version: 1.0
References: <tIHW0hfmq6zm852uNJmdiB4DIPKv1j0etaPhSqws@lists.ettus.com>
 <CAEXYVK68ogoNnHkJLwhoYQG9oDpuaG9fNHHZ_Deift5FOumaJg@mail.gmail.com> <CAEXYVK51eOfk+xqHzczqrFQtdzwCLMVsr9BATt7TME2M32R2xg@mail.gmail.com>
In-Reply-To: <CAEXYVK51eOfk+xqHzczqrFQtdzwCLMVsr9BATt7TME2M32R2xg@mail.gmail.com>
Date: Thu, 4 May 2023 14:08:37 -0400
Message-ID: <CAB__hTTangPV5nhA79U24bLwBcwUsjtY8X5Qd8akiAPB-gUbEQ@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: 6PU5DFVUMWJEZO6FHQELVUPBX7MWAWGF
X-Message-ID-Hash: 6PU5DFVUMWJEZO6FHQELVUPBX7MWAWGF
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: jmaloyan@umass.edu, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Block Not found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6PU5DFVUMWJEZO6FHQELVUPBX7MWAWGF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7647452962237876619=="

--===============7647452962237876619==
Content-Type: multipart/alternative; boundary="000000000000759e9d05fae210ef"

--000000000000759e9d05fae210ef
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Joe,
It sounds like you wrote a block controller.  If not then this will need to
be done.  If so, then it is likely UHD is just not loading your block
controller (assuming it is compiled OOT).  If you set UHD_MODULE_PATH env
var to point to your dynamic library, then UHD will find it (but you will
want only this file in that folder because it will try to load every file
as a library).  Or, you can link to your library when you link your custom
app. Let me know if this doesn't make sense.
Rob

On Wed, May 3, 2023 at 4:23=E2=80=AFPM Brian Padalino <bpadalino@gmail.com>=
 wrote:

> Mistype:
>
>   uhd_usrp_probe --interactive-reg-iface 0/Block#0
>
> ... also assuming 0/Block#0 and 0/Block#1 are the same and your own custo=
m
> blocks.
>
> Unsure if this assumption is correct.
>
> Brian
>
> On Wed, May 3, 2023 at 4:21=E2=80=AFPM Brian Padalino <bpadalino@gmail.co=
m> wrote:
>
>> Try doing:
>>
>>   uhd_usrp_probe --interactive-ref-iface 0/Block#0
>>
>> And inside there, try:
>>
>>   peek32 0
>>
>> What does it print out?  Does it match your NOC_ID in your controller?
>>
>> Brian
>>
>> On Wed, May 3, 2023 at 4:03=E2=80=AFPM <jmaloyan@umass.edu> wrote:
>>
>>> This is the output of uhd_usrp_probe
>>>
>>>
>>> /
>>>
>>> | Device: N300-Series Device
>>>
>>> | _____________________________________________________
>>>
>>> | /
>>>
>>> | | Mboard: ni-n3xx-3255102
>>>
>>> | | dboard_0_pid: 338
>>>
>>> | | dboard_0_serial: 3252A17
>>>
>>> | | dboard_1_pid: 338
>>>
>>> | | dboard_1_serial: 3252A18
>>>
>>> | | eeprom_version: 3
>>>
>>> | | fs_version: 20230131233809
>>>
>>> | | mender_artifact: v4.4.0.0_n3xx
>>>
>>> | | mpm_sw_version: 4.4.0.0-g5fac246b
>>>
>>> | | pid: 16962
>>>
>>> | | product: n320
>>>
>>> | | rev: 10
>>>
>>> | | rpc_connection: remote
>>>
>>> | | serial: 3255102
>>>
>>> | | type: n3xx
>>>
>>> | | MPM Version: 4.4
>>>
>>> | | FPGA Version: 8.1
>>>
>>> | | FPGA git hash: 5fac246.dirty
>>>
>>> | | RFNoC capable: Yes
>>>
>>> | |
>>>
>>> | | Time sources: internal, external, gpsdo, sfp0
>>>
>>> | | Clock sources: external, internal, gpsdo
>>>
>>> | | Sensors: ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky,
>>> gps_time, gps_tpv
>>>
>>> | _____________________________________________________
>>>
>>> | /
>>>
>>> | | RFNoC blocks on this device:
>>>
>>> | |
>>>
>>> | | * 0/Block#0
>>>
>>> | | * 0/Block#1
>>>
>>> | | * 0/Radio#0
>>>
>>> | | * 0/Radio#1
>>>
>>> | | * 0/Replay#0
>>>
>>> | ________________
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000759e9d05fae210ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Joe,<div>It sounds like you wrote a block controller.=
=C2=A0 If not then this will need to be done.=C2=A0 If so, then it is likel=
y UHD is just not loading your block controller (assuming it is compiled OO=
T).=C2=A0 If you set UHD_MODULE_PATH env var to point to your dynamic libra=
ry, then UHD will find it (but you will want only this file in that folder =
because it will try to load every file as a library).=C2=A0 Or, you can lin=
k to your library when you link your custom app. Let me know if this doesn&=
#39;t make sense.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 3, 2023 at 4:23=E2=80=AFPM=
 Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_blank=
">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr">Mistype:<div><br></div><div>=C2=A0 uh=
d_usrp_probe --interactive-reg-iface 0/Block#0</div><div><br></div><div>...=
 also assuming 0/Block#0 and 0/Block#1 are the same and your own custom blo=
cks.</div><div><br></div><div>Unsure if this assumption is correct.</div><d=
iv><br></div><div>Brian</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, May 3, 2023 at 4:21=E2=80=AFPM Brian =
Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_blank">bpada=
lino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr">Try doing:<div><br></div><div>=C2=A0 uhd_usr=
p_probe --interactive-ref-iface 0/Block#0</div><div><br></div><div>And insi=
de there, try:</div><div><br></div><div>=C2=A0 peek32 0</div><div><br></div=
><div>What does it print=C2=A0out?=C2=A0 Does it match your NOC_ID in your =
controller?</div><div><br></div><div>Brian</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 3, 2023 at 4:03=
=E2=80=AFPM &lt;<a href=3D"mailto:jmaloyan@umass.edu" target=3D"_blank">jma=
loyan@umass.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><p>This is the output of uhd_usrp_probe</p><p><br></p><p>/</=
p><p>|       Device: N300-Series Device</p><p>|     _______________________=
______________________________</p><p>|    /</p><p>|   |       Mboard: ni-n3=
xx-3255102</p><p>|   |   dboard_0_pid: 338</p><p>|   |   dboard_0_serial: 3=
252A17</p><p>|   |   dboard_1_pid: 338</p><p>|   |   dboard_1_serial: 3252A=
18</p><p>|   |   eeprom_version: 3</p><p>|   |   fs_version: 20230131233809=
</p><p>|   |   mender_artifact: v4.4.0.0_n3xx</p><p>|   |   mpm_sw_version:=
 4.4.0.0-g5fac246b</p><p>|   |   pid: 16962</p><p>|   |   product: n320</p>=
<p>|   |   rev: 10</p><p>|   |   rpc_connection: remote</p><p>|   |   seria=
l: 3255102</p><p>|   |   type: n3xx</p><p>|   |   MPM Version: 4.4</p><p>| =
  |   FPGA Version: 8.1</p><p>|   |   FPGA git hash: 5fac246.dirty</p><p>| =
  |   RFNoC capable: Yes</p><p>|   |   </p><p>|   |   Time sources:  intern=
al, external, gpsdo, sfp0</p><p>|   |   Clock sources: external, internal, =
gpsdo</p><p>|   |   Sensors: ref_locked, gps_locked, temp, fan, gps_gpgga, =
gps_sky, gps_time, gps_tpv</p><p>|     ____________________________________=
_________________</p><p>|    /</p><p>|   |       RFNoC blocks on this devic=
e:</p><p>|   |   </p><p>|   |   * 0/Block#0</p><p>|   |   * 0/Block#1</p><p=
>|   |   * 0/Radio#0</p><p>|   |   * 0/Radio#1</p><p>|   |   * 0/Replay#0</=
p><p>|     ________________</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000759e9d05fae210ef--

--===============7647452962237876619==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7647452962237876619==--
