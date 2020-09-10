Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 162EB26554B
	for <lists+usrp-users@lfdr.de>; Fri, 11 Sep 2020 01:01:44 +0200 (CEST)
Received: from [::1] (port=47870 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGVZS-0001tT-Sx; Thu, 10 Sep 2020 19:01:38 -0400
Received: from mail-yb1-f195.google.com ([209.85.219.195]:44289)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marxwolfs@gmail.com>) id 1kGVZO-0001oW-IX
 for usrp-users@lists.ettus.com; Thu, 10 Sep 2020 19:01:34 -0400
Received: by mail-yb1-f195.google.com with SMTP id h206so5116718ybc.11
 for <usrp-users@lists.ettus.com>; Thu, 10 Sep 2020 16:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m/+gtzRNHpXppf3kjVY/vof3Tvj5qY3mLGPsQ4/PS+E=;
 b=TWwFNGsBxPO/Ap6vQoDSw9uLQdiXZXiGZ583zs2tE1wsIYocRCzgLJyi7T7tL6PVvU
 Xz41wLBKsVsWFJ36Tl7ZaAMtsU9zTz2MNkrqV1KjXhO7u/OMmFx7CpLf6HQtco3dOn/K
 C23HnwUqnKGaw4NNzQs3x3Kc/zCwaXkVlggrizP+HcUSQ3cjwfERXflrbIrDphWNsX+z
 e1bXSUNEfmmGvtZ74SZEWy/MPH2v7P9+BgJE1kNuLYQCZW6WWXLMpxwAuUobH0mjQJM7
 KTfuqUTIlx0INd43Td52pwKXgH+u/+CjD3ruTu2UGXarffeDSS/bQipHuRQ316wUIMJt
 Q+Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m/+gtzRNHpXppf3kjVY/vof3Tvj5qY3mLGPsQ4/PS+E=;
 b=VN0SqO5UF2Wzu1aFD4/z5hBuOvDSePWmiEQ7UYLTPlGYiwjKgYvvpxz/Itoop+KcZR
 NDJopXqWUS+vKA7jcjKAdPc3jNJIMHvKBi6qI4zeA95pghUyr941PJgrdiHMUxfo4Zqd
 +WA8W56CE7yrCJymCq5S5Etyq/G/gJpF5HjTWGv3J8IzZQFtWewisiQN2xh2PUOHiC4R
 tbwNx20O5lJmDVfLO7X9k+t9ZnaNih877wiT8CQ7BAW2y75Ny6XiU/LJh/oTpheTowqW
 SStDQPRKPfGcyWGyw+pbug1OEKUhh2jwRi98SwnoeYHXsYUs9jWeVpUVFBWSIopQ0GMU
 OhdA==
X-Gm-Message-State: AOAM530G46lMhv1T/oVpP27XtCZl6W9HMA5xEd99TeW36XgI0IsD6R+a
 O+pIgJIVibEGYVEvD/HKy74xLTTqwJ7ncYfTEP8=
X-Google-Smtp-Source: ABdhPJwFm9NTOIqp8W1FgoYS39EBl+7nuRTWlG7DZGzx8gUrgS9eB9eFIvovGafukmXCJoA906661Xv7dsrxVnSvSp8=
X-Received: by 2002:a5b:8c8:: with SMTP id w8mr15352361ybq.199.1599778853811; 
 Thu, 10 Sep 2020 16:00:53 -0700 (PDT)
MIME-Version: 1.0
References: <CACryqrG8a3S1ARULWRPYte8aoUVmh8B-qBxjX6GS_j_kam_q-w@mail.gmail.com>
 <5F5A50F1.4080500@gmail.com>
 <CACryqrG3Eo6KTFM1v2SpA2Dc8Q71iznrLtai=79bPWgDG=xXRw@mail.gmail.com>
 <5F5A52C5.20703@gmail.com>
 <CACryqrG_kG4==1T_zjWqNPENWoe3y5ff7j9EOeHxQqFv1tFnmg@mail.gmail.com>
 <5F5A54F9.2000502@gmail.com>
 <CACryqrHxwT6RF_xoU=q9n3JSp+fBGyoHZO-+ifG_oxas3Hw2wA@mail.gmail.com>
 <5F5A7638.8010704@gmail.com>
In-Reply-To: <5F5A7638.8010704@gmail.com>
Date: Thu, 10 Sep 2020 17:00:42 -0600
Message-ID: <CACryqrE+wQDyQt6X1EK2PvgSAEVv8pqaa=rbfur0xKN33hrn5A@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============3569194407899070273=="
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

--===============3569194407899070273==
Content-Type: multipart/alternative; boundary="0000000000004cf7e605aefd8a04"

--0000000000004cf7e605aefd8a04
Content-Type: text/plain; charset="UTF-8"

