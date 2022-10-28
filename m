Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA486610872
	for <lists+usrp-users@lfdr.de>; Fri, 28 Oct 2022 04:55:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 623E73846FF
	for <lists+usrp-users@lfdr.de>; Thu, 27 Oct 2022 22:55:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666925700; bh=s6ZzGrldIVOvjCCCnTlKBZrvh1yca6VPTLw5UA2Ac4k=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=qQYAsJt/MlJfEvr5hLSzv6CPcFqwtHz4s6ZziVD1a4lWvkWoLkpaAn6lvGifQE4Ck
	 8fJna/KFivrYwY4NMI4Llk/UGGzK9ERAIVNdSBgfsJJA1QHCnwgmz4Y2jf/eREPBtM
	 H8AhdVGDi9JONRu1T9r0DatBiIqs3gKFQt7v9jQimnx+5pIAbnsG1+4yFdrIc1467E
	 A2JFfCZJ3aTDGBe7GKPwpt5p3pIL5N+visCPLFrjsKQXEQITN5SuIZYxH/p0+f3eyt
	 QDlJgxLgmwjze9PuHQDCz8OgnXU/K80fepNB7eVuWQHGp866Zr+OFfsxScJnuJdqFV
	 70fvYqueT4VUw==
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 37A6B3808F7
	for <usrp-users@lists.ettus.com>; Thu, 27 Oct 2022 22:53:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="d6LIUBs0";
	dkim-atps=neutral
Received: by mail-pl1-f174.google.com with SMTP id l2so3658366pld.13
        for <usrp-users@lists.ettus.com>; Thu, 27 Oct 2022 19:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OGwuqI9JUVKyM6z64L8vGLTl9UbTYg/PA/TPnEIv5EE=;
        b=d6LIUBs0evhJH3avvgvWyPzcVs8RPMsjZKjsxyL1puoKZ1vr1Zg99SyaXZicmkFxvb
         A2HLxrQ0SC1tnc/Pyc3gPmUgTcG4dx+7IT+dIgAsQf4eM7b7VZo47lv49w2n97AjhQqR
         5WYFz/G95Fn9ZgfnYw2AfPjQjM8goOQfaKjLf/f3tZBItKGo0IROiAl8aw58nkxM2I+p
         hv0LR/JkvdEVaizVBFvu6pVaAmFmqLt/kjJWI5yanV51ixZZ+eQPSxWduYfHbtBoRy8B
         IqzIDQi3ugKrSdrsiromHXnMPCJcDS59NaN0TZ7nR6NpgejPGl7onb+zo87/T49nXrfy
         x9pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OGwuqI9JUVKyM6z64L8vGLTl9UbTYg/PA/TPnEIv5EE=;
        b=luKTUr4A/ykekOpQWjyJgWLGZ1hu4HwDvzM7l/nX3NTzNWrNqtHV9ofZton7PMbtqJ
         2lvTeFFcALR/vLETilyQQu/+MrK6mHCOMDhFg8AeFNCSuLj7R6Omt5v6pmCPry871rvP
         PakuniD2FpTq8mpaP+iN0UYb0v0vcelfw5AOVso3t4C2OrAwHtWlX3QSIZDR9QloeYUh
         fCH00lWksPRXRr0Xxp7GT8Z+K8OOPlNr7fTHn0mcBscUYKlisjsqdMulel/HR34RT4wi
         +Ov87qaFrzmIw4uPWC15Jlgl+lLMlMQdNdZa8hEsa+mZsExySE0PbrNOrihRS6+DgMBJ
         fgVQ==
X-Gm-Message-State: ACrzQf2reNlugnB+KsxzHoirM/pOwRLDi2AfqX7Y1mUQBELj+q/7fNZY
	rNZvr04AZ5FNRF0AWhALFj9mlpL9RV3hl5DQzlpRsYv4FA5ouI9U
