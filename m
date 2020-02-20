Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C38D616634D
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2020 17:40:07 +0100 (CET)
Received: from [::1] (port=34692 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j4ors-0003HW-ES; Thu, 20 Feb 2020 11:40:04 -0500
Received: from mail-io1-f49.google.com ([209.85.166.49]:42842)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <alvaropr97@gmail.com>)
 id 1j4oro-00034S-4b
 for USRP-users@lists.ettus.com; Thu, 20 Feb 2020 11:40:00 -0500
Received: by mail-io1-f49.google.com with SMTP id z1so5361702iom.9
 for <USRP-users@lists.ettus.com>; Thu, 20 Feb 2020 08:39:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=14MBGkS5QNBjaARNctddqQ7PorQXIdvvKgqLGAc4e6E=;
 b=PhO1YgK4NkvnAuEBQSOB4+r30DZDIUrRQfJgCjNM/uoerLok/Nmcm8szAn/Ka63g7+
 QcNMl0cPIw1TsBcTJC4Y/pJIK0/9FwTI6TO+LPz4AZgpxEmov673KVoPLiL1J0u5d7Cb
 SgULdrH/IstN2qcbPktuBXwpxIEbsfmrxuO+RTM46eRp0pVZ1GWlU4ojG1dp9r6Z+/Mt
 hZhJlaojZEQZLtB2aNw3x34YEzmk7sfnkLYSiw/hju+yPA9z5ti+UhyQbukFZuE/gmLM
 XdsWKCz0+2fIsN6NfyIr9QREVrd+bzjjWJZAFoMg8OXwf+vhYLhboPCtp3JdeVHhVMlx
 O4/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=14MBGkS5QNBjaARNctddqQ7PorQXIdvvKgqLGAc4e6E=;
 b=IlkAFrf/yPf7Xe7fMbCWUKOXkcL12nl38NS5iyWsIkwBduF32dtHVQLUFIcEogPlRP
 8qkwKBEprCbfu3gwgof4sPwYPNnoHj2JzWJHq+fzy6QPxeZ80sKKVKHlQRlrnM2mzJUK
 46yBgDIUJv/VsGbi2otbVd3BIEY9vUXfTAs3a+pT1IhsTwO5KrLrfk9ACV/7+EohRM69
 u8r0Ft5tkfnoQ921hvF8HQb5SITC16iEiscmwYY4s+mLUqqzzfOKoU6+IU9rVtBSs0wa
 NPM/NkuHeF8L30FS6P+DPsv9ZQEs+G4QQi9JKtk/xHuGhm/qGDitZfbH4SzzGpwQAFbu
 h5VQ==
X-Gm-Message-State: APjAAAWZe8Ez6YKrlmTGRJRRmqqQ/RvwbQv3fnlnkbmkh/M2sXKSO4fu
 egnKTsKqAiHqWBLsrSEd0/PTt22DxxTW+yjsNw==
X-Google-Smtp-Source: APXvYqxr1VFV5qWgKLFK2y5ZuSi6ZHa/eiK53Ccqi/rr7hWfvQQpJTv1f07i8u7kxyPVWqVc8zf2x6wdcNnzNETkVmw=
X-Received: by 2002:a02:9988:: with SMTP id a8mr26850727jal.33.1582216746530; 
 Thu, 20 Feb 2020 08:39:06 -0800 (PST)
MIME-Version: 1.0
References: <CAAZMsC1pUq22iiHVHAvGjETvdYDActPOVOGruR=dKLgbh535Gg@mail.gmail.com>
 <E01AEA46-6030-4BFF-91CE-0535F84D2FF5@gmail.com>
In-Reply-To: <E01AEA46-6030-4BFF-91CE-0535F84D2FF5@gmail.com>
Date: Thu, 20 Feb 2020 17:38:54 +0100
Message-ID: <CAAZMsC2Do=wLYC-tzKAW8hCezdsZ1zpEtRwN_VtxBgcEXAg8NA@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] GNU Radio UHD Blocks Resolution
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
From: Alvaro Pendas via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alvaro Pendas <alvaropr97@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============8785930509290614569=="
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

--===============8785930509290614569==
Content-Type: multipart/alternative; boundary="000000000000227c87059f048b0a"

