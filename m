Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6801A2657D7
	for <lists+usrp-users@lfdr.de>; Fri, 11 Sep 2020 06:02:59 +0200 (CEST)
Received: from [::1] (port=49752 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGaH3-00038T-Qd; Fri, 11 Sep 2020 00:02:57 -0400
Received: from mail-yb1-f175.google.com ([209.85.219.175]:40177)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marxwolfs@gmail.com>) id 1kGaGz-00031m-Ke
 for USRP-users@lists.ettus.com; Fri, 11 Sep 2020 00:02:53 -0400
Received: by mail-yb1-f175.google.com with SMTP id k2so2968423ybp.7
 for <USRP-users@lists.ettus.com>; Thu, 10 Sep 2020 21:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g9BfphVOeE/ofumkpFtIAB8XsPOrDcIBitZXzgXezKc=;
 b=mS08461/KTax05u+f0NepdmPxbOCEkS+7/bjWBY1BQqCWwr4n48JVXuESmtQ+0dlpD
 ppaVdH1nmGMbNxH40pDHB+CseLnm/MS20ly9HU/reotAfhG6HVT2KLCf4ioTDZrDyGMY
 3EoTfAA3VHuQmYGyNpK7mSYxWarOS5Hr+xNtNKs3/G5lqC8ryxsJr3Rri7NU4ajwJpi8
 JO8pNe4HT1BqmgVz1JbSnxPeTddbwxVjZXNPOgqL19X2I3uqLgzpS6yXkjbhh9fbJUjJ
 wjsC5/X5/t9qH3nGo/w8J0n8cGW6FI3nq5FO1HG2bkTNApdCw3Kiidb/EVU7WaoM7qWK
 8e1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g9BfphVOeE/ofumkpFtIAB8XsPOrDcIBitZXzgXezKc=;
 b=mqxrcVH5KiA3vdM+tKoquI3TXf33iMAwfh5ByCTwVWHNWF49ajmPGycWl9DsvSvGmN
 CIy8K9K6LKXPbzn+ZzMg6/FE0NvQUPdcXuhPM2s80ID1TQYaRnFzObyOsrelBzsYOu35
 RYrOpDiQgUa/8NEO3Ow7JXApoECNwEFuP5KgLn2oBnntFU75zcJPBfbR8cRXtMCE9kLi
 9KHjduXzAiJwC02xcfmHCfNyl0b8V1J5ZdCuDc6hy0YGQuH1haVvmXNK1pOVIr5i8UEG
 N601SrCYWyopIi3FH1pUP3h9mLpTHizD58VVsyCh2bfatPOpy18aJO8zGWfrWRBBIUEK
 U0+w==
X-Gm-Message-State: AOAM530sI4m8VgjoQrD9XKtvHMeLB9HPlVx+PCSwRcJhmXBLFGqcKXh3
 GarBXk2YJXpK6iLhAbAYKxUslutCTx5uqmiMFuw=
X-Google-Smtp-Source: ABdhPJyw3n16fBxP9Ob90FPQKeTyhCDJM3uv6tzVZov0FIxjN/I8k6m3Vy+Va2rpTzw1x1bP9l1rmfapbucIPNPHu+Q=
X-Received: by 2002:a25:bc82:: with SMTP id e2mr16469419ybk.435.1599796931556; 
 Thu, 10 Sep 2020 21:02:11 -0700 (PDT)
MIME-Version: 1.0
References: <CACryqrHyja_JKA1G3CGQJOkGb+ZrkuJgikYBHGCLS5dHdv0qVQ@mail.gmail.com>
 <B886DE49-2C98-48E7-8E62-57241331231A@gmail.com>
In-Reply-To: <B886DE49-2C98-48E7-8E62-57241331231A@gmail.com>
Date: Thu, 10 Sep 2020 22:02:00 -0600
Message-ID: <CACryqrHJBDHi4Wd2dpe6exrierWJD_NwpjjMXF_Bu5da4ms_Jw@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
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
Content-Type: multipart/mixed; boundary="===============2965293462936556441=="
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

--===============2965293462936556441==
Content-Type: multipart/alternative; boundary="000000000000d1791d05af01bfe8"

--000000000000d1791d05af01bfe8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, it also works.
Thanks,

