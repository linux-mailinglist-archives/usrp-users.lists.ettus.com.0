Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBC16E57B1
	for <lists+usrp-users@lfdr.de>; Tue, 18 Apr 2023 05:02:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 28396384233
	for <lists+usrp-users@lfdr.de>; Mon, 17 Apr 2023 23:02:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681786955; bh=lb4ZdjXmyFVkiut/Y7KmbvOmyk0WwrD/zG7GSHyl0uE=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=KOWVg3TgU/esbWoJ8NJMiirXYa2YO2Dqb8tpxRBQDmdqjfIRmsg2yXmCwWdMEE8HZ
	 SPgKODjhLiPmbtcWqzkLjPWYArt2mf/QSJwB2gBbqqHJwE1v5rfxZuTSATHgbCKSG5
	 2SioPQCpt/iqyC/2PBzbvbmyna1vPP2Xg1hpIopAqyrPt7ccS2J49yRxADFOHmc9xv
	 3ldnLf/jvALuckMUz1EVoPT+HTSkZhvm1aJ20PehmV0wWYsVzH7HdQTEmK2W899e4I
	 JisBwhUe2FRbIVHpaX6oP9KyGYLhu9exLm9J32UO5nVc9L+Z8ctlIsu4JWX0Z62w8l
	 rimKFqz26pD/A==
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id D7EC7384018
	for <USRP-users@lists.ettus.com>; Mon, 17 Apr 2023 23:02:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="V6dABmIX";
	dkim-atps=neutral
Received: by mail-qv1-f42.google.com with SMTP id qh25so17266511qvb.1
        for <USRP-users@lists.ettus.com>; Mon, 17 Apr 2023 20:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681786922; x=1684378922;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K0Wy+uDRGM0U6BnY3czYhAcRlozjROnZa80zDjcXt8g=;
        b=V6dABmIXCtNbhBHqoZ77TMbMjgByw6aO9oX0eYWjdYMyvQNlhscuCoJk3Dy3TZvnlW
         txRdruIn+vncxlQBUuQzjMngGriL2HTF/hyvFBfhcSCezFpKCI/lc1vmKhWjuLqhxFmr
         zbP5tLZjUm6n6BBe6g95gy+yxkquho9wb31oGYbrycVDRPztt3yhuIupJF4D+Pj9S4Tu
         tnrbP4uNA4ZDrJycLv0qUrpEVuuWjGlWCQk+QNvySph8V6t5Wle1ErNTJCMp0/WeYxe9
         2NsRG6+y3q3hOe9iW6MAHsfS2hbubR6t+F+vivb+8Mgi+7KYuzkLOqfRhcMh4JYnh7DH
         T52A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681786922; x=1684378922;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=K0Wy+uDRGM0U6BnY3czYhAcRlozjROnZa80zDjcXt8g=;
        b=V9QlYy2Fwk4mm8uQ6d1PzqxGshdYRBQ2wxxx5xCuxiq9K0LFkz2jx0/ATlli90uC3Z
         3OHoInkZEqUp37jabfn+Mz63R3KcJXPHMZyL7aFRC9VpVGzxAvJX9UZ+lmRrnkZinS6Q
         3Ed4Z6qy3Dc+3/zPtu8XGn9b7jVAHQBOJSrlYRzEJ7h9hKoa4gJYshQFoXU89CGdIO0n
         gkJX6PYkZtXiQ0GSSNXp9jDLjr3X0EQ8j+TnLoTTcaxFX3HVpCz601gCgIt/L17UkYhv
         dHI5VG/eUE7Q0cR7wGw+DY8P48li0PI8u7M0CuuNSPzJs8Cx0GrpFZBUO14ZPKWVTCB7
         NdwQ==
X-Gm-Message-State: AAQBX9cb3mE2jpFiis/RdGjcrdZ8W+g5krVzpFpQBgeUpS+atKhE1xl6
	tL8bumUlL7pT57DO/arDaoA=
X-Google-Smtp-Source: AKy350Znhx6WYIL0hz4Xn51g7VcK4hLG7Qf/CZbOdbEtCMoh6CAyw+K+gF8VqUxU4JD+97nu+ymPXg==
X-Received: by 2002:a05:6214:5184:b0:5e8:e6ac:594e with SMTP id kl4-20020a056214518400b005e8e6ac594emr22166885qvb.29.1681786922085;
        Mon, 17 Apr 2023 20:02:02 -0700 (PDT)
