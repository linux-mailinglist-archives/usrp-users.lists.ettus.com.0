Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED56689EFF
	for <lists+usrp-users@lfdr.de>; Fri,  3 Feb 2023 17:21:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 45EB0384035
	for <lists+usrp-users@lfdr.de>; Fri,  3 Feb 2023 11:20:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675441256; bh=7+zw3XsvWZVb28lDdOiW0Anrdx6qFyTUB0Kul0KdDKw=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Wj/a4jP+6NCXc5xo1Yd45Lbkr7kVoy2WcFAxAYNcGfgtLd/1U9IKi73Jnc6T5mtvj
	 A/15HDUXgQqSNO+YTr6fz14Iiiwf3e/zx61Wq2gezuNOdxyVb4LxifCVpEwKTbAiMa
	 C66yAwi4NQgR24viGDlMWFZxC/i2bGrhnov8d0ym+qw0wHasf8+VKZ8ldWFsG2STmY
	 r08Up7RE/6KDpSVUwjGT+Dhf6V/BF7Rtop7O2ZUzInJdku3cLosf6j4hqV5uRqfq+A
	 uFP//51gBG0LjWYqRTE7sRlxBw7f2VPUmuifQ8KJKWJPmkYBxp52SAAorQ87pkaMg3
	 7zqLARr6mFqGw==
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C38E380950
	for <usrp-users@lists.ettus.com>; Fri,  3 Feb 2023 11:20:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="g8+n1gVm";
	dkim-atps=neutral
Received: by mail-qv1-f51.google.com with SMTP id q10so3141579qvt.10
        for <usrp-users@lists.ettus.com>; Fri, 03 Feb 2023 08:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Ijr9rqZ2rbLz67SEgPrWcsujVZaNMS6GOrAs8yZ2QQ=;
        b=g8+n1gVmPAsvEJD4kFHtHiVvzsxi/Ick/cxtQdmpWBQ9eS8kBcWJezYvD2ghN7qcZv
         xo3/gJr/OIPy+TxYTcrFsG1hOpqR9hD/1+9Rc49U2ZYug5IYnROLU7u+sYxNot+SCY+A
         MZIFR0zGx7FsAwb/6KVyjhffCeC2ImLQcYVwE+4kkl6sDunTsgsMrZQ13ykqFms/MuMa
         xcaFNKWDM3YhZ+E5xLBtCInDkakp/HUawbAbTPlwgdvmGB/i5zJjPqHlmt8cGXRKY1b3
         QWjMzUoZACHfIFVcFDB+BB7djN6+6h4Pn0KQv5BLVWkpEJs4fMiBifUPb/VYm2AGtdjA
         xjAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3Ijr9rqZ2rbLz67SEgPrWcsujVZaNMS6GOrAs8yZ2QQ=;
        b=vdyIBpvHstByCYt3rShlTvtpSWEN+/Q1sYSZ9oSWVsPMZpSCRVL847E9jNJ6PC9eo/
         QFPHbyw1RxDqcG4WDnccAZkai7/OHZzWqEb3UYIYXidaP98wuQvCQXSFgB2HQKqjyxoW
         D/CpGAxz9pOQNjOzdrD1ch/MZzCT+akKyF5rxmRNeqLuZrYNT1gRfRl2xoz1+2odCyKE
         6Tm/jW7WZNH4Begjvqpmm2OrzkZSAVwkWArOo39Tc/oit6XB0AwV3KhE7y4a8bWRAGd/
         6tifC6fSOGCdegR5yZVpCgThcDpgUxUhqrcspMv6oGhdtyaA4qieSwbedKsmfaYpS+4j
         79bA==
X-Gm-Message-State: AO0yUKU3Qz5DjS3x5xPlkVOk06IpnfDeJAH8e8BE2YIe13gjZHFL83+h
	3S8SB1BWfM5esIxZyHHLcaxD10KXym4=
