Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A87CD99A4B4
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 15:18:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8FCA4385CF7
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 09:18:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728652703; bh=LKkJkqJ0dS/sucGXWXyFLmhZuSb0eTvKPAd6UfeLlS8=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=URdcen+Jc6aR91COTuje7lavN8E4T/Q8binkJoqOH7wSjEKxgUUkPxNqO+knQLOIM
	 c6b/90EwKdj5y5fPirN4c2c15H+Yd/mrAtITLXDluRDdr0/ETL2bL3OhGMUkwXIRq5
	 S4MDp+pROg/j4+FxzakzsIyWRk8Vn9H3UJojI/tzT0SteiSZKFEFcrj75fF7YaXJtY
	 5F3QNxXiDc4ay3TyDKMDLEaJ6kfY71uiecUyngR3DKiQAVk4nkphoSy/QmUZVvEldJ
	 FPq0UaYlTVTwMgFN51Ia4dtr7LXE77YT54UYg/7ogJR1CXr/c5Fzn1dhl4FuEDtFdS
	 vqD41pt9bCo9w==
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 7F7B8385C39
	for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2024 09:17:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="Ao+S9At/";
	dkim-atps=neutral
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2fb2f4b282cso10242431fa.2
        for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2024 06:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1728652651; x=1729257451; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=36mojYl1sXLy1Zlbi+dOkBpVOYkLR9/xKhbb/i2ZdW0=;
        b=Ao+S9At/bzH5RwcNsi0cszA5SW/zxAOqZJwVG7/mNjNjK/0R/hhtSnlzKXFN7fv6Wi
         bXmeFc8Ai90kfHZ8W50jgcOSLegQW8/r4x8PgtQ4oiFOvjFMphOoxNiPNa2VJy9ufnu1
         Xtr7OH3tgDIHVUrDWqvOBMoSUwmYi9V6LbrC/mfyVBFrrDqzduVRpDk6mkcRIyB3wAFl
         MK/+fc1q3iCrbLFnE4tq5cjaJRSYbt6IukUUNWmb+faebJhTjuyxn/hI9xKUZERvkwQT
         jKdnNoCzxFbC5tbU4DUcQt/BRE/XWd910OCUrJJP7018fEe5IUoawR2v6FiUSOREmeqa
         RNfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728652651; x=1729257451;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=36mojYl1sXLy1Zlbi+dOkBpVOYkLR9/xKhbb/i2ZdW0=;
        b=gmWZqIv7A+yqZbeEb0D3gRAuWLw7cVvgJCUPci/plggdp8Ztu5MBmHm1tJDGmp4W+7
         qeGe0vIrSY04C1bP8tdyS44Te5m1Xc9X9oaW+DzUIvgdBbcEust+lop6uDm7CjEaqKah
         DSAknbbreHGBAFfOnzQsphVdKvQjrQATeet2RlIBS551m3162CzayXMwhJujZmGRICiK
         L1iSc770jJ/duBAVqG97JCYY3NTILJGsOAIlbmO04pKjSw/QSrw/LN0x4vlnoZIIOWmC
         pCtHQR7Vc50WXnIP6MDIXVP+3C6GYUYIyQYHQ8+FS99VvB6FUF9Zzjne9IH9LngiBwMp
         xn1Q==
X-Gm-Message-State: AOJu0YwcMjkt4cPcmW6WQG2YPpbWo299HcikgvkVE4tp3v+EEMJCdDfQ
	jje2S8XpAqu8SRmQMobXvktMbCmNvIx60UpKIL9Vi9Mg0Rn5psdpekENUddbUE0Wz0jsZC7FS7g
	to7/eY6Y2sRAWNdbkcTAFYQXZVzWplxyY9PMRXvXLznL+K/qtxQg=
X-Google-Smtp-Source: AGHT+IH9lx28TlTYpJOAJneaSTrQ04fX+K49Pp3H5jy+wT6p906pUgppoWNlo2fNbmMvRnYodEYdAhF8yIl2cjXetJI=
X-Received: by 2002:a05:651c:221f:b0:2fa:c49b:d14f with SMTP id
 38308e7fff4ca-2fb3270486cmr14396981fa.2.1728652650726; Fri, 11 Oct 2024
 06:17:30 -0700 (PDT)
MIME-Version: 1.0
References: <zCLIwYcY6ADoffbvImLtwRjZkDAy2JYdgumpej9z2Q@lists.ettus.com>
In-Reply-To: <zCLIwYcY6ADoffbvImLtwRjZkDAy2JYdgumpej9z2Q@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 11 Oct 2024 15:17:19 +0200
Message-ID: <CAFOi1A7BavABw_N5PZAGMDNrQ6Bd8z9C7JPnAPAXhFH70wA7dQ@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: 54QHM67PYQZ5CK2UT2EKMOYXL4HMKJ73
X-Message-ID-Hash: 54QHM67PYQZ5CK2UT2EKMOYXL4HMKJ73
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Triggering of Rx synchronously with Tx in RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/54QHM67PYQZ5CK2UT2EKMOYXL4HMKJ73/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1892367318949482408=="

