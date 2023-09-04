Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB0B791A4C
	for <lists+usrp-users@lfdr.de>; Mon,  4 Sep 2023 17:09:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 28FB3384BF3
	for <lists+usrp-users@lfdr.de>; Mon,  4 Sep 2023 11:09:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693840191; bh=5nz++3/SxMRgB+hGTmRrKDlDODLhLmpFhpx7Y+/0iRk=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=DHs80dQdGUGyZqkJwCc1Kda/Dv4iSXu/EuYc+QCcCGJI4ybcNX1ZvyJ6+h0gTt7v2
	 zUIOG+V9qJ9LmmdTrz96ydFZyKo/wxiGU3OlxnlSxHuK+jXBStYZqxbH7xxRMnQowx
	 V7ZQZfaFDWNbK6oVTQxtM411OYdapbVgdHUitYgr/g78T8IeWwXxwQsmyYF1eX1Pp1
	 t+9ExeitgSUNq3FuCoZG1CoY1lAn1u97oOXXQW6Hlo+L7E2oANxONgU4CxkCQ4870Q
	 SiQH5XwdnqMMhow8c2XZ75yyh4RdCFl8+bSTJyIk8nrAvn28XLENi1/aKZI3jQZ4m7
	 obMvmzUKBzszg==
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 33A21384BA9
	for <usrp-users@lists.ettus.com>; Mon,  4 Sep 2023 11:09:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JPIlrskI";
	dkim-atps=neutral
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-76dc7b0da9fso74646985a.1
        for <usrp-users@lists.ettus.com>; Mon, 04 Sep 2023 08:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693840152; x=1694444952; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vgBrtK9gq7Z6J4CHIEYzVj25VHS/3s5Ln7V8pztOd7g=;
        b=JPIlrskIAL9dEyVfFydh36a268nG7+r+lBXC/EqGrEp7c0KfwUQ9XrwaSV0l69StZV
         l3soinR38o89QnT/A/S5A73sqPYY4cMm8xwJb3Qt7bw5OiZKsl/zJm0gRPoUQiErAFRr
         NZLfFnR7UhjlBt0sjsTiSv+AGPGWS/MvQykKv2BJHZSrrSAl+i/jjuxC0CQtkMrnutiQ
         nQFZCHj51CSsk+dQFK1h7btKOqIROX7ShM+m59aklSAMeJ0MVl7BED23NB3sVB5jt7Q7
         6RuPkPxq3gDlTjt8+0/eRed6vfT45aM/GwuAUlKRbDNQ2B/7cB6GQUDRn2mEWUFfTMP9
         22/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693840152; x=1694444952;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vgBrtK9gq7Z6J4CHIEYzVj25VHS/3s5Ln7V8pztOd7g=;
        b=A6CuAN2pBMaT2qMudk5fy03ftZPJQqFkT+9TULTWjBddEyaJUIGfYY0wfIm3OpzN6g
         yguDy6OQNSNgQ30HYkVWfEXvi5VUjcEFn32FYDeQvrtdjouHa0k6FEd0T4YgUcbFYVFw
         qyxQcZgUrreXxxoitlop6ACODV0qJeyIrAHwIa+g1fKvJXLRizZUZRCvd93QAr/fT/Si
         LegeOLLr2AZeFFSXN1svR8Mg8buvmlf21+vaef8FZCRvvBp3S/tog8P7PPTFR+220DnP
         7bydXfghFwMVqpbx00MvdY80cMXD89y/CWFltStEsVRP1VCnyzP5lDVvPiIQBL/d8RpW
         bdag==
X-Gm-Message-State: AOJu0YzQdQnHRXfpl7JUTczTWeqsFIGXTpPPQgm1k6D6ZVpJcmQ+HXI3
	XZH3oT7JrwIVJjQnPSymH2JPa9Jw8Gpt2A==
X-Google-Smtp-Source: AGHT+IE+Nx7sdYaw59QBZ6oDiw+f8ULx9/6knLjUHrigbr1hcl1zSil8joP+mWdbtGnpgCo99DHkaw==
X-Received: by 2002:a05:620a:2947:b0:76f:117f:54d8 with SMTP id n7-20020a05620a294700b0076f117f54d8mr12378233qkp.56.1693840152186;
        Mon, 04 Sep 2023 08:09:12 -0700 (PDT)
