Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C2930469897
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 15:22:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ADBC1384952
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 09:22:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XQgUTRYV";
	dkim-atps=neutral
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 6E5E13848FA
	for <usrp-users@lists.ettus.com>; Mon,  6 Dec 2021 09:21:28 -0500 (EST)
Received: by mail-qv1-f44.google.com with SMTP id bu11so10018223qvb.0
        for <usrp-users@lists.ettus.com>; Mon, 06 Dec 2021 06:21:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=yMJzoSo1xB4Wa4wJsZ56VyXmznCT4mq+RdCodgwS6rs=;
        b=XQgUTRYVr38fu3S/nee+OzPJWELimN2fsiRf/TJj8rFM7AAwacDLVZCp0zeAsDFZit
         4fbj1OhLGstsmgB4nLztaFN1YHY5uDmJ5iSxfd8Q4CEQLaC4kfoyqeWLhLsVPxFCZ1TB
         vj/cVnqXuku3y81cChe7ihDU7TUDO6Z90wqPtZUb8SOXxDP1PyM03z7OsL5pTGczSbDQ
         Ea4P9O2VxsUHloE7xRQ4YRRJG9Xx2tgXkWqIIjBpBJLluC8qpWelBQFw7SB/GeYA/SHs
         Zy8/wIcIWuap/GZgyEyEBb53l+7g9OxlC/u0uUDVbzTutM7ii9Eh/MApxIe01HltyONU
         LJbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=yMJzoSo1xB4Wa4wJsZ56VyXmznCT4mq+RdCodgwS6rs=;
        b=o4lPODN9T+2Q7j4aH2GO9V+HD6SjBZW8/ecCJeppDoB+QUFdjTboN53qzMdmb+y3fT
         EI19x+bqGxWecDkcyyf7O4krTMlItC6XVF/1DA2eDPKmRKLuoyZGlKuHQnM070wdkI68
         +1QlIIsh7QSLwKoDHVJSdz4of82UDY/TBQi4ko/EF2r2VAvrViDxMNrANFvk32gAUhVJ
         WeILaai8EPBGhexATTlO6YH6MDnaAiHR3jkZTN7QjTRrLSOof83yOyFidmfLyHARbM3S
         ny0vYWeZ9GOIpjj/AWL4WJJGn8G1rKwSBT2n1jkJ69wNLTlypHeSu15zkZmpUhE6HyhC
         6azA==
X-Gm-Message-State: AOAM53303dqDPPEZBHhWiHWtCfj+ZtDls6OJascdXEJGpZvpHq6t5has
	rVucfaKVE3uqwNwJF4pO9Ci4VgNBV3M=
X-Google-Smtp-Source: ABdhPJwIg9WtcS6X8S9XY/mQLGVQmorRVLN7mq2E/vpq+W1hqGcz+m5iXAIH7dlpk+mtuWJFrfERCQ==
X-Received: by 2002:ad4:5eca:: with SMTP id jm10mr37219826qvb.54.1638800487880;
        Mon, 06 Dec 2021 06:21:27 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id j22sm6837036qko.68.2021.12.06.06.21.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 06:21:27 -0800 (PST)
