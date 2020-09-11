Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E9F265603
	for <lists+usrp-users@lfdr.de>; Fri, 11 Sep 2020 02:29:29 +0200 (CEST)
Received: from [::1] (port=48512 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGWwS-0000Ir-Nm; Thu, 10 Sep 2020 20:29:28 -0400
Received: from mail-yb1-f181.google.com ([209.85.219.181]:34999)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marxwolfs@gmail.com>) id 1kGWwO-0008T6-Su
 for usrp-users@lists.ettus.com; Thu, 10 Sep 2020 20:29:24 -0400
Received: by mail-yb1-f181.google.com with SMTP id s92so5279577ybi.2
 for <usrp-users@lists.ettus.com>; Thu, 10 Sep 2020 17:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+QYh3Azi/2gqfqqSvLY5IZa//Ri/ntb9qRbmLentn54=;
 b=IfGvtjDZa4/J4NwhMOznHhhGxBMcVAltb1BHL4C/ll+Rn1fwi9amczHzeK+XcvqlB5
 1mdCNo/wYEk9vgyAFZZrzz2HNyBrrTwkMxnZlaAuwIvlc3yiA9Ww36zdU+7K7Rj43peQ
 3+f1jgJmPLMyTq7GPpKXgVuSRW4VqpGVO7xf3y+D+WJ2v/rkJCvfINHh5ctSZ0/wnFvO
 9FqkNjrPgiASfyBTAwLdB2RRvcm+RyVGURKvNtUxaJXzWYwTFKzsfR8aqSEzWEQGWMOH
 QachVCOm1BX5Du3pWBXqXtXEENW5OU7JZaihRtn++nZg4qyL4tEOiCPqSZWiZ1K2f4Tw
 /YmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+QYh3Azi/2gqfqqSvLY5IZa//Ri/ntb9qRbmLentn54=;
 b=B6m5wcprrgOtd0YMTdaC/k+JfiHuQbqhorZFNkmutTZqpNsWOXKp0ZC40FHynKJv0O
 KJlr0EJXkjb/gMEHSVyrRWugCOIPtUDIROwHKAfFA3fa5c2LkdwHfqNLGeoKP0seN1ZG
 y8VqtwXLlKT0B96QckTh40QsF6ivQ0CsOdeVw5rlGjV0qw8W5nqVswmzsYRCLLv2BF9l
 HG84OPJpZQEr2ARUWCmUZpVYOWqTaNzqzogHSBItNIdHmt9ASwj5Zi/FG6IwxQqNTTjU
 96SIJswhGdSyintP6FTCjDV80Sq94S3f65yaaJgOWXkR0SneQOKgOoVKrdGPE5RkP24Y
 AoOw==
X-Gm-Message-State: AOAM533Q4+AlIZXBwbVCX4F74bwSI4qQn8REFa7DFJXOLLtz6SKTYXlG
 x2RVzX5rZFbZDIx/K6TfKOi/if5x/XsL6uff1HQ=
X-Google-Smtp-Source: ABdhPJw2hrmx7hkTgpUTRJ2LqD84gEm4hld8hT4asmKhKN+zGsOQZ+XP0QAvsurqkEzQ8SaOUr9WbbTrR6ff626db54=
X-Received: by 2002:a25:a504:: with SMTP id h4mr17723177ybi.374.1599784124289; 
 Thu, 10 Sep 2020 17:28:44 -0700 (PDT)
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
In-Reply-To: <5F5AC383.4020200@gmail.com>
Date: Thu, 10 Sep 2020 18:28:32 -0600
Message-ID: <CACryqrEMEZHxzCaoiEPMrD4FdjoZ2x0mJaOTE7tQz7SrbL2mKQ@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============2813269519146905299=="
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

--===============2813269519146905299==
Content-Type: multipart/alternative; boundary="00000000000072170705aefec450"

--00000000000072170705aefec450
Content-Type: text/plain; charset="UTF-8"

Sorry. I do not make it clear.
The RFID code is based on N200, I do not have RFID code for my x310.
The code I metioned of x310 is generate by a FM receicer.

I want to make the RFID code run on my x310. But errors occur. So I ask
this question.

Best,


On Thu, Sep 10, 2020, 6:23 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 09/10/2020 07:00 PM, Xiang Ma wrote:
>
> I only have X310, the rfid code is written by someone else that works on
> N200.
> For the RFID code, I do not have .grc code. But the .py code is here
> https://github.com/nkargas/Gen2-UHF-RFID-Reader/blob/master/gr-rfid/apps/reader.py
> So what is the difference between *self.source.set_antenna("RX2", 0) *and*
> self.uhd_usrp_source_0.set_antenna('RX2', 0)?*
>
> Best,
>
> I'm now confused about what you're asking.
>
> It sounds like there's TWO DIFFERENT bits of code we're talking about,
> neither of which works?  You refer to your own .grc code.  Could you
>   share that?
>
> At this point, it's clear that the X310 grossly works, since the standard
> test tools are working, but your own code isn't, and you're asking the
>   list here to help you debug it.
>
>
>
> On Thu, Sep 10, 2020 at 12:53 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 09/10/2020 02:06 PM, Xiang Ma wrote:
>>
>> I tried several commands including benchmark_rate, there are no explicit
>> errors.
>>
>> But I find my USRP is x310 with 2 UBX-160 daughtboards. But the rfid code
>> is N200 with only 1 daughterboard slot.
>> This is the python code generated by my grc:
>>
>>
>>
>>
>> *self.uhd_usrp_source_0.set_samp_rate(samp_rate)
>> self.uhd_usrp_source_0.set_center_freq(89500000, 0)
>> self.uhd_usrp_source_0.set_gain(0, 0)
>> self.uhd_usrp_source_0.set_auto_dc_offset(True, 0)
>> self.uhd_usrp_source_0.set_auto_iq_balance(True, 0)*
>>
>> This is the code of rfid:
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> *self.source = uhd.usrp_source(     device_addr=self.usrp_address_source,
>>     stream_args=uhd.stream_args(     cpu_format="fc32",
>> channels=range(1),     ),     )
>> self.source.set_samp_rate(self.adc_rate)
>> self.source.set_center_freq(self.freq, 0)
>> self.source.set_gain(self.rx_gain, 0)     self.source.set_antenna("RX2", 0)
>>     self.source.set_auto_dc_offset(False) # Uncomment this line for SBX
>> daughterboard*
>>
>> Is it a reason why the error occurs?
>>
>> Best.
>>
>> Can you share the .grc code ?
>>
>> Do you have both an N200 and an X310 plugged in to your system, or just
>> the X310?
>>
>
>
> --
> *Xiang Ma, *Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com <congshanya@gmail.com>
>
>
>

