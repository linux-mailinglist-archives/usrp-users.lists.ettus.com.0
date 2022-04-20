Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDF3508ADD
	for <lists+usrp-users@lfdr.de>; Wed, 20 Apr 2022 16:36:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2A9D2384810
	for <lists+usrp-users@lfdr.de>; Wed, 20 Apr 2022 10:36:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650465369; bh=pe3WuS9oic+miQkmJj0FJ6w4fH0dkqutshs4LQU4svY=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Z3g9A2KSsa+hNzUha4MOLyk5m68zrVir9DB2az9tgLzag7KdrPzFXtB1XvzMUUngf
	 /SyOFSWLUnK4i41CYS1/cqTP9oAYdWv26Xw2cVVEcdYLFEo0g5NniAma502GbiwWED
	 HwtjvtXlUZxW3wyqnQ00LNcv/kSuP3PuXHNZtp5hjE54mG8zaKvqJvksIGX7dJPU1p
	 C3vrN7d0BB/cP39RUFlVVjCrybLw+zP9MZKjDnieHFdYRplhkD2lgfAQBJ1cT7oDmP
	 X2Av3782eZ0+hukAcmZzUwtaBFh032a6RHRN+jGHwEeOYVqwCLwqaA9Xw101qnw5xA
	 eky8IVjYGtAuA==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 5947B3845D0
	for <usrp-users@lists.ettus.com>; Wed, 20 Apr 2022 10:35:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RhRORhAV";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id a5so1456255qvx.1
        for <usrp-users@lists.ettus.com>; Wed, 20 Apr 2022 07:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=WaMFm8Cs5EBnmjAdsSHaf+cS1GMb1VGTZAUYwaYJbIY=;
        b=RhRORhAVzwk9kqE+TjSwjsXfdI/AajXDVxacczFXqt7oVJGksm3ioLX+eDGAckzaHE
         oLM92GXCynuqPmqDQwBfFk23SOGdolPBT7fjL+cWI7TpLWktqiSUH6v3eATniTcTA4Ot
         hs7KvEzQQi+VFq2uA2rRUnaO85W2uhRI6CEL1JAhGvj5SwW6huOMxo3pv2/GCnFARjaS
         YkzzI+duoKwx9F8itlu1SJnUGuTgB0uxjOVTfS0qExf/q6lMJpecmVvDjeLSl5KCWukq
         NqAXSpB4oSF4l9JwsUrecMYSRL6NMz0fKpmocx+KaqGZEuBF53p8zFAfE/pMWEz7EDqB
         VERg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=WaMFm8Cs5EBnmjAdsSHaf+cS1GMb1VGTZAUYwaYJbIY=;
        b=fOtH/+VBTimUd0gCaRKeBhY43SdlNLjpZzpu1K1MjSW24qMan5Vw23Hzqr+UmHvN8n
         C2bXsB59eMvs3/49GpYWG4zPPqBvmNIVtjP7t2MkyXf22OYLaFznTsMi4Px0QtAoPbnR
         JAeTebf4JlEYvhudfgsY62SPrdfHNQpXJkGCkKMkLA5/j9jhzI3UpwgJL9S6Xuz13WRz
         lVWGxpJkn8pKIlMxNQdUwnz3kJ8elHkq267AY8/iZgtype+prbCFXvznN7bVAM9RwSBZ
         JebC0pbGYdNqI0HDO5S5+U3973B2UmxfDvM66rxCzKfa0DrlrXWJ9B6ehMkksXdpy2qM
         uZvQ==
X-Gm-Message-State: AOAM532hrX8NH4+WLcwwu7G16DshVbGbvnq+8VYZJp7CWNYVQuYVWgOZ
	YJy5Eqk9ODVJ9BnNRmXhff8=
X-Google-Smtp-Source: ABdhPJy+u/QPKG+sUeh1L5+ATfVKkyvZjMf/VbKd4dOotvZDL4CfBj6sXj0W4PqEMCu+fzCM2w7kPw==
X-Received: by 2002:a05:6214:5007:b0:44b:dfe6:60d1 with SMTP id jo7-20020a056214500700b0044bdfe660d1mr425697qvb.30.1650465304683;
        Wed, 20 Apr 2022 07:35:04 -0700 (PDT)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id c131-20020a379a89000000b0069c903625absm1595140qke.102.2022.04.20.07.35.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Apr 2022 07:35:04 -0700 (PDT)
