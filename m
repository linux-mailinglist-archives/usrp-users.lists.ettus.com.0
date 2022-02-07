Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A27604AC667
	for <lists+usrp-users@lfdr.de>; Mon,  7 Feb 2022 17:49:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 65BB5384FBB
	for <lists+usrp-users@lfdr.de>; Mon,  7 Feb 2022 11:49:08 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XgVp9qng";
	dkim-atps=neutral
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 6DD3A384E7B
	for <usrp-users@lists.ettus.com>; Mon,  7 Feb 2022 11:48:02 -0500 (EST)
Received: by mail-qt1-f169.google.com with SMTP id k25so12398853qtp.4
        for <usrp-users@lists.ettus.com>; Mon, 07 Feb 2022 08:48:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=40KuvO5tNnaYGKBJi4ch58hh7ZBPyvvSta1D2Oq343o=;
        b=XgVp9qng5wfFE3ROiWAyw4GWysysWjrkeE1E9OlIp03JUXkZu7Fre6sG815EFiY2Pu
         YrfbfC7XLHd6qj5oQJd5o2GY3MzYDtbiMEloaUZ/QIQsKVRCNiSTsQpsNkeQcO3zYaAe
         Ur2Gzlg7ThcskCuPAbZWt0829osLZEARkEIqsieIkK8sIRKBdBKoUxjKpDy5+6RF4DMQ
         px6oXpvoFm/1ZvT/jTAkC3+UBlBfaI+EGwDaMCpDz7Dp18IWpSBAwVM1IdgpQHVf6Cxw
         XXNE7AxRAQR/y2B7KwF5qjmMk/8Rj2jeRKH1B2mOW5jo/vhX0/OZU83od7+mNL7hwQ7t
         OabQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=40KuvO5tNnaYGKBJi4ch58hh7ZBPyvvSta1D2Oq343o=;
        b=x4ApTf7DZXxwnWSvluLz2NxOCGMwptQLfx5mOL0b7mLUbj8WCbZ63zkT4GR4QeTDYm
         OpTrxrPMH+9F34Q8gEA0gXClpfbAunPCQHz4jiP/iWC0G0MvZzq9au7Vr4PQUJLY5HSF
         doOj2oe2LAYsgTD0B/HB/Bgz9fWES1nA/HYZq4YoED9+DnawBrdQnAVUt1i4XA8BCSk9
         p2Iz7rT8ndORe56/uQE6i6AANxWEGkN2YcTlAStsDlrARcWKYT1leHAZW7NDuO6kvTfp
         Nv6BuAK9COBqNm9N26V5CEzmVytqmuZKV5hyfLeLXnfmjcby/EyQmU7g7yj1KOuDK7JR
         /dDw==
X-Gm-Message-State: AOAM532xfehUz2IW84UGtFN+l9qyx6ZSASsXxknCWkA8vjJjbHSGDvi8
	Uysxt+q95eRGukpoXJdWip2MBqu4UFs=
X-Google-Smtp-Source: ABdhPJz8J6+9GYfOgeR2zahQA7MzlRI1z5/S+XLzh4HSSRbSTGwu81BzVFDg0E3rqFljXElJVaDldQ==
X-Received: by 2002:ac8:578a:: with SMTP id v10mr277281qta.148.1644252481448;
        Mon, 07 Feb 2022 08:48:01 -0800 (PST)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id bl34sm3301280qkb.15.2022.02.07.08.48.00
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Feb 2022 08:48:01 -0800 (PST)
Message-ID: <84c7f9ba-91c4-58f2-f4e0-94828ac2a5bc@gmail.com>
Date: Mon, 7 Feb 2022 11:47:58 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <f4069dea5a274141ae4b9952254b177a@dlr.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <f4069dea5a274141ae4b9952254b177a@dlr.de>
Message-ID-Hash: 2MCN33TN56TLGNYUJZCYNLCRL6EWU4MH
X-Message-ID-Hash: 2MCN33TN56TLGNYUJZCYNLCRL6EWU4MH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200 group delay variations
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2MCN33TN56TLGNYUJZCYNLCRL6EWU4MH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2461588444797077768=="

