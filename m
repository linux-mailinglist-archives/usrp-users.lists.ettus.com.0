Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D5AFC1F9EA4
	for <lists+usrp-users@lfdr.de>; Mon, 15 Jun 2020 19:36:37 +0200 (CEST)
Received: from [::1] (port=60342 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jkt2A-0001Lh-Cj; Mon, 15 Jun 2020 13:36:34 -0400
Received: from mail-ed1-f47.google.com ([209.85.208.47]:35143)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aarsmith54@gmail.com>)
 id 1jkt25-0001GU-S4
 for usrp-users@lists.ettus.com; Mon, 15 Jun 2020 13:36:30 -0400
Received: by mail-ed1-f47.google.com with SMTP id e12so12144619eds.2
 for <usrp-users@lists.ettus.com>; Mon, 15 Jun 2020 10:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fg/TWjriVKJn6JJRUJ/t8Rxa5GSn9Ws/edgIlUuBX04=;
 b=stFhL0BRW5WVT/yTTDObFSdfAa35hsO05GOqzholhjonEulJ/2D9tn7Mw/kqwrTCaz
 32v+T2tlBptZzHeK4q50wdL95XADPYKRh9/Ron/+VFFvFKVpzAzhUNXKvnkTQa4a+8GR
 15SN/CMc+LRwwQivCwNXJUMBmKIcAwonhdkDvdDVygqh0PxPcnlOlUCGUgPM9A776i+r
 gYxBwqj0KWE8rbrWp4JVbBNa3NqdijS2g7mTOtoYSP0ErGl05sw1rGLFVTppBxX6pGx5
 5fBe2YrW3+JdpR/zXZbemWYZMKBwiQD2FG9ONktmxC2WpxENn8kvyaqfyzrqFTJAJ/Ii
 Q7sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fg/TWjriVKJn6JJRUJ/t8Rxa5GSn9Ws/edgIlUuBX04=;
 b=k3PEWAMeS0cvBuK2S+8TATGQgB8i2Jm/5wwlnxGoE/n/5v4oY9pMhpe2jLpZJi5va8
 arvCYIQmF2lxPt89tJnLXL4pZER0bmvtaxwlb/K26qmMrUyySBD78QT1b9UC9gWjEZ/4
 0SCZvUaWUg7hmRGkGWSL3IJYFMmZybZyHkOhXdfrEIVrhlIU3M8KXRAKuaKRh4GO7B1W
 q80GuKl0Oyr+qxtfg54FrDK0urVXgXUJtiiAQc3A22tXA23Y77OMBkVRJ0UFIlN+glUD
 VTYwa/GBlzNYnroM0pzav6S9KYEX+7vLkqW//Xat6hyH/0HzN6TCuaEyYvvf1d1Tb/ps
 kPQQ==
X-Gm-Message-State: AOAM530kG7hK6B+oGzHiLLHgVkFqqrC+LUzbyE6fq6Y3gSKxEuQNm53C
 2jG9mQ567rh21NNyIQpBW1mC/W+bmz9Gw1KqoU3Kog==
X-Google-Smtp-Source: ABdhPJxlHC4KVyzqy6nWjRXah2Z0LDsFTn6YXVqjQibgyJBq4Cc/1IxGP80CvEJCSx0pCvOf8d8WhXfFUqKP/EABVO4=
X-Received: by 2002:aa7:ca02:: with SMTP id y2mr24205480eds.106.1592242548676; 
 Mon, 15 Jun 2020 10:35:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAH2Hh72HmeMWJW_qoXLZqnSQTtA_E329tJ0CSnsAtAy7Mj7_=w@mail.gmail.com>
 <056029D3-7656-4461-A933-7298467C4D5A@gmail.com>
In-Reply-To: <056029D3-7656-4461-A933-7298467C4D5A@gmail.com>
Date: Mon, 15 Jun 2020 11:35:37 -0600
Message-ID: <CAH2Hh70z2hCajHOLWk=R24ZhqLTR_KuR=fKaY9q=zebG8Y4CQQ@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
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
Content-Type: multipart/mixed; boundary="===============0040252484035386926=="
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

--===============0040252484035386926==
Content-Type: multipart/alternative; boundary="000000000000829a9205a822db88"

