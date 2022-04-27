Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 700295118A1
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 16:09:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9ACF7384CAD
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 10:09:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651068555; bh=2WLqE2ZYdrgTDaQ1SKkitZD6Fl1MYDl2cHEIXXrY/KU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=F/pdEH1y8J0+EBFUpQ+EW5cG/n11wzqXVS4TPg5WkgYi44SgezcONazIDIvkuK+EL
	 vzap1AFSoIkXC5GQJHjxfes48oXZw7UYAOPHoJ78BLXCLVSwaxjAbQXn8uLP0mJIeY
	 2eXl/c2pdrJngwtQpsmUMAQf10e1N2PkZ1uo0UbizRq8kURXtaWHqkgMzoM6afFYcf
	 0orUtRwL6Y1z7M1vVWDOYid09oZI6FFRrWynatasci+aHOtOmT3u3uuygbKP4Qzis2
	 1CvHigKnOHTUp28pwoWujJHj+CNnGvhCHcWaxrUO2rIAFbA3J1yz/yt3PR7BhtchFO
	 Hr6iHBWBSTiYA==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id ED2BF3844A0
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 10:07:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VmKSEbmp";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id j6so1322255qkp.9
        for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 07:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=z5OEO0OKvQ7RoS48L2OMrxo01wkZOS4YIc0+iwRtI/U=;
        b=VmKSEbmpMTOuIevbsrbMRfKmCkFf9ogL1v+CJKqCPjBeyCr54W/AnNe4g+qj9c3b+0
         2EaNznt5OENzrRxopjf+0N9gS4ezALFQWaxCUay+TMPiKWFejKKMqnKYVEhitMyk4vcY
         PykOO989LAoSb3Mh/K2vfolZXnBPhfT5un3DQSlOjvGjfWwMLs7Do5Q7/so7D4HVRpB0
         FEzuj2e902a3y4wafqakQs1OPkcAnCPtmQLBZCwIIJrAXXgDXX8D95icyPGcoSBQW5az
         MDbc7KaLwrLk/6L3J+z6Luha6Jm7fYlmCzBlbOYZztpb/2RcgE5z4htQE8oJNrmc448n
         kj+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=z5OEO0OKvQ7RoS48L2OMrxo01wkZOS4YIc0+iwRtI/U=;
        b=XCB16IOOZxRrlyM6wMKrN0/tva10bw8Sl8wTEaVRSk7jIxf1Lwj7YEfZpqtUIkuMqX
         854dUJhvkOeBm9jbrubBeClHdXX8MAi3awQXC9ALaBdf49mrWgoFjC8rkyeBetzsR2jx
         ZiTvTw8JcNKTwDSXJT4zxUevHavAXIRNxiFMgujhJsALpTZapT48aNETOI0/QVHoc6fE
         5BmcYEZglYtcrIH4p/v1v1cYfFk0RrqQi5pxmK3dEXTodIjA54rWGi+LRD93OkGZlA6/
         l+y/nhibhL/3nVt+R/uqEMpIyvf1B/+ZKKvJwV+QzYtFl4M141cu3N68A0uTHIxpz5dc
         /4Dw==
X-Gm-Message-State: AOAM5328NpxSzqYZcF1SqEJFX0Rl/yQwKu5AFd9kr3TFyTPTfoIDmbtN
	As1p6JN0m4Pxit5dKL6r9QN7LZK1rb4=
X-Google-Smtp-Source: ABdhPJwmcQVpB0dlpPRDpEk7Fctww7xe3Bv+qkAm2Q4+z5XS+nkUEWOUH6VUiSW9XPleu5HobXvAoQ==
X-Received: by 2002:a37:a50c:0:b0:69f:8e6e:8aa with SMTP id o12-20020a37a50c000000b0069f8e6e08aamr1316940qke.680.1651068475049;
        Wed, 27 Apr 2022 07:07:55 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id b11-20020ac85bcb000000b002f374e12069sm3461286qtb.18.2022.04.27.07.07.54
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 07:07:54 -0700 (PDT)
Message-ID: <c90bfd7b-09aa-bcd3-4e7e-54b7619069c7@gmail.com>
Date: Wed, 27 Apr 2022 10:07:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAPT2EegX83McE_TznHb_vPcsgJSw46mBfE9O5mjnnGx8hrt3uw@mail.gmail.com>
 <17c6ff8a-23d3-857d-cd9e-8c7481f5f225@gmail.com>
 <CAL0m=NYwuKBAiyEj_-rdu2ypjsV+vjfrZfw3HQz_upLdd09+cA@mail.gmail.com>
 <CAL0m=NbeN7fBXYHWkbCd60zVZjOWVntDjhzJrpGayb7O1Fwsnw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAL0m=NbeN7fBXYHWkbCd60zVZjOWVntDjhzJrpGayb7O1Fwsnw@mail.gmail.com>
