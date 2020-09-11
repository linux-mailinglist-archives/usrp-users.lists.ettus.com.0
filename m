Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED452657AF
	for <lists+usrp-users@lfdr.de>; Fri, 11 Sep 2020 05:52:18 +0200 (CEST)
Received: from [::1] (port=49698 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGa6g-0002PA-Rs; Thu, 10 Sep 2020 23:52:14 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:37617)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kGa6d-0002Gv-DU
 for USRP-users@lists.ettus.com; Thu, 10 Sep 2020 23:52:11 -0400
Received: by mail-qk1-f173.google.com with SMTP id 16so8627980qkf.4
 for <USRP-users@lists.ettus.com>; Thu, 10 Sep 2020 20:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=1LivzK5iLdSHZTAO88f5SXkw3s4A6ybt0GW3w3Foh/I=;
 b=isxZ9f0tHSVxWQlAbhDhb+iUvmUyJiMSuEkxkCyBDbXcdKvStEHQVSB9zP71v7dJz+
 RA9AH4gtvFvgxRXdxIzhzc/oweCabduiP+MwI1P9O3r9mJyQqzPxLRDP9DtRgMUMRbMA
 K6gvu3RQFDeyrUy0Lyh4m3Vw7zOdpL5YRLtu8BVr+s8JJQZ7UGYuD6JucvwpyEXY0KCU
 TUj85HyUJ5VVZDQ0UWRGJkgblqq1IOoOSCzukuzDTayegVMkmLDfZOEzwSwlxVHDZum5
 tffmhW5oCC9vz0yHWldVGEQHJa2PJQ3zv2Gf7EKzjiHS5vVafl8YQuSsGbVjVDIALBS+
 17yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=1LivzK5iLdSHZTAO88f5SXkw3s4A6ybt0GW3w3Foh/I=;
 b=TFX2OsOmirnoYaDOgTIrCLuIWzjGvYwwH4pY67GxVZ8QYOlmERyoY9f004av12Ay1F
 UcwH3r8mWk3a8aJCxZG6288U3qSYbI0t4zgGSIXjRSWHkkP/S2h8fIMnYiwtqQmf5VvG
 4rrmI32Az76BpuE1cBb3gEIIAqMZ1HdvWembe8wTDfKXyoeK19YhXRxf4c6dxs9nG4t5
 uiqA/2ink8agD9vLjZ8zx+5pl6vI0nhpG3vOLNtSKF8mkcXzWB8HjAnqHxRcdVUh2t7C
 srLAFokGUqKiTKYwBiM/A6CBTjcSajZx2iTNEjurXKuYJGLiBNLmmLjs90Gt6jDI3Gyx
 9JCQ==
X-Gm-Message-State: AOAM532jSk9qToCo9FXDaElpUI3MEzhOgFydPjSqy2BwncdKqk6yIdTR
 AyDEai5bPzZB6RqkF/yGr1HCpFs4d4oMhQ==
X-Google-Smtp-Source: ABdhPJzvhe8JncmwJRfVqoH3aVmeAmSPjsjEphZRcu0QZzOuV9795p9bkuRkBb0L5dK3mSH3gy758Q==
X-Received: by 2002:a37:b4e:: with SMTP id 75mr10540810qkl.137.1599796290707; 
 Thu, 10 Sep 2020 20:51:30 -0700 (PDT)
Received: from [192.168.2.29]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.gmail.com with ESMTPSA id v15sm1299856qkg.108.2020.09.10.20.51.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Sep 2020 20:51:30 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Thu, 10 Sep 2020 23:51:29 -0400
Message-Id: <B886DE49-2C98-48E7-8E62-57241331231A@gmail.com>
References: <CACryqrHyja_JKA1G3CGQJOkGb+ZrkuJgikYBHGCLS5dHdv0qVQ@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CACryqrHyja_JKA1G3CGQJOkGb+ZrkuJgikYBHGCLS5dHdv0qVQ@mail.gmail.com>
To: Xiang Ma <marxwolfs@gmail.com>
X-Mailer: iPhone Mail (17G80)
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============0009126374195047722=="
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


--===============0009126374195047722==
Content-Type: multipart/alternative; boundary=Apple-Mail-F2FB58DC-E1FB-4FCE-A335-B37A59A92735
Content-Transfer-Encoding: 7bit


--Apple-Mail-F2FB58DC-E1FB-4FCE-A335-B37A59A92735
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

