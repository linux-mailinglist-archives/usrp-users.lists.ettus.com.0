Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F39702AE407
	for <lists+usrp-users@lfdr.de>; Wed, 11 Nov 2020 00:28:42 +0100 (CET)
Received: from [::1] (port=42822 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcd45-0004Sv-GW; Tue, 10 Nov 2020 18:28:41 -0500
Received: from mail-oi1-f180.google.com ([209.85.167.180]:46814)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <robertbenwilson0@gmail.com>)
 id 1kcd42-0004LM-1d
 for usrp-users@lists.ettus.com; Tue, 10 Nov 2020 18:28:38 -0500
Received: by mail-oi1-f180.google.com with SMTP id q206so16460920oif.13
 for <usrp-users@lists.ettus.com>; Tue, 10 Nov 2020 15:28:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5Ej9H68lboONuVxoPMvYP1Kj9YiinJ448HDzlMvuCvE=;
 b=PjTBHgPFSa5P9HkHqiyltwG6s4bbDHRkM46fW9XTlvJ8oMtXzQqyncjl3rccoo6uyW
 v4LtXynZqX2015vEByVkRQXpsopeB4uOjlqAm8c23HYu40ufnN0jTqczCexNDF/fMKR5
 BjffRboPdvjRWwsKBkLZapVQZ/4djHHqBf7PM+vuAK4WGnYaH27wqpUawYrmmWQ5YDS+
 YP1mNcakYnGwKxFMSTSmLyGzZEFGjvpYXyfPS6x+4xI6i5kP1UUfyNCQ6mzkh5OcvK+g
 h+FrOirnxQ3I6eaWt9eVZQlLBncAKVcG2lJkKwIBhlwo5eJFJ7xCZ9KtTPHVsc5uKC1Z
 h+QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5Ej9H68lboONuVxoPMvYP1Kj9YiinJ448HDzlMvuCvE=;
 b=oykUsywHaOxQxXQRUMoH7vFRXzDPU0J3344L1Q3AiPeui2zX6OYrHs2FdU/KOXxdL3
 gI8gxq92r9O6p1KngMSS7nGUxn5779jaFiJsoVD0bwT1pHmNWA6W59sGRaawakFNeSHp
 Xkmrqowm165SRYbeXCibm7CaP8WVO8HfjQ4XXQO8GWrlqmRr7KIMsKleCdfz9zhMDB9H
 e2kWmt5eAeZ+dQzqw8KeKXau0f/yJfLCxtporAT54FDBZiIgAiGOAunaOHl6A5oNG18c
 TGsAClUrDZjfJpgdj7lQopNsWi2cZiCz61TivKg5YKEbLEY1YuQLjvkquHpY2SN11vmd
 NY6A==
X-Gm-Message-State: AOAM533mW6mSIEk4LPd3Oe1jqmAlWmqyVubhj49+c7MPSsH71/pcWlLm
 Qm8AAu9yc9puWsRQNIaxFs2fxdCPuZeaRUZKPZi3M1TT
X-Google-Smtp-Source: ABdhPJz4D/JmOWfifX3UcRpoNXfuIOwfPMW1o5ygTgcBTZnA9Eh433yzWSH94cCAbCmjdN2gl6XYSPxwEp7Ipt8k1A4=
X-Received: by 2002:aca:55cb:: with SMTP id j194mr361213oib.83.1605050877317; 
 Tue, 10 Nov 2020 15:27:57 -0800 (PST)
MIME-Version: 1.0
References: <CAGJu-nZLreKPAhpynaXE27rxSm_NhHDym+Ftfpaj0VogaBE7Lw@mail.gmail.com>
 <CAL7q81sJ1tL_XV_8S=MFE4TO+P1_veyFZX=bpmB-NYYBjUahtA@mail.gmail.com>
 <CAGJu-namsauwtchamfjn_wS=uGwFkx8i4sRaHH3AWk0G=JkLLA@mail.gmail.com>
 <CAL7q81uRieZtRCSur8X5GiLjYtMBRsxmDFYQwQwEMF_U_6yGMw@mail.gmail.com>
 <CAGJu-nb25ZtS+DfkT4=N16e3vyWC8vXD4uvtCQN6t6gPhowy3Q@mail.gmail.com>
 <CAL7q81uWuk_oHTfNnrxOBF8qKSZQiGjERh6TALZaAYqNTvAiuA@mail.gmail.com>
 <CAGJu-nZ6KQ_ws=K-p5m4TzG13LdfVRaM45qxO-9Bq8D2cqFKjQ@mail.gmail.com>
 <CAL7q81sZ74OBnsqLr+F7GacvYRsHY5n0RhvuL_KxOLA5bu_hUA@mail.gmail.com>
