Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFB21394A0
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jan 2020 16:19:10 +0100 (CET)
Received: from [::1] (port=53282 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ir1Uc-0004vN-PS; Mon, 13 Jan 2020 10:19:02 -0500
Received: from mail-oi1-f178.google.com ([209.85.167.178]:37077)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bpadalino@gmail.com>) id 1ir1Ua-0004rp-2K
 for usrp-users@lists.ettus.com; Mon, 13 Jan 2020 10:19:00 -0500
Received: by mail-oi1-f178.google.com with SMTP id z64so8579590oia.4
 for <usrp-users@lists.ettus.com>; Mon, 13 Jan 2020 07:18:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=10xrL1x4l1LDZrK5yXIo+hFYdtJbHMN32nQtaFVSM30=;
 b=lKmVxIvSuwSAkuFzT2gE8FEHrxTVGd3EMIRoYFxZhPYuxClqCZQYAlfBvj8RZZLk3C
 M2hSWRfM8chvSnne0Bs/i4Qmxjk6wslUR6TP1gBcVFU1SPftx+V96hU2z6Vj2bWHMw77
 hQPrsuvAJ9DbY6gUq+T+9qypKm3tnUG+ec538M2C19dKwlFuDC9CeStcp5TntWQ3wrcx
 /eyZL9mYWRdJFZtgcsvLdDHPjXuLWBUGPLR1dAOqMZy47iEPmeGoHijWY2zHpZ18t6wo
 /y2uXEkJL8Pqyu8nNsxXfTMZ7WW484i9efk8U4b9VO4f3LZcFqZ+2Cje1zGZp/YsyIQN
 aY5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=10xrL1x4l1LDZrK5yXIo+hFYdtJbHMN32nQtaFVSM30=;
 b=g693T8yDUg9GstvIa1vHyvVe4Lw/T7G/n0HQPhdrkY71WzxxJk1pFweZtC59Prvyb4
 1mzUEH36gbg4NYuz15kf/AIKLsHmoZ4M77vV3u9JMEHfuJDrndgaXJC2xx1g30uBKZMR
 6huv3c34auhMGotNzCVVcs6VVRsLSFsWys6WLysOfFBgKJwn7WTZpxxRbpXr75/xdKyF
 NpK+kdkfGYwJ3tHjrUFANppSdT9Ene9XENwjUaf8jP87JfhQkh9dAkDMjMWl030YZjFV
 2ki1K7W3LZ3S2ieGq09WIP3RXN1+8rvIyxcyl0b15MFT2KKQV1nkzGC7xNj/D/Y0s9JC
 BVgA==
X-Gm-Message-State: APjAAAVqQmHyblRjb2qEz0grFyImREhDFFiuNAWtePETWCRO/69tqyxA
 HjoCYVsPoDb3jzgaOy+neafOsLOWh6O35EKgDkc=
X-Google-Smtp-Source: APXvYqx87iJ0l655fra7/moqF/1zFHt/mAnjWBuvd67b9jNihqN7TJOL0va2U/dZArAk44C2tvATz+E9yrkJfw+iTPU=
X-Received: by 2002:aca:ab0e:: with SMTP id u14mr13531661oie.1.1578928699058; 
 Mon, 13 Jan 2020 07:18:19 -0800 (PST)
MIME-Version: 1.0
References: <826572958.9669290.1578669344799.ref@mail.yahoo.com>
 <826572958.9669290.1578669344799@mail.yahoo.com>
 <CANf970bnEtmcTCOkYseriRLnXLc668Q1Krq9EvseYxrpnrTUSQ@mail.gmail.com>
 <155074570.9720577.1578676938651@mail.yahoo.com>
 <740862592.10631399.1578910940117@mail.yahoo.com>
In-Reply-To: <740862592.10631399.1578910940117@mail.yahoo.com>
Date: Mon, 13 Jan 2020 10:18:07 -0500
Message-ID: <CAEXYVK6uCz-To=3a-pnn+ztimOUApL5o=Zrde=QkvC2jD-qoow@mail.gmail.com>
To: voonna santosh <santu_voonna@yahoo.com>
Subject: Re: [USRP-users] Run time issue with 3.14.1.1 (X300 with UBX)
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8469549677898785985=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============8469549677898785985==
Content-Type: multipart/alternative; boundary="0000000000003baeb7059c06fce0"

--0000000000003baeb7059c06fce0
Content-Type: text/plain; charset="UTF-8"

On Mon, Jan 13, 2020 at 5:23 AM voonna santosh via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Sam,
>    I have managed to reproduce this issue and when it happens, here is the
> info you have asked for:
>
>
> 1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group
> default qlen 1000
>     link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
>     inet 127.0.0.1/8 scope host lo
>        valid_lft forever preferred_lft forever
>     inet6 ::1/128 scope host
>        valid_lft forever preferred_lft forever
> 2: enp3s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq state UP
> group default qlen 1000
>     link/ether 00:e0:4b:6b:0c:41 brd ff:ff:ff:ff:ff:ff
>     inet 192.168.40.20/24 brd 192.168.40.255 scope global noprefixroute
> enp3s0f0
>        valid_lft forever preferred_lft forever
>     inet6 fe80::2e0:4bff:fe6b:c41/64 scope link
>        valid_lft forever preferred_lft forever
> 3: enp3s0f1: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state
> DOWN group default qlen 1000
>     link/ether 00:e0:4b:6b:0c:42 brd ff:ff:ff:ff:ff:ff
> 4: enp8s0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state
> DOWN group default qlen 1000
>     link/ether 00:0c:8b:71:75:78 brd ff:ff:ff:ff:ff:ff
> 5: enp15s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP
> group default qlen 1000
>     link/ether 00:e0:4b:6b:0c:43 brd ff:ff:ff:ff:ff:ff
>     inet 192.168.10.20/24 brd 192.168.10.255 scope global noprefixroute
> enp15s0
>        valid_lft forever preferred_lft forever
>     inet6 fe80::2e0:4bff:fe6b:c43/64 scope link
>        valid_lft forever preferred_lft forever
> 6: virbr0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue
> state DOWN group default qlen 1000
>     link/ether 52:54:00:07:9b:55 brd ff:ff:ff:ff:ff:ff
>     inet 192.168.122.1/24 brd 192.168.122.255 scope global virbr0
>        valid_lft forever preferred_lft forever
> 7: virbr0-nic: <BROADCAST,MULTICAST> mtu 1500 qdisc pfifo_fast master
> virbr0 state DOWN group default qlen 1000
>     link/ether 52:54:00:07:9b:55 brd ff:ff:ff:ff:ff:ff
>

