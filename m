Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D882D3A308A
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jun 2021 18:24:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8E5CC3848C4
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jun 2021 12:24:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="uXJBKKJT";
	dkim-atps=neutral
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 69A0C38481A
	for <usrp-users@lists.ettus.com>; Thu, 10 Jun 2021 12:12:27 -0400 (EDT)
Received: by mail-io1-f54.google.com with SMTP id a6so27696738ioe.0
        for <usrp-users@lists.ettus.com>; Thu, 10 Jun 2021 09:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=51uOg8ZfGrwWgyNwET9ndaeLQJirZttS6zqmY9T6lVo=;
        b=uXJBKKJT86rADuMt2uOa3o4Mis2KcyaTcX7W9bLc/ZRFsWR8d5iAAa8mWa+0SKq4vt
         X+Sv/6mUk1d7i5TreOUstdGCe1Ool5rQduyW2x2rTVlHbw0Wq2SupAztDWKkPheeswoj
         i7DO5PEK/fJW+YY5bpEF3fPkGqWzbVBh3DhFuOLPmFRPT7nW69//WVPBFYh9EBxQ9QQH
         9s76X6puA3hlvKOM20mtcKzClEb9w5WmD9Hr0rGR0QIFRC7xKatJc7qFpJ0DElyGW3in
         fj7vCKnnG0nw7Dh08sri7ss2QrBYKewnkGfzPaT+Q2TNSgzYrll9dZpQMctKwcwWQ9eW
         szhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=51uOg8ZfGrwWgyNwET9ndaeLQJirZttS6zqmY9T6lVo=;
        b=ZOlm1Hye+QYfvY/xQ2nmgNB09KUi6y8YN7PGSsAKQ4zT9cHrS48/Ks4VuahU5KNGUR
         pu0j4jiNoLW6Y9+tROa73liBPFI7KvMkX4mrswHZpwBcC7McG1h/S9KBui+i6GEki8Jg
         TY2q9fnCVxs49k/0qmwhqwxIc1AO7NYRFhvEMnKE9AYCiOcE8z6AZ97cLJXP+ddmiHWB
         TlicwDd4NSvAjWelO9oUHngUjBpNkaqOzvyg3ndJicAYYWaCjmq4dv402qdo5RdIdhGk
         3zzKxGnNP4IBr5a2OfOkB8t27G1bgYkS5edaVsYIfQWByeu3my0SYz5sVapmns4Gg/Rw
         xMgA==
X-Gm-Message-State: AOAM530RywgRcZyWU56CtNhwJIdi3ZYYim5cbUYtNuelR6M+fvGgeywj
	3xKgiQcUjR/xKcM5uX7HdcjvSVMTLaT/+e+f0wo=
X-Google-Smtp-Source: ABdhPJypqY2SZXBV9UyGVS5Yyo1757lURk9WbEAJPi7sdMdxVOfTK8MeMpEXgGFY1rd5iRcuEGTUMYJEG5om+z99/b0=
X-Received: by 2002:a02:c6bb:: with SMTP id o27mr5418304jan.85.1623341546520;
 Thu, 10 Jun 2021 09:12:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAA7+tqRNbrhXA6zq7gyMnBC5wfv-gQ4tQ0J-4T4krLgO=n1UmA@mail.gmail.com>
 <CAE0dfYYycChzPKO1ce6eJ00Ozm1rJH8-uBnS-gcHzzRowBFVqw@mail.gmail.com>
In-Reply-To: <CAE0dfYYycChzPKO1ce6eJ00Ozm1rJH8-uBnS-gcHzzRowBFVqw@mail.gmail.com>
From: Berkay SAYGILI <zuhasdasn@gmail.com>
Date: Thu, 10 Jun 2021 19:12:14 +0300
Message-ID: <CAA7+tqS+s8JaDh4WxXNEB93_96_YjqbJkk86h-TnYJOJ=p5ihQ@mail.gmail.com>
To: Alex Humberstone <alex.m.humberstone@gmail.com>
Message-ID-Hash: 5VCHZJKNFJH77FJ6PK4U2XBL2MB6MEIM
X-Message-ID-Hash: 5VCHZJKNFJH77FJ6PK4U2XBL2MB6MEIM
X-MailFrom: zuhasdasn@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK is slower than ordinary way
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5VCHZJKNFJH77FJ6PK4U2XBL2MB6MEIM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3002369698973420820=="

--===============3002369698973420820==
Content-Type: multipart/alternative; boundary="0000000000003aca3a05c46ba8ef"

