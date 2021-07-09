Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D393C2699
	for <lists+usrp-users@lfdr.de>; Fri,  9 Jul 2021 17:05:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 974EE3848B9
	for <lists+usrp-users@lfdr.de>; Fri,  9 Jul 2021 11:05:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mzueT8yC";
	dkim-atps=neutral
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 68F2738459F
	for <usrp-users@lists.ettus.com>; Fri,  9 Jul 2021 11:04:52 -0400 (EDT)
Received: by mail-io1-f46.google.com with SMTP id g22so12781508iom.1
        for <usrp-users@lists.ettus.com>; Fri, 09 Jul 2021 08:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZVxF7jYAz3Dizp1Ld4fz639DKhOG6ag2/eNie/QjJ7U=;
        b=mzueT8yCXf/u0v0J2dSTUiMsmz7HiS/6R7UfgmrvrPx/2nIf3n251gCxSjVodtpnMS
         vpAHZcwDzIVJImMgSj/7ynAvwfxrn4/LqOOcm3DfxfFucRBQx/HaESNbQS15u1rpVKMA
         CLPMKNJ1EUgvqeQVPVrbHIQcZJQsCMzkLgWhNNf3pEpPGoqGdAO6qFvv17/ZkCYZIVZn
         E2uAYg/qwyknKSA03pEBmtyigDX3RmIlPsW712ekBL5VlsIyz8QpdVEsyqbbMjx5DgZY
         Q9/pIrRrzUnHRoQ9DMaq7of8E8oSUStTfGu7SkBKYfbuxLY8ShLJvuIH7WQEWZCz9C5N
         7veQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZVxF7jYAz3Dizp1Ld4fz639DKhOG6ag2/eNie/QjJ7U=;
        b=ocF11uUVHbtsMezMV6SqxitmlTWRajUMifSqgQn7AtDEWU4Gi56csEzoFlUDQWT4F5
         hLuhngVa816GySI4ArjprfPK63bgQIRYpsbIIBH6FI1jfCcXS76unyquRaJ0q8oi7Eb6
         /DJkgmg4aLprRg7AvpQaTRPNVKZCVKhKXLxhdM9r06HtqeyR7al+kXmB+g3IhFMsqJ5u
         4kEuORonW27EkG/xF12r8l2LFbp28KhwAU58zU/pCEsO5yTu6rx8qEjYJfZe3LdO1q3/
         V7c2ZZLzcG870+HQb+geJUpm7b8T+0o7guriHm1ORu6JBuoctZIWa8sbbjLwbOJdEqmW
         xZ+w==
X-Gm-Message-State: AOAM532jJiY9RzrIrGxvJH61DPSxu27EcGWsdp8Vsz8iB+iMBsNWQMGm
	CV3spLFXbhKsKA/mpBOL3AK6shco3MfU9qMWVMMdko6Kdys=
X-Google-Smtp-Source: ABdhPJxh51/mzzKdC0hVPmtPkhD8ozlY5BUWgbb3dEpBAluqAn4OnpdL1sjcJMNbj5pxWaMgkiC5sCJtBa5NF0uMwms=
X-Received: by 2002:a05:6638:328e:: with SMTP id f14mr1948036jav.41.1625843091842;
 Fri, 09 Jul 2021 08:04:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAA7+tqRNbrhXA6zq7gyMnBC5wfv-gQ4tQ0J-4T4krLgO=n1UmA@mail.gmail.com>
 <CAE0dfYYycChzPKO1ce6eJ00Ozm1rJH8-uBnS-gcHzzRowBFVqw@mail.gmail.com> <CAA7+tqS+s8JaDh4WxXNEB93_96_YjqbJkk86h-TnYJOJ=p5ihQ@mail.gmail.com>
In-Reply-To: <CAA7+tqS+s8JaDh4WxXNEB93_96_YjqbJkk86h-TnYJOJ=p5ihQ@mail.gmail.com>
From: Alex Humberstone <alex.m.humberstone@gmail.com>
Date: Fri, 9 Jul 2021 10:04:16 -0500
Message-ID: <CAE0dfYYr-7aAWof22qXR1oce0N5b8rAejkijbPFv682z9cDq+w@mail.gmail.com>
To: Berkay SAYGILI <zuhasdasn@gmail.com>
Message-ID-Hash: 7RELMPQOJW75MFJPFLYWGZUV2PUGAUMD
X-Message-ID-Hash: 7RELMPQOJW75MFJPFLYWGZUV2PUGAUMD
X-MailFrom: alex.m.humberstone@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK is slower than ordinary way
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7RELMPQOJW75MFJPFLYWGZUV2PUGAUMD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3856093226586637950=="

