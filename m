Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F873F1211
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 05:45:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 60FA3384439
	for <lists+usrp-users@lfdr.de>; Wed, 18 Aug 2021 23:45:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Zt0ePjez";
	dkim-atps=neutral
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id C3AA73840F3
	for <usrp-users@lists.ettus.com>; Wed, 18 Aug 2021 23:44:52 -0400 (EDT)
Received: by mail-qk1-f175.google.com with SMTP id t66so5760842qkb.0
        for <usrp-users@lists.ettus.com>; Wed, 18 Aug 2021 20:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=26T/bwF+AJGB6uqEGP+2ndJ3l2CgKlcr1Y5ShftR9Fs=;
        b=Zt0ePjezYqdRKcx5t4/ztfmdkpTqxJ+X83xhCQtCXWWZS0K/N6MjEjxAJifb+foZTU
         KpZQ3RpCgg5HTWOMR44Atujey0yXkmCclVQppfKXOyQnIWD+TbvYG9Vc98Indullwfv+
         w1TCdysHLfYz6WD6HEHiB9hyUn6Dt/kOdex+9Py16HI/EYJ0UYVbljJrYIbrjn62Ap4s
         6UVkaHK+APXzbDFeBEo0KPZy/6X87WMNTFTSuuCzYN4I7tuLdP6xXcdhz6Wk6h08ee/3
         w2X6tV6EkQX1zbOKW/NptCXwNfRMr+dfDpkDlHNswZc+p6wV8pYEPRDj4LlPXBEUOhoT
         nB2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=26T/bwF+AJGB6uqEGP+2ndJ3l2CgKlcr1Y5ShftR9Fs=;
        b=lkISAYEv1fKg6wNi4yx6LtFEkkjChu/7hxhS0dQJBHEJzDzrwuIEnENKDQo+rUKb43
         rSFPNJF+lhoKZt4uaZuDQurHKLkTU5ySojqtUWEaoWgxnjQIBGraYeWMv49GT69vwCFn
         lxEJ8bMonhaJqOtkJH1IbWfsBT1KdG/SGNkWnupm6auTJvEkWrixiBNVffSbGFRpXfJj
         GAO07qO0kR6no8NU5wV7K0VsZA9Dk9Q5J0unWW5ZVl4c5GhzNnJCMYtvHl+KFSPvdmUs
         Tla5xN2wVMPdh0Ma/WiIb/mgtQydLFxkzNk8fEKWJQpSemFaXCBKxgBHIp1ttMzZnf6s
         QzKg==
X-Gm-Message-State: AOAM530yqK5ObTmQJt7i+VaSUCLVA6qxyoTvlDJX/9fm4o24CRuiwV3A
	SwqkyMh1pjsnF/nhlR9fNOKAE7GW/jJQbA==
X-Google-Smtp-Source: ABdhPJwzwCO1wH5xXgsFUVzuNKxeb2EBO+tRmJiikJB7q2rZ3hBdcfoI6gNtwYMago8H0iGAvaJvtg==
X-Received: by 2002:a05:620a:288b:: with SMTP id j11mr1666387qkp.175.1629344692037;
        Wed, 18 Aug 2021 20:44:52 -0700 (PDT)
Received: from [192.168.2.19] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id d8sm914640qtr.0.2021.08.18.20.44.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 20:44:51 -0700 (PDT)
To: ?? WANG Cui <iucgnaw@msn.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CWLP265MB339632A5A9B43B1C73C5E426A5C09@CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM>
 <c9193ec9-349d-9ad5-8e1e-eb91dafe70b5@gmail.com>
 <CWLP265MB3396958B0D0915A3FA6325D7A5C09@CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <a9d57689-30df-238f-9b0d-258b3509a9f7@gmail.com>
Date: Wed, 18 Aug 2021 23:44:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CWLP265MB3396958B0D0915A3FA6325D7A5C09@CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM>
Content-Language: en-US
Message-ID-Hash: 7PSXTSXLKKAZG2G3BXXDTBQDY3KBR5RU
X-Message-ID-Hash: 7PSXTSXLKKAZG2G3BXXDTBQDY3KBR5RU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to prepare I/Q sample for tx_streamer
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7PSXTSXLKKAZG2G3BXXDTBQDY3KBR5RU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0151305418716242330=="

