Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8E71EEE1A
	for <lists+usrp-users@lfdr.de>; Fri,  5 Jun 2020 01:04:53 +0200 (CEST)
Received: from [::1] (port=43858 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jgyun-0005p1-VO; Thu, 04 Jun 2020 19:04:49 -0400
Received: from mail-lj1-f181.google.com ([209.85.208.181]:46650)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mdyaaseen1995@gmail.com>)
 id 1jgyuk-0005kC-Gz
 for usrp-users@lists.ettus.com; Thu, 04 Jun 2020 19:04:46 -0400
Received: by mail-lj1-f181.google.com with SMTP id z9so9367012ljh.13
 for <usrp-users@lists.ettus.com>; Thu, 04 Jun 2020 16:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=GUNEVw52wWKRuCvZ1T2FrCllDBUS/hO+sDxTya+M/v4=;
 b=cbqlxO2nEKwaw+pcPbyuh276qad6tqIEJgnn8Dtlbruemb9YWbWxXqxCm3zBpCFeVb
 4nuXqA/pRDjPJUGe9ZMaQkepV0bXhtf0lG/mcHU7AQtsRr0r7vvW6wjajpNuAJBHk8nN
 rufm8qCHcNbMv7eJQz6a+djMSeNa1kjAOD9OGlaKNjiDfzqct3nj6ajclO0OnXAkYCNS
 HhpCiJRk2jMq4I4sSbX6pMtoWwSk3S9s7yvcyyEp+GYGOELOAXKumQ/wk4T5+Aglmc4W
 C15N9Xq0Xn8YkZZ/bO8l0sRophL4u9/wcbY6I2UILI9h7BPKXnY4auBfN+ADdTjg42bu
 YMiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=GUNEVw52wWKRuCvZ1T2FrCllDBUS/hO+sDxTya+M/v4=;
 b=DrYMpwFGuXdIcVoX0h4aWv9WYLmlUMvaH+qbOU7j25JXLgB5TS8Q2XDsvg1JGCbwpR
 VA1Wa5uhUewoG4ukud804u8ddIdTo7mu07UmuslGx/bwYMIvUVpWb97bykPzqLT91/Tg
 tkG3KxVjUyuPqU6kQtOKveWBzjumarGTcNYnFLNeCheq6mCNHpPTxULfLpsrybe7lA0K
 dvyayu24gunzbV5Gi06YiHEMdxYpIc5dgjstyVpaQm3UFHADsqlN4YIWkSPebGr9y/zA
 4H1M7vrjFfJLyDwvg6oxGUqD8uf+JQnLcN30PJmFkkykrvZRFJcbT+CxNG+zvmKoSr6D
 +THw==
X-Gm-Message-State: AOAM530T2p/JMJW4OnVgtoiVWxglpFp72OToKMz05M/zLCNm3BHyCYPX
 PbZ3lQ2fonXybCMGJICnjJublxEiOEfwnDBNgMo=
X-Google-Smtp-Source: ABdhPJw43pfL6Q42AyPa/0hPezpZwK5mTwU4KNJLx7As1QOsApb3fTPyXuvGnIN4qe2Vp8VNsTYUBA9IFaRRj6clwPU=
X-Received: by 2002:a05:651c:82:: with SMTP id 2mr3003266ljq.341.1591311845218; 
 Thu, 04 Jun 2020 16:04:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAN-A3_s5gd=G9qYfra+=Jjqv25cgieqsPk1z4rbrkRTSmOSF9g@mail.gmail.com>
 <5ED82C3F.7090304@gmail.com>
 <CAN-A3_v1DaveR+8+iAD6qhLpcTkyLxXiEf5_4aLgBqEXx1ZTHw@mail.gmail.com>
 <5ED83704.10604@gmail.com>
 <CAN-A3_u=Q=YSrzvUu5zd5xm62sx2P5R3BdimwOKFmH7M5wxd-A@mail.gmail.com>
In-Reply-To: <CAN-A3_u=Q=YSrzvUu5zd5xm62sx2P5R3BdimwOKFmH7M5wxd-A@mail.gmail.com>
Date: Fri, 5 Jun 2020 01:03:53 +0200
Message-ID: <CAN-A3_t66q7jLDF_CGZrMy44eGrYMMK-Mw4ekNwLv+39At4JwQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com, 
 discuss-gnuradio@gnu.org
Subject: Re: [USRP-users] ERROR: using usrp source gnu-radio block with XG
 image (RFNoC enabled)
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
From: Mohamed Yaaseen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mohamed Yaaseen <mdyaaseen1995@gmail.com>
Content-Type: multipart/mixed; boundary="===============7981945364907407420=="
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

--===============7981945364907407420==
Content-Type: multipart/alternative; boundary="00000000000042de5b05a74a2998"

