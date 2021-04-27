Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 629A736CB13
	for <lists+usrp-users@lfdr.de>; Tue, 27 Apr 2021 20:27:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 76FC6384207
	for <lists+usrp-users@lfdr.de>; Tue, 27 Apr 2021 14:27:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="gi5bUVsX";
	dkim-atps=neutral
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	by mm2.emwd.com (Postfix) with ESMTPS id AE4F4383C04
	for <USRP-users@lists.ettus.com>; Tue, 27 Apr 2021 14:26:20 -0400 (EDT)
Received: by mail-ot1-f49.google.com with SMTP id n32-20020a9d1ea30000b02902a53d6ad4bdso1149065otn.3
        for <USRP-users@lists.ettus.com>; Tue, 27 Apr 2021 11:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NY6khYxhIQ2NM34AisgyDk4xgepCvswjDOukslCkNZk=;
        b=gi5bUVsXhJz2dhTrN1evEuNluv7IdniNjHABgj4OTXwwxVcMBnNOxU6BqmyOeijZJh
         m6QfBjrZ6VoEPGpLJrvDsJqGYAyKvviLPZVgv1N1SsnFHco3+kbBNRjtDKiRBlnl2bN2
         WfUce7kb0gL1Q1v8PgxX+l9o1vhWISC+egnw6lHoaTIfjimz8+GlY9LRuP5bRhge83SO
         oMELunr/C85zbKz0Wm6SA47duWhGlfZReTNi8/e66lZY93qRpxDKtea3Oqp0nQUd9wSI
         zYxIk81/QXdgsGpWYCD+LEiP5yBsHfsfDlt8etofWaSD6dQQ+s9MqT8dKwMIvGLjL+mS
         S9Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NY6khYxhIQ2NM34AisgyDk4xgepCvswjDOukslCkNZk=;
        b=WXXi/u7GYQPR5tyfHckrKRAaTR7ruikbL7TPbH6GIhH7bjnRf2eqEQK7e/wE4Vcy0r
         QmAOkjL6Q3osAi6y96NoNhz35VH3mVp5Q1yQ7QQfD2OSe79KCTuOVfozO01U18jllW+V
         jtz74k6maOsvH38ovFiTd18kGyaSXPhRjZz2ED+7VJBMRSjfpFd2MxyZJe5NzKmmnoHi
         tm5wq09IKeoR27LyU4uNuwo+6zsdKyeU4/nkyU4DF51V1bFGGGa7AHIlOdyDl5cGkDxn
         STYj9E25/5/TVeRo0d+Nwm0DQdhjgjYRKUNHS40WTQNL+DMO0SVcI2b1T7g8bbQVMl/k
         LWWg==
X-Gm-Message-State: AOAM530TvabbZoZe6wkRTYLMYPorWOvhFEHe/skwDY9+w6y+diM73MYv
	7masaX4khjdNvWaFp0QKbMOuGdhRrDC3CisTnJxDUg==
X-Google-Smtp-Source: ABdhPJzWJdQLvjDmu5urGGDC1MFaGcobhH6CtAmhh4/Bb/7Jrqxf0VkYYzg4cEULFf+KILJk7P4mrJAvsy3MRnsc7fI=
X-Received: by 2002:a9d:7e8e:: with SMTP id m14mr20354615otp.302.1619547979858;
 Tue, 27 Apr 2021 11:26:19 -0700 (PDT)
MIME-Version: 1.0
References: <cc4faee36fb84e0d83669253db7e636f@boeing.com> <276627C4-F722-4F13-9DB2-AAA4059421BE@gmail.com>
 <c3e16fa1723f4e418e0e9560c0af90b4@boeing.com>
In-Reply-To: <c3e16fa1723f4e418e0e9560c0af90b4@boeing.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 27 Apr 2021 14:26:09 -0400
Message-ID: <CAB__hTS8WLm_8+=8rfkON8Hb3rOR=OEp6VETnAUN043gOzhRMg@mail.gmail.com>
To: "Hirst (US), Stephen" <stephen.hirst@boeing.com>
Message-ID-Hash: 5EYJAZERGM2XJUFXWDCJQKET7M42VQPW
X-Message-ID-Hash: 5EYJAZERGM2XJUFXWDCJQKET7M42VQPW
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: Underflows/Overflows, Filesize and a Complete N00B
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5EYJAZERGM2XJUFXWDCJQKET7M42VQPW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5721427329695082229=="

--===============5721427329695082229==
Content-Type: multipart/alternative; boundary="000000000000099d7e05c0f866da"

--000000000000099d7e05c0f866da
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I would recommend removing (at least initially) gnuradio from the equation
and using benchmark_rate to optimize/evaluate the B210 link to your laptop.