You should probably leave frame size out altogether.=20

Sent from my iPhone

> On Sep 10, 2020, at 11:14 PM, Xiang Ma <marxwolfs@gmail.com> wrote:
>=20
> =EF=BB=BF
> Thank you. I modified the RFID code=20
> from
> self.usrp_address_source =3D "addr=3D192.168.10.2,recv_frame_size=3D256"
> self.usrp_address_sink   =3D "addr=3D192.168.10.2,recv_frame_size=3D256"
>=20
> to
> self.usrp_address_source =3D "addr=3D192.168.10.2,recv_frame_size=3D1472"
> self.usrp_address_sink   =3D "addr=3D192.168.10.2,recv_frame_size=3D1472"
>=20
> And now it works. But I am not sure why. Pretty weird.
>=20
>> On Thu, Sep 10, 2020 at 6:49 PM Marcus D. Leech <patchvonbraun@gmail.com>=
 wrote:
>>> On 09/10/2020 08:28 PM, Xiang Ma wrote:
>>> Sorry. I do not make it clear.
>>> The RFID code is based on N200, I do not have RFID code for my x310.
>>> The code I metioned of x310 is generate by a FM receicer.
>>>=20
>>> I want to make the RFID code run on my x310. But errors occur. So I ask t=
his question.
>>>=20
>>> Best,
>>>=20
>> =46rom the code you pointed us to, there's a lot of "hard-coded knowledge=
" within the code.
>>=20
>> You might try adding "type=3Dx300" in the address variables in the RFID c=
ode. =20
>>=20
>> But this leads into the general topic of:
>>=20
>> https://files.ettus.com/manual/page_identification.html
>>=20
>> Which is about how devices are "named" so they can be found.  Since there=
 are multiple device types that use an ethernet interface you sometimes
>>   need to add a "type=3D" to tell the code what type of device it is.   T=
his may be the source of some of your trouble.
>>=20
>>=20
>>>=20
>>> On Thu, Sep 10, 2020, 6:23 PM Marcus D. Leech <patchvonbraun@gmail.com> w=
rote:
>>>>> On 09/10/2020 07:00 PM, Xiang Ma wrote:
>>>>> I only have X310, the rfid code is written by someone else that works o=
n N200.
>>>>> For the RFID code, I do not have .grc code. But the .py code is here h=
ttps://github.com/nkargas/Gen2-UHF-RFID-Reader/blob/master/gr-rfid/apps/read=
er.py
>>>>> So what is the difference between self.source.set_antenna("RX2", 0) an=
d self.uhd_usrp_source_0.set_antenna('RX2', 0)?
>>>>>=20
>>>>> Best,
>>>> I'm now confused about what you're asking.
>>>>=20
>>>> It sounds like there's TWO DIFFERENT bits of code we're talking about, n=
either of which works?  You refer to your own .grc code.  Could you
>>>>   share that?
>>>>=20
>>>> At this point, it's clear that the X310 grossly works, since the standa=
rd test tools are working, but your own code isn't, and you're asking the
>>>>   list here to help you debug it.
>>>>=20
>>>>=20
>>>>>=20
>>>>> On Thu, Sep 10, 2020 at 12:53 PM Marcus D. Leech <patchvonbraun@gmail.=
com> wrote:
>>>>>>> On 09/10/2020 02:06 PM, Xiang Ma wrote:
>>>>>>> I tried several commands including benchmark_rate, there are no expl=
icit errors.
>>>>>>>=20
>>>>>>> But I find my USRP is x310 with 2 UBX-160 daughtboards. But the rfid=
 code is N200 with only 1 daughterboard slot.
