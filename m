Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0A33A2FBE
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jun 2021 17:46:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A9C6C38462D
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jun 2021 11:46:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dueO7oqq";
	dkim-atps=neutral
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	by mm2.emwd.com (Postfix) with ESMTPS id A873C383F19
	for <usrp-users@lists.ettus.com>; Thu, 10 Jun 2021 11:45:59 -0400 (EDT)
Received: by mail-io1-f49.google.com with SMTP id q3so4288419iop.11
        for <usrp-users@lists.ettus.com>; Thu, 10 Jun 2021 08:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=j9jgXrPMI2ujlYWN4FG5WlIVTxVsrGss5F5jJShLMMo=;
        b=dueO7oqqtBISsNntmuP3oSf4AU+nVPYFsimZ+vvNh/ewIyQFxkBZVSSEqwW+xdw4Oc
         Ga7pwlCY/pdVCUQlylTxroWv1QQCFFGW/Fbf/6gm31WUi4rhN2bygxk2sITq1yXV/lOj
         cZRgjJUlvWgGqBYlCunH/yveG36jqY2ruN9ds6cYS2eNAzSbtz0YlR9hNKfD0gsPzNo7
         AOK+pDGFS3/yyXpsxWRjEREXF3HhcchTt1dQOMx7gN5CqOD//0SphNvjVwe3axHe4iyV
         C56QoczeyV5qggLSb4/8/2rHK+2vxfrj+mVQqgEqlo2/WB0B+WuCefIukQ9JMFIT9s3A
         utrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=j9jgXrPMI2ujlYWN4FG5WlIVTxVsrGss5F5jJShLMMo=;
        b=lImeqUYyT00Q4/h/zagWP7vlNd4lC26DUpLni+r+FTcVkhBvcq81/hzAnMdT0yP+UM
         2oQoLfpJtQfwLFDp0uUXLUpO8h2RB6gGOFMf2mtttjILcpPYw4/bwOaFsxj0fEDnWRR+
         +7MYt0dKEzQit4stSQQEX3SiRMcH+tBE6wY53s9Wg5eW9xUIXSouuTVzoJ6uTgVvUVXb
         IJ1C/XpQiX6Xrvcg8PrUsDyZmDnW80wn3ZspwVzHEGlMULEf9YIyyezIipLTc3OOhINw
         eEy4RvpCvJnbtP6yugpYSVrnRpDJ+0j6jDYDIE0Vinya5fqpqVyzvvuJ+PCG5NwdoqFU
         4GUA==
X-Gm-Message-State: AOAM532dbwV4glA+PaP+k4EWUhXqmvigj8Ez+NhijPncmVHzH6bvv0R9
	eg3W5y59o1k2P7e0ndpJxLR3YZXV6B8IOCLhmdg=
X-Google-Smtp-Source: ABdhPJywWXtRFdv34P4T22lcHrBuf+PJFapdkiTWhqDf9ITnbl/hDv7oT5CCnZwaboJ6zmjjyIS5CKAIDZwGGgfpjeE=
X-Received: by 2002:a02:9442:: with SMTP id a60mr5377815jai.105.1623339958973;
 Thu, 10 Jun 2021 08:45:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAA7+tqRNbrhXA6zq7gyMnBC5wfv-gQ4tQ0J-4T4krLgO=n1UmA@mail.gmail.com>
In-Reply-To: <CAA7+tqRNbrhXA6zq7gyMnBC5wfv-gQ4tQ0J-4T4krLgO=n1UmA@mail.gmail.com>
From: Alex Humberstone <alex.m.humberstone@gmail.com>
Date: Thu, 10 Jun 2021 10:45:23 -0500
Message-ID: <CAE0dfYYycChzPKO1ce6eJ00Ozm1rJH8-uBnS-gcHzzRowBFVqw@mail.gmail.com>
To: Berkay SAYGILI <zuhasdasn@gmail.com>
Message-ID-Hash: NTAK3BCE2J4NON5RGS6VURMWAXXHKKQF
X-Message-ID-Hash: NTAK3BCE2J4NON5RGS6VURMWAXXHKKQF
X-MailFrom: alex.m.humberstone@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK is slower than ordinary way
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NTAK3BCE2J4NON5RGS6VURMWAXXHKKQF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1902862751310978603=="

