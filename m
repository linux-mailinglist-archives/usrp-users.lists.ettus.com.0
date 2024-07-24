Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9669193AF6E
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jul 2024 11:55:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9C91C385837
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jul 2024 05:55:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721814936; bh=sVHxEHx4hDMGpucBVih5ILphj7YtmgRPxwJWami1bzk=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=S0rkzJz34xSxvHtGXly2Tn2JvLM+8L6CB6jpHgPz0PFTDd5CgU1gSpULOpiyyh8rr
	 d4YjptrfTLb29I3IGXSI08xj82wzQLiZj36/gMp8J6tTxbmXqRuw7OoAI8JcCMb12b
	 IhpsRjTv6/viidCbOCW7Zb6xJoSyfh6tEjL594odViNCRMRYNMpK60qeVbuxiFaha0
	 klZfIpSMlNf9laMt0xIkLQVUB9hKI47Hj2YTRSrpzG1sFTYaNuUhNORJq2R+Btc/KK
	 RYBMwFO34SmefvOb0hQ/ieNSF3GpdooUMWPLzWHlNosDTrbONZJzGmF1MuYBhXi76l
	 Pwgd3Fdwgik+w==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id D1754385494
	for <usrp-users@lists.ettus.com>; Wed, 24 Jul 2024 05:55:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ceiNM6GH";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a7a975fb47eso212225866b.3
        for <usrp-users@lists.ettus.com>; Wed, 24 Jul 2024 02:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721814911; x=1722419711; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PCl1h6jAOZB1SnW1UNrhcEqy00sJ4c/Pja2cVXt2rCY=;
        b=ceiNM6GHFPXtVCSsXeM94h9nCtOU+fm4mhfMfCDfSw53t+oKE4F/PFu+byWEot/EUe
         bUpC3A8kAHgxoHTUMYv3NSwggnXo2ku7PIRlXtTkw0VYNLpgHR7lXGmb9a+BPSTBrgjE
         iVLcjEHU8YoYoaQ6Azv21uxdY7qGBYAPe3+756JfR0Yr6TuWyIyZtE0jhOR73lz+1a1a
         D60gLXF0eeab0dAj60sLUpoLhUj6cHT3PLQ9D8dS1dCUL889xauV3V2oz0Jame1TwqYd
         nv/r/I9xqKQPJv21G3SB5iYd/pXbGhavhVciB8HzTc3Wl0Hhma0KjvwtuC0whNdnfF8v
         EniA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721814911; x=1722419711;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PCl1h6jAOZB1SnW1UNrhcEqy00sJ4c/Pja2cVXt2rCY=;
        b=PuxxPIPL8jakv7ZWGsEISqrOr2Wi1JIFYGyGhZvU77mPxqPxjnUtYgOJoBYt6g8Jwu
         iPMkCSaiZTMrLeI/Onfa0smsTBuiNXAtF1i52WX4b2AcffG99V+m2JNz0QtCGyvvolsm
         Ji9QTJlM0R6ioecgIhO/McIKywpRpZjzWMEtwzrrIgJH3BlMED5bL0nHZE1KrRKB2atO
         k4EjVa+15Ky5RgNkK8eZeY1adL9vwrcLUVImlz3nq4XCSQ1B/r9Wf72egGIXp1tThBAy
         wlj9Y00JcWZgvpfq4MzvM8MNb1pXfhA8+mYGdgAiWhC+qI9Y8ol1Fhq2FSif/y4thsw/
         gc/Q==
X-Gm-Message-State: AOJu0YxTEoPs3Dj8w6BD002I84i/s1Wi/NfjAuPDhzD3e8hMPSuPMxpZ
	1SNmeIloo5XOeCnmb725wu4EUSJerpyIhijwDY8mdyRQjEOQp4WFP8qaMPC5
X-Google-Smtp-Source: AGHT+IEVxyeoS2EjAvu0nJWSHZMeJirS/qnxAWAXx2jB+K4o7bLxWi90nrbcPWDQbalOxojSbc4Wyw==
X-Received: by 2002:a17:907:d9f:b0:a7a:b43e:86d4 with SMTP id a640c23a62f3a-a7ab43e8c51mr94674766b.15.1721814910361;
        Wed, 24 Jul 2024 02:55:10 -0700 (PDT)