--===============1892367318949482408==
Content-Type: multipart/alternative; boundary="0000000000002fe5590624334f42"

--0000000000002fe5590624334f42
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Piotr,

it took me a bit to respond because this is tricky question. And I still
don't have a great answer, but I also don't want to let you hang.

A few thoughts:
- Maybe you just want to write an RFNoC block that drops samples in a
regular pattern for you. That way you wouldn't rely on timed commands
coming in all the time.
  - Actually, on the TX side, you might use the same thing. As the ATR pins
follow the Tx state, you could fall back to not modifying the radio and
simply using the standard ATR feature if you had a block that produced
bursts the way you want them. Unless of course you want the TX chain to be
running continuously, which might be the case here.
- Timed commands to the radio could also come from the FPGA, although we
don't have a good example for that. But the radio doesn't care who's
sending the timed commands. Another RFNoC block could be sending stream
commands in a regular fashion.

--M

On Tue, Oct 1, 2024 at 11:10=E2=80=AFAM <perper@o2.pl> wrote:

> Hello all,
>
> I know the topic of triggering of transmission and reception has been
> recurring here on the list over and over. But I haven=E2=80=99t found the=
 answer
> that is good for my case among the previous threads .
>
> The context: I'm using USRP X410 and I=E2=80=99m transmitting a pulsed ra=
dar
> waveform. I=E2=80=99m able to receive the return signal continuously, but=
 I need to
> limit the stream of data sent to the PC. The good solution is to send
> precisely selected part of the received signal after each pulse. This way
> the radar can focus only on the most interesting area. For example to
> define: receive =E2=80=98N=E2=80=99 samples beginning in =E2=80=98R=E2=80=
=99 samples from the Tx pulse
> start (where =E2=80=98N=E2=80=99 and =E2=80=98R=E2=80=99 can be changed b=
ut it doesn=E2=80=99t happen often).
>
> My current implementation with continuous reception looks like this: I=E2=
=80=99m
> using USRP X410 and in RFNoC I have a =E2=80=98Replay=E2=80=99 block conn=
ected to the
> DUC->Radio block. =E2=80=98DUC=E2=80=99 has upsampling set to =E2=80=981=
=E2=80=99 - that make it pass
> samples without change from =E2=80=98Replay=E2=80=99 block. The =E2=80=98=
Replay=E2=80=99 block plays in a
> loop a pulse followed by zeros. The least significant bit of I part of IQ
> sample is connected to GPIO port and is used currently to control the RF
> front-end (switch between transmission and reception). This way I=E2=80=
=99m loosing
> one bit of transmitted IQ sample, but I have very precise control over th=
e
> GPIO, so that it is synchronized with Tx pulse. For example, I can set th=
at
> line a bit earlier than RF pulse in order to prepare the Tx chain for
> transmission.
>
> Now in order to achieve what I described (receive =E2=80=98N=E2=80=98 sam=
ples after each
> pulse) I wanted to reuse for triggering the reception the signal that
> currently controls the GPIO.
>
> And here my question starts: where in RFNoC should I connect the
> triggering signal and implement the logic that controls passing the sampl=
es
> synchronously with the trigger?
>
> I wanted to implement an RFNoC block that passes the samples synchronousl=
y
> with the trigger. In order to that I'll have to edit manually the RFNoC
> flowgraph in order to connect the trigger signal to additional input in t=
he
> block (I can do that). I have doubt if I can trigger an event synchronous=
ly
> with the samples stream this way, but at the moment I have more basic
> issue. I don=E2=80=99t know yet how to ignore samples for arbitrarily lon=
g time
> with RFNoC use of block. I think the closest thing that exists in UHD to
> what I'm trying to do is rfnoc_keep_one_in_n. I'm trying to use some idea=
s
> from it but I've got no success yet.
>
> Another solution could be use the trigger to control flow of the samples
> from ADC to the radio block, but I don=E2=80=99t know yet exactly how it =
could be
> implemented.
>
> Maybe there is some better solution to that what I=E2=80=99m trying to do=
? Maybe I
> can use timed commands? But I don=E2=80=99t want to send them from PC as =
I would
> have to do that very often: for each pulse and pulse rate might be i.e.
> 2kHz.
>
> Trying out each option means loosing more time - so maybe you have some
> advice which path is most promising?
>
> Best Regards,
> Piotr Krysik
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002fe5590624334f42
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Piotr,</div><div><br></div><div>it took me a bit =
to respond because this is tricky question. And I still don&#39;t have a gr=
eat answer, but I also don&#39;t want to let you hang.</div><div><br></div>=
<div>A few thoughts:</div><div>- Maybe you just want to write an RFNoC bloc=
k that drops samples in a regular pattern for you. That way you wouldn&#39;=
t rely on timed commands coming in all the time.</div><div>=C2=A0 - Actuall=
y, on the TX side, you might use the same thing. As the ATR pins follow the=
 Tx state, you could fall back to not modifying the radio and simply using =
