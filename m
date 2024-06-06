Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E12EB8FDCDD
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jun 2024 04:39:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AA60F383E7F
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jun 2024 22:39:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1717641582; bh=PnjVgCguqOvVSau45ZM/mHpL9FyzUmrEcHa4XgAvXGQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uWhGi7ysUxFX+X5o5kD3wQLnEWxD+4SK5m80Y0s3Avxb8FIOx0U+M/OUMfFIGsAkB
	 KshIyKuPTMfEqFTrmMISAsm0j+cFJ4j1tYZKMWIdMyUIYjYQY1g4hRjlFL9Sa4UZAx
	 qVdlvYHCdNlUPQl8gX56weaitZPkO/6ebt4M4/seocQyYTFzGlRHky8xk0giY1Ed1t
	 OFW2qnlpAX/pYnjUUPKQrmdTgFbgpw/6ozoIbU1qslz5PiDJ1zjirgEN80emE2lrEv
	 ejWR38q0GITUiIK7rUao34KIlAl+mNkbSBLjOL9IKZ4hxW9PZSGFcKR6vE7QN5TXdC
	 qzvfXa1zW7yBQ==
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 504A8383DCB
	for <usrp-users@lists.ettus.com>; Wed,  5 Jun 2024 22:39:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UhHzU3e0";
	dkim-atps=neutral
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3d1facdf12bso170340b6e.0
        for <usrp-users@lists.ettus.com>; Wed, 05 Jun 2024 19:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717641549; x=1718246349; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fGwOjOHzmzrW740BSrcKOm4//wb6Y+pPoeLFI52HZ0U=;
        b=UhHzU3e03Glt+XzTkgTpSGmL5G8NNTVjK2eKgurSvjeOU50n0CvbLftV7u6dmf9mKv
         ruzoj1Aybm6CA5+erdkhDNqfmjzDu3KnIesW59sJlDX+W/SJUjbS51X/dsJSxbeSD5Km
         9znhODVKn8YlfUpp3OomDrq9/j3S37V7WIcEx1zAAb2h3woqyk+XOL//SH+EfkPBYb6x
         XnevnvCHK3Bv4nkNGkEnKN9jaQhlgeCCCTVjNDbukoKezVUBWFlIrEb3elNyVglELEpQ
         +pDxzdg9R3CnOb/Q0qSWVtZs4saCGB/FN+pbj3SeqIuFpxnUduXdfz5eJROHSnbuSyG1
         AGIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717641549; x=1718246349;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fGwOjOHzmzrW740BSrcKOm4//wb6Y+pPoeLFI52HZ0U=;
        b=YjCMqog9Tys4eZGHrS8uZdhwgOdve1erq3Q0iDOnIocyZSp+HvHe3m5T2r9PmKI45Y
         pcTR328gXV8RAIyFI4n8d45jeHL6KAUcP/D7PHXauYAmFsydF8jWA3FXOBE2UifXUDm9
         N3d9zNFiA4ZJZXLRHCKge7BBK6RgeBNJR4Bmrn4n618GCzOEHJ38j5z3G56ToZf9+DOK
         MWIDp+YAL6igUoj8Yytk0WIZh5Xv+ILJp2UEPBK+mAl/PRBR9r+TUAhnIlv0lsFQYRqW
         Ha6LWdOSVJLMntXFXlHYBF3Ir8SAYJliyaBKxNNWG09J3TQ/7GNbRWzvcgd+6lGsLirz
         o8TA==
X-Forwarded-Encrypted: i=1; AJvYcCX8vbisT8EA82e8osTQVkk3OhQ0RmUfOXejYDKJjPssQPQZAB3NMy4xCv2cAE/hwTnkJXtvFdpY6ZHtK3Yyl4srpH4qMgGHlC5ccw==
X-Gm-Message-State: AOJu0YxICUnLTaeGwvKUvmKldg7Zh7CYq/902nVl40HwNJwoZ/bq4DQW
	FQ9OSKirxhDC13Goa0viXc37ZKIBLq/Y2l7nB1Eecc9eTvUuLiFzj/8Wjg==