Message-ID: <815c8938-9ece-3cf3-ff13-11834c9d51f7@gmail.com>
Date: Mon, 6 Dec 2021 09:21:26 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: zeyuan.li@zengyi-tech.com, 'Michael Dickens' <michael.dickens@ettus.com>
References: <00f301d7c978$ef03a150$cd0ae3f0$@zengyi-tech.com>
 <e2940e0e-515d-a2ac-96a1-5d97c503fa6a@gmail.com>
 <018b01d7ca10$592a2260$0b7e6720$@zengyi-tech.com>
 <cf1cae96-1611-bcc4-9bd3-b62e6d809ab6@gmail.com>
 <01cd01d7ca1f$4e75f830$eb61e890$@zengyi-tech.com>
 <a607d825-1dba-d69b-4520-be2a17e4a2a5@gmail.com>
 <007601d7cae0$bd7649d0$3862dd70$@zengyi-tech.com>
 <ebb155d7-5462-260b-016f-3aa0a469dd52@gmail.com>
 <00c401d7cb01$d9ee5500$8dcaff00$@zengyi-tech.com>
 <4f7665d5-76b9-d6ae-c16d-e80c49fee5e7@gmail.com>
 <CAGNhwTMZyxqyA-FJC7Xb-g--QR4kWSy7Yjy-dmYxe0nuBN9_oQ@mail.gmail.com>
 <00bb01d7ea5f$f907a720$eb16f560$@zengyi-tech.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <00bb01d7ea5f$f907a720$eb16f560$@zengyi-tech.com>
Message-ID-Hash: L5FOGE7X65TJKKUASSSOORF74CRPY3K7
X-Message-ID-Hash: L5FOGE7X65TJKKUASSSOORF74CRPY3K7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: 'USRP list' <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?b?UmU6IOetlOWkjTogUmU6IOetlOWkjTogUmU6IOetlOWkjTog562U5aSNOiBSZTog562U5aSNOiBSZTogSG93IHRvIHVzZSBFeHRlcm5hbCBMTyBvbiBOMzEwIGRldmljZT8=?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L5FOGE7X65TJKKUASSSOORF74CRPY3K7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4819742323304710920=="

This is a multi-part message in MIME format.
--===============4819742323304710920==
Content-Type: multipart/alternative;
 boundary="------------uPFSeDeLmQ9QNud9yS0ZO0lC"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------uPFSeDeLmQ9QNud9yS0ZO0lC
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-06 00:13, zeyuan.li@zengyi-tech.com wrote:
>
> Hi Marcus,
>
> I use a signal source output a tone at 5GHz .And I use N310 External=20
> LO mode,it received signal at 2.5GHz.
>
> But I try to change LO Source to another frequency such as 4GHz.In=20
> this situation, the center frequency remain at 2.5GHz but not half of=20
> 4GHz.
>
> I want to know what should I do when I try to change center frequency=20
> in External LO mode?
>
Are you using external LO for TX or RX?

Perhaps you can share the code you're using to configure for external LO?