--000000000000227c87059f048b0a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

However, the way I see it, this represents a problem in the receiving part.
Let me put it this way: the max output of the ADC is 1, and that
corresponds with the max input. That max input would represent the case
when you receive a high power signal and you set your drive amplifier next
to its max.
So, If you are receiving a low power QPSK signal, with your gain set to 30
dB, the output of your ADC would use a really small part of the range
(let's say from -0.05 to 0.05). However, if your digital levels go from -1
to 1 and are represented with 12 bits, using such a small part of the range
would make the quantization error a problem.



El mi=C3=A9., 19 feb. 2020 a las 20:04, Marcus D Leech (<patchvonbraun@gmai=
l.com>)
escribi=C3=B3:

> Indeed. You=E2=80=99d have to use an external calibration source at sever=
al places
> over your parameter space (frequency gain sample rate)
>
> Sent from my iPhone
>
> On Feb 19, 2020, at 1:54 PM, Alvaro Pendas <alvaropr97@gmail.com> wrote:
>
> =EF=BB=BF
> Marcus thank your for your answer,
>
> First of all, you are right, the range is -1 to 1 (instead of 0 to 1 as I
> said before). So, for example, in the receiving part, the values you get
> out of the UHD Source have a linear relationship with the voltage of the
> analog signal, but I understand there is no easy way to calculate that
> level with the only information of the GNU Radio samples. Is that correct=
?
>
> El mi=C3=A9., 19 feb. 2020 a las 19:22, Marcus D. Leech via USRP-users (<
> usrp-users@lists.ettus.com>) escribi=C3=B3:
>
>> On 02/19/2020 12:01 PM, Alvaro Pendas via USRP-users wrote:
>> > Hello,
>> > I am using GNU Radio and the USRP B200. I have noticed that for the
>> > GNU block UHD: USRP Sink, the values you pass to the block must be in
>> > the range 0 to 1. I guess that means if you do not want to lose
>> > resolution you must ensure that you use the full range, that is to
>> > say, your minimum is 0 or close to 0, and your max is 1 or close to 1.
>> > Am I correct?
>> >
>> > On the other hand, what are the meaning of the values produce by the
>> > block UHD: USRP Source? They must be related to the signal power, but
>> > I am not sure about their range. Is the minimum value that block can
>> > produce the min of the ADC output, and the max, the max of the ADC
>> > output? With the USRP B200 the ADC resolution is 12 bits, are the min
>> > and the max always set with the same value, or does it depend on the
>> > USRP configuration?
>> >
>> > I am using GNU Radio right now, but probably, just knowing how this
>> > works with UHD would be enough to understand the rest.
>> >
>> > Thank you for your time,
>> >
>> > Alvaro
>> >
>> Gnu radio generally likes to have baesband data streams scaled into
>> {-1.0,+1.0} which are linearly related to instantaneous voltages at
>>    the antenna of the hardware.
>>
>> To a first approximation, a value near +1.0 or -1.0 will drive the ADC
>> to its maximum +/- value.  But that's only an approximation, since the
>>    signal is processed a fair amount (linearly) prior to reaching the
>> ADC/DAC, and with analog hardware there's no way of ensuring that
>>    a max value wont' over-drive the analog hardware.
>>
>> Power of a sinusoidal signal is proportional to the  I*I + Q*Q --
>> remember we're dealing with *voltages* here, so ohms law applies...
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000227c87059f048b0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>However, the way I see it, this represents a problem =
in the receiving part. Let me put it this way: the max output of the ADC is=
 1, and that corresponds with the max input. That max input would represent=
 the case when you receive a high power signal and you set your drive ampli=
fier next to its max.<br></div><div>So, If you are receiving a low power QP=
SK signal, with your gain set to 30 dB, the output of your ADC would use a =
really small part of the range (let&#39;s say from -0.05 to 0.05). However,=
 if your digital levels go from -1 to 1 and are represented with 12 bits, u=
sing such a small part of the range would make the quantization error a pro=
blem.</div><div><br></div><div><br> </div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">El mi=C3=A9., 19 feb. 2020 a las =
20:04, Marcus D Leech (&lt;<a href=3D"mailto:patchvonbraun@gmail.com">patch=
vonbraun@gmail.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"auto">Indeed. You=E2=80=99d have to =
use an external calibration source at several places over your parameter sp=
ace (frequency gain sample rate)<br><br><div dir=3D"ltr">Sent from my iPhon=
e</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Feb 19, 2020, at 1=
:54 PM, Alvaro Pendas &lt;<a href=3D"mailto:alvaropr97@gmail.com" target=3D=
"_blank">alvaropr97@gmail.com</a>&gt; wrote:<br><br></blockquote></div><blo=
ckquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>Marcu=
s thank your for your answer,</div><div><br></div><p style=3D"color:rgb(14,=
16,26);background:transparent none repeat scroll 0% 0%;margin-top:0pt;margi=
n-bottom:0pt"><span style=3D"color:rgb(14,16,26);background:transparent non=
e repeat scroll 0% 0%;margin-top:0pt;margin-bottom:0pt">First
 of all, you are right, the range is -1 to 1 (instead of 0 to 1 as I=20
said before). So, for example, in the receiving part, the values you get
 out of the UHD Source have</span><strong style=3D"color:rgb(14,16,26);back=
ground:transparent none repeat scroll 0% 0%;margin-top:0pt;margin-bottom:0p=
t"><span style=3D"color:rgb(14,16,26);background:transparent none repeat sc=
roll 0% 0%;margin-top:0pt;margin-bottom:0pt">=C2=A0</span></strong><span st=
yle=3D"color:rgb(14,16,26);background:transparent none repeat scroll 0% 0%;=
margin-top:0pt;margin-bottom:0pt">a
 linear relationship with the voltage of the analog signal, but I=20
understand there is no easy way to calculate that level with the only=20
information of the GNU Radio samples. Is that correct?</span></p></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El mi=C3=
=A9., 19 feb. 2020 a las 19:22, Marcus D. Leech via USRP-users (&lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">On 02/19/2020 12:01 PM, Alvaro Pendas via USRP-users wrote=
:<br>
&gt; Hello,<br>
&gt; I am using GNU Radio and the USRP B200. I have noticed that for the <b=
r>
&gt; GNU block UHD: USRP Sink, the values you pass to the block must be in =
<br>
&gt; the range 0 to 1. I guess that means if you do not want to lose <br>
&gt; resolution you must ensure that you use the full range, that is to <br=
>
&gt; say, your minimum is 0 or close to 0, and your max is 1 or close to 1.=
 <br>
&gt; Am I correct?<br>
&gt;<br>
&gt; On the other hand, what are the meaning of the values produce by the <=
br>
&gt; block UHD: USRP Source? They must be related to the signal power, but =
<br>
&gt; I am not sure about their range. Is the minimum value that block can <=
br>
&gt; produce the min of the ADC output, and the max, the max of the ADC <br=
>
&gt; output? With the USRP B200 the ADC resolution is 12 bits, are the min =
<br>
&gt; and the max always set with the same value, or does it depend on the <=
br>
&gt; USRP configuration?<br>
&gt;<br>
&gt; I am using GNU Radio right now, but probably, just knowing how this <b=
r>
&gt; works with UHD would be enough to understand the rest.<br>
&gt;<br>
&gt; Thank you for your time,<br>
&gt;<br>
&gt; Alvaro<br>
&gt;<br>
Gnu radio generally likes to have baesband data streams scaled into <br>
{-1.0,+1.0} which are linearly related to instantaneous voltages at<br>
=C2=A0 =C2=A0the antenna of the hardware.<br>
<br>
To a first approximation, a value near +1.0 or -1.0 will drive the ADC <br>
to its maximum +/- value.=C2=A0 But that&#39;s only an approximation, since=
 the<br>
=C2=A0 =C2=A0signal is processed a fair amount (linearly) prior to reaching=
 the <br>
ADC/DAC, and with analog hardware there&#39;s no way of ensuring that<br>
=C2=A0 =C2=A0a max value wont&#39; over-drive the analog hardware.<br>
<br>
Power of a sinusoidal signal is proportional to the=C2=A0 I*I + Q*Q -- <br>
remember we&#39;re dealing with *voltages* here, so ohms law applies...<br>
<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></blockquote></div>

--000000000000227c87059f048b0a--


--===============8785930509290614569==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8785930509290614569==--

