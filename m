Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E3426574B
	for <lists+usrp-users@lfdr.de>; Fri, 11 Sep 2020 05:15:09 +0200 (CEST)
Received: from [::1] (port=49516 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGZWf-0000Yn-7T; Thu, 10 Sep 2020 23:15:01 -0400
Received: from mail-yb1-f170.google.com ([209.85.219.170]:41166)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marxwolfs@gmail.com>) id 1kGZWb-0000U5-Dm
 for usrp-users@lists.ettus.com; Thu, 10 Sep 2020 23:14:57 -0400
Received: by mail-yb1-f170.google.com with SMTP id h20so5455039ybj.8
 for <usrp-users@lists.ettus.com>; Thu, 10 Sep 2020 20:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8Oi33yb9xfM0n9k+Vs4dNjtSwxGKR46p6gFYjrco3mI=;
 b=EjxK2vrDLwHv1EOyH/LDnQWQ+3z8I84yevA8/5ZqEh/h0Wfq0stq/IgO8OoRCg6DCm
 uZpldm/RTzPyqaCyRhNxuXodDz6RnLl3SIg3EMELPreqWfggW2UGhwqiYXjW5rJSen2V
 q4Pp1WyYevDk+uSFhgMwSSvT3IzMM8ukYFwQSwoLxvupri7B5dRqqoTWYCOlqU/C1Zdd
 dPbqhYsrVw8oWediARhkU/fp0ON8emDHicc0OANJ50tY6djm/WRQxmU/JoVYjtd1rmuQ
 vcMp6Zeh3mwed2+yc2Tdch9sI4kL9/RtXk99r44Cj6CZHia64ij+wgR4yOX+nFBBVzAn
 xYcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8Oi33yb9xfM0n9k+Vs4dNjtSwxGKR46p6gFYjrco3mI=;
 b=LeC2kN57vvCeFZVST7xLTJIv1SUkZsn3b16Rbuj1IwRt3qhzfsfK4DfLE/aht8CAXx
 hFrZrIjobXnF3gXg9K0edK1PTuTEMzyOEXuUVhmJlbqXD8/Az+1AhdENtT8tDvXtln++
 Xkkp0WHDkroBYbn+bPAA78Q9f10E/gKfHL23Z2kBj7fJGDViNBYJJARAiGwSYoiK5YN9
 26L0wMzpLbHlLGmxgctJuHG8iYKVJ9/q6rVwFrcPsoUZzoczUt6vZ3AaOP6oT9IAhwT9
 wy//6Z9B+s7mXI0N+SDxzFKr1jdwBV0/NMkv0jLwAwPSpoIz3kPnat0SHTb7MpMkDhaF
 hzkA==
X-Gm-Message-State: AOAM530mHoMQ4eVl2WVFPY7x7bxJn0QALm7bQjUkZGH+sH0BPfD0HQB1
 Kheqr6B147HUupQ3hP4dSBlavwjR1k7fKb4T1Ck=
X-Google-Smtp-Source: ABdhPJy7Z+ynAASpIFvx2frvAonnqvhRgDjERj08m6m/sFzexfgZ8jRgimoHJBiC1ESfJ87ledIy9eSFuQ83o6yRAaE=
X-Received: by 2002:a25:81cb:: with SMTP id n11mr15909197ybm.341.1599794056591; 
 Thu, 10 Sep 2020 20:14:16 -0700 (PDT)
MIME-Version: 1.0
References: <CACryqrG8a3S1ARULWRPYte8aoUVmh8B-qBxjX6GS_j_kam_q-w@mail.gmail.com>
 <5F5A50F1.4080500@gmail.com>
 <CACryqrG3Eo6KTFM1v2SpA2Dc8Q71iznrLtai=79bPWgDG=xXRw@mail.gmail.com>
 <5F5A52C5.20703@gmail.com>
 <CACryqrG_kG4==1T_zjWqNPENWoe3y5ff7j9EOeHxQqFv1tFnmg@mail.gmail.com>
 <5F5A54F9.2000502@gmail.com>
 <CACryqrHxwT6RF_xoU=q9n3JSp+fBGyoHZO-+ifG_oxas3Hw2wA@mail.gmail.com>
 <5F5A7638.8010704@gmail.com>
 <CACryqrE+wQDyQt6X1EK2PvgSAEVv8pqaa=rbfur0xKN33hrn5A@mail.gmail.com>
 <5F5AC383.4020200@gmail.com>
 <CACryqrEMEZHxzCaoiEPMrD4FdjoZ2x0mJaOTE7tQz7SrbL2mKQ@mail.gmail.com>
 <5F5AC984.3020105@gmail.com>
