Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AB7B008DC
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jul 2025 18:35:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8AC50386442
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jul 2025 12:35:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752165306; bh=hqvr3yg+DZhL641oExmTODIQIwIZ0v6ggac64WE4PjI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=c5uf+X4/78Cavic1j+jGi20dEmzS/XN7o4jytQh2b8OdgxzmzOxXu/ArcKufGUc48
	 XcWOZ94DAXiOMb9uZM4dOyCRAGAh6Ptx6gka8F6uqLJvHjnzOQf5uyhs0ZaElglzAz
	 pcEG5Fe08UNpwalKa7NK5b0JI76QJCCIRK5olVXGo252qblbzTVLn494Kppdd0E8Ao
	 NEEnoD6p0Asbaf7vnh59PDj41O380wCadzR0sPZ9wlLpWLAfF1cyCgZZ8QxquOq2Xs
	 iTpl6Nrck3wKoINsBx9jU1ZCiag5Xs8w7bLrl/TXZXWUfAawMdWEflliWT/nX6etnH
	 1dHSKhc3ejskQ==
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 8AD8D386360
	for <usrp-users@lists.ettus.com>; Thu, 10 Jul 2025 12:34:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EFSQ41FX";
	dkim-atps=neutral
Received: by mail-il1-f181.google.com with SMTP id e9e14a558f8ab-3df30d542caso4646975ab.1
        for <usrp-users@lists.ettus.com>; Thu, 10 Jul 2025 09:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752165255; x=1752770055; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VdgFyEYKsOje5CxR7soZfN3utfu4TMX62E6FyyYRyvo=;
        b=EFSQ41FXMZnP6cJ2p9zpDCdDO67I9UtxxB3mjZMnFvBzTHDZ7vuwE3S1ofcEplG+4n
         oiqrPa384FTGH+LSy2MOd86hCgMnxVEb3fkgrF79rPpXm2aY4BAwxpOklAaIQq5hYogo
         oiBsdlyPpztpKAbbHQ2Fmww1aT0YfnJN2lvXH8yZMQjAGBFye3HAhKywDSA7wtg5FiKD
         CVF10gWRYGDUNjZJPaSNQfBfTSrZ261rzA6IqAkEkKpu3kTq8nHpmPe8RDKWWglfLsfQ
         MISHoF+Icn+CjRnOHI0VAjyCLxRo8Vf8KNn+ylKp4zdqCVfk34eTh4PhoFqhMTgp6bmu
         dxLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752165255; x=1752770055;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VdgFyEYKsOje5CxR7soZfN3utfu4TMX62E6FyyYRyvo=;
        b=aQkR7GTD6WmOFoPUr5otikBUEinNQZrGDZzmINj/QPuHZLy2e13iaSeDNUDgUtTBYy
         gC4v0YdH1qFo5hy6T5JGQ95NhUkkxfUZ+l4OTQvAEoC2lHg99Wr5OmXtukTMasly8Uz0
         Rxao5Q9zN1KDNgpscTuLaR+A7OtTxxfKyhz8p+Bpfz6kOW5WcrxcnFUVVPWB3IXpWTS7
         Yv5G/ug30MyiTFMdSFnD+1zlFFOaQsLWQ1y+ZEA06hhPAAecKL8+VYhQzg2U8Px3ZbMI
         hvLhWDos9+iO3uLq9h4Bi80wiFQ+USAFl9hHQZGEbVRtiHOQRpTNCNxXsDalE6RF9E1b
         S5mg==
X-Gm-Message-State: AOJu0Ywke79efCO8waXlnckHNXVn5TF56Lx7doqiRg02Z2rcjdbfAblc
	x2k0KKsJL8obU4ejEF9hQewNLXIyzhTyKVMlHcBBH5p/zn1h+ljmbwO1vZL5uTpBqK0S0heaGg1
	lKZ1yzORt4+tkxHtx/D4CTxaEkogWrk1bey2D
X-Gm-Gg: ASbGncuKo9OdmuEawYL/JQBhb3QIB6jg8mupPWidtAm5YI8R1rGRs2jwStsiLDqvjTr
	oPhgnUysxey8IuRTJf/d54tv36akVSQ5sc4XazmDOEaCLnYv2BBnJ7SkErJYbxNzf9VxiYd6Bo7
	5+AEYh03sRH30u1pZf+YjLeHbVBvciEye44NYeuk4=