the standard ATR feature if you had a block that produced bursts the way yo=
u want them. Unless of course you want the TX chain to be running continuou=
sly, which might be the case here.<br></div><div>- Timed commands to the ra=
dio could also come from the FPGA, although we don&#39;t have a good exampl=
e for that. But the radio doesn&#39;t care who&#39;s sending the timed comm=
ands. Another RFNoC block could be sending stream commands in a regular fas=
hion.</div><div><br></div><div>--M<br></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 1, 2024 at 11:10=E2=
=80=AFAM &lt;<a href=3D"mailto:perper@o2.pl">perper@o2.pl</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hello all,</p><=
p>I know the topic of triggering of transmission and reception has been rec=
urring here on the list over and over. But I haven=E2=80=99t found the answ=
er that is good for my case among the previous threads .</p><p>The context:=
 I&#39;m using USRP X410 and I=E2=80=99m transmitting a pulsed radar wavefo=
rm. I=E2=80=99m able to receive the return signal continuously, but I need =
to limit the stream of data sent to the PC. The good solution is to send pr=
ecisely selected part of the received signal after each pulse. This way the=
 radar can focus only on the most interesting area. For example to define: =
receive =E2=80=98N=E2=80=99 samples beginning in =E2=80=98R=E2=80=99 sample=
s from the Tx pulse start (where =E2=80=98N=E2=80=99 and =E2=80=98R=E2=80=
=99 can be changed but it doesn=E2=80=99t happen often).</p><p>My current i=
mplementation with continuous reception looks like this: I=E2=80=99m using =
USRP X410 and in RFNoC I have a =E2=80=98Replay=E2=80=99 block connected to=
 the DUC-&gt;Radio block. =E2=80=98DUC=E2=80=99 has upsampling set to =E2=
=80=981=E2=80=99 - that make it pass samples without change from =E2=80=98R=
eplay=E2=80=99 block. The =E2=80=98Replay=E2=80=99 block plays in a loop a =
pulse followed by zeros. The least significant bit of I part of IQ sample i=
s connected to GPIO port and is used currently to control the RF front-end =
(switch between transmission and reception). This way I=E2=80=99m loosing o=
ne bit of transmitted IQ sample, but I have very precise control over the G=
PIO, so that it is synchronized with Tx pulse. For example, I can set that =
line a bit earlier than RF pulse in order to prepare the Tx chain for trans=
mission.</p><p>Now in order to achieve what I described (receive =E2=80=98N=
=E2=80=98 samples after each pulse) I wanted to reuse for triggering the re=
ception the signal that currently controls the GPIO.</p><p>And here my ques=
tion starts: where in RFNoC should I connect the triggering signal and impl=
ement the logic that controls passing the samples synchronously with the tr=
igger?</p><p>I wanted to implement an RFNoC block that passes the samples s=
ynchronously with the trigger. In order to that I&#39;ll have to edit manua=
lly the RFNoC flowgraph in order to connect the trigger signal to additiona=
l input in the block (I can do that). I have doubt if I can trigger an even=
t synchronously with the samples stream this way, but at the moment I have =
more basic issue. I don=E2=80=99t know yet how to ignore samples for arbitr=
arily long time with RFNoC use of block. I think the closest thing that exi=
sts in UHD to what I&#39;m trying to do is rfnoc_keep_one_in_n. I&#39;m try=
ing to use some ideas from it but I&#39;ve got no success yet.</p><p>Anothe=
r solution could be use the trigger to control flow of the samples from ADC=
 to the radio block, but I don=E2=80=99t know yet exactly how it could be i=
mplemented.</p><p>Maybe there is some better solution to that what I=E2=80=
=99m trying to do? Maybe I can use timed commands? But I don=E2=80=99t want=
 to send them from PC as I would have to do that very often: for each pulse=
 and pulse rate might be i.e. 2kHz.</p><p>Trying out each option means loos=
ing more time - so maybe you have some advice which path is most promising?=
</p><p>Best Regards,<br>Piotr Krysik</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000002fe5590624334f42--

--===============1892367318949482408==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1892367318949482408==--