--00000000000042de5b05a74a2998
Content-Type: text/plain; charset="UTF-8"

It got fixed finally. I just removed the device parameter all together. And
let the block itself decide it.
And it worked like a charm..!

Thanks & regards,
Mohamed Yaaseen

On Thu, 4 Jun 2020, 5:15 pm Mohamed Yaaseen, <mdyaaseen1995@gmail.com>
wrote:

> Yes, I tried including the "type=x300" in the device address.  Still it is
> not working. Throwing the same error. I am attaching a screenshot of the
> parameters.
>
> I have even tried ping the device which works perfectly fine. Both the
> dual 10-Gig interface can be pinged
>
> I am not sure what is the issue here !
>
> *ya-seen@sdr-linux-machine*:*~*$ ping 192.168.30.2
>> PING 192.168.30.2 (192.168.30.2) 56(84) bytes of data.
>> 64 bytes from 192.168.30.2: icmp_seq=1 ttl=32 time=0.677 ms
>> 64 bytes from 192.168.30.2: icmp_seq=2 ttl=32 time=0.651 ms
>> 64 bytes from 192.168.30.2: icmp_seq=3 ttl=32 time=0.652 ms
>> 64 bytes from 192.168.30.2: icmp_seq=4 ttl=32 time=0.632 ms
>> ^C
>> --- 192.168.30.2 ping statistics ---
>> 4 packets transmitted, 4 received, 0% packet loss, time 3064ms
>> rtt min/avg/max/mdev = 0.632/0.653/0.677/0.016 ms*ya-seen@sdr-linux-machine*:*~*$ ping 192.168.40.2
>> PING 192.168.40.2 (192.168.40.2) 56(84) bytes of data.
>> 64 bytes from 192.168.40.2: icmp_seq=1 ttl=32 time=0.647 ms
>> 64 bytes from 192.168.40.2: icmp_seq=2 ttl=32 time=0.647 ms
>> 64 bytes from 192.168.40.2: icmp_seq=3 ttl=32 time=0.646 ms
>> 64 bytes from 192.168.40.2: icmp_seq=4 ttl=32 time=0.621 ms
>> ^C
>> --- 192.168.40.2 ping statistics ---
>> 4 packets transmitted, 4 received, 0% packet loss, time 3067ms
>> rtt min/avg/max/mdev = 0.621/0.640/0.647/0.011 ms
>>
>>
>
> On Thu, 4 Jun 2020 at 01:49, Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 06/03/2020 07:45 PM, Mohamed Yaaseen wrote:
>>
>> I have created a new flow graph for the non-RFNoC , one without any
>> device3 block.
>> in the device parameter of the usrp source I am using
>> "addr0=192.168.30.2, addr1=192.168.40.2"  this string
>>
>> should I have to use "type=x300" ?
>>
>> Yes. Since simply specifying an IP address isn't enough to unambiguously
>> identify the device type, AFAIR, although from your previous log,
>>   it looks like it figured it out.
>>
>> Also, when this is happening, can you ping those addresses, outside of
>> any Gnu Radio or UHD application, just can you ping them as
>>   normal IP devices?
>>
>> Also, I've copied usrp-users, where this conversation should probably be
>> moved.
>>
>>
>>
>>
>> regards,
>> Mohamed Yaaseen
>>
>>
>>
>> On Thu, 4 Jun 2020 at 01:04, Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 06/03/2020 05:27 PM, Mohamed Yaaseen wrote:
>>>
>>> Hello Guys,
>>>     I am using usrp x310 with default XG image. I have also setup the
>>> RFNoC platform in GNURadio with gr-ettus.
>>> RFNoC ddc example using RFNoC blocks works perfectly with 100MHz of
>>> bandwidth. But when I go back to using normal usrp source block which is a
>>> normal gr-uhd block, it throws the following error.
>>>
>>>
>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>>> UHD_3.15.0.0-16-ga3ece4f2
>>>> [INFO] [X300] X300 initialization sequence...
>>>> [INFO] [X300] Maximum frame size: 8000 bytes.
>>>> [INFO] [X300] Maximum frame size: 8000 bytes.
>>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>>> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
>>>> 0xF1F0D00000000000)
>>>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1296 MB/s)
>>>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1319 MB/s)
>>>> [INFO] [0/Radio_0] Initializing block control (NOC ID:
>>>> 0x12AD100000000001)
>>>> [INFO] [0/Radio_1] Initializing block control (NOC ID:
>>>> 0x12AD100000000001)
>>>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
>>>> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
>>>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
>>>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
>>>> terminate called after throwing an instance of 'uhd::io_error'
>>>>   what():  EnvironmentError: IOError: Block ctrl (CE_00_Port_30) no
>>>> response packet - AssertionError: bool(buff)
>>>>   in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
>>>> [with uhd::endianness_t _endianness = uhd::ENDIANNESS_BIG; uint64_t = long
>>>> unsigned int]
>>>>   at /home/ya-seen/workspace/src/uhd/host/lib/rfnoc/ctrl_iface.cpp:151
>>>>
>>>
>>>
>>> what is this issue ? what am I doing wrong here ? Help, suggestions
>>> highly appreciated
>>>
>>> thanks in advance !!
>>>
>>> Regards,
>>> Mohamed Yaaseen
>>>
>>> What is in the device arguments for the normal USRP block?  Are they the
>>> same as the device3 block?  Did you leave the device3 block in your
>>>   non-RFNOC flow-graph?
>>>
>>>
>>>
>>