>>>>>>> This is the python code generated by my grc:
>>>>>>> self.uhd_usrp_source_0.set_samp_rate(samp_rate)
>>>>>>>         self.uhd_usrp_source_0.set_center_freq(89500000, 0)
>>>>>>>         self.uhd_usrp_source_0.set_gain(0, 0)
>>>>>>>         self.uhd_usrp_source_0.set_auto_dc_offset(True, 0)
>>>>>>>         self.uhd_usrp_source_0.set_auto_iq_balance(True, 0)
>>>>>>>=20
>>>>>>> This is the code of rfid:
>>>>>>> self.source =3D uhd.usrp_source(
>>>>>>>     device_addr=3Dself.usrp_address_source,
>>>>>>>     stream_args=3Duhd.stream_args(
>>>>>>>     cpu_format=3D"fc32",
>>>>>>>     channels=3Drange(1),
>>>>>>>     ),
>>>>>>>     )
>>>>>>>     self.source.set_samp_rate(self.adc_rate)
>>>>>>>     self.source.set_center_freq(self.freq, 0)
>>>>>>>     self.source.set_gain(self.rx_gain, 0)
>>>>>>>     self.source.set_antenna("RX2", 0)
>>>>>>>     self.source.set_auto_dc_offset(False) # Uncomment this line for S=
BX daughterboard
>>>>>>>=20
>>>>>>> Is it a reason why the error occurs?
>>>>>>>=20
>>>>>>> Best.
>>>>>>>=20
>>>>>> Can you share the .grc code ?
>>>>>>=20
>>>>>> Do you have both an N200 and an X310 plugged in to your system, or ju=
st the X310?
>>>>>=20
>>>>>=20
>>>>> --=20
>>>>> Xiang Ma, Ph.D. Student
>>>>> College of Engineering
>>>>> Utah State University
>>>>> E-mail:marxwolfs@gmail.com
>>>>=20
>>=20
>=20
>=20
> --=20
> Xiang Ma, Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com

--Apple-Mail-F2FB58DC-E1FB-4FCE-A335-B37A59A92735
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">You should probably leave frame size out al=
together.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D=
"ltr"><br><blockquote type=3D"cite">On Sep 10, 2020, at 11:14 PM, Xiang Ma &=
lt;marxwolfs@gmail.com&gt; wrote:<br><br></blockquote></div><blockquote type=
=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>Thank you. I modif=
ied the RFID code <br></div><div>from</div><div>self.usrp_address_source =3D=
 "addr=3D192.168.10.2,recv_frame_size=3D256"<br>self.usrp_address_sink &nbsp=
; =3D "addr=3D192.168.10.2,recv_frame_size=3D256"</div><div><br></div><div>t=
o<br></div><div>self.usrp_address_source =3D "addr=3D192.168.10.2,recv_frame=
_size=3D1472"<br>self.usrp_address_sink &nbsp; =3D "addr=3D192.168.10.2,recv=
_frame_size=3D1472"</div><div><br></div><div>And now it works. But I am not s=
ure why. Pretty weird.</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Thu, Sep 10, 2020 at 6:49 PM Marcus D. Leech &=
lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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
    =46rom the code you pointed us to, there's a lot of "hard-coded
    knowledge" within the code.<br>
    <br>
    You might try adding "type=3Dx300" in the address variables in the
    RFID code.&nbsp; <br>
    <br>
    But this leads into the general topic of:<br>
    <br>
    <a href=3D"https://files.ettus.com/manual/page_identification.html" targ=
et=3D"_blank">https://files.ettus.com/manual/page_identification.html</a><br=
>
    <br>
    Which is about how devices are "named" so they can be found.&nbsp; Since=

    there are multiple device types that use an ethernet interface you
    sometimes<br>
    &nbsp; need to add a "type=3D" to tell the code what type of device it
    is.&nbsp;&nbsp; This may be the source of some of your trouble.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 10, 2020, 6:23 PM
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" tar=
get=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div>On 09/10/2020 07:00 PM, Xiang Ma wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>I only have X310, the rfid code is written by
                  someone else that works on N200.</div>
                <div>For the RFID code, I do not have .grc code. But the
                  .py code is here <a href=3D"https://github.com/nkargas/Gen=
2-UHF-RFID-Reader/blob/master/gr-rfid/apps/reader.py" rel=3D"noreferrer" tar=
get=3D"_blank">https://github.com/nkargas/Gen2-UHF-RFID-Reader/blob/master/g=
r-rfid/apps/reader.py</a></div>
                <div>So what is the difference between <span><i>self.source.=
set_antenna("RX2",

                      0) </i>and<i>
                      self.uhd_usrp_source_0.set_antenna('RX2', 0)?</i></spa=
n></div>
                <div><span><i><br>
                    </i></span></div>
                <div><span>Best,<i><br>
                    </i></span></div>
              </div>
            </blockquote>
            I'm now confused about what you're asking.<br>
            <br>
            It sounds like there's TWO DIFFERENT bits of code we're
            talking about, neither of which works?&nbsp; You refer to your
            own .grc code.&nbsp; Could you<br>
            &nbsp; share that?<br>
            <br>
            At this point, it's clear that the X310 grossly works, since
            the standard test tools are working, but your own code
            isn't, and you're asking the<br>
            &nbsp; list here to help you debug it.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 10, 2020
                  at 12:53 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvon=