Message-ID: <1c1e7c17-ea14-086b-5013-54fb89abba61@gmail.com>
Date: Wed, 20 Apr 2022 10:35:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
References: <CAPT2EegX83McE_TznHb_vPcsgJSw46mBfE9O5mjnnGx8hrt3uw@mail.gmail.com>
 <17c6ff8a-23d3-857d-cd9e-8c7481f5f225@gmail.com>
 <CAL0m=NYwuKBAiyEj_-rdu2ypjsV+vjfrZfw3HQz_upLdd09+cA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAL0m=NYwuKBAiyEj_-rdu2ypjsV+vjfrZfw3HQz_upLdd09+cA@mail.gmail.com>
Message-ID-Hash: ACDUBJ55YGYOI22LNFDUMSVPYIYIYIOU
X-Message-ID-Hash: ACDUBJ55YGYOI22LNFDUMSVPYIYIYIOU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with connecting BasicRX Daughterboard with X310 RF B
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ACDUBJ55YGYOI22LNFDUMSVPYIYIYIOU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0256679225506897305=="

This is a multi-part message in MIME format.
--===============0256679225506897305==
Content-Type: multipart/alternative;
 boundary="------------M8bpPOCh2i2QyyFBQB0PDOFq"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------M8bpPOCh2i2QyyFBQB0PDOFq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-04-19 22:44, Zeng, Huacheng wrote:
> Below is a more detailed description of our issue.
>
> 1. We have an X310 with two BasicRX boards installed (no BasicTX). We=20
> tried to read the two data streams from X310 on a computer at a=20
> sampling rate 5Msps. The computer displays "OOOOOOOOOOOO" overflow=20
> constantly. We tried other sampling rates such as 1Msps and 10Msps,=20
> the observation is the same.
What version of UHD are you using?=C2=A0 BasicRX support on the X310 in=20
earlier releases was broken.


>
> We found that the LED lights on the X310 panel are abnormal. When X310=20
> works in RX mode, the two LED lights (RF A's RX2 LED and RF B's RX2=20
> LED) should be on, but we observed they were flashing. Also, the LINK=20
> LED should be on in RED, but we observed that it was flashing in ORANGE=
.
>
> We reloaded the FPGA image, but the problem is consistent.
>
> 2. We removed BasicRX from X310's RF B channel, and tested one data=20
> stream from X310 RF A's channel, it works (no overflow). We are sure=20
> that the two BasicRX boards have no problem, as they are brand new.
>
> 3. We removed two BasicRX boards and installed two BasicTX boards on=20
> the same X310. We used GNU RADIO to send two data streams to X310 for=20
> signal transmission. It works well and has no overflow issue.
>
> We want to test X310's RF B channel, but we do not know how to set the=20
> parameters so that GNU Radio can read the data stream from X310's RF B=20
> channel. Would it be an argument like "subdev=3DB"? It looks like GNU=20
> Radio always gets data stream from RF A channel if we set the channel=20
> number to 1. Please suggest if it is possible.

https://files.ettus.com/manual/page_configuration.html#config_subdev

Also, this thread here, on a related topic (Basic_RX on X310) may help:

https://usrp-users.ettus.narkive.com/Mbf3kutl/subdev-spec-for-two-channel=
s-with-usrp-x310


>
> Any suggestion and help would be appreciated!
>
>
> On Tue, Apr 19, 2022 at 6:03 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 2022-04-19 15:05, Shichen Zhang wrote:
>     > Hello everyone,
>     >
>     > I am doing some experiments=C2=A0and I need to build the 2 by 2
>     > communication using X310 with the=C2=A0BasicRX Daughterboard. I u=
se the
>     > X310 as both the transmitter and receiver. I can successfully
>     test the
>     > 1 by 1 case, however, when I test the 2 by 2 case, the overflow
>     > happened and the program could not be stopped. The RF B channel
>     seems
>     > not to work ( LED light for RF B RX not flash).
>     >
>     > I have attached the flowchart for=C2=A0your reference.
>     >
>     > Best,
>     > SZ
>     >
>     What is your complete hardware configuration?=C2=A0 I assume 2=C2=A0=
 x