--00000000000042de5b05a74a2998
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">It got fixed finally. I just removed the device parameter=
 all together. And let the block itself decide it.<div dir=3D"auto">And it =
worked like a charm..!</div><div dir=3D"auto"><br></div><div dir=3D"auto">T=
hanks &amp; regards,</div><div dir=3D"auto">Mohamed Yaaseen</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 4 =
Jun 2020, 5:15 pm Mohamed Yaaseen, &lt;<a href=3D"mailto:mdyaaseen1995@gmai=
l.com">mdyaaseen1995@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div dir=3D"ltr"><div>Yes, I tried including the &quot;type=3Dx3=
00&quot; in the device address.=C2=A0 Still it is not working. Throwing the=
 same error. I am attaching a screenshot of the parameters.</div><div><br><=
/div><div>I have even tried ping the device which works perfectly fine. Bot=
h the dual 10-Gig interface can be pinged</div><div><br></div><div>I am not=
 sure what is the issue here !<br></div><div><br></div><div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><pre><font color=3D"#4E9A06"><b>ya-seen@=
sdr-linux-machine</b></font>:<font color=3D"#3465A4"><b>~</b></font>$ ping =
192.168.30.2
PING 192.168.30.2 (192.168.30.2) 56(84) bytes of data.
64 bytes from <a href=3D"http://192.168.30.2" target=3D"_blank" rel=3D"nore=
ferrer">192.168.30.2</a>: icmp_seq=3D1 ttl=3D32 time=3D0.677 ms
64 bytes from <a href=3D"http://192.168.30.2" target=3D"_blank" rel=3D"nore=
ferrer">192.168.30.2</a>: icmp_seq=3D2 ttl=3D32 time=3D0.651 ms
64 bytes from <a href=3D"http://192.168.30.2" target=3D"_blank" rel=3D"nore=
ferrer">192.168.30.2</a>: icmp_seq=3D3 ttl=3D32 time=3D0.652 ms
64 bytes from <a href=3D"http://192.168.30.2" target=3D"_blank" rel=3D"nore=
ferrer">192.168.30.2</a>: icmp_seq=3D4 ttl=3D32 time=3D0.632 ms
^C
--- 192.168.30.2 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3064ms
rtt min/avg/max/mdev =3D 0.632/0.653/0.677/0.016 ms
<font color=3D"#4E9A06"><b>ya-seen@sdr-linux-machine</b></font>:<font color=
=3D"#3465A4"><b>~</b></font>$ ping 192.168.40.2
PING 192.168.40.2 (192.168.40.2) 56(84) bytes of data.
64 bytes from <a href=3D"http://192.168.40.2" target=3D"_blank" rel=3D"nore=
ferrer">192.168.40.2</a>: icmp_seq=3D1 ttl=3D32 time=3D0.647 ms
64 bytes from <a href=3D"http://192.168.40.2" target=3D"_blank" rel=3D"nore=
ferrer">192.168.40.2</a>: icmp_seq=3D2 ttl=3D32 time=3D0.647 ms
64 bytes from <a href=3D"http://192.168.40.2" target=3D"_blank" rel=3D"nore=
ferrer">192.168.40.2</a>: icmp_seq=3D3 ttl=3D32 time=3D0.646 ms
64 bytes from <a href=3D"http://192.168.40.2" target=3D"_blank" rel=3D"nore=
ferrer">192.168.40.2</a>: icmp_seq=3D4 ttl=3D32 time=3D0.621 ms
^C
--- 192.168.40.2 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3067ms
rtt min/avg/max/mdev =3D 0.621/0.640/0.647/0.011 ms
</pre></blockquote></div><div dir=3D"ltr"><br></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 4 Jun 2020 at 01:49, =
Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_b=
lank" rel=3D"noreferrer">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 06/03/2020 07:45 PM, Mohamed Yaaseen
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">I have created a new flow graph for the non-RFNoC ,
        one without any device3 block.=C2=A0
        <div>in the=C2=A0device parameter of the usrp source I am using
          &quot;addr0=3D192.168.30.2, addr1=3D192.168.40.2&quot;=C2=A0 this=
 string=C2=A0</div>
        <div><br>
        </div>
        <div>should I have to use &quot;type=3Dx300&quot; ?</div>
      </div>
    </blockquote>
    Yes. Since simply specifying an IP address isn&#39;t enough to
    unambiguously identify the device type, AFAIR, although from your
    previous log,<br>
    =C2=A0 it looks like it figured it out.<br>
    <br>
    Also, when this is happening, can you ping those addresses, outside
    of any Gnu Radio or UHD application, just can you ping them as<br>
    =C2=A0 normal IP devices?<br>
    <br>
    Also, I&#39;ve copied usrp-users, where this conversation should
    probably be moved.<br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>
          <div>
            <div dir=3D"ltr">
              <div dir=3D"ltr">
                <div dir=3D"ltr">
                  <div dir=3D"ltr">
                    <div dir=3D"ltr">regards,
                      <div>Mohamed Yaaseen</div>
                      <div><br>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, 4 Jun 2020 at 01:04,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank" rel=3D"noreferrer">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div>On 06/03/2020 05:27 PM, Mohamed Yaaseen wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>Hello Guys,</div>
                <div>=C2=A0=C2=A0=C2=A0 I am using usrp x310 with default X=