This is a multi-part message in MIME format.
--===============0151305418716242330==
Content-Type: multipart/alternative;
 boundary="------------B64C620CC05BFC16FFAB551D"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------B64C620CC05BFC16FFAB551D
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-08-18 11:02 p.m., ?? WANG Cui wrote:
>
> Hi Marcus,
>
> Thanks for the explanation, so I have to prepare the I/Q samples in my=20
> program.
>
> Furthermore, can I understand the send() function will=20
> multiplex/transform the I/Q samples to final REAL baseband waveform=20
> samples. Then the USRP hardware simply multiply amplitude of each REAL=20
> sample to the carrier frequency and transmit?
>
> WANG Cui
>
You might usefully spend some time here:

https://kb.ettus.com/Knowledge_Base

Also the "tx_samples_from_file" example applicaton shows you how samples=20
are delivered to the send() function.=A0 Most applications use floating-p=
oint
 =A0 I/Q samples on the host side, and the UHD driver converts them to=20
16-bit values over the wire.


> *From:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Thursday, August 19, 2021 10:43 AM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: How to prepare I/Q sample for tx_streamer
>
> On 2021-08-18 10:31 p.m., ?? WANG Cui wrote:
>
>     Hi,
>
>     Maybe I am asking a newbie question.
>
>     When use tx_streamer::send() function to send signal, the required
>     format is I/Q samples (say otw_format =3D sc16). I understand shoul=
d
>     provide I/Q samples buffer in arguments.
>
>     I am wondering for the I/Q samples, should I provide binary values
>     buffer (e.g. I: 1, -1, 1..., Q: -1, 1, -1...), then the USRP
>     firmware will modulate the binary values to specific Cos/Sin waves?
>
>     Or I should do the Cos/Sin modulation in my program (e.g. I: 0,
>     -.001, 0.002..., Q: -1, 0.999, -0.998...) before pass the buffer
>     send() function?
>
>     I searched the documents, but can=92t find answer, thanks in advanc=
e
>     for explanation,
>
>     WANG Cui
>
>
>
>     _______________________________________________
>
>     USRP-users mailing list --usrp-users@lists.ettus.com  <mailto:usrp-=
users@lists.ettus.com>
>
>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com  <m=
ailto:usrp-users-leave@lists.ettus.com>
>
> The whole point of an SDR is that it doesn't have any pre-defined=20
> notion of what modulation techniques are used, etc.=A0 That's entirely=20
> up to you.
>
> You're sending a complex-baseband representation of *waveforms*.=A0=A0 =
The=20
> UHD library is NOT a DSP library.=A0 It is a device-interface library.
>
> If you need something higher-level, there's Gnu Radio=20
> (http://www.gnuradio.org) or even MATLAB.=A0 But SDR radios in general=20
> don't have any
> =A0 built-in modulation.=A0 They want sampled baseband waveforms.
>


--------------B64C620CC05BFC16FFAB551D
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-08-18 11:02 p.m., ?? WANG Cui
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CWLP265MB3396958B0D0915A3FA6325D7A5C09@CWLP265MB3396.GBRP265.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:11.0pt;
	font-family:DengXian;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:DengXian;
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:DengXian;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi Marcus,<o:p></o:p></p>
        <p class=3D"MsoNormal">Thanks for the explanation, so I have to
          prepare the I/Q samples in my program.<o:p></o:p></p>
        <p class=3D"MsoNormal">Furthermore, can I understand the send()
          function will multiplex/transform the I/Q samples to final
          REAL baseband waveform samples. Then the USRP hardware simply
          multiply amplitude of each REAL sample to the carrier
          frequency and transmit?<o:p></o:p></p>
        <p class=3D"MsoNormal">WANG Cui</p>
      </div>
    </blockquote>
    You might usefully spend some time here:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/Knowl=
edge_Base">https://kb.ettus.com/Knowledge_Base</a><br>
    <br>
    Also the "tx_samples_from_file" example applicaton shows you how
    samples are delivered to the send() function.=A0 Most applications us=
e
    floating-point<br>
    =A0 I/Q samples on the host side, and the UHD driver converts them to
    16-bit values over the wire.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CWLP265MB3396958B0D0915A3FA6325D7A5C09@CWLP265MB3396.GBRP265.=
PROD.OUTLOOK.COM">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"lef=
t"><b><span
                  style=3D"font-family:&quot;Calibri&quot;,sans-serif">Fr=
om:</span></b><span
                style=3D"font-family:&quot;Calibri&quot;,sans-serif">
                Marcus D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D=
"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
                <br>
                <b>Sent:</b> Thursday, August 19, 2021 10:43 AM<br>
                <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> [USRP-users] Re: How to prepare I/Q
                sample for tx_streamer<o:p></o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"><=
o:p>=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"=
>On
            2021-08-18 10:31 p.m., ?? WANG Cui wrote:<o:p></o:p></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">Hi,<o:p></o:p></p>
          <p class=3D"MsoNormal">Maybe I am asking a newbie question.<o:p=
></o:p></p>
          <p class=3D"MsoNormal">When use tx_streamer::send() function to
            send signal, the required format is I/Q samples (say
            otw_format =3D sc16). I understand should provide I/Q samples
            buffer in arguments.<o:p></o:p></p>
          <p class=3D"MsoNormal">I am wondering for the I/Q samples,
            should I provide binary values buffer (e.g. I: 1, -1, 1...,
            Q: -1, 1, -1...), then the USRP firmware will modulate the
            binary values to specific Cos/Sin waves?<o:p></o:p></p>
          <p class=3D"MsoNormal">Or I should do the Cos/Sin modulation in
            my program (e.g. I: 0, -.001, 0.002..., Q: -1, 0.999,
            -0.998...) before pass the buffer send() function?<o:p></o:p>=
</p>
          <p class=3D"MsoNormal">I searched the documents, but can<span
              lang=3D"ZH-CN">=92</span>t find answer, thanks in advance f=
or
            explanation,<o:p></o:p></p>
          <p class=3D"MsoNormal">=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">WANG Cui<o:p></o:p></p>
          <p class=3D"MsoNormal">=A0<o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"=
><span
              style=3D"font-family:&quot;Calibri&quot;,sans-serif"><br>
              <br>
              <o:p></o:p></span></p>
          <pre>_______________________________________________<o:p></o:p>=
</pre>
          <pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@li=
sts.ettus.com" moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a><o:=
p></o:p></pre>
          <pre>To unsubscribe send an email to <a href=3D"mailto:usrp-use=
rs-leave@lists.ettus.com" moz-do-not-send=3D"true">usrp-users-leave@lists=
.ettus.com</a><o:p></o:p></pre>
        </blockquote>
        <p class=3D"MsoNormal"
          style=3D"margin-bottom:12.0pt;text-align:left" align=3D"left"><=
span
            style=3D"font-family:&quot;Calibri&quot;,sans-serif">The whol=
e
            point of an SDR is that it doesn't have any pre-defined
            notion of what modulation techniques are used, etc.=A0 That's
            entirely up to you.<br>
            <br>
            You're sending a complex-baseband representation of
            *waveforms*.=A0=A0 The UHD library is NOT a DSP library.=A0 I=
t is
            a device-interface library.<br>
            <br>
            If you need something higher-level, there's Gnu Radio (<a
              href=3D"http://www.gnuradio.org" moz-do-not-send=3D"true">h=
ttp://www.gnuradio.org</a>)
            or even MATLAB.=A0 But SDR radios in general don't have any<b=
r>
            =A0 built-in modulation.=A0 They want sampled baseband
            waveforms.<br>
            <br>
            <o:p></o:p></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------B64C620CC05BFC16FFAB551D--

--===============0151305418716242330==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0151305418716242330==--