--0000000000003aca3a05c46ba8ef
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

UHD 4 and DPDK 18.11 on Ubuntu 20.04.2.

10 Haz 2021 Per 18:45 tarihinde Alex Humberstone <
alex.m.humberstone@gmail.com> =C5=9Funu yazd=C4=B1:

> What versions of UHD and DPDK are you running?
>
> Sincerely,
> Alex-M-Humberstone
> PhD Student
> Klipsch School of Electrical Engineering
> New Mexico State University (NMSU)
> Las Cruces, New Mexico, USA
>
>
>
> On Thu, 10 Jun 2021 at 07:56, Berkay SAYGILI <zuhasdasn@gmail.com> wrote:
>
>> I installed DPDK, and finally it gives no error messages. On the other
>> hand, when i use ixgbe driver with (my NIC is X520-DA2) 200 MHz bandwidt=
h,
>> no samples are dropped, but when i switch to vfio-pci and "use_dpdk=3D1"=
 it
>> starts to drop samples at 200 MHz bandwidth. I cant transmit at 200 MHz
>> with a single channel with or without dpdk (it underflows). My uhd.conf =
and
>> cpufreq-info are given below. I also isolated cores 2,3 and 4. Any idea =
why
>> this happens?
>>
>> [use_dpdk=3D1]
>> dpdk_mtu=3D9000
>> dpdk_driver=3D/usr/local/lib/x86_64-linux-gnu/dpdk/pmds-18.11
>> dpdk_corelist=3D2,3,4
>> ;dpdk_num_mbufs=3D4096
>> ;dpdk_mbuf_cache_size=3D64
>> [dpdk_mac=3Dxx:xx:xx:xx:xx:a0]
>> dpdk_lcore =3D 3
>> dpdk_ipv4 =3D 192.168.10.1/24
>> ;dpdk_num_desc=3D4096
>> [dpdk_mac=3Dxx:xx:xx:xx:xx:a1]
>> dpdk_lcore =3D 4
>> dpdk_ipv4 =3D 192.168.20.1/24
>>
>> analyzing CPU 0:
>>   driver: intel_pstate
>>   CPUs which run at the same hardware frequency: 0
>>   CPUs which need to have their frequency coordinated by software: 0
>>   maximum transition latency: 4294.55 ms.
>>   hardware limits: 800 MHz - 4.60 GHz
>>   available cpufreq governors: performance, powersave
>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>                   The governor "performance" may decide which speed to u=
se
>>                   within this range.
>>   current CPU frequency is 4.35 GHz.
>> analyzing CPU 1:
>>   driver: intel_pstate
>>   CPUs which run at the same hardware frequency: 1
>>   CPUs which need to have their frequency coordinated by software: 1
>>   maximum transition latency: 4294.55 ms.
>>   hardware limits: 800 MHz - 4.60 GHz
>>   available cpufreq governors: performance, powersave
>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>                   The governor "performance" may decide which speed to u=
se
>>                   within this range.
>>   current CPU frequency is 4.36 GHz.
>> analyzing CPU 2:
>>   driver: intel_pstate
>>   CPUs which run at the same hardware frequency: 2
>>   CPUs which need to have their frequency coordinated by software: 2
>>   maximum transition latency: 4294.55 ms.
>>   hardware limits: 800 MHz - 4.60 GHz
>>   available cpufreq governors: performance, powersave
>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>                   The governor "performance" may decide which speed to u=
se
>>                   within this range.
>>   current CPU frequency is 4.45 GHz.
>> analyzing CPU 3:
>>   driver: intel_pstate
>>   CPUs which run at the same hardware frequency: 3
>>   CPUs which need to have their frequency coordinated by software: 3
>>   maximum transition latency: 4294.55 ms.
>>   hardware limits: 800 MHz - 4.60 GHz
>>   available cpufreq governors: performance, powersave
>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>                   The governor "performance" may decide which speed to u=
se
>>                   within this range.
>>   current CPU frequency is 4.41 GHz.
>> analyzing CPU 4:
>>   driver: intel_pstate
>>   CPUs which run at the same hardware frequency: 4
>>   CPUs which need to have their frequency coordinated by software: 4
>>   maximum transition latency: 4294.55 ms.
>>   hardware limits: 800 MHz - 4.60 GHz
>>   available cpufreq governors: performance, powersave
>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>                   The governor "performance" may decide which speed to u=
se
>>                   within this range.
>>   current CPU frequency is 4.38 GHz.
>> analyzing CPU 5:
>>   driver: intel_pstate
>>   CPUs which run at the same hardware frequency: 5
>>   CPUs which need to have their frequency coordinated by software: 5
>>   maximum transition latency: 4294.55 ms.
>>   hardware limits: 800 MHz - 4.60 GHz
>>   available cpufreq governors: performance, powersave
>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>                   The governor "performance" may decide which speed to u=
se
>>                   within this range.
>>   current CPU frequency is 4.40 GHz.
>> analyzing CPU 6:
>>   driver: intel_pstate
>>   CPUs which run at the same hardware frequency: 6
>>   CPUs which need to have their frequency coordinated by software: 6
>>   maximum transition latency: 4294.55 ms.
>>   hardware limits: 800 MHz - 4.60 GHz
>>   available cpufreq governors: performance, powersave
>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>                   The governor "performance" may decide which speed to u=
se
>>                   within this range.
>>   current CPU frequency is 4.35 GHz.
>> analyzing CPU 7:
>>   driver: intel_pstate
>>   CPUs which run at the same hardware frequency: 7
>>   CPUs which need to have their frequency coordinated by software: 7
>>   maximum transition latency: 4294.55 ms.
>>   hardware limits: 800 MHz - 4.60 GHz
>>   available cpufreq governors: performance, powersave
>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>                   The governor "performance" may decide which speed to u=
se
>>                   within this range.
>>   current CPU frequency is 4.36 GHz.
>> analyzing CPU 8:
>>   driver: intel_pstate
>>   CPUs which run at the same hardware frequency: 8
>>   CPUs which need to have their frequency coordinated by software: 8
>>   maximum transition latency: 4294.55 ms.
>>   hardware limits: 800 MHz - 4.60 GHz
>>   available cpufreq governors: performance, powersave
>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>                   The governor "performance" may decide which speed to u=
se
>>                   within this range.
>>   current CPU frequency is 4.36 GHz.
>> analyzing CPU 9:
>>   driver: intel_pstate
>>   CPUs which run at the same hardware frequency: 9
>>   CPUs which need to have their frequency coordinated by software: 9
>>   maximum transition latency: 4294.55 ms.
>>   hardware limits: 800 MHz - 4.60 GHz
>>   available cpufreq governors: performance, powersave
>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>                   The governor "performance" may decide which speed to u=
se
>>                   within this range.
>>   current CPU frequency is 4.30 GHz.
>> analyzing CPU 10:
>>   driver: intel_pstate
>>   CPUs which run at the same hardware frequency: 10
>>   CPUs which need to have their frequency coordinated by software: 10
>>   maximum transition latency: 4294.55 ms.
>>   hardware limits: 800 MHz - 4.60 GHz
>>   available cpufreq governors: performance, powersave
>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>                   The governor "performance" may decide which speed to u=
se
>>                   within this range.
>>   current CPU frequency is 4.39 GHz.
>> analyzing CPU 11:
>>   driver: intel_pstate
>>   CPUs which run at the same hardware frequency: 11
>>   CPUs which need to have their frequency coordinated by software: 11
>>   maximum transition latency: 4294.55 ms.
>>   hardware limits: 800 MHz - 4.60 GHz
>>   available cpufreq governors: performance, powersave
>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>                   The governor "performance" may decide which speed to u=
se
>>                   within this range.
>>   current CPU frequency is 4.35 GHz.
>>
>> Best Regards
>>
>> Berkay S.
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000003aca3a05c46ba8ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">UHD 4 and DPDK 18.11 on Ubuntu 20.04.2.</div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">10 Haz 2021 Per 18=
:45 tarihinde Alex Humberstone &lt;<a href=3D"mailto:alex.m.humberstone@gma=
il.com">alex.m.humberstone@gmail.com</a>&gt; =C5=9Funu yazd=C4=B1:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_defaul=
t" style=3D"font-family:monospace;font-size:large">What versions of UHD and=
 DPDK are you running?</div><div class=3D"gmail_default" style=3D"font-fami=