X-Google-Smtp-Source: AGHT+IEGVP+RCTtzZwo5EuCIcXWNbiiSL/W2K9By3muGgq38CfM3pAum5KtrF5MV4RWynwclkp8a5w1GGoZ8Rh5laPk=
X-Received: by 2002:a05:6e02:b4a:b0:3df:3222:278e with SMTP id
 e9e14a558f8ab-3e2532878fcmr688625ab.1.1752165254682; Thu, 10 Jul 2025
 09:34:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2EaJ+bkxSGJkpBJV+3F=prauS1=RtgE17WdfTks3OB17Q@mail.gmail.com>
 <CAFOi1A5KYE_PMAoY4ig3YrAqd4oALspwGohKjaU+y_Lsi4Fp2Q@mail.gmail.com> <CAAxXO2FH=oGaXW2FXqmS7pQMmcFW8v6=EKWOQk-EZYiogKzA8g@mail.gmail.com>
In-Reply-To: <CAAxXO2FH=oGaXW2FXqmS7pQMmcFW8v6=EKWOQk-EZYiogKzA8g@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Thu, 10 Jul 2025 19:34:03 +0300
X-Gm-Features: Ac12FXxR03PERi2ru58XtSo1X8TTeMeyLe_qnzyl6stmq0cgbF6EzWzKPZ5OxQ8
Message-ID: <CAAxXO2H6dNA45fGLX+pt_SCk1VkitZzBYjiDpYoMib7m4AHZ_Q@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: 4AZLKBJ55KJMJH53ERVKZWV5TK66EWNI
X-Message-ID-Hash: 4AZLKBJ55KJMJH53ERVKZWV5TK66EWNI
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Minimum number of dropped samples when changing frequency?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4AZLKBJ55KJMJH53ERVKZWV5TK66EWNI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8722759798715440749=="

--===============8722759798715440749==
Content-Type: multipart/alternative; boundary="00000000000097e211063995c3a2"

