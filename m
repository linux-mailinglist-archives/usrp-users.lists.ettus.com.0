Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6168AE8CD
	for <lists+usrp-users@lfdr.de>; Tue, 23 Apr 2024 15:57:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 64C82385103
	for <lists+usrp-users@lfdr.de>; Tue, 23 Apr 2024 09:57:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1713880661; bh=AvcJSSH9TD4lKPYvj2PvevNXoeVEv9z2ySfPJsYeJTg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=JEikfhasyTSX/HV9qgU/6krc5H9giZM7c7AvOeITk9ivome3qsECATU3M+T4mn0II
	 yO1sHAdZ/WPtiSQx1CXrQt/PeGmU+xTuwYRzeIcMRMXvOPfPQlyUpWX0e7+gZNtcwg
	 Gp4mG9wN3G7U75+x1NCly+RESHDwhfufGnWz0AbdZLd1RDJAlAEZwpw+5CEbSrpJTe
	 Nh3b2ApkrkAOLEpHeqbWqEA9/MixyJyYOJDc4Ogla1PdPui1e5YO48eumJD2R5q+4g
	 KBq3gXS/tRLmLRvJleeIJCT6CXWkHPCOGzHuR15El5UJWSqie5Nf5aSsB9wGAIq8mm
	 eY5biP4Y3ZZHw==
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 153783800BF
	for <usrp-users@lists.ettus.com>; Tue, 23 Apr 2024 09:57:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nQ/IH3mr";
	dkim-atps=neutral
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-5a9ec68784cso3145140eaf.2
        for <usrp-users@lists.ettus.com>; Tue, 23 Apr 2024 06:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713880643; x=1714485443; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yx60JWHfioY4OaQ0xA22m+obkXGdqV++YR/7Rhk9zjs=;
        b=nQ/IH3mr8mHL6QVXKWjAI4GrEOZf8bSRH1QBKEf9Y0ONLE+l8LijAjZlAI38Wj9HWI
         aIMFI+8W17l4GW2tlz2ep5VVCE9n9l3o+4MYSMPoU/IBoabMymm5PeuXewdh1VlT6UVc
         /7Vq+5qRb1eUOclQAzpwg514mk4E9UP5ywCj8BDORetcTMRLX0J8bS8a5gImTJba/0Ga
         no6tlPIxF1HJwFoT5u0ud7UGrXxKug2Dm3FbhzJBHX6VUlzc2+ll2/Zc+8SYBTBYexop
         Ryc9u4v8WuEt+4o2wDB9SwQ12oU21mcaALHq+pJf+HmpTjevxEHlVRZW6HjmmqB99s34
         1lCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713880643; x=1714485443;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yx60JWHfioY4OaQ0xA22m+obkXGdqV++YR/7Rhk9zjs=;
        b=SwH97C/FjwlW578d9saTb9SFCx4IuYO6F3F09soHvIO/RahkLwbefrHo7j83Uk3sdq
         h6TQ7BBVtSxghtxKDYumIX5xW9tDpA7eEjf2ehjnxlnEKvEyRKa/l/GUGgh+Ir4V/nuD
         4RUlvMy30PXXn+fR2y9D7tsd4nyZRQSJPbyXWmpuKc4Ib5An1k/Fl9DN4Uta0ovBodMU
         YDC2aNz29c7oqOJWP1sWnCNXoe7+1CJuVz9au8woaiMlMuVzUlI5mD4uQWGSJggZPwzy
         nayAtH4Go967dd5YGTD1cAuc2CM/Ecfb0hbjdT4z6svyAKD6NS3Cv4NzfQ6WeECrebrf
         I6qA==
X-Gm-Message-State: AOJu0YywyyYeI75kxJ/DxcdsTTPoVtLsQSWGqjGpA7aEwa9trqTdur79
	DDb67EdaxUDnbSMUW/AGjLDDjR6VlNKNueFGlNlXszVr32ZlB53ssfQl6A==