Received: from [192.168.2.217] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id w14-20020a05620a148e00b0076745f352adsm3366266qkj.59.2023.09.04.08.09.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Sep 2023 08:09:11 -0700 (PDT)
Message-ID: <891f9415-8240-a418-c46c-50e06dd36e99@gmail.com>
Date: Mon, 4 Sep 2023 11:09:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <59e265b257f840788dd9cde7795909fe@iis.fraunhofer.de>
 <6b0c0c05-272b-dd90-b9ba-00925bb43304@gmail.com>
 <01a2bc9fb5604266a9886019df08a24b@iis.fraunhofer.de>
 <19890307-c368-41b7-a176-01f7c0b0f7ea@gmail.com>
 <84befcf2d17f4398bcedb299791dc4c9@iis.fraunhofer.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <84befcf2d17f4398bcedb299791dc4c9@iis.fraunhofer.de>
Message-ID-Hash: PYTFEQ4JMHO3JDSWUEC6APXPO3TG2YIQ
X-Message-ID-Hash: PYTFEQ4JMHO3JDSWUEC6APXPO3TG2YIQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Nieland, Michael" <michael.nieland@iis.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC: strange behavior of FFT block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PYTFEQ4JMHO3JDSWUEC6APXPO3TG2YIQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7304599756705901760=="

This is a multi-part message in MIME format.
--===============7304599756705901760==
Content-Type: multipart/alternative;
 boundary="------------jBOT1EZS8RDVjuXwy9bb0hHg"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------jBOT1EZS8RDVjuXwy9bb0hHg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/09/2023 04:32, Bachmaier, Luca wrote:
>
> Hello Marcus,
>
> I=E2=80=99m currently using a USRP N310. Could you please explain what =
you=20
> wrote a little more? Where can I set the =E2=80=9Cfft_scaling=E2=80=9D =
parameter,=20
> directly in GNU Radio, over the Python API, =E2=80=A6? How do I set it =
there?
>
> Thank you and regards
>
> Luca
>
In "Block Args" you would specify:

"fft_scaling=3D<number>"

Where <number>=C2=A0 is a decimal constant corresponding to the desired=20
scaling schedule as described in the document
 =C2=A0 I referred to from Xilinx.

That's about as much as I know.=C2=A0 You should probably spend some time=
=20
with that Xilinx document.


> *Von:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Gesendet:* Mittwoch, 23. August 2023 17:10
> *An:* Bachmaier, Luca <luca.bachmaier@iis.fraunhofer.de>;=20
> usrp-users@lists.ettus.com
> *Betreff:* Re: AW: [USRP-users] Re: RFNoC: strange behavior of FFT bloc=
k
>
> On 23/08/2023 08:47, Bachmaier, Luca wrote:
>
>     Are you talking about the gain of the =E2=80=9CRFNoC Rx Radio=E2=80=
=9D block or a
>     software gain block before the FFT? Even with the highest possible
>     hardware gain it doesn=E2=80=99t seem to work.
>
> So, the "fft_scaling" parameter is actually a kind of bit-mapped=20
> value, described here:
>
> https://support.xilinx.com/s/article/1160838?language=3Den_US
>
>
>
>     *Von:*Marcus D. Leech <patchvonbraun@gmail.com>
>     <mailto:patchvonbraun@gmail.com>
>     *Gesendet:* Montag, 21. August 2023 16:49
>     *An:* usrp-users@lists.ettus.com
>     *Betreff:* [USRP-users] Re: RFNoC: strange behavior of FFT block
>
>     On 21/08/2023 09:04, Bachmaier, Luca wrote:
>
>         Hello everyone,
>
>         I=E2=80=99m currently running into issues while trying to use t=
he
>         RFNoC FFT block in GNU Radio. A picture of my GNU Radio
>         flowgraph and its QT GUI Vector Sink output are attached.
>
>         The configuration of UHD / my USRP should be correct as there
>         are no problems when I stream the RFNoC RX Radio Data to my
>         host and calculate the FFT on the host. However, when I try
>         calculating the FFT on the FPGA, the output seems to make no
>         sense. I can=E2=80=99t see a noise floor or any proper signals.
>         There=E2=80=99s just a randomly appearing and disappearing DC s=
pike.
>         Other than that, the spectrum is just a flat line (see
>         vector_sink.png).
>
>         I think that this problem comes from some faulty configuration
>         of the RFNoC FFT block. Unfortuantely, I haven=E2=80=99t been a=
ble to
>         find any helpful and up-to-date information about its usage
>         online. I would be very glad to get some help from this
>         mailing list.
>
>         Thank you and regards
>
>         Luca
>
>
>
>
>         _______________________________________________
>
>         USRP-users mailing list --usrp-users@lists.ettus.com
>
>         To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
>     You could try increasing the gain--it may be that due to the
>     integer implementation of the FFT, the signal levels are dropping
>     below
>     =C2=A0 the minimum quantization.
>
>