On Tue, Apr 27, 2021 at 2:08 PM Hirst (US), Stephen <
stephen.hirst@boeing.com> wrote:

> Thanks Marcus for the quick reply!
>
>
>
> I have a B210 with a GPSDO (the TCXO one).
>
>
>
> And the system is =E2=80=9Coffline only=E2=80=9D now but I can manually t=
ype a response
> with something specific if you like.
>
>
>
> So I have a little checkbox that I click on my GRC GUI that starts the
> recording to a File Sink from a =E2=80=9CUHD: USRP Source=E2=80=9D. Here=
=E2=80=99s some details of
> what I have specified in the UHD: USRP Source - File Sink Box Pair.
>
>
>
> UHD: USRP Source
>
> GENERAL
>
> Output Type: Complex float32
>
> Wire Format: Complex int8
>
> Stream args: peak=3D0.003906
>
> Stream Channels: []
>
> Device Address:
>
> Device Arguments: =E2=80=9Csend_frame_size=3D8192=E2=80=9D
>
> Sync: Unknown PPS
>
> Clock Rate (Hz): Default
>
> Num Mboards: 1
>
> Mb0 Clock Source: Default
>
> Mb0 Time Source: Default
>
> Mb0 Subdev Spec: A:A
>
> Num Channels: 1
>
> Samp rate (Sps): 2000000
>
> ADVANCED
>
> Alias:
>
> Affinity:
>
> Minoutbuf: 8192
>
> Maxoutbuf: 8192
>
> Show LO Controls: OFF
>
> Comment:
>
> RF OPTIONS
>
> Ch0 Center Freq: 2000000000
>
> Ch0 AGC: Default
>
> Ch0: Gain Value: 30
>
> Ch0 Antenna: RX2
>
> Ch0 Bandwidth: 0.2MHz
>
> FE CORRECTIONS
>
> Ch0 Enable DC Offset Correction: true
>
> Ch0 Enable IQ Imbalance Correction: true
>
>
>
>
>
>
>
> [FILE SINK]
>
> GENERAL
>
> File: [Your favorite file name here]
>
> Input Type: complex
>
> Vec length: 1
>
> Unbuffered: OFF
>
> Append file: OFF
>
>
>
> Does this help at all?
>
>
>
> I tried the ./rx_samples_to_file from within =E2=80=9C/usr/lib/uhd/exampl=
es=E2=80=9D with
> similar options but I don=E2=80=99t see an O/U with the selected options.=
 Is this a
> GRC thing? I have no idea=E2=80=A6
>
>
>
> *From:* Marcus D Leech [mailto:patchvonbraun@gmail.com]
> *Sent:* Tuesday, April 27, 2021 1:37 PM
> *To:* Hirst (US), Stephen <stephen.hirst@boeing.com>
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* [EXTERNAL] Re: [USRP-users] Underflows/Overflows, Filesize and
> a Complete N00B
>
>
>
> EXT email: be mindful of links/attachments.
>
>
>
>
> If you just use the rx_samples_to_file utility that comes with UHD what
> are your results
>
>
>
> Can you share your GNuRadio flow graph with us? What type of USRP do you
> have? There are about a dozen different models of USRP out there.
>
>
>
>
>
> Sent from my iPhone
>
>
>
> On Apr 27, 2021, at 1:24 PM, Hirst (US), Stephen <stephen.hirst@boeing.co=
m>
> wrote:
>
> =EF=BB=BF
>
> Hi Guys,
>
>
>
> I appreciate you all and thank you for the great community that is this
> mailing list! Continue on!
>
>
>
> I, however, am a complete N00B and require assistance on some seemingly
> minor tasks that I believe you could help me out on. :)
>
>
>
> With that being said, I find myself with the Ubuntu 20.04LTS install on a
> rather =E2=80=9Cfast=E2=80=9D Dell laptop (specs down below.)
>
> -          8th Gen Intel Core i7-8650U Processor (Quad Core, 8M Cache,
> 1.9GHz,15W, vPro)
>
> -          16GB, 2x8GB, 2666MHz DDR4 Non-ECC
>
> -          M.2 1TB PCIe NVMe Class 40 Opal 2.0 Self Encrypting Solid
> State Drive
>
>
>
> I have fiddled around with an online install on the laptop but I haven=E2=
=80=99t
> gotten the overflows and underflows to cooperate. And to be more specific=
,
> I can record a sample rate of 2Mhz and 0.2Mhz bandwidth without issue, bu=
t
> I can=E2=80=99t get a SR or BW greater than those to work without Under/O=
verflows
> developing. (I have been using UHD 3.15.0.02build5 with GNURadio 3.8.1.0
> (Python 3.8.2) (grc and grc-uhd) and installed everything with =E2=80=9Ca=
pt=E2=80=9D. The
> first line in my grc python output labels =E2=80=9CLinux GNU C++ version =
9.2.1
> 20200304; Boost_107100; UHD_3.15.0.0-2build5=E2=80=9D, USB3.0). Any ideas=
? I tried
> both the num_recv_frame size stuff and setting high priority with no joy,
> but then again, I am a N00b, so I may not have done that correctly as wel=
l=E2=80=A6
>
>
>
> Also if anyone has experience with GRC specifically, I have had success
> recording what I wanted to with a file with the 2MHz Sample Rate with a 0=
.2
> MHz BW, but the files are pretty huge. We=E2=80=99re talking 1GB/min=E2=
=80=A6 Any idea how
> to make the GRC record to a less-fine resolution so I can free up some HD=
D
> space?
>
>
>
> Thanks guys!
>
> Ya Boi Steve
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000099d7e05c0f866da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I would recommend removing (at least initially) gnuradio f=
rom the equation and using benchmark_rate to optimize/evaluate the B210 lin=
k to your laptop.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Tue, Apr 27, 2021 at 2:08 PM Hirst (US), Stephen &lt;<a=
 href=3D"mailto:stephen.hirst@boeing.com">stephen.hirst@boeing.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_722497353193855031WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Thanks Marcus f=