--===============1902862751310978603==
Content-Type: multipart/alternative; boundary="0000000000009aba4c05c46b49b2"

--0000000000009aba4c05c46b49b2
Content-Type: text/plain; charset="UTF-8"

What versions of UHD and DPDK are you running?

Sincerely,
Alex-M-Humberstone
PhD Student
Klipsch School of Electrical Engineering
New Mexico State University (NMSU)
Las Cruces, New Mexico, USA



On Thu, 10 Jun 2021 at 07:56, Berkay SAYGILI <zuhasdasn@gmail.com> wrote:

> I installed DPDK, and finally it gives no error messages. On the other
> hand, when i use ixgbe driver with (my NIC is X520-DA2) 200 MHz bandwidth,
> no samples are dropped, but when i switch to vfio-pci and "use_dpdk=1" it
> starts to drop samples at 200 MHz bandwidth. I cant transmit at 200 MHz
> with a single channel with or without dpdk (it underflows). My uhd.conf and
> cpufreq-info are given below. I also isolated cores 2,3 and 4. Any idea why
> this happens?
>
> [use_dpdk=1]
> dpdk_mtu=9000
> dpdk_driver=/usr/local/lib/x86_64-linux-gnu/dpdk/pmds-18.11
> dpdk_corelist=2,3,4
> ;dpdk_num_mbufs=4096
> ;dpdk_mbuf_cache_size=64
> [dpdk_mac=xx:xx:xx:xx:xx:a0]
> dpdk_lcore = 3
> dpdk_ipv4 = 192.168.10.1/24
> ;dpdk_num_desc=4096
> [dpdk_mac=xx:xx:xx:xx:xx:a1]
> dpdk_lcore = 4
> dpdk_ipv4 = 192.168.20.1/24
>
> analyzing CPU 0:
>   driver: intel_pstate
>   CPUs which run at the same hardware frequency: 0
>   CPUs which need to have their frequency coordinated by software: 0
>   maximum transition latency: 4294.55 ms.
>   hardware limits: 800 MHz - 4.60 GHz
>   available cpufreq governors: performance, powersave
>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>                   The governor "performance" may decide which speed to use
>                   within this range.
>   current CPU frequency is 4.35 GHz.
> analyzing CPU 1:
>   driver: intel_pstate
>   CPUs which run at the same hardware frequency: 1
>   CPUs which need to have their frequency coordinated by software: 1
>   maximum transition latency: 4294.55 ms.
>   hardware limits: 800 MHz - 4.60 GHz
>   available cpufreq governors: performance, powersave
>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>                   The governor "performance" may decide which speed to use
>                   within this range.
>   current CPU frequency is 4.36 GHz.
> analyzing CPU 2:
>   driver: intel_pstate
>   CPUs which run at the same hardware frequency: 2
>   CPUs which need to have their frequency coordinated by software: 2
>   maximum transition latency: 4294.55 ms.
>   hardware limits: 800 MHz - 4.60 GHz
>   available cpufreq governors: performance, powersave
>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>                   The governor "performance" may decide which speed to use
>                   within this range.
>   current CPU frequency is 4.45 GHz.
> analyzing CPU 3:
>   driver: intel_pstate
>   CPUs which run at the same hardware frequency: 3
>   CPUs which need to have their frequency coordinated by software: 3
>   maximum transition latency: 4294.55 ms.
>   hardware limits: 800 MHz - 4.60 GHz
>   available cpufreq governors: performance, powersave
>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>                   The governor "performance" may decide which speed to use
>                   within this range.
>   current CPU frequency is 4.41 GHz.
> analyzing CPU 4:
>   driver: intel_pstate
>   CPUs which run at the same hardware frequency: 4
>   CPUs which need to have their frequency coordinated by software: 4
>   maximum transition latency: 4294.55 ms.
>   hardware limits: 800 MHz - 4.60 GHz
>   available cpufreq governors: performance, powersave
>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>                   The governor "performance" may decide which speed to use
>                   within this range.
>   current CPU frequency is 4.38 GHz.
> analyzing CPU 5:
>   driver: intel_pstate
>   CPUs which run at the same hardware frequency: 5
>   CPUs which need to have their frequency coordinated by software: 5
>   maximum transition latency: 4294.55 ms.
>   hardware limits: 800 MHz - 4.60 GHz
>   available cpufreq governors: performance, powersave
>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>                   The governor "performance" may decide which speed to use
>                   within this range.
>   current CPU frequency is 4.40 GHz.
> analyzing CPU 6:
>   driver: intel_pstate
>   CPUs which run at the same hardware frequency: 6
>   CPUs which need to have their frequency coordinated by software: 6
>   maximum transition latency: 4294.55 ms.
>   hardware limits: 800 MHz - 4.60 GHz
>   available cpufreq governors: performance, powersave
>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>                   The governor "performance" may decide which speed to use
>                   within this range.
>   current CPU frequency is 4.35 GHz.
> analyzing CPU 7:
>   driver: intel_pstate
>   CPUs which run at the same hardware frequency: 7
>   CPUs which need to have their frequency coordinated by software: 7
>   maximum transition latency: 4294.55 ms.
>   hardware limits: 800 MHz - 4.60 GHz
>   available cpufreq governors: performance, powersave
>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>                   The governor "performance" may decide which speed to use
>                   within this range.
>   current CPU frequency is 4.36 GHz.
> analyzing CPU 8:
>   driver: intel_pstate
>   CPUs which run at the same hardware frequency: 8
>   CPUs which need to have their frequency coordinated by software: 8
>   maximum transition latency: 4294.55 ms.
>   hardware limits: 800 MHz - 4.60 GHz
>   available cpufreq governors: performance, powersave
>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>                   The governor "performance" may decide which speed to use
>                   within this range.
>   current CPU frequency is 4.36 GHz.
> analyzing CPU 9:
>   driver: intel_pstate
>   CPUs which run at the same hardware frequency: 9
>   CPUs which need to have their frequency coordinated by software: 9
>   maximum transition latency: 4294.55 ms.
>   hardware limits: 800 MHz - 4.60 GHz
>   available cpufreq governors: performance, powersave
>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>                   The governor "performance" may decide which speed to use
>                   within this range.
>   current CPU frequency is 4.30 GHz.
> analyzing CPU 10:
>   driver: intel_pstate
>   CPUs which run at the same hardware frequency: 10
>   CPUs which need to have their frequency coordinated by software: 10
>   maximum transition latency: 4294.55 ms.
>   hardware limits: 800 MHz - 4.60 GHz
>   available cpufreq governors: performance, powersave
>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>                   The governor "performance" may decide which speed to use
>                   within this range.
>   current CPU frequency is 4.39 GHz.
> analyzing CPU 11:
>   driver: intel_pstate
>   CPUs which run at the same hardware frequency: 11
>   CPUs which need to have their frequency coordinated by software: 11
>   maximum transition latency: 4294.55 ms.
>   hardware limits: 800 MHz - 4.60 GHz
>   available cpufreq governors: performance, powersave
>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>                   The governor "performance" may decide which speed to use
>                   within this range.
>   current CPU frequency is 4.35 GHz.
>
> Best Regards
>
> Berkay S.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009aba4c05c46b49b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e;font-size:large">What versions of UHD and DPDK are you running?</div><div=
 class=3D"gmail_default" style=3D"font-family:monospace;font-size:large"><b=
