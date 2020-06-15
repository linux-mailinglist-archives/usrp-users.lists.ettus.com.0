Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0591F9E36
	for <lists+usrp-users@lfdr.de>; Mon, 15 Jun 2020 19:13:55 +0200 (CEST)
Received: from [::1] (port=51274 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jksgC-0007TT-DE; Mon, 15 Jun 2020 13:13:52 -0400
Received: from mail-qt1-f196.google.com ([209.85.160.196]:38897)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jksg8-0007Nu-C4
 for usrp-users@lists.ettus.com; Mon, 15 Jun 2020 13:13:48 -0400
Received: by mail-qt1-f196.google.com with SMTP id g62so13188515qtd.5
 for <usrp-users@lists.ettus.com>; Mon, 15 Jun 2020 10:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:subject:mime-version:from:in-reply-to:cc
 :date:message-id:references:to;
 bh=pczZFvmSsIudC/1V8lPDKsJbIaYuC1ysz8K4Rkx3tXQ=;
 b=JpT+qYjCPmtRBC38AunGvJuDqNerUfb8fMPA8o87xupCcDes1Ksnq44/HA2NF0+tia
 AdPOPrrd8hhNguGFpfTVllCQlk16oK4f9QShXlIbEZhe2jrsQRMnIs0xPXO1YU35PJqr
 CM8IQfSpXi8ew50nKjJzq7saOlgyIQkhtPY3JsmJvWFRgpMmKg28Lx2EJwIzVE9wo8rh
 S06Rh5q+R5ksEN94hBmSqYhBHIRPmtTRWRwy4S5sxkXYgMOYn+oaRyXHQ4FA2K65mRQQ
 tkogbNDewpmDtRcZmBtgyBLYp29Hk8MsAXPzINSadESnntLeogINNqbMLLULC3jLF24y
 EBkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:subject:mime-version
 :from:in-reply-to:cc:date:message-id:references:to;
 bh=pczZFvmSsIudC/1V8lPDKsJbIaYuC1ysz8K4Rkx3tXQ=;
 b=JvBUl+9tC98XGwS2bAh7UXgJKabA7GphlarPTG2FN19LYFOPqPETPnDhWfy/AeqKZP
 BXOmnLK7YtsE0HXFfE7e5HpFB3Mp+IZn3+U9ZhaDn+l6gblj3DpdybaP3XlRha1dGpXq
 7UwH3u14MWLt0+DadvMydPNS01MR+9bbMX/ToLmkwSIPXQU2M89gWkupttnnFX6bjc8H
 QQs5DYZJ85wwb1VWyH/9LnXF2D6gnlW6jTs4IUjLdSZgVuV8EHMjKkhHa8GB81P42u9r
 3V5ivUPM9JdE4V/voJm9v1NBm27gPkXtCvmuTHd+CgEjO+jqxOz1W5tAnwmlLbVd94kP
 yxAA==
X-Gm-Message-State: AOAM530ZncL9Zzynw+p8Bi+FOo1uab5x8iqHc7tSNI3j78tlsRxQ5aiY
 lgoVaflWTnItj2gzJM+nCulbcyvTq00=
X-Google-Smtp-Source: ABdhPJwxvsHyXc5XUlTdsUPrlnP+gLXNn+ltLvwjgzQQ0znBIrW08BxAIa+0m0vDwrTGGUR2DLkwww==
X-Received: by 2002:ac8:3210:: with SMTP id x16mr16873595qta.192.1592241187538; 
 Mon, 15 Jun 2020 10:13:07 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.gmail.com with ESMTPSA id v59sm12356341qte.96.2020.06.15.10.13.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Jun 2020 10:13:07 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Apple-Notify-Thread: NO
X-Universally-Unique-Identifier: C058AF0A-0D2C-41D1-B094-94BBF0D410FD
In-Reply-To: <CAH2Hh72HmeMWJW_qoXLZqnSQTtA_E329tJ0CSnsAtAy7Mj7_=w@mail.gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Date: Mon, 15 Jun 2020 13:13:05 -0400
X-Apple-Message-Smime-Encrypt: NO
Message-Id: <056029D3-7656-4461-A933-7298467C4D5A@gmail.com>
References: <CAH2Hh72HmeMWJW_qoXLZqnSQTtA_E329tJ0CSnsAtAy7Mj7_=w@mail.gmail.com>
To: Aaron Smith <aarsmith54@gmail.com>
X-Mailer: iPhone Mail (17F80)
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============6039376950556143742=="
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


--===============6039376950556143742==
Content-Type: multipart/alternative; boundary=Apple-Mail-1214C3B9-6123-42CE-B4C2-646135D571E9
Content-Transfer-Encoding: 7bit


--Apple-Mail-1214C3B9-6123-42CE-B4C2-646135D571E9
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I think I need more information on what you=E2=80=99re doing.=20

Are you starting a timed transmit sequence on both B200 and seeing a timing d=
ifference between the two?=20

More details on your exact setup will help us all help you.=20

Sent from my iPhone

> On Jun 15, 2020, at 1:09 PM, Aaron Smith <aarsmith54@gmail.com> wrote:
>=20
> =EF=BB=BF
> I was able to test the B210 today and I confirmed that it also has a rando=
m delay that is related to 1/master_clock_rate.
>=20
> Marcus, I wonder if I misunderstood your email, because I thought it would=
 work.
>=20
> I am only transmitting with one channel. Do I have to utilize the other ch=
annel in some way to resolve the random delay?
>=20
> Thanks,
> Aaron
>=20
>> On Fri, Jun 12, 2020 at 8:19 PM Marcus D. Leech via USRP-users <usrp-user=
s@lists.ettus.com> wrote:
>> On 06/12/2020 10:07 PM, Aaron Smith via USRP-users wrote:
>>> Robin - with your insight I see that other users have addressed this on t=
his mailing list. In this thread:
>>> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-June/05=
7080.html the user reports that the B210 does not have this problem, even th=
ough it uses the same AD9361. Perhaps I will spend the money to test that ra=
dio because it's clear the B200 will not work for me.
>> Indeed, the B210 uses the AD9361, which has TWO channels that are inheren=
tly mutually-coherent, since they're fed with the same LO, so
>>   there's very little opportunity for any phase ambiguity.
>>=20
>> Where you run into trouble is trying to maintain phase coherence, and pre=
dictable-and-hopefully-zero mutual phase offset among multiple
>>   devices.  It's NOT just a matter of feeding them a common reference clo=
ck and 1PPS.  Things are much more nuanced than that.
>>=20
>> This Knowledge-Base article goes into some of this:
>>=20
>> https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Device=
s
>>=20
>> I had posted some pointers about RF synthesizers on this list a few days a=
go, due to a similar query.  If you've never really encountered
>>   RF synthesis before, it's illuminating to study the matter.
>>=20
>>=20
>>>=20
>>> On Fri, Jun 12, 2020 at 7:35 PM Robin Coxe <coxe@quanttux.com> wrote:
>>>> The phase ambiguity is introduced by the divide-by-2 in the PLLs of the=
 Analog Devices AD9361 RF integrated transceiver on the B200.   These divide=
rs randomly introduce a 0-degree or 180-degree phase shift when they come up=
. =20
>>>>=20
>>>>=20
>>>>=20
>>>> On Fri, Jun 12, 2020 at 4:08 PM Aaron Smith via USRP-users <usrp-users@=
lists.ettus.com> wrote:
>>>>> All of the devices share a 10 MHz reference that is generated from the=
 same source as the 1 PPS.
>>>>>=20
>>>>> When you say it's a phase ambiguity, are you suggesting that it's a pr=
oblem with the 10Hz reference or something inherent in the radio hardware th=
at I will have to deal with? Or is there a software fix?
>>>>>=20
>>>>> On Fri, Jun 12, 2020, 4:05 PM Nick Foster <bistromath@gmail.com> wrote=
:
>>>>>> The change in time of arrival with B200s is due to phase ambiguity. D=
o you have a 10MHz reference shared between your devices as well?
>>>>>>=20
>>>>>> Don't know why N210 has that off-by-one timestamp. I'm guessing that t=
here's an extra flop in the logic for the PPS timing chain somewhere -- as i=
n, the clock starts ticking on the first tick after PPS comes in. I've made t=
hat error about half a million times, myself.
>>>>>>=20
>>>>>> Nick
>>>>>>=20
>>>>>> On Fri, Jun 12, 2020 at 2:23 PM Aaron Smith via USRP-users <usrp-user=
s@lists.ettus.com> wrote:
>>>>>>> Hello all,
>>>>>>>=20
>>>>>>> I have two separate, but related, questions.
>>>>>>>=20
>>>>>>> I am trying to trigger an RF transmission every second, and I am rec=
eiving the transmission with a receiver that has very precise time stamps. I=
 am driving the receiver with the same 1 PPS source as the B200 and N210. Fo=
r my simple test, I want the time of arrival at the receiver to register at 1=
 PPS + propagation delay of the RF coax cable + the USRP front end delay. In=
 all cases I am running UHD 3.15.LTS
>>>>>>>=20
>>>>>>> With the N210 I can achieve this. However when I call
>>>>>>> usrp->set_time_next_pps(uhd::time_spec_t(0.0));
>>>>>>> and poll the last pps time, I see that it is consistently 20 ns befo=
re a second. That is, the pps shows at:
>>>>>>>=20
>>>>>>> 999999980 ns
>>>>>>> 1999999980 ns
>>>>>>> 2999999980 ns
>>>>>>>=20
>>>>>>> If I call usrp->set_time_next_pps(uhd::time_spec_t(20.0e-9)); then t=
he 1 PPS registers on the second. It's almost like the clock is biased by 20=
 ns. I have observed this across 3 different N210s. What could be causing th=
is?
>>>>>>>=20
>>>>>>> With the B200, every time I destroy and recreate the uhd::usrp::mult=
i_usrp there is a random change in the time of arrival at the receiver that a=
ppears to be uniformly distributed between 0 and 1/master_clock_rate. Is thi=
s expected? The Ettus website says "All functions that directly interact wit=
h the AD93xx (tuning, gain change, etc) are subject to the scheduling of the=
 AD93xx. The determinism of these operations are not guaranteed. "
>>>>>>>=20
>>>>>>> Is this what I am experiencing?=20
>>>>>>>=20
>>>>>>> Thank you for the help!
>>>>>>>=20
>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list
>>>>>>> USRP-users@lists.ettus.com
>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>=20
>>>=20
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-1214C3B9-6123-42CE-B4C2-646135D571E9
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I think I need more information on what you=
=E2=80=99re doing.&nbsp;<div><br></div><div>Are you starting a timed transmi=
t sequence on both B200 and seeing a timing difference between the two?&nbsp=
;</div><div><br></div><div>More details on your exact setup will help us all=
 help you.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D=
"ltr"><br><blockquote type=3D"cite">On Jun 15, 2020, at 1:09 PM, Aaron Smith=
 &lt;aarsmith54@gmail.com&gt; wrote:<br><br></blockquote></div><blockquote t=
ype=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>I was able to t=
est the B210 today and I confirmed that it also has a random delay that is r=
elated to 1/master_clock_rate.</div><div><br></div><div>Marcus, I wonder if I=
 misunderstood your email, because I thought it would work.</div><div><br></=
div><div>I am only transmitting with one channel. Do I have to utilize the o=
ther channel in some way to resolve the random delay?<br></div><div><br></di=
v><div>Thanks,</div><div>Aaron<br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 12, 2020 at 8:19 PM Marcu=
s D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">
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
          <div><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.=
ettus.com/2018-June/057080.html" target=3D"_blank">http://lists.ettus.com/pi=
permail/usrp-users_lists.ettus.com/2018-June/057080.html</a>
            the user reports that the B210 does not have this problem,
            even though it uses the same AD9361. Perhaps I will spend
            the money to test that radio because it's clear the B200
            will not work for me.</div>
        </div>
      </div>
    </blockquote>
    Indeed, the B210 uses the AD9361, which has TWO channels that are
    inherently mutually-coherent, since they're fed with the same LO, so<br>=

    &nbsp; there's very little opportunity for any phase ambiguity.<br>
    <br>
    Where you run into trouble is trying to maintain phase coherence,
    and predictable-and-hopefully-zero mutual phase offset among
    multiple<br>
    &nbsp; devices.&nbsp; It's NOT just a matter of feeding them a common
    reference clock and 1PPS.&nbsp; Things are much more nuanced than that.<=
br>
    <br>
    This Knowledge-Base article goes into some of this:<br>
    <br>
<a href=3D"https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USR=
P_Devices" target=3D"_blank">https://kb.ettus.com/Synchronization_and_MIMO_C=
apability_with_USRP_Devices</a><br>
    <br>
    I had posted some pointers about RF synthesizers on this list a few
    days ago, due to a similar query.&nbsp; If you've never really
    encountered<br>
    &nbsp; RF synthesis before, it's illuminating to study the matter.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 12, 2020 at 7:35
          PM Robin Coxe &lt;<a href=3D"mailto:coxe@quanttux.com" target=3D"_=
blank">coxe@quanttux.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">The phase ambiguity is introduced by the
            divide-by-2 in the PLLs of the Analog Devices AD9361 RF
            integrated transceiver&nbsp;on the B200.&nbsp; &nbsp;These divid=
ers
            randomly introduce a 0-degree or 180-degree phase shift when
            they come up.&nbsp;&nbsp;
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
              4:08 PM Aaron Smith via USRP-users &lt;<a href=3D"mailto:usrp-=
users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
              <div dir=3D"auto">All of the devices share a 10 MHz
                reference that is generated from the same source as the
                1 PPS.
                <div dir=3D"auto"><br>
                </div>
                <div dir=3D"auto">When you say it's a phase ambiguity, are
                  you suggesting that it's a problem with the 10Hz
                  reference or something inherent in the radio hardware
                  that I will have to deal with? Or is there a software
                  fix?</div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 12, 2020,
                  4:05 PM Nick Foster &lt;<a href=3D"mailto:bistromath@gmail=
.com" rel=3D"noreferrer" target=3D"_blank">bistromath@gmail.com</a>&gt; wrot=
e:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div dir=3D"ltr">
                    <div>The change in time of arrival with B200s is due
                      to phase ambiguity. Do you have a 10MHz reference
                      shared between your devices as well?</div>
                    <div><br>
                    </div>
                    <div>Don't know why N210 has that off-by-one
                      timestamp. I'm guessing that there's an extra flop
                      in the logic for the PPS timing chain somewhere --
                      as in, the clock starts ticking on the first tick
                      after PPS comes in. I've made that error about
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
                      2020 at 2:23 PM Aaron Smith via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer noreferrer" target=3D=
"_blank">usrp-users@lists.ettus.com</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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
                          <pre>usrp-&gt;set_time_next_pps(uhd::time_spec_t(0=
.0));</pre>
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
                          usrp-&gt;set_time_next_pps(uhd::time_spec_t(20.0e-=
9));
                          then the 1 PPS registers on the second. It's
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
                          "All functions that directly interact with the
                          AD93xx (tuning, gain change, etc) are subject
                          to the scheduling of the AD93xx. The
                          determinism of these operations are not
                          guaranteed. "<br>
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
                      <a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"n=
oreferrer noreferrer" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
                      <a href=3D"http://lists.ettus.com/mailman/listinfo/usr=
p-users_lists.ettus.com" rel=3D"noreferrer noreferrer noreferrer" target=3D"=
_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</=
a><br>
                    </blockquote>
                  </div>
                </blockquote>
              </div>
              _______________________________________________<br>
              USRP-users mailing list<br>
              <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank=
">USRP-users@lists.ettus.com</a><br>
              <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_=
lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com=
/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-1214C3B9-6123-42CE-B4C2-646135D571E9--


--===============6039376950556143742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6039376950556143742==--