X-Google-Smtp-Source: AGHT+IHn5UonTqf3QRKQeh2Fp+WGdi09v0hJjmsl1/9f9NgHHxsKR57vUSP2urYeFUArAT68+9Ql2A==
X-Received: by 2002:a05:6358:ed1b:b0:17e:b867:cb99 with SMTP id hy27-20020a056358ed1b00b0017eb867cb99mr17215389rwb.1.1713880642885;
        Tue, 23 Apr 2024 06:57:22 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id wl2-20020a05620a57c200b0078d6b4abfd7sm5304341qkn.28.2024.04.23.06.57.22
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Apr 2024 06:57:22 -0700 (PDT)
Message-ID: <e0fdc474-d16d-442a-8d6b-ded19e76a979@gmail.com>
Date: Tue, 23 Apr 2024 09:57:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <zOJJ7EgLjbGE8l37A47H9XZKXDcRKXcbAYZ0Ql4IgBg@lists.ettus.com>
 <BN2P110MB1747CB3FD646EE5CC091A28AB712A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN2P110MB1747CB3FD646EE5CC091A28AB712A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: PGPG6L6XEANOMXZ6VSNNVLEGWM5Q5VIN
X-Message-ID-Hash: PGPG6L6XEANOMXZ6VSNNVLEGWM5Q5VIN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: About Two E320's Synchronization using GPSDO's
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PGPG6L6XEANOMXZ6VSNNVLEGWM5Q5VIN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8987134126825433554=="

This is a multi-part message in MIME format.
--===============8987134126825433554==
Content-Type: multipart/alternative;
 boundary="------------1S5pkMeMV9NewOOiK15YnJTe"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------1S5pkMeMV9NewOOiK15YnJTe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 22/04/2024 10:56, David Raeman via USRP-users wrote:
>
> Hello,
>
> I am also using multiple distributed E320s for an application that=20
> uses the integrated GPSDO to have a common sense of time for precise=20
> TOA estimation. I don=E2=80=99t have the measurements at my fingertips =
at the=20
> moment, but I found that synchronization was substantially better=20
> using a high-quality external clock/time source (e.g. Octoclock or a=20
> good OCXO), compared to using the integrated GPSDO.
>
> The synchronization performance of the integrated GPSDO improved if I=20
> let the radios sit for quite a while. For example, if two radios had=20
> GPS lock for 5 minutes before running an experiment, relative carrier=20
> drift would be measurably worse than if they were allowed to sit with=20
> GPS lock for an hour. I believe that once the GPS receiver acquires=20
> time, the 10 MHz reference convergence occurs very slowly.
>
> In the case of a using an external clock, to get good phase=20
> performance I also had to power down the internal GPSDO. The RF switch=20
> used to select between the two sources seems to introduce some=20
> coupling/interference when both sources are present at the switch=20
> inputs. My old mailing list inquiry about the problem is here=20
> <https://lists.ettus.com/empathy/thread/XK7DJMNXTZVTKHGVAPZFJL3NZEF73XM=
E>.=20
> I pushed a patch to Ettus, incorporated into UHD 4.4, which allows you=20
> to power off the integrated GPSDO by passing =E2=80=9Cenable_gps=3D0=E2=
=80=9D in your=20
> UHD session args.
>
> Interestingly, in that thread somebody mentions having a similar issue=20
> on a B210 device if the GPSDO add-on module is installed, which=20
> doesn=E2=80=99t seem to have been an issue with your prior results.
>
> I can try to follow-up with some measurements from our experiments,=20
> and I=E2=80=99d appreciate any additional insights you might find as we=
ll=20
> since this is still an active project for me.
>
> -David
>
In my experience, the 1PPS from a GPSDO will vary in phase compared to=20
another GPSDO on the same antenna by
 =C2=A0 amounts up to 10s of ns.=C2=A0 If two radios are setting their ti=
mestamp=20
clocks to "next PPS", there's absolutely ZERO
 =C2=A0 guarantee that they'll agree, on scales of 10s of nanoseconds, on=
=20
what time it is.

Further, phase-drift between two GPSDO on the 10MHz output, even when=20
connected to the same antenna, can be
 =C2=A0 quite noticeable, depending on what your observation interval is.

If you want really-good phase/frequency/time alignment of multiple=20
radios, you need a shared, common, reference.
 =C2=A0 Distributed implementations that are assuming that the GPSDO will=
=20
"solve everything" are "in a state of sin".

There are many articles "out there" on what to expect from a GPSDO.=20
Here's one I just picked at random:

https://www.febo.com/pages/stability/


