Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F04D78FDB14
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jun 2024 01:59:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B1F033844C6
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jun 2024 19:59:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1717631983; bh=jaZyGquk3pziy24Cq9k0QOpkl8oVUkjVZkpqRtuRXxA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=06GFHLtHuioZ0yGp4N8Iz7/opJhc4OtWx3P+jadCctyHqWUDnykM6jlbBcx319wJ4
	 pFbq0ulbc1wGaIb5ajR4XtQ4eQ3C+WG+Rw5gobNlz15r5QXSL0IPjdnBwGlihlnuSj
	 OD6PZV7qljcM79LmT3OKJ+LWxufZ9n1vcg1Uq5cDhn422W5WAi+xB/gxE364MUJhzk
	 fxIKnjDmA91+4MCi0PWjHfFxtyEoT1Tp+aHOP7FEB9L9bi8Z5YQAWJWj59OQVs6cob
	 VcLC0CGa7JdVaigIQRQheN6NFb6gq5P8LvPWeWsENqk006XraN/5JTBnL6KMzkgZFv
	 qDmnenCnGW5Qw==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 08CB7383E42
	for <usrp-users@lists.ettus.com>; Wed,  5 Jun 2024 19:59:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PNLNBjDN";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-4402066471cso3166571cf.0
        for <usrp-users@lists.ettus.com>; Wed, 05 Jun 2024 16:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717631950; x=1718236750; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1TJYTeO63CPGnlF0LU6fW1g68czDgtzueU/FDE6OiLQ=;
        b=PNLNBjDNlbnddFb1qkqXe+7PyDeCJCvfihcdT27nV84iCJ3uExLnF3+H6iii9G5fe7
         utwkESRATZX4Dxbu5nGZNWNxp65BD6j8olJ0qz/u/d6usZW8zMMGLuTSfmMKNQZtsMjB
         cyu/0197CAE+yN4PsNqjTGZs3F5CKaNchxxt+xFWyFFb1tLfFDkRTkJWW1ixHM1TRmx9
         ZUHDhiP8MZpaW/V/sWkNl9bIq2fkecqcdHGRvZXWQIggRxjx+h763hWzT/THIB2dhCXN
         bLozuisiFUsDfwlHLwDI6KH7gMlmj3WTf1+FFckJ9HVMCB8FcRxLicWMtrezRRmNLE3L
         Zw6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717631950; x=1718236750;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1TJYTeO63CPGnlF0LU6fW1g68czDgtzueU/FDE6OiLQ=;
        b=DIvZ/OG0KMkcOglPVZPzlMdqNknZLtoC34NH79mNtqVDVfab3Bctta1p+03nVcM+ax
         5U4FWK1spBmuITdPvZYZD47vvkqlg8QKaeEixUdv40Erbgmm/f5tBPCEl3quliY4XSEd
         Q8EfCKsRszs6yHljLO473NUwwxMoOOQRRQ8/3JfFmuwvsrTqjcrIB5q+uV3dh+CVF0Vq
         0ASEEq8s5DyajmzOelp0KCb9AylzsoV25sHjcY+J6/62CfhXuV/CyPm0cGx4tlg6SBO0
         x5fyoh95gmV20ECLtRhCaItYg7lGigbhTlgsiuD6DzFNDf4TkfptqTwnednc2R1cYpHQ
         723A==
X-Forwarded-Encrypted: i=1; AJvYcCU9bmyEsGNYKcmWTR1Hlk69PVwLWqDWOen9VKsue2Umir9EI1gCDmGMFicLmNqNayeAmQ9VKh0AdP05dhPCyk5ej1xrURYKYKlacw==
X-Gm-Message-State: AOJu0YxBLM8ec0+70n853sOWBx7HDB2hU/bBzoPy3Oj25UkZmuDGoQ67
	BVoVf6R2G1IOEmh+uPh6K95JxU4D333IO9AKFwsJaQaxvRCPwn3SOjj8YQ==