X-Google-Smtp-Source: AMsMyM5j2Vm6Xgcnw8e5roIv7cDO1ArukQawZGVccckD+v0G137CaG5NLE5DVsmIsyxKlNUpT30R+6D7pHkeEG1WAD8=
X-Received: by 2002:a17:902:d54e:b0:178:2da7:1bea with SMTP id
 z14-20020a170902d54e00b001782da71beamr52249051plf.161.1666925631003; Thu, 27
 Oct 2022 19:53:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK4siP3O0-qP24bpp=Phjj0JRt1rB9n0R=9CxDOyTCiyTQ@mail.gmail.com>
 <CAOcXSJyEbqEUD+3+yyFQ=AJk-kzse==UVDfoy75+AqiHD758aw@mail.gmail.com>
 <CAEXYVK5nnW0xt=EOpMT-G_13FkWZSPs4d9w29J+RVgdtBDS4SQ@mail.gmail.com>
 <CAOcXSJxfY+_0RmMWri6Zxg_pd0MHe-TMPY1iLdgprKw_g0pXpA@mail.gmail.com>
 <CAEXYVK7j70E=3R+kLuuhKVOTa39S+ra_Ux4aUb4QgqwR-+cLDQ@mail.gmail.com> <CAEXYVK4qwCaMdx+qhdTo8m_rPzJMeQfuRxUxSgczTEC_i6jJTw@mail.gmail.com>
In-Reply-To: <CAEXYVK4qwCaMdx+qhdTo8m_rPzJMeQfuRxUxSgczTEC_i6jJTw@mail.gmail.com>
From: Wan Liu <wan.liu@ettus.com>
Date: Thu, 27 Oct 2022 22:53:39 -0400
Message-ID: <CAOcXSJy+13C+pF8cHG7Fixs2vQbwEwAN45c2h59UyYOwsZHv=Q@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: TTCIQDTW2BFYEII35XD2DXR3TKOI767U
X-Message-ID-Hash: TTCIQDTW2BFYEII35XD2DXR3TKOI767U
X-MailFrom: wan.liu@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRX Channel Isolation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TTCIQDTW2BFYEII35XD2DXR3TKOI767U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1236655713919394248=="

--===============1236655713919394248==
Content-Type: multipart/alternative; boundary="0000000000001a745c05ec0f5e79"

--0000000000001a745c05ec0f5e79
Content-Type: text/plain; charset="UTF-8"

Hello Brian,

I set up my HW and SW, but I'm having some trouble reproducing after some
initial playing around with UHD examples and gnuradio. I assume you have
some UHD program that records RX to file and while you repeated make tune
requests to ch 1, is this correct? To make sure we are on the same page,
you provide a sample program that reproduces your steps for tuning and
recording the IQ samples.

You also mentioned " When trying to read the lo_locked sensor continuously,
generating SPI traffic I presume going to the PLLs, I get clean spectrum."
Can you also show in your sample program how to reproduce these steps

Once I can get the same spectrogram as you, I'll also look into the "mute
till lock detect" feature of the ADF5356.

Regards,

Wan

On Wed, Oct 26, 2022 at 4:03 PM Brian Padalino <bpadalino@gmail.com> wrote:

> After a bunch of testing, I ended up with the following solution which
> seems to have fixed the vast majority of the issue.  There's still extra
> noise, but not nearly as bad as it was previously so I'd appreciate it if
> Ettus still looked into a more complete solution.
>
> For now, I just enabled the "mute till lock detect" feature of the ADF5356
> and ADF4351 PLLs.  I modified gen_adf5356_regs.py and gen_adf4351_regs.py
> to default it to be on, and the ld_cyc_count to be the longest possible.
>
> Brian
>
> On Wed, Oct 26, 2022 at 9:38 AM Brian Padalino <bpadalino@gmail.com>
> wrote:
>
>> Hey Wan,
>>
>> On Tue, Oct 25, 2022 at 10:53 PM Wan Liu <wan.liu@ettus.com> wrote:
>>
>>> Hello Brian,
>>>
>>> Thank you for the additional information.
>>>
>>> Regarding  #6, I meant that if you have two TwinRX daughterboards, see
>>> if you get this problem when the fixed channel is on one daughterboard, and
>>> the tuned channel is on the other.
>>>
>>
>> Ah, I see.  Unfortunately my setup is a mixed USB/TwinRX setup so maybe
>> it isn't exactly testing what you're asking for, but I did use the subdev
>> spec to target the UBX RX2 for hopping around, and the TwinRX Channel 0 was
>> fixed.  In this case, the fixed spectrum stayed nice and clean the whole
>> time.
>>
>>
>>>
>>> Regarding screenshots, are you referring to any particular frequency and
>>> time region, or is everything above the noise floor associated with the
>>> tuning? In other words, is the clean spectrum where there is nothing above
>>> the noise floor in both time and frequency plots?
>>>
>>
>> The captures were taken with terminated RF inputs.  Channel 0 of the
>> TwinRX was fixed at some frequency (I believe 400 MHz) and Channel 1 was
>> hopping around.  The recording was observing Channel 0 - the fixed
>> frequency channel.  When no hopping happens, there is clean spectrum with
>> just a noise floor which is what I expected to see.  When hopping is
>> happening, every so often we will see these sweeping signals show up.  They
>> last around 10 ms or so and then the spectrum is back to being clean.
>>
>>
>>>
>>> Also can you explain what you mean by "shows some analog PLL-style
>>> locking for around 10 ms of time, then goes away"? Are you referring to the
>>> burst from 3 ms to 13 ms, or something specifically at 10 ms?
>>>
>>
>> I meant the phenomenon that starts at around 3 ms and lasts until around
>> 13 ms.  It looks like an analog PLL settling to me.  Here is a zoomed in
>> version:
>>
>>
>> https://drive.google.com/file/d/1NDax78i3UQh7X_R4g8SHBkBLibI1ICQZ/view?usp=sharing
>>
>>
>>>
>>> Lastly, what are your spectrogram parameters to generate the waterfall?
>>>
>>
>> I am using an FFT size of 2048 with a blackmanharris window of the same
>> size, and overlapping by 1024.  My MATLAB command is:
>>
>>   spectrogram(slice, blackmanharris(2048), 1024, 2048, 50e6, 'centered');
>>
>>
>>>
>>> I'll reach out again after I attempt to reproduce.
>>>
>>
>> Sounds good.  Let me know if you need any other data or clarifications on
>> what I am seeing.
>>
>> Thanks,
>> Brian
>>
>>>

--0000000000001a745c05ec0f5e79
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hello Brian,<br><br></div>I set u=
p my HW and SW, but I&#39;m having some trouble reproducing after some init=
ial playing around with UHD examples and gnuradio. I assume you have some U=
HD program that records RX to file and while you repeated make tune request=
s to ch 1, is this correct? To make sure we are on the same page, you provi=
de a sample program that reproduces your steps for tuning and recording the=
 IQ samples. <br><br></div>You also mentioned &quot; When trying to read th=
e lo_locked sensor continuously, generating SPI=20
traffic I presume going to the PLLs, I get clean spectrum.&quot; Can you al=
so show in your sample program how to reproduce these steps<br><br></div>On=
ce I can get the same spectrogram as you, I&#39;ll also look into the &quot=
;mute till lock detect&quot; feature of the ADF5356.<br><br></div>Regards,<=
br><br></div>Wan<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Wed, Oct 26, 2022 at 4:03 PM Brian Padalino &lt;<a h=
ref=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Afte=
r a bunch of testing, I ended up with the following solution which seems to=
 have fixed the vast majority of the issue.=C2=A0 There&#39;s still extra n=