>     BasicRX and
>     2 x Basic TX?
>
>     It may just be the case that your computer simply isn't up to the
>     task
>     of moving 20Mssp of data in and out of the radio, along with doing
>     2 x
>     FFTs and computing the
>     =C2=A0=C2=A0 noise sources.
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------M8bpPOCh2i2QyyFBQB0PDOFq
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-04-19 22:44, Zeng, Huacheng
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAL0m=3DNYwuKBAiyEj_-rdu2ypjsV+vjfrZfw3HQz_upLdd09+cA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Below is a more detailed description of our issue.
        <br>
        <br>
        1. We have an X310 with two BasicRX boards installed (no
        BasicTX). We tried to read the two data streams from X310 on a
        computer at a sampling rate 5Msps. The computer displays
        "OOOOOOOOOOOO" overflow constantly. We tried other sampling
        rates such as 1Msps and 10Msps, the observation is the same. <br>
      </div>
    </blockquote>
    What version of UHD are you using?=C2=A0 BasicRX support on the X310 =
in
    earlier releases was broken.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAL0m=3DNYwuKBAiyEj_-rdu2ypjsV+vjfrZfw3HQz_upLdd09+cA@mail.gm=
ail.com">
      <div dir=3D"ltr"><br>
        We found that the LED lights on the X310 panel are abnormal.
        When X310 works in RX mode, the two LED lights (RF A's RX2 LED
        and RF B's RX2 LED) should be on, but we observed they were
        flashing. Also, the LINK LED should be on in RED, but we
        observed that it was flashing in ORANGE. <br>
        <br>
        We reloaded the FPGA image, but the problem is consistent. <br>
        <br>
        2. We removed BasicRX from X310's RF B channel, and tested one
        data stream from X310 RF A's channel, it works (no overflow). We
        are sure that the two BasicRX boards have no problem, as they
        are brand new. <br>
        <br>
        3. We removed two BasicRX boards and installed two BasicTX
        boards on the same X310. We used GNU RADIO to send two data
        streams to X310 for signal transmission. It works well and has
        no overflow issue. <br>
        <br>
        We want to test X310's RF B channel, but we do not know how to
        set the parameters so that GNU Radio can read the data stream
        from X310's RF B channel. Would it be an argument like
        "subdev=3DB"? It looks like GNU Radio always gets data stream fro=
m
        RF A channel if we set the channel number to 1. Please suggest
        if it is possible. <br>
      </div>
    </blockquote>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_configuration.html#config_subdev">https://files.ettus.com/manua=
l/page_configuration.html#config_subdev</a><br>
    <br>
    Also, this thread here, on a related topic (Basic_RX on X310) may
    help:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://usrp-users.ettus.narki=
ve.com/Mbf3kutl/subdev-spec-for-two-channels-with-usrp-x310">https://usrp=
-users.ettus.narkive.com/Mbf3kutl/subdev-spec-for-two-channels-with-usrp-=
x310</a><br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAL0m=3DNYwuKBAiyEj_-rdu2ypjsV+vjfrZfw3HQz_upLdd09+cA@mail.gm=
ail.com">
      <div dir=3D"ltr"><br>
        Any suggestion and help would be appreciated!<br>
        <br>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 19, 2022 at 6:0=
3
          PM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On
          2022-04-19 15:05, Shichen Zhang wrote:<br>
          &gt; Hello everyone,<br>
          &gt;<br>
          &gt; I am doing some experiments=C2=A0and I need to build the 2=
 by
          2 <br>
          &gt; communication using X310 with the=C2=A0BasicRX Daughterboa=
rd.
          I use the <br>
          &gt; X310 as both the transmitter and receiver. I can
          successfully test the <br>
          &gt; 1 by 1 case, however, when I test the 2 by 2 case, the
          overflow <br>
          &gt; happened and the program could not be stopped. The RF B
          channel seems <br>
          &gt; not to work ( LED light for RF B RX not flash).<br>
          &gt;<br>
          &gt; I have attached the flowchart for=C2=A0your reference.<br>
          &gt;<br>
          &gt; Best,<br>
          &gt; SZ<br>
          &gt;<br>
          What is your complete hardware configuration?=C2=A0 I assume 2=C2=
=A0 x
          BasicRX and <br>
          2 x Basic TX?<br>
          <br>
          It may just be the case that your computer simply isn't up to
          the task <br>
          of moving 20Mssp of data in and out of the radio, along with
          doing 2 x <br>
          FFTs and computing the<br>
          =C2=A0=C2=A0 noise sources.<br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------M8bpPOCh2i2QyyFBQB0PDOFq--

--===============0256679225506897305==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0256679225506897305==--