X-Google-Smtp-Source: AGHT+IH1fKUnMENs7eAbMMYXvP2HCERX+Gee2kg4ybdbusmk+IMDfv6Fm9KzOvL6AijXYLm86F2sQw==
X-Received: by 2002:a54:4417:0:b0:3d2:5b:df2d with SMTP id 5614622812f47-3d2043a08cdmr4448602b6e.35.1717641549054;
        Wed, 05 Jun 2024 19:39:09 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-192.dsl.bell.ca. [174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-795331c9e2esm16362585a.101.2024.06.05.19.39.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jun 2024 19:39:08 -0700 (PDT)
Message-ID: <e0c75032-8c83-4a1e-909e-f7e4c99a5c59@gmail.com>
Date: Wed, 5 Jun 2024 22:39:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: David Raeman <david@SynopticEngineering.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <BN2P110MB1747451A80AF745107DB2C51B7F9A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
 <fdbc8ac5-6030-494f-af46-d718d40b7236@gmail.com>
 <BN2P110MB1747ED52AF2A1DB7D1A939BFB7F9A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
 <8635cd7f-27ec-427f-b33d-4b841009d54b@gmail.com>
 <BN2P110MB1747FC28D7F811D71D6F14C0B7FAA@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN2P110MB1747FC28D7F811D71D6F14C0B7FAA@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: GZUSK7L7Y2NNU77VBM4WTPIKQSMFA6CS
X-Message-ID-Hash: GZUSK7L7Y2NNU77VBM4WTPIKQSMFA6CS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPS fix behavior on USRP E320
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GZUSK7L7Y2NNU77VBM4WTPIKQSMFA6CS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7965040580574840167=="

This is a multi-part message in MIME format.
--===============7965040580574840167==
Content-Type: multipart/alternative;
 boundary="------------xuSuLgqkEyp0FuU8j7tZcQrh"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------xuSuLgqkEyp0FuU8j7tZcQrh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 05/06/2024 22:36, David Raeman wrote:
>
> Correct, gpsd was stopped (in fact I cannot even open the tty device=20
> if gpsd is running).
>
> I am also going to backpedal because I haven=E2=80=99t able to reproduc=
e what=20
> I saw/logged in the earlier test. The largest NMEA sentence burst I=E2=80=
=99m=20
> seeing is about 550 bytes. It possible my earlier observation is a=20
> sporadic issue with the receiver, but it=E2=80=99s more likely I botche=
d=20
> something in my test because I cannot reproduce that behavior.
>
> I did find the root cause of my problem, though, and it=E2=80=99s unrel=
ated to=20
> the SDR. I have a Raspberry Pi in the same chassis as the USRP E320,=20
> and it has an attached USB3/Ethernet dongle. There=E2=80=99s a well-kno=
wn=20
> issue where certain USB3 devices and cables emit significant broadband=20
> RF interference via the high-speed bus signaling. Afflicted devices=20
> can jam co-located receivers including GPS and WiFi. Intel published a=20
> whitepaper on the topic more than a decade ago [1]. When I remove this=20
> USB3/Ethernet dongle from the system, GPS immediately works well. When=20
> I plug it back in, I immediately lose the satellites again. This=20
> dongle has nothing to do with the USRP=E2=80=99s function, but it was=20
> positioned just 3-4 inches from the GPS antenna that feeds into the USR=
P.
>
> So not an SDR issue, but perhaps this thread may help a USRP user in=20
> the future..
>
> [1] https://www.usb.org/sites/default/files/327216.pdf
>
Thanks for sleuthing this, David!


> *From:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Wednesday, June 5, 2024 7:59 PM
> *To:* David Raeman <david@SynopticEngineering.com>;=20
> usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Re: GPS fix behavior on USRP E320
>
> On 05/06/2024 11:19, David Raeman wrote:
>
>     Thanks for the suggestion =E2=80=93 in this case they were all sitt=
ing on
>     the roof of my vehicle in an open parking lot, with 6-8=E2=80=9D
>     separation between radios. I guess there could be minimal
>     shadowing for satellites at low grazing angles, but I=E2=80=99m ske=
ptical
>     of that as a full explanation.
>
>     I have a hypothesis that the default 5Hz update rate is
>     problematic on these devices. The serial connection between the
>     GPS receiver the Zynq PS runs at 38400 baud. With standard 8N1
>     framing, that only allows for 768 bytes of sentence data per 200ms
>     cycle. If I capture the raw GPS serial output (by directly
>     watching /dev/ttyPS1, not the scrubbed data filtered through
>     gpsd), it=E2=80=99s quickly obvious that many sentences get truncat=
ed
>     and/or dropped. For example, there are very frequent =E2=80=9Ctime =
skips=E2=80=9D
>     happening in the time-related sentences, as well as random
>     sentence fragments. Some cycles would be expected to have a larger
>     data volume, such as when multiple GPGSV sentences list all
>     satellites in view, and I think that=E2=80=99s mangling the serial =
stream.
>
>     This explains discrepancies in what =E2=80=98gpsmon=E2=80=99 sees, =
as well as
>     discrepancies I=E2=80=99ve sometimes seen on E320s trying to sync c=
ommon
>     GPS time with PPS assertion (sometimes radios are wrong by 200ms).
>     This should not impact the =E2=80=9Cgps_locked=E2=80=9D sensor, whi=
ch gets its
>     state via an I/O signal from the GPS receiver and not by parsing
>     sentences. However, I am currently using information from
>     sentences to determine lock status because =E2=80=9Cgps_locked=E2=80=
=9D doesn=E2=80=99t
>     seem to work as expected in UHD 4.4 on the E320 (looks like that
>     might=E2=80=99ve been fixed in UHD 4.5 though).
>
>     So long story short =E2=80=93 I think 5Hz update rate is problemati=
c. It
>     can be changed to 1Hz by removing a resistor, and as far as I can
>     tell, neither UHD nor the radio filesystem would care about that
>     change. I may try this on one radio and see if it helps improve
>     consistency..
>
>     -David
>
> You're not trying to capture /dev/ttyPS1 data *while* GPSD is=20
> capturing it, are you?=C2=A0 You can't usefully share a resource like a
> =C2=A0 serial port -- some characters will go to you, some to GPSD.
>
> Now, having said that, yeah, only 768 bytes per update interval max.=C2=
=A0=20
> How many bytes in a typical NMEA sentence, and how
> =C2=A0 many sentences per interval?
>
>
>
>     *From:*Marcus D. Leech <patchvonbraun@gmail.com>
>     <mailto:patchvonbraun@gmail.com>
>     *Sent:* Wednesday, June 5, 2024 8:56 AM
>     *To:* usrp-users@lists.ettus.com
>     *Subject:* [USRP-users] Re: GPS fix behavior on USRP E320
>
>     On 05/06/2024 08:43, David Raeman via USRP-users wrote:
>
>         Hello,
>
>         I'm having a difficult time getting consistent GPS fix
>         behavior from a set of USRP E320 radios. They are all using
>         UHD 4.4 with the same active GPS antenna (Siretta Tango 21,
>         which has a 28dB LNA and short ~6" coax run).
>
>         When outside with a view of the sky and 6 radios sitting
>         together, 10-15 minutes after power-on, some of the radios
>         will have a lock and others will not. For radios that get a
>         lock, sometimes they will briefly glitch into "unlocked" state
>         briefly every 20-30 seconds before reporting as locked again.
>         If I let it sit another 10-15 minutes, nothing really changes.
>         Looking at the output of 'gpsmon' on the radio, the radios
>         which never locked will see fewer satellites, and the ones in
>         common will have far different SNR levels.
>
>         I'm trying to find a solution for more consistent behavior,
>         especially since these are outside with a view of the sky. I
>         confirmed the radio's GPS ANT port has the +3.3V bias so I
>         assume the antennas receive power as expected.
>
>         Searching the mailing list, over the years this topic has come
>         up a couple times specifically with E320 radios. I know the
>         same Jackson Labs LTE-Lite SOM is also used in the newer X410
>         radios, though it's configured a bit differently via strapping
>         pins. I think:
>
>         * The X410 sets the module in 1Hz mode instead of 5Hz.
>
>         * The X410 uses it in "mobile" mode instead of auto-surveying
>         =E2=80=9Cstationary=E2=80=9D mode.
>
>         * Curiously, the E320 seems to connect pin 1 (EFC) to pin 2
>         (NC), though this doesn't make any sense based on the LTE-Lite
>         public tech manual. The X410 leaves them NC.
>
>         Does anybody know whether any of the changes (or others)
>         represent "lessons learned" that would improve GPS TTFF or
>         disciplining behavior? I don=E2=80=99t mind changing resistor
>         populations if there is a reason to. Or any other suggestions
>         around this topic?
>
>         Thank you,
>
>         David Raeman
>
>
>
>
>         _______________________________________________
>
>         USRP-users mailing list --usrp-users@lists.ettus.com
>
>         To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
>     IF you move the antennas further apart, what happens?
>
>     If they are all tightly packed together, there's an opportunity
>     for shadowing (small, but, maybe?).
>
>

--------------xuSuLgqkEyp0FuU8j7tZcQrh
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 05/06/2024 22:36, David Raeman
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB1747FC28D7F811D71D6F14C0B7FAA@BN2P110MB1747.NAMP110.=
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
	mso-ligatures:standardcontextual;}span.EmailStyle23
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}div.WordSection1
	{page:WordSection1;}</style>
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Correct, gpsd was stopped (in fact I canno=
t
          even open the tty device if gpsd is running).<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I am also going to backpedal because I
          haven=E2=80=99t able to reproduce what I saw/logged in the earl=
