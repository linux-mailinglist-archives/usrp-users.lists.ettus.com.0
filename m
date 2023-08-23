Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC07785B8F
	for <lists+usrp-users@lfdr.de>; Wed, 23 Aug 2023 17:10:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F2EE0384AAC
	for <lists+usrp-users@lfdr.de>; Wed, 23 Aug 2023 11:10:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692803440; bh=thDRUA1XcpoVdPtShVLowMshWvcjvqAeWmWIMETxAgA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=hYPBlCX58CmkLY9iowbH6UajEuIqduh38J4e3TzJV7LXlPp6L1hu+dokj018SKhCL
	 AcwuVGHx4xMfGL7dG7xPDng8pXKLX8fZq2m4Y+moVmQFLFFGdrkTdWTVluhWkqRzub
	 HWYwS5/uwM+g7Tngsq9yZePjqAVhIYRSysD68VSdwoQHbGr7EwUcLIzt0xAMFiGYNN
	 O01b56MWHGODYAvVFKMlGKgjDsYSqFBoIIJNDCRpoRRYGddYtLv+EpAejTs/+oYale
	 ddRLmGPunK7D8CVjDYG5WfZZsKfHa0vsQ+JVGqW5QV1tyN9yUWJlejVP46s55eDIB5
	 mpvu7uXAF0MIg==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 7F0DC383555
	for <usrp-users@lists.ettus.com>; Wed, 23 Aug 2023 11:10:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="rvMB/htH";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-40a9918ec08so35855781cf.0
        for <usrp-users@lists.ettus.com>; Wed, 23 Aug 2023 08:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692803407; x=1693408207;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wBJozmokHI9MaNLYBnQwFTNxAfSb9Wj7n+bQpXcZcDs=;
        b=rvMB/htHVBQ2qC6Ky1jKT53rTu+T2Gb1erZgGhK1HpSe9sQgJf398Va38hwb6P2I14
         reiy+/98aDcJhnYbOZ4p9hxurTgTNml2hhvNeQYeTZYGiqPNKG1pR2WHZ7JJVi0M26CH
         V64d0LDvuruIrmSqtal+B18lx6wyF66rDysZPgjyDAyKk6tsnKIQOFfA6SCQGk+q1iZI
         trvaDb7ylqnGGOiQczSibgs0ELEUTdW250j2WPNmXSLf903+2NjPyKZEU+H3YFlpCehi
         HHau5kyK/IZ50DeqrJScSpTV6xCFDvwj+5B6TRRuOnZqNbM7H2bpuexvCUkkeEIyDCXZ
         2N9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692803407; x=1693408207;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wBJozmokHI9MaNLYBnQwFTNxAfSb9Wj7n+bQpXcZcDs=;
        b=VZHwsIEWmMnm6EN7jSZczqQJR+0TYTEau1OSABKWw5cMMwF0MZyfkZZKSdwaD5hcQn
         b+0PONTAPowUiPsF1m5TGsMCLSbsPUFk9X+Y+M8rihAa2XMDjkHXYZKKo3pEMaS9jpvM
         g4KCPdCRT40+qzSfQp4wV84SEEsxcLmvroDWJqnt/5zZuiFcNh1EqJe13uIkbxD1lkn7
         tZeUuZra+4PEQvPmCKXHpHnJ21P5LGqTn5qYE0FkWoWqFM0c9xAUAoKnBMwJgvaak0Tx
         zCXnCE30KA1gpwCUJbLecGoJz2KWlLIcRFee8xFXyDmnyBU4WOciVEQWtGv38RrlT6F6
         We8g==
X-Gm-Message-State: AOJu0YwUP+e0Eb+ZxZRfI7fLZpRNHyNcNumcRqApkwDW6Ef1G+Rbnxn7
	v/zhl8B1sFYhLwCdcgGtN0b5rgw6h+c=