or the quick reply!<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">I have a B210 w=
ith a GPSDO (the TCXO one).
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">And the system =
is =E2=80=9Coffline only=E2=80=9D now but I can manually type a response wi=
th something specific if you like.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">So I have a lit=
tle checkbox that I click on my GRC GUI that starts the recording to a File=
 Sink from a =E2=80=9CUHD: USRP Source=E2=80=9D. Here=E2=80=99s some detail=
s of what I have specified in the UHD: USRP Source - File Sink Box
 Pair.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">UHD: USRP Sourc=
e<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">GENERAL<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Output Type: Co=
mplex float32<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Wire Format: Co=
mplex int8<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Stream args: pe=
ak=3D0.003906<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Stream Channels=
: []<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Device Address:=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Device Argument=
s: =E2=80=9Csend_frame_size=3D8192=E2=80=9D<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Sync: Unknown P=
PS<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Clock Rate (Hz)=
: Default<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Num Mboards: 1<=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Mb0 Clock Sourc=
e: Default<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Mb0 Time Source=
: Default<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Mb0 Subdev Spec=
: A:A<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Num Channels: 1=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Samp rate (Sps)=
: 2000000<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">ADVANCED<u></u>=
<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Alias:<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Affinity:<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Minoutbuf: 8192=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Maxoutbuf: 8192=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Show LO Control=
s: OFF<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Comment:<u></u>=
<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">RF OPTIONS<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Ch0 Center Freq=
: 2000000000<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Ch0 AGC: Defaul=
t<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Ch0: Gain Value=
: 30<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Ch0 Antenna: RX=
2<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Ch0 Bandwidth: =
0.2MHz<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">FE CORRECTIONS<=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Ch0 Enable DC O=
ffset Correction: true<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Ch0 Enable IQ I=
mbalance Correction: true<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">[FILE SINK]<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">GENERAL<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">File: [Your fav=
orite file name here]<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Input Type: com=
plex<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Vec length: 1<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Unbuffered: OFF=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Append file: OF=
F<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Does this help =
at all?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">I tried the ./r=
x_samples_to_file from within =E2=80=9C/usr/lib/uhd/examples=E2=80=9D with =
similar options but I don=E2=80=99t see an O/U with the selected options. I=
s this a GRC thing? I have no idea=E2=80=A6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Marcus D Leech [mailto:<a href=3D"mailt=
o:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>]
<br>
<b>Sent:</b> Tuesday, April 27, 2021 1:37 PM<br>
<b>To:</b> Hirst (US), Stephen &lt;<a href=3D"mailto:stephen.hirst@boeing.c=
om" target=3D"_blank">stephen.hirst@boeing.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a><br>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] Underflows/Overflows, Filesize =
and a Complete N00B<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<table border=3D"0" cellpadding=3D"0">
<tbody>
<tr>
<td style=3D"background:white;padding:0.75pt">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"left" widt=
h=3D"100%" style=3D"width:100%;margin-left:0.75pt;margin-right:0.75pt">
<tbody>
<tr>
<td style=3D"background:rgb(145,10,25);padding:5.25pt 1.5pt"></td>
<td width=3D"100%" style=3D"width:100%;background:rgb(253,242,244);padding:=
5.25pt 3.75pt 5.25pt 11.25pt">
<div>
<p class=3D"MsoNormal">
<span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:rgb(33,3=
3,33)">EXT email: be mindful of links/attachments.</span><span style=3D"fon=
t-size:12pt;font-family:&quot;Times New Roman&quot;,serif"><u></u><u></u></=
span></p>
</div>
</td>
</tr>
</tbody>
</table>
<pre><span style=3D"color:black"><br>=C2=A0<u></u><u></u></span></pre>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt">If you just use the r=
x_samples_to_file utility that comes with UHD what are your results</span><=
span style=3D"font-size:10pt;font-family:&quot;Times New Roman&quot;,serif"=
><u></u><u></u></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt"><u></u>=C2=A0<u></u><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt">Can you share your GN=
uRadio flow graph with us? What type of USRP do you have? There are about a=
 dozen different models of USRP out there.=C2=A0<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt"><u></u>=C2=A0<u></u><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt"><u></u>=C2=A0<u></u><=