Received: from [192.168.2.199] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id n5-20020ad444a5000000b005dd8b934576sm3482320qvt.14.2023.04.17.20.02.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 20:02:01 -0700 (PDT)
Message-ID: <98493e72-2764-82da-8ab2-d678ba79e062@gmail.com>
Date: Mon, 17 Apr 2023 23:02:01 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: "Shenk, Trey E" <trey.shenk@pnnl.gov>
References: <CO6PR09MB811819719BDAE76900DEF93AF9959@CO6PR09MB8118.namprd09.prod.outlook.com>
 <15820636-B0CB-4B9D-98DA-76820042D215@gmail.com>
 <CO6PR09MB8118AE8209619F8C193A4AA3F9959@CO6PR09MB8118.namprd09.prod.outlook.com>
 <569d3487-6006-c2f1-96d8-bb36f2f9017d@gmail.com>
 <CO6PR09MB8118363A6FFF3D1048730E38F99B9@CO6PR09MB8118.namprd09.prod.outlook.com>
 <CO6PR09MB8118612E773BE7B93B821B7EF99D9@CO6PR09MB8118.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CO6PR09MB8118612E773BE7B93B821B7EF99D9@CO6PR09MB8118.namprd09.prod.outlook.com>
Message-ID-Hash: CIEWHDYBFOCO4TJOJWHHM6TSXGQV3MYR
X-Message-ID-Hash: CIEWHDYBFOCO4TJOJWHHM6TSXGQV3MYR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Harmonic Distortion with B205mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CIEWHDYBFOCO4TJOJWHHM6TSXGQV3MYR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2130280303025981919=="

This is a multi-part message in MIME format.
--===============2130280303025981919==
Content-Type: multipart/alternative;
 boundary="------------6n2Xv6TKJMTw9W5rNJjRT3vO"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------6n2Xv6TKJMTw9W5rNJjRT3vO
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 17/04/2023 22:49, Shenk, Trey E wrote:
>
> Hi all,
>
> Thanks for the input on this issue. I=E2=80=99m still trying to pin it =
down.=20
> I=E2=80=99m using gnuradio to drive a B205mini. I=E2=80=99m seeing harm=
onics of the=20
> carrier particularly at odd harmonics. The third harmonic, 3*carrier,=20
> is only 10dB down from the carrier itself, and I=E2=80=99m seeing signi=
ficant=20
> carrier leakage.
>
>
> I=E2=80=99ve tried changing the sampling rate, as well as modulating a =
QPSK=20
> signal (both direct conversion and using some off-tuning). I still see=20
> spectral images at the odd harmonics.
>
> Is this known behavior for the B205mini? I=E2=80=99m trying to decide i=
f I=20
> need to change how I=E2=80=99m driving it, use a RF filter at the outpu=
t, or=20
> switch to a different SDR.
>
> Thanks,
> Trey
>
Two things.

The LO leakage can be dealt with using an LO offset.

However, the AD9361 uses a square-wave LO into the mixer, which means=20
that odd harmonics will make it out of the device.
 =C2=A0 This has been discussed extensively in the ADI forums, and a coup=
le=20
of folks on this list have discussed it as well with
 =C2=A0 spectrum analyzer screen dumps showing it.=C2=A0 I confirmed it w=
ith my=20
own modest spectrum analyzer as well.=C2=A0 Because it's
 =C2=A0 an odd-harmonic problem, any application operating above 2GHz wil=
l=20
naturally not have this problem, because the 3rd
 =C2=A0 harmonic (and all other odd harmonics) will fall outside the=20
operating range of the AD9361 chip.

The only solution is filtering.

Some USRPs have a built-in switchable filter bank that can help with=20
this in some cases, but it really depends on the
 =C2=A0 frequency scheme of your application.=C2=A0=C2=A0 A discrete filt=
er bank cannot=20
possibly deal with all applications.

I personally tend to think of SDRs as *components* in an overall=20
engineered RF *system*.=C2=A0=C2=A0 It is certainly the case that
 =C2=A0 ready-for-type-acceptance radios, regardless of internal=20
architecture, will almost always have filters at the edges to
 =C2=A0 deal with architectural unpleasantness deeper in the radio=20
architecture.=C2=A0=C2=A0=C2=A0=C2=A0 The B2xx series were designed to be
 =C2=A0 relatively inexpensive, and as such, they don't have a switchable=
=20
filter-bank on them--and as previously pointed out,
 =C2=A0 even THEN, that may not necessarily make the radio "application=20
ready" in terms of formal type-acceptance, etc.