I only have X310, the rfid code is written by someone else that works on
N200.
For the RFID code, I do not have .grc code. But the .py code is here
https://github.com/nkargas/Gen2-UHF-RFID-Reader/blob/master/gr-rfid/apps/reader.py
So what is the difference between *self.source.set_antenna("RX2", 0) *and*
self.uhd_usrp_source_0.set_antenna('RX2', 0)?*

Best,

On Thu, Sep 10, 2020 at 12:53 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 09/10/2020 02:06 PM, Xiang Ma wrote:
>
> I tried several commands including benchmark_rate, there are no explicit
> errors.
>
> But I find my USRP is x310 with 2 UBX-160 daughtboards. But the rfid code
> is N200 with only 1 daughterboard slot.
> This is the python code generated by my grc:
>
>
>
>
> *self.uhd_usrp_source_0.set_samp_rate(samp_rate)
> self.uhd_usrp_source_0.set_center_freq(89500000, 0)
> self.uhd_usrp_source_0.set_gain(0, 0)
> self.uhd_usrp_source_0.set_auto_dc_offset(True, 0)
> self.uhd_usrp_source_0.set_auto_iq_balance(True, 0)*
>
> This is the code of rfid:
>
>
>
>
>
>
>
>
>
>
>
> *self.source = uhd.usrp_source(     device_addr=self.usrp_address_source,
>     stream_args=uhd.stream_args(     cpu_format="fc32",
> channels=range(1),     ),     )
> self.source.set_samp_rate(self.adc_rate)
> self.source.set_center_freq(self.freq, 0)
> self.source.set_gain(self.rx_gain, 0)     self.source.set_antenna("RX2", 0)
>     self.source.set_auto_dc_offset(False) # Uncomment this line for SBX
> daughterboard*
>
> Is it a reason why the error occurs?
>
> Best.
>
> Can you share the .grc code ?
>
> Do you have both an N200 and an X310 plugged in to your system, or just
> the X310?
>


-- 
*Xiang Ma, *Ph.D. Student
College of Engineering
Utah State University
E-mail:marxwolfs@gmail.com <congshanya@gmail.com>

--0000000000004cf7e605aefd8a04
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I only have X310, the rfid code is written by someone=
 else that works on N200.</div><div>For the RFID code, I do not have .grc c=
ode. But the .py code is here <a href=3D"https://github.com/nkargas/Gen2-UH=
F-RFID-Reader/blob/master/gr-rfid/apps/reader.py">https://github.com/nkarga=
s/Gen2-UHF-RFID-Reader/blob/master/gr-rfid/apps/reader.py</a></div><div>So =
what is the difference between <span class=3D"gmail-im"><i>self.source.set_=
antenna(&quot;RX2&quot;, 0) </i>and<i> self.uhd_usrp_source_0.set_antenna(&=
#39;RX2&#39;, 0)?</i></span></div><div><span class=3D"gmail-im"><i><br></i>=
</span></div><div><span class=3D"gmail-im">Best,<i><br></i></span></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Thu, Sep 10, 2020 at 12:53 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvo=
nbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 09/10/2020 02:06 PM, Xiang Ma wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>I tried several commands including benchmark_rate, there
          are no explicit errors.</div>
        <div><br>
        </div>
        <div>But I find my USRP is x310 with 2 UBX-160 daughtboards. But
          the rfid code is N200 with only 1 daughterboard slot.</div>
        <div>This is the python code generated by my grc:</div>
        <div><i>self.uhd_usrp_source_0.set_samp_rate(samp_rate)<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_center_f=
req(89500000, 0)<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_gain(0, =
0)<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_auto_dc_=
offset(True, 0)<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_auto_iq_=
balance(True, 0)</i></div>
        <div><i><br>
          </i></div>
        <div>This is the code of rfid:</div>
        <div><i>self.source =3D uhd.usrp_source(<br>
            =C2=A0 =C2=A0 device_addr=3Dself.usrp_address_source,<br>
            =C2=A0 =C2=A0 stream_args=3Duhd.stream_args(<br>
            =C2=A0 =C2=A0 cpu_format=3D&quot;fc32&quot;,<br>
            =C2=A0 =C2=A0 channels=3Drange(1),<br>
            =C2=A0 =C2=A0 ),<br>
            =C2=A0 =C2=A0 )<br>
            =C2=A0 =C2=A0 self.source.set_samp_rate(self.adc_rate)<br>
            =C2=A0 =C2=A0 self.source.set_center_freq(self.freq, 0)<br>
            =C2=A0 =C2=A0 self.source.set_gain(self.rx_gain, 0)<br>
            =C2=A0 =C2=A0 self.source.set_antenna(&quot;RX2&quot;, 0)<br>
            =C2=A0 =C2=A0 self.source.set_auto_dc_offset(False) # Uncomment=
 this
            line for SBX daughterboard</i></div>
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
    Do you have both an N200 and an X310 plugged in to your system, or
    just the X310?<br>
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

--0000000000004cf7e605aefd8a04--


--===============3569194407899070273==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3569194407899070273==--