> *From:* edenmclaughlin123@gmail.com <edenmclaughlin123@gmail.com>
> *Sent:* Monday, April 22, 2024 4:24 AM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] About Two E320's Synchronization using GPSDO's
>
> We have a setup with two USRP devices, attempting to acquire signals'=20
> time of arrival (TOA) with matched filters. We can observe stable and=20
> accurate TOA using USB-driven devices (i.e., B210's) with a single=20
> external PPS and 10MHz feed.
>
> However, when testing the design with two E320's using their=20
> integrated GPSDO as the clock and timing source, we could not achieve=20
> a steady TOA anywhere close to the clock performance specified here=20
> <https://www.ettus.com/wp-content/uploads/2019/01/USRP_E320_Datasheet.p=
df>.=20
> A constant drift over time (i.e., +50 ns over ~120 seconds) was=20
> observed on one E320 device with respect to the other for each run. We=20
> are almost certain that neither of the devices is damaged (they are=20
> fresh out of the box), also we are aware of this=20
> <https://lists.ettus.com/empathy/thread/EDXCIKFY5LW7IEQN2JZOGXGWNCBELU3=
F?hash=3D4KGAPCNGJL6WXKC4IBZBITVNSFTDXXRK#4KGAPCNGJL6WXKC4IBZBITVNSFTDXXR=
K>=20
> issue.
>
> The setup includes one source signal symmetrically fed to the devices=20
> from the same RF channels. The E320 devices share the same GPS=20
> antenna, which is an externally fed active GPS antenna while the E320=20
> GPSDO's ports are DC blocked.
>
> We are yet to try:
>
>  1. Observing the behavior with another pair of E320 devices.
>  2. Feeding the source signal from the other RF ends.
>  3. Synchronizing the E320's with an external clock and timer, as we
>     have done with the B210 devices.
>
> We are wondering if there are any software tricks applicable specific=20
> to the E320 devices that we should be employing. Any help will be=20
> appreciated!
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------1S5pkMeMV9NewOOiK15YnJTe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 22/04/2024 10:56, David Raeman via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB1747CB3FD646EE5CC091A28AB712A@BN2P110MB1747.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}span.EmailStyle21
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}ol
	{margin-bottom:0in;}ul
	{margin-bottom:0in;}</style>
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hello,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I am also using multiple distributed E320s
          for an application that uses the integrated GPSDO to have a
          common sense of time for precise TOA estimation. I don=E2=80=99=
t have
          the measurements at my fingertips at the moment, but I found
          that synchronization was substantially better using a
          high-quality external clock/time source (e.g. Octoclock or a
          good OCXO), compared to using the integrated GPSDO.<o:p></o:p><=
/p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">The synchronization performance of the
          integrated GPSDO improved if I let the radios sit for quite a
          while. For example, if two radios had GPS lock for 5 minutes
          before running an experiment, relative carrier drift would be
          measurably worse than if they were allowed to sit with GPS
          lock for an hour. I believe that once the GPS receiver
          acquires time, the 10 MHz reference convergence occurs very
          slowly.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">In the case of a using an external clock,
          to get good phase performance I also had to power down the
          internal GPSDO. The RF switch used to select between the two
          sources seems to introduce some coupling/interference when
          both sources are present at the switch inputs. My old mailing
          list inquiry about the problem is <a
href=3D"https://lists.ettus.com/empathy/thread/XK7DJMNXTZVTKHGVAPZFJL3NZE=
F73XME"
            moz-do-not-send=3D"true">
            here</a>. I pushed a patch to Ettus, incorporated into UHD
          4.4, which allows you to power off the integrated GPSDO by
          passing =E2=80=9Cenable_gps=3D0=E2=80=9D in your UHD session ar=
gs.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Interestingly, in that thread somebody
          mentions having a similar issue on a B210 device if the GPSDO
          add-on module is installed, which doesn=E2=80=99t seem to have =
been an
          issue with your prior results.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I can try to follow-up with some
          measurements from our experiments, and I=E2=80=99d appreciate a=
ny
          additional insights you might find as well since this is still
          an active project for me.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">-David</p>
      </div>
    </blockquote>
    In my experience, the 1PPS from a GPSDO will vary in phase compared
    to another GPSDO on the same antenna by<br>
    =C2=A0 amounts up to 10s of ns.=C2=A0 If two radios are setting their
    timestamp clocks to "next PPS", there's absolutely ZERO<br>
    =C2=A0 guarantee that they'll agree, on scales of 10s of nanoseconds,=
 on
    what time it is.<br>
    <br>
    Further, phase-drift between two GPSDO on the 10MHz output, even
    when connected to the same antenna, can be<br>
    =C2=A0 quite noticeable, depending on what your observation interval =
