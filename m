Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6CA2ABF0F
	for <lists+usrp-users@lfdr.de>; Mon,  9 Nov 2020 15:44:30 +0100 (CET)
Received: from [::1] (port=54744 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kc8P9-0008So-W3; Mon, 09 Nov 2020 09:44:23 -0500
Received: from mail-oi1-f176.google.com ([209.85.167.176]:36713)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <robertbenwilson0@gmail.com>)
 id 1kc8P6-0008Iy-7P
 for usrp-users@lists.ettus.com; Mon, 09 Nov 2020 09:44:20 -0500
Received: by mail-oi1-f176.google.com with SMTP id d9so10430560oib.3
 for <usrp-users@lists.ettus.com>; Mon, 09 Nov 2020 06:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HBCqlJEByYjw7fw0oTe0Etxpr/cJXf32BwWrouSJzzo=;
 b=nebk2RHoUM8AB3HmDTDMW0aswwcdYAIkLfbEPEXibzUGR2ndbg/s3YsvB0up+6bUNz
 057IsCbouUaTW5PZDq/aN16dopQgMPIPuGxza+EbUWEAARgRjh84cXVJmkABEb9TieES
 f7L/ecFAjfo1CkmlD2uxY0uSDqNHvSXj5HjJHMvV0JhY0GyDku4mbZf9SLeaGHexiqhx
 cymXWWaV67dsPVGNEsL6pGaDQbqRlrT07YdOSdCoJLkrcG3s3pJ0Cbd2f3xuLQycJBrV
 7l5QW1cuveKuoKfLRrrOvXhguJTh0WnnytD6VJqNYnX4kBIJXX+tDvTpLp94uFgzaDsG
 bZug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HBCqlJEByYjw7fw0oTe0Etxpr/cJXf32BwWrouSJzzo=;
 b=nB3yl4Mzr/acOYzyxuPJNpyO/9tIkS5+qs5ExMh/kv2Pd+X3KTrUT/KcnZ2jzqhxBn
 mMBqYhhtEjDpLQu5sDcCR6K3NBJrsct7xkTJalBrYRWKWaAoqE9+JgifN4Ole+liyFCR
 oeW7+sBVyCf4w+FXw2sgdCnfCVNDq/XFFITEJ+NjLkD5DJ7lUOg2TB5hnIEVdEBVdI4D
 FluoRB4ROyOIjp6AcodzrTQQaRUyqLgzBPh6ExFM6n/UNS5gm7RPPN+Qvj1Rnmyob/Zk
 K3CcsMTWQon+VFkndEexzqAcdBVz6kY6lYjsFK98XsfFzYK2uGe9OdhoBbDJ1s6qm7F/
 QoSg==
X-Gm-Message-State: AOAM532pr74/YGFeB22v1T30vY6ty7vhqlK7FPfiMWjk/q821g9yzZ8c
 aFk4fsni6PkpjPrWsxQHZYLXy6oz4QEyEMDy4og=
X-Google-Smtp-Source: ABdhPJw9mL/7mxYHKJ4kXjmxTakP7AOazyfNkn2aDSX+rTiFQiMoxuTI5rlp4mqTgEkhou8aUSAYQnWl2vITA46gcDU=
X-Received: by 2002:aca:55cb:: with SMTP id j194mr9665946oib.83.1604933019421; 
 Mon, 09 Nov 2020 06:43:39 -0800 (PST)
MIME-Version: 1.0
References: <CAGJu-nZLreKPAhpynaXE27rxSm_NhHDym+Ftfpaj0VogaBE7Lw@mail.gmail.com>
 <CAL7q81sJ1tL_XV_8S=MFE4TO+P1_veyFZX=bpmB-NYYBjUahtA@mail.gmail.com>
 <CAGJu-namsauwtchamfjn_wS=uGwFkx8i4sRaHH3AWk0G=JkLLA@mail.gmail.com>
 <CAL7q81uRieZtRCSur8X5GiLjYtMBRsxmDFYQwQwEMF_U_6yGMw@mail.gmail.com>
 <CAGJu-nb25ZtS+DfkT4=N16e3vyWC8vXD4uvtCQN6t6gPhowy3Q@mail.gmail.com>
 <CAL7q81uWuk_oHTfNnrxOBF8qKSZQiGjERh6TALZaAYqNTvAiuA@mail.gmail.com>
In-Reply-To: <CAL7q81uWuk_oHTfNnrxOBF8qKSZQiGjERh6TALZaAYqNTvAiuA@mail.gmail.com>
Date: Mon, 9 Nov 2020 09:43:28 -0500
Message-ID: <CAGJu-nZ6KQ_ws=K-p5m4TzG13LdfVRaM45qxO-9Bq8D2cqFKjQ@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============3229191020777821272=="
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

--===============3229191020777821272==
Content-Type: multipart/alternative; boundary="00000000000082ce9605b3ad96d6"