G image. I
                  have also setup the RFNoC platform in GNURadio with
                  gr-ettus.<br>
                </div>
                <div>RFNoC ddc example using RFNoC blocks works
                  perfectly with 100MHz of bandwidth. But when I go back
                  to using normal usrp source block which is a normal
                  gr-uhd block, it throws the following error.</div>
                <div><br>
                </div>
                <div><br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div>[INFO] [UHD] linux; GNU C++ version 9.3.0;
                    Boost_107100; UHD_3.15.0.0-16-ga3ece4f2<br>
                    [INFO] [X300] X300 initialization sequence...<br>
                    [INFO] [X300] Maximum frame size: 8000 bytes.<br>
                    [INFO] [X300] Maximum frame size: 8000 bytes.<br>
                    [INFO] [X300] Radio 1x clock: 200 MHz<br>
                    [INFO] [X300] Radio 1x clock: 200 MHz<br>
                    [INFO] [0/DmaFIFO_0] Initializing block control (NOC
                    ID: 0xF1F0D00000000000)<br>
                    [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1296
                    MB/s)<br>
                    [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1319
                    MB/s)<br>
                    [INFO] [0/Radio_0] Initializing block control (NOC
                    ID: 0x12AD100000000001)<br>
                    [INFO] [0/Radio_1] Initializing block control (NOC
                    ID: 0x12AD100000000001)<br>
                    [INFO] [0/DDC_0] Initializing block control (NOC ID:
                    0xDDC0000000000000)<br>
                    [INFO] [0/DDC_1] Initializing block control (NOC ID:
                    0xDDC0000000000000)<br>
                    [INFO] [0/DUC_0] Initializing block control (NOC ID:
                    0xD0C0000000000000)<br>
                    [INFO] [0/DUC_1] Initializing block control (NOC ID:
                    0xD0C0000000000000)<br>
                    terminate called after throwing an instance of
                    &#39;uhd::io_error&#39;<br>
                    =C2=A0 what(): =C2=A0EnvironmentError: IOError: Block c=
trl
                    (CE_00_Port_30) no response packet - AssertionError:
                    bool(buff)<br>
                    =C2=A0 in uint64_t
                    ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool,
                    double) [with uhd::endianness_t _endianness =3D
                    uhd::ENDIANNESS_BIG; uint64_t =3D long unsigned int]<br=
>
                    =C2=A0 at
                    /home/ya-seen/workspace/src/uhd/host/lib/rfnoc/ctrl_ifa=
ce.cpp:151</div>
                </blockquote>
                <div><br>
                </div>
                <div><br>
                </div>
                <div>what is this issue ? what am I doing wrong here ?
                  Help, suggestions highly appreciated<br>
                </div>
                <div><br>
                </div>
                <div>thanks in advance !!<br>
                </div>
                <div><br>
                </div>
                <div>
                  <div>
                    <div dir=3D"ltr">
                      <div dir=3D"ltr">
                        <div>
                          <div dir=3D"ltr">
                            <div>
                              <div dir=3D"ltr">
                                <div>
                                  <div dir=3D"ltr">Regards,
                                    <div>Mohamed Yaaseen</div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </blockquote>
            What is in the device arguments for the normal USRP block?=C2=
=A0
            Are they the same as the device3 block?=C2=A0 Did you leave the
            device3 block in your<br>
            =C2=A0 non-RFNOC flow-graph?<br>
            <br>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div></div>
</blockquote></div>

--00000000000042de5b05a74a2998--


--===============7981945364907407420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7981945364907407420==--