--000000000000829a9205a822db88
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Looking back over the thread, I thought there might be some confusion about
what I am trying to accomplish.

My goal is to get a radio (and only 1 radio) to transmit at a specified
time. I don't care what the front end transmit delay of the radio is, I
just want it to be consistent so I can calibrate it out of my system. To
test the stability of the transmit time, I am using 1 radio connected to an
external 1  PPS and 10 MHz reference. I have the radio directly connected
to a receiver through a coax cable. The radio and the receiver share the 1
PPS and 10 MHz reference, and the receiver is well calibrated, so it
timestamps data very precisely.

If I align the radio's clock to align to an external 1 PPS, and then use a
timed transmission to transmit on the 1 PPS, the time of arrival of my
signal at the receiver, relative to the PPS, should be: TOA =3D front end t=
x
delay + RF cable delay between the receiver and USRP. At first I tested a
B200 and noticed, after many transmissions, the TOA =3D front end tx delay =
+
RF cable delay between the receiver and USRP +
Uniform(0,1/master_clock_rate). This morning I observed the same random
delay with the B210. I have tested an X310 and N210 and they did not have
the random delay. They gave a very reliable TOA.

I would like to know ifthe B2x0 hardware is capable of what I'm trying to
do, or do I need to buy a more expensive radio?

Thanks for your help.

On Mon, Jun 15, 2020 at 11:13 AM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> I think I need more information on what you=E2=80=99re doing.
>
> Are you starting a timed transmit sequence on both B200 and seeing a
> timing difference between the two?
>
> More details on your exact setup will help us all help you.
>
> Sent from my iPhone
>
> On Jun 15, 2020, at 1:09 PM, Aaron Smith <aarsmith54@gmail.com> wrote:
>
> =EF=BB=BF
> I was able to test the B210 today and I confirmed that it also has a
> random delay that is related to 1/master_clock_rate.
>
> Marcus, I wonder if I misunderstood your email, because I thought it woul=
d
> work.
>
> I am only transmitting with one channel. Do I have to utilize the other
> channel in some way to resolve the random delay?
>
> Thanks,
> Aaron
>
> On Fri, Jun 12, 2020 at 8:19 PM Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On 06/12/2020 10:07 PM, Aaron Smith via USRP-users wrote:
>>
>> Robin - with your insight I see that other users have addressed this on
>> this mailing list. In this thread:
>>
>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-June/05=
7080.html
>> the user reports that the B210 does not have this problem, even though i=
t
>> uses the same AD9361. Perhaps I will spend the money to test that radio
>> because it's clear the B200 will not work for me.
>>
>> Indeed, the B210 uses the AD9361, which has TWO channels that are
>> inherently mutually-coherent, since they're fed with the same LO, so
>>   there's very little opportunity for any phase ambiguity.
>>
>> Where you run into trouble is trying to maintain phase coherence, and
>> predictable-and-hopefully-zero mutual phase offset among multiple
>>   devices.  It's NOT just a matter of feeding them a common reference
>> clock and 1PPS.  Things are much more nuanced than that.
>>
>> This Knowledge-Base article goes into some of this:
>>
>> https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devic=
es
>>
>> I had posted some pointers about RF synthesizers on this list a few days
>> ago, due to a similar query.  If you've never really encountered
>>   RF synthesis before, it's illuminating to study the matter.
>>
>>
>>
>> On Fri, Jun 12, 2020 at 7:35 PM Robin Coxe <coxe@quanttux.com> wrote:
>>
>>> The phase ambiguity is introduced by the divide-by-2 in the PLLs of the
>>> Analog Devices AD9361 RF integrated transceiver on the B200.   These
>>> dividers randomly introduce a 0-degree or 180-degree phase shift when t=
hey
>>> come up.
>>>
>>>
>>>
>>> On Fri, Jun 12, 2020 at 4:08 PM Aaron Smith via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> All of the devices share a 10 MHz reference that is generated from the
>>>> same source as the 1 PPS.
>>>>
>>>> When you say it's a phase ambiguity, are you suggesting that it's a
>>>> problem with the 10Hz reference or something inherent in the radio har=
dware
>>>> that I will have to deal with? Or is there a software fix?
>>>>
>>>> On Fri, Jun 12, 2020, 4:05 PM Nick Foster <bistromath@gmail.com> wrote=
:
>>>>
>>>>> The change in time of arrival with B200s is due to phase ambiguity. D=
o
>>>>> you have a 10MHz reference shared between your devices as well?
>>>>>
>>>>> Don't know why N210 has that off-by-one timestamp. I'm guessing that
>>>>> there's an extra flop in the logic for the PPS timing chain somewhere=
 -- as