In-Reply-To: <CAL7q81sZ74OBnsqLr+F7GacvYRsHY5n0RhvuL_KxOLA5bu_hUA@mail.gmail.com>
Date: Tue, 10 Nov 2020 18:27:46 -0500
Message-ID: <CAGJu-naBR+zet0FoSLukO6XdDWH9iY9VkLTWFhqLPxtcwJ23-g@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC Fosphor error
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
From: Robert Wilson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robert Wilson <robertbenwilson0@gmail.com>
Content-Type: multipart/mixed; boundary="===============2156682449181912600=="
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

--===============2156682449181912600==
Content-Type: multipart/alternative; boundary="00000000000063940205b3c907e5"

--00000000000063940205b3c907e5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That worked!
I was able to Fosphor up and running!

Thank you so much for your help Jonathon.

Ben

On Mon, Nov 9, 2020 at 10:26 PM Jonathon Pendlum <jonathon.pendlum@ettus.co=
m>
wrote:

> Hi Robert,
>
> Also use the "-DENABLE_QT=3DTrue" flag to build gr-ettus.
>
> Jonathon
>
> On Mon, Nov 9, 2020 at 9:43 AM Robert Wilson <robertbenwilson0@gmail.com>
> wrote:
>
>> Hi Jonathon,
>>
>> I=E2=80=99ve gone ahead and given that a shot. I received a different me=
ssage now:
>>
>> File =E2=80=9C.../RFNoC.py=E2=80=9D , line 164, in_init_
>>   self.ettus_fosphor_display_0=3Dettus.fosphor_display(512, 64, 512)
>>
>> AttributeError:module =E2=80=98ettus=E2=80=99 has no attribute =E2=80=98=
fosphor_display=E2=80=99
>>
>> >>>Done (return code 1)
>>
>> Thanks,
>> Ben
>>
>>
>>
>>
>> On Sun, Nov 8, 2020 at 6:57 PM Jonathon Pendlum <
>> jonathon.pendlum@ettus.com> wrote:
>>
>>> Hi Robert,
>>>
>>> Can you try rebuilding gr-ettus with the cmake flag
>>> "-DCMAKE_BUILD_TYPE=3DDebug" and see if the issue goes away?
>>>
>>>
>>> Jonathon
>>>
>>> On Fri, Nov 6, 2020 at 8:57 AM Robert Wilson <robertbenwilson0@gmail.co=
m>
>>> wrote:
>>>
>>>>   Hi Jonathon,
>>>>
>>>> I've reduced both with no change.
>>>>
>>>> Ben
>>>>
>>>> On Wed, Nov 4, 2020 at 1:59 PM Jonathon Pendlum <
>>>> jonathon.pendlum@ettus.com> wrote:
>>>>
>>>>> Hi Robert,
>>>>>
>>>>> Try using the maximum MTU size supported. Also, try reducing the FFT
>>>>> size and SPP to 512.
>>>>>
>>>>> Jonathon
>>>>>
>>>>> On Wed, Nov 4, 2020 at 8:45 AM Robert Wilson <
>>>>> robertbenwilson0@gmail.com> wrote:
>>>>>
>>>>>> My Ethernet Controller is a Qualcomm Atheros AR8151 it=E2=80=99s max=
 MTU is