On Thu, Sep 10, 2020 at 9:51 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> You should probably leave frame size out altogether.
>
> Sent from my iPhone
>
> On Sep 10, 2020, at 11:14 PM, Xiang Ma <marxwolfs@gmail.com> wrote:
>
> =EF=BB=BF
> Thank you. I modified the RFID code
> from
> self.usrp_address_source =3D "addr=3D192.168.10.2,recv_frame_size=3D256"
> self.usrp_address_sink   =3D "addr=3D192.168.10.2,recv_frame_size=3D256"
>
> to
> self.usrp_address_source =3D "addr=3D192.168.10.2,recv_frame_size=3D1472"
> self.usrp_address_sink   =3D "addr=3D192.168.10.2,recv_frame_size=3D1472"
>
> And now it works. But I am not sure why. Pretty weird.
>
> On Thu, Sep 10, 2020 at 6:49 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 09/10/2020 08:28 PM, Xiang Ma wrote:
>>
>> Sorry. I do not make it clear.
>> The RFID code is based on N200, I do not have RFID code for my x310.
>> The code I metioned of x310 is generate by a FM receicer.
>>
>> I want to make the RFID code run on my x310. But errors occur. So I ask
>> this question.
>>
>> Best,
>>
>> From the code you pointed us to, there's a lot of "hard-coded knowledge"
>> within the code.
>>
>> You might try adding "type=3Dx300" in the address variables in the RFID
>> code.
>>
>> But this leads into the general topic of:
>>
>> https://files.ettus.com/manual/page_identification.html
>>
>> Which is about how devices are "named" so they can be found.  Since ther=
e
>> are multiple device types that use an ethernet interface you sometimes
>>   need to add a "type=3D" to tell the code what type of device it is.
>> This may be the source of some of your trouble.
>>
>>
>>
>> On Thu, Sep 10, 2020, 6:23 PM Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 09/10/2020 07:00 PM, Xiang Ma wrote:
>>>
>>> I only have X310, the rfid code is written by someone else that works o=
n
>>> N200.
>>> For the RFID code, I do not have .grc code. But the .py code is here
>>> https://github.com/nkargas/Gen2-UHF-RFID-Reader/blob/master/gr-rfid/app=
s/reader.py
>>> So what is the difference between *self.source.set_antenna("RX2", 0) *
>>> and* self.uhd_usrp_source_0.set_antenna('RX2', 0)?*
>>>
>>> Best,
>>>
>>> I'm now confused about what you're asking.
>>>
>>> It sounds like there's TWO DIFFERENT bits of code we're talking about,
>>> neither of which works?  You refer to your own .grc code.  Could you
>>>   share that?
>>>
>>> At this point, it's clear that the X310 grossly works, since the
>>> standard test tools are working, but your own code isn't, and you're as=
king
>>> the
>>>   list here to help you debug it.
>>>
>>>
>>>
>>> On Thu, Sep 10, 2020 at 12:53 PM Marcus D. Leech <
>>> patchvonbraun@gmail.com> wrote:
>>>
>>>> On 09/10/2020 02:06 PM, Xiang Ma wrote:
>>>>
>>>> I tried several commands including benchmark_rate, there are no
>>>> explicit errors.
>>>>
>>>> But I find my USRP is x310 with 2 UBX-160 daughtboards. But the rfid
>>>> code is N200 with only 1 daughterboard slot.
>>>> This is the python code generated by my grc:
>>>>
>>>>
>>>>
>>>>
>>>> *self.uhd_usrp_source_0.set_samp_rate(samp_rate)
>>>> self.uhd_usrp_source_0.set_center_freq(89500000, 0)
>>>> self.uhd_usrp_source_0.set_gain(0, 0)
>>>> self.uhd_usrp_source_0.set_auto_dc_offset(True, 0)
>>>> self.uhd_usrp_source_0.set_auto_iq_balance(True, 0)*
>>>>
>>>> This is the code of rfid:
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> *self.source =3D uhd.usrp_source(
>>>> device_addr=3Dself.usrp_address_source,     stream_args=3Duhd.stream_a=
rgs(
>>>> cpu_format=3D"fc32",     channels=3Drange(1),     ),     )
>>>> self.source.set_samp_rate(self.adc_rate)
>>>> self.source.set_center_freq(self.freq, 0)
>>>> self.source.set_gain(self.rx_gain, 0)     self.source.set_antenna("RX2=
", 0)
>>>>     self.source.set_auto_dc_offset(False) # Uncomment this line for SB=
X
>>>> daughterboard*
>>>>
>>>> Is it a reason why the error occurs?
>>>>
>>>> Best.
>>>>
>>>> Can you share the .grc code ?
>>>>
>>>> Do you have both an N200 and an X310 plugged in to your system, or jus=
t
>>>> the X310?
>>>>
>>>
>>>
>>> --
>>> *Xiang Ma, *Ph.D. Student
>>> College of Engineering
>>> Utah State University
>>> E-mail:marxwolfs@gmail.com <congshanya@gmail.com>
>>>
>>>
>>>
>>
>
> --
> *Xiang Ma, *Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com <congshanya@gmail.com>
>
>

--=20
*Xiang Ma, *Ph.D. Student
College of Engineering
Utah State University
E-mail:marxwolfs@gmail.com <congshanya@gmail.com>

--000000000000d1791d05af01bfe8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, it also works.=C2=A0<div>Thanks,</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 10,=
 2020 at 9:51 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.c=
om">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"auto">You should probably leave fram=
e size out altogether.=C2=A0<br><br><div dir=3D"ltr">Sent from my iPhone</d=
iv><div dir=3D"ltr"><br><blockquote type=3D"cite">On Sep 10, 2020, at 11:14=
 PM, Xiang Ma &lt;<a href=3D"mailto:marxwolfs@gmail.com" target=3D"_blank">=
marxwolfs@gmail.com</a>&gt; wrote:<br><br></blockquote></div><blockquote ty=
pe=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>Thank you. I mo=
dified the RFID code <br></div><div>from</div><div>self.usrp_address_source=
 =3D &quot;addr=3D192.168.10.2,recv_frame_size=3D256&quot;<br>self.usrp_add=
ress_sink =C2=A0 =3D &quot;addr=3D192.168.10.2,recv_frame_size=3D256&quot;<=
/div><div><br></div><div>to<br></div><div>self.usrp_address_source =3D &quo=
t;addr=3D192.168.10.2,recv_frame_size=3D1472&quot;<br>self.usrp_address_sin=
k =C2=A0 =3D &quot;addr=3D192.168.10.2,recv_frame_size=3D1472&quot;</div><d=
iv><br></div><div>And now it works. But I am not sure why. Pretty weird.</d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Thu, Sep 10, 2020 at 6:49 PM Marcus D. Leech &lt;<a href=3D"mailto:pa=
tchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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

</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><div dir=
=3D"ltr"><font style=3D"color:rgb(136,136,136)" size=3D"4" face=3D"times ne=
w roman, serif"><i><b>Xiang Ma,=C2=A0</b></i></font><span style=3D"color:rg=
b(136,136,136)">Ph.D. Student</span><div><div style=3D"color:rgb(136,136,13=
6)"><font color=3D"#444444">College of Engineering</font></div><div><font c=
olor=3D"#444444">Utah State University</font></div><div style=3D"color:rgb(=
136,136,136)"><font color=3D"#444444">E-mail:<a href=3D"mailto:congshanya@g=
mail.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">marxwolfs@gmail.=
com</a></font></div></div></div></div>
</div></blockquote></div></blockquote></div><br clear=3D"all"><div><br></di=
v>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><font =
face=3D"times new roman, serif" size=3D"4" style=3D"color:rgb(136,136,136)"=
><i><b>Xiang Ma,=C2=A0</b></i></font><span style=3D"color:rgb(136,136,136)"=
>Ph.D. Student</span><div><div style=3D"color:rgb(136,136,136)"><font color=
=3D"#444444">College of Engineering</font></div><div><font color=3D"#444444=
">Utah State University</font></div><div style=3D"color:rgb(136,136,136)"><=
font color=3D"#444444">E-mail:<a href=3D"mailto:congshanya@gmail.com" style=
=3D"color:rgb(17,85,204)" target=3D"_blank">marxwolfs@gmail.com</a></font><=
/div></div></div></div>

--000000000000d1791d05af01bfe8--


--===============2965293462936556441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2965293462936556441==--

