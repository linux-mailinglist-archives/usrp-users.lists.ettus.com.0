Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 024A93315D8
	for <lists+usrp-users@lfdr.de>; Mon,  8 Mar 2021 19:23:27 +0100 (CET)
Received: from [::1] (port=49978 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lJKXH-0007ad-LQ; Mon, 08 Mar 2021 13:23:19 -0500
Received: from mail-lf1-f43.google.com ([209.85.167.43]:33168)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marxwolfs@gmail.com>) id 1lJKXE-0007Xn-8O
 for usrp-users@lists.ettus.com; Mon, 08 Mar 2021 13:23:16 -0500
Received: by mail-lf1-f43.google.com with SMTP id u4so22592776lfs.0
 for <usrp-users@lists.ettus.com>; Mon, 08 Mar 2021 10:22:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4bs3fH+VbXEZanP8FZ6UNiUbirBxHo2sPGHlWmKPdJI=;
 b=DzTOmRgzW3T+iWu6rZqWv3e4Yojpf3yhaFFEMGncHiZHFC0Gtjpu0UaEvVnjpN9Gqz
 B2MToal5YKFJPNvlmpR3gT4GZyVVkyAORAMPvdnp3x21pHJvTdhhlLmfNlpipel6/5KJ
 AkSThCC84WYK4lhdinAkYTg3rOWP9I7cvqq4DdY0PKM6EKL7uRJ6RXlSPVNb6TXlVr+b
 O3BrvFQR5n68lxMlSMx71G7zfUWvhb/caNpAT3UFImCXLkWz7lglkXBBaRqeSeHPThov
 aa41zdtuWxWvTbveTZ6Nc15IjGMGK2YEKrNOgy3HP6EgEX4o59zb6MHArEevZHMeDnYq
 wnww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4bs3fH+VbXEZanP8FZ6UNiUbirBxHo2sPGHlWmKPdJI=;
 b=VooChAGwIm7JJdZLjGen6N1vhsUiHb16pqr+O0rpQzk73dgOm4v9S9gC/sjywiR/Zv
 yb3+VoiyPhR8IO7c2GQmPg3UKC+L7JX3pRBdwzU0V2GEygrppiEOIkUreeBMn5Ii2wqh
 71KlAvJnwUBnfC0jMZ7npdlGvrDga8HSRFGl1bf+GGcpY4rF+BKN+BZSsKLFhH9gcqaA
 4p09nb6EzOnGd2KlNGI7BJLc8zTCVc2pbS5UiwrdGPg2rqjWrHUmc+x2WuXwaLO68CR8
 eQAwiYHNjcnC9olEnFIQowEdbtKKlXVkm6Y4FRM7yA7zajfL47XmAoaXGZ8Bmgxgn5vW
 6/CQ==
X-Gm-Message-State: AOAM533BfBK9s4pefp0neJGNIXnzHUUZHN/Mazp3OFE15/LF1+kCbmoD
 P1CcuNHBzHNTImvEJJ6VwO/gG4ZC1RSMAVsGPeI=
X-Google-Smtp-Source: ABdhPJxIZQFdemWk1UiNV4BkRCFUMmaS7+0NEaFZwCenPpvbBDc7BF8qPHR0N7A35JkT7/zO2Y887Eg+Mzb99+GaTxA=
X-Received: by 2002:a19:f107:: with SMTP id p7mr14214513lfh.613.1615227754872; 
 Mon, 08 Mar 2021 10:22:34 -0800 (PST)
MIME-Version: 1.0
References: <CACryqrEA9jJWATSCon3Drp-ngO0QraK7goABm0U0gTFqR_hCdg@mail.gmail.com>
 <023DC74F-683D-4FEF-AAF3-D39619E4791F@gmail.com>
 <CACryqrHMw6jKS4dAF25mhAbbdWH-tLiQ5EBJ1vjc72ac96X_7g@mail.gmail.com>
 <602F3C2B.3040405@gmail.com>
 <CACryqrHPxsMSiXmM3Er-WTJ+vxgroAdRY0A0btfpiBvr0F-JRg@mail.gmail.com>
 <602F480C.9020200@gmail.com>
In-Reply-To: <602F480C.9020200@gmail.com>
Date: Mon, 8 Mar 2021 11:22:25 -0700
Message-ID: <CACryqrGWPD=VOTisbEenTuYyF5myztJgCmgGjZ8rDFvSuma20w@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] x310 two UBX daughterboard receiver
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
From: Xiang Ma via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Xiang Ma <marxwolfs@gmail.com>
Content-Type: multipart/mixed; boundary="===============7659844336475854610=="
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