>>>>>> 6144 bytes. I=E2=80=99ve changed MTU to the max with no change in gn=
uRadio
>>>>>> response. Is the 6144 bytes not enough?
>>>>>>
>>>>>> On Tue, Nov 3, 2020 at 9:32 PM Jonathon Pendlum <
>>>>>> jonathon.pendlum@ettus.com> wrote:
>>>>>>
>>>>>>> Hi Ben,
>>>>>>>
>>>>>>> Try setting your NIC's MTU to 9000.
>>>>>>>
>>>>>>> Jonathon
>>>>>>>
>>>>>>> On Mon, Nov 2, 2020 at 6:55 AM Robert Wilson via USRP-users <
>>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>>
>>>>>>>> Hello,
>>>>>>>>
>>>>>>>> OS: Linux Ubuntu 20.04.1 LTS
>>>>>>>> GRC: 3.8
>>>>>>>> UHD: 4.0
>>>>>>>> USRP:X310 (HG)
>>>>>>>>
>>>>>>>> I have been looking at RFNoC only for a few weeks. I have followed
>>>>>>>> the RFNoC Workshop 4 tutorial and successfully built my own custom=
 gain
>>>>>>>> block as well as implemented and FFT from existing blocks using th=
e
>>>>>>>> "Getting Started with RFNoC" document online.
>>>>>>>>
>>>>>>>> I am now attempting to get Fosphor up and running on my X310 to
>>>>>>>> further understand bitstream generation from YAML files. At one po=
int I
>>>>>>>> believe there was an example bitstream that had the correct Fospho=
r
>>>>>>>> configuration I don't see it in the build of UHD I have.
>>>>>>>>
>>>>>>>> I've attached my .yml file and a copy of my GRC flow graph.
>>>>>>>> Below is the error message I'm receiving.
>>>>>>>>
>>>>>>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>>>>>>> UHD_4.0.0.0-1-gcf570707
>>>>>>>> [INFO] [X300] X300 initialization sequence...
>>>>>>>> [INFO] [X300] Maximum frame size: 1472 bytes.
>>>>>>>> [INFO] [GPS] No GPSDO found
>>>>>>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>>>>>>> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
>>>>>>>> 0xfd7d809a, 0xffff
>>>>>>>> [WARNING] [0/Radio#0] Setting RX IQ Balance is not possible on thi=
s
>>>>>>>> device.
>>>>>>>> gr::log :DEBUG: rfnoc_rx_streamer0 - Committing graph...
>>>>>>>> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>>>>>>>> gr::log :DEBUG: rfnoc_rx_streamer1 - Committing graph...
>>>>>>>> gr::log :DEBUG: rfnoc_rx_streamer1 - Sending start stream command.=
..
>>>>>>>> gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start stream command.=
..
>>>>>>>>
>>>>>>>> >>> Done (return code -11)
>>>>>>>>
>>>>>>>> More resources of this type of development would be welcome as wel=
l.
>>>>>>>>
>>>>>>>> Many Thanks,
>>>>>>>> Ben Wilson
>>>>>>>>
>>>>>>>>
>>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list
>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>>
>>>>>>>

--00000000000063940205b3c907e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That worked!=C2=A0<div>I was able to Fosphor up and runnin=
g!<br></div><div><br></div><div>Thank you so much for your help Jonathon.</=
div><div><br></div><div>Ben</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 9, 2020 at 10:26 PM Jonathon P=
endlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com">jonathon.pendlum@e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr">Hi Robert,<div><br></div><div>Also use the &quot;-=
DENABLE_QT=3DTrue&quot; flag to build gr-ettus.</div><div><br></div><div>Jo=
nathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Mon, Nov 9, 2020 at 9:43 AM Robert Wilson &lt;<a href=3D"mai=
lto:robertbenwilson0@gmail.com" target=3D"_blank">robertbenwilson0@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"auto">Hi Jonathon,</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">I=E2=80=99ve gone ahead and given that a shot. I received a diffe=
rent message now:</div><div dir=3D"auto"><br></div><div dir=3D"auto">File =
=E2=80=9C.../RFNoC.py=E2=80=9D , line 164, in_init_</div><div dir=3D"auto">=
=C2=A0 self.ettus_fosphor_display_0=3Dettus.fosphor_display(512, 64, 512)</=
div><div dir=3D"auto"><br></div><div dir=3D"auto">AttributeError:module =E2=
=80=98ettus=E2=80=99 has no attribute =E2=80=98fosphor_display=E2=80=99</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">&gt;&gt;&gt;Done (return co=
de 1)=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks,</div=
><div dir=3D"auto">Ben=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"a=
uto"><br></div><div dir=3D"auto"><br></div><div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Nov 8, 2020 at 6:57 PM Jo=
nathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"=
_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Robert,<div><br></div=
><div>Can you try rebuilding gr-ettus with the cmake flag &quot;-DCMAKE_BUI=
LD_TYPE=3DDebug&quot; and see if the issue goes away?</div></div><div dir=
=3D"ltr"><div><br></div><div><br></div><div>Jonathon</div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 6, 20=
20 at 8:57 AM Robert Wilson &lt;<a href=3D"mailto:robertbenwilson0@gmail.co=
m" target=3D"_blank">robertbenwilson0@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=C2=A0 Hi J=
onathon,<div><br></div><div>I&#39;ve reduced both with no change.=C2=A0</di=
v><div><br></div><div>Ben</div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Wed, Nov 4, 2020 at 1:59 PM Jonathon Pend=
lum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jon=
athon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">Hi Robert,<div><br></div><div>Try u=
sing the maximum MTU size supported. Also, try reducing the FFT size and SP=
P to 512.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 4, 2020 at 8:4=
5 AM Robert Wilson &lt;<a href=3D"mailto:robertbenwilson0@gmail.com" target=
=3D"_blank">robertbenwilson0@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">My Ethernet Control=
ler is a Qualcomm Atheros AR8151 it=E2=80=99s max MTU is 6144 bytes. I=E2=
=80=99ve changed MTU to the max with no change in gnuRadio response. Is the=
 6144 bytes not enough?=C2=A0</div><div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 3, 2020 at 9:32 PM Jonathon P=
endlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">=
jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr">Hi Ben,<div><br></div><div>Try s=
etting your NIC&#39;s MTU to 9000.</div><div><br></div><div>Jonathon</div><=
/div><br><div class=3D"gmail_quote"></div><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 2, 2020 at 6:55 AM Robert Wilso=
n via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div></div><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"></bl=
ockquote></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div><br></div><div>OS: =
Linux Ubuntu 20.04.1 LTS<br></div><div>GRC: 3.8</div><div>UHD: 4.0</div><di=
v>USRP:X310 (HG)<br></div><div><br></div><div>I have been looking at RFNoC =
only for a few weeks. I have followed the RFNoC Workshop 4 tutorial and suc=
cessfully built my own custom gain block as well as implemented and FFT fro=
m existing blocks using the &quot;Getting Started with RFNoC&quot; document=
 online.</div><div><br></div><div>I am now attempting to get Fosphor up and=
 running on my X310 to further understand bitstream generation from YAML fi=
les. At one point I believe there was an example bitstream that had the cor=
rect Fosphor configuration I don&#39;t see it in the build of UHD I have.</=
div><div><br></div><div>I&#39;ve attached my .yml file and a copy of my GRC=
 flow graph. <br></div><div>Below is the error message I&#39;m receiving.</=
div><div><br></div><div>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_10=
7100; UHD_4.0.0.0-1-gcf570707<br>[INFO] [X300] X300 initialization sequence=
...<br>[INFO] [X300] Maximum frame size: 1472 bytes.<br>[INFO] [GPS] No GPS=
DO found<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>[WARNING] [RFNOC::BLOC=
K_FACTORY] Could not find block with Noc-ID 0xfd7d809a, 0xffff<br>[WARNING]=
 [0/Radio#0] Setting RX IQ Balance is not possible on this device.<br>gr::l=
og :DEBUG: rfnoc_rx_streamer0 - Committing graph...<br>[WARNING] [0/Radio#0=
] Attempting to set tick rate to 0. Skipping.<br>gr::log :DEBUG: rfnoc_rx_s=
treamer1 - Committing graph...<br>gr::log :DEBUG: rfnoc_rx_streamer1 - Send=
ing start stream command...<br>gr::log :DEBUG: rfnoc_rx_streamer0 - Sending=
 start stream command...<br><br>&gt;&gt;&gt; Done (return code -11)</div><d=
iv><br></div><div>More resources of this type of development would be welco=
me as well.<br></div><div><br></div><div>Many Thanks,</div><div>Ben Wilson<=
br></div><div><br></div><div><br></div></div></blockquote></div><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>

--00000000000063940205b3c907e5--


--===============2156682449181912600==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2156682449181912600==--