X-Google-Smtp-Source: AK7set9rKF3SAPvRSnBWUg8oJVTW9fqkXkS7f2FWQHF188yjImhE1hVKqDj1THLfyeVVyqXxO/oqgg==
X-Received: by 2002:ad4:5f07:0:b0:531:a8f3:e8db with SMTP id fo7-20020ad45f07000000b00531a8f3e8dbmr20208093qvb.47.1675441248637;
        Fri, 03 Feb 2023 08:20:48 -0800 (PST)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id h187-20020a37b7c4000000b007062139ecb3sm2033670qkf.95.2023.02.03.08.20.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Feb 2023 08:20:48 -0800 (PST)
Message-ID: <659b055d-3cd7-6980-9d7e-83abaf54dc5c@gmail.com>
Date: Fri, 3 Feb 2023 11:20:47 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: =?UTF-8?Q?Ra=c3=bal_Nieto_Freire?= <rnieto@gmv.com>
References: <PAXPR07MB8470D032151F9E673A95DCB4C2D69@PAXPR07MB8470.eurprd07.prod.outlook.com>
 <ae7469e0-c02e-885f-5182-a96de0de19d8@gmail.com>
 <DB9PR07MB84756392CE2341192ACCFB7CC2D69@DB9PR07MB8475.eurprd07.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <DB9PR07MB84756392CE2341192ACCFB7CC2D69@DB9PR07MB8475.eurprd07.prod.outlook.com>
Message-ID-Hash: JWD66UM5QIQ23SZVXX6RQY6YM4IAU7GR
X-Message-ID-Hash: JWD66UM5QIQ23SZVXX6RQY6YM4IAU7GR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP x300 timing calibration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JWD66UM5QIQ23SZVXX6RQY6YM4IAU7GR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0169947785402028615=="

This is a multi-part message in MIME format.
--===============0169947785402028615==
Content-Type: multipart/alternative;
 boundary="------------hMnaUIFD0jfB30XgNc0x0Hav"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------hMnaUIFD0jfB30XgNc0x0Hav
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 02/02/2023 16:45, Ra=C3=BAl Nieto Freire wrote:
>
> Dear Marcus,
>
> Thank you for your comment. For the moment we have not used RFNoC, but=20
> if it helps measuring the replay latency, of course we could look at=20
> it. Would that work for measuring the recording latency as well? Do=20
> you recommend some configuration or strategy to find actual latency=20
> for a record and replay of IQ samples? In any case I should check the=20
> RFNoC documentation.
>
> Regards
>
> Raul Nieto
>
The 1PPS input signal isn't used (without FPGA mods) as a "sampling=20
trigger".=C2=A0 It's not really exposed that way in the API.

Being able to measure the latency between its arrival on some other=20
useful event within the FPGA requires FPGA programming--
 =C2=A0 probably via the very-useful RFNoC framework, but FPGA programmin=
g=20
will be required, nonetheless.

Samples arrive from USRPs with timestamps, and in the X310, those=20
timestamps are applied as close to the output of
 =C2=A0 the "ADC output plane" as possible, but group delays and so on ah=
ead=20
of the ADC aren't characterized, and will necessarily
 =C2=A0 be somewhat unpredictable from daughtercard-type to daughtercard-=
type=20
and even batch-to-batch in manufacturing and
 =C2=A0 across hardware rev numbers.

In a "burst type" replay environment, you can precisely control the=20
burst output timing using timed streaming, since the
 =C2=A0 timestamp/Time-of-Day clock on the USRP maintains time quite well=
 if=20
you use a precise 10MHz reference and use the 1PPS
 =C2=A0 to synchronize to a particular time on session startup.

But for *continuous* replay (as in a linear translator application and=20
the like) this cannot be made to work well because
 =C2=A0 latency in the computer is variable and unpredictable.