is.<br>
    <br>
    If you want really-good phase/frequency/time alignment of multiple
    radios, you need a shared, common, reference.<br>
    =C2=A0 Distributed implementations that are assuming that the GPSDO w=
ill
    "solve everything" are "in a state of sin".<br>
    <br>
    There are many articles "out there" on what to expect from a GPSDO.=C2=
=A0
    Here's one I just picked at random:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://www.febo.com/pages=
/stability/">https://www.febo.com/pages/stability/</a><br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB1747CB3FD646EE5CC091A28AB712A@BN2P110MB1747.NAMP110.=
PROD.OUTLOOK.COM">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div
style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0in=
 0in">
          <p class=3D"MsoNormal"><b>From:</b> <a class=3D"moz-txt-link-ab=
breviated" href=3D"mailto:edenmclaughlin123@gmail.com">edenmclaughlin123@=
gmail.com</a>
            <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:edenmclaugh=
lin123@gmail.com">&lt;edenmclaughlin123@gmail.com&gt;</a>
            <br>
            <b>Sent:</b> Monday, April 22, 2024 4:24 AM<br>
            <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mail=
to:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
            <b>Subject:</b> [USRP-users] About Two E320's
            Synchronization using GPSDO's<o:p></o:p></p>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p>We have a setup with two USRP devices, attempting to acquire
          signals' time of arrival (TOA) with matched filters. We can
          observe stable and accurate TOA using USB-driven devices
          (i.e., B210's) with a single external PPS and 10MHz feed.<o:p><=
/o:p></p>
        <p class=3D"MsoNormal"
          style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Ho=
wever,
          when testing the design with two E320's using their integrated
          GPSDO as the clock and timing source, we could not achieve a
          steady TOA anywhere close to the clock performance specified <a
href=3D"https://www.ettus.com/wp-content/uploads/2019/01/USRP_E320_Datash=
eet.pdf"
title=3D"https://www.ettus.com/wp-content/uploads/2019/01/USRP_E320_Datas=
heet.pdf"
            moz-do-not-send=3D"true">
            here</a>. A constant drift over time (i.e., +50 ns over ~120
          seconds) was observed on one E320 device with respect to the
          other for each run. We are almost certain that neither of the
          devices is damaged (they are fresh out of the box), also we
          are aware of
          <a
href=3D"https://lists.ettus.com/empathy/thread/EDXCIKFY5LW7IEQN2JZOGXGWNC=
BELU3F?hash=3D4KGAPCNGJL6WXKC4IBZBITVNSFTDXXRK#4KGAPCNGJL6WXKC4IBZBITVNSF=
TDXXRK"
title=3D"https://lists.ettus.com/empathy/thread/EDXCIKFY5LW7IEQN2JZOGXGWN=
CBELU3F?hash=3D4KGAPCNGJL6WXKC4IBZBITVNSFTDXXRK#4KGAPCNGJL6WXKC4IBZBITVNS=
FTDXXRK"
            moz-do-not-send=3D"true">
            this</a> issue.<o:p></o:p></p>
        <p>The setup includes one source signal symmetrically fed to the
          devices from the same RF channels. The E320 devices share the
          same GPS antenna, which is an externally fed active GPS
          antenna while the E320 GPSDO's ports are DC blocked.<o:p></o:p>=
</p>
        <p>We are yet to try:<o:p></o:p></p>
        <ol type=3D"1" start=3D"1">
          <li style=3D"mso-list:l0 level1 lfo1">Observing the behavior
            with another pair of E320 devices.<o:p></o:p></li>
          <li style=3D"mso-list:l0 level1 lfo1">Feeding the source signal
            from the other RF ends.<o:p></o:p></li>
          <li style=3D"mso-list:l0 level1 lfo1">Synchronizing the E320's
            with an external clock and timer, as we have done with the
            B210 devices.<o:p></o:p></li>
        </ol>
        <p>We are wondering if there are any software tricks applicable
          specific to the E320 devices that we should be employing. Any
          help will be appreciated!<o:p></o:p></p>
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

--------------1S5pkMeMV9NewOOiK15YnJTe--

--===============8987134126825433554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8987134126825433554==--