--===============7659844336475854610==
Content-Type: multipart/alternative; boundary="0000000000008f817f05bd0a842c"

--0000000000008f817f05bd0a842c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have tried to first use GNURadio to write a program in GRC. And
implement my code referring to the generated top_block.py
The following code works

```
from gnuradio import uhd

  def u_source(self):
    self.source =3D uhd.usrp_source(
    device_addr=3Dself.usrp_address_source,
    stream_args=3Duhd.stream_args(
    cpu_format=3D"fc32",
    channels=3Drange(1),
    ),
    )
    self.source.set_samp_rate(self.adc_rate)
    self.source.set_center_freq(self.freq, 0)
    self.source.set_gain(self.rx_gain, 0)
    self.source.set_antenna("RX2", 0)
    self.source.set_auto_dc_offset(False, 0) # Uncomment this line for SBX
daughterboard

    self.source.set_center_freq(self.freq, 1)
    self.source.set_gain(self.rx_gain, 1)
    self.source.set_antenna("RX2", 1)
    self.source.set_auto_dc_offset(False, 1)
```

And when I change the channels=3Drange(2),
Add a new line as the file sink of channel 2, it doesn't work. It doesn't
crash, just stuck.
self.connect((self.source, 1), self.file_sink_source)

I don't understand. I thought the two channels might be independent since
they work on two daughterboards.

I try to use gdb to debug the code. But the information is hard to
understand. It shows multiple threads.




On Thu, Feb 18, 2021 at 10:09 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 02/18/2021 11:47 PM, Xiang Ma wrote:
>
> If I want to use slot A as transmitter, slot B as receiver, can I do like
> this:
> self.source.set_antenna("RX2", 1)
> self.sink.set_antenna("TX/RX", 0)
>
> You'd need to set the antenna for the receive side in both slots to "RX2"=
:
>
> self.source.set_antenna("RX2", 0)
> self.source.set_antenna("RX2", 1)
>
> The default (and only, really) antenna for TX for the UBX is already
> "TX/RX".
>
>
> The Python API isn't that well documented at this point, so there's a lot
> of "infer from the C++ API".
>
> But, to be honest, a lot of this "mucking about" can be more easily
> accomplished using Gnu Radio as your experimental
>   environment (at least initially), rather than just using the UHD API.
> Things like "how do I create a multi-channel streamer and
>   manage the data from it", are already handled in Gnu Radio.
>
>
>
> In this page, it said *The default subdev spec is "A:0 B:0", which means
> slot A is mapped to channel 0, and slot B is mapped to channel 1.*
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-June/056=
965.html
>
> On Thu, Feb 18, 2021 at 9:18 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 02/18/2021 10:16 PM, Xiang Ma wrote:
>>
>> Are there any python code for this? I am using the python interface.
>>
>> You'll have to kind of infer what to do from the C++ example--there is n=
o
>> Python version of that example.
>>
>>
>>
>> On Thu, Feb 18, 2021 at 7:44 PM Marcus D Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> Well there=E2=80=99s the rx_multi_samples example that is part of the U=
HD source
>>> tree.
>>>
>>> Sent from my iPhone
>>>
>>> On Feb 18, 2021, at 9:32 PM, Xiang Ma <marxwolfs@gmail.com> wrote:
>>>
>>> =EF=BB=BF
>>>   Do you have any example code? I am still confused.
>>>
>>> Thank you.
>>>
>>> On Thu, Feb 18, 2021 at 5:50 PM Marcus D Leech <patchvonbraun@gmail.com=
>
>>> wrote:
>>>
>>>> Just create a 2-channel USRP source and specify a subdev of =E2=80=9CA=
:0 B:0=E2=80=9D.
>>>>
>>>>
>>>>
>>>> Sent from my iPhone
>>>>
>>>> On Feb 18, 2021, at 7:38 PM, Xiang Ma via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>> =EF=BB=BF
>>>> Hi,
>>>>
>>>>     I am using a x310 USRP with two UBX daughterboards. Now I can
>>>> transmit and receive the signal in RF A daughterboard with command
>>>>     self.source.set_antenna("RX2", 0)
>>>>     self.sink.set_antenna("TX/RX", 0).
>>>>
>>>>     Now, I want to transmit the signal in RF A, and receive the signal
>>>> in both RF A and RF B. It is actually 1 transmitter and 2 receivers. H=
ow
>>>> can I implement this? I checked the set_subdev_subdev("B", 1), but it
>>>> doesn't work.
>>>>
>>>> Thank you,
>>>>
>>>>
>>>>
>>>>
>>>> --
>>>> *Xiang Ma, *Ph.D. Student
>>>> College of Engineering
>>>> Utah State University
>>>> E-mail:marxwolfs@gmail.com
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>>
>>>
>>> --
>>> *Xiang Ma, *Ph.D. Student
>>> College of Engineering
>>> Utah State University
>>> E-mail:marxwolfs@gmail.com
>>>
>>>
>>
>> --
>> *Xiang Ma, *Ph.D. Student
>> College of Engineering
>> Utah State University
>> E-mail:marxwolfs@gmail.com
>>
>>
>>
>
> --
> *Xiang Ma, *Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com
>
>
>

