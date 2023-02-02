Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 824DD6882D9
	for <lists+usrp-users@lfdr.de>; Thu,  2 Feb 2023 16:41:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A8805383B8F
	for <lists+usrp-users@lfdr.de>; Thu,  2 Feb 2023 10:40:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675352456; bh=fxTy/7CPQUvsjmbhL2uKVS96oF0hoZ5EhtSRGqjjWZ0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=qEhaJTAzfpUbOK5acNTUunSbIaXLM76nHtqqrPXA2aXlpWJuBd5wOwe+7oZ0NLiUp
	 QxWL0oVDKaS0VeRVkf+Fh1Ur/W68mOHzGT5xquGsbjNNnuavQUDgNwdCRY84LQzbIi
	 xXnmhoj8BCjJHWuE1h34hTtkOmSIBynITVnd2RxJq7aodAPReOuSVEjsY3Yvf+Tnw4
	 e9HItDI9xArLQHgdjxP19a3Qqlf4KFGyImqICm+IgZqhjHx7+7R9OwzVj8CClM+s7x
	 x3nF7SrRqRXlBt4yyaiTBVU18J5BlftD50+A3xl9eZItetKq+AKsLsdUJc33/OUNmI
	 mwDNMl5Ojsl6Q==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 98D21380D15
	for <usrp-users@lists.ettus.com>; Thu,  2 Feb 2023 10:40:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lwzcX+9E";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id m26so2216139qtp.9
        for <usrp-users@lists.ettus.com>; Thu, 02 Feb 2023 07:40:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4d9GczgIPNJQllUSGpv67zNdPu8UH+BUxOZ4lteijVI=;
        b=lwzcX+9EoPolmL7mGYzXwnRK/KcMBRo18JdeWcMxYeoZegF4qos66FY1+J7K/aXglI
         nsN+M1WMWA2LfaM6f4/XxgaFAKq9X3OyX7EdGLLEo91noZS+Keddj3rv/wYzZ08Uqho0
         D6ydU1CSSXjtidoroOV9bBvtHpgTR9XJTp2FPzDi9Ti/v/6BJKqehvqo2bfTW2sa9hJ/
         eGSBvZbAOUB5Te3Mm33qgskzAJuLYOkSO9wvzjVoJ5q2op08ofO+rRwZgkaz3ul2rXXQ
         KucgI2ybKGaFu8VmvgmFMojyaMEWf1COcE5cuTCRjylhwsD1pCVRVal+kX7GAHIQV7KQ
         n2Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4d9GczgIPNJQllUSGpv67zNdPu8UH+BUxOZ4lteijVI=;
        b=Iz6oX7rnUvVG962rfa1I22UuYJXmdV3d8UbFO+yZUTUEZ+2yRGADSGV8Bk/ekRti/I
         WPB58qOBgUNnXzHk+8o6W3cxEBhKXqspoJlLDrrIDw0n0h0zSzWPBuzhrQRC0kMvUb6U
         jnLD7X1lXT+40sAF5voGmuMCf4F8a3WH6ZYFZ47GECt5oaZmVcwEbAiYyLrikowvd6gb
         s/qPphLAXZu2Gp94RegnHxjcX7gdNCL/q7OWfYD7wrX2ySk+W1zdjP+4UYVhAIu9lMFo
         HMeIXcIsWdIOqvVVSFrvX1bcmHnLlEHsdw53uqM9Bjj12YCOqyFYNcB4NJtujOv7B2Ot
         q4eQ==
X-Gm-Message-State: AO0yUKVDwzKkkZBIuhW9bBQvCI6Hba0J3FV6+TC5rRWWJIKMRJ1mxcFK
	PwujugT83i+MQa+DK3r4bQxLzQimklM=
X-Google-Smtp-Source: AK7set+VVB1OLlYSApk1MJSyHBpmQuCac3cjvVUOCgYt5ThsNRUZJFvNfcuyFS36Fgbo1Y9HgfbV9A==
X-Received: by 2002:a05:622a:312:b0:3b9:b4b5:4b9d with SMTP id q18-20020a05622a031200b003b9b4b54b9dmr12155121qtw.63.1675352400655;
        Thu, 02 Feb 2023 07:40:00 -0800 (PST)
Received: from [192.168.2.173] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id 8-20020ac85948000000b003a81eef14efsm4745240qtz.45.2023.02.02.07.39.59
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 07:40:00 -0800 (PST)
Message-ID: <ae7469e0-c02e-885f-5182-a96de0de19d8@gmail.com>
Date: Thu, 2 Feb 2023 10:39:59 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <PAXPR07MB8470D032151F9E673A95DCB4C2D69@PAXPR07MB8470.eurprd07.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PAXPR07MB8470D032151F9E673A95DCB4C2D69@PAXPR07MB8470.eurprd07.prod.outlook.com>
Message-ID-Hash: B4WVJ5SRVWH34EVOEEHBCQCZ623LGHKP
X-Message-ID-Hash: B4WVJ5SRVWH34EVOEEHBCQCZ623LGHKP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP x300 timing calibration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B4WVJ5SRVWH34EVOEEHBCQCZ623LGHKP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1296263977186740378=="