ly:monospace;font-size:large"><br></div><div><div dir=3D"ltr" data-smartmai=
l=3D"gmail_signature"><div dir=3D"ltr"><font size=3D"4"><span style=3D"font=
-family:monospace">Sincerely,<br></span></font><div><font size=3D"4"><span =
style=3D"font-family:monospace">Alex-M-Humberstone</span></font></div><div>=
<font size=3D"4"><span style=3D"font-family:monospace">PhD Student</span></=
font></div><div><font size=3D"4"><span style=3D"font-family:monospace">Klip=
sch School of Electrical Engineering<br></span></font></div><div><font size=
=3D"4"><span style=3D"font-family:monospace">New Mexico State University (N=
MSU)<br><span><span>Las Cruces, </span></span>New Mexico, USA</span></font>=
</div><div><font size=3D"4"><span style=3D"font-family:monospace"><br></spa=
n></font></div><div><font size=3D"4"><span style=3D"font-family:monospace">=
</span></font></div></div></div></div><br></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 10 Jun 2021 at 07:56, Ber=
kay SAYGILI &lt;<a href=3D"mailto:zuhasdasn@gmail.com" target=3D"_blank" re=
l=3D"noreferrer">zuhasdasn@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>I installed DPDK,=
 and finally it gives no error messages. On the other hand, when i use ixgb=