--=20
*Xiang Ma, *Ph.D. Student
College of Engineering
Utah State University
E-mail:marxwolfs@gmail.com

--0000000000008f817f05bd0a842c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have tried to first use GNURadio to write a program=
 in GRC. And implement=C2=A0my code referring to the generated top_block.py=
</div><div>The following code works</div><div><br></div>```<br><div>from gn=
uradio import uhd<br></div><div><br></div><div>=C2=A0 def u_source(self):<b=
r>=C2=A0 =C2=A0 self.source =3D uhd.usrp_source(<br>=C2=A0 =C2=A0 device_ad=
dr=3Dself.usrp_address_source,<br>=C2=A0 =C2=A0 stream_args=3Duhd.stream_ar=
gs(<br>=C2=A0 =C2=A0 cpu_format=3D&quot;fc32&quot;,<br>=C2=A0 =C2=A0 channe=
ls=3Drange(1),<br>=C2=A0 =C2=A0 ),<br>=C2=A0 =C2=A0 )<br>=C2=A0 =C2=A0 self=
.source.set_samp_rate(self.adc_rate)<br>=C2=A0 =C2=A0 self.source.set_cente=
r_freq(self.freq, 0)<br>=C2=A0 =C2=A0 self.source.set_gain(self.rx_gain, 0)=
<br>=C2=A0 =C2=A0 self.source.set_antenna(&quot;RX2&quot;, 0)<br>=C2=A0 =C2=
=A0 self.source.set_auto_dc_offset(False, 0) # Uncomment this line for SBX =
daughterboard<br><br>=C2=A0 =C2=A0 self.source.set_center_freq(self.freq, 1=
)<br>=C2=A0 =C2=A0 self.source.set_gain(self.rx_gain, 1)<br>=C2=A0 =C2=A0 s=
elf.source.set_antenna(&quot;RX2&quot;, 1)<br>=C2=A0 =C2=A0 self.source.set=
_auto_dc_offset(False, 1)<br></div><div>```</div><div><br></div><div>And wh=
en I change the channels=3Drange(2),</div><div>Add a new line as the file s=
ink of channel 2, it doesn&#39;t work. It doesn&#39;t crash, just stuck.</d=
iv><div>self.connect((self.source, 1), self.file_sink_source)<br></div><div=
><br></div><div>I don&#39;t understand. I thought the two channels might be=
 independent since they work on two daughterboards.</div><div><br></div><di=
v>I try to use gdb to debug the code. But the information is hard to unders=
tand. It shows multiple threads.</div><div><br></div><div><br></div><div><b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Thu, Feb 18, 2021 at 10:09 PM Marcus D. Leech &lt;<a href=3D"mai=
lto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 02/18/2021 11:47 PM, Xiang Ma wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">If I want to use slot A as transmitter, slot B as
        receiver, can I do like this:
        <div>
          <div>self.source.set_antenna(&quot;RX2&quot;, 1)</div>
          <div>self.sink.set_antenna(&quot;TX/RX&quot;, 0)</div>
        </div>
      </div>
    </blockquote>
    You&#39;d need to set the antenna for the receive side in both slots to
    &quot;RX2&quot;:<br>
    <br>
    self.source.set_antenna(&quot;RX2&quot;, 0)<br>
    self.source.set_antenna(&quot;RX2&quot;, 1)<br>
    <br>
    The default (and only, really) antenna for TX for the UBX is already
    &quot;TX/RX&quot;.<br>
    <br>
    <br>
    The Python API isn&#39;t that well documented at this point, so there&#=