This is a multi-part message in MIME format.
--===============1296263977186740378==
Content-Type: multipart/alternative;
 boundary="------------QpYi4x36npCUS1BtD91nJVau"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------QpYi4x36npCUS1BtD91nJVau
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 02/02/2023 04:56, Ra=C3=BAl Nieto Freire wrote:
>
> Dear URSP community,
>
> I'd like to launch some questions about the USRP x300 hardware=20
> (timing) calibration for a RF Record and Replay experiment using=20
> multifrequency GNSS, therefore using the two available RF frontends. I=20
> appreciate any help or hint you may provide.
>
> The samples recording and replaying starts when a 1 PPS edge is=20
> detected.Also a very stable 10 MHz source is used. Would it be=20
> possible to measure the actual latency between the time a 1 PPS comes=20
> to the sma input port and the actual moment of the samples=20
> recording/replaying? If I'm not wrong this would give us, after a GNSS=20
> software demodulation and the latency removing, the total propagation=20
> delay from the GNSS antenna phase center to the internal USRP DAC.
>
>   * Record setup:
>
> USRP x300 is connected to a RF splitter + DC block + and to a GNSS=20
> antenna for the recording setup.
>
>   * Replay setup:
>
> USRP x300 is connected to the splitter as a combiner to join the two=20
> RF channels + DC block + 20dB atenuattor and its output to a GNSS=20
> receiver.
>
> To perform our tests we have been using the UHD software and we are=20
> able to aligned our 1 PPS to a GNSSt timescale.
>
> Thank you very much.
>
> Best regards,
> Raul Nieto
>
>
You're presumably using RFNoC to do the replay?=C2=A0 Because otherwise,=20
latency is wildly unpredictable.



--------------QpYi4x36npCUS1BtD91nJVau
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 02/02/2023 04:56, Ra=C3=BAl Nieto F=
reire
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:PAXPR07MB8470D032151F9E673A95DCB4C2D69@PAXPR07MB8470.eurprd07=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}p.MsoListParagraph, li.MsoListParagraph, div=
.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}ol
	{margin-bottom:0cm;}ul
	{margin-bottom:0cm;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Dear URSP community,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I'd like to launch so=
me
            questions about the USRP x300 hardware (timing) calibration
            for a RF Record and Replay experiment using multifrequency
            GNSS, therefore using the two available RF frontends. I
            appreciate any help or hint you may provide.<o:p></o:p></span=
></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">The samples recording
            and replaying starts when a 1 PPS edge is detected.Also a
            very stable 10 MHz source is used. Would it be possible to
            measure the actual latency between the time a 1 PPS comes to
            the sma input port and the actual moment of the samples
            recording/replaying? If I'm not wrong this would give us,
            after a GNSS software demodulation and the latency removing,
            the total propagation delay from the GNSS antenna phase
            center to the internal USRP DAC.
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <ul style=3D"margin-top:0cm" type=3D"disc">
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0cm;mso-list:l0 level1 lfo1"><span
              lang=3D"EN-US">Record setup:<o:p></o:p></span></li>
        </ul>
        <p class=3D"MsoNormal" style=3D"text-indent:18.0pt"><span
            lang=3D"EN-US">USRP x300 is connected to a RF splitter + DC
            block + and to a GNSS antenna for the recording setup.
            <o:p></o:p></span></p>
        <ul style=3D"margin-top:0cm" type=3D"disc">
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0cm;mso-list:l0 level1 lfo1"><span
              lang=3D"EN-US">Replay setup:<o:p></o:p></span></li>
        </ul>
        <p class=3D"MsoNormal" style=3D"text-indent:18.0pt"><span
            lang=3D"EN-US">USRP x300 is connected to the splitter as a
            combiner to join the two RF channels + DC block + 20dB
            atenuattor and its output to a GNSS receiver. =C2=A0<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">To perform our tests =
we
            have been using the UHD software and we are able to aligned
            our 1 PPS to a GNSSt timescale.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you very much.<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards,<br>
            Raul Nieto<o:p></o:p></span></p>
      </div>
      <br>
    </blockquote>
    You're presumably using RFNoC to do the replay?=C2=A0 Because otherwi=
se,
    latency is wildly unpredictable.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------QpYi4x36npCUS1BtD91nJVau--

--===============1296263977186740378==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1296263977186740378==--