> *From:* Shenk, Trey E
> *Sent:* Wednesday, April 12, 2023 4:21 PM
> *To:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* RE: [USRP-users] Harmonic Distortion with B205mini
>
> The original signal that I showed was an unmodulated carrier.
>
> I tried a 10kHz complex exponential (plots included for several=20
> harmonics). The carrier is clearly visible at all frequencies. I can=20
> see copies of the 10kHz tone on odd multiples of the carrier, but not=20
> on the even multiples.
>
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Monday, April 10, 2023 10:22 PM
> *To:* Shenk, Trey E <trey.shenk@pnnl.gov>
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Harmonic Distortion with B205mini
>
> On 10/04/2023 14:28, Shenk, Trey E wrote:
>
>     I first tried turning the gain down. What I saw was that the even
>     harmonics (2*fundamental, =E2=80=A6) did not change power, and the =
odd
>     harmonics decreased by the same amount as the fundamental. This
>     means that the dBc for the odd harmonics stayed the same with
>     decreasing gain.
>
>     Decreasing the baseband amplitude had the exact same effect. Even
>     harmonics stayed at the same power level, odd harmonics decreased
>     while maintaining dBc.
>
> What is the nature of the modulating signal?
>
> If you use an example app like "tx_waveforms" with, let's say, 10kHz=20
> SIN signal, what are the harmonic results?
>
>
>     *From:* Marcus D Leech <patchvonbraun@gmail.com>
>     <mailto:patchvonbraun@gmail.com>
>     *Sent:* Monday, April 10, 2023 8:39 AM
>     *To:* Shenk, Trey E <trey.shenk@pnnl.gov> <mailto:trey.shenk@pnnl.g=
ov>
>     *Cc:* USRP-users@lists.ettus.com
>     *Subject:* Re: [USRP-users] Harmonic Distortion with B205mini
>
>     Check twice before you click! This email originated from outside PN=
NL.
>
>     Turn down the RF gain a bit as well as the baseband amplitude.
>     Does this make any difference?
>
>     Sent from my iPhone
>
>
>
>         On Apr 10, 2023, at 9:41 AM, Shenk, Trey E via USRP-users
>         <usrp-users@lists.ettus.com> wrote:
>
>         =EF=BB=BF
>
>         I'm using a B205mini to transmit signals. When transmitting, I
>         can see copies of the SOI at harmonics of the center
>         frequency. I ran some measurements of total harmonic
>         distortion, and found it to range from 39% with a 100MHz to
>         23% with a 1GHz carrier.=C2=A0The second harmonic is <-50dBc, b=
ut
>         the third harmonic is usually around -10dBc.
>
>         My main concern is for the lower frequency carriers, like
>         100MHz, because multiple harmonics will show up on a spectrum
>         analyzer set to a wideband. I've looked at putting an RF
>         filter at the output, but I need the system to be able to
>         switch transmit center frequencies in a range from 100MHz to 5G=
Hz.
>
>         Is it possible to reduce the harmonics by some hardware
>         setting (driving with gnruadio)?
>
>         Thanks,
>         Trey
>
>         <carrier_freqsweep_fc0200M_gain55.png>
>
>         _______________________________________________
>         USRP-users mailing list -- usrp-users@lists.ettus.com
>         To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>

--------------6n2Xv6TKJMTw9W5rNJjRT3vO
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 17/04/2023 22:49, Shenk, Trey E
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CO6PR09MB8118612E773BE7B93B821B7EF99D9@CO6PR09MB8118.namprd09=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks for the input on this issue. I=E2=80=
=99m
          still trying to pin it down. I=E2=80=99m using gnuradio to driv=
e a
          B205mini. I=E2=80=99m seeing harmonics of the carrier particula=
rly at
          odd harmonics. The third harmonic, 3*carrier, is only 10dB
          down from the carrier itself, and I=E2=80=99m seeing significan=
t
          carrier leakage. <o:p></o:p></p>
        <p class=3D"MsoNormal"><br>
          I=E2=80=99ve tried changing the sampling rate, as well as modul=
ating a
          QPSK signal (both direct conversion and using some
          off-tuning). I still see spectral images at the odd harmonics.<=
o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Is this known behavior for the B205mini?
          I=E2=80=99m trying to decide if I need to change how I=E2=80=99=
m driving it,
          use a RF filter at the output, or switch to a different SDR.<o:=
p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks,<br>
          Trey<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
    </blockquote>
    Two things.<br>
    <br>
    The LO leakage can be dealt with using an LO offset.<br>
    <br>
    However, the AD9361 uses a square-wave LO into the mixer, which
    means that odd harmonics will make it out of the device.<br>
    =C2=A0 This has been discussed extensively in the ADI forums, and a
    couple of folks on this list have discussed it as well with<br>
    =C2=A0 spectrum analyzer screen dumps showing it.=C2=A0 I confirmed i=
