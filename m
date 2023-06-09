Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3BF729D06
	for <lists+usrp-users@lfdr.de>; Fri,  9 Jun 2023 16:37:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97E73384995
	for <lists+usrp-users@lfdr.de>; Fri,  9 Jun 2023 10:37:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686321449; bh=qUnlCh0m6d8v2h/0mPNelaC0DDrY+0qqU4m6WLPRvjI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=nkkxcTSjSXMliedCdvELg0OlTg6JQ+2+jJy+TYZUFHxELbmdZWDgcqQHNVCcHzQ0I
	 oWEt64ElsGHyzq+ae5EgO5IM8UPpjfm8HoJmSoEnH2MB5sOl3q1wYCGNymTf5UdMPp
	 H0iWpyNeeKHcO+2T6R4UnTVHYUv2Br0h+sY7nBvA259iFQKiAKC0xrZ8hBZcOIupb6
	 2dy3b3z6lJwlX7d//0mKxLy1vK+b7lBqMY/CWmkIoJW65piiYEd4ERiCwJ382uPLhv
	 Mk1lQraxXAVzukHodf+RXPthZezNwjTP2sTPr4XmFJbZpcmTO1ALNVxyZZy5eT70az
	 9KUDt/sTzWJBQ==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 3BEBB38455A
	for <usrp-users@lists.ettus.com>; Fri,  9 Jun 2023 10:36:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="L68007ym";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-9788554a8c9so318053666b.2
        for <usrp-users@lists.ettus.com>; Fri, 09 Jun 2023 07:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1686321388; x=1688913388;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rQXWdnl8ga7c5DZLRL0C8tCfdyOzcwEaMBwjozjCGGI=;
        b=L68007ymcw33Tj9kkMQf9yaTRehzhlTDRzELMF6VCRntfFgDbgW/yx2r1IARIlgEUW
         Vf+1XWw9bxyK+me8+X9g5Ok6xtZxL5UBvXn8ZUiaLAHCi6wJGFKfdcWksoNKhHpyA7bJ
         xCLpcmquUUDkl+eeXCt26Xoja5Zbawr3nVrYLc9Il4EuN4JWFjm7ZREWP+ZHNBtM05Zv
         AHgPO5XSjDGdNliOZHPiY+2F0zuAAb7IoNt/KxUQptqSIPJlixf9Ud4OChMVoaj7uG8v
         OVZgWs4vvrsnMVBPEQFOBb+UY/iLcnZ5m6pNwEUrnmWOMA7Nk6AwvKWpXMW2Jt7AWbcu
         lz9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686321388; x=1688913388;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rQXWdnl8ga7c5DZLRL0C8tCfdyOzcwEaMBwjozjCGGI=;
        b=OkLO1+qsB3HwGHt+ocEZvKEbn6bseiNjW1ll72vOnR/u+Yk8fgJ/tlBqQAYyQPlIY5
         6jN5dPnYhpZaJ6f//DV4EbLth/GmVkxbd5hw619Sa2ji4F0TK+M3wEoY5CTtViq2WJDw
         ZLMKGimxRkTE+6BG5Dg0EVxX3tnDsLMPyXefcOz+qchz9Gmch30qCb0SFLCDZz0o0rFb
         Ni0wd1P0mT6UP6XhjgAAW6p9jlWz8MZgPxldMzJ0OsNviBa+xoyowOKNsI+KVMCNCeov
         HiY+6xTzqZJ4ls4JHdDO6CORJPUeLB+KV48E3zLJb3lwEx4Ih6dVGLZ4kHJWs8lPiXx2
         mymw==
X-Gm-Message-State: AC+VfDy2Wa9LIkAkDk/rsNbQrDCVDfKmsgCrQ9TVCdOjEBmtk1wJZfc6
	2t5LOzCuRjIJAzk65TlLoUaRY7YEzHBMXKb93BogLi5LOelHox/HPzRKEw==