--00000000000097e211063995c3a2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Forgot to mention that this must be a uhd issue.
Immediately after uhd_rx_streamer_recv
I use fprintf to print the sample to a file.
These spectra are from this file:(

Nikos

On Thu, Jul 10, 2025 at 2:37=E2=80=AFPM Nikos Balkanas <nbalkanas@gmail.com=
> wrote:

> Thank you Martin,
>
> For your fast reply. I am already using the sensor lo_locked to prevent
> center frequency LO leakage.
> I am using an X-310 with Ubuntu 24.01 over a 10 GBe line.
> Still getting signal corruption when switching frequencies. This is
> something else.
> It is gone when using an offset in my input buffers to drop the first
> initial samples.
> This shouldn't happen since I am using exact buffers with the streamer in
> mode UHD_STREAM_MODE_NUM_SAMPS_AND_DONE
> Check out these spectra:
>
> 945.2_2 is the normal 945.2 Mhz spectrum 62.500 samples.
> 945.2_2_16: is the same spectrum 16.384 samples with lo_locked sensor, no
> offset.
> 945.2_2_16x: is the same spectrum 16.384 samples with lo_locked sensor an=
d
> offset.
>
> What is going  on?
>
> T=CE=99=CE=91
> Nikos
>
>
> On Thu, Jul 10, 2025 at 1:08=E2=80=AFPM Martin Braun <martin.braun@ettus.=
com>
> wrote:
>
>> Nikos,
>>
>> there is no one answer for this, it depends on hardware used, which
>> specific frequencies, how your signal is flowing...
>> Another important thing is: are you using timed commands or not. If you
>> are using timed commands (and the device supports timed-tuning), then yo=
u
>> can wait exactly for the sample that should be the first sample after th=
e
>> tune request is processed, then wait a given, deterministic time dependi=
ng
>> on your hardware and frequencies (old and new). If your device does not
>> support timed-tuning, or you're not using timed commands, then you must
>> wait several milliseconds after submitting a tune request.
>>
>> If you are doing timed tunes, then I believe none of the hardware has an
>> LO lock time that is worse than 100=C2=B5s (many are better).
>>
>> --M
>>
>> On Thu, Jul 10, 2025 at 4:25=E2=80=AFAM Nikos Balkanas <nbalkanas@gmail.=
com>
>> wrote:
>>
>>> Hello,
>>>
>>> What is the minimum number of samples to drop to flush uhd buffers when
>>> changing frequencies?
>>>
>>> TIA
>>> Nikos
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--00000000000097e211063995c3a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">For=
got to mention that this must be a uhd issue.</div><div class=3D"gmail_defa=
ult" style=3D"font-size:small">Immediately after uhd_rx_streamer_recv</div>=
<div class=3D"gmail_default" style=3D"font-size:small">I use fprintf to pri=
nt the sample to a file.</div><div class=3D"gmail_default" style=3D"font-si=
ze:small">These spectra are from this file:(</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=
=3D"font-size:small">Nikos</div></div><br><div class=3D"gmail_quote gmail_q=
uote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 10, 2025 =
at 2:37=E2=80=AFPM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.com=
">nbalkanas@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D=
"font-size:small">Thank you Martin,</div><div class=3D"gmail_default" style=
=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-s=
ize:small">For your fast reply. I am already using the sensor lo_locked to =
prevent center frequency LO leakage.</div><div class=3D"gmail_default" styl=
e=3D"font-size:small">I am using an X-310 with Ubuntu 24.01 over a 10 GBe l=
ine.</div><div class=3D"gmail_default" style=3D"font-size:small">Still gett=
ing signal corruption when switching frequencies. This is something else.</=
div><div class=3D"gmail_default" style=3D"font-size:small">It is gone when =
using an offset in my input buffers to drop the first initial samples.=C2=
=A0</div><div class=3D"gmail_default" style=3D"font-size:small">This should=
n&#39;t happen since I am using exact buffers with the streamer in mode=C2=
=A0UHD_STREAM_MODE_NUM_SAMPS_AND_DONE</div><div class=3D"gmail_default" sty=
le=3D"font-size:small">Check out these spectra:</div><div class=3D"gmail_de=
fault" style=3D"font-size:small"><br></div><div class=3D"gmail_default" sty=
le=3D"font-size:small">945.2_2 is the normal 945.2 Mhz spectrum 62.500 samp=
les.</div><div class=3D"gmail_default" style=3D"font-size:small">945.2_2_16=
: is the same spectrum 16.384 samples with lo_locked sensor, no offset.</di=
v><div class=3D"gmail_default" style=3D"font-size:small">945.2_2_16x: is th=
e same spectrum 16.384 samples with lo_locked sensor and offset.</div><div =
class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"g=
mail_default" style=3D"font-size:small">What is going=C2=A0 on?</div><div c=
lass=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gm=
ail_default" style=3D"font-size:small">T=CE=99=CE=91</div><div class=3D"gma=
il_default" style=3D"font-size:small">Nikos</div><div class=3D"gmail_defaul=
t" style=3D"font-size:small"><br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 10, 2025 at 1:08=E2=80=
=AFPM Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com" target=3D"=
_blank">martin.braun@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Nikos,</div><div><br></=
div><div>there is no one answer for this, it depends on hardware used, whic=
h specific frequencies, how your signal is flowing...</div><div>Another imp=
ortant thing is: are you using timed commands or not. If you are using time=
d commands (and the device supports timed-tuning), then you can wait exactl=
y for the sample that should be the first sample after the tune request is =
processed, then wait a given, deterministic time depending on your hardware=
 and frequencies=C2=A0(old and new). If your device does not support timed-=
tuning, or you&#39;re not using timed commands, then you must wait several =
milliseconds after submitting a tune request.</div><div><br></div><div>If y=
ou are doing timed tunes, then I believe none of the hardware has an LO loc=
k time that is worse than 100=C2=B5s (many are better).</div><div><br></div=
><div>--M</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Jul 10, 2025 at 4:25=E2=80=AFAM Nikos Balkanas &lt;=
<a href=3D"mailto:nbalkanas@gmail.com" target=3D"_blank">nbalkanas@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">He=
llo,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div>=
<div class=3D"gmail_default" style=3D"font-size:small">What is the minimum =
number of samples to drop to flush uhd buffers when changing frequencies?</=
div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div c=
lass=3D"gmail_default" style=3D"font-size:small">TIA</div><div class=3D"gma=
il_default" style=3D"font-size:small">Nikos</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--00000000000097e211063995c3a2--

--===============8722759798715440749==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8722759798715440749==--