This is a multi-part message in MIME format.
--===============2461588444797077768==
Content-Type: multipart/alternative;
 boundary="------------ORtzeW6AFrls1sGVKoo0DW1w"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ORtzeW6AFrls1sGVKoo0DW1w
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-07 02:44, Emanuel.Staudinger@dlr.de wrote:
>
> Hi all,
>
> we have a custom Gnuradio implementation with many B200mini USRPs,=20
> which enables precise round-trip time (RTT) based ranging among those=20
> devices. The MAC is TDMA based with the automatic Tx/Rx switching and=20
> to compensate for the USRPs group delay we perform ranging over an=20
> RF-splitter which we calibrated beforehand with a vector network analyz=
er.
>
> We observed that the estimated RTT over multiple calibration=20
> measurement runs is unstable in the order of up to 1ns. Within one=20
> measurement run of at least 5 minutes with 10 RTT estimates per=20
> second, it is pretty stable, but when we restart the flowgraph, we=20
> observe a bias.
>
> Please find at the end of this E-Mail all things we already tried to=20
> narrow down the issue (a compressed version).
>
> In short:
>
>   * We finally used only two B210 with a single external reference
>     clock, a sampling rate of 25MHz, and a manually set master clock
>     rate of 50MHz.
>       o In this setup the estimated RTT over multiple measurement runs
>         can vary from run to run by <50ps (ok for us), but also by
>         280ps or 750ps (far too much for us). The standard deviation
>         of RTT estimates within one measurement run is about 70ps, and
>         each run contains 2000 to 3500 RTT estimates.
>   * To cross check our implementation, we used the very same
>     flow-graph with two X310 with CBX-120 front-ends, a common
>     external reference clock, and only increased the transmit signal
>     padding by 40us (because the ramp-up time is larger for this
>     front-end).
>       o RTT estimates over multiple runs are picture perfect: the mean
>         RTT varies by less than 5ps over multiple measurement runs.
>
> Any idea what could cause those variations for the B200 series?
>
> We use UHD 3.15.
>
> Best regards,
>
> Emanuel
>
>
Since these variations are very-much sub-single-sample in scale, my=20
guess is that this has to do with the very-complex "calibration"=20
mechanism that the AD9361
 =C2=A0 undergoes when it is initialized, and when you change frequency. =
Many=20
of the elements in that sequence are, I think, analog in nature.=C2=A0 Th=
ere=20
may be some
 =C2=A0 "Monte-Carlo" elements in this, either "inherent" (because you're=
=20
dealing with the vagaries of the analog world), or perhaps explicit in=20
algorithms like
 =C2=A0 I/Q imbalance compensation.

In contrast, on the X310 with a CBX, any I/Q balance compensation (which=20
can affect phase), is entirely static, and the signal pathway in the=20
analog domain is very
 =C2=A0 much simpler, with very much less "dynamic tweaking" during=20
initialization and tuning.

My understanding is that AD9361 does not allow turning off any of those=20
compensation algorithms.

Now, a caveat is that this is an educated hunch, based on the nature of=20
the issue.=C2=A0 It could be something else, but the *scale* of the issue=
=20
suggests something
 =C2=A0 in the analog domain.