--===============3856093226586637950==
Content-Type: multipart/alternative; boundary="000000000000f327c905c6b217f3"

--000000000000f327c905c6b217f3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I think that UHD 4.0 with DPDK 18.11 should work good on Ubuntu 20.04. But
I'm not sure about the Intel X520-DA2 NIC. Never used it before. Maybe try
the Intel X710-DA2? Are you sure DPDK is configured correctly?

Sincerely,
Alex-M-Humberstone
PhD Student
Klipsch School of Electrical Engineering
New Mexico State University (NMSU)
Las Cruces, New Mexico, USA



On Thu, 10 Jun 2021 at 11:12, Berkay SAYGILI <zuhasdasn@gmail.com> wrote:

> UHD 4 and DPDK 18.11 on Ubuntu 20.04.2.
>
> 10 Haz 2021 Per 18:45 tarihinde Alex Humberstone <
> alex.m.humberstone@gmail.com> =C5=9Funu yazd=C4=B1:
>
>> What versions of UHD and DPDK are you running?
>>
>> Sincerely,
>> Alex-M-Humberstone
>> PhD Student
>> Klipsch School of Electrical Engineering
>> New Mexico State University (NMSU)
>> Las Cruces, New Mexico, USA
>>
>>
>>
>> On Thu, 10 Jun 2021 at 07:56, Berkay SAYGILI <zuhasdasn@gmail.com> wrote=
:
>>
>>> I installed DPDK, and finally it gives no error messages. On the other
>>> hand, when i use ixgbe driver with (my NIC is X520-DA2) 200 MHz bandwid=
th,
>>> no samples are dropped, but when i switch to vfio-pci and "use_dpdk=3D1=
" it
>>> starts to drop samples at 200 MHz bandwidth. I cant transmit at 200 MHz
>>> with a single channel with or without dpdk (it underflows). My uhd.conf=
 and
>>> cpufreq-info are given below. I also isolated cores 2,3 and 4. Any idea=
 why