Message-ID-Hash: KCZQM2I4ZP5MNMAH57YPE6NKO24CU4MT
X-Message-ID-Hash: KCZQM2I4ZP5MNMAH57YPE6NKO24CU4MT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 with two BasicRX Daughterboards
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KCZQM2I4ZP5MNMAH57YPE6NKO24CU4MT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6610810476073194070=="

This is a multi-part message in MIME format.
--===============6610810476073194070==
Content-Type: multipart/alternative;
 boundary="------------LoS0a2TV6mym2LOm33szOrrj"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------LoS0a2TV6mym2LOm33szOrrj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-04-22 12:32, Zeng, Huacheng wrote:
> Hi All,
>
> Can anyone having successful experience with X310=C2=A0+=C2=A0two Basic=
RX=20
> Daughterboards confirm that such a setup works? We can make it work=20
> for the following settings: i) X310=C2=A0+ one BasicRX, ii) X310=C2=A0+=
 two=20
> BasicTX, iii) X310=C2=A0+ two SBX for both TX and RX, iv) two N210=C2=A0=
+ MIMO=20
> cable=C2=A0+ two BasicRX. But we are not able to make it work for X310=C2=
=A0+=20
> two BasicRX. We tried different UHD versions (4.2, 3.15, etc.) and got=20
> no luck.
>
> Any=C2=A0suggestions would=C2=A0be appreciated!
>
> Hua
>
There is some updated documentation for basic_rx with X3xx with UHD 4 her=
e:

https://files.ettus.com/manual/page_dboards.html#dboards_basicrx


>
>
> On Tue, Apr 19, 2022 at 10:44 PM Zeng, Huacheng=20
> <huacheng.zeng@gmail.com> wrote:
>
>     Below is a more detailed description of our issue.
>
>     1. We have an X310 with two BasicRX boards installed (no BasicTX).
>     We tried to read the two data streams from X310 on a computer at a
>     sampling rate 5Msps. The computer displays "OOOOOOOOOOOO" overflow
>     constantly. We tried other sampling rates such as 1Msps and
>     10Msps, the observation is the same.
>
>     We found that the LED lights on the X310 panel are abnormal. When
>     X310 works in RX mode, the two LED lights (RF A's RX2 LED and RF
>     B's RX2 LED) should be on, but we observed they were flashing.
>     Also, the LINK LED should be on in RED, but we observed that it
>     was flashing in ORANGE.
>
>     We reloaded the FPGA image, but the problem is consistent.
>
>     2. We removed BasicRX from X310's RF B channel, and tested one
>     data stream from X310 RF A's channel, it works (no overflow). We
>     are sure that the two BasicRX boards have no problem, as they are
>     brand new.
>
>     3. We removed two BasicRX boards and installed two BasicTX boards
>     on the same X310. We used GNU RADIO to send two data streams to
>     X310 for signal transmission. It works well and has no overflow
>     issue.
>
>     We want to test X310's RF B channel, but we do not know how to set
>     the parameters so that GNU Radio can read the data stream from
>     X310's RF B channel. Would it be an argument like "subdev=3DB"? It
>     looks like GNU Radio always gets data stream from RF A channel if
>     we set the channel number to 1. Please suggest if it is possible.
>
>     Any suggestion and help would be appreciated!
>
>
>     On Tue, Apr 19, 2022 at 6:03 PM Marcus D. Leech
>     <patchvonbraun@gmail.com> wrote:
>
>         On 2022-04-19 15:05, Shichen Zhang wrote:
>         > Hello everyone,
>         >
>         > I am doing some experiments=C2=A0and I need to build the 2 by=
 2
>         > communication using X310 with the=C2=A0BasicRX Daughterboard.=
 I
>         use the
>         > X310 as both the transmitter and receiver. I can
>         successfully test the
>         > 1 by 1 case, however, when I test the 2 by 2 case, the overfl=
ow
>         > happened and the program could not be stopped. The RF B
>         channel seems
>         > not to work ( LED light for RF B RX not flash).
>         >
>         > I have attached the flowchart for=C2=A0your reference.
>         >
>         > Best,
>         > SZ
>         >
>         What is your complete hardware configuration?=C2=A0 I assume 2=C2=
=A0 x
>         BasicRX and
>         2 x Basic TX?
>
>         It may just be the case that your computer simply isn't up to
>         the task
>         of moving 20Mssp of data in and out of the radio, along with
>         doing 2 x
>         FFTs and computing the
>         =C2=A0=C2=A0 noise sources.
>
>         _______________________________________________
>         USRP-users mailing list -- usrp-users@lists.ettus.com
>         To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------LoS0a2TV6mym2LOm33szOrrj
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-04-22 12:32, Zeng, Huacheng
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAL0m=3DNbeN7fBXYHWkbCd60zVZjOWVntDjhzJrpGayb7O1Fwsnw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Hi All,</div>
        <div><br>
        </div>
        <div>Can anyone having successful experience with X310=C2=A0+=C2=A0=
two
          BasicRX Daughterboards confirm that such a setup works? We can
          make it work for the following settings: i) X310=C2=A0+ one
          BasicRX, ii) X310=C2=A0+ two BasicTX, iii) X310=C2=A0+ two SBX =