In-Reply-To: <5F5AC984.3020105@gmail.com>
Date: Thu, 10 Sep 2020 21:14:05 -0600
Message-ID: <CACryqrHyja_JKA1G3CGQJOkGb+ZrkuJgikYBHGCLS5dHdv0qVQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] RuntimeError: System receive MTU size
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
Content-Type: multipart/mixed; boundary="===============1311644986606868474=="
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

--===============1311644986606868474==
Content-Type: multipart/alternative; boundary="00000000000074fe2005af011400"

--00000000000074fe2005af011400
Content-Type: text/plain; charset="UTF-8"

Thank you. I modified the RFID code
from
self.usrp_address_source = "addr=192.168.10.2,recv_frame_size=256"
self.usrp_address_sink   = "addr=192.168.10.2,recv_frame_size=256"

to
self.usrp_address_source = "addr=192.168.10.2,recv_frame_size=1472"
self.usrp_address_sink   = "addr=192.168.10.2,recv_frame_size=1472"

And now it works. But I am not sure why. Pretty weird.

On Thu, Sep 10, 2020 at 6:49 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 09/10/2020 08:28 PM, Xiang Ma wrote:
>
> Sorry. I do not make it clear.
> The RFID code is based on N200, I do not have RFID code for my x310.
> The code I metioned of x310 is generate by a FM receicer.
>
> I want to make the RFID code run on my x310. But errors occur. So I ask
> this question.
>
> Best,
>
> From the code you pointed us to, there's a lot of "hard-coded knowledge"
> within the code.
>
> You might try adding "type=x300" in the address variables in the RFID
> code.
>
> But this leads into the general topic of:
>
> https://files.ettus.com/manual/page_identification.html
>
> Which is about how devices are "named" so they can be found.  Since there
> are multiple device types that use an ethernet interface you sometimes
>   need to add a "type=" to tell the code what type of device it is.   This
> may be the source of some of your trouble.
>
>
>
> On Thu, Sep 10, 2020, 6:23 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 09/10/2020 07:00 PM, Xiang Ma wrote:
>>
>> I only have X310, the rfid code is written by someone else that works on
>> N200.
>> For the RFID code, I do not have .grc code. But the .py code is here
>> https://github.com/nkargas/Gen2-UHF-RFID-Reader/blob/master/gr-rfid/apps/reader.py
>> So what is the difference between *self.source.set_antenna("RX2", 0) *and*
>> self.uhd_usrp_source_0.set_antenna('RX2', 0)?*
>>
>> Best,
>>
>> I'm now confused about what you're asking.
>>
>> It sounds like there's TWO DIFFERENT bits of code we're talking about,
>> neither of which works?  You refer to your own .grc code.  Could you
>>   share that?
>>
>> At this point, it's clear that the X310 grossly works, since the standard
>> test tools are working, but your own code isn't, and you're asking the
>>   list here to help you debug it.
>>
>>
>>
>> On Thu, Sep 10, 2020 at 12:53 PM Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 09/10/2020 02:06 PM, Xiang Ma wrote:
>>>
>>> I tried several commands including benchmark_rate, there are no explicit
>>> errors.
>>>
>>> But I find my USRP is x310 with 2 UBX-160 daughtboards. But the rfid
>>> code is N200 with only 1 daughterboard slot.
>>> This is the python code generated by my grc:
>>>
>>>
>>>
>>>
>>> *self.uhd_usrp_source_0.set_samp_rate(samp_rate)
>>> self.uhd_usrp_source_0.set_center_freq(89500000, 0)
>>> self.uhd_usrp_source_0.set_gain(0, 0)
>>> self.uhd_usrp_source_0.set_auto_dc_offset(True, 0)
>>> self.uhd_usrp_source_0.set_auto_iq_balance(True, 0)*
>>>
>>> This is the code of rfid:
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> *self.source = uhd.usrp_source(
>>> device_addr=self.usrp_address_source,     stream_args=uhd.stream_args(
>>> cpu_format="fc32",     channels=range(1),     ),     )
>>> self.source.set_samp_rate(self.adc_rate)
>>> self.source.set_center_freq(self.freq, 0)
>>> self.source.set_gain(self.rx_gain, 0)     self.source.set_antenna("RX2", 0)
>>>     self.source.set_auto_dc_offset(False) # Uncomment this line for SBX
>>> daughterboard*
>>>
>>> Is it a reason why the error occurs?
>>>
>>> Best.
>>>
>>> Can you share the .grc code ?
>>>
>>> Do you have both an N200 and an X310 plugged in to your system, or just
>>> the X310?
>>>
>>
>>
>> --
>> *Xiang Ma, *Ph.D. Student
>> College of Engineering
>> Utah State University
>> E-mail:marxwolfs@gmail.com <congshanya@gmail.com>
>>
>>
>>
>

