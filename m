Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B888AB4BF
	for <lists+usrp-users@lfdr.de>; Fri, 19 Apr 2024 20:07:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C11FC38613D
	for <lists+usrp-users@lfdr.de>; Fri, 19 Apr 2024 14:07:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1713550023; bh=6QtkyuwIYoQFWZJ8BaSFkxkBBmL8Y0kR4wRbC8zo7DM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=djusSeFqJlhMotmdUVX9WgPqIsgflFgCBng1uKkeLNAzjSg4rL87Kb4WEFu9ydt/P
	 +bBzyxoDPKxKU+uGEeE77RjZ9p9Kzl3gxGssFMGnLAR7q6oRTVIDKvz0OGTNKVlju5
	 QCB143OC8g4iK63CqRBSoAVLTchPm8BVmDJrlVriMshA7ENAP2IU+bWP0LAiGR/Zjy
	 BJIQ2PoJpVxU5gusKFNJeuCbyM2AqBsMYQxbunxduIW0o/D3ZssoYt5jl8jnvHwrxc
	 GycJcF3uRokY5FwTcGD8d6SjMjpY2AbyF2OCZc+nmwSJtIBhDTvrISWaVyOH0ui6ju
	 O1Huc4SrzjeUg==
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 0AC113860A9
	for <usrp-users@lists.ettus.com>; Fri, 19 Apr 2024 14:05:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SjF6N/2d";
	dkim-atps=neutral
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-78f103d9f64so122879185a.0
        for <usrp-users@lists.ettus.com>; Fri, 19 Apr 2024 11:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713549951; x=1714154751; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kZ++j6BWHhS0Xdp/wn2mk58YwByUso2CHKKOclteefc=;
        b=SjF6N/2dHKUjHZ1QVZCVpcZLe+VTXYCpHIXQKOU5KngsQJerKUoXqzwlCHrHO3nicv
         GEIw6XnCMxLTuGqJhpeLx7NiE9ALYcc7lmOLh/g713MF1KuEIEmrBDW5MkWzbjZJYNDp
         deOQCFXFeDtebpLPKNdioeVatFYZiMcY9/Z6SaEomxS/kKuf1x2hKuhRwC4vde+a7rfk
         d5qVHJ/1IhEm/FhSfNHSI2pu1138a32rGysDRnAMbAKPUsCbAXdOfXy/bFzz37SOYrVC
         5bh2ephhVrDgpRD6V7HdO+KKQZ3/THPicQBj9C9qDiyyysYBhujVQ4vX2VSxntM0G4Vk
         qfEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713549951; x=1714154751;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kZ++j6BWHhS0Xdp/wn2mk58YwByUso2CHKKOclteefc=;
        b=pC5jNa2XaoJ0ExHuGiWd/JLZQZTGir8vV9xpShiyDUfO+nFk+OBYHnLyRYQ5sKyz5T
         lEGbsOYL7L9/Ydl8Fh/FPqVLgn2d36QSVyVwmM/eu4/1FDq2IU54qU4uarZnsJwznJ64
         F+dCc/SLBf309BbrpBAHE8ZS+GoSmwyG/zLGn3FG1yDs7xor6rWxGvvGLEz9T/i/voDx
         i/YQEfdg0KxWVF0PDFdl1YA/DE0zBbYeT5p2JwrVRtvCMYgbvSX4xp1lCwhPNr3OqVs3
         iwkLZS09eTGQ3S5iJDPwKZdTwr0295N8ZPalY2hRTCpU/+GvcJxr5cDhvSMj+N5GAFjy
         anbA==
X-Gm-Message-State: AOJu0YzRAmFTv3tMz2TBHaxnA3yv+BdAHmuVRRFQE4XxfNLwsKqtzzWS
	J3z8mUhYa5qT5YznsN2uLdzBRbepplXWLAoVSZfrhNPLjDsBSrqSwsE3Ig==