>>> this happens?
>>>
>>> [use_dpdk=3D1]
>>> dpdk_mtu=3D9000
>>> dpdk_driver=3D/usr/local/lib/x86_64-linux-gnu/dpdk/pmds-18.11
>>> dpdk_corelist=3D2,3,4
>>> ;dpdk_num_mbufs=3D4096
>>> ;dpdk_mbuf_cache_size=3D64
>>> [dpdk_mac=3Dxx:xx:xx:xx:xx:a0]
>>> dpdk_lcore =3D 3
>>> dpdk_ipv4 =3D 192.168.10.1/24
>>> ;dpdk_num_desc=3D4096
>>> [dpdk_mac=3Dxx:xx:xx:xx:xx:a1]
>>> dpdk_lcore =3D 4
>>> dpdk_ipv4 =3D 192.168.20.1/24
>>>
>>> analyzing CPU 0:
>>>   driver: intel_pstate
>>>   CPUs which run at the same hardware frequency: 0
>>>   CPUs which need to have their frequency coordinated by software: 0
>>>   maximum transition latency: 4294.55 ms.
>>>   hardware limits: 800 MHz - 4.60 GHz
>>>   available cpufreq governors: performance, powersave
>>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>>                   The governor "performance" may decide which speed to
>>> use
>>>                   within this range.
>>>   current CPU frequency is 4.35 GHz.
>>> analyzing CPU 1:
>>>   driver: intel_pstate
>>>   CPUs which run at the same hardware frequency: 1
>>>   CPUs which need to have their frequency coordinated by software: 1
>>>   maximum transition latency: 4294.55 ms.
>>>   hardware limits: 800 MHz - 4.60 GHz
>>>   available cpufreq governors: performance, powersave
>>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>>                   The governor "performance" may decide which speed to
>>> use
>>>                   within this range.
>>>   current CPU frequency is 4.36 GHz.
>>> analyzing CPU 2:
>>>   driver: intel_pstate
>>>   CPUs which run at the same hardware frequency: 2
>>>   CPUs which need to have their frequency coordinated by software: 2
>>>   maximum transition latency: 4294.55 ms.
>>>   hardware limits: 800 MHz - 4.60 GHz
>>>   available cpufreq governors: performance, powersave
>>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>>                   The governor "performance" may decide which speed to
>>> use
>>>                   within this range.
>>>   current CPU frequency is 4.45 GHz.
>>> analyzing CPU 3:
>>>   driver: intel_pstate
>>>   CPUs which run at the same hardware frequency: 3
>>>   CPUs which need to have their frequency coordinated by software: 3
>>>   maximum transition latency: 4294.55 ms.
>>>   hardware limits: 800 MHz - 4.60 GHz
>>>   available cpufreq governors: performance, powersave
>>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>>                   The governor "performance" may decide which speed to
>>> use
>>>                   within this range.
>>>   current CPU frequency is 4.41 GHz.
>>> analyzing CPU 4:
>>>   driver: intel_pstate
>>>   CPUs which run at the same hardware frequency: 4
>>>   CPUs which need to have their frequency coordinated by software: 4
>>>   maximum transition latency: 4294.55 ms.
>>>   hardware limits: 800 MHz - 4.60 GHz
>>>   available cpufreq governors: performance, powersave
>>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>>                   The governor "performance" may decide which speed to
>>> use
>>>                   within this range.
>>>   current CPU frequency is 4.38 GHz.
>>> analyzing CPU 5:
>>>   driver: intel_pstate
>>>   CPUs which run at the same hardware frequency: 5
>>>   CPUs which need to have their frequency coordinated by software: 5
>>>   maximum transition latency: 4294.55 ms.
>>>   hardware limits: 800 MHz - 4.60 GHz
>>>   available cpufreq governors: performance, powersave
>>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>>                   The governor "performance" may decide which speed to
>>> use
>>>                   within this range.
>>>   current CPU frequency is 4.40 GHz.
>>> analyzing CPU 6:
>>>   driver: intel_pstate
>>>   CPUs which run at the same hardware frequency: 6
>>>   CPUs which need to have their frequency coordinated by software: 6
>>>   maximum transition latency: 4294.55 ms.
>>>   hardware limits: 800 MHz - 4.60 GHz
>>>   available cpufreq governors: performance, powersave
>>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>>                   The governor "performance" may decide which speed to
>>> use
>>>                   within this range.
>>>   current CPU frequency is 4.35 GHz.
>>> analyzing CPU 7:
>>>   driver: intel_pstate
>>>   CPUs which run at the same hardware frequency: 7
>>>   CPUs which need to have their frequency coordinated by software: 7
>>>   maximum transition latency: 4294.55 ms.
>>>   hardware limits: 800 MHz - 4.60 GHz
>>>   available cpufreq governors: performance, powersave
>>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>>                   The governor "performance" may decide which speed to
>>> use
>>>                   within this range.
>>>   current CPU frequency is 4.36 GHz.
>>> analyzing CPU 8:
>>>   driver: intel_pstate
>>>   CPUs which run at the same hardware frequency: 8
>>>   CPUs which need to have their frequency coordinated by software: 8
>>>   maximum transition latency: 4294.55 ms.
>>>   hardware limits: 800 MHz - 4.60 GHz
>>>   available cpufreq governors: performance, powersave
>>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>>                   The governor "performance" may decide which speed to
>>> use
>>>                   within this range.
>>>   current CPU frequency is 4.36 GHz.
>>> analyzing CPU 9:
>>>   driver: intel_pstate
>>>   CPUs which run at the same hardware frequency: 9
>>>   CPUs which need to have their frequency coordinated by software: 9
>>>   maximum transition latency: 4294.55 ms.
>>>   hardware limits: 800 MHz - 4.60 GHz
>>>   available cpufreq governors: performance, powersave
>>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>>                   The governor "performance" may decide which speed to
>>> use
>>>                   within this range.
>>>   current CPU frequency is 4.30 GHz.
>>> analyzing CPU 10:
>>>   driver: intel_pstate
>>>   CPUs which run at the same hardware frequency: 10
>>>   CPUs which need to have their frequency coordinated by software: 10
>>>   maximum transition latency: 4294.55 ms.
>>>   hardware limits: 800 MHz - 4.60 GHz
>>>   available cpufreq governors: performance, powersave
>>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>>                   The governor "performance" may decide which speed to
>>> use
>>>                   within this range.
>>>   current CPU frequency is 4.39 GHz.
>>> analyzing CPU 11:
>>>   driver: intel_pstate
>>>   CPUs which run at the same hardware frequency: 11
>>>   CPUs which need to have their frequency coordinated by software: 11
>>>   maximum transition latency: 4294.55 ms.
>>>   hardware limits: 800 MHz - 4.60 GHz
>>>   available cpufreq governors: performance, powersave
>>>   current policy: frequency should be within 800 MHz and 4.60 GHz.
>>>                   The governor "performance" may decide which speed to
>>> use
>>>                   within this range.
>>>   current CPU frequency is 4.35 GHz.
>>>
>>> Best Regards
>>>
>>> Berkay S.
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--000000000000f327c905c6b217f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e;font-size:large">I think that UHD 4.0 with DPDK 18.11 should work good on=
 Ubuntu 20.04. But I&#39;m not sure about the Intel X520-DA2 NIC. Never use=