t with my
    own modest spectrum analyzer as well.=C2=A0 Because it's<br>
    =C2=A0 an odd-harmonic problem, any application operating above 2GHz =
will
    naturally not have this problem, because the 3rd<br>
    =C2=A0 harmonic (and all other odd harmonics) will fall outside the
    operating range of the AD9361 chip.<br>
    <br>
    The only solution is filtering.<br>
    <br>
    Some USRPs have a built-in switchable filter bank that can help with
    this in some cases, but it really depends on the<br>
    =C2=A0 frequency scheme of your application.=C2=A0=C2=A0 A discrete f=
ilter bank
    cannot possibly deal with all applications.<br>
    <br>
    I personally tend to think of SDRs as *components* in an overall
    engineered RF *system*.=C2=A0=C2=A0 It is certainly the case that<br>
    =C2=A0 ready-for-type-acceptance radios, regardless of internal
    architecture, will almost always have filters at the edges to<br>
    =C2=A0 deal with architectural unpleasantness deeper in the radio
    architecture.=C2=A0=C2=A0=C2=A0=C2=A0 The B2xx series were designed t=
o be<br>
    =C2=A0 relatively inexpensive, and as such, they don't have a switcha=
ble
    filter-bank on them--and as previously pointed out,<br>
    =C2=A0 even THEN, that may not necessarily make the radio "applicatio=
n
    ready" in terms of formal type-acceptance, etc.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CO6PR09MB8118612E773BE7B93B821B7EF99D9@CO6PR09MB8118.namprd09=
.prod.outlook.com">
      <div class=3D"WordSection1">
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b>From:</b> Shenk, Trey E <br>
              <b>Sent:</b> Wednesday, April 12, 2023 4:21 PM<br>
              <b>To:</b> Marcus D. Leech <a class=3D"moz-txt-link-rfc2396=
E" href=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt=
;</a><br>
              <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
              <b>Subject:</b> RE: [USRP-users] Harmonic Distortion with
              B205mini<o:p></o:p></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">The original signal that I showed was an
          unmodulated carrier.<br>
          <br>
          I tried a 10kHz complex exponential (plots included for
          several harmonics). The carrier is clearly visible at all
          frequencies. I can see copies of the 10kHz tone on odd
          multiples of the carrier, but not on the even multiples.<o:p></=
o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech &lt;<a
                href=3D"mailto:patchvonbraun@gmail.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
patchvonbraun@gmail.com</a>&gt;
              <br>
              <b>Sent:</b> Monday, April 10, 2023 10:22 PM<br>
              <b>To:</b> Shenk, Trey E &lt;<a
                href=3D"mailto:trey.shenk@pnnl.gov" moz-do-not-send=3D"tr=
ue"
                class=3D"moz-txt-link-freetext">trey.shenk@pnnl.gov</a>&g=
t;<br>
              <b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
USRP-users@lists.ettus.com</a><br>
              <b>Subject:</b> Re: [USRP-users] Harmonic Distortion with
              B205mini<o:p></o:p></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 10/04/2023 14:28, Shenk, Trey E wrote=
:<o:p></o:p></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">I first tried turning the gain down. Wha=
t
            I saw was that the even harmonics (2*fundamental, =E2=80=A6) =
did not
            change power, and the odd harmonics decreased by the same
            amount as the fundamental. This means that the dBc for the
            odd harmonics stayed the same with decreasing gain.<o:p></o:p=
></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">Decreasing the baseband amplitude had th=
e
            exact same effect. Even harmonics stayed at the same power
            level, odd harmonics decreased while maintaining dBc.<o:p></o=
:p></p>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">What is the
          nature of the modulating signal?<br>
          <br>
          If you use an example app like "tx_waveforms" with, let's say,
          10kHz SIN signal, what are the harmonic results?<br>
          <br>
          <br>
          <o:p></o:p></p>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0in 0in 0in">
              <p class=3D"MsoNormal"><b>From:</b> Marcus D Leech <a
                  href=3D"mailto:patchvonbraun@gmail.com"
                  moz-do-not-send=3D"true">
                  &lt;patchvonbraun@gmail.com&gt;</a> <br>
                <b>Sent:</b> Monday, April 10, 2023 8:39 AM<br>
                <b>To:</b> Shenk, Trey E <a
                  href=3D"mailto:trey.shenk@pnnl.gov"
                  moz-do-not-send=3D"true">&lt;trey.shenk@pnnl.gov&gt;</a=