ier
          test. The largest NMEA sentence burst I=E2=80=99m seeing is abo=
ut 550
          bytes. It possible my earlier observation is a sporadic issue
          with the receiver, but it=E2=80=99s more likely I botched somet=
hing in
          my test because I cannot reproduce that behavior.<o:p></o:p></p=
>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I did find the root cause of my problem,
          though, and it=E2=80=99s unrelated to the SDR. I have a Raspber=
ry Pi
          in the same chassis as the USRP E320, and it has an attached
          USB3/Ethernet dongle. There=E2=80=99s a well-known issue where =
certain
          USB3 devices and cables emit significant broadband RF
          interference via the high-speed bus signaling. Afflicted
          devices can jam co-located receivers including GPS and WiFi.
          Intel published a whitepaper on the topic more than a decade
          ago [1]. When I remove this USB3/Ethernet dongle from the
          system, GPS immediately works well. When I plug it back in, I
          immediately lose the satellites again. This dongle has nothing
          to do with the USRP=E2=80=99s function, but it was positioned j=
ust 3-4
          inches from the GPS antenna that feeds into the USRP.<o:p></o:p=
></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">So not an SDR issue, but perhaps this
          thread may help a USRP user in the future..<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">[1] <a
            href=3D"https://www.usb.org/sites/default/files/327216.pdf"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">
            https://www.usb.org/sites/default/files/327216.pdf</a></p>
      </div>
    </blockquote>
    Thanks for sleuthing this, David!<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB1747FC28D7F811D71D6F14C0B7FAA@BN2P110MB1747.NAMP110.=
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
                <b>Sent:</b> Wednesday, June 5, 2024 7:59 PM<br>
                <b>To:</b> David Raeman
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:david@S=
ynopticEngineering.com">&lt;david@SynopticEngineering.com&gt;</a>;
                <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp=