d it before. Maybe try the Intel X710-DA2? Are you sure DPDK is configured =
correctly?</div><div class=3D"gmail_default" style=3D"font-family:monospace=
;font-size:large"><br></div><div><div dir=3D"ltr" class=3D"gmail_signature"=
 data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><font size=3D"4"><span=
 style=3D"font-family:monospace">Sincerely,<br></span></font><div><font siz=
e=3D"4"><span style=3D"font-family:monospace">Alex-M-Humberstone</span></fo=
nt></div><div><font size=3D"4"><span style=3D"font-family:monospace">PhD St=
udent</span></font></div><div><font size=3D"4"><span style=3D"font-family:m=
onospace">Klipsch School of Electrical Engineering<br></span></font></div><=
div><font size=3D"4"><span style=3D"font-family:monospace">New Mexico State=
 University (NMSU)<br><span><span>Las Cruces, </span></span>New Mexico, USA=
</span></font></div><div><font size=3D"4"><span style=3D"font-family:monosp=
ace"><br></span></font></div><div><font size=3D"4"><span style=3D"font-fami=
ly:monospace"></span></font></div></div></div></div><br></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 10 Jun 2021=
 at 11:12, Berkay SAYGILI &lt;<a href=3D"mailto:zuhasdasn@gmail.com">zuhasd=
asn@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"auto">UHD 4 and DPDK 18.11 on Ubuntu 20.04.2.</div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">10 Ha=
z 2021 Per 18:45 tarihinde Alex Humberstone &lt;<a href=3D"mailto:alex.m.hu=
mberstone@gmail.com" target=3D"_blank">alex.m.humberstone@gmail.com</a>&gt;=
 =C5=9Funu yazd=C4=B1:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:m=
onospace;font-size:large">What versions of UHD and DPDK are you running?</d=
iv><div class=3D"gmail_default" style=3D"font-family:monospace;font-size:la=
rge"><br></div><div><div dir=3D"ltr"><div dir=3D"ltr"><font size=3D"4"><spa=
n style=3D"font-family:monospace">Sincerely,<br></span></font><div><font si=
ze=3D"4"><span style=3D"font-family:monospace">Alex-M-Humberstone</span></f=
ont></div><div><font size=3D"4"><span style=3D"font-family:monospace">PhD S=
tudent</span></font></div><div><font size=3D"4"><span style=3D"font-family:=
monospace">Klipsch School of Electrical Engineering<br></span></font></div>=
<div><font size=3D"4"><span style=3D"font-family:monospace">New Mexico Stat=
e University (NMSU)<br><span><span>Las Cruces, </span></span>New Mexico, US=
A</span></font></div><div><font size=3D"4"><span style=3D"font-family:monos=
pace"><br></span></font></div><div><font size=3D"4"><span style=3D"font-fam=
ily:monospace"></span></font></div></div></div></div><br></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 10 Jun 202=
1 at 07:56, Berkay SAYGILI &lt;<a href=3D"mailto:zuhasdasn@gmail.com" rel=
=3D"noreferrer" target=3D"_blank">zuhasdasn@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>=
I installed DPDK, and finally it gives no error messages. On the other hand=
, when i use ixgbe driver with (my NIC is X520-DA2) 200 MHz bandwidth, no s=
amples are dropped, but when i switch to vfio-pci and &quot;use_dpdk=3D1&qu=
ot; it starts to drop samples at 200 MHz bandwidth. I cant transmit at 200 =
MHz with a single channel with or without dpdk (it underflows). My uhd.conf=
 and cpufreq-info are given below. I also isolated cores 2,3 and 4. Any ide=