> *From:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* jueves, 2 de febrero de 2023 16:40
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: USRP x300 timing calibration
>
> On 02/02/2023 04:56, Ra=C3=BAl Nieto Freire wrote:
>
>     Dear URSP community,
>
>     I'd like to launch some questions about the USRP x300 hardware
>     (timing) calibration for a RF Record and Replay experiment using
>     multifrequency GNSS, therefore using the two available RF
>     frontends. I appreciate any help or hint you may provide.
>
>     The samples recording and replaying starts when a 1 PPS edge is
>     detected.Also a very stable 10 MHz source is used. Would it be
>     possible to measure the actual latency between the time a 1 PPS
>     comes to the sma input port and the actual moment of the samples
>     recording/replaying? If I'm not wrong this would give us, after a
>     GNSS software demodulation and the latency removing, the total
>     propagation delay from the GNSS antenna phase center to the
>     internal USRP DAC.
>
>      1. Record setup:
>
>     USRP x300 is connected to a RF splitter + DC block + and to a GNSS
>     antenna for the recording setup.
>
>      2. Replay setup:
>
>     USRP x300 is connected to the splitter as a combiner to join the
>     two RF channels + DC block + 20dB atenuattor and its output to a
>     GNSS receiver.
>
>     To perform our tests we have been using the UHD software and we
>     are able to aligned our 1 PPS to a GNSSt timescale.
>
>     Thank you very much.
>
>     Best regards,
>     Raul Nieto
>
> You're presumably using RFNoC to do the replay?=C2=A0 Because otherwise=
,=20
> latency is wildly unpredictable.
>
>
>
>
> P Please consider the environment before printing this e-mail.
>