>>>>> in, the clock starts ticking on the first tick after PPS comes in. I'=
ve
>>>>> made that error about half a million times, myself.
>>>>>
>>>>> Nick
>>>>>
>>>>> On Fri, Jun 12, 2020 at 2:23 PM Aaron Smith via USRP-users <
>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>
>>>>>> Hello all,
>>>>>>
>>>>>> I have two separate, but related, questions.
>>>>>>
>>>>>> I am trying to trigger an RF transmission every second, and I am
>>>>>> receiving the transmission with a receiver that has very precise tim=
e
>>>>>> stamps. I am driving the receiver with the same 1 PPS source as the =
B200
>>>>>> and N210. For my simple test, I want the time of arrival at the rece=
iver to
>>>>>> register at 1 PPS + propagation delay of the RF coax cable + the USR=
P front
>>>>>> end delay. In all cases I am running UHD 3.15.LTS
>>>>>>
>>>>>> With the N210 I can achieve this. However when I call
>>>>>>
>>>>>> usrp->set_time_next_pps(uhd::time_spec_t(0.0));
>>>>>>
>>>>>> and poll the last pps time, I see that it is consistently 20 ns
>>>>>> before a second. That is, the pps shows at:
>>>>>>
>>>>>> 999999980 ns
>>>>>> 1999999980 ns
>>>>>> 2999999980 ns
>>>>>>
>>>>>> If I call usrp->set_time_next_pps(uhd::time_spec_t(20.0e-9)); then
>>>>>> the 1 PPS registers on the second. It's almost like the clock is bia=
sed by
>>>>>> 20 ns. I have observed this across 3 different N210s. What could be =
causing
>>>>>> this?
>>>>>>
>>>>>> With the B200, every time I destroy and recreate the
>>>>>> uhd::usrp::multi_usrp there is a random change in the time of arriva=
l at
>>>>>> the receiver that appears to be uniformly distributed between 0 and
>>>>>> 1/master_clock_rate. Is this expected? The Ettus website says "All
>>>>>> functions that directly interact with the AD93xx (tuning, gain chang=
e, etc)
>>>>>> are subject to the scheduling of the AD93xx. The determinism of thes=
e
>>>>>> operations are not guaranteed. "
>>>>>>
>>>>>> Is this what I am experiencing?
>>>>>>
>>>>>> Thank you for the help!
>>>>>>
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list
>>>>>> USRP-users@lists.ettus.com
>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>
>>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>
>>
>> _______________________________________________
>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000829a9205a822db88
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Looking back over the thread, I thought there might b=
e some confusion about what I am trying to accomplish.</div><div><br></div>=
<div>My goal is to get a radio (and only 1 radio) to transmit at a specifie=
d time. I don&#39;t care what the front end transmit delay of the radio is,=
 I just want it to be consistent so I can calibrate it out of my system. To=
 test the stability of the transmit time, I am using 1 radio connected to a=
n external 1=C2=A0 PPS and 10 MHz reference. I have the radio directly conn=
ected to a receiver through a coax cable. The radio and the receiver share =
the 1 PPS and 10 MHz reference, and the receiver is well calibrated, so it =
timestamps data very precisely.<br></div><div><br></div><div>If I align the=
 radio&#39;s clock to align to an external 1 PPS, and then use a timed tran=
smission to transmit on the 1 PPS, the time of arrival of my signal at the =
receiver, relative to the PPS, should be: TOA =3D front end tx delay + RF c=
able delay between the receiver and USRP. At first I tested a B200 and noti=
ced, after many transmissions, the TOA =3D=20
 front end tx delay + RF cable delay between the receiver and USRP

