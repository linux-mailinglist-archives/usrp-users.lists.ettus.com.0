Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FE61F804E
	for <lists+usrp-users@lfdr.de>; Sat, 13 Jun 2020 04:08:51 +0200 (CEST)
Received: from [::1] (port=60602 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjvbE-00074F-KR; Fri, 12 Jun 2020 22:08:48 -0400
Received: from mail-ej1-f45.google.com ([209.85.218.45]:37388)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aarsmith54@gmail.com>)
 id 1jjvbA-0006vF-BI
 for usrp-users@lists.ettus.com; Fri, 12 Jun 2020 22:08:44 -0400
Received: by mail-ej1-f45.google.com with SMTP id mb16so11922665ejb.4
 for <usrp-users@lists.ettus.com>; Fri, 12 Jun 2020 19:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/0Tkp++hTHQ9htNY9bt80sqncqZUtjxRsP5MQTLljPw=;
 b=cx2JT33z2TXxoYJ9r5nFG7ZBW7n8Y+ydWfYZm4TaVKOMnVMb1IH97Ir1My0Sb1I/hS
 b6dDhiy3WEbYlRvwB4Jp1WtlSlaCSzKav084rjv9LdZrWMxG6aoinaNNZ2ttCUpLq/Rk
 97A7CULonG8CNRBf0HtUiZGQnnes8GVSanxzVZFV6O352oj4/UGevg2LHDkt4lViPfRD
 IQz0+4oU7exGRjpt0jlx/YhCZEDDcXGSa3paD2fxYKD1ccW6qtwlHwmVXa+6UJgJXemn
 VsuJjAU/pNjcaWkYtCnKH/UU/PXD1/FBNj93lc0amrHqiNHrqkAHB7vmtVETFDCb+9pv
 AQdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/0Tkp++hTHQ9htNY9bt80sqncqZUtjxRsP5MQTLljPw=;
 b=an8oJvVqZHjG34G+kDq/b/oArH9I+mRqZjbMBLNomLV4+/7QW3KhlqVb3YVmYzKbNb
 GY14bsmkEZ0f1BojBSNLIWOZjCbzHGkot2Nv38vdz/BzqxrgOwp2HA9QwqJz9g2FrIxc
 aIvj/FCrwUaAxjsotim3aIY3lNT9dB3xEx9RR2Mrl6+24swQA0OzYStlu2xeiRTw6R3O
 /JYGh+ge9FKVe8Gv9m5DHPzLRprZyy6drWiX7Rlk+wfSQUkYKRHS8Wdtru9UKmgIkojC
 tv8vjofs2jUVwmLbZRtkwPbAKku6ZfPi6+vBjxPWTt663vXg2v8e4WzNktBvQplEGSEQ
 D4NQ==
X-Gm-Message-State: AOAM533KoX5Af4StnVQiRf75y14o/Kpdo1WJK2PEbt+Mt9MKTKSQuefK
 fEPIrjVCMGAcAexo9bwwSYk+EzA6s9fgyKgzId8=
X-Google-Smtp-Source: ABdhPJznw877+GQW9GQRHL9sV0SKj27O9pZPNmk4X2mlwgrrEjEsLpI1m2O61tznp1pFK8wA2Qm5jJDkk1+24Yw+lEI=
X-Received: by 2002:a17:906:4c81:: with SMTP id
 q1mr16183330eju.273.1592014083273; 
 Fri, 12 Jun 2020 19:08:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAH2Hh71qD9o27hGbe3DEtZkgXyWsfcScNX-RB6NbuOCq5DVUGg@mail.gmail.com>
 <CA+JMMq9n4LDNc_8ZjDm=Wpu04V1jALL4Z-CfkvTJ0__aH1Yzjg@mail.gmail.com>
 <CAH2Hh72z75OFeQvto-VcaGAsJ_WDSkq0qAn--tr8amS_4OEhiw@mail.gmail.com>
 <CAKJyDkKpBvR92zC4en=J4S+=-=2ykXqMpiva5x2furAkq1gi+A@mail.gmail.com>
In-Reply-To: <CAKJyDkKpBvR92zC4en=J4S+=-=2ykXqMpiva5x2furAkq1gi+A@mail.gmail.com>
Date: Fri, 12 Jun 2020 20:07:52 -0600
Message-ID: <CAH2Hh73FqoMQaCpCmpRbbOaQQefYZ83up6BF9k+qCuTBApKNuQ@mail.gmail.com>
To: Robin Coxe <coxe@quanttux.com>
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
From: Aaron Smith via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Smith <aarsmith54@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6640273886901933998=="
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

--===============6640273886901933998==
Content-Type: multipart/alternative; boundary="000000000000e938e105a7eda9d0"

--000000000000e938e105a7eda9d0
Content-Type: text/plain; charset="UTF-8"

Robin - with your insight I see that other users have addressed this on
this mailing list. In this thread:
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-June/057080.html
the user reports that the B210 does not have this problem, even though it
uses the same AD9361. Perhaps I will spend the money to test that radio
because it's clear the B200 will not work for me.

On Fri, Jun 12, 2020 at 7:35 PM Robin Coxe <coxe@quanttux.com> wrote:

