Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0E13F1082
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 04:44:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 276EB383C20
	for <lists+usrp-users@lfdr.de>; Wed, 18 Aug 2021 22:44:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HmJExg87";
	dkim-atps=neutral
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 9041F383BD6
	for <usrp-users@lists.ettus.com>; Wed, 18 Aug 2021 22:43:17 -0400 (EDT)
Received: by mail-qk1-f174.google.com with SMTP id t68so5551401qkf.8
        for <usrp-users@lists.ettus.com>; Wed, 18 Aug 2021 19:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=RRvdiAFqETAJ4kvD5yuz1EhhH+ojTr3+aqjJ6UY/Gbk=;
        b=HmJExg87PHq0HCBL7pe/eQ11w5Dd6Sg2l5Jzg3LsKvAIGoAI/6qVUaaU9IUkZv9VmZ
         QGRODrOtwlq71UoNJ1DHzdm+WGUczh2gCDNK+ItuIYX7SHZHeIHA0UFYX7Z3oKXJvbFU
         d7glG0dFdciudR5z/rmNfjhAQrZr+4XXEd5T7tnvz9i3N4HfUj5qYJrjxN6GKd8aeOhB
         YdwpJVe/Ga55wMZrH6ASyxyHAblyp7ttqTkUcyRQD0WWuF/no/TqEmoOAykzQVYa20xc
         n/hz6I1ZtL2sk+c5z3FkMLG8xSx/H5iFvJKI1sHRIeoTB9WQGgggjZmjkfFjHFy6MI44
         QiBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=RRvdiAFqETAJ4kvD5yuz1EhhH+ojTr3+aqjJ6UY/Gbk=;
        b=W80zma8GN4MkEzsunlbQIIBmRvzirsl/72R8upby4wMKZzmEDbtnj6prLEcszBSpw9
         QD3zAdJPQ/QvVnsW1POJC7Ayip+jVr0z923PxZaTuIz0xYWPiDA3YE3sYA/WEWx9pMzz
         GQ8O7oHeLkbz/s2d8O1ErmID8/MLSomyP9zizJ4OgHXzeN4uX5E4SPgdXAUMQrhU86bG
         cht9Y3dqEM9f26sxvjbJcnIh9nuQfzk1zEEQemdgVReF381JechRdnU11u3gzdRLAIbt
         N1jUL2+uuvbC/lWnT/Mpxp9uuvnFx29+Sfq5Zr9xm6+xM3m5QsTe84TJsRqdMx1UMRBu
         BuKA==
X-Gm-Message-State: AOAM5339espSqj6ldb33/pp8RAflofeyyVnvq9Pq7C6npUMdQaYE2TNc
	IKJXn+CLwxGmrENbobyiOa/+qI71eeW6GA==
X-Google-Smtp-Source: ABdhPJxzsy0awYCvVPWxCqbvdjrMX0B1QY1qMKTv2zJ4JCjCT4xW5v3pUdMDCWGw6PL6WHleNbxpyQ==
X-Received: by 2002:a05:620a:254c:: with SMTP id s12mr1533279qko.112.1629340996778;
        Wed, 18 Aug 2021 19:43:16 -0700 (PDT)
Received: from [192.168.2.19] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id h70sm973702qke.54.2021.08.18.19.43.15
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 19:43:16 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CWLP265MB339632A5A9B43B1C73C5E426A5C09@CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <c9193ec9-349d-9ad5-8e1e-eb91dafe70b5@gmail.com>
Date: Wed, 18 Aug 2021 22:43:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CWLP265MB339632A5A9B43B1C73C5E426A5C09@CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM>
Content-Language: en-US
Message-ID-Hash: PY42ATZU24RO7QCVCYOCFVLZC2OCPJTG
X-Message-ID-Hash: PY42ATZU24RO7QCVCYOCFVLZC2OCPJTG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to prepare I/Q sample for tx_streamer
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PY42ATZU24RO7QCVCYOCFVLZC2OCPJTG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0940300103753647021=="