a why this happens?<br></div><div><br></div><div>[use_dpdk=3D1]<br>dpdk_mtu=
=3D9000<br>dpdk_driver=3D/usr/local/lib/x86_64-linux-gnu/dpdk/pmds-18.11<br=
>dpdk_corelist=3D2,3,4<br>;dpdk_num_mbufs=3D4096<br>;dpdk_mbuf_cache_size=
=3D64<br>[dpdk_mac=3Dxx:xx:xx:xx:xx:a0]<br>dpdk_lcore =3D 3<br>dpdk_ipv4 =
=3D <a href=3D"http://192.168.10.1/24" rel=3D"noreferrer" target=3D"_blank"=
>192.168.10.1/24</a><br>;dpdk_num_desc=3D4096<br>[dpdk_mac=3Dxx:xx:xx:xx:xx=
:a1]<br>dpdk_lcore =3D 4<br>dpdk_ipv4 =3D <a href=3D"http://192.168.20.1/24=
" rel=3D"noreferrer" target=3D"_blank">192.168.20.1/24</a></div><div><br></=
div><div>analyzing CPU 0:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs whi=
ch run at the same hardware frequency: 0<br>=C2=A0 CPUs which need to have =
their frequency coordinated by software: 0<br>=C2=A0 maximum transition lat=
ency: 4294.55 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 a=
vailable cpufreq governors: performance, powersave<br>=C2=A0 current policy=
: frequency should be within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;performance&qu=
ot; may decide which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 current CPU frequency=
 is 4.35 GHz.<br>analyzing CPU 1:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 =
CPUs which run at the same hardware frequency: 1<br>=C2=A0 CPUs which need =
to have their frequency coordinated by software: 1<br>=C2=A0 maximum transi=
tion latency: 4294.55 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=
=C2=A0 available cpufreq governors: performance, powersave<br>=C2=A0 curren=
t policy: frequency should be within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;perfor=
mance&quot; may decide which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 current CPU=
 frequency is 4.36 GHz.<br>analyzing CPU 2:<br>=C2=A0 driver: intel_pstate<=
br>=C2=A0 CPUs which run at the same hardware frequency: 2<br>=C2=A0 CPUs w=
hich need to have their frequency coordinated by software: 2<br>=C2=A0 maxi=
mum transition latency: 4294.55 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.=
60 GHz<br>=C2=A0 available cpufreq governors: performance, powersave<br>=C2=
=A0 current policy: frequency should be within 800 MHz and 4.60 GHz.<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &q=
uot;performance&quot; may decide which speed to use<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 cur=
rent CPU frequency is 4.45 GHz.<br>analyzing CPU 3:<br>=C2=A0 driver: intel=
_pstate<br>=C2=A0 CPUs which run at the same hardware frequency: 3<br>=C2=
=A0 CPUs which need to have their frequency coordinated by software: 3<br>=
=C2=A0 maximum transition latency: 4294.55 ms.<br>=C2=A0 hardware limits: 8=
00 MHz - 4.60 GHz<br>=C2=A0 available cpufreq governors: performance, power=
save<br>=C2=A0 current policy: frequency should be within 800 MHz and 4.60 =
GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The =
governor &quot;performance&quot; may decide which speed to use<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<=
br>=C2=A0 current CPU frequency is 4.41 GHz.<br>analyzing CPU 4:<br>=C2=A0 =
driver: intel_pstate<br>=C2=A0 CPUs which run at the same hardware frequenc=
y: 4<br>=C2=A0 CPUs which need to have their frequency coordinated by softw=
are: 4<br>=C2=A0 maximum transition latency: 4294.55 ms.<br>=C2=A0 hardware=
 limits: 800 MHz - 4.60 GHz<br>=C2=A0 available cpufreq governors: performa=
nce, powersave<br>=C2=A0 current policy: frequency should be within 800 MHz=
 and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 The governor &quot;performance&quot; may decide which speed to use<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within thi=