r></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"g=
mail_signature"><div dir=3D"ltr"><font size=3D"4"><span style=3D"font-famil=
y:monospace">Sincerely,<br></span></font><div><font size=3D"4"><span style=
=3D"font-family:monospace">Alex-M-Humberstone</span></font></div><div><font=
 size=3D"4"><span style=3D"font-family:monospace">PhD Student</span></font>=
</div><div><font size=3D"4"><span style=3D"font-family:monospace">Klipsch S=
chool of Electrical Engineering<br></span></font></div><div><font size=3D"4=
"><span style=3D"font-family:monospace">New Mexico State University (NMSU)<=
br><span><span>Las Cruces, </span></span>New Mexico, USA</span></font></div=
><div><font size=3D"4"><span style=3D"font-family:monospace"><br></span></f=
ont></div><div><font size=3D"4"><span style=3D"font-family:monospace"></spa=
n></font></div></div></div></div><br></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Thu, 10 Jun 2021 at 07:56, Berkay S=
AYGILI &lt;<a href=3D"mailto:zuhasdasn@gmail.com">zuhasdasn@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div>I installed DPDK, and finally it gives no error messages. O=
n the other hand, when i use ixgbe driver with (my NIC is X520-DA2) 200 MHz=
 bandwidth, no samples are dropped, but when i switch to vfio-pci and &quot=
