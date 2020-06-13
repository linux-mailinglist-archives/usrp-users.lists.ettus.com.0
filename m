Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B964A1F803E
	for <lists+usrp-users@lfdr.de>; Sat, 13 Jun 2020 03:36:34 +0200 (CEST)
Received: from [::1] (port=54126 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjv5z-0003sV-CN; Fri, 12 Jun 2020 21:36:31 -0400
Received: from mail-lj1-f171.google.com ([209.85.208.171]:43124)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <coxe@close-haul.com>) id 1jjv5v-0003pS-7J
 for usrp-users@lists.ettus.com; Fri, 12 Jun 2020 21:36:27 -0400
Received: by mail-lj1-f171.google.com with SMTP id n24so13060799lji.10
 for <usrp-users@lists.ettus.com>; Fri, 12 Jun 2020 18:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hvOA5qmph0uunFVvHLZ9NLshf2e6YYJJHs+oSxAhSXs=;
 b=oUlUiPA5z/BnM/mA8JOx4L9pZnu1md1S5xQF964EDixh3mX3tr344XkD4NwVcN0G1p
 cmFMkEygjAZp/IUwUYLMI51l3VsiXOLip2I0OKGBbEvT1787xMbmMxQtkN+3loYl1JH2
 XjKHnTskmV6AkFZKef49kaTS+nTm4dLfR6CmPL5b42TXG0pnDqk3tFJlHMSQHM9rO2YQ
 LWkvTa2nyA+MeYtTdWFzp1k+yQAYdgeeIYSvyzQIc20iu5CIwpW2hUUk623SyiYI1cRD
 19wC3H+r5wsTZSOM6daZeHKQGS/o8dR328dy4BGXVxQ5z+UfCa0xw50BsorR2mxu91ar
 jPHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hvOA5qmph0uunFVvHLZ9NLshf2e6YYJJHs+oSxAhSXs=;
 b=XDG7mMu5oQmTLbBr1U3biNVCP4WAFqCyhG9SpwV0//391WDoioEjor//qMjH1iwXC1
 5BJMkKj1azktZ6VR4n7K0HQM0AXKxtNa0rO/rryY7VSUVr8CvTNcVEQeugUwtGPaO+i2
 7O5uMtRwFmhYLyl96K4stfmPYHeN59DkATTwWt9lY7ZhD5AQFiEepLUQ1r5wEFptNX1m
 seY0PdKD80zXIxc32GH9nh3Q6eDZSd1EY3pkZgCrMjIk4Six0s0eK5M1fBAJmWU1BZ5F
 AVMpmcFSz65n3kGA7V6ERdqPyVBg361/X53IdLPfJLBub4P6vTK8ljnm2BZqOB+cxvi7
 bHog==
X-Gm-Message-State: AOAM533mF9sEKTzJY1tokp2XxhtXDYTwRGrXlnIguCWcVEDePhkaK63a
 8L8xA59NBtMAzTv4U07ecqAjq4pptuejVKSIW1NxUQ==
X-Google-Smtp-Source: ABdhPJzd1+0XlYaTFd13bm49qvJpzaGJBxuz1cSnMZacIbft1MPXpQBlGX8clNLHHkDMo/z+1bNMVb+PIZBQJjmaWeY=
X-Received: by 2002:a2e:b8c2:: with SMTP id s2mr8718420ljp.368.1592012145864; 
 Fri, 12 Jun 2020 18:35:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAH2Hh71qD9o27hGbe3DEtZkgXyWsfcScNX-RB6NbuOCq5DVUGg@mail.gmail.com>
 <CA+JMMq9n4LDNc_8ZjDm=Wpu04V1jALL4Z-CfkvTJ0__aH1Yzjg@mail.gmail.com>
 <CAH2Hh72z75OFeQvto-VcaGAsJ_WDSkq0qAn--tr8amS_4OEhiw@mail.gmail.com>
In-Reply-To: <CAH2Hh72z75OFeQvto-VcaGAsJ_WDSkq0qAn--tr8amS_4OEhiw@mail.gmail.com>
Date: Fri, 12 Jun 2020 18:35:35 -0700
Message-ID: <CAKJyDkKpBvR92zC4en=J4S+=-=2ykXqMpiva5x2furAkq1gi+A@mail.gmail.com>
To: Aaron Smith <aarsmith54@gmail.com>
Subject: Re: [USRP-users] Precise Time Synchronization In B200/N210
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3658704579824940748=="
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

--===============3658704579824940748==
Content-Type: multipart/alternative; boundary="0000000000006ec60005a7ed360e"

--0000000000006ec60005a7ed360e
Content-Type: text/plain; charset="UTF-8"

The phase ambiguity is introduced by the divide-by-2 in the PLLs of the
Analog Devices AD9361 RF integrated transceiver on the B200.   These
dividers randomly introduce a 0-degree or 180-degree phase shift when they
come up.



On Fri, Jun 12, 2020 at 4:08 PM Aaron Smith via USRP-users <
usrp-users@lists.ettus.com> wrote:

> All of the devices share a 10 MHz reference that is generated from the
> same source as the 1 PPS.
>
> When you say it's a phase ambiguity, are you suggesting that it's a
> problem with the 10Hz reference or something inherent in the radio hardware
> that I will have to deal with? Or is there a software fix?
>
> On Fri, Jun 12, 2020, 4:05 PM Nick Foster <bistromath@gmail.com> wrote:
>
>> The change in time of arrival with B200s is due to phase ambiguity. Do
>> you have a 10MHz reference shared between your devices as well?
>>
>> Don't know why N210 has that off-by-one timestamp. I'm guessing that
>> there's an extra flop in the logic for the PPS timing chain somewhere -- as
>> in, the clock starts ticking on the first tick after PPS comes in. I've
>> made that error about half a million times, myself.
>>
>> Nick
>>
>> On Fri, Jun 12, 2020 at 2:23 PM Aaron Smith via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hello all,
>>>
>>> I have two separate, but related, questions.
>>>
>>> I am trying to trigger an RF transmission every second, and I am
>>> receiving the transmission with a receiver that has very precise time
>>> stamps. I am driving the receiver with the same 1 PPS source as the B200
>>> and N210. For my simple test, I want the time of arrival at the receiver to
>>> register at 1 PPS + propagation delay of the RF coax cable + the USRP front
>>> end delay. In all cases I am running UHD 3.15.LTS
>>>
>>> With the N210 I can achieve this. However when I call
>>>
>>> usrp->set_time_next_pps(uhd::time_spec_t(0.0));
>>>
>>> and poll the last pps time, I see that it is consistently 20 ns before a
>>> second. That is, the pps shows at:
>>>
>>> 999999980 ns
>>> 1999999980 ns
>>> 2999999980 ns
>>>
>>> If I call usrp->set_time_next_pps(uhd::time_spec_t(20.0e-9)); then the 1
>>> PPS registers on the second. It's almost like the clock is biased by 20 ns.
>>> I have observed this across 3 different N210s. What could be causing this?
>>>
>>> With the B200, every time I destroy and recreate the
>>> uhd::usrp::multi_usrp there is a random change in the time of arrival at
>>> the receiver that appears to be uniformly distributed between 0 and
>>> 1/master_clock_rate. Is this expected? The Ettus website says "All
>>> functions that directly interact with the AD93xx (tuning, gain change, etc)
>>> are subject to the scheduling of the AD93xx. The determinism of these
>>> operations are not guaranteed. "
>>>
>>> Is this what I am experiencing?
>>>
>>> Thank you for the help!
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000006ec60005a7ed360e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The phase ambiguity is introduced by the divide-by-2 in th=
e PLLs of the Analog Devices AD9361 RF integrated transceiver=C2=A0on the B=
200.=C2=A0 =C2=A0These dividers randomly introduce a 0-degree or 180-degree=
 phase shift when they come up.=C2=A0=C2=A0<div><div><br></div><div><br></d=
iv></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Fri, Jun 12, 2020 at 4:08 PM Aaron Smith via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"auto">All of the devices share a 10 MHz reference that is generated f=
rom the same source as the 1 PPS.<div dir=3D"auto"><br></div><div dir=3D"au=
to">When you say it&#39;s a phase ambiguity, are you suggesting that it&#39=
;s a problem with the 10Hz reference or something inherent in the radio har=
dware that I will have to deal with? Or is there a software fix?</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fr=
i, Jun 12, 2020, 4:05 PM Nick Foster &lt;<a href=3D"mailto:bistromath@gmail=
.com" rel=3D"noreferrer" target=3D"_blank">bistromath@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div>The change in time of arrival with B200s is due to phase ambiguit=
y. Do you have a 10MHz reference shared between your devices as well?</div>=
<div><br></div><div>Don&#39;t know why N210 has that off-by-one timestamp. =
I&#39;m guessing that there&#39;s an extra flop in the logic for the PPS ti=
ming chain somewhere -- as in, the clock starts ticking on the first tick a=
fter PPS comes in. I&#39;ve made that error about half a million times, mys=
elf.<br></div><div><br></div><div>Nick<br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 12, 2020 at 2:2=
3 PM Aaron Smith via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettu=
s.com" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ett=
us.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div>Hello all,</div><div><br></div><div>I have two =
separate, but related, questions.</div><div><br></div><div>I am trying to t=
rigger an RF transmission every second, and I am receiving the transmission=
 with a receiver that has very precise time stamps. I am driving the receiv=
er with the same 1 PPS source as the B200 and N210. For my simple test, I w=
ant the time of arrival at the receiver to register at 1 PPS + propagation =
delay of the RF coax cable + the USRP front end delay. In all cases I am ru=
nning UHD 3.15.LTS<br></div><div><br></div><div>With the N210 I can achieve=
 this. However when I call=20
<pre>usrp-&gt;set_time_next_pps(uhd::time_spec_t(0.0));</pre>

</div><div>and poll the last pps time, I see that it is consistently 20 ns =
before a second. That is, the pps shows at:</div><div><br></div><div>999999=
980 ns<br></div><div>1999999980 ns<br></div><div>2999999980 ns<br></div><di=
v><br></div><div>If I call=20
usrp-&gt;set_time_next_pps(uhd::time_spec_t(20.0e-9)); then the 1 PPS regis=
ters on the second. It&#39;s almost like the clock is biased by 20 ns. I ha=
ve observed this across 3 different N210s. What could be causing this?</div=
><div><br></div><div>With the B200, every time I destroy and recreate the=
=20
uhd::usrp::multi_usrp there is a random change in the time of arrival at th=
e receiver that appears to be uniformly distributed between 0 and 1/master_=
clock_rate. Is this expected? The Ettus website says
&quot;All functions that directly interact with the AD93xx (tuning, gain=20
change, etc) are subject to the scheduling of the AD93xx. The=20
determinism of these operations are not guaranteed. &quot;<br></div><div><b=
r></div><div>Is this what I am experiencing? <br></div><div><br></div><div>=
Thank you for the help!<br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000006ec60005a7ed360e--


--===============3658704579824940748==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3658704579824940748==--