> =E8=B0=A2=E8=B0=A2=EF=BC=8C=E6=9C=89=E4=BB=BB=E4=BD=95=E9=97=AE=E9=A2=98=
=E8=AF=B7=E9=9A=8F=E6=97=B6=E4=B8=8E=E6=88=91=E8=81=94=E7=B3=BB=EF=BC=81
>
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
>
> =E6=9D=8E=E6=B3=BD=E8=BF=9C|=E7=A0=94=E5=8F=91=E5=B7=A5=E7=A8=8B=E5=B8=88
>
> =E5=8C=97=E4=BA=AC=E6=9B=BE=E7=9B=8A=E7=A7=91=E6=8A=80=E6=9C=89=E9=99=90=
=E5=85=AC=E5=8F=B8
>
> =E6=89=8B=E6=9C=BA=EF=BC=9A13121162044
>
> =E5=9C=B0=E5=9D=80=EF=BC=9A=E5=8C=97=E4=BA=AC=E5=B8=82=E6=B5=B7=E6=B7=80=
=E5=8C=BA=E4=B8=AD=E5=85=B3=E6=9D=91=E5=A4=A7=E8=A1=97=E4=B8=AD=E5=85=B3=E6=
=9D=91SOHO 1108
> =E7=BD=91=E5=9D=80=EF=BC=9A_www.zengyi-tech.com <http://www.zengyi-tech=
.com>_
>
> *=E5=8F=91=E4=BB=B6=E4=BA=BA:*Michael Dickens <michael.dickens@ettus.co=
m>
> *=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:*2021=E5=B9=B410=E6=9C=8827=E6=97=
=A522:06
> *=E6=94=B6=E4=BB=B6=E4=BA=BA:*Marcus D. Leech <patchvonbraun@gmail.com>
> *=E6=8A=84=E9=80=81:*=E6=9D=8E=E6=B3=BD=E8=BF=9C<zeyuan.li@zengyi-tech.=
com>; USRP list=20
> <usrp-users@lists.ettus.com>
> *=E4=B8=BB=E9=A2=98:*[USRP-users] Re: =E7=AD=94=E5=A4=8D: Re: =E7=AD=94=
=E5=A4=8D: =E7=AD=94=E5=A4=8D: Re: =E7=AD=94=E5=A4=8D: Re: How to use=20
> External LO on N310 device?
>
> Forgot to mention earlier: at device initialization you have=C2=A0to su=
pply=20
> the external LO at 5 GHz,
>
> as well as set the device argument as noted. Once the device is fully=20
> initialized then you can
>
> change the center frequency & the supplied LO must be 2x that. Hope=20
> this helps! - MLD
>
> On Wed, Oct 27, 2021 at 9:51 AM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 2021-10-27 03:11, zeyuan.li@zengyi-tech.com wrote:
>
>         I set the correct device arguments,but it doesn=E2=80=99t work
>         correctly and also there is no error report.
>
>         I don=E2=80=99t what can I do next .
>
>         So I want to config this argument in mpm.conf file or
>         usrp_hwd.conf file to try to use external LO .
>
>         I couldn=E2=80=99t find this file named "usrp-hwd.conf" in =E2=80=
=9C/usr=E2=80=9D .and
>         also =E2=80=9Cmpm.conf=E2=80=9D
>
>     Again, modifying the MPM config file is NOT necessary to get
>     external LO to work.
>
>     What frequency are you trying to use?
>
>     Can you share the lines of code you use to set up the N310 for
>     shared LO operation--including the initial device "make" with
>     device arguments, etc.
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------uPFSeDeLmQ9QNud9yS0ZO0lC
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-06 00:13,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:zeyuan.li@zeng=
yi-tech.com">zeyuan.li@zengyi-tech.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:00bb01d7ea5f$f907a720$eb16f560$@zengyi-tech.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:=E5=AE=8B=E4=BD=93;
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:=E7=AD=89=E7=BA=BF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:"\@=E5=AE=8B=E4=BD=93";
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:"\@=E7=AD=89=E7=BA=BF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:=E5=AE=8B=E4=BD=93;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:=E5=AE=8B=E4=BD=93;}span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:=E7=AD=89=E7=BA=BF;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lan=
g=3D"EN-US">Hi
            Marcus,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lan=
g=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            I use a signal source output a tone at 5GHz .And I use N310
            External LO mode,it received signal at 2.5GHz.<o:p></o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lan=
g=3D"EN-US">But I
            try to change LO Source to another frequency such as 4GHz.</s=
pan><span
            lang=3D"EN-US"> </span><span
            style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lan=
g=3D"EN-US">In this
            situation, the center frequency remain at 2.5GHz but not
            half of 4GHz.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lan=
g=3D"EN-US">I want
            to know what should I do when I try to change center
            frequency in External LO mode?<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lan=
g=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
      </div>
    </blockquote>
    Are you using external LO for TX or RX?<br>
    <br>
    Perhaps you can share the code you're using to configure for
    external LO?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:00bb01d7ea5f$f907a720$eb16f560$@zengyi-tech.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal">=E8=B0=A2=E8=B0=A2=EF=BC=8C=E6=9C=89=E4=BB=
=BB=E4=BD=95=E9=97=AE=E9=A2=98=E8=AF=B7=E9=9A=8F=E6=97=B6=E4=B8=8E=E6=88=91=
=E8=81=94=E7=B3=BB=EF=BC=81<span lang=3D"EN-US"><o:p></o:p></span></p>
        <p class=3D"MsoNormal">=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94<span lang=3D"EN-US"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:black;border:none
            windowtext 1.0pt;padding:0cm;background:white">=E6=9D=8E=E6=B3=