+ Uniform(0,1/master_clock_rate). This morning I observed the same random d=
elay with the B210. I have tested an X310 and N210 and they did not have th=
e random delay. They gave a very reliable TOA.</div><div><br></div><div>I w=
ould like to know ifthe B2x0 hardware is capable of what I&#39;m trying to =
do, or do I need to buy a more expensive radio?</div><div><br></div><div>Th=
anks for your help.<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Jun 15, 2020 at 11:13 AM Marcus D Lee=
ch &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvo=
nbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"auto">I think I need more information on what y=
ou=E2=80=99re doing.=C2=A0<div><br></div><div>Are you starting a timed tran=
smit sequence on both B200 and seeing a timing difference between the two?=
=C2=A0</div><div><br></div><div>More details on your exact setup will help =
us all help you.=C2=A0<br><br><div dir=3D"ltr">Sent from my iPhone</div><di=
v dir=3D"ltr"><br><blockquote type=3D"cite">On Jun 15, 2020, at 1:09 PM, Aa=
ron Smith &lt;<a href=3D"mailto:aarsmith54@gmail.com" target=3D"_blank">aar=
smith54@gmail.com</a>&gt; wrote:<br><br></blockquote></div><blockquote type=
=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>I was able to tes=
t the B210 today and I confirmed that it also has a random delay that is re=
lated to 1/master_clock_rate.</div><div><br></div><div>Marcus, I wonder if =
I misunderstood your email, because I thought it would work.</div><div><br>=
</div><div>I am only transmitting with one channel. Do I have to utilize th=
e other channel in some way to resolve the random delay?<br></div><div><br>=
</div><div>Thanks,</div><div>Aaron<br></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 12, 2020 at 8:19 PM=
 Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettu=
s.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 06/12/2020 10:07 PM, Aaron Smith via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr">Robin - with your insight I see that other users
          have addressed this on this mailing list. In this thread:
          <div><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists=
.ettus.com/2018-June/057080.html" target=3D"_blank">http://lists.ettus.com/=
pipermail/usrp-users_lists.ettus.com/2018-June/057080.html</a>
            the user reports that the B210 does not have this problem,
            even though it uses the same AD9361. Perhaps I will spend
            the money to test that radio because it&#39;s clear the B200
            will not work for me.</div>
        </div>
      </div>
    </blockquote>
    Indeed, the B210 uses the AD9361, which has TWO channels that are
    inherently mutually-coherent, since they&#39;re fed with the same LO, s=
o<br>
    =C2=A0 there&#39;s very little opportunity for any phase ambiguity.<br>
    <br>
    Where you run into trouble is trying to maintain phase coherence,
    and predictable-and-hopefully-zero mutual phase offset among
    multiple<br>
    =C2=A0 devices.=C2=A0 It&#39;s NOT just a matter of feeding them a comm=
on
    reference clock and 1PPS.=C2=A0 Things are much more nuanced than that.=
<br>
    <br>
    This Knowledge-Base article goes into some of this:<br>
    <br>
<a href=3D"https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_US=
RP_Devices" target=3D"_blank">https://kb.ettus.com/Synchronization_and_MIMO=
_Capability_with_USRP_Devices</a><br>
    <br>
    I had posted some pointers about RF synthesizers on this list a few
    days ago, due to a similar query.=C2=A0 If you&#39;ve never really
    encountered<br>
    =C2=A0 RF synthesis before, it&#39;s illuminating to study the matter.<=
br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 12, 2020 at 7:35
          PM Robin Coxe &lt;<a href=3D"mailto:coxe@quanttux.com" target=3D"=
_blank">coxe@quanttux.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">The phase ambiguity is introduced by the
            divide-by-2 in the PLLs of the Analog Devices AD9361 RF
            integrated transceiver=C2=A0on the B200.=C2=A0 =C2=A0These divi=
ders
            randomly introduce a 0-degree or 180-degree phase shift when
            they come up.=C2=A0=C2=A0
            <div>
              <div><br>
              </div>
              <div><br>
              </div>
            </div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 12, 2020 at
              4:08 PM Aaron Smith via USRP-users &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt=
;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
              <div dir=3D"auto">All of the devices share a 10 MHz
                reference that is generated from the same source as the
                1 PPS.
                <div dir=3D"auto"><br>
                </div>
                <div dir=3D"auto">When you say it&#39;s a phase ambiguity, =