X-Google-Smtp-Source: ACHHUZ7uQfo4Duh8kFEoUxmay2/L0LNgGrf4PPMWFAwTcKGCgcqMAe4+3xY4U0loHwmdx7vVDdzZ/FJ8WSQ01w1NeEs=
X-Received: by 2002:a17:907:3da0:b0:973:ae80:a145 with SMTP id
 he32-20020a1709073da000b00973ae80a145mr2264625ejc.43.1686321387967; Fri, 09
 Jun 2023 07:36:27 -0700 (PDT)
MIME-Version: 1.0
References: <tQLqpDFvFCYwDPXJKKBWqpEv0sWI4EfeY7tPGYH171E@lists.ettus.com>
In-Reply-To: <tQLqpDFvFCYwDPXJKKBWqpEv0sWI4EfeY7tPGYH171E@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 9 Jun 2023 09:36:11 -0500
Message-ID: <CAFche=h1YTwiRshyEHUmqPFC_QJ3EP+xqvcfTThfGaLyoscvSA@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: YRZ6KRYK3M3ISRJM6A3Z2QJVRIXN7KVN
X-Message-ID-Hash: YRZ6KRYK3M3ISRJM6A3Z2QJVRIXN7KVN
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 TX issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YRZ6KRYK3M3ISRJM6A3Z2QJVRIXN7KVN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1604685785382710330=="

--===============1604685785382710330==
Content-Type: multipart/alternative; boundary="0000000000004eaef405fdb34b2c"

--0000000000004eaef405fdb34b2c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I believe the indicator light is ultimately driven by the RFNoC radio
block. It turns on when it receives data packets to be transmitted. So if
it doesn't turn on, that likely means no data is making it from the replay
block to the radio block.

Wade

On Thu, Jun 8, 2023 at 9:19=E2=80=AFAM <jmaloyan@umass.edu> wrote:

> I had customized RFDC IP block in the past, but I have re-installed UHD
> since to try and resolve this transmit issue. I had just compiled it with
> the default settings, except for my custom yml file and custom block. The
> only difference is when I run with vs without the GUI option, without
> transmits. With the GUI option, the light next to the port does not even
> turn on=E2=80=A6its strange.
>
> I guess it would be helpful to know how the indicator light actually
> works, is it directly controlled by the FPGA, or is there a separate
> circuit checks for a voltage on the port, like a voltmeter. Checking the
> verilog, I noticed some indicator LEDs look like they are controlled by t=
he
> FPGA (PPS, QSFP) but I could not see anything regarding the RX/TX
> indicators.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000004eaef405fdb34b2c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I believe the indicator light is ultimately driven by=
 the RFNoC radio block. It turns on when it receives data packets to be tra=
nsmitted. So if it doesn&#39;t turn on, that likely means no data is making=
 it from the replay block to the radio block.</div><div><br></div><div>Wade=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Thu, Jun 8, 2023 at 9:19=E2=80=AFAM &lt;<a href=3D"mailto:jmal=
oyan@umass.edu">jmaloyan@umass.edu</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><p>I had customized RFDC IP block in the =
past, but I have re-installed UHD since to try and resolve this transmit is=
sue. I had just compiled it with the default settings, except for my custom=
 yml file and custom block. The only difference is when I run with vs witho=
ut the GUI option, without transmits. With the GUI option, the light next t=
o the port does not even turn on=E2=80=A6its strange.</p><p>I guess it woul=
d be helpful to know how the indicator light actually works, is it directly=
 controlled by the FPGA, or is there a separate circuit checks for a voltag=
e on the port, like a voltmeter. Checking the verilog, I noticed some indic=
ator LEDs look like they are controlled by the FPGA (PPS, QSFP) but I could=
 not see anything regarding the RX/TX indicators.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000004eaef405fdb34b2c--

--===============1604685785382710330==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1604685785382710330==--