X-Google-Smtp-Source: AGHT+IG/RWOeCgawbLmdjsFYdY9jP87iy8N527R+31qmQ4q+TQ1ns7aT2tHSJuGQXM9o5Qg0ptkpfg==
X-Received: by 2002:ad4:5c4a:0:b0:69b:287a:d2bd with SMTP id a10-20020ad45c4a000000b0069b287ad2bdmr10294659qva.32.1713549950444;
        Fri, 19 Apr 2024 11:05:50 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-192.dsl.bell.ca. [174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id m14-20020a0c9d0e000000b0069b748abd98sm1772473qvf.89.2024.04.19.11.05.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Apr 2024 11:05:50 -0700 (PDT)
Message-ID: <8d6f3ec1-1d7d-42ac-8dd7-213bc9670616@gmail.com>
Date: Fri, 19 Apr 2024 14:05:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <94eb78b8-6ea4-4e04-86d1-918b3b5c1d65@gmail.com>
 <39cd3dd5-d55f-4fe8-88a1-0e5de4a7c082@localhost>
 <1697372280.342024.1713419690912@mail.yahoo.com>
 <PH0PR04MB83115908F44B4BB9C7FB8713F30E2@PH0PR04MB8311.namprd04.prod.outlook.com>
 <957328707.611895.1713507097044@mail.yahoo.com>
 <027501da9282$97676370$c6362a50$@com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <027501da9282$97676370$c6362a50$@com>
Message-ID-Hash: HLNUT7LTS3PJ5XZLBAT76HDX3J62UHKH
X-Message-ID-Hash: HLNUT7LTS3PJ5XZLBAT76HDX3J62UHKH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Unbalanced power among antennas in X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HLNUT7LTS3PJ5XZLBAT76HDX3J62UHKH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8428185534139842526=="

This is a multi-part message in MIME format.
--===============8428185534139842526==
Content-Type: multipart/alternative;
 boundary="------------fj502PTc8ZjlLCjlO25k1bcF"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------fj502PTc8ZjlLCjlO25k1bcF
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 19/04/2024 13:54, Stuart Austin wrote:
>
> I=E2=80=99m curious as to whether the oscillators on each of the four c=
hannels=20
> are not sync=E2=80=99d to a common reference =E2=80=93 either an intern=
al or external=20
> source?
>
> Thanks
>
> Stuart Austin
>
For the most part (with some historical exceptions) the RF Synthesizers=20
on USRP devices use the motherboard clock
 =C2=A0 as their reference--they don't have independent clocks.=C2=A0 In =
turn, the=20
motherboard clock can be externally referenced--either
 =C2=A0 through the front-panel, or an on-board GPSDO if so equipped.

Now, having said *THAT*, getting ZERO PHASE OFFSET requires some thought=20
and depending on which devices we're
 =C2=A0 talking about, the application has to set some configuration to m=
ake=20
sure the oscillator phase *offset* is zero.
 =C2=A0 That might involved timed commands during tuning (to force a=20
phase-reset feature if the synthesizer has such a feature), or
 =C2=A0 configuring actual LO-sharing, if the radio in question supports =
that.

Even *THEN* at higher frequencies, small differences in the phase-length=20
of things like the RF input lines, and the
 =C2=A0 LO-to-mixer lines can cause a not-precisely-zero phase offset, bu=
t at=20
a given temperature of the device, should be
 =C2=A0 simple to characterize by the end application.=C2=A0 The USRPs ar=
e=20
generally designed to have phase-length matching
 =C2=A0 wherever possible, but even that isn't perfect.=C2=A0 The worst c=
ase is=20
*differential* temperature effects across two or
 =C2=A0 more transmission lines carrying RF.=C2=A0 The phase length of th=
e lines=20
won't be exactly matched.=C2=A0 This is well-known, and
 =C2=A0 it gets worse at higher frequencies (because it's the physical li=
ne=20
lengths changing, and that's a larger fraction of a wavelength
 =C2=A0 at higher frequencies).


> *From:*zhou via USRP-users [mailto:usrp-users@lists.ettus.com]
> *Sent:* Friday, April 19, 2024 2:12 AM
> *To:* usrp-users@lists.ettus.com; Martin Anderseck
> *Subject:* [USRP-users] Re: Unbalanced power among antennas in X410
>
> Hi Martin,
>
> Thanks for mentioning the ADC self-cal. It seems that I misunderstood=20
> it. I will do a proper calibration.
>
> Yes, the loopback connection is on the front panel.
>
> The same cos(t)+i*sin(t) is transmitted on all four antennas=20
> simultaneously with timed command. The receive command is also timed.=20
> I can accept that there is phase offset between antennas because paths=20
> can be different slightly, for example, the RF cable length can be=20
> slightly different. As long as the offset is constant over the time,=20
> it is not a worry. I measured phase vs time. It is stable. Now, I want=20
> to know how to adjust the phase on individual antennas.
>
> Kind regards,
>
> H.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> On Thursday, 18 April 2024 at 14:00:44 BST, Martin Anderseck=20
> <martin.anderseck@ni.com> wrote:
>
> You mention that self-calibration for each channel is running. Please=20
> don=E2=80=99t get wrong what this calibration is doing. This ADC self-c=
al is=20
> only responsible for reducing unwanted spurs in the ADCs as described=20
> here:=20
> https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_adc_self_cal=20
> <https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_adc_self_cal>
>
> This ADC self-cal, however, will not handle any power differences.=20
> From what you write it=E2=80=99s not possible to get absolute power val=
ues, so=20
> the relative differences are impossible to get, too. Since those=20
> devices are SDRs and not dedicated measurement equipment it is=20
> expected that there may be differences (not huge ones though, please=20
> see the specs for getting an impression in figures 2 and 4:=20
> https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x410-specs/page/specs.h=
tml).=20
> If the existing accuracy is insufficient, it is possible to use the=20
> power API: https://files.ettus.com/manual/page_zbx.html#zbx_pwr_cal
>
> You mention you used a loopback connection. Does that mean that you=20
> connected cables to the front panel connectors for this? To exclude=20
> them from the issue you might try using the internal loopback=20
> =E2=80=9Cantenna=E2=80=9D for both the RX and TX path (see get_rx_anten=
nas() for a=20
> list of antennas). This will use the internal loopback that is on the=20
> daughterboard for each channel. When using the internal loopback=20
> ensure you have compensated the lack of the 30 dB attenuator (e.g. by=20
> reducing the=C2=A0 gain on the TX side) as typically in an external=20
> loopback you would use 30 dB attenuation=20
> (https://kb.ettus.com/USRP_X410/X440_Getting_Started_Guide#Proper_Care_=
and_Handling).=20
>
>
> For the phase difference: You don=E2=80=99t mention how you start the s=
ignal=20
> generation. I guess timed commands are what you=E2=80=99re missing:=20
> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_=
UHD
>
> I hope that gets you a bit further.
>
> Best regards,
>
> Martin
>
> *From:*zhou via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Thursday, April 18, 2024 7:55 AM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Unbalanced power among antennas in X410
>
> Hi All,
>
> I am using X410 with UHD 4.5. There are 4 Tx and 4 Rx in this unit. I=20
> am checking the RF signal by using loopback connection, that is, Tx is=20
> connected to Rx in the same USRP. .
>
> The same single tone signal is transmitted on all 4 Tx antennas, but I=20
> find that the received power levels are significantly different among=20
> antennas as shown in plot below. There are two ZBX daughterboards in=20
> X410; ant0 and ant1 in the 1st board and ant2 and ant3 in the 2nd. It=20
> seems that in the same daughterboard, power in the 1st antenna is=20
> higher than the 2nd antenna.
>
> The carrier frequency is 7GHz. Sampling rate 491.52MHz. In every test,=20
> UHD does self calibration for each channel.
>
> Apart from power difference, there is also phase difference between=20
> antennas.
>
> How to make tx power closer between antennas?
>
> And, is there a way to adjust the carrier phase for individual antenna?
>
> Inline image
>
> Thanks for any suggestion.
>
> Kind regards,
>
> Hongwei
>
> National Instruments Dresden GmbH; Gesch=C3=A4ftsf=C3=BChrer (Managing=20
> Directors): John Stanton McElroy, Albert Edward Percival III, Kathleen=20
> Spurck; Sitz (Registered Office): Dresden; HRB (Commercial Register=20
> No.): 22081; Registergericht (Registration Court): Dresden
>
> This email and any attachments are intended only for the person to=20
> whom this email is addressed and may contain confidential and/or=20
> privileged information. If you received this email in error, please do=20
> not disclose the contents to anyone, but notify the sender by return=20
> email and delete this email (and any attachments) from your system.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------fj502PTc8ZjlLCjlO25k1bcF
Content-Type: multipart/related;
 boundary="------------XHDU060w1r3he2Jea0JavSUr"

--------------XHDU060w1r3he2Jea0JavSUr
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 19/04/2024 13:54, Stuart Austin
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:027501da9282$97676370$c6362a50$@com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 12 (filtered medium)">
      <!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]-->
      <style>@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}p.ydp6f413f0cyiv8952928816ydp6c886d43yiv95263=