Usually when I see this happen, there has been a drop or an error on the
interface.

Can you also give the output using the -s flag, so ip -s a?

Look for some non-zero number in errors or dropped columns.

Brian

--0000000000003baeb7059c06fce0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Jan 13, 2020 at 5:23 AM voonna sa=
ntosh via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp=
-users@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div><div style=3D"font-fa=
mily:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:16px">=
<div></div>
        <div dir=3D"ltr">Hi Sam,</div><div dir=3D"ltr">=C2=A0=C2=A0 I have =
managed to reproduce this issue and when it happens, here is the info you h=
ave asked for:</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><=
div dir=3D"ltr"><div>1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc no=
queue state UNKNOWN group default qlen 1000<br>=C2=A0=C2=A0=C2=A0 link/loop=
back 00:00:00:00:00:00 brd 00:00:00:00:00:00<br>=C2=A0=C2=A0=C2=A0 inet <a =
href=3D"http://127.0.0.1/8" target=3D"_blank">127.0.0.1/8</a> scope host lo=
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft fo=
rever<br>=C2=A0=C2=A0=C2=A0 inet6 ::1/128 scope host <br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft forever<br>2: enp3s0f0: =
&lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000 qdisc mq state UP group de=
fault qlen 1000<br>=C2=A0=C2=A0=C2=A0 link/ether 00:e0:4b:6b:0c:41 brd ff:f=
f:ff:ff:ff:ff<br>=C2=A0=C2=A0=C2=A0 inet <a href=3D"http://192.168.40.20/24=
" target=3D"_blank">192.168.40.20/24</a> brd 192.168.40.255 scope global no=
prefixroute enp3s0f0<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft fore=
ver preferred_lft forever<br>=C2=A0=C2=A0=C2=A0 inet6 fe80::2e0:4bff:fe6b:c=
41/64 scope link <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever=
 preferred_lft forever<br>3: enp3s0f1: &lt;NO-CARRIER,BROADCAST,MULTICAST,U=
P&gt; mtu 1500 qdisc mq state DOWN group default qlen 1000<br>=C2=A0=C2=A0=
=C2=A0 link/ether 00:e0:4b:6b:0c:42 brd ff:ff:ff:ff:ff:ff<br>4: enp8s0: &lt=
;NO-CARRIER,BROADCAST,MULTICAST,UP&gt; mtu 1500 qdisc mq state DOWN group d=
efault qlen 1000<br>=C2=A0=C2=A0=C2=A0 link/ether 00:0c:8b:71:75:78 brd ff:=
ff:ff:ff:ff:ff<br>5: enp15s0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1=
500 qdisc mq state UP group default qlen 1000<br>=C2=A0=C2=A0=C2=A0 link/et=
her 00:e0:4b:6b:0c:43 brd ff:ff:ff:ff:ff:ff<br>=C2=A0=C2=A0=C2=A0 inet <a h=
ref=3D"http://192.168.10.20/24" target=3D"_blank">192.168.10.20/24</a> brd =
192.168.10.255 scope global noprefixroute enp15s0<br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 valid_lft forever preferred_lft forever<br>=C2=A0=C2=A0=C2=
=A0 inet6 fe80::2e0:4bff:fe6b:c43/64 scope link <br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 valid_lft forever preferred_lft forever<br>6: virbr0: &lt;N=
O-CARRIER,BROADCAST,MULTICAST,UP&gt; mtu 1500 qdisc noqueue state DOWN grou=
p default qlen 1000<br>=C2=A0=C2=A0=C2=A0 link/ether 52:54:00:07:9b:55 brd =
ff:ff:ff:ff:ff:ff<br>=C2=A0=C2=A0=C2=A0 inet <a href=3D"http://192.168.122.=
1/24" target=3D"_blank">192.168.122.1/24</a> brd 192.168.122.255 scope glob=
al virbr0<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferr=
ed_lft forever<br>7: virbr0-nic: &lt;BROADCAST,MULTICAST&gt; mtu 1500 qdisc=
 pfifo_fast master virbr0 state DOWN group default qlen 1000<br>=C2=A0=C2=
=A0=C2=A0 link/ether 52:54:00:07:9b:55 brd ff:ff:ff:ff:ff:ff</div></div></d=
iv></div></blockquote><div><br></div><div>Usually when I see this happen, t=
here has been a drop or an error on the interface.</div><div><br></div><div=
>Can you also give the output using the -s flag, so ip -s a?</div><div><br>=
</div><div>Look for some non-zero number in errors or dropped columns.</div=
><div><br></div><div>Brian</div></div></div>

--0000000000003baeb7059c06fce0--


--===============8469549677898785985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8469549677898785985==--

