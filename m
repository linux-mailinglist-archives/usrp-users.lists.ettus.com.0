Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C683E96F1
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 19:39:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1DEEF384E18
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 13:39:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OMWeLqoI";
	dkim-atps=neutral
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id C23B5384DAB
	for <USRP-users@lists.ettus.com>; Wed, 11 Aug 2021 13:39:00 -0400 (EDT)
Received: by mail-qk1-f171.google.com with SMTP id 14so3259411qkc.4
        for <USRP-users@lists.ettus.com>; Wed, 11 Aug 2021 10:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=6tqJVcBL8XnQXc2wgL0a+luE5x06GTzxXfKs721Sa4M=;
        b=OMWeLqoIS8goEpMoPkxCA6bNoIvB13hqMAQhRf5zDlGCRWxxNBk74PV649SRET+sEv
         7oTfgu3QRiGel1KvhifYIver0S9QQbUUrR8AhY8inTRcbfDWEFTOgd2XBjMoru6tg3Bw
         beXDxcc4oWrU+AbaMV0+h/TsUdD17r/LHLAOQEakbHyMixii4NQuQkb+fI/vrf9BqQPd
         kP142g4IibruBFzg2d8LNt+/YVvY6vrtxfYHFYVitfEZOiFGZEV4AllNRPxxiL/6wcmL
         XLj5VMWLNKAenVWgXHQ+6GvUALhbj9m29dAKkKxGc3mq8/TKBb+KjzJBRKp6CZfzILC5
         kFHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=6tqJVcBL8XnQXc2wgL0a+luE5x06GTzxXfKs721Sa4M=;
        b=hn4/sx/s17Y/ztZnKOfsy0sASbO/2L9zx6kggDb8yTMOc+3ih825fd3ClhP1NBm9ua
         2fy8MNdMwGC2y1AtTEOpSggf6AiomN26G32oCm8o5H1E4BQIqdqQqoR/BTZjnC8v4OVG
         PtVAX8StP+p8+5Q5w+ifI3bIK77jH1ZaaIwyl6W0S/0Fruqs14QGmnRfQRAVa0tpU6yG
         yl27m183/tOf8Qmd0XCjIIlkHb/kycu+lHLJFKOFKO/CT4z2h1rb40a9pfWOh3CG5iYN
         e3bAcOhZfJ1dTCMUyncyn0GvjgDXWsgvYqCRIxcO1oIn0g7roNfP/booJRo5MeBMDvhg
         HlNA==
X-Gm-Message-State: AOAM530p5UTbpb4JlTZ5BmGmQa6wiBgM9qhuy2vbjSKMjinGFUOtks41
	F0zTUHPoEHGi+jSypDJ0HMHotbof5u2zxQ==
X-Google-Smtp-Source: ABdhPJw9YWLC7sSHRvLamNxGRuF+KtX0Z+AudmGP/1SnylqSd/gN2lYc1K0UJDYNjdMDSdSWLzSTNQ==
X-Received: by 2002:a37:4053:: with SMTP id n80mr144605qka.336.1628703539953;
        Wed, 11 Aug 2021 10:38:59 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id r77sm13115988qke.15.2021.08.11.10.38.59
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Aug 2021 10:38:59 -0700 (PDT)
Message-ID: <61140B32.1020506@gmail.com>
Date: Wed, 11 Aug 2021 13:38:58 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Anton Ottosson <antonott@kth.se>
References: <ca21b213473c4123827230dfe49c903f@kth.se>,<1C2330B0-309C-460B-AD6C-CE956F051D30@gmail.com> <9234b191f02a41169c046f50ab73e311@kth.se>
In-Reply-To: <9234b191f02a41169c046f50ab73e311@kth.se>
Message-ID-Hash: GR3UHPYHUFWOVFNT2KBELCYOT7HHJD6U
X-Message-ID-Hash: GR3UHPYHUFWOVFNT2KBELCYOT7HHJD6U
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 Center frequency tuning resolution
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GR3UHPYHUFWOVFNT2KBELCYOT7HHJD6U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8041533866055740975=="

This is a multi-part message in MIME format.
--===============8041533866055740975==
Content-Type: multipart/alternative;
 boundary="------------070206070101060700040604"

This is a multi-part message in MIME format.
--------------070206070101060700040604
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/11/2021 01:33 PM, Anton Ottosson wrote:
>
> That's great to hear! Thank you! By the way, is this documented=20
> anywhere (I might have to give a source at some point)?
>

https://files.ettus.com/manual/page_general.html#general_tuning

Then there's the source-code for the relevant FPGA image...

Keep in mind that very-fine tuning resolution doesn't really get you=20
very far when the system reference clock produces much
   more uncertainty than your tuning step.

The on-board clock on the N210 is (AFAIR) 2.5PPM.   So, sub-1Hz=20
resolution isn't terribly meaningful...