> The phase ambiguity is introduced by the divide-by-2 in the PLLs of the
> Analog Devices AD9361 RF integrated transceiver on the B200.   These
> dividers randomly introduce a 0-degree or 180-degree phase shift when they
> come up.
>
>
>
> On Fri, Jun 12, 2020 at 4:08 PM Aaron Smith via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> All of the devices share a 10 MHz reference that is generated from the
>> same source as the 1 PPS.
>>
>> When you say it's a phase ambiguity, are you suggesting that it's a
>> problem with the 10Hz reference or something inherent in the radio hardware
>> that I will have to deal with? Or is there a software fix?
>>
>> On Fri, Jun 12, 2020, 4:05 PM Nick Foster <bistromath@gmail.com> wrote:
>>
>>> The change in time of arrival with B200s is due to phase ambiguity. Do
>>> you have a 10MHz reference shared between your devices as well?
>>>
>>> Don't know why N210 has that off-by-one timestamp. I'm guessing that
>>> there's an extra flop in the logic for the PPS timing chain somewhere -- as
>>> in, the clock starts ticking on the first tick after PPS comes in. I've
>>> made that error about half a million times, myself.
>>>
>>> Nick
>>>
>>> On Fri, Jun 12, 2020 at 2:23 PM Aaron Smith via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hello all,
>>>>
>>>> I have two separate, but related, questions.
>>>>
>>>> I am trying to trigger an RF transmission every second, and I am
>>>> receiving the transmission with a receiver that has very precise time
>>>> stamps. I am driving the receiver with the same 1 PPS source as the B200
>>>> and N210. For my simple test, I want the time of arrival at the receiver to
>>>> register at 1 PPS + propagation delay of the RF coax cable + the USRP front
>>>> end delay. In all cases I am running UHD 3.15.LTS
>>>>
>>>> With the N210 I can achieve this. However when I call
>>>>
>>>> usrp->set_time_next_pps(uhd::time_spec_t(0.0));
>>>>
>>>> and poll the last pps time, I see that it is consistently 20 ns before
>>>> a second. That is, the pps shows at:
>>>>
>>>> 999999980 ns
>>>> 1999999980 ns
>>>> 2999999980 ns
>>>>
>>>> If I call usrp->set_time_next_pps(uhd::time_spec_t(20.0e-9)); then the
>>>> 1 PPS registers on the second. It's almost like the clock is biased by 20
>>>> ns. I have observed this across 3 different N210s. What could be causing
>>>> this?
>>>>
>>>> With the B200, every time I destroy and recreate the
>>>> uhd::usrp::multi_usrp there is a random change in the time of arrival at
>>>> the receiver that appears to be uniformly distributed between 0 and
>>>> 1/master_clock_rate. Is this expected? The Ettus website says "All
>>>> functions that directly interact with the AD93xx (tuning, gain change, etc)
>>>> are subject to the scheduling of the AD93xx. The determinism of these
>>>> operations are not guaranteed. "
>>>>
>>>> Is this what I am experiencing?
>>>>
>>>> Thank you for the help!
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000e938e105a7eda9d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Robin - with your insight I see that othe=
r users have addressed this on this mailing list. In this thread:<div><a hr=
ef=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-June=
/057080.html">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2=
018-June/057080.html</a> the user reports that the B210 does not have this =
problem, even though it uses the same AD9361. Perhaps I will spend the mone=
y to test that radio because it&#39;s clear the B200 will not work for me.<=
/div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Fri, Jun 12, 2020 at 7:35 PM Robin Coxe &lt;<a href=3D"mailto=
:coxe@quanttux.com">coxe@quanttux.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1p=
x;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr">The phase ambiguity is introduced by the divide-by-2 i=
n the PLLs of the Analog Devices AD9361 RF integrated transceiver=C2=A0on t=
he B200.=C2=A0 =C2=A0These dividers randomly introduce a 0-degree or 180-de=
gree phase shift when they come up.=C2=A0=C2=A0<div><div><br></div><div><br=
></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Fri, Jun 12, 2020 at 4:08 PM Aaron Smith via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users=
@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:s=
olid;border-left-color:rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"=
>All of the devices share a 10 MHz reference that is generated from the sam=
e source as the 1 PPS.<div dir=3D"auto"><br></div><div dir=3D"auto">When yo=
u say it&#39;s a phase ambiguity, are you suggesting that it&#39;s a proble=
m with the 10Hz reference or something inherent in the radio hardware that =
I will have to deal with? Or is there a software fix?</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 12, =
2020, 4:05 PM Nick Foster &lt;<a href=3D"mailto:bistromath@gmail.com" rel=
=3D"noreferrer" target=3D"_blank">bistromath@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div>The change in time of arrival wi=
th B200s is due to phase ambiguity. Do you have a 10MHz reference shared be=
tween your devices as well?</div><div><br></div><div>Don&#39;t know why N21=
0 has that off-by-one timestamp. I&#39;m guessing that there&#39;s an extra=
 flop in the logic for the PPS timing chain somewhere -- as in, the clock s=
tarts ticking on the first tick after PPS comes in. I&#39;ve made that erro=
r about half a million times, myself.<br></div><div><br></div><div>Nick<br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Fri, Jun 12, 2020 at 2:23 PM Aaron Smith via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer noreferrer" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:=
1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left=
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
</blockquote></div>

--000000000000e938e105a7eda9d0--


--===============6640273886901933998==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6640273886901933998==--