X-Google-Smtp-Source: AGHT+IEn6f8dcW0awBOBEcM+Q7uhWmz/ec0an8ZzgMPMm45qbtxI1FXbZwuPLaHt6RQD2kT/4/2ZWg==
X-Received: by 2002:ac8:5f8b:0:b0:410:a15c:fbf1 with SMTP id j11-20020ac85f8b000000b00410a15cfbf1mr8908209qta.65.1692803406550;
        Wed, 23 Aug 2023 08:10:06 -0700 (PDT)
Received: from [192.168.2.161] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id c15-20020ac8110f000000b00403ad6ec2e8sm3717834qtj.26.2023.08.23.08.10.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Aug 2023 08:10:05 -0700 (PDT)
Message-ID: <19890307-c368-41b7-a176-01f7c0b0f7ea@gmail.com>
Date: Wed, 23 Aug 2023 11:09:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <59e265b257f840788dd9cde7795909fe@iis.fraunhofer.de>
 <6b0c0c05-272b-dd90-b9ba-00925bb43304@gmail.com>
 <01a2bc9fb5604266a9886019df08a24b@iis.fraunhofer.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <01a2bc9fb5604266a9886019df08a24b@iis.fraunhofer.de>
Message-ID-Hash: UEDJOGUCX3AXGCIBUG6CMNV3R4QKXNBK
X-Message-ID-Hash: UEDJOGUCX3AXGCIBUG6CMNV3R4QKXNBK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC: strange behavior of FFT block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UEDJOGUCX3AXGCIBUG6CMNV3R4QKXNBK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2919267162970110620=="

This is a multi-part message in MIME format.
--===============2919267162970110620==
Content-Type: multipart/alternative;
 boundary="------------y08DXM7pxH1oFt8ykC9y5C0t"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------y08DXM7pxH1oFt8ykC9y5C0t
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 23/08/2023 08:47, Bachmaier, Luca wrote:
>
> Are you talking about the gain of the =E2=80=9CRFNoC Rx Radio=E2=80=9D =
block or a=20
> software gain block before the FFT? Even with the highest possible=20
> hardware gain it doesn=E2=80=99t seem to work.
>
So, the "fft_scaling" parameter is actually a kind of bit-mapped value,=20
described here:

https://support.xilinx.com/s/article/1160838?language=3Den_US


> *Von:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Gesendet:* Montag, 21. August 2023 16:49
> *An:* usrp-users@lists.ettus.com
> *Betreff:* [USRP-users] Re: RFNoC: strange behavior of FFT block
>
> On 21/08/2023 09:04, Bachmaier, Luca wrote:
>
>     Hello everyone,
>
>     I=E2=80=99m currently running into issues while trying to use the R=
FNoC
>     FFT block in GNU Radio. A picture of my GNU Radio flowgraph and
>     its QT GUI Vector Sink output are attached.
>
>     The configuration of UHD / my USRP should be correct as there are
>     no problems when I stream the RFNoC RX Radio Data to my host and
>     calculate the FFT on the host. However, when I try calculating the
>     FFT on the FPGA, the output seems to make no sense. I can=E2=80=99t=
 see a
>     noise floor or any proper signals. There=E2=80=99s just a randomly
>     appearing and disappearing DC spike. Other than that, the spectrum
>     is just a flat line (see vector_sink.png).
>
>     I think that this problem comes from some faulty configuration of
>     the RFNoC FFT block. Unfortuantely, I haven=E2=80=99t been able to =
find
>     any helpful and up-to-date information about its usage online. I
>     would be very glad to get some help from this mailing list.
>
>     Thank you and regards
>
>     Luca
>
>
>
>     _______________________________________________
>
>     USRP-users mailing list --usrp-users@lists.ettus.com
>
>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
> You could try increasing the gain--it may be that due to the integer=20
> implementation of the FFT, the signal levels are dropping below
> =C2=A0 the minimum quantization.
>