>
> Best,
>
> Anton
>
> -----------------------------------------------------------------------=
-
> *From:* Marcus D Leech <patchvonbraun@gmail.com>
> *Sent:* Wednesday, August 11, 2021 7:26:20 PM
> *To:* Anton Ottosson
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* Re: [USRP-users] N210 Center frequency tuning resolution
> It=E2=80=99s under 1Hz owing to the resolution of the DDC and/or DUC.
>
> Even though individual daughter cards will have a synthesizer=20
> resolution much larger than that, the tuning code uses that knowledge=20
> and programming of the DDC / DUC to deliver subHz resolution.
>
>
>
> Sent from my iPhone
>
>> On Aug 11, 2021, at 1:23 PM, Anton Ottosson <antonott@kth.se> wrote:
>>
>> =EF=BB=BF
>>
>> Hi,
>>
>>
>> Does any one here know what the center frequency tuning resolution is=20
>> for the N210, or how one might find out? By tuning resolution I mean,=20
>> basically, the step size when selecting center frequency. I have been=20
>> looking over the Devices & Usage Manual=20
>> <https://files.ettus.com/manual/page_devices.html>, but have not been=20
>> able to find an answer.
>>
>>
>> Best,
>>
>> Anton
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------070206070101060700040604
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/11/2021 01:33 PM, Anton Ottosson
      wrote:<br>
    </div>
    <blockquote cite=3D"mid:9234b191f02a41169c046f50ab73e311@kth.se"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Du=
tf-8">
      <style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top=
:0;margin-bottom:0;} --></style>
      <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
        dir=3D"ltr">
        <p>That's great to hear! Thank you! By the way, is this
          documented anywhere (I might have to give a source at some
          point)?</p>
      </div>
    </blockquote>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_general.html#general_tuning">https://files.ettus.com/manual/pag=
e_general.html#general_tuning</a><br>
    <br>
    Then there's the source-code for the relevant FPGA image...<br>
    <br>
    Keep in mind that very-fine tuning resolution doesn't really get you
    very far when the system reference clock produces much<br>
    =C2=A0 more uncertainty than your tuning step.<br>
    <br>
    The on-board clock on the N210 is (AFAIR) 2.5PPM.=C2=A0=C2=A0 So, sub=
-1Hz
    resolution isn't terribly meaningful...<br>
    <br>
    <br>
    <blockquote cite=3D"mid:9234b191f02a41169c046f50ab73e311@kth.se"
      type=3D"cite">
      <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
        dir=3D"ltr">
        <p><br>
        </p>
        <p>Best,</p>
        <p>Anton<br>
        </p>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          color=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b> Mar=
cus
          D Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Wednesday, August 11, 2021 7:26:20 PM<br>
          <b>To:</b> Anton Ottosson<br>
          <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
          <b>Subject:</b> Re: [USRP-users] N210 Center frequency tuning
          resolution</font>
        <div>=C2=A0</div>
      </div>
      <div>It=E2=80=99s under 1Hz owing to the resolution of the DDC and/=
or
        DUC.=C2=A0
        <div><br>
        </div>
        <div>Even though individual daughter cards will have a
          synthesizer resolution much larger than that, the tuning code
          uses that knowledge and programming of the DDC / DUC to
          deliver subHz resolution.=C2=A0</div>
        <div><br>
        </div>
        <div><br>
          <br>
          <div dir=3D"ltr">Sent from my iPhone</div>
          <div dir=3D"ltr"><br>
            <blockquote type=3D"cite">On Aug 11, 2021, at 1:23 PM, Anton
              Ottosson <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:=
antonott@kth.se">&lt;antonott@kth.se&gt;</a> wrote:<br>
              <br>
            </blockquote>
          </div>
          <blockquote type=3D"cite">
            <div dir=3D"ltr">=EF=BB=BF
              <div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-=
size:
                12pt; color: rgb(0, 0, 0); font-family: Calibri,
                Helvetica, sans-serif, &quot;EmojiFont&quot;,
                &quot;Apple Color Emoji&quot;, &quot;Segoe UI
                Emoji&quot;, NotoColorEmoji, &quot;Segoe UI
                Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
                <p>Hi,</p>
                <p><br>
                </p>
                <p>Does any one here know what the center frequency
                  tuning resolution is for the N210, or how one might
                  find out? By tuning resolution I mean, basically, the
                  step size when selecting center frequency. I have been
                  looking over the
                  <a moz-do-not-send=3D"true"
                    href=3D"https://files.ettus.com/manual/page_devices.h=
tml"
                    class=3D"OWAAutoLink">Devices &amp; Usage Manual</a>,
                  but have not been able to find an answer.</p>
                <p><br>
                </p>
                <p>Best,</p>
                <p>Anton<br>
                </p>
              </div>
              <span>_______________________________________________</span=
><br>
              <span>USRP-users mailing list --
                <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp=
-users@lists.ettus.com">usrp-users@lists.ettus.com</a></span><br>
              <span>To unsubscribe send an email to
                <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp=
-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a></span>=
<br>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------070206070101060700040604--

--===============8041533866055740975==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8041533866055740975==--