;use_dpdk=3D1&quot; it starts to drop samples at 200 MHz bandwidth. I cant =
transmit at 200 MHz with a single channel with or without dpdk (it underflo=
ws). My uhd.conf and cpufreq-info are given below. I also isolated cores 2,=
3 and 4. Any idea why this happens?<br></div><div><br></div><div>[use_dpdk=
=3D1]<br>dpdk_mtu=3D9000<br>dpdk_driver=3D/usr/local/lib/x86_64-linux-gnu/d=
pdk/pmds-18.11<br>dpdk_corelist=3D2,3,4<br>;dpdk_num_mbufs=3D4096<br>;dpdk_=
mbuf_cache_size=3D64<br>[dpdk_mac=3Dxx:xx:xx:xx:xx:a0]<br>dpdk_lcore =3D 3<=
br>dpdk_ipv4 =3D <a href=3D"http://192.168.10.1/24" target=3D"_blank">192.1=
68.10.1/24</a><br>;dpdk_num_desc=3D4096<br>[dpdk_mac=3Dxx:xx:xx:xx:xx:a1]<b=
r>dpdk_lcore =3D 4<br>dpdk_ipv4 =3D <a href=3D"http://192.168.20.1/24" targ=
et=3D"_blank">192.168.20.1/24</a></div><div><br></div><div>analyzing CPU 0:=
<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs which run at the same hardwa=
re frequency: 0<br>=C2=A0 CPUs which need to have their frequency coordinat=
ed by software: 0<br>=C2=A0 maximum transition latency: 4294.55 ms.<br>=C2=
=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 available cpufreq governo=
rs: performance, powersave<br>=C2=A0 current policy: frequency should be wi=
thin 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 The governor &quot;performance&quot; may decide which spe=
ed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 within this range.<br>=C2=A0 current CPU frequency is 4.35 GHz.<br>analyzi=
ng CPU 1:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs which run at the sa=
me hardware frequency: 1<br>=C2=A0 CPUs which need to have their frequency =
coordinated by software: 1<br>=C2=A0 maximum transition latency: 4294.55 ms=
.<br>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 available cpufreq=
 governors: performance, powersave<br>=C2=A0 current policy: frequency shou=
ld be within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;performance&quot; may decide=
 which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 within this range.<br>=C2=A0 current CPU frequency is 4.36 GHz.<=
br>analyzing CPU 2:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs which run=
 at the same hardware frequency: 2<br>=C2=A0 CPUs which need to have their =
frequency coordinated by software: 2<br>=C2=A0 maximum transition latency: =
4294.55 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 availab=
le cpufreq governors: performance, powersave<br>=C2=A0 current policy: freq=
uency should be within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;performance&quot; ma=
y decide which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 current CPU frequency is =
4.45 GHz.<br>analyzing CPU 3:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs=
 which run at the same hardware frequency: 3<br>=C2=A0 CPUs which need to h=
ave their frequency coordinated by software: 3<br>=C2=A0 maximum transition=
 latency: 4294.55 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=
=A0 available cpufreq governors: performance, powersave<br>=C2=A0 current p=
olicy: frequency should be within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;perform=
ance&quot; may decide which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 current CPU fr=
equency is 4.41 GHz.<br>analyzing CPU 4:<br>=C2=A0 driver: intel_pstate<br>=
=C2=A0 CPUs which run at the same hardware frequency: 4<br>=C2=A0 CPUs whic=
h need to have their frequency coordinated by software: 4<br>=C2=A0 maximum=
 transition latency: 4294.55 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.60 =
GHz<br>=C2=A0 available cpufreq governors: performance, powersave<br>=C2=A0=
 current policy: frequency should be within 800 MHz and 4.60 GHz.<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot=