--00000000000072170705aefec450
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Sorry. I do not make it clear.<div dir=3D"auto">The RFID =
code is based on N200, I do not have RFID code for my x310.</div><div dir=
=3D"auto">The code I metioned of x310 is generate by a FM receicer.</div><d=
iv dir=3D"auto"><br></div><div dir=3D"auto">I want to make the RFID code ru=
n on my x310. But errors occur. So I ask this question.</div><div dir=3D"au=
to"><br></div><div dir=3D"auto">Best,</div><div dir=3D"auto"><br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
hu, Sep 10, 2020, 6:23 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbra=
un@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div>On 09/10/2020 07:00 PM, Xiang Ma wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>I only have X310, the rfid code is written by someone else
          that works on N200.</div>
        <div>For the RFID code, I do not have .grc code. But the .py
          code is here <a href=3D"https://github.com/nkargas/Gen2-UHF-RFID-=
Reader/blob/master/gr-rfid/apps/reader.py" target=3D"_blank" rel=3D"norefer=
rer">https://github.com/nkargas/Gen2-UHF-RFID-Reader/blob/master/gr-rfid/ap=
ps/reader.py</a></div>
        <div>So what is the difference between <span><i>self.source.set_ant=
enna(&quot;RX2&quot;,
              0) </i>and<i> self.uhd_usrp_source_0.set_antenna(&#39;RX2&#39=
;,
              0)?</i></span></div>
        <div><span><i><br>
            </i></span></div>
        <div><span>Best,<i><br>
            </i></span></div>
      </div>
    </blockquote>
    I&#39;m now confused about what you&#39;re asking.<br>
    <br>
    It sounds like there&#39;s TWO DIFFERENT bits of code we&#39;re talking
    about, neither of which works?=C2=A0 You refer to your own .grc code.=
=C2=A0
    Could you<br>
    =C2=A0 share that?<br>
    <br>
    At this point, it&#39;s clear that the X310 grossly works, since the
    standard test tools are working, but your own code isn&#39;t, and you&#=
39;re
    asking the<br>
    =C2=A0 list here to help you debug it.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 10, 2020 at 12:53
          PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank" rel=3D"noreferrer">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div>On 09/10/2020 02:06 PM, Xiang Ma wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>I tried several commands including benchmark_rate,
                  there are no explicit errors.</div>
                <div><br>
                </div>
                <div>But I find my USRP is x310 with 2 UBX-160
                  daughtboards. But the rfid code is N200 with only 1
                  daughterboard slot.</div>
                <div>This is the python code generated by my grc:</div>
                <div><i>self.uhd_usrp_source_0.set_samp_rate(samp_rate)<br>
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0
                    self.uhd_usrp_source_0.set_center_freq(89500000, 0)<br>
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_=
gain(0, 0)<br>
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0
                    self.uhd_usrp_source_0.set_auto_dc_offset(True, 0)<br>
                    =C2=A0 =C2=A0 =C2=A0 =C2=A0
                    self.uhd_usrp_source_0.set_auto_iq_balance(True, 0)</i>=
</div>
                <div><i><br>
                  </i></div>
                <div>This is the code of rfid:</div>
                <div><i>self.source =3D uhd.usrp_source(<br>
                    =C2=A0 =C2=A0 device_addr=3Dself.usrp_address_source,<b=
r>
                    =C2=A0 =C2=A0 stream_args=3Duhd.stream_args(<br>
                    =C2=A0 =C2=A0 cpu_format=3D&quot;fc32&quot;,<br>
                    =C2=A0 =C2=A0 channels=3Drange(1),<br>
                    =C2=A0 =C2=A0 ),<br>
                    =C2=A0 =C2=A0 )<br>
                    =C2=A0 =C2=A0 self.source.set_samp_rate(self.adc_rate)<=
br>
                    =C2=A0 =C2=A0 self.source.set_center_freq(self.freq, 0)=
<br>
                    =C2=A0 =C2=A0 self.source.set_gain(self.rx_gain, 0)<br>
                    =C2=A0 =C2=A0 self.source.set_antenna(&quot;RX2&quot;, =
0)<br>
                    =C2=A0 =C2=A0 self.source.set_auto_dc_offset(False) #
                    Uncomment this line for SBX daughterboard</i></div>
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
            Do you have both an N200 and an X310 plugged in to your
            system, or just the X310?<br>
          </div>
        </blockquote>
      </div>
      <br clear=3D"all">
      <br>
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
-mail:<a href=3D"mailto:congshanya@gmail.com" style=3D"color:rgb(17,85,204)=
" target=3D"_blank" rel=3D"noreferrer">marxwolfs@gmail.com</a></font></div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--00000000000072170705aefec450--


--===============2813269519146905299==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2813269519146905299==--