--------------ORtzeW6AFrls1sGVKoo0DW1w
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-07 02:44,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:Emanuel.Staudi=
nger@dlr.de">Emanuel.Staudinger@dlr.de</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:f4069dea5a274141ae4b9952254b177a@dlr.de">
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}p.MsoListParagraph, li.MsoListParagraph, div.=
MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}ol
	{margin-bottom:0cm;}ul
	{margin-bottom:0cm;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"DE">Hi all,<o:p></o:p></span=
></p>
        <p class=3D"MsoNormal"><span lang=3D"DE"><o:p>=C2=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal">we have a custom Gnuradio implementation
          with many B200mini USRPs, which enables precise round-trip
          time (RTT) based ranging among those devices. The MAC is TDMA
          based with the automatic Tx/Rx switching and to compensate for
          the USRPs group delay we perform ranging over an RF-splitter
          which we calibrated beforehand with a vector network analyzer.<=
o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">We observed that the estimated RTT over
          multiple calibration measurement runs is unstable in the order
          of up to 1ns. Within one measurement run of at least 5 minutes
          with 10 RTT estimates per second, it is pretty stable, but
          when we restart the flowgraph, we observe a bias.<o:p></o:p></p=
>
        <p class=3D"MsoNormal">Please find at the end of this E-Mail all
          things we already tried to narrow down the issue (a compressed
          version).<o:p></o:p></p>
        <p class=3D"MsoNormal">In short: <o:p></o:p></p>
        <ul style=3D"margin-top:0cm" type=3D"disc">
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0cm;mso-list:l1 level1 lfo1">We finally
            used only two B210 with a single external reference clock, a
            sampling rate of 25MHz, and a manually set master clock rate
            of 50MHz.<o:p></o:p>
            <ul style=3D"margin-top:0cm" type=3D"circle">
              <li class=3D"MsoListParagraph"
                style=3D"margin-left:0cm;mso-list:l1 level2 lfo1">In this
                setup the estimated RTT over multiple measurement runs
                can vary from run to run by &lt;50ps (ok for us), but
                also by 280ps or 750ps (far too much for us). The
                standard deviation of RTT estimates within one
                measurement run is about 70ps, and each run contains
                2000 to 3500 RTT estimates.<o:p></o:p></li>
            </ul>
          </li>
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0cm;mso-list:l1 level1 lfo1">To cross
            check our implementation, we used the very same flow-graph
            with two X310 with CBX-120 front-ends, a common external
            reference clock, and only increased the transmit signal
            padding by 40us (because the ramp-up time is larger for this
            front-end).<o:p></o:p>
            <ul style=3D"margin-top:0cm" type=3D"circle">
              <li class=3D"MsoListParagraph"
                style=3D"margin-left:0cm;mso-list:l1 level2 lfo1">RTT
                estimates over multiple runs are picture perfect: the
                mean RTT varies by less than 5ps over multiple
                measurement runs.<o:p></o:p></li>
            </ul>
          </li>
        </ul>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Any idea what could cause those variations
          for the B200 series?<o:p></o:p></p>
        <p class=3D"MsoNormal">We use UHD 3.15.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"
          style=3D"line-height:16.0pt;punctuation-wrap:simple;text-autosp=
ace:none">
          Best regards,<o:p></o:p></p>
        <p class=3D"MsoNormal"
          style=3D"line-height:16.0pt;punctuation-wrap:simple;text-autosp=
ace:none">
          Emanuel<o:p></o:p></p>
        <br>
      </div>
    </blockquote>
    Since these variations are very-much sub-single-sample in scale, my
    guess is that this has to do with the very-complex "calibration"
    mechanism that the AD9361<br>
    =C2=A0 undergoes when it is initialized, and when you change frequenc=
y.=C2=A0
    Many of the elements in that sequence are, I think, analog in
    nature.=C2=A0 There may be some<br>
    =C2=A0 "Monte-Carlo" elements in this, either "inherent" (because you=
're
    dealing with the vagaries of the analog world), or perhaps explicit
    in algorithms like<br>
    =C2=A0 I/Q imbalance compensation.<br>
    <br>
    In contrast, on the X310 with a CBX, any I/Q balance compensation
    (which can affect phase), is entirely static, and the signal pathway
    in the analog domain is very<br>
    =C2=A0 much simpler, with very much less "dynamic tweaking" during
    initialization and tuning.<br>
    <br>
    My understanding is that AD9361 does not allow turning off any of
    those compensation algorithms.<br>
    <br>
    Now, a caveat is that this is an educated hunch, based on the nature
    of the issue.=C2=A0 It could be something else, but the *scale* of th=
e
    issue suggests something<br>
    =C2=A0 in the analog domain.<br>
    <br>
    <br>
  </body>
</html>

--------------ORtzeW6AFrls1sGVKoo0DW1w--

--===============2461588444797077768==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2461588444797077768==--