/span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt">Sent from my iPhone<u=
></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt"><br>
<br>
<u></u><u></u></span></p>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:10pt">On Apr 27, 2021, at 1:24 PM, Hirst (US), Stephen &lt;<a href=3D"mai=
lto:stephen.hirst@boeing.com" target=3D"_blank">stephen.hirst@boeing.com</a=
>&gt; wrote:<u></u><u></u></span></p>
</blockquote>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt">=EF=BB=BF </span><spa=
n style=3D"font-size:10pt;font-family:&quot;Times New Roman&quot;,serif"><u=
></u><u></u></span></p>
<p class=3D"MsoNormal">Hi Guys,<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I appreciate you all and thank you for the great com=
munity that is this mailing list! Continue on!<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I, however, am a complete N00B and require assistanc=
e on some seemingly minor tasks that I believe you could help me out on. :)=
<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">With that being said, I find myself with the Ubuntu =
20.04LTS install on a rather =E2=80=9Cfast=E2=80=9D Dell laptop (specs down=
 below.)<u></u><u></u></p>
<p class=3D"gmail-m_722497353193855031MsoListParagraph"><u></u><span style=
=3D"font-family:Roboto-Regular"><span>-<span style=3D"font:7pt &quot;Times =
New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span style=3D"font-family:Roboto-Regular;color=
:rgb(68,68,68)">8th Gen Intel Core i7-8650U Processor (Quad Core, 8M Cache,=
 1.9GHz,15W, vPro)</span><u></u><u></u></p>
<p class=3D"gmail-m_722497353193855031MsoListParagraph"><u></u><span style=
=3D"font-family:Roboto-Regular"><span>-<span style=3D"font:7pt &quot;Times =
New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span style=3D"color:rgb(68,68,68)">16GB, 2x8GB=
, 2666MHz DDR4 Non-ECC</span><u></u><u></u></p>
<p class=3D"gmail-m_722497353193855031MsoListParagraph"><u></u><span style=
=3D"font-family:Roboto-Regular"><span>-<span style=3D"font:7pt &quot;Times =
New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span style=3D"font-family:Roboto-Regular;color=
:rgb(68,68,68)">M.2 1TB PCIe NVMe Class 40 Opal 2.0 Self Encrypting Solid S=
tate Drive</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Roboto-Regular;color:rgb(=
68,68,68)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal">I have fiddled around with an online install on the =
laptop but I haven=E2=80=99t gotten the overflows and underflows to coopera=
te. And to be more specific, I can record a sample rate of 2Mhz and 0.2Mhz =
bandwidth without issue, but I can=E2=80=99t get a
 SR or BW greater than those to work without Under/Overflows developing. (I=
 have been using UHD 3.15.0.02build5 with GNURadio 3.8.1.0 (Python 3.8.2) (=
grc and grc-uhd) and installed everything with =E2=80=9Capt=E2=80=9D. The f=
irst line in my grc python output labels =E2=80=9CLinux
 GNU C++ version 9.2.1 20200304; Boost_107100; UHD_3.15.0.0-2build5=E2=80=
=9D, USB3.0). Any ideas? I tried both the num_recv_frame size stuff and set=
ting high priority with no joy, but then again, I am a N00b, so I may not h=
ave done that correctly as well=E2=80=A6<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Also if anyone has experience with GRC specifically,=
 I have had success recording what I wanted to with a file with the 2MHz Sa=
mple Rate with a 0.2 MHz BW, but the files are pretty huge. We=E2=80=99re t=
alking 1GB/min=E2=80=A6 Any idea how to make the GRC
 record to a less-fine resolution so I can free up some HDD space?<u></u><u=
></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Thanks guys!<u></u><u></u></p>
<p class=3D"MsoNormal">Ya Boi Steve<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Time=
s New Roman&quot;,serif">_______________________________________________<br=
>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></span></p>
</div>
</blockquote>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000099d7e05c0f866da--

--===============5721427329695082229==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5721427329695082229==--