This is a multi-part message in MIME format.
--===============0940300103753647021==
Content-Type: multipart/alternative;
 boundary="------------B9DDF9232119D84FD34253F1"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------B9DDF9232119D84FD34253F1
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-08-18 10:31 p.m., ?? WANG Cui wrote:
>
> Hi,
>
> Maybe I am asking a newbie question.
>
> When use tx_streamer::send() function to send signal, the required=20
> format is I/Q samples (say otw_format =3D sc16). I understand should=20
> provide I/Q samples buffer in arguments.
>
> I am wondering for the I/Q samples, should I provide binary values=20
> buffer (e.g. I: 1, -1, 1..., Q: -1, 1, -1...), then the USRP firmware=20
> will modulate the binary values to specific Cos/Sin waves?
>
> Or I should do the Cos/Sin modulation in my program (e.g. I: 0, -.001,=20
> 0.002..., Q: -1, 0.999, -0.998...) before pass the buffer send() functi=
on?
>
> I searched the documents, but can=92t find answer, thanks in advance fo=
r=20
> explanation,
>
> WANG Cui
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
The whole point of an SDR is that it doesn't have any pre-defined notion=20
of what modulation techniques are used, etc.=A0 That's entirely up to you=
.

You're sending a complex-baseband representation of *waveforms*. The UHD=20
library is NOT a DSP library.=A0 It is a device-interface library.

If you need something higher-level, there's Gnu Radio=20
(http://www.gnuradio.org) or even MATLAB.=A0 But SDR radios in general=20
don't have any
 =A0 built-in modulation.=A0 They want sampled baseband waveforms.



--------------B9DDF9232119D84FD34253F1
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-08-18 10:31 p.m., ?? WANG Cui
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CWLP265MB339632A5A9B43B1C73C5E426A5C09@CWLP265MB3396.GBRP265.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:DengXian;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
        <p class=3D"MsoNormal">Hi,<o:p></o:p></p>
        <p class=3D"MsoNormal">Maybe I am asking a newbie question.<o:p><=
/o:p></p>
        <p class=3D"MsoNormal">When use tx_streamer::send() function to
          send signal, the required format is I/Q samples (say
          otw_format =3D sc16). I understand should provide I/Q samples
          buffer in arguments.<o:p></o:p></p>
        <p class=3D"MsoNormal">I am wondering for the I/Q samples, should
          I provide binary values buffer (e.g. I: 1, -1, 1..., Q: -1, 1,
          -1...), then the USRP firmware will modulate the binary values
          to specific Cos/Sin waves?<o:p></o:p></p>
        <p class=3D"MsoNormal">Or I should do the Cos/Sin modulation in m=
y
          program (e.g. I: 0, -.001, 0.002..., Q: -1, 0.999, -0.998...)
          before pass the buffer send() function?<o:p></o:p></p>
        <p class=3D"MsoNormal">I searched the documents, but can=92t find
          answer, thanks in advance for explanation,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">WANG Cui<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    The whole point of an SDR is that it doesn't have any pre-defined
    notion of what modulation techniques are used, etc.=A0 That's entirel=
y
    up to you.<br>
    <br>
    You're sending a complex-baseband representation of *waveforms*.=A0=A0
    The UHD library is NOT a DSP library.=A0 It is a device-interface
    library.<br>
    <br>
    If you need something higher-level, there's Gnu Radio
    (<a class=3D"moz-txt-link-freetext" href=3D"http://www.gnuradio.org">=
http://www.gnuradio.org</a>) or even MATLAB.=A0 But SDR radios in general
    don't have any<br>
    =A0 built-in modulation.=A0 They want sampled baseband waveforms.<br>
    <br>
    <br>
  </body>
</html>

--------------B9DDF9232119D84FD34253F1--

--===============0940300103753647021==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0940300103753647021==--