oise, but not nearly as bad as it was previously so I&#39;d appreciate it i=
f Ettus still looked into a more complete solution.<div><br></div><div>For =
now, I just enabled the &quot;mute till lock detect&quot; feature of the AD=
F5356 and ADF4351 PLLs.=C2=A0 I modified gen_adf5356_regs.py and gen_adf435=
1_regs.py to default it to be on, and the ld_cyc_count to be the longest po=
ssible.</div><div><br></div><div>Brian</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 26, 2022 at 9:38 AM=
 Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_blank=
">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hey Wan,</div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct =
25, 2022 at 10:53 PM Wan Liu &lt;<a href=3D"mailto:wan.liu@ettus.com" targe=
t=3D"_blank">wan.liu@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div><div><div>Hello Brian,<=
br><br></div>Thank you for the additional information. <br><br></div>Regard=
ing=C2=A0 #6, I meant that if you have two TwinRX daughterboards, see if yo=
u get this problem when the fixed channel is on one daughterboard, and the =
tuned channel is on the other.</div></div></blockquote><div><br></div><div>=
Ah, I see.=C2=A0 Unfortunately my setup is a mixed USB/TwinRX setup so mayb=
e it isn&#39;t exactly testing what you&#39;re asking for, but I did use th=
e subdev spec to target the UBX RX2 for hopping around, and the TwinRX Chan=
nel 0 was fixed.=C2=A0 In this case, the fixed spectrum stayed nice and cle=
an the whole time.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div><br></div>Regarding screenshots, are =
you referring to any particular frequency and time region, or is everything=
 above the noise floor associated with the tuning? In other words, is the c=
lean spectrum where there is nothing above the noise floor in both time and=
 frequency plots?<br></div></blockquote><div><br></div><div>The captures we=
re taken with terminated RF inputs.=C2=A0 Channel 0 of the TwinRX was fixed=
 at some frequency (I believe 400 MHz) and Channel 1 was hopping around.=C2=
=A0 The recording was observing Channel 0 - the fixed frequency channel.=C2=
=A0 When no hopping happens, there is clean spectrum with just a noise floo=
r which is what I expected to see.=C2=A0 When hopping is happening, every s=
o often we will see these sweeping signals show up.=C2=A0 They last around =
10 ms or so and then the spectrum is back to being clean.</div><div>=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v><br></div><div>Also can you explain what you mean by &quot;shows some ana=
log PLL-style locking for around 10 ms of time, then goes away&quot;? Are y=
ou referring to the burst from 3 ms to 13 ms, or something specifically at =
10 ms?<br></div></div></blockquote><div><br></div><div>I meant the phenomen=
on that starts at around 3 ms and lasts until around 13 ms.=C2=A0 It looks =
like an analog PLL settling to me.=C2=A0 Here is a zoomed in version:</div>=
<div><br></div><div>=C2=A0=C2=A0<a href=3D"https://drive.google.com/file/d/=
1NDax78i3UQh7X_R4g8SHBkBLibI1ICQZ/view?usp=3Dsharing" target=3D"_blank">htt=
ps://drive.google.com/file/d/1NDax78i3UQh7X_R4g8SHBkBLibI1ICQZ/view?usp=3Ds=
haring</a></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><div><br></div><div>Lastly, what are your spectrog=
ram parameters to generate the waterfall?<br></div></div></blockquote><div>=
<br></div><div>I am using an FFT size of 2048 with a blackmanharris window =
of the same size, and overlapping by 1024.=C2=A0 My MATLAB command is:</div=
><div><br></div><div>=C2=A0=C2=A0spectrogram(slice, blackmanharris(2048), 1=
024, 2048, 50e6, &#39;centered&#39;);</div><div>=C2=A0</div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>I&#=
39;ll reach out again after I attempt to reproduce.<br></div></div></blockq=
uote><div><br></div><div>Sounds good.=C2=A0 Let me know if you need any oth=
er data or clarifications on what I am seeing.</div><div><br></div><div>Tha=
nks,</div><div>Brian</div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>

--0000000000001a745c05ec0f5e79--

--===============1236655713919394248==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1236655713919394248==--