><br>
                <b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">USRP-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: [USRP-users] Harmonic Distortion
                with B205mini<o:p></o:p></p>
            </div>
          </div>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <div style=3D"border:none;border-left:solid #D77600
            6.0pt;padding:0in 0in 0in 0in;font-size:1.15rem">
            <p class=3D"MsoNormal"
              style=3D"text-align:center;background:#F7E3CC"
              align=3D"center">
              <span
                style=3D"font-family:&quot;Arial&quot;,sans-serif;color:b=
lack">Check
                twice before you click! This email originated from
                outside PNNL.</span><o:p></o:p></p>
          </div>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <div>
            <p class=3D"MsoNormal">Turn down the RF gain a bit as well as
              the baseband amplitude. Does this make any difference?
              <o:p></o:p></p>
            <div>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            </div>
            <div>
              <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">=C2=A0=
<o:p></o:p></p>
              <div>
                <p class=3D"MsoNormal">Sent from my iPhone<o:p></o:p></p>
              </div>
              <div>
                <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br=
>
                  <br>
                  <o:p></o:p></p>
                <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt=
">
                  <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">O=
n
                    Apr 10, 2023, at 9:41 AM, Shenk, Trey E via
                    USRP-users &lt;<a
                      href=3D"mailto:usrp-users@lists.ettus.com"
                      moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">usrp-users@lists.et=
tus.com</a>&gt;
                    wrote:<o:p></o:p></p>
                </blockquote>
              </div>
              <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                <div>
                  <p class=3D"MsoNormal">=EF=BB=BF <o:p></o:p></p>
                  <p style=3D"background:white"><span
                      style=3D"font-size:10.5pt;color:black">I'm using a
                      B205mini to transmit signals. When transmitting, I
                      can see copies of the SOI at harmonics of the
                      center frequency. I ran some measurements of total
                      harmonic distortion, and found it to range from
                      39% with a 100MHz to 23% with a 1GHz carrier.=C2=A0=
The
                      second harmonic is &lt;-50dBc, but the third
                      harmonic is usually around -10dBc.
                    </span><o:p></o:p></p>
                  <p style=3D"background:white;box-sizing:
                    border-box;font-variant-ligatures:
                    normal;font-variant-caps: normal;orphans:
                    2;text-align:start;widows:
                    2;-webkit-text-stroke-width:
                    0px;text-decoration-thickness:
                    initial;text-decoration-style:
                    initial;text-decoration-color:
                    initial;word-spacing:0px">
                    <span style=3D"font-size:10.5pt;color:black">My main
                      concern is for the lower frequency carriers, like
                      100MHz, because multiple harmonics will show up on
                      a spectrum analyzer set to a wideband. I've looked
                      at putting an RF filter at the output, but I need
                      the system to be able to switch transmit center
                      frequencies in a range from 100MHz to 5GHz.</span><=
o:p></o:p></p>
                  <p style=3D"background:white;box-sizing:
                    border-box;font-variant-ligatures:
                    normal;font-variant-caps: normal;orphans:
                    2;text-align:start;widows:
                    2;-webkit-text-stroke-width:
                    0px;text-decoration-thickness:
                    initial;text-decoration-style:
                    initial;text-decoration-color:
                    initial;word-spacing:0px">
                    <span style=3D"font-size:10.5pt;color:black">Is it
                      possible to reduce the harmonics by some hardware
                      setting (driving with gnruadio)?=C2=A0</span><o:p><=
/o:p></p>
                  <p style=3D"background:white;box-sizing:
                    border-box;font-variant-ligatures:
                    normal;font-variant-caps: normal;orphans:
                    2;text-align:start;widows:
                    2;-webkit-text-stroke-width:
                    0px;text-decoration-thickness:
                    initial;text-decoration-style:
                    initial;text-decoration-color:
                    initial;word-spacing:0px">
                    <span style=3D"font-size:10.5pt;color:black">Thanks,<=
br>
                      Trey</span><o:p></o:p></p>
                  <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                  <div>
                    <p class=3D"MsoNormal">&lt;carrier_freqsweep_fc0200M_=
gain55.png&gt;<o:p></o:p></p>
                  </div>
                  <p class=3D"MsoNormal">________________________________=
_______________<br>
                    USRP-users mailing list -- <a
                      href=3D"mailto:usrp-users@lists.ettus.com"
                      moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">usrp-users@lists.et=
tus.com</a><br>
                    To unsubscribe send an email to <a
                      href=3D"mailto:usrp-users-leave@lists.ettus.com"
                      moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">
                      usrp-users-leave@lists.ettus.com</a><o:p></o:p></p>
                </div>
              </blockquote>
            </div>
          </div>
        </blockquote>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------6n2Xv6TKJMTw9W5rNJjRT3vO--

--===============2130280303025981919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2130280303025981919==--