-- 
*Xiang Ma, *Ph.D. Student
College of Engineering
Utah State University
E-mail:marxwolfs@gmail.com <congshanya@gmail.com>

--00000000000074fe2005af011400
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you. I modified the RFID code <br></div><div>fr=
om</div><div>self.usrp_address_source =3D &quot;addr=3D192.168.10.2,recv_fr=
ame_size=3D256&quot;<br>self.usrp_address_sink =C2=A0 =3D &quot;addr=3D192.=
168.10.2,recv_frame_size=3D256&quot;</div><div><br></div><div>to<br></div><=
div>self.usrp_address_source =3D &quot;addr=3D192.168.10.2,recv_frame_size=
=3D1472&quot;<br>self.usrp_address_sink =C2=A0 =3D &quot;addr=3D192.168.10.=
2,recv_frame_size=3D1472&quot;</div><div><br></div><div>And now it works. B=
ut I am not sure why. Pretty weird.</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 10, 2020 at 6:49 PM Ma=
rcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 09/10/2020 08:28 PM, Xiang Ma wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"auto">Sorry. I do not make it clear.
        <div dir=3D"auto">The RFID code is based on N200, I do not have
          RFID code for my x310.</div>
        <div dir=3D"auto">The code I metioned of x310 is generate by a FM
          receicer.</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">I want to make the RFID code run on my x310. But
          errors occur. So I ask this question.</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Best,</div>
        <div dir=3D"auto"><br>
        </div>
      </div>
    </blockquote>
    From the code you pointed us to, there&#39;s a lot of &quot;hard-coded
    knowledge&quot; within the code.<br>
    <br>
    You might try adding &quot;type=3Dx300&quot; in the address variables i=
n the
    RFID code.=C2=A0 <br>
    <br>
    But this leads into the general topic of:<br>
    <br>
    <a href=3D"https://files.ettus.com/manual/page_identification.html" tar=
get=3D"_blank">https://files.ettus.com/manual/page_identification.html</a><=
br>
    <br>
    Which is about how devices are &quot;named&quot; so they can be found.=
=C2=A0 Since
    there are multiple device types that use an ethernet interface you
    sometimes<br>
    =C2=A0 need to add a &quot;type=3D&quot; to tell the code what type of =
device it
    is.=C2=A0=C2=A0 This may be the source of some of your trouble.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 10, 2020, 6:23 PM
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div>On 09/10/2020 07:00 PM, Xiang Ma wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>I only have X310, the rfid code is written by
                  someone else that works on N200.</div>
                <div>For the RFID code, I do not have .grc code. But the
                  .py code is here <a href=3D"https://github.com/nkargas/Ge=
n2-UHF-RFID-Reader/blob/master/gr-rfid/apps/reader.py" rel=3D"noreferrer" t=
arget=3D"_blank">https://github.com/nkargas/Gen2-UHF-RFID-Reader/blob/maste=
r/gr-rfid/apps/reader.py</a></div>
                <div>So what is the difference between <span><i>self.source=