--------------jBOT1EZS8RDVjuXwy9bb0hHg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 04/09/2023 04:32, Bachmaier, Luca
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:84befcf2d17f4398bcedb299791dc4c9@iis.fraunhofer.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}span.HTMLVorformatiertZchn
	{mso-style-name:"HTML Vorformatiert Zchn";
	mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert";
	font-family:Consolas;
	mso-fareast-language:EN-US;}span.E-MailFormatvorlage20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}span.E-MailFormatvorlage21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.E-MailFormatvorlage22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hello Marcus=
,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">I=E2=80=99m
            currently using a USRP N310. Could you please explain what
            you wrote a little more? Where can I set the =E2=80=9Cfft_sca=
ling=E2=80=9D
            parameter, directly in GNU Radio, over the Python API, =E2=80=
=A6?
            How do I set it there?<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">Thank
            you and regards<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">Luca</span></p>
      </div>
    </blockquote>
    In "Block Args" you would specify:<br>
    <br>
    "fft_scaling=3D&lt;number&gt;"<br>
    <br>
    Where &lt;number&gt;=C2=A0 is a decimal constant corresponding to the
    desired scaling schedule as described in the document<br>
    =C2=A0 I referred to from Xilinx.<br>
    <br>
    That's about as much as I know.=C2=A0 You should probably spend some =
time
    with that Xilinx document.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:84befcf2d17f4398bcedb299791dc4c9@iis.fraunhofer.de">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <div style=3D"border:none;border-left:solid blue 1.5pt;padding:0c=
m
          0cm 0cm 4.0pt">
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0cm 0cm 0cm">
              <p class=3D"MsoNormal"><b><span
                    style=3D"mso-fareast-language:DE">Von:</span></b><spa=
n
                  style=3D"mso-fareast-language:DE"> Marcus D. Leech
                  <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
                  <br>
                  <b>Gesendet:</b> Mittwoch, 23. August 2023 17:10<br>
                  <b>An:</b> Bachmaier, Luca
                  <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:luca.=
bachmaier@iis.fraunhofer.de">&lt;luca.bachmaier@iis.fraunhofer.de&gt;</a>=
;
                  <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:us=
rp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                  <b>Betreff:</b> Re: AW: [USRP-users] Re: RFNoC:
                  strange behavior of FFT block<o:p></o:p></span></p>
            </div>
          </div>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          <div>
            <p class=3D"MsoNormal">On 23/08/2023 08:47, Bachmaier, Luca
              wrote:<span
                style=3D"font-size:12.0pt;mso-fareast-language:DE"><o:p><=
/o:p></span></p>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal"><span style=3D"color:#1F497D"
                lang=3D"EN-US">Are you talking about the gain of the
                =E2=80=9CRFNoC Rx Radio=E2=80=9D block or a software gain=
 block before
                the FFT? Even with the highest possible hardware gain it
                doesn=E2=80=99t seem to work.</span><o:p></o:p></p>
          </blockquote>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:12.0pt;font-family:&quot;Times New
              Roman&quot;,serif;mso-fareast-language:DE">So, the
              "fft_scaling" parameter is actually a kind of bit-mapped
              value, described here:<br>
              <br>
              <a
                href=3D"https://support.xilinx.com/s/article/1160838?lang=