=BD=E8=BF=9C<span
              lang=3D"EN-US">|</span>=E7=A0=94=E5=8F=91=E5=B7=A5=E7=A8=8B=
=E5=B8=88</span><span lang=3D"EN-US"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:black;border:none
            windowtext 1.0pt;padding:0cm;background:white">=E5=8C=97=E4=BA=
=AC=E6=9B=BE=E7=9B=8A=E7=A7=91=E6=8A=80=E6=9C=89=E9=99=90=E5=85=AC=E5=8F=B8=
</span><span
            lang=3D"EN-US"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:black;border:none
            windowtext 1.0pt;padding:0cm;background:white">=E6=89=8B=E6=9C=
=BA=EF=BC=9A<span
              lang=3D"EN-US">13121162044</span></span><span lang=3D"EN-US=
"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:black;border:none
            windowtext 1.0pt;padding:0cm;background:white">=E5=9C=B0=E5=9D=
=80=EF=BC=9A=E5=8C=97=E4=BA=AC=E5=B8=82=E6=B5=B7=E6=B7=80=E5=8C=BA=E4=B8=AD=
=E5=85=B3=E6=9D=91=E5=A4=A7=E8=A1=97=E4=B8=AD=E5=85=B3=E6=9D=91<span
              lang=3D"EN-US">SOHO 1108<br>
            </span>=E7=BD=91=E5=9D=80=EF=BC=9A<u><span lang=3D"EN-US"><a
                  href=3D"http://www.zengyi-tech.com"
                  moz-do-not-send=3D"true"><span style=3D"color:#0563C1">=
www.zengyi-tech.com</span></a></span></u></span><span
            lang=3D"EN-US"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lan=
g=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><b><span
              style=3D"font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF">=E5=
=8F=91=E4=BB=B6=E4=BA=BA<span
                lang=3D"EN-US">:</span></span></b><span
            style=3D"font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF" lan=
g=3D"EN-US">
            Michael Dickens <a class=3D"moz-txt-link-rfc2396E" href=3D"ma=
ilto:michael.dickens@ettus.com">&lt;michael.dickens@ettus.com&gt;</a> <br=
>
          </span><b><span style=3D"font-size:11.0pt;font-family:=E7=AD=89=
=E7=BA=BF">=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4<span
                lang=3D"EN-US">:</span></span></b><span
            style=3D"font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF" lan=
g=3D"EN-US"> 2021</span><span
            style=3D"font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF">=E5=
=B9=B4<span lang=3D"EN-US">10</span>=E6=9C=88<span
              lang=3D"EN-US">27</span>=E6=97=A5<span lang=3D"EN-US"> 22:0=
6<br>
            </span><b>=E6=94=B6=E4=BB=B6=E4=BA=BA<span lang=3D"EN-US">:</=
span></b><span
              lang=3D"EN-US"> Marcus D. Leech
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
            </span><b>=E6=8A=84=E9=80=81<span lang=3D"EN-US">:</span></b>=
<span
              lang=3D"EN-US"> </span>=E6=9D=8E=E6=B3=BD=E8=BF=9C<span lan=
g=3D"EN-US">
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:zeyuan.li=
@zengyi-tech.com">&lt;zeyuan.li@zengyi-tech.com&gt;</a>; USRP list
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-user=
s@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
            </span><b>=E4=B8=BB=E9=A2=98<span lang=3D"EN-US">:</span></b>=
<span
              lang=3D"EN-US"> [USRP-users] Re: </span>=E7=AD=94=E5=A4=8D<=
span
              lang=3D"EN-US">: Re: </span>=E7=AD=94=E5=A4=8D<span lang=3D=