39;s
    a lot of &quot;infer from the C++ API&quot;.<br>
    <br>
    But, to be honest, a lot of this &quot;mucking about&quot; can be more =
easily
    accomplished using Gnu Radio as your experimental<br>
    =C2=A0 environment (at least initially), rather than just using the UHD
    API.=C2=A0 Things like &quot;how do I create a multi-channel streamer a=
nd<br>
    =C2=A0 manage the data from it&quot;, are already handled in Gnu Radio.=
<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>In this page, it said <i>The default subdev spec is &quot;A:0
            B:0&quot;, which means slot A is mapped to channel 0, and slot =
B
            is mapped to channel 1.</i></div>
        <div><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.e=
ttus.com/2018-June/056965.html" target=3D"_blank">http://lists.ettus.com/pi=
permail/usrp-users_lists.ettus.com/2018-June/056965.html</a><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 18, 2021 at 9:18
          PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div>On 02/18/2021 10:16 PM, Xiang Ma wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Are there any python code for this? I am
                using the python interface.</div>
            </blockquote>
            You&#39;ll have to kind of infer what to do from the C++
            example--there is no Python version of that example.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 18, 2021
                  at 7:44 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonb=
raun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div dir=3D"auto">Well there=E2=80=99s the rx_multi_sampl=
es
                    example that is part of the UHD source tree.=C2=A0<br>
                    <br>
                    <div dir=3D"ltr">Sent from my iPhone</div>
                    <div dir=3D"ltr"><br>
                      <blockquote type=3D"cite">On Feb 18, 2021, at 9:32
                        PM, Xiang Ma &lt;<a href=3D"mailto:marxwolfs@gmail.=
com" target=3D"_blank">marxwolfs@gmail.com</a>&gt;
                        wrote:<br>
                        <br>
                      </blockquote>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">=EF=BB=BF
                        <div dir=3D"ltr">=C2=A0 Do you have any example cod=
e? I
                          am still confused.
                          <div><br>
                          </div>
                          <div>Thank you.</div>
                        </div>
                        <br>
                        <div class=3D"gmail_quote">
                          <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb
                            18, 2021 at 5:50 PM Marcus D Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.c=
om</a>&gt;

                            wrote:<br>
                          </div>
                          <blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>
                            <div dir=3D"auto">Just create a 2-channel USRP
                              source and specify a subdev of =E2=80=9CA:0 B=
:0=E2=80=9D.=C2=A0
                              <div><br>
                              </div>
                              <div><br>
                                <br>
                                <div dir=3D"ltr">Sent from my iPhone</div>
                                <div dir=3D"ltr"><br>
                                  <blockquote type=3D"cite">On Feb 18,
                                    2021, at 7:38 PM, Xiang Ma via
                                    USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;

                                    wrote:<br>
                                    <br>
                                  </blockquote>
                                </div>
                                <blockquote type=3D"cite">
                                  <div dir=3D"ltr">=EF=BB=BF
                                    <div dir=3D"ltr">Hi,
                                      <div><br>
                                      </div>
                                      <div>=C2=A0 =C2=A0 I am using a x310 =
USRP
                                        with two UBX daughterboards. Now
                                        I can transmit and receive the
                                        signal in RF A daughterboard
                                        with command</div>
                                      <div>=C2=A0
                                        =C2=A0=C2=A0self.source.set_antenna=
(&quot;RX2&quot;,
                                        0)</div>
                                      <div>=C2=A0 =C2=A0
                                        self.sink.set_antenna(&quot;TX/RX&q=
uot;,
                                        0).</div>
                                      <div><br>
                                      </div>
                                      <div>=C2=A0 =C2=A0 Now, I want to tra=
nsmit
                                        the signal in RF A, and receive
                                        the signal in both RF A and RF
                                        B. It is actually 1 transmitter
                                        and 2 receivers. How can I
                                        implement this? I checked the
                                        set_subdev_subdev(&quot;B&quot;, 1)=
, but
                                        it doesn&#39;t work.</div>
                                      <div><br>
                                      </div>
                                      <div>Thank you,</div>
                                      <div><br>
                                      </div>
                                      <div><br>
                                      </div>
                                      <div><br clear=3D"all">
                                        <div><br>
                                        </div>
                                        -- <br>
                                        <div dir=3D"ltr">
                                          <div dir=3D"ltr"><font style=3D"c=
olor:rgb(136,136,136)" face=3D"times new roman,
                                              serif" size=3D"4"><i><b>Xiang
                                                  Ma,=C2=A0</b></i></font><=