--------------hMnaUIFD0jfB30XgNc0x0Hav
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 02/02/2023 16:45, Ra=C3=BAl Nieto F=
reire
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:DB9PR07MB84756392CE2341192ACCFB7CC2D69@DB9PR07MB8475.eurprd07=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Webdings;
	panose-1:5 3 1 2 1 5 9 6 7 3;}p.MsoNormal, li.MsoNormal, div.MsoNormal
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
	mso-fareast-language:EN-US;}span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}ol
	{margin-bottom:0cm;}ul
	{margin-bottom:0cm;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Dear Marcus,<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you for your
            comment. For the moment we have not used RFNoC, but if it
            helps measuring the replay latency, of course we could look
            at it. Would that work for measuring the recording latency
            as well? Do you recommend some configuration or strategy to
            find actual latency for a record and replay of IQ samples?
            In any case I should check the RFNoC documentation.<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Regards<o:p></o:p></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Raul Nieto</span></p>
      </div>
    </blockquote>
    The 1PPS input signal isn't used (without FPGA mods) as a "sampling
    trigger".=C2=A0 It's not really exposed that way in the API.<br>
    <br>
    Being able to measure the latency between its arrival on some other
    useful event within the FPGA requires FPGA programming--<br>
    =C2=A0 probably via the very-useful RFNoC framework, but FPGA program=
ming
    will be required, nonetheless.<br>
    <br>
    Samples arrive from USRPs with timestamps, and in the X310, those
    timestamps are applied as close to the output of<br>
    =C2=A0 the "ADC output plane" as possible, but group delays and so on
    ahead of the ADC aren't characterized, and will necessarily<br>
    =C2=A0 be somewhat unpredictable from daughtercard-type to
    daughtercard-type and even batch-to-batch in manufacturing and<br>
    =C2=A0 across hardware rev numbers.<br>
    <br>
    In a "burst type" replay environment, you can precisely control the
    burst output timing using timed streaming, since the<br>
    =C2=A0 timestamp/Time-of-Day clock on the USRP maintains time quite w=
ell
    if you use a precise 10MHz reference and use the 1PPS<br>
    =C2=A0 to synchronize to a particular time on session startup.<br>
    <br>
    But for *continuous* replay (as in a linear translator application
    and the like) this cannot be made to work well because<br>
    =C2=A0 latency in the computer is variable and unpredictable.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:DB9PR07MB84756392CE2341192ACCFB7CC2D69@DB9PR07MB8475.eurprd07=
.prod.outlook.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p></o:p></span></p=
>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p></o:p></span></p=
>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class=3D"MsoNormal"><b><span
                  style=3D"mso-fareast-language:ES" lang=3D"EN-US">From:<=
/span></b><span
                style=3D"mso-fareast-language:ES" lang=3D"EN-US"> Marcus =
D.
                Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:p=
atchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
                <br>
                <b>Sent:</b> jueves, 2 de febrero de 2023 16:40<br>
                <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> [USRP-users] Re: USRP x300 timing
                calibration<o:p></o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 02/02/2023 04:56, Ra=C3=BAl Nieto Fre=
ire
            wrote:<span style=3D"mso-fareast-language:ES"><o:p></o:p></sp=
an></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">Dear URSP community,<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">I'd like to launch
              some questions about the USRP x300 hardware (timing)
              calibration for a RF Record and Replay experiment using
              multifrequency GNSS, therefore using the two available RF
              frontends. I appreciate any help or hint you may provide.</=
span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><o:p><=
/o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">The samples recordi=
ng
              and replaying starts when a 1 PPS edge is detected.Also a
              very stable 10 MHz source is used. Would it be possible to
              measure the actual latency between the time a 1 PPS comes
              to the sma input port and the actual moment of the samples
              recording/replaying? If I'm not wrong this would give us,
              after a GNSS software demodulation and the latency
              removing, the total propagation delay from the GNSS
              antenna phase center to the internal USRP DAC.
            </span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><o:p><=
/o:p></p>
          <ol style=3D"margin-top:0cm" type=3D"1" start=3D"1">
            <li class=3D"MsoListParagraph"
              style=3D"margin-left:0cm;mso-list:l1 level1 lfo3"><span
                lang=3D"EN-US">Record setup:</span><o:p></o:p></li>
          </ol>
          <p class=3D"MsoNormal" style=3D"text-indent:18.0pt"><span
              lang=3D"EN-US">USRP x300 is connected to a RF splitter + DC
              block + and to a GNSS antenna for the recording setup.
            </span><o:p></o:p></p>
          <ol style=3D"margin-top:0cm" type=3D"1" start=3D"2">
            <li class=3D"MsoListParagraph"
              style=3D"margin-left:0cm;mso-list:l1 level1 lfo3"><span
                lang=3D"EN-US">Replay setup:</span><o:p></o:p></li>
          </ol>
          <p class=3D"MsoNormal" style=3D"text-indent:18.0pt"><span
              lang=3D"EN-US">USRP x300 is connected to the splitter as a
              combiner to join the two RF channels + DC block + 20dB
              atenuattor and its output to a GNSS receiver. =C2=A0</span>=
<o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><o:p><=
/o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">To perform our test=
s
              we have been using the UHD software and we are able to
              aligned our 1 PPS to a GNSSt timescale.</span><o:p></o:p></=
p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><o:p><=
/o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you very much=
.</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards,<br>
              Raul Nieto</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:ES">=
<o:p>=C2=A0</o:p></span></p>
        </blockquote>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:ES">Yo=
u're
            presumably using RFNoC to do the replay?=C2=A0 Because otherw=
ise,
            latency is wildly unpredictable.<br>
            <br>
            <br>
            <br>
            <br>
          </span><span
style=3D"font-size:18.0pt;font-family:Webdings;color:green;mso-fareast-la=
nguage:ES">P
          </span><span
style=3D"font-size:7.0pt;font-family:&quot;Arial&quot;,sans-serif;color:g=
reen;mso-fareast-language:ES">Please
            consider the environment before printing this e-mail.</span><=
span
            style=3D"mso-fareast-language:ES">
            <o:p></o:p></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------hMnaUIFD0jfB30XgNc0x0Hav--

--===============0169947785402028615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0169947785402028615==--