--------------y08DXM7pxH1oFt8ykC9y5C0t
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 23/08/2023 08:47, Bachmaier, Luca
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:01a2bc9fb5604266a9886019df08a24b@iis.fraunhofer.de">
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
	font-family:"Times New Roman",serif;}span.E-MailFormatvorlage18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}span.HTMLVorformatiertZchn
	{mso-style-name:"HTML Vorformatiert Zchn";
	mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert";
	font-family:"Consolas",serif;
	mso-fareast-language:EN-US;}span.E-MailFormatvorlage21
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
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">Are
            you talking about the gain of the =E2=80=9CRFNoC Rx Radio=E2=80=
=9D block or
            a software gain block before the FFT? Even with the highest
            possible hardware gain it doesn=E2=80=99t seem to work.</span=
></p>
      </div>
    </blockquote>
    So, the "fft_scaling" parameter is actually a kind of bit-mapped
    value, described here:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://support.xilinx.com=
/s/article/1160838?language=3Den_US">https://support.xilinx.com/s/article=
/1160838?language=3Den_US</a><br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:01a2bc9fb5604266a9886019df08a24b@iis.fraunhofer.de">
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
                  <b>Gesendet:</b> Montag, 21. August 2023 16:49<br>
                  <b>An:</b> <a class=3D"moz-txt-link-abbreviated" href=3D=
"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                  <b>Betreff:</b> [USRP-users] Re: RFNoC: strange
                  behavior of FFT block<o:p></o:p></span></p>
            </div>
          </div>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          <div>
            <p class=3D"MsoNormal">On 21/08/2023 09:04, Bachmaier, Luca
              wrote:<span
                style=3D"font-size:12.0pt;mso-fareast-language:DE"><o:p><=
/o:p></span></p>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal">Hello everyone,<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m curre=
ntly
                running into issues while trying to use the RFNoC FFT
                block in GNU Radio. A picture of my GNU Radio flowgraph
                and its QT GUI Vector Sink output are attached.</span><o:=
p></o:p></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">The configuration=
 of
                UHD / my USRP should be correct as there are no problems
                when I stream the RFNoC RX Radio Data to my host and
                calculate the FFT on the host. However, when I try
                calculating the FFT on the FPGA, the output seems to
                make no sense. I can=E2=80=99t see a noise floor or any p=
roper
                signals. There=E2=80=99s just a randomly appearing and
                disappearing DC spike. Other than that, the spectrum is
                just a flat line (see vector_sink.png).</span><o:p></o:p>=
</p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><o:p=
></o:p></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">I think that this
                problem comes from some faulty configuration of the
                RFNoC FFT block. Unfortuantely, I haven=E2=80=99t been ab=
le to
                find any helpful and up-to-date information about its
                usage online. I would be very glad to get some help from
                this mailing list.</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><o:p=
></o:p></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you and
                regards</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">Luca</span><o:p><=
/o:p></p>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;font-family:&quot;Times New
                Roman&quot;,serif;mso-fareast-language:DE"><br>
                <br>
                <o:p></o:p></span></p>
            <pre>_______________________________________________<o:p></o:=
p></pre>
            <pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@=
lists.ettus.com" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext"=
>usrp-users@lists.ettus.com</a><o:p></o:p></pre>
            <pre>To unsubscribe send an email to <a href=3D"mailto:usrp-u=
sers-leave@lists.ettus.com" moz-do-not-send=3D"true" class=3D"moz-txt-lin=
k-freetext">usrp-users-leave@lists.ettus.com</a><o:p></o:p></pre>
          </blockquote>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"font-size:12.0pt;font-family:&quot;Times New
              Roman&quot;,serif;mso-fareast-language:DE">You could try
              increasing the gain--it may be that due to the integer
              implementation of the FFT, the signal levels are dropping
              below<br>
              =C2=A0 the minimum quantization.<br>
              <br>
              <o:p></o:p></span></p>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------y08DXM7pxH1oFt8ykC9y5C0t--

--===============2919267162970110620==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2919267162970110620==--