are
                  you suggesting that it&#39;s a problem with the 10Hz
                  reference or something inherent in the radio hardware
                  that I will have to deal with? Or is there a software
                  fix?</div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 12, 2020,
                  4:05 PM Nick Foster &lt;<a href=3D"mailto:bistromath@gmai=
l.com" rel=3D"noreferrer" target=3D"_blank">bistromath@gmail.com</a>&gt; wr=
ote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div dir=3D"ltr">
                    <div>The change in time of arrival with B200s is due
                      to phase ambiguity. Do you have a 10MHz reference
                      shared between your devices as well?</div>
                    <div><br>
                    </div>
                    <div>Don&#39;t know why N210 has that off-by-one
                      timestamp. I&#39;m guessing that there&#39;s an extra=
 flop
                      in the logic for the PPS timing chain somewhere --
                      as in, the clock starts ticking on the first tick
                      after PPS comes in. I&#39;ve made that error about
                      half a million times, myself.<br>
                    </div>
                    <div><br>
                    </div>
                    <div>Nick<br>
                    </div>
                  </div>
                  <br>
                  <div class=3D"gmail_quote">
                    <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 12,
                      2020 at 2:23 PM Aaron Smith via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer noreferrer" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                      <div dir=3D"ltr">
                        <div>Hello all,</div>
                        <div><br>
                        </div>
                        <div>I have two separate, but related,
                          questions.</div>
                        <div><br>
                        </div>
                        <div>I am trying to trigger an RF transmission
                          every second, and I am receiving the
                          transmission with a receiver that has very
                          precise time stamps. I am driving the receiver
                          with the same 1 PPS source as the B200 and
                          N210. For my simple test, I want the time of
                          arrival at the receiver to register at 1 PPS +
                          propagation delay of the RF coax cable + the
                          USRP front end delay. In all cases I am
                          running UHD 3.15.LTS<br>
                        </div>
                        <div><br>
                        </div>
                        <div>With the N210 I can achieve this. However
                          when I call
                          <pre>usrp-&gt;set_time_next_pps(uhd::time_spec_t(=
0.0));</pre>
                        </div>
                        <div>and poll the last pps time, I see that it
                          is consistently 20 ns before a second. That
                          is, the pps shows at:</div>
                        <div><br>
                        </div>
                        <div>999999980 ns<br>
                        </div>
                        <div>1999999980 ns<br>
                        </div>
                        <div>2999999980 ns<br>
                        </div>
                        <div><br>
                        </div>
                        <div>If I call
                          usrp-&gt;set_time_next_pps(uhd::time_spec_t(20.0e=
-9));
                          then the 1 PPS registers on the second. It&#39;s
                          almost like the clock is biased by 20 ns. I
                          have observed this across 3 different N210s.
                          What could be causing this?</div>
                        <div><br>
                        </div>
                        <div>With the B200, every time I destroy and
                          recreate the uhd::usrp::multi_usrp there is a
                          random change in the time of arrival at the
                          receiver that appears to be uniformly
                          distributed between 0 and 1/master_clock_rate.
                          Is this expected? The Ettus website says
                          &quot;All functions that directly interact with t=
he
                          AD93xx (tuning, gain change, etc) are subject
                          to the scheduling of the AD93xx. The
                          determinism of these operations are not
                          guaranteed. &quot;<br>
                        </div>
                        <div><br>
                        </div>
                        <div>Is this what I am experiencing? <br>
                        </div>
                        <div><br>
                        </div>
                        <div>Thank you for the help!<br>
                        </div>
                        <div><br>
                        </div>
                      </div>
                      _______________________________________________<br>
                      USRP-users mailing list<br>
                      <a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"=
noreferrer noreferrer" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
                      <a href=3D"http://lists.ettus.com/mailman/listinfo/us=
rp-users_lists.ettus.com" rel=3D"noreferrer noreferrer noreferrer" target=
=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a><br>
                    </blockquote>
                  </div>
                </blockquote>
              </div>
              _______________________________________________<br>
              USRP-users mailing list<br>
              <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blan=
k">USRP-users@lists.ettus.com</a><br>
              <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.c=
om/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></div></blockquote></div>

--000000000000829a9205a822db88--


--===============0040252484035386926==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0040252484035386926==--