75760msonormal, li.ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonor=
mal, div.ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal
	{mso-style-name:ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonorma=
l;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.Section1
	{page:Section1;}</style>
      <!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
      <div class=3D"Section1">
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;
color:#1F497D">I=E2=80=99m curious as to whether the oscillators on each =
of the
            four
            channels are not sync=E2=80=99d to a common reference =E2=80=93=
 either an
            internal or external
            source?<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;
color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;
color:#1F497D">Thanks<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;
color:#1F497D">Stuart Austin</span></p>
      </div>
    </blockquote>
    For the most part (with some historical exceptions) the RF
    Synthesizers on USRP devices use the motherboard clock<br>
    =C2=A0 as their reference--they don't have independent clocks.=C2=A0 =
In turn,
    the motherboard clock can be externally referenced--either<br>
    =C2=A0 through the front-panel, or an on-board GPSDO if so equipped.<=
br>
    <br>
    Now, having said *THAT*, getting ZERO PHASE OFFSET requires some
    thought and depending on which devices we're<br>
    =C2=A0 talking about, the application has to set some configuration t=
o
    make sure the oscillator phase *offset* is zero.<br>
    =C2=A0 That might involved timed commands during tuning (to force a
    phase-reset feature if the synthesizer has such a feature), or<br>
    =C2=A0 configuring actual LO-sharing, if the radio in question suppor=
ts
    that.<br>
    <br>
    Even *THEN* at higher frequencies, small differences in the
    phase-length of things like the RF input lines, and the<br>
    =C2=A0 LO-to-mixer lines can cause a not-precisely-zero phase offset,=
 but
    at a given temperature of the device, should be<br>
    =C2=A0 simple to characterize by the end application.=C2=A0 The USRPs=
 are
    generally designed to have phase-length matching<br>
    =C2=A0 wherever possible, but even that isn't perfect.=C2=A0 The wors=
t case is
    *differential* temperature effects across two or<br>
    =C2=A0 more transmission lines carrying RF.=C2=A0 The phase length of=
 the
    lines won't be exactly matched.=C2=A0 This is well-known, and<br>
    =C2=A0 it gets worse at higher frequencies (because it's the physical
    line lengths changing, and that's a larger fraction of a wavelength<b=
r>
    =C2=A0 at higher frequencies).<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:027501da9282$97676370$c6362a50$@com">
      <div class=3D"Section1">
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;
color:#1F497D"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;
color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <div>
          <div
style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in=
 0in">
            <p class=3D"MsoNormal"><b><span
style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;">From:</span></b><span
style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;">
                zhou via USRP-users
                [<a class=3D"moz-txt-link-freetext" href=3D"mailto:usrp-u=
sers@lists.ettus.com">mailto:usrp-users@lists.ettus.com</a>] <br>
                <b>Sent:</b> Friday, April 19, 2024 2:12 AM<br>
                <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>; Martin=
 Anderseck<br>
                <b>Subject:</b> [USRP-users] Re: Unbalanced power among
                antennas in X410<o:p></o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div id=3D"ydpbd3ee571yiv8952928816">
            <div>
              <div>
                <div>
                  <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-se=
rif&quot;">Hi
                      Martin,<o:p></o:p></span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-se=
rif&quot;"><o:p>=C2=A0</o:p></span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-se=
rif&quot;">Thanks
                      for mentioning the ADC self-cal. It seems that I
                      misunderstood it. I will do a
                      proper calibration.<o:p></o:p></span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-se=
rif&quot;"><o:p>=C2=A0</o:p></span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-se=
rif&quot;">Yes,
                      the loopback connection is on the front panel.<o:p>=
</o:p></span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-se=
rif&quot;"><o:p>=C2=A0</o:p></span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-se=
rif&quot;">The
                      same cos(t)+i*sin(t) is <span style=3D"color:black"=
>transmitted=C2=A0</span>on
                      all four antennas simultaneously with timed
                      command. The receive command is
                      also timed. I can accept that there is phase
                      offset between antennas because
                      paths can be different slightly, for example, the
                      RF cable length can be
                      slightly different. As long as the offset is
                      constant over the time, it is not
                      a worry. I measured phase vs time. It is stable.
                      Now, I want to know how to
                      adjust the phase on individual antennas.=C2=A0<o:p>=
</o:p></span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-se=
rif&quot;"><o:p>=C2=A0</o:p></span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-se=
rif&quot;">Kind
                      regards,<o:p></o:p></span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-se=
rif&quot;">H.<o:p></o:p></span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-se=
rif&quot;"><o:p>=C2=A0</o:p></span></p>
                </div>
              </div>
              <div
id=3D"ydpbd3ee571yiv8952928816ydp6c886d43yahoo_quoted_3468651997">
                <div>
                  <div>
                    <div
                      id=3D"ydpbd3ee571yiv8952928816ydp6c886d43yqt90210">
                      <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Helvetica&quot;,&quot;sans-se=
rif&quot;;
color:#26282A">_______________________________________________<br>
                          USRP-users mailing list -- <a
                            href=3D"mailto:usrp-users@lists.ettus.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">usrp-users@li=
sts.ettus.com</a><br>
                          To unsubscribe send an email to <a
href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank"
                            moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">usrp-users-le=
ave@lists.ettus.com</a><o:p></o:p></span></p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div id=3D"ydp6f413f0cyiv8952928816yqt41707">
          <div>
            <p class=3D"MsoNormal">On Thursday, 18 April 2024 at 14:00:44
              BST, Martin Anderseck
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:martin.an=
derseck@ni.com">&lt;martin.anderseck@ni.com&gt;</a> wrote: <o:p></o:p></p=
>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">You
                mention that
                self-calibration for each channel is running. Please
                don=E2=80=99t get wrong what this
                calibration is doing. This ADC self-cal is only
                responsible for reducing
                unwanted spurs in the ADCs as described here: </span><a
href=3D"https://files.ettus.com/manual/page_usrp_x4xx.html#x4xx_adc_self_=
cal"
                target=3D"_blank" moz-do-not-send=3D"true"><span
                  style=3D"font-size:11.0pt">https://files.ettus.com/manu=
al/page_usrp_x4xx.html#x4xx_adc_self_cal</span></a><o:p></o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          </div>
        </div>
        <div id=3D"ydp6f413f0cyiv8952928816yqt15681">
          <div id=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760">
            <div>
              <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
                  style=3D"font-size:11.0pt">This ADC self-cal, however,
                  will not handle any power
                  differences. From what you write it=E2=80=99s not possi=
ble to
                  get absolute power
                  values, so the relative differences are impossible to
                  get, too. Since those
                  devices are SDRs and not dedicated measurement
                  equipment it is expected that
                  there may be differences (not huge ones though, please
                  see the specs for
                  getting an impression in figures 2 and 4: <a
href=3D"https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x410-specs/page/s=
pecs.html"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">https://www.ni.com/do=
cs/de-DE/bundle/ettus-usrp-x410-specs/page/specs.html</a>).
                  If the existing accuracy is insufficient, it is
                  possible to use the power API: <a
href=3D"https://files.ettus.com/manual/page_zbx.html#zbx_pwr_cal"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">https://files.ettus.c=
om/manual/page_zbx.html#zbx_pwr_cal</a></span><o:p></o:p></p>
              <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
                  style=3D"font-size:11.0pt">=C2=A0</span><o:p></o:p></p>
              <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
                  style=3D"font-size:11.0pt">You mention you used a
                  loopback connection. Does that
                  mean that you connected cables to the front panel
                  connectors for this? To
                  exclude them from the issue you might try using the
                  internal loopback =E2=80=9Cantenna=E2=80=9D
                  for both the RX and TX path (see get_rx_antennas() for
                  a list of antennas).
                  This will use the internal loopback that is on the
                  daughterboard for each channel.
                  When using the internal loopback ensure you have
                  compensated the lack of the 30
                  dB attenuator (e.g. by reducing the=C2=A0 gain on the T=
X
                  side) as typically in
                  an external loopback you would use 30 dB attenuation (<=
a
href=3D"https://kb.ettus.com/USRP_X410/X440_Getting_Started_Guide#Proper_=
Care_and_Handling"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">https://kb.ettus.com/=
USRP_X410/X440_Getting_Started_Guide#Proper_Care_and_Handling</a>).
                </span><o:p></o:p></p>
              <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
                  style=3D"font-size:11.0pt">=C2=A0</span><o:p></o:p></p>
              <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
                  style=3D"font-size:11.0pt">For the phase difference: Yo=
u
                  don=E2=80=99t mention how you
                  start the signal generation. I guess timed commands
                  are what you=E2=80=99re missing: <a
href=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Comman=
ds_in_UHD"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">https://kb.ettus.com/=
Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD</a></span><o:p></o:=
p></p>
              <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
                  style=3D"font-size:11.0pt">=C2=A0</span><o:p></o:p></p>
              <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
                  style=3D"font-size:11.0pt">I hope that gets you a bit
                  further.</span><o:p></o:p></p>
              <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
                  style=3D"font-size:11.0pt">=C2=A0</span><o:p></o:p></p>
              <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
                  style=3D"font-size:11.0pt">Best regards,</span><o:p></o=
:p></p>
              <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
                  style=3D"font-size:11.0pt">Martin</span><o:p></o:p></p>
              <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
                  style=3D"font-size:11.0pt">=C2=A0</span><o:p></o:p></p>
              <div
id=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760yqt35043">
                <div>
                  <div
style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0in=
 0in">
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><b><s=
pan
style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">From:</span></b><span
style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">
                        zhou via USRP-users
                        <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto=
:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a> <br>
                        <b>Sent:</b> Thursday, April 18, 2024 7:55 AM<br>
                        <b>To:</b> <a class=3D"moz-txt-link-abbreviated" =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
<br>
                        <b>Subject:</b> [USRP-users] Unbalanced power
                        among antennas in X410</span><o:p></o:p></p>
                  </div>
                </div>
                <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal">=C2=A0=
<o:p></o:p></p>
                <div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Hi
                        All,</span><o:p></o:p></p>
                  </div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">=C2=A0</span><o:p></o:p></p>
                  </div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">I
                        am using X410 with
                        UHD 4.5. There are 4 Tx and 4 Rx in this unit. I
                        am checking the RF signal by
                        using loopback connection, that is, Tx is
                        connected to Rx in the same USRP. .</span><o:p></=
o:p></p>
                  </div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">=C2=A0</span><o:p></o:p></p>
                  </div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">The
                        same single tone
                        signal is transmitted on all 4 Tx antennas, but
                        I find that the received power
                        levels are significantly different among
                        antennas as shown in plot below. There
                        are two ZBX daughterboards in X410; ant0 and
                        ant1 in the 1st board and ant2 and
                        ant3 in the 2nd. It seems that in the same
                        daughterboard, power in the 1st
                        antenna is higher than the 2nd antenna.</span><o:=
p></o:p></p>
                  </div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">=C2=A0</span><o:p></o:p></p>
                  </div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">The
                        carrier frequency is 7GHz. Sampling rate
                        491.52MHz. In every test, UHD does
                        self calibration for each channel.</span><o:p></o=
:p></p>
                  </div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">Apart
                        from power difference, there is also phase
                        difference between antennas.</span><o:p></o:p></p=
>
                  </div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">=C2=A0</span><o:p></o:p></p>
                  </div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">How
                        to
                        make tx power closer between antennas?</span><o:p=
></o:p></p>
                  </div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;;color:black">And,
                        is
                        there a way to adjust the carrier phase for
                        individual antenna?</span><o:p></o:p></p>
                  </div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">=C2=A0</span><o:p></o:p></p>
                  </div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">=C2=A0</span><o:p></o:p></p>
                  </div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;"><img
id=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760Picture_x0020_1"
                          src=3D"cid:part1.lSEB8kJ8.Bu30u44P@gmail.com"
                          alt=3D"Inline image" class=3D"" width=3D"701"
                          height=3D"513" border=3D"0"></span><o:p></o:p><=
/p>
                  </div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">=C2=A0</span><o:p></o:p></p>
                  </div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Thanks
                        for any
                        suggestion.</span><o:p></o:p></p>
                  </div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">=C2=A0</span><o:p></o:p></p>
                  </div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Kind
                        regards,</span><o:p></o:p></p>
                  </div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">Hongwei</span><o:p></o:p></p>
                  </div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"
                      style=3D"margin-bottom:12.0pt"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">=C2=A0</span><o:p></o:p></p>
                  </div>
                  <div>
                    <p
class=3D"ydp6f413f0cyiv8952928816ydp6c886d43yiv9526375760msonormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;">=C2=A0</span><o:p></o:p></p>
                  </div>
                </div>
              </div>
            </div>
            <p class=3D"MsoNormal">National Instruments Dresden GmbH;
              Gesch=C3=A4ftsf=C3=BChrer (Managing
              Directors): John Stanton McElroy, Albert Edward Percival
              III, Kathleen Spurck;
              Sitz (Registered Office): Dresden; HRB (Commercial
              Register No.): 22081;
              Registergericht (Registration Court): Dresden<br>
              <br>
              This email and any attachments are intended only for the
              person to whom this
              email is addressed and may contain confidential and/or
              privileged information.
              If you received this email in error, please do not
              disclose the contents to
              anyone, but notify the sender by return email and delete
              this email (and any
              attachments) from your system. <o:p></o:p></p>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>
--------------XHDU060w1r3he2Jea0JavSUr
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Id: <part1.lSEB8kJ8.Bu30u44P@gmail.com>
Content-Transfer-Encoding: base64

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
fIugrLoVXnomOi8aC1wXyMntFJspjXJyq0SvjlCi9+mwsYUzySkG+CHhleZVc49p4xiWjvYr
bNB1rZ00sRlzPE9DwQVxpVkwXpljhvEHPOAVk61dVzV36hzOqWdMHz1vzK51TXQ12W7uJ+Fk
qivhV2RjyyxPqxgrVD00/QQDl/AMfHrkLrqvt8eCqwFIMKJNWmPBJj+H0HR8fvQeuqyxw8pb
gUb12ciGLiaV8HbA/0CTsvLQ4nAh9AL6X+qPfhf7yTXf0PYtJXp1hBK9T4cLIo+D6HHkxXI1
4mrNPaZLRWU1rngn4K2Flui1waFmKEXTsHX8VY66xUgn/IgdrrjklSBHyMYAUxqYYdnjXA9p
+IjIjqi5x/Sp1v5jMw9Hj7c71Q5HAo7IJCdTh6OH+21yRJ+NDjjlGWe0iSMNCT8FA5JyMe2s
j/igfzx7H/klxnGN8zTn8IPDMoWQp5cOCQ5NLpfaN80Xn1p+Kv79xW6LG9zKZNSit6KiAkVF
RcjLy0Nubu6vN/5/aenjIzsrKytRXFyM/Px8uZWUlKC6+ulVFD5vYWGhPA8fy+d62mP54pWV
laGgoEAey68pL395D6ESvU+H1S4uiJ9YfILWJ1rLRJeCCuOfu/5HMHd2l32ETGhik4t7pGpi
e14YY8TXrP9mR2y1CZOYI73Dqibzalnh5YkGKyBNqQJEQrJD5CSn85nOWOqxFIFZjdPd3VCw
YrnHIQKtlltj8DZneERlautMzZ2KPyQ5t0Ryel9bYI4JBz2lmU3v8BqPzYsVodfmpGH0dmh2
aM29TQem0XANH3J5iBSyLKItau5pGIxW9FKE+vv7Y+fOnfjll18wffp0/PTTT5g2bRrmzZsH
a2trEbq1j/Xy8sK+ffswf/58uR05cgTh4eEiWh+FwtXR0RGbNm2S512yZAkuXbqExMTHuyv5
wmVkZODmzZtYsWIFZs+ejXXr1sHS0lKE8sugRO+zicmLwWyn2VIF+tnhZ/FFmerxp/Y2QGhq
PuZdeYBWywwxRv7K6/fccLrVVO0167HODnMu+RtFN3xOSQ52+OwQLy+HUgRkBjSp2C7CcP6t
3lvF68jRy7bxtibdtMqN7ZLrgTJo4SNNuMVkNL2Jky8Lm9nWWYbg9QUW0vfApt+qKn3vGMqr
y+EQ74CPLT6WDO5NXpuQWpRac2/TgZ9rHKs+0WyiVLx3+e6ShvWGwmhFb1VVFS5evIg+ffqg
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


--------------XHDU060w1r3he2Jea0JavSUr--

--------------fj502PTc8ZjlLCjlO25k1bcF--

--===============8428185534139842526==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8428185534139842526==--