-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: [USRP-users] Re: GPS fix behavior on
                USRP E320<o:p></o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 05/06/2024 11:19, David Raeman wrote:=
<span
              style=3D"mso-ligatures:none"><o:p></o:p></span></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">Thanks for the suggestion =E2=80=93 in t=
his case
            they were all sitting on the roof of my vehicle in an open
            parking lot, with 6-8=E2=80=9D separation between radios. I g=
uess
            there could be minimal shadowing for satellites at low
            grazing angles, but I=E2=80=99m skeptical of that as a full
            explanation.<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">I have a hypothesis that the default 5Hz
            update rate is problematic on these devices. The serial
            connection between the GPS receiver the Zynq PS runs at
            38400 baud. With standard 8N1 framing, that only allows for
            768 bytes of sentence data per 200ms cycle. If I capture the
            raw GPS serial output (by directly watching /dev/ttyPS1, not
            the scrubbed data filtered through gpsd), it=E2=80=99s quickl=
y
            obvious that many sentences get truncated and/or dropped.
            For example, there are very frequent =E2=80=9Ctime skips=E2=80=
=9D happening
            in the time-related sentences, as well as random sentence
            fragments. Some cycles would be expected to have a larger
            data volume, such as when multiple GPGSV sentences list all
            satellites in view, and I think that=E2=80=99s mangling the s=
erial
            stream.<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">This explains discrepancies in what
            =E2=80=98gpsmon=E2=80=99 sees, as well as discrepancies I=E2=80=
=99ve sometimes seen
            on E320s trying to sync common GPS time with PPS assertion
            (sometimes radios are wrong by 200ms). This should not
            impact the =E2=80=9Cgps_locked=E2=80=9D sensor, which gets it=
s state via an
            I/O signal from the GPS receiver and not by parsing
            sentences. However, I am currently using information from
            sentences to determine lock status because =E2=80=9Cgps_locke=
d=E2=80=9D
            doesn=E2=80=99t seem to work as expected in UHD 4.4 on the E3=
20
            (looks like that might=E2=80=99ve been fixed in UHD 4.5 thoug=
h).<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">So long story short =E2=80=93 I think 5H=
z update
            rate is problematic. It can be changed to 1Hz by removing a
            resistor, and as far as I can tell, neither UHD nor the
            radio filesystem would care about that change. I may try
            this on one radio and see if it helps improve consistency..<o=
:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">-David<o:p></o:p></p>
        </blockquote>
        <p class=3D"MsoNormal"><span style=3D"mso-ligatures:none">You're =
not
            trying to capture /dev/ttyPS1 data *while* GPSD is capturing
            it, are you?=C2=A0 You can't usefully share a resource like a=
<br>
            =C2=A0 serial port -- some characters will go to you, some to
            GPSD.<br>
            <br>
            Now, having said that, yeah, only 768 bytes per update
            interval max.=C2=A0 How many bytes in a typical NMEA sentence=
,
            and how<br>
            =C2=A0 many sentences per interval?<br>
            <br>
            <br>
            <br>
            <o:p></o:p></span></p>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <div>
            <div
style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0in=
 0in">
              <p class=3D"MsoNormal"><b><span style=3D"mso-ligatures:none=
">From:</span></b><span
                  style=3D"mso-ligatures:none"> Marcus D. Leech
                  <a href=3D"mailto:patchvonbraun@gmail.com"
                    moz-do-not-send=3D"true">&lt;patchvonbraun@gmail.com&=
gt;</a>
                  <br>
                  <b>Sent:</b> Wednesday, June 5, 2024 8:56 AM<br>
                  <b>To:</b> <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">usrp-users@lists.ettus.com</a><br>
                  <b>Subject:</b> [USRP-users] Re: GPS fix behavior on
                  USRP E320</span><o:p></o:p></p>
            </div>
          </div>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <div>
            <p class=3D"MsoNormal">On 05/06/2024 08:43, David Raeman via
              USRP-users wrote:<o:p></o:p></p>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal">Hello,<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">I'm having a difficult time getting
              consistent GPS fix behavior from a set of USRP E320
              radios. They are all using UHD 4.4 with the same active
              GPS antenna (Siretta Tango 21, which has a 28dB LNA and
              short ~6" coax run).<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">When outside with a view of the sky an=
d
              6 radios sitting together, 10-15 minutes after power-on,
              some of the radios will have a lock and others will not.
              For radios that get a lock, sometimes they will briefly
              glitch into "unlocked" state briefly every 20-30 seconds
              before reporting as locked again. If I let it sit another
              10-15 minutes, nothing really changes. Looking at the
              output of 'gpsmon' on the radio, the radios which never
              locked will see fewer satellites, and the ones in common
              will have far different SNR levels.<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">I'm trying to find a solution for more
              consistent behavior, especially since these are outside
              with a view of the sky. I confirmed the radio's GPS ANT
              port has the +3.3V bias so I assume the antennas receive
              power as expected.<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">Searching the mailing list, over the
              years this topic has come up a couple times specifically
              with E320 radios. I know the same Jackson Labs LTE-Lite
              SOM is also used in the newer X410 radios, though it's
              configured a bit differently via strapping pins. I think:<o=
:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">* The X410 sets the module in 1Hz mode
              instead of 5Hz.<o:p></o:p></p>
            <p class=3D"MsoNormal">* The X410 uses it in "mobile" mode
              instead of auto-surveying =E2=80=9Cstationary=E2=80=9D mode=
.<o:p></o:p></p>
            <p class=3D"MsoNormal">* Curiously, the E320 seems to connect
              pin 1 (EFC) to pin 2 (NC), though this doesn't make any
              sense based on the LTE-Lite public tech manual. The X410
              leaves them NC.<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">Does anybody know whether any of the
              changes (or others) represent "lessons learned" that would
              improve GPS TTFF or disciplining behavior? I don=E2=80=99t =
mind
              changing resistor populations if there is a reason to. Or
              any other suggestions around this topic?<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
            <p class=3D"MsoNormal">David Raeman<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal"><span style=3D"mso-ligatures:none"><br=
>
                <br>
                <br>
              </span><o:p></o:p></p>
            <pre>_______________________________________________<o:p></o:=
p></pre>
            <pre>USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><o:p></o:p></pre>
            <pre>To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users-leave@lists.ettus.com</a><o:p></o:p></pre>
          </blockquote>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"mso-ligatures:none">IF you move the antennas
              further apart, what happens?<br>
              <br>
              If they are all tightly packed together, there's an
              opportunity for shadowing (small, but, maybe?).<br>
              <br>
              <br>
            </span><o:p></o:p></p>
        </blockquote>
        <p class=3D"MsoNormal"><span style=3D"mso-ligatures:none"><o:p>=C2=
=A0</o:p></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------xuSuLgqkEyp0FuU8j7tZcQrh--

--===============7965040580574840167==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7965040580574840167==--