e driver with (my NIC is X520-DA2) 200 MHz bandwidth, no samples are droppe=
d, but when i switch to vfio-pci and &quot;use_dpdk=3D1&quot; it starts to =
drop samples at 200 MHz bandwidth. I cant transmit at 200 MHz with a single=
 channel with or without dpdk (it underflows). My uhd.conf and cpufreq-info=
 are given below. I also isolated cores 2,3 and 4. Any idea why this happen=
s?<br></div><div><br></div><div>[use_dpdk=3D1]<br>dpdk_mtu=3D9000<br>dpdk_d=
river=3D/usr/local/lib/x86_64-linux-gnu/dpdk/pmds-18.11<br>dpdk_corelist=3D=
2,3,4<br>;dpdk_num_mbufs=3D4096<br>;dpdk_mbuf_cache_size=3D64<br>[dpdk_mac=
=3Dxx:xx:xx:xx:xx:a0]<br>dpdk_lcore =3D 3<br>dpdk_ipv4 =3D <a href=3D"http:=
//192.168.10.1/24" target=3D"_blank" rel=3D"noreferrer">192.168.10.1/24</a>=
<br>;dpdk_num_desc=3D4096<br>[dpdk_mac=3Dxx:xx:xx:xx:xx:a1]<br>dpdk_lcore =
=3D 4<br>dpdk_ipv4 =3D <a href=3D"http://192.168.20.1/24" target=3D"_blank"=
 rel=3D"noreferrer">192.168.20.1/24</a></div><div><br></div><div>analyzing =
CPU 0:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs which run at the same =
hardware frequency: 0<br>=C2=A0 CPUs which need to have their frequency coo=
rdinated by software: 0<br>=C2=A0 maximum transition latency: 4294.55 ms.<b=
r>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 available cpufreq go=
vernors: performance, powersave<br>=C2=A0 current policy: frequency should =
be within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;performance&quot; may decide wh=
ich speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 within this range.<br>=C2=A0 current CPU frequency is 4.35 GHz.<br>=
analyzing CPU 1:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs which run at=
 the same hardware frequency: 1<br>=C2=A0 CPUs which need to have their fre=
quency coordinated by software: 1<br>=C2=A0 maximum transition latency: 429=
4.55 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 available =
cpufreq governors: performance, powersave<br>=C2=A0 current policy: frequen=
cy should be within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;performance&quot; may=
 decide which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 current CPU frequency is 4.3=
6 GHz.<br>analyzing CPU 2:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs wh=
ich run at the same hardware frequency: 2<br>=C2=A0 CPUs which need to have=
 their frequency coordinated by software: 2<br>=C2=A0 maximum transition la=
tency: 4294.55 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 =
available cpufreq governors: performance, powersave<br>=C2=A0 current polic=
y: frequency should be within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;performance&q=
uot; may decide which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 current CPU freque=
ncy is 4.45 GHz.<br>analyzing CPU 3:<br>=C2=A0 driver: intel_pstate<br>=C2=
=A0 CPUs which run at the same hardware frequency: 3<br>=C2=A0 CPUs which n=
eed to have their frequency coordinated by software: 3<br>=C2=A0 maximum tr=
ansition latency: 4294.55 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.60 GHz=
<br>=C2=A0 available cpufreq governors: performance, powersave<br>=C2=A0 cu=
rrent policy: frequency should be within 800 MHz and 4.60 GHz.<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;=
performance&quot; may decide which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 current=
 CPU frequency is 4.41 GHz.<br>analyzing CPU 4:<br>=C2=A0 driver: intel_pst=