uage=3Den_US"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
https://support.xilinx.com/s/article/1160838?language=3Den_US</a><br>
              <br>
              <br>
              <br>
              <o:p></o:p></span></p>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><o:p=
></o:p></p>
            <div style=3D"border:none;border-left:solid blue
              1.5pt;padding:0cm 0cm 0cm 4.0pt">
              <div>
                <div style=3D"border:none;border-top:solid #E1E1E1
                  1.0pt;padding:3.0pt 0cm 0cm 0cm">
                  <p class=3D"MsoNormal"><b><span
                        style=3D"mso-fareast-language:DE">Von:</span></b>=
<span
                      style=3D"mso-fareast-language:DE"> Marcus D. Leech
                      <a href=3D"mailto:patchvonbraun@gmail.com"
                        moz-do-not-send=3D"true">&lt;patchvonbraun@gmail.=
com&gt;</a>
                      <br>
                      <b>Gesendet:</b> Montag, 21. August 2023 16:49<br>
                      <b>An:</b> <a
                        href=3D"mailto:usrp-users@lists.ettus.com"
                        moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">usrp-users@lists.=
ettus.com</a><br>
                      <b>Betreff:</b> [USRP-users] Re: RFNoC: strange
                      behavior of FFT block</span><o:p></o:p></p>
                </div>
              </div>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
              <div>
                <p class=3D"MsoNormal">On 21/08/2023 09:04, Bachmaier,
                  Luca wrote:<o:p></o:p></p>
              </div>
              <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                <p class=3D"MsoNormal">Hello everyone,<o:p></o:p></p>
                <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m c=
urrently
                    running into issues while trying to use the RFNoC
                    FFT block in GNU Radio. A picture of my GNU Radio
                    flowgraph and its QT GUI Vector Sink output are
                    attached.</span><o:p></o:p></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">The
                    configuration of UHD / my USRP should be correct as
                    there are no problems when I stream the RFNoC RX
                    Radio Data to my host and calculate the FFT on the
                    host. However, when I try calculating the FFT on the
                    FPGA, the output seems to make no sense. I can=E2=80=99=
t see
                    a noise floor or any proper signals. There=E2=80=99s =
just a
                    randomly appearing and disappearing DC spike. Other
                    than that, the spectrum is just a flat line (see
                    vector_sink.png).</span><o:p></o:p></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span>=
<o:p></o:p></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">I think that
                    this problem comes from some faulty configuration of
                    the RFNoC FFT block. Unfortuantely, I haven=E2=80=99t=
 been
                    able to find any helpful and up-to-date information
                    about its usage online. I would be very glad to get
                    some help from this mailing list.</span><o:p></o:p></=
p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span>=
<o:p></o:p></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you and
                    regards</span><o:p></o:p></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">Luca</span><o=
:p></o:p></p>
                <p class=3D"MsoNormal"><span style=3D"font-size:12.0pt"><=
br>
                    <br>
                    <br>
                  </span><o:p></o:p></p>
                <pre>_______________________________________________<o:p>=
</o:p></pre>
                <pre>USRP-users mailing list -- <a href=3D"mailto:usrp-us=
ers@lists.ettus.com" moz-do-not-send=3D"true" class=3D"moz-txt-link-freet=
ext">usrp-users@lists.ettus.com</a><o:p></o:p></pre>
                <pre>To unsubscribe send an email to <a href=3D"mailto:us=
rp-users-leave@lists.ettus.com" moz-do-not-send=3D"true" class=3D"moz-txt=
-link-freetext">usrp-users-leave@lists.ettus.com</a><o:p></o:p></pre>
              </blockquote>
              <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                  style=3D"font-size:12.0pt">You could try increasing the
                  gain--it may be that due to the integer implementation
                  of the FFT, the signal levels are dropping below<br>
                  =C2=A0 the minimum quantization.<br>
                  <br>
                  <br>
                </span><o:p></o:p></p>
            </div>
          </blockquote>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:12.0pt;font-family:&quot;Times New
              Roman&quot;,serif;mso-fareast-language:DE"><o:p>=C2=A0</o:p=
></span></p>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------jBOT1EZS8RDVjuXwy9bb0hHg--

--===============7304599756705901760==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7304599756705901760==--