span style=3D"color:rgb(136,136,136)">Ph.D. Student</span>
                                            <div>
                                              <div style=3D"color:rgb(136,1=
36,136)"><font color=3D"#444444">College
                                                  of Engineering</font></di=
v>
                                              <div><font color=3D"#444444">=
Utah

                                                  State University</font></=
div>
                                              <div style=3D"color:rgb(136,1=
36,136)"><font color=3D"#444444">E-mail:<a href=3D"mailto:marxwolfs@gmail.c=
om" style=3D"color:rgb(17,85,204)" target=3D"_blank">marxwolfs@gmail.com</a=
></font></div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <span>_________________________________=
______________</span><br>
                                    <span>USRP-users mailing list</span><br=
>
                                    <span><a href=3D"mailto:USRP-users@list=
s.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a></span><br>
                                    <span><a href=3D"http://lists.ettus.com=
/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank">http://list=
s.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></span><br>
                                  </div>
                                </blockquote>
                              </div>
                            </div>
                          </blockquote>
                        </div>
                        <br clear=3D"all">
                        <div><br>
                        </div>
                        -- <br>
                        <div dir=3D"ltr">
                          <div dir=3D"ltr"><font style=3D"color:rgb(136,136=
,136)" face=3D"times
                              new roman, serif" size=3D"4"><i><b>Xiang
                                  Ma,=C2=A0</b></i></font><span style=3D"co=
lor:rgb(136,136,136)">Ph.D.
                              Student</span>
                            <div>
                              <div style=3D"color:rgb(136,136,136)"><font c=
olor=3D"#444444">College of Engineering</font></div>
                              <div><font color=3D"#444444">Utah State
                                  University</font></div>
                              <div style=3D"color:rgb(136,136,136)"><font c=
olor=3D"#444444">E-mail:<a href=3D"mailto:marxwolfs@gmail.com" style=3D"col=
or:rgb(17,85,204)" target=3D"_blank">marxwolfs@gmail.com</a></font></div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </blockquote>
                  </div>
                </blockquote>
              </div>
              <br clear=3D"all">
              <div><br>
              </div>
              -- <br>
              <div dir=3D"ltr">
                <div dir=3D"ltr"><font style=3D"color:rgb(136,136,136)" fac=
e=3D"times new roman, serif" size=3D"4"><i><b>Xiang
                        Ma,=C2=A0</b></i></font><span style=3D"color:rgb(13=
6,136,136)">Ph.D. Student</span>
                  <div>
                    <div style=3D"color:rgb(136,136,136)"><font color=3D"#4=
44444">College of Engineering</font></div>
                    <div><font color=3D"#444444">Utah State University</fon=
t></div>
                    <div style=3D"color:rgb(136,136,136)"><font color=3D"#4=
44444">E-mail:<a href=3D"mailto:marxwolfs@gmail.com" style=3D"color:rgb(17,=
85,204)" target=3D"_blank">marxwolfs@gmail.com</a></font></div>
                  </div>
                </div>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
      <br clear=3D"all">
      <div><br>
      </div>
      -- <br>
      <div dir=3D"ltr">
        <div dir=3D"ltr"><font style=3D"color:rgb(136,136,136)" face=3D"tim=
es
            new roman, serif" size=3D"4"><i><b>Xiang Ma,=C2=A0</b></i></fon=
t><span style=3D"color:rgb(136,136,136)">Ph.D. Student</span>
          <div>
            <div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">C=
ollege
                of Engineering</font></div>
            <div><font color=3D"#444444">Utah State University</font></div>
            <div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">E=
-mail:<a href=3D"mailto:marxwolfs@gmail.com" style=3D"color:rgb(17,85,204)"=
 target=3D"_blank">marxwolfs@gmail.com</a></font></div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><font face=3D"times new roman, =
serif" size=3D"4" style=3D"color:rgb(136,136,136)"><i><b>Xiang Ma,=C2=A0</b=
></i></font><span style=3D"color:rgb(136,136,136)">Ph.D. Student</span><div=
><div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">College of E=
ngineering</font></div><div><font color=3D"#444444">Utah State University</=
font></div><div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">E-=
mail:<a href=3D"mailto:marxwolfs@gmail.com" style=3D"color:rgb(17,85,204)" =
target=3D"_blank">marxwolfs@gmail.com</a></font></div></div></div></div>

--0000000000008f817f05bd0a842c--


--===============7659844336475854610==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7659844336475854610==--