ate<br>=C2=A0 CPUs which run at the same hardware frequency: 4<br>=C2=A0 CP=
Us which need to have their frequency coordinated by software: 4<br>=C2=A0 =
maximum transition latency: 4294.55 ms.<br>=C2=A0 hardware limits: 800 MHz =
- 4.60 GHz<br>=C2=A0 available cpufreq governors: performance, powersave<br=
>=C2=A0 current policy: frequency should be within 800 MHz and 4.60 GHz.<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governo=
r &quot;performance&quot; may decide which speed to use<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=C2=
=A0 current CPU frequency is 4.38 GHz.<br>analyzing CPU 5:<br>=C2=A0 driver=
: intel_pstate<br>=C2=A0 CPUs which run at the same hardware frequency: 5<b=
r>=C2=A0 CPUs which need to have their frequency coordinated by software: 5=
<br>=C2=A0 maximum transition latency: 4294.55 ms.<br>=C2=A0 hardware limit=
s: 800 MHz - 4.60 GHz<br>=C2=A0 available cpufreq governors: performance, p=
owersave<br>=C2=A0 current policy: frequency should be within 800 MHz and 4=
.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
The governor &quot;performance&quot; may decide which speed to use<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within this ran=
ge.<br>=C2=A0 current CPU frequency is 4.40 GHz.<br>analyzing CPU 6:<br>=C2=
=A0 driver: intel_pstate<br>=C2=A0 CPUs which run at the same hardware freq=
uency: 6<br>=C2=A0 CPUs which need to have their frequency coordinated by s=
oftware: 6<br>=C2=A0 maximum transition latency: 4294.55 ms.<br>=C2=A0 hard=
ware limits: 800 MHz - 4.60 GHz<br>=C2=A0 available cpufreq governors: perf=
ormance, powersave<br>=C2=A0 current policy: frequency should be within 800=
 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 The governor &quot;performance&quot; may decide which speed to u=
se<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within=
 this range.<br>=C2=A0 current CPU frequency is 4.35 GHz.<br>analyzing CPU =
7:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs which run at the same hard=
ware frequency: 7<br>=C2=A0 CPUs which need to have their frequency coordin=
ated by software: 7<br>=C2=A0 maximum transition latency: 4294.55 ms.<br>=
=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 available cpufreq gove=
rnors: performance, powersave<br>=C2=A0 current policy: frequency should be=
 within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 The governor &quot;performance&quot; may decide which =
speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 within this range.<br>=C2=A0 current CPU frequency is 4.36 GHz.<br>anal=
yzing CPU 8:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs which run at the=
 same hardware frequency: 8<br>=C2=A0 CPUs which need to have their frequen=
cy coordinated by software: 8<br>=C2=A0 maximum transition latency: 4294.55=
 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 available cpuf=
req governors: performance, powersave<br>=C2=A0 current policy: frequency s=
hould be within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;performance&quot; may decid=
e which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 within this range.<br>=C2=A0 current CPU frequency is 4.36 GH=
z.<br>analyzing CPU 9:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs which =
run at the same hardware frequency: 9<br>=C2=A0 CPUs which need to have the=
ir frequency coordinated by software: 9<br>=C2=A0 maximum transition latenc=
y: 4294.55 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 avai=
lable cpufreq governors: performance, powersave<br>=C2=A0 current policy: f=
requency should be within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;performance&quot;=
 may decide which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 current CPU frequency is=
 4.30 GHz.<br>analyzing CPU 10:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CP=
Us which run at the same hardware frequency: 10<br>=C2=A0 CPUs which need t=
o have their frequency coordinated by software: 10<br>=C2=A0 maximum transi=
tion latency: 4294.55 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=
=C2=A0 available cpufreq governors: performance, powersave<br>=C2=A0 curren=
t policy: frequency should be within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;perfor=
mance&quot; may decide which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 current CPU=
 frequency is 4.39 GHz.<br>analyzing CPU 11:<br>=C2=A0 driver: intel_pstate=
<br>=C2=A0 CPUs which run at the same hardware frequency: 11<br>=C2=A0 CPUs=
 which need to have their frequency coordinated by software: 11<br>=C2=A0 m=
aximum transition latency: 4294.55 ms.<br>=C2=A0 hardware limits: 800 MHz -=
 4.60 GHz<br>=C2=A0 available cpufreq governors: performance, powersave<br>=
=C2=A0 current policy: frequency should be within 800 MHz and 4.60 GHz.<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor=
 &quot;performance&quot; may decide which speed to use<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 =
current CPU frequency is 4.35 GHz.</div><div><br></div><div>Best Regards</d=
iv><div><br></div><div>Berkay S.<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000003aca3a05c46ba8ef--

--===============3002369698973420820==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3002369698973420820==--