braun@gmail.com" rel=3D"noreferrer" target=3D"_blank">patchvonbraun@gmail.co=
m</a>&gt;

                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div bgcolor=3D"#FFFFFF">
                    <div>On 09/10/2020 02:06 PM, Xiang Ma wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div>I tried several commands including
                          benchmark_rate, there are no explicit errors.</div=
>
                        <div><br>
                        </div>
                        <div>But I find my USRP is x310 with 2 UBX-160
                          daughtboards. But the rfid code is N200 with
                          only 1 daughterboard slot.</div>
                        <div>This is the python code generated by my
                          grc:</div>
                        <div><i>self.uhd_usrp_source_0.set_samp_rate(samp_ra=
te)<br>
                            &nbsp; &nbsp; &nbsp; &nbsp;
                            self.uhd_usrp_source_0.set_center_freq(89500000,=

                            0)<br>
                            &nbsp; &nbsp; &nbsp; &nbsp; self.uhd_usrp_source=
_0.set_gain(0,
                            0)<br>
                            &nbsp; &nbsp; &nbsp; &nbsp;
                            self.uhd_usrp_source_0.set_auto_dc_offset(True,
                            0)<br>
                            &nbsp; &nbsp; &nbsp; &nbsp;
                            self.uhd_usrp_source_0.set_auto_iq_balance(True,=

                            0)</i></div>
                        <div><i><br>
                          </i></div>
                        <div>This is the code of rfid:</div>
                        <div><i>self.source =3D uhd.usrp_source(<br>
                            &nbsp; &nbsp; device_addr=3Dself.usrp_address_so=
urce,<br>
                            &nbsp; &nbsp; stream_args=3Duhd.stream_args(<br>=

                            &nbsp; &nbsp; cpu_format=3D"fc32",<br>
                            &nbsp; &nbsp; channels=3Drange(1),<br>
                            &nbsp; &nbsp; ),<br>
                            &nbsp; &nbsp; )<br>
                            &nbsp; &nbsp; self.source.set_samp_rate(self.adc=
_rate)<br>
                            &nbsp; &nbsp; self.source.set_center_freq(self.f=
req,
                            0)<br>
                            &nbsp; &nbsp; self.source.set_gain(self.rx_gain,=
 0)<br>
                            &nbsp; &nbsp; self.source.set_antenna("RX2", 0)<=
br>
                            &nbsp; &nbsp; self.source.set_auto_dc_offset(Fal=
se) #
                            Uncomment this line for SBX daughterboard</i></d=
iv>
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
                <div dir=3D"ltr"><font style=3D"color:rgb(136,136,136)" size=
=3D"4" face=3D"times new roman, serif"><i><b>Xiang
                        Ma,&nbsp;</b></i></font><span style=3D"color:rgb(136=
,136,136)">Ph.D. Student</span>
                  <div>
                    <div style=3D"color:rgb(136,136,136)"><font color=3D"#44=
4444">College of Engineering</font></div>
                    <div><font color=3D"#444444">Utah State University</font=
></div>
                    <div style=3D"color:rgb(136,136,136)"><font color=3D"#44=
4444">E-mail:<a href=3D"mailto:congshanya@gmail.com" style=3D"color:rgb(17,8=
5,204)" rel=3D"noreferrer" target=3D"_blank">marxwolfs@gmail.com</a></font><=
/div>
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

</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"gm=
ail_signature"><div dir=3D"ltr"><font style=3D"color:rgb(136,136,136)" size=3D=
"4" face=3D"times new roman, serif"><i><b>Xiang Ma,&nbsp;</b></i></font><spa=
n style=3D"color:rgb(136,136,136)">Ph.D. Student</span><div><div style=3D"co=
lor:rgb(136,136,136)"><font color=3D"#444444">College of Engineering</font><=
/div><div><font color=3D"#444444">Utah State University</font></div><div sty=
le=3D"color:rgb(136,136,136)"><font color=3D"#444444">E-mail:<a href=3D"mail=
to:congshanya@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">ma=
rxwolfs@gmail.com</a></font></div></div></div></div>
</div></blockquote></body></html>=

--Apple-Mail-F2FB58DC-E1FB-4FCE-A335-B37A59A92735--


--===============0009126374195047722==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0009126374195047722==--