Received: from [192.168.1.7] (host-79-55-111-138.retail.telecomitalia.it. [79.55.111.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7a8c3ee792sm192361766b.80.2024.07.24.02.55.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jul 2024 02:55:09 -0700 (PDT)
Message-ID: <8e05b8e2-f0e3-4ef4-aafb-f4401103c670@gmail.com>
Date: Wed, 24 Jul 2024 11:54:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Martin Braun <martin.braun@ettus.com>
References: <5f14a3e6-a2aa-4a58-9e00-7c2466e5971b@gmail.com>
 <d53b4426-7d8a-4549-8d71-7fc02b1cf997@gmail.com>
 <86a13c1b-8c99-40fc-a9da-a38c31363baa@gmail.com>
 <CAFOi1A7excS7e9c783gyAiLEEWD+HRTLo3bcde-KzLtNn_taqg@mail.gmail.com>
Content-Language: it
From: Giuseppe Santaromita <giuseppe.santaromita1@gmail.com>
In-Reply-To: <CAFOi1A7excS7e9c783gyAiLEEWD+HRTLo3bcde-KzLtNn_taqg@mail.gmail.com>
Message-ID-Hash: PVEA4DOKMFQN457L5GTXSV5EAUSLU4LN
X-Message-ID-Hash: PVEA4DOKMFQN457L5GTXSV5EAUSLU4LN
X-MailFrom: giuseppe.santaromita1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: White Rabbit and N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PVEA4DOKMFQN457L5GTXSV5EAUSLU4LN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3059652627382927992=="

This is a multi-part message in MIME format.
--===============3059652627382927992==
Content-Type: multipart/alternative;
 boundary="------------IFwV4cG0K0A0raOEqWKH2mOY"
Content-Language: it

This is a multi-part message in MIME format.
--------------IFwV4cG0K0A0raOEqWKH2mOY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Thank you very much, this is just what I needed

Giuseppe

Il 24/07/2024 09:45, Martin Braun ha scritto:
> There's no WG image for N310. You can run `make help` in the=20
> fpga/usrp3/top/n3xx directory to see available targets.
>
> --M
>
> On Tue, Jul 23, 2024 at 9:21=E2=80=AFPM Giuseppe Santaromita=20
> <giuseppe.santaromita1@gmail.com> wrote:
>
>     Thanks. And so are WX and WG two different version of FPGA?
>
>     Il 23/07/2024 20:24, Marcus D. Leech ha scritto:
>>     On 23/07/2024 11:12, Giuseppe Santaromita wrote:
>>>
>>>     Hi all,
>>>
>>>     I need to use some N310s with White Rabbit (WR) and I have some
>>>     question:
>>>
>>>     Why in "Features" here (N310): link
>>>     <https://www.ettus.com/all-products/usrp-n310/> there is no
>>>     White Rabbit, while here (N321): link
>>>     <https://www.ettus.com/all-products/usrp-n321/> yes? Here: link
>>>     <https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the=
_USRP%E2%84%A2_N3xx_Devices>
>>>     the link talk about the N3xx generic. So, seems to be an error
>>>     on the website?
>>>
>>>     Here link
>>>     <https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the=
_USRP%E2%84%A2_N3xx_Devices>
>>>     I find: "The USRP N3xx use the SFP+ 0 port for White Rabbit and
>>>     SFP+ 1 port for IQ streaming. This port configuration requires
>>>     the White Rabbit =E2=80=9CWX=E2=80=9D FPGA bitfile".
>>>
>>>     Here link
>>>     <https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Gu=
ide#Dual_10Gb_Streaming_SFP_Ports_0.2F1>
>>>     says that all possible FPGA are XG, HG and WG. How about the WX?
>>>     Is WG? Is the same? Was a typo?
>>>
>>>     Again, same link, says that "The XG FPGA image must be loaded
>>>     for SFP Port 0 to operate at 10 Gb speeds. If the HG image is
>>>     loaded, the port will be unresponsive at 10 Gb speeds". How
>>>     about the WG?
>>>
>>>     It is sure that White Rabbit can work with the N310? If the WX
>>>     FPGA it's flashed, teoretically I can use one=C2=A0 SFP+ port for=
 WR
>>>     and one SFP+ port for I/Q streaming. I need to be sure that the
>>>     speed of the second port is 10 GbE (and not reduced to 1 GbE).
>>>
>>>     Thanks in advance
>>>
>>>     Giuseppe
>>>
>>>
>>>     _______________________________________________
>>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>>     According to my contacts, the N310_WX indeed puts WR on sfp0, and
>>     10GiGe on sfp1.
>>
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
--------------IFwV4cG0K0A0raOEqWKH2mOY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Thank you very much, this is just what I needed</p>
    <p>Giuseppe<br>
    </p>
    <div class=3D"moz-cite-prefix">Il 24/07/2024 09:45, Martin Braun ha
      scritto:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFOi1A7excS7e9c783gyAiLEEWD+HRTLo3bcde-KzLtNn_taqg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>There's no WG image for N310. You can run `make help` in
          the fpga/usrp3/top/n3xx directory to see available targets.</di=
v>
        <div><br>
        </div>
        <div>--M<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 23, 2024 at
          9:21=E2=80=AFPM Giuseppe Santaromita &lt;<a
            href=3D"mailto:giuseppe.santaromita1@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">gius=
eppe.santaromita1@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div>
            <p>Thanks. And so are WX and WG two different version of
              FPGA?<br>
            </p>
            <div>Il 23/07/2024 20:24, Marcus D. Leech ha scritto:<br>
            </div>
            <blockquote type=3D"cite">
              <div>On 23/07/2024 11:12, Giuseppe Santaromita wrote:<br>
              </div>
              <blockquote type=3D"cite">
                <p>Hi all,<br>
                </p>
                <p>I need to use some N310s with White Rabbit (WR) and I
                  have some question:</p>
                <p>Why in "Features" here (N310): <a
                    href=3D"https://www.ettus.com/all-products/usrp-n310/=
"
                    target=3D"_blank" moz-do-not-send=3D"true">link</a>
                  there is no White Rabbit, while here (N321): <a
                    href=3D"https://www.ettus.com/all-products/usrp-n321/=
"
                    target=3D"_blank" moz-do-not-send=3D"true">link</a> y=
es?
                  Here: <a
href=3D"https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the_=
USRP%E2%84%A2_N3xx_Devices"
                    target=3D"_blank" moz-do-not-send=3D"true">link</a> t=
he
                  link talk about the N3xx generic. So, seems to be an
                  error on the website?<br>
                  <br>
                  Here <a
href=3D"https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the_=
USRP%E2%84%A2_N3xx_Devices"
                    target=3D"_blank" moz-do-not-send=3D"true">link</a> I
                  find: "The USRP N3xx use the SFP+ 0 port for White
                  Rabbit and SFP+ 1 port for IQ streaming. This port
                  configuration requires the White Rabbit =E2=80=9CWX=E2=80=
=9D FPGA
                  bitfile".=C2=A0</p>
                <p>Here <a
href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Gui=
de#Dual_10Gb_Streaming_SFP_Ports_0.2F1"
                    target=3D"_blank" moz-do-not-send=3D"true">link</a> s=
ays
                  that all possible FPGA are XG, HG and WG. How about
                  the WX? Is WG? Is the same? Was a typo?<br>
                </p>
                <p>Again, same link, says that "The XG FPGA image must
                  be loaded for SFP Port 0 to operate at 10 Gb speeds.
                  If the HG image is loaded, the port will be
                  unresponsive at 10 Gb speeds". How about the WG?</p>
                <p>It is sure that White Rabbit can work with the N310?
                  If the WX FPGA it's flashed, teoretically I can use
                  one=C2=A0 SFP+ port for WR and one SFP+ port for I/Q
                  streaming. I need to be sure that the speed of the
                  second port is 10 GbE (and not reduced to 1 GbE).</p>
                <p>Thanks in advance</p>
                <p>Giuseppe<br>
                </p>
                <br>
                <fieldset></fieldset>
                <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.co=
m</a>
To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a>
</pre>
              </blockquote>
              According to my contacts, the N310_WX indeed puts WR on
              sfp0, and 10GiGe on sfp1.<br>
              <br>
              <br>
              <br>
              <fieldset></fieldset>
              <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.com<=
/a>
To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
            </blockquote>
          </div>
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
  </body>
</html>

--------------IFwV4cG0K0A0raOEqWKH2mOY--

--===============3059652627382927992==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3059652627382927992==--