;performance&quot; may decide which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 curr=
ent CPU frequency is 4.38 GHz.<br>analyzing CPU 5:<br>=C2=A0 driver: intel_=
pstate<br>=C2=A0 CPUs which run at the same hardware frequency: 5<br>=C2=A0=
 CPUs which need to have their frequency coordinated by software: 5<br>=C2=
=A0 maximum transition latency: 4294.55 ms.<br>=C2=A0 hardware limits: 800 =
MHz - 4.60 GHz<br>=C2=A0 available cpufreq governors: performance, powersav=
e<br>=C2=A0 current policy: frequency should be within 800 MHz and 4.60 GHz=
.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The gov=
ernor &quot;performance&quot; may decide which speed to use<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=
=C2=A0 current CPU frequency is 4.40 GHz.<br>analyzing CPU 6:<br>=C2=A0 dri=
ver: intel_pstate<br>=C2=A0 CPUs which run at the same hardware frequency: =
6<br>=C2=A0 CPUs which need to have their frequency coordinated by software=
: 6<br>=C2=A0 maximum transition latency: 4294.55 ms.<br>=C2=A0 hardware li=
mits: 800 MHz - 4.60 GHz<br>=C2=A0 available cpufreq governors: performance=
, powersave<br>=C2=A0 current policy: frequency should be within 800 MHz an=
d 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 The governor &quot;performance&quot; may decide which speed to use<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within this =
range.<br>=C2=A0 current CPU frequency is 4.35 GHz.<br>analyzing CPU 7:<br>=
=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs which run at the same hardware f=
requency: 7<br>=C2=A0 CPUs which need to have their frequency coordinated b=
y software: 7<br>=C2=A0 maximum transition latency: 4294.55 ms.<br>=C2=A0 h=
ardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 available cpufreq governors: p=
erformance, powersave<br>=C2=A0 current policy: frequency should be within =
800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 The governor &quot;performance&quot; may decide which speed t=
o use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 wit=
hin this range.<br>=C2=A0 current CPU frequency is 4.36 GHz.<br>analyzing C=
PU 8:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs which run at the same h=
ardware frequency: 8<br>=C2=A0 CPUs which need to have their frequency coor=
dinated by software: 8<br>=C2=A0 maximum transition latency: 4294.55 ms.<br=
>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 available cpufreq gov=
ernors: performance, powersave<br>=C2=A0 current policy: frequency should b=
e within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 The governor &quot;performance&quot; may decide which=
 speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 within this range.<br>=C2=A0 current CPU frequency is 4.36 GHz.<br>a=
nalyzing CPU 9:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs which run at =
the same hardware frequency: 9<br>=C2=A0 CPUs which need to have their freq=
uency coordinated by software: 9<br>=C2=A0 maximum transition latency: 4294=
.55 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 available c=
pufreq governors: performance, powersave<br>=C2=A0 current policy: frequenc=
y should be within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;performance&quot; may de=
cide which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 within this range.<br>=C2=A0 current CPU frequency is 4.30 G=
Hz.<br>analyzing CPU 10:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs whic=
h run at the same hardware frequency: 10<br>=C2=A0 CPUs which need to have =
their frequency coordinated by software: 10<br>=C2=A0 maximum transition la=
tency: 4294.55 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 =
available cpufreq governors: performance, powersave<br>=C2=A0 current polic=
y: frequency should be within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;performance&q=
uot; may decide which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 current CPU freque=
ncy is 4.39 GHz.<br>analyzing CPU 11:<br>=C2=A0 driver: intel_pstate<br>=C2=
=A0 CPUs which run at the same hardware frequency: 11<br>=C2=A0 CPUs which =
need to have their frequency coordinated by software: 11<br>=C2=A0 maximum =
transition latency: 4294.55 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.60 G=
Hz<br>=C2=A0 available cpufreq governors: performance, powersave<br>=C2=A0 =
current policy: frequency should be within 800 MHz and 4.60 GHz.<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;=
performance&quot; may decide which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 current=
 CPU frequency is 4.35 GHz.</div><div><br></div><div>Best Regards</div><div=
><br></div><div>Berkay S.<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009aba4c05c46b49b2--

--===============1902862751310978603==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1902862751310978603==--