--00000000000082ce9605b3ad96d6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jonathon,

I=E2=80=99ve gone ahead and given that a shot. I received a different messa=
ge now:

File =E2=80=9C.../RFNoC.py=E2=80=9D , line 164, in_init_
  self.ettus_fosphor_display_0=3Dettus.fosphor_display(512, 64, 512)

AttributeError:module =E2=80=98ettus=E2=80=99 has no attribute =E2=80=98fos=
phor_display=E2=80=99

>>>Done (return code 1)

Thanks,
Ben




On Sun, Nov 8, 2020 at 6:57 PM Jonathon Pendlum <jonathon.pendlum@ettus.com=
>
wrote:

> Hi Robert,
>
> Can you try rebuilding gr-ettus with the cmake flag
> "-DCMAKE_BUILD_TYPE=3DDebug" and see if the issue goes away?
>
>
> Jonathon
>
> On Fri, Nov 6, 2020 at 8:57 AM Robert Wilson <robertbenwilson0@gmail.com>
> wrote:
>
>>   Hi Jonathon,
>>
>> I've reduced both with no change.
>>
>> Ben
>>
>> On Wed, Nov 4, 2020 at 1:59 PM Jonathon Pendlum <
>> jonathon.pendlum@ettus.com> wrote:
>>
>>> Hi Robert,
>>>
>>> Try using the maximum MTU size supported. Also, try reducing the FFT
>>> size and SPP to 512.
>>>
>>> Jonathon
>>>
>>> On Wed, Nov 4, 2020 at 8:45 AM Robert Wilson <robertbenwilson0@gmail.co=
m>
>>> wrote:
>>>
>>>> My Ethernet Controller is a Qualcomm Atheros AR8151 it=E2=80=99s max M=
TU is
>>>> 6144 bytes. I=E2=80=99ve changed MTU to the max with no change in gnuR=
adio
>>>> response. Is the 6144 bytes not enough?
>>>>
>>>> On Tue, Nov 3, 2020 at 9:32 PM Jonathon Pendlum <
>>>> jonathon.pendlum@ettus.com> wrote:
>>>>
>>>>> Hi Ben,
>>>>>
>>>>> Try setting your NIC's MTU to 9000.
>>>>>
>>>>> Jonathon
>>>>>
>>>>> On Mon, Nov 2, 2020 at 6:55 AM Robert Wilson via USRP-users <
>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>
>>>>>> Hello,
>>>>>>
>>>>>> OS: Linux Ubuntu 20.04.1 LTS
>>>>>> GRC: 3.8
>>>>>> UHD: 4.0
>>>>>> USRP:X310 (HG)
>>>>>>
>>>>>> I have been looking at RFNoC only for a few weeks. I have followed
>>>>>> the RFNoC Workshop 4 tutorial and successfully built my own custom g=
ain
>>>>>> block as well as implemented and FFT from existing blocks using the
>>>>>> "Getting Started with RFNoC" document online.
>>>>>>
>>>>>> I am now attempting to get Fosphor up and running on my X310 to
>>>>>> further understand bitstream generation from YAML files. At one poin=
t I
>>>>>> believe there was an example bitstream that had the correct Fosphor
>>>>>> configuration I don't see it in the build of UHD I have.
>>>>>>
>>>>>> I've attached my .yml file and a copy of my GRC flow graph.
>>>>>> Below is the error message I'm receiving.
>>>>>>
>>>>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>>>>> UHD_4.0.0.0-1-gcf570707
>>>>>> [INFO] [X300] X300 initialization sequence...
>>>>>> [INFO] [X300] Maximum frame size: 1472 bytes.
>>>>>> [INFO] [GPS] No GPSDO found
>>>>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>>>>> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
>>>>>> 0xfd7d809a, 0xffff
>>>>>> [WARNING] [0/Radio#0] Setting RX IQ Balance is not possible on this
>>>>>> device.
>>>>>> gr::log :DEBUG: rfnoc_rx_streamer0 - Committing graph...
>>>>>> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>>>>>> gr::log :DEBUG: rfnoc_rx_streamer1 - Committing graph...
>>>>>> gr::log :DEBUG: rfnoc_rx_streamer1 - Sending start stream command...
>>>>>> gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start stream command...
>>>>>>
>>>>>> >>> Done (return code -11)
>>>>>>
>>>>>> More resources of this type of development would be welcome as well.
>>>>>>
>>>>>> Many Thanks,
>>>>>> Ben Wilson
>>>>>>
>>>>>>
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list
>>>>>> USRP-users@lists.ettus.com
>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>
>>>>>

--00000000000082ce9605b3ad96d6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Jonathon,</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">I=E2=80=99ve gone ahead and given that a shot. I received a differen=
t message now:</div><div dir=3D"auto"><br></div><div dir=3D"auto">File =E2=
=80=9C.../RFNoC.py=E2=80=9D , line 164, in_init_</div><div dir=3D"auto">=C2=
=A0 self.ettus_fosphor_display_0=3Dettus.fosphor_display(512, 64, 512)</div=
><div dir=3D"auto"><br></div><div dir=3D"auto">AttributeError:module =E2=80=
=98ettus=E2=80=99 has no attribute =E2=80=98fosphor_display=E2=80=99</div><=
div dir=3D"auto"><br></div><div dir=3D"auto">&gt;&gt;&gt;Done (return code =
1)=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks,</div><d=
iv dir=3D"auto">Ben=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto=
"><br></div><div dir=3D"auto"><br></div><div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Nov 8, 2020 at 6:57 PM Jonat=
hon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com">jonathon.pend=
lum@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div d=
ir=3D"ltr">Hi Robert,<div><br></div><div>Can you try rebuilding gr-ettus wi=
th the cmake flag &quot;-DCMAKE_BUILD_TYPE=3DDebug&quot; and see if the iss=
ue goes away?</div></div><div dir=3D"ltr"><div><br></div><div><br></div><di=
v>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Nov 6, 2020 at 8:57 AM Robert Wilson &lt;<a href=3D=
"mailto:robertbenwilson0@gmail.com" target=3D"_blank">robertbenwilson0@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr">=C2=A0 Hi Jonathon,<div><br></div><div>I&#39;ve reduc=
ed both with no change.=C2=A0</div><div><br></div><div>Ben</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov=
 4, 2020 at 1:59 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum=
@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi=
 Robert,<div><br></div><div>Try using the maximum MTU size supported. Also,=
 try reducing the FFT size and SPP to 512.</div><div><br></div><div>Jonatho=
n</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Nov 4, 2020 at 8:45 AM Robert Wilson &lt;<a href=3D"mailto:r=
obertbenwilson0@gmail.com" target=3D"_blank">robertbenwilson0@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"auto">My Ethernet Controller is a Qualcomm Atheros AR8151 it=E2=80=
=99s max MTU is 6144 bytes. I=E2=80=99ve changed MTU to the max with no cha=
nge in gnuRadio response. Is the 6144 bytes not enough?=C2=A0</div><div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, N=
ov 3, 2020 at 9:32 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendl=
um@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Hi Ben,<div><br></div><div>Try setting your NIC&#39;s MTU to 9000.</div><di=
v><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"></div><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov=
 2, 2020 at 6:55 AM Robert Wilson via USRP-users &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt=
; wrote:<br></div></div><div class=3D"gmail_quote"><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"></blockquote></div><div class=3D"gmail_quote"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,=
</div><div><br></div><div>OS: Linux Ubuntu 20.04.1 LTS<br></div><div>GRC: 3=
.8</div><div>UHD: 4.0</div><div>USRP:X310 (HG)<br></div><div><br></div><div=
>I have been looking at RFNoC only for a few weeks. I have followed the RFN=
oC Workshop 4 tutorial and successfully built my own custom gain block as w=
ell as implemented and FFT from existing blocks using the &quot;Getting Sta=
rted with RFNoC&quot; document online.</div><div><br></div><div>I am now at=
tempting to get Fosphor up and running on my X310 to further understand bit=
stream generation from YAML files. At one point I believe there was an exam=
ple bitstream that had the correct Fosphor configuration I don&#39;t see it=
 in the build of UHD I have.</div><div><br></div><div>I&#39;ve attached my =
.yml file and a copy of my GRC flow graph. <br></div><div>Below is the erro=
r message I&#39;m receiving.</div><div><br></div><div>[INFO] [UHD] linux; G=
NU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-1-gcf570707<br>[INFO] [X300=
] X300 initialization sequence...<br>[INFO] [X300] Maximum frame size: 1472=
 bytes.<br>[INFO] [GPS] No GPSDO found<br>[INFO] [X300] Radio 1x clock: 200=
 MHz<br>[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0=
xfd7d809a, 0xffff<br>[WARNING] [0/Radio#0] Setting RX IQ Balance is not pos=
sible on this device.<br>gr::log :DEBUG: rfnoc_rx_streamer0 - Committing gr=
aph...<br>[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.=
<br>gr::log :DEBUG: rfnoc_rx_streamer1 - Committing graph...<br>gr::log :DE=
BUG: rfnoc_rx_streamer1 - Sending start stream command...<br>gr::log :DEBUG=
: rfnoc_rx_streamer0 - Sending start stream command...<br><br>&gt;&gt;&gt; =
Done (return code -11)</div><div><br></div><div>More resources of this type=
 of development would be welcome as well.<br></div><div><br></div><div>Many=
 Thanks,</div><div>Ben Wilson<br></div><div><br></div><div><br></div></div>=
</blockquote></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">
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

--00000000000082ce9605b3ad96d6--


--===============3229191020777821272==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3229191020777821272==--