.set_antenna(&quot;RX2&quot;,

                      0) </i>and<i>
                      self.uhd_usrp_source_0.set_antenna(&#39;RX2&#39;, 0)?=
</i></span></div>
                <div><span><i><br>
                    </i></span></div>
                <div><span>Best,<i><br>
                    </i></span></div>
              </div>
            </blockquote>
            I&#39;m now confused about what you&#39;re asking.<br>
            <br>
            It sounds like there&#39;s TWO DIFFERENT bits of code we&#39;re
            talking about, neither of which works?=C2=A0 You refer to your
            own .grc code.=C2=A0 Could you<br>
            =C2=A0 share that?<br>
            <br>
            At this point, it&#39;s clear that the X310 grossly works, sinc=
e
            the standard test tools are working, but your own code
            isn&#39;t, and you&#39;re asking the<br>
            =C2=A0 list here to help you debug it.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 10, 2020
                  at 12:53 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvo=
nbraun@gmail.com" rel=3D"noreferrer" target=3D"_blank">patchvonbraun@gmail.=
com</a>&gt;

                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div bgcolor=3D"#FFFFFF">
                    <div>On 09/10/2020 02:06 PM, Xiang Ma wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div>I tried several commands including
                          benchmark_rate, there are no explicit errors.</di=
v>
                        <div><br>
                        </div>
                        <div>But I find my USRP is x310 with 2 UBX-160
                          daughtboards. But the rfid code is N200 with
                          only 1 daughterboard slot.</div>
                        <div>This is the python code generated by my
                          grc:</div>
                        <div><i>self.uhd_usrp_source_0.set_samp_rate(samp_r=
ate)<br>
                            =C2=A0 =C2=A0 =C2=A0 =C2=A0
                            self.uhd_usrp_source_0.set_center_freq(89500000=
,
                            0)<br>
                            =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sourc=
e_0.set_gain(0,
                            0)<br>
                            =C2=A0 =C2=A0 =C2=A0 =C2=A0
                            self.uhd_usrp_source_0.set_auto_dc_offset(True,
                            0)<br>
                            =C2=A0 =C2=A0 =C2=A0 =C2=A0
                            self.uhd_usrp_source_0.set_auto_iq_balance(True=
,
                            0)</i></div>
                        <div><i><br>
                          </i></div>
                        <div>This is the code of rfid:</div>
                        <div><i>self.source =3D uhd.usrp_source(<br>
                            =C2=A0 =C2=A0 device_addr=3Dself.usrp_address_s=
ource,<br>
                            =C2=A0 =C2=A0 stream_args=3Duhd.stream_args(<br=
>
                            =C2=A0 =C2=A0 cpu_format=3D&quot;fc32&quot;,<br=
>
                            =C2=A0 =C2=A0 channels=3Drange(1),<br>
                            =C2=A0 =C2=A0 ),<br>
                            =C2=A0 =C2=A0 )<br>
                            =C2=A0 =C2=A0 self.source.set_samp_rate(self.ad=
c_rate)<br>
                            =C2=A0 =C2=A0 self.source.set_center_freq(self.=
freq,
                            0)<br>
                            =C2=A0 =C2=A0 self.source.set_gain(self.rx_gain=
, 0)<br>
                            =C2=A0 =C2=A0 self.source.set_antenna(&quot;RX2=
&quot;, 0)<br>
                            =C2=A0 =C2=A0 self.source.set_auto_dc_offset(Fa=
lse) #
                            Uncomment this line for SBX daughterboard</i></=
div>
                        <div><br>
                        </div>
                        <div>Is it a reason why the error occurs?</div>
                        <div><br>
                        </div>
                        <div>Best.<br>
                        </div>
                      </div>
                      <br>
                    </blockquote>
                    Can you share the .grc code ?<br>
                    <br>
                    Do you have both an N200 and an X310 plugged in to
                    your system, or just the X310?<br>
                  </div>
                </blockquote>
              </div>
              <br clear=3D"all">
              <br>
              -- <br>
              <div dir=3D"ltr">
                <div dir=3D"ltr"><font style=3D"color:rgb(136,136,136)" siz=
e=3D"4" face=3D"times new roman, serif"><i><b>Xiang
                        Ma,=C2=A0</b></i></font><span style=3D"color:rgb(13=
6,136,136)">Ph.D. Student</span>
                  <div>
                    <div style=3D"color:rgb(136,136,136)"><font color=3D"#4=
44444">College of Engineering</font></div>
                    <div><font color=3D"#444444">Utah State University</fon=
t></div>
                    <div style=3D"color:rgb(136,136,136)"><font color=3D"#4=
44444">E-mail:<a href=3D"mailto:congshanya@gmail.com" style=3D"color:rgb(17=
,85,204)" rel=3D"noreferrer" target=3D"_blank">marxwolfs@gmail.com</a></fon=
t></div>
                  </div>
                </div>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><font style=3D"color:rgb(136,136,136)" siz=
e=3D"4" face=3D"times new roman, serif"><i><b>Xiang Ma,=C2=A0</b></i></font=
><span style=3D"color:rgb(136,136,136)">Ph.D. Student</span><div><div style=
=3D"color:rgb(136,136,136)"><font color=3D"#444444">College of Engineering<=
/font></div><div><font color=3D"#444444">Utah State University</font></div>=
<div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">E-mail:<a hre=
f=3D"mailto:congshanya@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"=
_blank">marxwolfs@gmail.com</a></font></div></div></div></div>

--00000000000074fe2005af011400--


--===============1311644986606868474==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1311644986606868474==--