s range.<br>=C2=A0 current CPU frequency is 4.38 GHz.<br>analyzing CPU 5:<b=
r>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs which run at the same hardware=
 frequency: 5<br>=C2=A0 CPUs which need to have their frequency coordinated=
 by software: 5<br>=C2=A0 maximum transition latency: 4294.55 ms.<br>=C2=A0=
 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 available cpufreq governors:=
 performance, powersave<br>=C2=A0 current policy: frequency should be withi=
n 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 The governor &quot;performance&quot; may decide which speed =
to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 wi=
thin this range.<br>=C2=A0 current CPU frequency is 4.40 GHz.<br>analyzing =
CPU 6:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs which run at the same =
hardware frequency: 6<br>=C2=A0 CPUs which need to have their frequency coo=
rdinated by software: 6<br>=C2=A0 maximum transition latency: 4294.55 ms.<b=
r>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 available cpufreq go=
vernors: performance, powersave<br>=C2=A0 current policy: frequency should =
be within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;performance&quot; may decide wh=
ich speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 within this range.<br>=C2=A0 current CPU frequency is 4.35 GHz.<br>=
analyzing CPU 7:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs which run at=
 the same hardware frequency: 7<br>=C2=A0 CPUs which need to have their fre=
quency coordinated by software: 7<br>=C2=A0 maximum transition latency: 429=
4.55 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 available =
cpufreq governors: performance, powersave<br>=C2=A0 current policy: frequen=
cy should be within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;performance&quot; may=
 decide which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 current CPU frequency is 4.3=
6 GHz.<br>analyzing CPU 8:<br>=C2=A0 driver: intel_pstate<br>=C2=A0 CPUs wh=
ich run at the same hardware frequency: 8<br>=C2=A0 CPUs which need to have=
 their frequency coordinated by software: 8<br>=C2=A0 maximum transition la=
tency: 4294.55 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.60 GHz<br>=C2=A0 =
available cpufreq governors: performance, powersave<br>=C2=A0 current polic=
y: frequency should be within 800 MHz and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;performance&q=
uot; may decide which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 current CPU freque=
ncy is 4.36 GHz.<br>analyzing CPU 9:<br>=C2=A0 driver: intel_pstate<br>=C2=
=A0 CPUs which run at the same hardware frequency: 9<br>=C2=A0 CPUs which n=
eed to have their frequency coordinated by software: 9<br>=C2=A0 maximum tr=
ansition latency: 4294.55 ms.<br>=C2=A0 hardware limits: 800 MHz - 4.60 GHz=
<br>=C2=A0 available cpufreq governors: performance, powersave<br>=C2=A0 cu=
rrent policy: frequency should be within 800 MHz and 4.60 GHz.<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The governor &quot;=
performance&quot; may decide which speed to use<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=C2=A0 current=
 CPU frequency is 4.30 GHz.<br>analyzing CPU 10:<br>=C2=A0 driver: intel_ps=
tate<br>=C2=A0 CPUs which run at the same hardware frequency: 10<br>=C2=A0 =
CPUs which need to have their frequency coordinated by software: 10<br>=C2=
=A0 maximum transition latency: 4294.55 ms.<br>=C2=A0 hardware limits: 800 =
MHz - 4.60 GHz<br>=C2=A0 available cpufreq governors: performance, powersav=
e<br>=C2=A0 current policy: frequency should be within 800 MHz and 4.60 GHz=
.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The gov=
ernor &quot;performance&quot; may decide which speed to use<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within this range.<br>=
=C2=A0 current CPU frequency is 4.39 GHz.<br>analyzing CPU 11:<br>=C2=A0 dr=
iver: intel_pstate<br>=C2=A0 CPUs which run at the same hardware frequency:=
 11<br>=C2=A0 CPUs which need to have their frequency coordinated by softwa=
re: 11<br>=C2=A0 maximum transition latency: 4294.55 ms.<br>=C2=A0 hardware=
 limits: 800 MHz - 4.60 GHz<br>=C2=A0 available cpufreq governors: performa=
nce, powersave<br>=C2=A0 current policy: frequency should be within 800 MHz=
 and 4.60 GHz.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 The governor &quot;performance&quot; may decide which speed to use<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 within thi=
s range.<br>=C2=A0 current CPU frequency is 4.35 GHz.</div><div><br></div><=
div>Best Regards</div><div><br></div><div>Berkay S.<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000f327c905c6b217f3--

--===============3856093226586637950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3856093226586637950==--