"EN-US">: </span>=E7=AD=94=E5=A4=8D<span
              lang=3D"EN-US">: Re: </span>=E7=AD=94=E5=A4=8D<span lang=3D=
"EN-US">: Re: How
              to use External LO on N310 device?<o:p></o:p></span></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <div>
          <div>
            <div>
              <div>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">Forgot to
                    mention earlier: at device initialization you
                    have=C2=A0to supply the external LO at 5 GHz,<o:p></o=
:p></span></p>
              </div>
              <div>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">as well as se=
t
                    the device argument as noted. Once the device is
                    fully initialized then you can<o:p></o:p></span></p>
              </div>
              <div>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">change the
                    center frequency &amp; the supplied LO must be 2x
                    that. Hope this helps! - MLD<o:p></o:p></span></p>
              </div>
            </div>
          </div>
          <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></=
span></p>
        </div>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <div>
          <div>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">On Wed, Oct 27, 2=
021
                at 9:51 AM Marcus D. Leech &lt;<a
                  href=3D"mailto:patchvonbraun@gmail.com"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">patchvonbraun@gmail.com</a>&gt;
                wrote:<o:p></o:p></span></p>
          </div>
          <blockquote style=3D"border:none;border-left:solid #CCCCCC
            1.0pt;padding:0cm 0cm 0cm
            6.0pt;margin-left:4.8pt;margin-right:0cm">
            <div>
              <div>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">On 2021-10-27
                    03:11, <a href=3D"mailto:zeyuan.li@zengyi-tech.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">zeyuan.li@zengyi-te=
ch.com</a>
                    wrote:<o:p></o:p></span></p>
              </div>
              <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                <div>
                  <p class=3D"MsoNormal"
                    style=3D"mso-margin-top-alt:auto;mso-margin-bottom-al=
t:auto"><span
                      lang=3D"EN-US">I set the correct device
                      arguments,but it doesn=E2=80=99t work correctly and=
 also
                      there is no error report.<o:p></o:p></span></p>
                  <p class=3D"MsoNormal"
                    style=3D"mso-margin-top-alt:auto;mso-margin-bottom-al=
t:auto"><span
                      lang=3D"EN-US">I don=E2=80=99t what can I do next .=
<o:p></o:p></span></p>
                  <p class=3D"MsoNormal"
                    style=3D"mso-margin-top-alt:auto;mso-margin-bottom-al=
t:auto"><span
                      lang=3D"EN-US">So I want to config this argument in
                      mpm.conf file or usrp_hwd.conf file to try to use
                      external LO .<o:p></o:p></span></p>
                  <p class=3D"MsoNormal"
                    style=3D"mso-margin-top-alt:auto;mso-margin-bottom-al=
t:auto"><span
                      lang=3D"EN-US">I couldn=E2=80=99t find this file na=
med
                      "usrp-hwd.conf" in =E2=80=9C/usr=E2=80=9D .and also=
 =E2=80=9Cmpm.conf=E2=80=9D<o:p></o:p></span></p>
                  <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0=
</o:p></span></p>
                </div>
              </blockquote>
              <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                  lang=3D"EN-US">Again, modifying the MPM config file is
                  NOT necessary to get external LO to work.<br>
                  <br>
                  What frequency are you trying to use?<br>
                  <br>
                  Can you share the lines of code you use to set up the
                  N310 for shared LO operation--including the initial
                  device "make" with device arguments, etc.<br>
                  <br>
                  <o:p></o:p></span></p>
            </div>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">_________________=
______________________________<br>
                USRP-users mailing list -- <a
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.=
com</a><br>
                To unsubscribe send an email to <a
                  href=3D"mailto:usrp-users-leave@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">usrp-users-leave@lists.=
ettus.com</a><o:p></o:p></span></p>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>
--------------uPFSeDeLmQ9QNud9yS0ZO0lC--

--===============4819742323304710920==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4819742323304710920==--