for both
          TX and RX, iv) two N210=C2=A0+ MIMO cable=C2=A0+ two BasicRX. B=
ut we are
          not able to make it work for X310=C2=A0+ two BasicRX. We tried
          different UHD versions (4.2, 3.15, etc.) and got no luck.=C2=A0=
</div>
        <div><br>
        </div>
        <div>Any=C2=A0suggestions would=C2=A0be appreciated!</div>
        <div><br>
        </div>
        <div>Hua</div>
        <div><br>
        </div>
      </div>
    </blockquote>
    There is some updated documentation for basic_rx with X3xx with UHD
    4 here:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_dboards.html#dboards_basicrx">https://files.ettus.com/manual/pa=
ge_dboards.html#dboards_basicrx</a><br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAL0m=3DNbeN7fBXYHWkbCd60zVZjOWVntDjhzJrpGayb7O1Fwsnw@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 19, 2022 at
            10:44 PM Zeng, Huacheng &lt;<a
              href=3D"mailto:huacheng.zeng@gmail.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">hu=
acheng.zeng@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div dir=3D"ltr">Below is a more detailed description of our
              issue. <br>
              <br>
              1. We have an X310 with two BasicRX boards installed (no
              BasicTX). We tried to read the two data streams from X310
              on a computer at a sampling rate 5Msps. The computer
              displays "OOOOOOOOOOOO" overflow constantly. We tried
              other sampling rates such as 1Msps and 10Msps, the
              observation is the same. <br>
              <br>
              We found that the LED lights on the X310 panel are
              abnormal. When X310 works in RX mode, the two LED lights
              (RF A's RX2 LED and RF B's RX2 LED) should be on, but we
              observed they were flashing. Also, the LINK LED should be
              on in RED, but we observed that it was flashing in ORANGE.
              <br>
              <br>
              We reloaded the FPGA image, but the problem is consistent.
              <br>
              <br>
              2. We removed BasicRX from X310's RF B channel, and tested
              one data stream from X310 RF A's channel, it works (no
              overflow). We are sure that the two BasicRX boards have no
              problem, as they are brand new. <br>
              <br>
              3. We removed two BasicRX boards and installed two BasicTX
              boards on the same X310. We used GNU RADIO to send two
              data streams to X310 for signal transmission. It works
              well and has no overflow issue. <br>
              <br>
              We want to test X310's RF B channel, but we do not know
              how to set the parameters so that GNU Radio can read the
              data stream from X310's RF B channel. Would it be an
              argument like "subdev=3DB"? It looks like GNU Radio always
              gets data stream from RF A channel if we set the channel
              number to 1. Please suggest if it is possible. <br>
              <br>
              Any suggestion and help would be appreciated!<br>
              <br>
            </div>
            <br>
            <div class=3D"gmail_quote">
              <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 19, 2022 =
at
                6:03 PM Marcus D. Leech &lt;<a
                  href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blan=
k"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">patchvonbraun@gmail.com</a>&gt;
                wrote:<br>
              </div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px
                0.8ex;border-left:1px solid
                rgb(204,204,204);padding-left:1ex">On 2022-04-19 15:05,
                Shichen Zhang wrote:<br>
                &gt; Hello everyone,<br>
                &gt;<br>
                &gt; I am doing some experiments=C2=A0and I need to build=
 the
                2 by 2 <br>
                &gt; communication using X310 with the=C2=A0BasicRX
                Daughterboard. I use the <br>
                &gt; X310 as both the transmitter and receiver. I can
                successfully test the <br>
                &gt; 1 by 1 case, however, when I test the 2 by 2 case,
                the overflow <br>
                &gt; happened and the program could not be stopped. The
                RF B channel seems <br>
                &gt; not to work ( LED light for RF B RX not flash).<br>
                &gt;<br>
                &gt; I have attached the flowchart for=C2=A0your referenc=
e.<br>
                &gt;<br>
                &gt; Best,<br>
                &gt; SZ<br>
                &gt;<br>
                What is your complete hardware configuration?=C2=A0 I ass=
ume
                2=C2=A0 x BasicRX and <br>
                2 x Basic TX?<br>
                <br>
                It may just be the case that your computer simply isn't
                up to the task <br>
                of moving 20Mssp of data in and out of the radio, along
                with doing 2 x <br>
                FFTs and computing the<br>
                =C2=A0=C2=A0 noise sources.<br>
                <br>
                _______________________________________________<br>
                USRP-users mailing list -- <a
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.=
com</a><br>
                To unsubscribe send an email to <a
                  href=3D"mailto:usrp-users-leave@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">usrp-users-leave@lists.=
ettus.com</a><br>
              </blockquote>
            </div>
          </blockquote>
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

--------------LoS0a2TV6mym2LOm33szOrrj--

--===============6610810476073194070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6610810476073194070==--