X-Google-Smtp-Source: AGHT+IHo+o234lz4axTiJBaOHbFar2IN1Hf29XTyBYg/aHFIr01UzM9PgAkTZIFHyocIcwziM9G7ow==
X-Received: by 2002:a05:622a:2a05:b0:43f:f142:905b with SMTP id d75a77b69052e-440362dd8fbmr20618941cf.29.1717631950084;
        Wed, 05 Jun 2024 16:59:10 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-192.dsl.bell.ca. [174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-44038abf41csm837251cf.56.2024.06.05.16.59.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jun 2024 16:59:09 -0700 (PDT)
Message-ID: <8635cd7f-27ec-427f-b33d-4b841009d54b@gmail.com>
Date: Wed, 5 Jun 2024 19:59:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: David Raeman <david@SynopticEngineering.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <BN2P110MB1747451A80AF745107DB2C51B7F9A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
 <fdbc8ac5-6030-494f-af46-d718d40b7236@gmail.com>
 <BN2P110MB1747ED52AF2A1DB7D1A939BFB7F9A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN2P110MB1747ED52AF2A1DB7D1A939BFB7F9A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: HWP3GJTAFVWD3BFX5GT4SKYSEG6RJ5BR
X-Message-ID-Hash: HWP3GJTAFVWD3BFX5GT4SKYSEG6RJ5BR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPS fix behavior on USRP E320
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HWP3GJTAFVWD3BFX5GT4SKYSEG6RJ5BR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3686361197192250722=="

This is a multi-part message in MIME format.
--===============3686361197192250722==
Content-Type: multipart/alternative;
 boundary="------------vUmRLy9ZXqltYgi3SCxSlBwa"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------vUmRLy9ZXqltYgi3SCxSlBwa
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 05/06/2024 11:19, David Raeman wrote:
>
> Thanks for the suggestion =E2=80=93 in this case they were all sitting =
on the=20
> roof of my vehicle in an open parking lot, with 6-8=E2=80=9D separation=
=20
> between radios. I guess there could be minimal shadowing for=20
> satellites at low grazing angles, but I=E2=80=99m skeptical of that as =
a full=20
> explanation.
>
> I have a hypothesis that the default 5Hz update rate is problematic on=20
> these devices. The serial connection between the GPS receiver the Zynq=20
> PS runs at 38400 baud. With standard 8N1 framing, that only allows for=20
> 768 bytes of sentence data per 200ms cycle. If I capture the raw GPS=20
> serial output (by directly watching /dev/ttyPS1, not the scrubbed data=20
> filtered through gpsd), it=E2=80=99s quickly obvious that many sentence=
s get=20
> truncated and/or dropped. For example, there are very frequent =E2=80=9C=
time=20
> skips=E2=80=9D happening in the time-related sentences, as well as rand=
om=20
> sentence fragments. Some cycles would be expected to have a larger=20
> data volume, such as when multiple GPGSV sentences list all satellites=20
> in view, and I think that=E2=80=99s mangling the serial stream.
>
> This explains discrepancies in what =E2=80=98gpsmon=E2=80=99 sees, as w=
ell as=20
> discrepancies I=E2=80=99ve sometimes seen on E320s trying to sync commo=
n GPS=20
> time with PPS assertion (sometimes radios are wrong by 200ms). This=20
> should not impact the =E2=80=9Cgps_locked=E2=80=9D sensor, which gets i=
ts state via an=20
> I/O signal from the GPS receiver and not by parsing sentences.=20
> However, I am currently using information from sentences to determine=20
> lock status because =E2=80=9Cgps_locked=E2=80=9D doesn=E2=80=99t seem t=
o work as expected in=20
> UHD 4.4 on the E320 (looks like that might=E2=80=99ve been fixed in UHD=
 4.5=20
> though).
>
> So long story short =E2=80=93 I think 5Hz update rate is problematic. I=
t can=20
> be changed to 1Hz by removing a resistor, and as far as I can tell,=20
> neither UHD nor the radio filesystem would care about that change. I=20
> may try this on one radio and see if it helps improve consistency..
>
> -David
>
You're not trying to capture /dev/ttyPS1 data *while* GPSD is capturing=20
it, are you?=C2=A0 You can't usefully share a resource like a
 =C2=A0 serial port -- some characters will go to you, some to GPSD.

Now, having said that, yeah, only 768 bytes per update interval max.=C2=A0=
=20
How many bytes in a typical NMEA sentence, and how
 =C2=A0 many sentences per interval?


> *From:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Wednesday, June 5, 2024 8:56 AM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: GPS fix behavior on USRP E320
>
> On 05/06/2024 08:43, David Raeman via USRP-users wrote:
>
>     Hello,
>
>     I'm having a difficult time getting consistent GPS fix behavior
>     from a set of USRP E320 radios. They are all using UHD 4.4 with
>     the same active GPS antenna (Siretta Tango 21, which has a 28dB
>     LNA and short ~6" coax run).
>
>     When outside with a view of the sky and 6 radios sitting together,
>     10-15 minutes after power-on, some of the radios will have a lock
>     and others will not. For radios that get a lock, sometimes they
>     will briefly glitch into "unlocked" state briefly every 20-30
>     seconds before reporting as locked again. If I let it sit another
>     10-15 minutes, nothing really changes. Looking at the output of
>     'gpsmon' on the radio, the radios which never locked will see
>     fewer satellites, and the ones in common will have far different
>     SNR levels.
>
>     I'm trying to find a solution for more consistent behavior,
>     especially since these are outside with a view of the sky. I
>     confirmed the radio's GPS ANT port has the +3.3V bias so I assume
>     the antennas receive power as expected.
>
>     Searching the mailing list, over the years this topic has come up
>     a couple times specifically with E320 radios. I know the same
>     Jackson Labs LTE-Lite SOM is also used in the newer X410 radios,
>     though it's configured a bit differently via strapping pins. I thin=
k:
>
>     * The X410 sets the module in 1Hz mode instead of 5Hz.
>
>     * The X410 uses it in "mobile" mode instead of auto-surveying
>     =E2=80=9Cstationary=E2=80=9D mode.
>
>     * Curiously, the E320 seems to connect pin 1 (EFC) to pin 2 (NC),
>     though this doesn't make any sense based on the LTE-Lite public
>     tech manual. The X410 leaves them NC.
>
>     Does anybody know whether any of the changes (or others) represent
>     "lessons learned" that would improve GPS TTFF or disciplining
>     behavior? I don=E2=80=99t mind changing resistor populations if the=
re is a
>     reason to. Or any other suggestions around this topic?
>
>     Thank you,
>
>     David Raeman
>
>
>
>     _______________________________________________
>
>     USRP-users mailing list --usrp-users@lists.ettus.com
>
>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
> IF you move the antennas further apart, what happens?
>
> If they are all tightly packed together, there's an opportunity for=20
> shadowing (small, but, maybe?).
>

--------------vUmRLy9ZXqltYgi3SCxSlBwa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 05/06/2024 11:19, David Raeman
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB1747ED52AF2A1DB7D1A939BFB7F9A@BN2P110MB1747.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	mso-ligatures:standardcontextual;}span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Thanks for the suggestion =E2=80=93 in thi=
s case
          they were all sitting on the roof of my vehicle in an open
          parking lot, with 6-8=E2=80=9D separation between radios. I gue=
ss
          there could be minimal shadowing for satellites at low grazing
          angles, but I=E2=80=99m skeptical of that as a full explanation=
.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I have a hypothesis that the default 5Hz
          update rate is problematic on these devices. The serial
          connection between the GPS receiver the Zynq PS runs at 38400
          baud. With standard 8N1 framing, that only allows for 768
          bytes of sentence data per 200ms cycle. If I capture the raw
          GPS serial output (by directly watching /dev/ttyPS1, not the
          scrubbed data filtered through gpsd), it=E2=80=99s quickly obvi=
ous
          that many sentences get truncated and/or dropped. For example,
          there are very frequent =E2=80=9Ctime skips=E2=80=9D happening =
in the
          time-related sentences, as well as random sentence fragments.
          Some cycles would be expected to have a larger data volume,
          such as when multiple GPGSV sentences list all satellites in
          view, and I think that=E2=80=99s mangling the serial stream.<o:=
p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">This explains discrepancies in what
          =E2=80=98gpsmon=E2=80=99 sees, as well as discrepancies I=E2=80=
=99ve sometimes seen on
          E320s trying to sync common GPS time with PPS assertion
          (sometimes radios are wrong by 200ms). This should not impact
          the =E2=80=9Cgps_locked=E2=80=9D sensor, which gets its state v=
ia an I/O
          signal from the GPS receiver and not by parsing sentences.
          However, I am currently using information from sentences to
          determine lock status because =E2=80=9Cgps_locked=E2=80=9D does=
n=E2=80=99t seem to
          work as expected in UHD 4.4 on the E320 (looks like that
          might=E2=80=99ve been fixed in UHD 4.5 though).<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">So long story short =E2=80=93 I think 5Hz =
update
          rate is problematic. It can be changed to 1Hz by removing a
          resistor, and as far as I can tell, neither UHD nor the radio
          filesystem would care about that change. I may try this on one
          radio and see if it helps improve consistency..<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">-David</p>
      </div>
    </blockquote>
    You're not trying to capture /dev/ttyPS1 data *while* GPSD is
    capturing it, are you?=C2=A0 You can't usefully share a resource like=
 a<br>
    =C2=A0 serial port -- some characters will go to you, some to GPSD.<b=
r>
    <br>
    Now, having said that, yeah, only 768 bytes per update interval
    max.=C2=A0 How many bytes in a typical NMEA sentence, and how<br>
    =C2=A0 many sentences per interval?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB1747ED52AF2A1DB7D1A939BFB7F9A@BN2P110MB1747.NAMP110.=
PROD.OUTLOOK.COM">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div
style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0in=
 0in">
            <p class=3D"MsoNormal"><b><span style=3D"mso-ligatures:none">=
From:</span></b><span
                style=3D"mso-ligatures:none"> Marcus D. Leech
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvo=
nbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
                <br>
                <b>Sent:</b> Wednesday, June 5, 2024 8:56 AM<br>
                <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> [USRP-users] Re: GPS fix behavior on
                USRP E320<o:p></o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 05/06/2024 08:43, David Raeman via
            USRP-users wrote:<span style=3D"mso-ligatures:none"><o:p></o:=
p></span></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">Hello,<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">I'm having a difficult time getting
            consistent GPS fix behavior from a set of USRP E320 radios.
            They are all using UHD 4.4 with the same active GPS antenna
            (Siretta Tango 21, which has a 28dB LNA and short ~6" coax
            run).<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">When outside with a view of the sky and =
6
            radios sitting together, 10-15 minutes after power-on, some
            of the radios will have a lock and others will not. For
            radios that get a lock, sometimes they will briefly glitch
            into "unlocked" state briefly every 20-30 seconds before
            reporting as locked again. If I let it sit another 10-15
            minutes, nothing really changes. Looking at the output of
            'gpsmon' on the radio, the radios which never locked will
            see fewer satellites, and the ones in common will have far
            different SNR levels.<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">I'm trying to find a solution for more
            consistent behavior, especially since these are outside with
            a view of the sky. I confirmed the radio's GPS ANT port has
            the +3.3V bias so I assume the antennas receive power as
            expected.<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">Searching the mailing list, over the
            years this topic has come up a couple times specifically
            with E320 radios. I know the same Jackson Labs LTE-Lite SOM
            is also used in the newer X410 radios, though it's
            configured a bit differently via strapping pins. I think:<o:p=
></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">* The X410 sets the module in 1Hz mode
            instead of 5Hz.<o:p></o:p></p>
          <p class=3D"MsoNormal">* The X410 uses it in "mobile" mode
            instead of auto-surveying =E2=80=9Cstationary=E2=80=9D mode.<=
o:p></o:p></p>
          <p class=3D"MsoNormal">* Curiously, the E320 seems to connect
            pin 1 (EFC) to pin 2 (NC), though this doesn't make any
            sense based on the LTE-Lite public tech manual. The X410
            leaves them NC.<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">Does anybody know whether any of the
            changes (or others) represent "lessons learned" that would
            improve GPS TTFF or disciplining behavior? I don=E2=80=99t mi=
nd
            changing resistor populations if there is a reason to. Or
            any other suggestions around this topic?<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
          <p class=3D"MsoNormal">David Raeman<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"mso-ligatures:none"><br>
              <br>
              <o:p></o:p></span></p>
          <pre>_______________________________________________<o:p></o:p>=
</pre>
          <pre>USRP-users mailing list -- <a
          href=3D"mailto:usrp-users@lists.ettus.com"
          moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp-u=
sers@lists.ettus.com</a><o:p></o:p></pre>
          <pre>To unsubscribe send an email to <a
          href=3D"mailto:usrp-users-leave@lists.ettus.com"
          moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp-u=
sers-leave@lists.ettus.com</a><o:p></o:p></pre>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"mso-ligatures:none">IF you move the antennas further
            apart, what happens?<br>
            <br>
            If they are all tightly packed together, there's an
            opportunity for shadowing (small, but, maybe?).<br>
            <br>
            <o:p></o:p></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------vUmRLy9ZXqltYgi3SCxSlBwa--

--===============3686361197192250722==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3686361197192250722==--
