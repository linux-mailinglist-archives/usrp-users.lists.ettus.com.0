Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A454E4B6BB2
	for <lists+usrp-users@lfdr.de>; Tue, 15 Feb 2022 13:09:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 994BB3850C6
	for <lists+usrp-users@lfdr.de>; Tue, 15 Feb 2022 07:09:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="V4BMn13C";
	dkim-atps=neutral
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	by mm2.emwd.com (Postfix) with ESMTPS id EAD0E384F64
	for <usrp-users@lists.ettus.com>; Tue, 15 Feb 2022 07:08:01 -0500 (EST)
Received: by mail-wr1-f41.google.com with SMTP id h6so31724351wrb.9
        for <usrp-users@lists.ettus.com>; Tue, 15 Feb 2022 04:08:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=xjnMTnzsvVYFiEkpA2mI1eH0UYkyhkmicK7VeIfcnCc=;
        b=V4BMn13CAA700DWTUJVQZ3atmxkwL0LiUXao6Az9jX0LDyaUK47sPYHGZax1ivXXuD
         4IZvVHkP4CgiwwQDsgkjBAds96jUdNJXX4Mhu9FylTVYFRtLTaqMqmsddqDGOtMmtZPp
         QRTg3rzwF7X8Bj3GkqyKMO7jONLbk1B+kvqEyJY1BRcZGbDpzBWhbEnOn4j2lUZkn9K1
         OKZqd/fUw1DZKeGPvLTGsWsuigTFOf4k1Eg9r3F+5gZTS+k0NvW9q07yPEtDFxTjMntq
         2iPkNMsPIut5BkC45yQm/+AadqQqhsACmIdZ0gQI9yGOYrONZqKw63poQ4EJzGtdTYrw
         Iu1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=xjnMTnzsvVYFiEkpA2mI1eH0UYkyhkmicK7VeIfcnCc=;
        b=GYQUVHYy9YdCurZVue7+IqjmiQoIfzNY0GsZVbj9bniKAGrIKzpNSmir7MyzNHBgSi
         sRAxG6xdBcKo1BUsxg/dMM7TpYaLNtrSBQc+tUwikxU9D1e2zYuOSX5dAuxzQKnIsftr
         wn+ZWVHbTTbvZMZDNXDBdj5dAvnweGgbwpp23QCEBcqFYLEnWRkKiLNraMkvXMauP43B
         lTuhLDIrFKw6hN0jqeL/3uut0IrflgXG00FqDOS+9YnJnsC2HNbDsutAMq2caSAYxC+m
         cOy0cwQ3V6+SpBhAsozDPfU4aJHTfwU2Zo/FT70PwpZuHvvn+RJVrOSytH+UWKotZt49
         WjPg==
X-Gm-Message-State: AOAM533lAKZE8AsVGfVAoo//xMp8TdTEH2msK863ISrkLEL7P29t3V9O
	NRmb54NjGCJY8G8teJBCxCwT5FtZ1VyDSA==
X-Google-Smtp-Source: ABdhPJyxMX92XVSz6tUt18qEmNHzH7g5+Hc4C/DuyTrRJum1MPpezT3glgvAt2pwDuyhxtvqVe3AVA==
X-Received: by 2002:a5d:6c61:: with SMTP id r1mr2091415wrz.261.1644926880664;
        Tue, 15 Feb 2022 04:08:00 -0800 (PST)
Received: from [172.16.4.232] ([193.145.14.195])
        by smtp.gmail.com with ESMTPSA id o16sm20529860wrn.87.2022.02.15.04.07.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Feb 2022 04:08:00 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------QGcaOj7FDDNnuQ9odqheBuai"
Message-ID: <f7bba14b-ef1a-7669-e6f4-9fab89507e7e@gmail.com>
Date: Tue, 15 Feb 2022 13:07:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: zeyuan.li@zengyi-tech.com, usrp-users@lists.ettus.com
References: <deed8d5e-6ab5-21dc-5da9-9f580e859dee@gmail.com>
 <014601d81e26$cb469260$61d3b720$@zengyi-tech.com>
 <384482b4-b1ca-a497-86ec-46baa7c43472@gmail.com>
 <28e04eea-f737-f99c-c851-15b38b02388c@gmail.com>
 <ec67277c-80ac-db10-af63-c15987cf8042@gmail.com>
 <ed848007-2bc2-d246-209e-3217bf37c1a2@gmail.com>
 <c701de64-c2d9-a189-489a-37eac6deba22@gmail.com>
 <c83d6c10-9159-f329-2f25-db055e9429f9@gmail.com>
 <e1b5678a-a961-7fcc-7fe1-2dc4e176b4ef@gmail.com>
 <018e01d82212$05cc7230$11655690$@zengyi-tech.com>
From: Giuseppe Santaromita <giuseppe.santaromita1@gmail.com>
In-Reply-To: <018e01d82212$05cc7230$11655690$@zengyi-tech.com>
Message-ID-Hash: DSDUXDRUME6ZWID3SHF6LO3SCD6WS6CI
X-Message-ID-Hash: DSDUXDRUME6ZWID3SHF6LO3SCD6WS6CI
X-MailFrom: giuseppe.santaromita1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?b?UmU6IOetlOWkjTogT0FJIHdpdGggVVNSUCBOMzEw?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DSDUXDRUME6ZWID3SHF6LO3SCD6WS6CI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

This is a multi-part message in MIME format.
--------------QGcaOj7FDDNnuQ9odqheBuai
Content-Type: multipart/alternative;
 boundary="------------cJ6XaD6e3HmRYnzZwaKK6GvX"

--------------cJ6XaD6e3HmRYnzZwaKK6GvX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Thank you very much.

This (attached) is the log files.

Any ideas?

Il 15/2/22 3:16, zeyuan.li@zengyi-tech.com ha scritto:
>
> Please try this =E2=80=9Csudo ./nr-softmodem -O=20
> ../../../ci-scripts/conf_files/gnb.band78.tm1.106PRB.usrpn300.conf=20
> --sa --args clock_source=3Dinternal || sudo tee files_log.txt=E2=80=9D
>
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
> *=E5=8F=91=E4=BB=B6=E4=BA=BA:*Giuseppe Santaromita <giuseppe.santaromit=
a1@gmail.com>
> *=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:*2022=E5=B9=B42=E6=9C=8815=E6=97=A5=
2:02
> *=E6=94=B6=E4=BB=B6=E4=BA=BA:*usrp-users@lists.ettus.com
> *=E4=B8=BB=E9=A2=98:*[USRP-users] OAI with USRP N310
>
> Dear community,
>
> I would like to use OpenAirInterface with the USRP N310 and I am=20
> having overflow problems. I am forwarding here the email I sent to the=20
> OAI mail list, because I think the problem is with the USRP and=20
> non-real time operations.
>
> Does anyone have any ideas?
>
> Thanks in advance,
>
> Giuseppe
>
>     Dear community,
>
>     After solving problems with OAI installation and USRP N310
>     configuration, I am trying to create a 5G SA link, starting with gN=
B.
>
>     I tried this:
>     sudo ./nr-softmodem -O
>     ../../../ci-scripts/conf_files/gnb.band78.tm1.106PRB.usrpn300.conf
>     --sa --args clock_source=3Dinternal
>
>     But it gives problems that I think are related to the fact that
>     probably the operations are not in real time.
>
>     For example:
>     [PHY] rx_rf: Asked for 30720 samples, got 18906 from USRP
>     [PHY] problem receiving samples
>     LLLLLLLLLLLLLLLLLLLLLLLLLLLO[HW] [recv] received 18906 samples out
>     of 30720
>     [HW] Time: 1.41826 s
>     ERROR_CODE_OVERFLOW (Overflow)
>
>     Or, even earlier:
>     [WARNING] [MPM.RPCServer] A timeout event occured!
>
>     Also, I would like to attach a log file but I can't find it, and
>     using the "> file_log.txt" at the end of the command it all goes
>     immediately in overflow.
>
>     Does anyone have any ideas?
>
--------------cJ6XaD6e3HmRYnzZwaKK6GvX
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Thank you very much.<br>
    </p>
    <p>This (attached) is the log files.</p>
    <p>Any ideas?<br>
    </p>
    <div class=3D"moz-cite-prefix">Il 15/2/22 3:16,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:zeyuan.li@zeng=
yi-tech.com">zeyuan.li@zengyi-tech.com</a> ha scritto:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:018e01d82212$05cc7230$11655690$@zengyi-tech.com">
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
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:-moz-fixed;
	panose-1:0 0 0 0 0 0 0 0 0 0;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:=E5=AE=8B=E4=BD=93;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:=E5=AE=8B=E4=BD=93;}span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lan=
g=3D"EN-US">Please
            try this =E2=80=9Csudo ./nr-softmodem -O
            ../../../ci-scripts/conf_files/gnb.band78.tm1.106PRB.usrpn300=
.conf
            --sa --args clock_source=3Dinternal || sudo tee files_log.txt=
=E2=80=9D<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lan=
g=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <div>
          <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></=
span></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></=
span></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></=
span></p>
          <p class=3D"MsoNormal">=E8=B0=A2=E8=B0=A2=EF=BC=8C=E6=9C=89=E4=BB=
=BB=E4=BD=95=E9=97=AE=E9=A2=98=E8=AF=B7=E9=9A=8F=E6=97=B6=E4=B8=8E=E6=88=91=
=E8=81=94=E7=B3=BB=EF=BC=81<span lang=3D"EN-US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal">=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94<span lang=3D"EN-US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span style=3D"color:black;border:none
              windowtext 1.0pt;padding:0cm;background:white">=E6=9D=8E=E6=
=B3=BD=E8=BF=9C<span
                lang=3D"EN-US">|</span>=E7=A0=94=E5=8F=91=E5=B7=A5=E7=A8=8B=
=E5=B8=88</span><span lang=3D"EN-US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span style=3D"color:black;border:none
              windowtext 1.0pt;padding:0cm;background:white">=E5=8C=97=E4=
=BA=AC=E6=9B=BE=E7=9B=8A=E7=A7=91=E6=8A=80=E6=9C=89=E9=99=90=E5=85=AC=E5=8F=
=B8</span><span
              lang=3D"EN-US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span style=3D"color:black;border:none
              windowtext 1.0pt;padding:0cm;background:white">=E6=89=8B=E6=
=9C=BA=EF=BC=9A<span
                lang=3D"EN-US">13121162044</span></span><span lang=3D"EN-=
US"><o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span style=3D"color:black;border:none
              windowtext 1.0pt;padding:0cm;background:white">=E5=9C=B0=E5=
=9D=80=EF=BC=9A=E5=8C=97=E4=BA=AC=E5=B8=82=E6=B5=B7=E6=B7=80=E5=8C=BA=E4=B8=
=AD=E5=85=B3=E6=9D=91=E5=A4=A7=E8=A1=97=E4=B8=AD=E5=85=B3=E6=9D=91<span
                lang=3D"EN-US">SOHO 1108<br>
              </span>=E7=BD=91=E5=9D=80=EF=BC=9A<u><span lang=3D"EN-US"><=
a
                    href=3D"http://www.zengyi-tech.com"
                    moz-do-not-send=3D"true"><span style=3D"color:#0563C1=
">www.zengyi-tech.com</span></a></span></u></span><span
              lang=3D"EN-US"><o:p></o:p></span></p>
        </div>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" lan=
g=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class=3D"MsoNormal"><b><span
                  style=3D"font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF=
">=E5=8F=91=E4=BB=B6=E4=BA=BA<span
                    lang=3D"EN-US">:</span></span></b><span
                style=3D"font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF"=
 lang=3D"EN-US">
                Giuseppe Santaromita
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:giusepp=
e.santaromita1@gmail.com">&lt;giuseppe.santaromita1@gmail.com&gt;</a> <br=
>
              </span><b><span style=3D"font-size:11.0pt;font-family:=E7=AD=
=89=E7=BA=BF">=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4<span
                    lang=3D"EN-US">:</span></span></b><span
                style=3D"font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF"=
 lang=3D"EN-US">
                2022</span><span style=3D"font-size:11.0pt;font-family:=E7=
=AD=89=E7=BA=BF">=E5=B9=B4<span
                  lang=3D"EN-US">2</span>=E6=9C=88<span lang=3D"EN-US">15=
</span>=E6=97=A5<span
                  lang=3D"EN-US"> 2:02<br>
                </span><b>=E6=94=B6=E4=BB=B6=E4=BA=BA<span lang=3D"EN-US"=
>:</span></b><span
                  lang=3D"EN-US"> <a class=3D"moz-txt-link-abbreviated" h=
ref=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><=
br>
                </span><b>=E4=B8=BB=E9=A2=98<span lang=3D"EN-US">:</span>=
</b><span
                  lang=3D"EN-US"> [USRP-users] OAI with USRP N310<o:p></o=
:p></span></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <div>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">Dear community,<o:p=
></o:p></span></p>
        </div>
        <div>
          <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></=
span></p>
        </div>
        <div>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">I would like to use
              OpenAirInterface with the USRP N310 and I am having
              overflow problems. I am forwarding here the email I sent
              to the OAI mail list, because I think the problem is with
              the USRP and non-real time operations.<o:p></o:p></span></p=
>
          <p><span lang=3D"EN-US">Does anyone have any ideas?<o:p></o:p><=
/span></p>
          <p><span lang=3D"EN-US">Thanks in advance,<o:p></o:p></span></p=
>
          <p><span lang=3D"EN-US">Giuseppe<o:p></o:p></span></p>
          <p><span lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <div>
              <p class=3D"MsoNormal"><span
                  style=3D"font-size:13.5pt;font-family:&quot;-moz-fixed&=
quot;,serif"
                  lang=3D"EN-US">Dear community, <br>
                  <br>
                  After solving problems with OAI installation and USRP
                  N310 configuration, I am trying to create a 5G SA
                  link, starting with gNB. <br>
                  <br>
                  I tried this: <br>
                  sudo ./nr-softmodem -O
                  ../../../ci-scripts/conf_files/gnb.band78.tm1.106PRB.us=
rpn300.conf
                  --sa --args clock_source=3Dinternal <br>
                  <br>
                  But it gives problems that I think are related to the
                  fact that probably the operations are not in real
                  time. <br>
                  <br>
                  For example: <br>
                  [PHY] rx_rf: Asked for 30720 samples, got 18906 from
                  USRP <br>
                  [PHY] problem receiving samples <br>
                  LLLLLLLLLLLLLLLLLLLLLLLLLLLO[HW] [recv] received 18906
                  samples out of 30720 <br>
                  [HW] Time: 1.41826 s <br>
                  ERROR_CODE_OVERFLOW (Overflow) <br>
                  <br>
                  Or, even earlier: <br>
                  [WARNING] [MPM.RPCServer] A timeout event occured! <br>
                  <br>
                  Also, I would like to attach a log file but I can't
                  find it, and using the "&gt; file_log.txt" at the end
                  of the command it all goes immediately in overflow. <br=
>
                  <br>
                  Does anyone have any ideas? </span><span
                  style=3D"font-size:9.0pt;font-family:&quot;-moz-fixed&q=
uot;,serif"
                  lang=3D"EN-US"><o:p></o:p></span></p>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------cJ6XaD6e3HmRYnzZwaKK6GvX--

--------------QGcaOj7FDDNnuQ9odqheBuai
Content-Type: text/plain; charset=UTF-8; name="file_log.txt"
Content-Disposition: attachment; filename="file_log.txt"
Content-Transfer-Encoding: base64

W0hXXSAgICMgL2Rldi9jcHVfZG1hX2xhdGVuY3kgc2V0IHRvIDIgdXMKG1swbVtFTkJfQVBQ
XSAgIG5mYXBpIHJ1bm5pbmcgbW9kZTogTU9OT0xJVEhJQwobWzBtW0dOQl9BUFBdICAgR2V0
dGluZyBHTkJTUGFyYW1zChtbMG1bSVRUSV0gICBTdGFydGluZyBpdHRpIHF1ZXVlOiBUQVNL
X1VOS05PV04gYXMgdGFzayAwChtbMG1bSVRUSV0gICBTdGFydGluZyBpdHRpIHF1ZXVlOiBU
QVNLX1RJTUVSIGFzIHRhc2sgMQobWzBtW0lUVEldICAgU3RhcnRpbmcgaXR0aSBxdWV1ZTog
VEFTS19MMkwxIGFzIHRhc2sgMgobWzBtW0lUVEldICAgU3RhcnRpbmcgaXR0aSBxdWV1ZTog
VEFTS19CTSBhcyB0YXNrIDMKG1swbVtJVFRJXSAgIFN0YXJ0aW5nIGl0dGkgcXVldWU6IFRB
U0tfUEhZX0VOQiBhcyB0YXNrIDQKG1swbVtJVFRJXSAgIFN0YXJ0aW5nIGl0dGkgcXVldWU6
IFRBU0tfTUFDX0VOQiBhcyB0YXNrIDUKG1swbVtJVFRJXSAgIFN0YXJ0aW5nIGl0dGkgcXVl
dWU6IFRBU0tfUkxDX0VOQiBhcyB0YXNrIDYKG1swbVtJVFRJXSAgIFN0YXJ0aW5nIGl0dGkg
cXVldWU6IFRBU0tfUlJDX0VOQl9OQl9Jb1QgYXMgdGFzayA3ChtbMG1bSVRUSV0gICBTdGFy
dGluZyBpdHRpIHF1ZXVlOiBUQVNLX1BEQ1BfRU5CIGFzIHRhc2sgOAobWzBtW0lUVEldICAg
U3RhcnRpbmcgaXR0aSBxdWV1ZTogVEFTS19EQVRBX0ZPUldBUkRJTkcgYXMgdGFzayA5Chtb
MG1bSVRUSV0gICBTdGFydGluZyBpdHRpIHF1ZXVlOiBUQVNLX0VORF9NQVJLRVIgYXMgdGFz
ayAxMAobWzBtW0lUVEldICAgU3RhcnRpbmcgaXR0aSBxdWV1ZTogVEFTS19SUkNfRU5CIGFz
IHRhc2sgMTEKG1swbVtJVFRJXSAgIFN0YXJ0aW5nIGl0dGkgcXVldWU6IFRBU0tfUlJDX0dO
QiBhcyB0YXNrIDEyChtbMG1bSVRUSV0gICBTdGFydGluZyBpdHRpIHF1ZXVlOiBUQVNLX1JB
TF9FTkIgYXMgdGFzayAxMwobWzBtW0lUVEldICAgU3RhcnRpbmcgaXR0aSBxdWV1ZTogVEFT
S19TMUFQIGFzIHRhc2sgMTQKG1swbVtJVFRJXSAgIFN0YXJ0aW5nIGl0dGkgcXVldWU6IFRB
U0tfTkdBUCBhcyB0YXNrIDE1ChtbMG1bSVRUSV0gICBTdGFydGluZyBpdHRpIHF1ZXVlOiBU
QVNLX1gyQVAgYXMgdGFzayAxNgobWzBtW0lUVEldICAgU3RhcnRpbmcgaXR0aSBxdWV1ZTog
VEFTS19NMkFQX0VOQiBhcyB0YXNrIDE3ChtbMG1bSVRUSV0gICBTdGFydGluZyBpdHRpIHF1
ZXVlOiBUQVNLX00yQVBfTUNFIGFzIHRhc2sgMTgKG1swbVtJVFRJXSAgIFN0YXJ0aW5nIGl0
dGkgcXVldWU6IFRBU0tfTTNBUCBhcyB0YXNrIDE5ChtbMG1bSVRUSV0gICBTdGFydGluZyBp
dHRpIHF1ZXVlOiBUQVNLX00zQVBfTU1FIGFzIHRhc2sgMjAKG1swbVtJVFRJXSAgIFN0YXJ0
aW5nIGl0dGkgcXVldWU6IFRBU0tfTTNBUF9NQ0UgYXMgdGFzayAyMQobWzBtW0lUVEldICAg
U3RhcnRpbmcgaXR0aSBxdWV1ZTogVEFTS19TQ1RQIGFzIHRhc2sgMjIKG1swbVtJVFRJXSAg
IFN0YXJ0aW5nIGl0dGkgcXVldWU6IFRBU0tfRU5CX0FQUCBhcyB0YXNrIDIzChtbMG1bSVRU
SV0gICBTdGFydGluZyBpdHRpIHF1ZXVlOiBUQVNLX0dOQl9BUFAgYXMgdGFzayAyNAobWzBt
W0lUVEldICAgU3RhcnRpbmcgaXR0aSBxdWV1ZTogVEFTS19NQ0VfQVBQIGFzIHRhc2sgMjUK
G1swbVtJVFRJXSAgIFN0YXJ0aW5nIGl0dGkgcXVldWU6IFRBU0tfTU1FX0FQUCBhcyB0YXNr
IDI2ChtbMG1bSVRUSV0gICBTdGFydGluZyBpdHRpIHF1ZXVlOiBUQVNLX0ZMRVhSQU5fQUdF
TlQgYXMgdGFzayAyNwobWzBtW0lUVEldICAgU3RhcnRpbmcgaXR0aSBxdWV1ZTogVEFTS19Q
SFlfVUUgYXMgdGFzayAyOAobWzBtW0lUVEldICAgU3RhcnRpbmcgaXR0aSBxdWV1ZTogVEFT
S19NQUNfVUUgYXMgdGFzayAyOQobWzBtW0lUVEldICAgU3RhcnRpbmcgaXR0aSBxdWV1ZTog
VEFTS19STENfVUUgYXMgdGFzayAzMAobWzBtW0lUVEldICAgU3RhcnRpbmcgaXR0aSBxdWV1
ZTogVEFTS19QRENQX1VFIGFzIHRhc2sgMzEKG1swbVtJVFRJXSAgIFN0YXJ0aW5nIGl0dGkg
cXVldWU6IFRBU0tfUlJDX1VFIGFzIHRhc2sgMzIKG1swbVtJVFRJXSAgIFN0YXJ0aW5nIGl0
dGkgcXVldWU6IFRBU0tfUlJDX05SVUUgYXMgdGFzayAzMwobWzBtW0lUVEldICAgU3RhcnRp
bmcgaXR0aSBxdWV1ZTogVEFTS19OQVNfVUUgYXMgdGFzayAzNAobWzBtW0lUVEldICAgU3Rh
cnRpbmcgaXR0aSBxdWV1ZTogVEFTS19SQUxfVUUgYXMgdGFzayAzNQobWzBtW0lUVEldICAg
U3RhcnRpbmcgaXR0aSBxdWV1ZTogVEFTS19NU0MgYXMgdGFzayAzNgobWzBtW0lUVEldICAg
U3RhcnRpbmcgaXR0aSBxdWV1ZTogVEFTS19HVFBWMV9VIGFzIHRhc2sgMzcKG1swbVtJVFRJ
XSAgIFN0YXJ0aW5nIGl0dGkgcXVldWU6IE9DUF9HVFBWMV9VIGFzIHRhc2sgMzgKG1swbVtJ
VFRJXSAgIFN0YXJ0aW5nIGl0dGkgcXVldWU6IFRBU0tfVURQIGFzIHRhc2sgMzkKG1swbVtJ
VFRJXSAgIFN0YXJ0aW5nIGl0dGkgcXVldWU6IFRBU0tfQ1VfRjEgYXMgdGFzayA0MAobWzBt
W0lUVEldICAgU3RhcnRpbmcgaXR0aSBxdWV1ZTogVEFTS19EVV9GMSBhcyB0YXNrIDQxChtb
MG1bSVRUSV0gICBTdGFydGluZyBpdHRpIHF1ZXVlOiBUQVNLX1JSQ19VRV9TSU0gYXMgdGFz
ayA0MgobWzBtW0lUVEldICAgU3RhcnRpbmcgaXR0aSBxdWV1ZTogVEFTS19SUkNfR05CX1NJ
TSBhcyB0YXNrIDQzChtbMG1bSVRUSV0gICBTdGFydGluZyBpdHRpIHF1ZXVlOiBUQVNLX1JS
Q19OU0FfVUUgYXMgdGFzayA0NAobWzBtW0lUVEldICAgU3RhcnRpbmcgaXR0aSBxdWV1ZTog
VEFTS19SUkNfTlNBX05SVUUgYXMgdGFzayA0NQobWzBtW0lUVEldICAgU3RhcnRpbmcgaXR0
aSBxdWV1ZTogVEFTS19OQVNfTlJVRSBhcyB0YXNrIDQ2ChtbMG1bT1BUXSAgIE9QVCBkaXNh
YmxlZAobWzBtW0hXXSAgIFZlcnNpb246IEJyYW5jaDogZGV2ZWxvcCBBYnJldi4gSGFzaDog
MWVkNThmNjViNyBEYXRlOiBUdWUgRmViIDggMTQ6MTE6MTcgMjAyMiArMDAwMAobWzBtW05S
X1BIWV0gICBQUkIgYmxhY2tsaXN0IAobWzBtW05SX1BIWV0gICBSQy5nTkIgPSAweDU1YThi
ZWYyZjM1MAobWzBtW05SX1BIWV0gICBSQy5nTkJbMF0gPSAweDdmNWY1ODEwYjAxMAobWzBt
W05SX1BIWV0gICBDb3B5aW5nIDAgYmxhY2tsaXN0ZWQgUFJCIHRvIEwxIGNvbnRleHQKG1sw
bVtQSFldICAgbDFfbm9ydGhfaW5pdF9nTkIoKSBSQy5uYl9ucl9MMV9pbnN0OjEKG1swbVtQ
SFldICAgSW5zdGFsbGluZyBjYWxsYmFja3MgZm9yIElGX01vZHVsZSAtIFVMX2luZGljYXRp
b24KG1swbVtNQUNdICAgQWxsb2NhdGluZyBzaGFyZWQgTDEvTDIgaW50ZXJmYWNlIHN0cnVj
dHVyZSBmb3IgaW5zdGFuY2UgMCBAIDB4NTVhOGJlZjMxNTEwChtbMG1bUEhZXSAgIGwxX25v
cnRoX2luaXRfZ05CKCkgUkMuZ05CWzBdIGluc3RhbGxpbmcgY2FsbGJhY2tzChtbMG1bU0NU
UF0gICBTdGFydGluZyBTQ1RQIGxheWVyChtbMG1bSVRUSV0gICBDcmVhdGVkIFBvc2l4IHRo
cmVhZCBUQVNLX1NDVFAKG1swbVtYMkFQXSAgIFgyQVAgaXMgZGlzYWJsZWQuChtbMG0bWzE7
MzFtW05HQVBdICAgTm8gY29uZmlndXJhdGlvbiBpbiB0aGUgZmlsZS4KG1swbRtbMTszMW1b
TkdBUF0gICBObyBjb25maWd1cmF0aW9uIGluIHRoZSBmaWxlLgobWzBtW05HQVBdICAgTmdh
cCB0YXNrIG5vdCBjcmVhdGVkChtbMG1bUEhZXSAgIGdOQl9hcHBfdGFzaygpIFRhc2sgcmVh
ZHkgaW5pdGlhbGl6ZSBzdHJ1Y3R1cmVzChtbMG1bSVRUSV0gICBDcmVhdGVkIFBvc2l4IHRo
cmVhZCBUQVNLX0dOQl9BUFAKG1swbVtOUl9SUkNdICAgQ3JlYXRpbmcgTlIgUlJDIGdOQiBU
YXNrChtbMG1bTlJfUEhZXSAgIFBSQiBibGFja2xpc3QgChtbMG1bTlJfUEhZXSAgIENvcHlp
bmcgMCBibGFja2xpc3RlZCBQUkIgdG8gTDEgY29udGV4dAobWzBtW1BIWV0gICBsMV9ub3J0
aF9pbml0X2dOQigpIFJDLm5iX25yX0wxX2luc3Q6MQobWzBtW1BIWV0gICBJbnN0YWxsaW5n
IGNhbGxiYWNrcyBmb3IgSUZfTW9kdWxlIC0gVUxfaW5kaWNhdGlvbgobWzBtW1BIWV0gICBs
MV9ub3J0aF9pbml0X2dOQigpIFJDLmdOQlswXSBpbnN0YWxsaW5nIGNhbGxiYWNrcwobWzBt
W01BQ10gICBbTUFJTl0gSW5pdCBmdW5jdGlvbiBzdGFydDpuYl9ucl9tYWNybGNfaW5zdD0x
ChtbMG1bTlJfUlJDXSAgIEVudGVyaW5nIG1haW4gbG9vcCBvZiBOUl9SUkMgbWVzc2FnZSB0
YXNrChtbMG1bSVRUSV0gICBDcmVhdGVkIFBvc2l4IHRocmVhZCBUQVNLX1JSQ19HTkIKG1sw
bVtQSFldICAgSW5zdGFsbGluZyBjYWxsYmFja3MgZm9yIElGX01vZHVsZSAtIFVMX2luZGlj
YXRpb24KG1swbVtOUl9NQUNdICAgUFVTQ0ggVGFyZ2V0IDIwMCwgUFVDQ0ggVGFyZ2V0IDE1
MCwgUFVDQ0ggRmFpbHVyZSAxMCwgUFVTQ0ggRmFpbHVyZSAxMAobWzBtW05SX01BQ10gICBC
bGFja2xpc3RlZCBQUkJTIDAKG1swbVtQSFldICAgZ05CX2FwcF90YXNrKCkgUkMubmJfbnJf
TDFfaW5zdDoxChtbMG1bUEhZXSAgIGwxX25vcnRoX2luaXRfZ05CKCkgUkMubmJfbnJfTDFf
aW5zdDoxChtbMG1bUEhZXSAgIEluc3RhbGxpbmcgY2FsbGJhY2tzIGZvciBJRl9Nb2R1bGUg
LSBVTF9pbmRpY2F0aW9uChtbMG1bUEhZXSAgIGwxX25vcnRoX2luaXRfZ05CKCkgUkMuZ05C
WzBdIGluc3RhbGxpbmcgY2FsbGJhY2tzChtbMG1bR05CX0FQUF0gICBBbGxvY2F0aW5nIGdO
Ql9SUkNfSU5TVCBmb3IgMSBpbnN0YW5jZXMKG1swbVtQSFldICAgZ05CX2FwcF90YXNrKCkg
UkMubmJfbnJfaW5zdDoxIFJDLm5ycnJjOjB4N2Y1ZjUwMDA2MzgwChtbMG1bSVRUSV0gICBD
cmVhdGVkIFBvc2l4IHRocmVhZCBUQVNLX0dUUFYxX1UKG1swbVtQSFldICAgZ05CX2FwcF90
YXNrKCkgQ3JlYXRpbmcgUlJDIGluc3RhbmNlIFJDLm5ycnJjWzBdOjB4N2Y1ZjUwMDA2M2Ew
ICgxIG9mIDEpChtbMG1bUlJDXSAgIFJlYWQgaW4gU2VydmluZ0NlbGxDb25maWdDb21tb24g
KFBoeXNDZWxsSWQgMCwgQUJTRlJFUVNTQiA2NDEwMzIsIERMQmFuZCA3OCwgQUJTRlJFUVBP
SU5UQSA2NDAwMDAsIERMQlcgMTA2LFJBQ0hfVGFyZ2V0UmVjZWl2ZWRQb3dlciAtMTE4Chtb
MG1bTlJfTUFDXSAgIE5SIGJhbmQgZHVwbGV4IHNwYWNpbmcgaXMgMCBLSHogKG5yX2JhbmR0
YWJsZVszN10uYmFuZCA9IDc4KQobWzBtW05SX01BQ10gICBOUiBiYW5kIDc4LCBkdXBsZXgg
bW9kZSBUREQsIGR1cGxleCBzcGFjaW5nID0gMCBLSHoKG1swbVtSUkNdICAgREwgUFRSUyBm
cmVxdWVuY3lEZW5zaXR5IDEgbm90IHNldC4gQXNzdW1pbmcgUFRSUyBub3QgcHJlc2VudCEg
ChtbMG1bUlJDXSAgIFVMIFBUUlMgZnJlcXVlbmN5RGVuc2l0eSAxIG5vdCBzZXQuIEFzc3Vt
aW5nIFBUUlMgbm90IHByZXNlbnQhIAobWzBtW05SX1JSQ10gICBTZXR0aW5nIG5vZGVfdHlw
ZSB0byBuZ3Jhbl9nTkIKG1swbVtHTkJfQVBQXSAgIFJSQyBzdGFydGluZyB3aXRoIG5vZGUg
dHlwZSAyChtbMG1bR05CX0FQUF0gICBTZW5kaW5nIGNvbmZpZ3VyYXRpb24gbWVzc2FnZSB0
byBOUl9SUkMgdGFzawobWzBtW1BEQ1BdICAgcGRjcCBpbml0LHVzZWd0cCAKG1swbVtQRENQ
XSAgIG5vZGUgaXMgZ05CIAobWzBtW0dUUFVdICAgQ29uZmlndXJpbmcgR1RQdQobWzBtW05S
X1JSQ10gICBSZWNlaXZlZCBtZXNzYWdlIE5SUlJDX0NPTkZJR1VSQVRJT05fUkVRChtbMG1b
TlJfUlJDXSAgIFtnTkIgMF0gUmVjZWl2ZWQgTlJSUkNfQ09ORklHVVJBVElPTl9SRVEgOiAw
eDdmNWY1MDAwN2FmMAobWzBtW05SX1JSQ10gICBbRlJBTUUgMDAwMDBdW2dOQl1bTU9EIDAw
XVtSTlRJIDBdIEluaXQuLi4KG1swbVtHVFBVXSAgIE5TQSBtb2RlIAobWzBtW0dUUFVdICAg
Q29uZmlndXJpbmcgR1RQdSBhZGRyZXNzIDogMTkyLjE2OC4xMi4xMTEgLT4gNmYwY2E4YzAK
G1swbVtHTkJfQVBQXSAgIFtnTkIgMF0gZ05CX2FwcF9yZWdpc3RlciBmb3IgaW5zdGFuY2Ug
MAobWzBtW0dUUFVdICAgSW5pdGlhbGl6aW5nIFVEUCBmb3IgbG9jYWwgYWRkcmVzcyAxOTIu
MTY4LjEyLjExMSB3aXRoIHBvcnQgMjE1MgobWzBtG1s5M21bR1RQVV0gICBiaW5kOiBDYW5u
b3QgYXNzaWduIHJlcXVlc3RlZCBhZGRyZXNzChtbMG0bWzE7MzFtW0dUUFVdICAgZmFpbGVk
IHRvIGJpbmQgc29ja2V0OiAxOTIuMTY4LjEyLjExMSAyMTUyIAobWzBtG1sxOzMxbVtHVFBV
XSAgIGNhbid0IGNyZWF0ZSBHVFAtVSBpbnN0YW5jZQobWzBtW0dUUFVdICAgQ3JlYXRlZCBn
dHB1IGluc3RhbmNlIGlkOiAtMQobWzBtW05SX01BQ10gICBOUiBiYW5kIGR1cGxleCBzcGFj
aW5nIGlzIDAgS0h6IChucl9iYW5kdGFibGVbMzddLmJhbmQgPSA3OCkKG1swbVtOUl9NQUNd
ICAgTlIgYmFuZCA3OCwgZHVwbGV4IG1vZGUgVERELCBkdXBsZXggc3BhY2luZyA9IDAgS0h6
ChtbMG1bTlJfUlJDXSAgIFtGUkFNRSAwMDAwMF1bZ05CXVtNT0QgMDBdW1JOVEkgMF0gQ2hl
Y2tpbmcgcmVsZWFzZSAKG1swbVtOUl9SUkNdICAgU0lCMSBmcmVxOiBhYnNvbHV0ZUZyZXF1
ZW5jeVNTQiA2NDEwMzIsIGFic29sdXRlRnJlcXVlbmN5UG9pbnRBIDY0MDAwMAobWzBtW05S
X1JSQ10gICBTSUIxIGZyZXE6IGFic29sdXRlX2RpZmYgMTAzMiwgMiooYWJzb2x1dGVfZGlm
Zi8oMTIqMikgLSAxMCkgNjYKG1swbUNNRExJTkU6ICIuL25yLXNvZnRtb2RlbSIgIi1PIiAi
Li4vLi4vLi4vY2ktc2NyaXB0cy9jb25mX2ZpbGVzL2duYi5iYW5kNzgudG0xLjEwNlBSQi51
c3JwbjMwMC0yLmNvbmYiICItLXNhIiAiLS1hcmdzIiAiY2xvY2tfc291cmNlPWludGVybmFs
IiAKW0NPTkZJR10gZ2V0IHBhcmFtZXRlcnMgZnJvbSBsaWJjb25maWcgLi4vLi4vLi4vY2kt
c2NyaXB0cy9jb25mX2ZpbGVzL2duYi5iYW5kNzgudG0xLjEwNlBSQi51c3JwbjMwMC0yLmNv
bmYgLCBkZWJ1ZyBmbGFnczogMHgwMDAwMDAwMApbTElCQ09ORklHXSBQYXRoIGZvciBpbmNs
dWRlIGRpcmVjdGl2ZSBzZXQgdG86IC4uLy4uLy4uL2NpLXNjcmlwdHMvY29uZl9maWxlcwpb
Q09ORklHXSBmdW5jdGlvbiBjb25maWdfbGliY29uZmlnX2luaXQgcmV0dXJuZWQgMApbQ09O
RklHXSBjb25maWcgbW9kdWxlIGxpYmNvbmZpZyBsb2FkZWQKW0xJQkNPTkZJR10gY29uZmln
OiAxLzEgcGFyYW1ldGVycyBzdWNjZXNzZnVsbHkgc2V0LCAoMSB0byBkZWZhdWx0IHZhbHVl
KQpbTElCQ09ORklHXSBsb2dfY29uZmlnOiAzLzMgcGFyYW1ldGVycyBzdWNjZXNzZnVsbHkg
c2V0LCAoMSB0byBkZWZhdWx0IHZhbHVlKQpbTElCQ09ORklHXSBsb2dfY29uZmlnOiA1NS81
NSBwYXJhbWV0ZXJzIHN1Y2Nlc3NmdWxseSBzZXQsICg0OSB0byBkZWZhdWx0IHZhbHVlKQpb
TElCQ09ORklHXSBsb2dfY29uZmlnOiA1NS81NSBwYXJhbWV0ZXJzIHN1Y2Nlc3NmdWxseSBz
ZXQsICg1NSB0byBkZWZhdWx0IHZhbHVlKQpbTElCQ09ORklHXSBsb2dfY29uZmlnOiAxNi8x
NiBwYXJhbWV0ZXJzIHN1Y2Nlc3NmdWxseSBzZXQsICgxNiB0byBkZWZhdWx0IHZhbHVlKQpb
TElCQ09ORklHXSBsb2dfY29uZmlnOiAxNi8xNiBwYXJhbWV0ZXJzIHN1Y2Nlc3NmdWxseSBz
ZXQsICgxNiB0byBkZWZhdWx0IHZhbHVlKQpsb2cgaW5pdCBkb25lClJlYWRpbmcgaW4gY29t
bWFuZC1saW5lIG9wdGlvbnMKW0xJQkNPTkZJR10gKHJvb3QpOiAzNC8zNCBwYXJhbWV0ZXJz
IHN1Y2Nlc3NmdWxseSBzZXQsICgzMCB0byBkZWZhdWx0IHZhbHVlKQpbTElCQ09ORklHXSAo
cm9vdCk6IDYvNiBwYXJhbWV0ZXJzIHN1Y2Nlc3NmdWxseSBzZXQsICg1IHRvIGRlZmF1bHQg
dmFsdWUpCltMSUJDT05GSUddIChyb290KTogMi8yIHBhcmFtZXRlcnMgc3VjY2Vzc2Z1bGx5
IHNldCwgKDAgdG8gZGVmYXVsdCB2YWx1ZSkKW0xJQkNPTkZJR10gVEhSRUFEX1NUUlVDVC5b
MF06IDIvMiBwYXJhbWV0ZXJzIHN1Y2Nlc3NmdWxseSBzZXQsICgwIHRvIGRlZmF1bHQgdmFs
dWUpCltMSUJDT05GSUddIFRIUkVBRF9TVFJVQ1QuWzBdOiAyLzIgcGFyYW1ldGVycyBzdWNj
ZXNzZnVsbHkgc2V0LCAoMCB0byBkZWZhdWx0IHZhbHVlKQpbQ09ORklHXSBwYXJhbGxlbF9j
b25mIGlzIHNldCB0byAyCltDT05GSUddIHdvcmtlcl9jb25mIGlzIHNldCB0byAxCkNvbmZp
Z3VyYXRpb246IG5iX3JyY19pbnN0IDEsIG5iX25yX0wxX2luc3QgMSwgbmJfcnUgMQpbTElC
Q09ORklHXSBUVHJhY2VyOiA0LzQgcGFyYW1ldGVycyBzdWNjZXNzZnVsbHkgc2V0LCAoNCB0
byBkZWZhdWx0IHZhbHVlKQpjb25maWd1cmluZyBmb3IgUkFVL1JSVQpDUFUgRnJlcSBpcyAy
LjM5NDYwMSAKW0xJQkNPTkZJR10gb3B0OiAzLzMgcGFyYW1ldGVycyBzdWNjZXNzZnVsbHkg
c2V0LCAoMyB0byBkZWZhdWx0IHZhbHVlKQpbTElCQ09ORklHXSAocm9vdCk6IDIvMiBwYXJh
bWV0ZXJzIHN1Y2Nlc3NmdWxseSBzZXQsICgwIHRvIGRlZmF1bHQgdmFsdWUpCltMSUJDT05G
SUddIGdOQnMuWzBdOiAyMi8yMiBwYXJhbWV0ZXJzIHN1Y2Nlc3NmdWxseSBzZXQsICgxMSB0
byBkZWZhdWx0IHZhbHVlKQpbTElCQ09ORklHXSBMMXMuWzBdOiAxNC8xNCBwYXJhbWV0ZXJz
IHN1Y2Nlc3NmdWxseSBzZXQsICgxMSB0byBkZWZhdWx0IHZhbHVlKQpJbml0aWFsaXppbmcg
bm9ydGhib3VuZCBpbnRlcmZhY2UgZm9yIEwxCltMSUJDT05GSUddIGVOQnMuWzBdOiAxLzEg
cGFyYW1ldGVycyBzdWNjZXNzZnVsbHkgc2V0LCAoMSB0byBkZWZhdWx0IHZhbHVlKQpbTElC
Q09ORklHXSBnTkJzLlswXTogMS8xIHBhcmFtZXRlcnMgc3VjY2Vzc2Z1bGx5IHNldCwgKDEg
dG8gZGVmYXVsdCB2YWx1ZSkKW0xJQkNPTkZJR10gZ05Ccy5bMF0uTkVUV09SS19JTlRFUkZB
Q0VTOiAxMC8xMCBwYXJhbWV0ZXJzIHN1Y2Nlc3NmdWxseSBzZXQsICgzIHRvIGRlZmF1bHQg
dmFsdWUpCltMSUJDT05GSUddIChyb290KTogMi8yIHBhcmFtZXRlcnMgc3VjY2Vzc2Z1bGx5
IHNldCwgKDAgdG8gZGVmYXVsdCB2YWx1ZSkKW0xJQkNPTkZJR10gZ05Ccy5bMF06IDIyLzIy
IHBhcmFtZXRlcnMgc3VjY2Vzc2Z1bGx5IHNldCwgKDExIHRvIGRlZmF1bHQgdmFsdWUpCltM
SUJDT05GSUddIEwxcy5bMF06IDE0LzE0IHBhcmFtZXRlcnMgc3VjY2Vzc2Z1bGx5IHNldCwg
KDExIHRvIGRlZmF1bHQgdmFsdWUpCkluaXRpYWxpemluZyBub3J0aGJvdW5kIGludGVyZmFj
ZSBmb3IgTDEKW0xJQkNPTkZJR10gKHJvb3QpOiAyLzIgcGFyYW1ldGVycyBzdWNjZXNzZnVs
bHkgc2V0LCAoMCB0byBkZWZhdWx0IHZhbHVlKQpbTElCQ09ORklHXSBnTkJzLlswXTogMjIv
MjIgcGFyYW1ldGVycyBzdWNjZXNzZnVsbHkgc2V0LCAoMTEgdG8gZGVmYXVsdCB2YWx1ZSkK
W0xJQkNPTkZJR10gTUFDUkxDcy5bMF06IDI2LzI2IHBhcmFtZXRlcnMgc3VjY2Vzc2Z1bGx5
IHNldCwgKDIzIHRvIGRlZmF1bHQgdmFsdWUpCltMSUJDT05GSUddIChyb290KTogMi8yIHBh
cmFtZXRlcnMgc3VjY2Vzc2Z1bGx5IHNldCwgKDAgdG8gZGVmYXVsdCB2YWx1ZSkKW0xJQkNP
TkZJR10gZ05Ccy5bMF06IDIyLzIyIHBhcmFtZXRlcnMgc3VjY2Vzc2Z1bGx5IHNldCwgKDEx
IHRvIGRlZmF1bHQgdmFsdWUpCltMSUJDT05GSUddIGxpc3QgZ05Ccy5bMF0ucGRjY2hfQ29u
ZmlnU0lCMSBub3QgZm91bmQgaW4gY29uZmlnIGZpbGUgLi4vLi4vLi4vY2ktc2NyaXB0cy9j
b25mX2ZpbGVzL2duYi5iYW5kNzgudG0xLjEwNlBSQi51c3JwbjMwMC0yLmNvbmYgCltMSUJD
T05GSUddIGdOQnMuWzBdLnNlcnZpbmdDZWxsQ29uZmlnQ29tbW9uLlswXTogNjAvNjAgcGFy
YW1ldGVycyBzdWNjZXNzZnVsbHkgc2V0LCAoOSB0byBkZWZhdWx0IHZhbHVlKQpbTElCQ09O
RklHXSBsaXN0IGdOQnMuWzBdLnNlcnZpbmdDZWxsQ29uZmlnRGVkaWNhdGVkIG5vdCBmb3Vu
ZCBpbiBjb25maWcgZmlsZSAuLi8uLi8uLi9jaS1zY3JpcHRzL2NvbmZfZmlsZXMvZ25iLmJh
bmQ3OC50bTEuMTA2UFJCLnVzcnBuMzAwLTIuY29uZiAKTlJSUkMgMDogU291dGhib3VuZCBU
cmFuc3BvcnQgbG9jYWxfbWFjCltMSUJDT05GSUddIGdOQnMuWzBdLnBsbW5fbGlzdC5bMF06
IDMvMyBwYXJhbWV0ZXJzIHN1Y2Nlc3NmdWxseSBzZXQsICgwIHRvIGRlZmF1bHQgdmFsdWUp
ClNTQiBTQ08gMApwZHNjaF9BbnRlbm5hUG9ydHMgMQpwdXNjaF9BbnRlbm5hUG9ydHMgMQpt
aW5UWFJYVElNRSA2CkRvIENTSS1SUyAwCltMSUJDT05GSUddIHNlY3VyaXR5OiA0LzQgcGFy
YW1ldGVycyBzdWNjZXNzZnVsbHkgc2V0LCAoMCB0byBkZWZhdWx0IHZhbHVlKQpbTElCQ09O
RklHXSAocm9vdCk6IDIvMiBwYXJhbWV0ZXJzIHN1Y2Nlc3NmdWxseSBzZXQsICgwIHRvIGRl
ZmF1bHQgdmFsdWUpCltMSUJDT05GSUddIGdOQnMuWzBdLk5FVFdPUktfSU5URVJGQUNFUzog
MTAvMTAgcGFyYW1ldGVycyBzdWNjZXNzZnVsbHkgc2V0LCAoMyB0byBkZWZhdWx0IHZhbHVl
KQo8U0lCMT4KICAgIDxjZWxsU2VsZWN0aW9uSW5mbz4KICAgICAgICA8cS1SeExldk1pbj4t
NjU8L3EtUnhMZXZNaW4+CiAgICA8L2NlbGxTZWxlY3Rpb25JbmZvPgogICAgPGNlbGxBY2Nl
c3NSZWxhdGVkSW5mbz4KICAgICAgICA8cGxtbi1JZGVudGl0eUxpc3Q+CiAgICAgICAgICAg
IDxQTE1OLUlkZW50aXR5SW5mbz4KICAgICAgICAgICAgICAgIDxwbG1uLUlkZW50aXR5TGlz
dD4KICAgICAgICAgICAgICAgICAgICA8UExNTi1JZGVudGl0eT4KICAgICAgICAgICAgICAg
ICAgICAgICAgPG1jYz4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxNQ0MtTU5DLURp
Z2l0PjI8L01DQy1NTkMtRGlnaXQ+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8TUND
LU1OQy1EaWdpdD4wPC9NQ0MtTU5DLURpZ2l0PgogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgPE1DQy1NTkMtRGlnaXQ+ODwvTUNDLU1OQy1EaWdpdD4KICAgICAgICAgICAgICAgICAg
ICAgICAgPC9tY2M+CiAgICAgICAgICAgICAgICAgICAgICAgIDxtbmM+CiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICA8TUNDLU1OQy1EaWdpdD45PC9NQ0MtTU5DLURpZ2l0PgogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgPE1DQy1NTkMtRGlnaXQ+MzwvTUNDLU1OQy1EaWdp
dD4KICAgICAgICAgICAgICAgICAgICAgICAgPC9tbmM+CiAgICAgICAgICAgICAgICAgICAg
PC9QTE1OLUlkZW50aXR5PgogICAgICAgICAgICAgICAgPC9wbG1uLUlkZW50aXR5TGlzdD4K
ICAgICAgICAgICAgICAgIDx0cmFja2luZ0FyZWFDb2RlPgogICAgICAgICAgICAgICAgICAg
IDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMQogICAgICAgICAgICAgICAgPC90cmFja2luZ0Fy
ZWFDb2RlPgogICAgICAgICAgICAgICAgPGNlbGxJZGVudGl0eT4KICAgICAgICAgICAgICAg
ICAgICAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAxMTEwMDAwMDAwMDAKICAgICAgICAgICAg
ICAgIDwvY2VsbElkZW50aXR5PgogICAgICAgICAgICAgICAgPGNlbGxSZXNlcnZlZEZvck9w
ZXJhdG9yVXNlPjxub3RSZXNlcnZlZC8+PC9jZWxsUmVzZXJ2ZWRGb3JPcGVyYXRvclVzZT4K
ICAgICAgICAgICAgPC9QTE1OLUlkZW50aXR5SW5mbz4KICAgICAgICA8L3BsbW4tSWRlbnRp
dHlMaXN0PgogICAgPC9jZWxsQWNjZXNzUmVsYXRlZEluZm8+CiAgICA8c2VydmluZ0NlbGxD
b25maWdDb21tb24+CiAgICAgICAgPGRvd25saW5rQ29uZmlnQ29tbW9uPgogICAgICAgICAg
ICA8ZnJlcXVlbmN5SW5mb0RMPgogICAgICAgICAgICAgICAgPGZyZXF1ZW5jeUJhbmRMaXN0
PgogICAgICAgICAgICAgICAgICAgIDxOUi1NdWx0aUJhbmRJbmZvPgogICAgICAgICAgICAg
ICAgICAgICAgICA8ZnJlcUJhbmRJbmRpY2F0b3JOUj43ODwvZnJlcUJhbmRJbmRpY2F0b3JO
Uj4KICAgICAgICAgICAgICAgICAgICA8L05SLU11bHRpQmFuZEluZm8+CiAgICAgICAgICAg
ICAgICA8L2ZyZXF1ZW5jeUJhbmRMaXN0PgogICAgICAgICAgICAgICAgPG9mZnNldFRvUG9p
bnRBPjY2PC9vZmZzZXRUb1BvaW50QT4KICAgICAgICAgICAgICAgIDxzY3MtU3BlY2lmaWND
YXJyaWVyTGlzdD4KICAgICAgICAgICAgICAgICAgICA8U0NTLVNwZWNpZmljQ2Fycmllcj4K
ICAgICAgICAgICAgICAgICAgICAgICAgPG9mZnNldFRvQ2Fycmllcj4wPC9vZmZzZXRUb0Nh
cnJpZXI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxzdWJjYXJyaWVyU3BhY2luZz48a0h6
MzAvPjwvc3ViY2FycmllclNwYWNpbmc+CiAgICAgICAgICAgICAgICAgICAgICAgIDxjYXJy
aWVyQmFuZHdpZHRoPjEwNjwvY2FycmllckJhbmR3aWR0aD4KICAgICAgICAgICAgICAgICAg
ICA8L1NDUy1TcGVjaWZpY0NhcnJpZXI+CiAgICAgICAgICAgICAgICA8L3Njcy1TcGVjaWZp
Y0NhcnJpZXJMaXN0PgogICAgICAgICAgICA8L2ZyZXF1ZW5jeUluZm9ETD4KICAgICAgICAg
ICAgPGluaXRpYWxEb3dubGlua0JXUD4KICAgICAgICAgICAgICAgIDxnZW5lcmljUGFyYW1l
dGVycz4KICAgICAgICAgICAgICAgICAgICA8bG9jYXRpb25BbmRCYW5kd2lkdGg+NjM2ODwv
bG9jYXRpb25BbmRCYW5kd2lkdGg+CiAgICAgICAgICAgICAgICAgICAgPHN1YmNhcnJpZXJT
cGFjaW5nPjxrSHozMC8+PC9zdWJjYXJyaWVyU3BhY2luZz4KICAgICAgICAgICAgICAgIDwv
Z2VuZXJpY1BhcmFtZXRlcnM+CiAgICAgICAgICAgICAgICA8cGRjY2gtQ29uZmlnQ29tbW9u
PgogICAgICAgICAgICAgICAgICAgIDxzZXR1cD4KICAgICAgICAgICAgICAgICAgICAgICAg
PGNvbnRyb2xSZXNvdXJjZVNldFplcm8+MTI8L2NvbnRyb2xSZXNvdXJjZVNldFplcm8+CiAg
ICAgICAgICAgICAgICAgICAgICAgIDxzZWFyY2hTcGFjZVplcm8+MDwvc2VhcmNoU3BhY2Va
ZXJvPgogICAgICAgICAgICAgICAgICAgICAgICA8Y29tbW9uU2VhcmNoU3BhY2VMaXN0Pgog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgPFNlYXJjaFNwYWNlPgogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDxzZWFyY2hTcGFjZUlkPjE8L3NlYXJjaFNwYWNlSWQ+CiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGNvbnRyb2xSZXNvdXJjZVNldElkPjA8
L2NvbnRyb2xSZXNvdXJjZVNldElkPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IDxtb25pdG9yaW5nU2xvdFBlcmlvZGljaXR5QW5kT2Zmc2V0PgogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICA8c2wxPjwvc2wxPgogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDwvbW9uaXRvcmluZ1Nsb3RQZXJpb2RpY2l0eUFuZE9mZnNldD4KICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICA8bW9uaXRvcmluZ1N5bWJvbHNXaXRoaW5TbG90
PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAxMDAwMDAwMDAwMDAwMAog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvbW9uaXRvcmluZ1N5bWJvbHNXaXRo
aW5TbG90PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxucm9mQ2FuZGlkYXRl
cz4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGFnZ3JlZ2F0aW9uTGV2
ZWwxPjxuMC8+PC9hZ2dyZWdhdGlvbkxldmVsMT4KICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgPGFnZ3JlZ2F0aW9uTGV2ZWwyPjxuMC8+PC9hZ2dyZWdhdGlvbkxldmVs
Mj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGFnZ3JlZ2F0aW9uTGV2
ZWw0PjxuMi8+PC9hZ2dyZWdhdGlvbkxldmVsND4KICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgPGFnZ3JlZ2F0aW9uTGV2ZWw4PjxuMC8+PC9hZ2dyZWdhdGlvbkxldmVs
OD4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGFnZ3JlZ2F0aW9uTGV2
ZWwxNj48bjAvPjwvYWdncmVnYXRpb25MZXZlbDE2PgogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDwvbnJvZkNhbmRpZGF0ZXM+CiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgPHNlYXJjaFNwYWNlVHlwZT4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgPGNvbW1vbj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IDxkY2ktRm9ybWF0MC0wLUFuZEZvcm1hdDEtMD4KICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIDwvZGNpLUZvcm1hdDAtMC1BbmRGb3JtYXQxLTA+CiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvY29tbW9uPgogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIDwvc2VhcmNoU3BhY2VUeXBlPgogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgPC9TZWFyY2hTcGFjZT4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxT
ZWFyY2hTcGFjZT4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8c2VhcmNoU3Bh
Y2VJZD41PC9zZWFyY2hTcGFjZUlkPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IDxjb250cm9sUmVzb3VyY2VTZXRJZD4wPC9jb250cm9sUmVzb3VyY2VTZXRJZD4KICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICA8bW9uaXRvcmluZ1Nsb3RQZXJpb2RpY2l0eUFu
ZE9mZnNldD4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHNsNT4wPC9z
bDU+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9tb25pdG9yaW5nU2xvdFBl
cmlvZGljaXR5QW5kT2Zmc2V0PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxk
dXJhdGlvbj4yPC9kdXJhdGlvbj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8
bW9uaXRvcmluZ1N5bWJvbHNXaXRoaW5TbG90PgogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAxMDAwMDAwMDAwMDAwMAogICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDwvbW9uaXRvcmluZ1N5bWJvbHNXaXRoaW5TbG90PgogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIDxucm9mQ2FuZGlkYXRlcz4KICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgPGFnZ3JlZ2F0aW9uTGV2ZWwxPjxuMC8+PC9hZ2dyZWdhdGlvbkxldmVs
MT4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGFnZ3JlZ2F0aW9uTGV2
ZWwyPjxuMC8+PC9hZ2dyZWdhdGlvbkxldmVsMj4KICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgPGFnZ3JlZ2F0aW9uTGV2ZWw0PjxuNC8+PC9hZ2dyZWdhdGlvbkxldmVs
ND4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGFnZ3JlZ2F0aW9uTGV2
ZWw4PjxuMi8+PC9hZ2dyZWdhdGlvbkxldmVsOD4KICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgPGFnZ3JlZ2F0aW9uTGV2ZWwxNj48bjEvPjwvYWdncmVnYXRpb25MZXZl
bDE2PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvbnJvZkNhbmRpZGF0ZXM+
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHNlYXJjaFNwYWNlVHlwZT4KICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGNvbW1vbj4KICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxkY2ktRm9ybWF0MC0wLUFuZEZvcm1hdDEt
MD4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvZGNpLUZvcm1h
dDAtMC1BbmRGb3JtYXQxLTA+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IDwvY29tbW9uPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvc2VhcmNoU3Bh
Y2VUeXBlPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9TZWFyY2hTcGFjZT4KICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIDxTZWFyY2hTcGFjZT4KICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICA8c2VhcmNoU3BhY2VJZD43PC9zZWFyY2hTcGFjZUlkPgogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxjb250cm9sUmVzb3VyY2VTZXRJZD4wPC9j
b250cm9sUmVzb3VyY2VTZXRJZD4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8
bW9uaXRvcmluZ1Nsb3RQZXJpb2RpY2l0eUFuZE9mZnNldD4KICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgPHNsMT48L3NsMT4KICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICA8L21vbml0b3JpbmdTbG90UGVyaW9kaWNpdHlBbmRPZmZzZXQ+CiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgPG1vbml0b3JpbmdTeW1ib2xzV2l0aGluU2xvdD4K
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMTAwMDAwMDAwMDAwMDAKICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L21vbml0b3JpbmdTeW1ib2xzV2l0aGlu
U2xvdD4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8bnJvZkNhbmRpZGF0ZXM+
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhZ2dyZWdhdGlvbkxldmVs
MT48bjAvPjwvYWdncmVnYXRpb25MZXZlbDE+CiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDxhZ2dyZWdhdGlvbkxldmVsMj48bjAvPjwvYWdncmVnYXRpb25MZXZlbDI+
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhZ2dyZWdhdGlvbkxldmVs
ND48bjQvPjwvYWdncmVnYXRpb25MZXZlbDQ+CiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDxhZ2dyZWdhdGlvbkxldmVsOD48bjIvPjwvYWdncmVnYXRpb25MZXZlbDg+
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhZ2dyZWdhdGlvbkxldmVs
MTY+PG4xLz48L2FnZ3JlZ2F0aW9uTGV2ZWwxNj4KICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICA8L25yb2ZDYW5kaWRhdGVzPgogICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDxzZWFyY2hTcGFjZVR5cGU+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDxjb21tb24+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8
ZGNpLUZvcm1hdDAtMC1BbmRGb3JtYXQxLTA+CiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICA8L2RjaS1Gb3JtYXQwLTAtQW5kRm9ybWF0MS0wPgogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICA8L2NvbW1vbj4KICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICA8L3NlYXJjaFNwYWNlVHlwZT4KICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIDwvU2VhcmNoU3BhY2U+CiAgICAgICAgICAgICAgICAgICAgICAgIDwvY29tbW9u
U2VhcmNoU3BhY2VMaXN0PgogICAgICAgICAgICAgICAgICAgICAgICA8c2VhcmNoU3BhY2VT
SUIxPjA8L3NlYXJjaFNwYWNlU0lCMT4KICAgICAgICAgICAgICAgICAgICAgICAgPHNlYXJj
aFNwYWNlT3RoZXJTeXN0ZW1JbmZvcm1hdGlvbj43PC9zZWFyY2hTcGFjZU90aGVyU3lzdGVt
SW5mb3JtYXRpb24+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYWdpbmdTZWFyY2hTcGFj
ZT41PC9wYWdpbmdTZWFyY2hTcGFjZT4KICAgICAgICAgICAgICAgICAgICAgICAgPHJhLVNl
YXJjaFNwYWNlPjE8L3JhLVNlYXJjaFNwYWNlPgogICAgICAgICAgICAgICAgICAgIDwvc2V0
dXA+CiAgICAgICAgICAgICAgICA8L3BkY2NoLUNvbmZpZ0NvbW1vbj4KICAgICAgICAgICAg
ICAgIDxwZHNjaC1Db25maWdDb21tb24+CiAgICAgICAgICAgICAgICAgICAgPHNldHVwPgog
ICAgICAgICAgICAgICAgICAgICAgICA8cGRzY2gtVGltZURvbWFpbkFsbG9jYXRpb25MaXN0
PgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPFBEU0NILVRpbWVEb21haW5SZXNvdXJj
ZUFsbG9jYXRpb24+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPG1hcHBpbmdU
eXBlPjx0eXBlQS8+PC9tYXBwaW5nVHlwZT4KICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICA8c3RhcnRTeW1ib2xBbmRMZW5ndGg+NDA8L3N0YXJ0U3ltYm9sQW5kTGVuZ3RoPgog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9QRFNDSC1UaW1lRG9tYWluUmVzb3VyY2VB
bGxvY2F0aW9uPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPFBEU0NILVRpbWVEb21h
aW5SZXNvdXJjZUFsbG9jYXRpb24+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
PG1hcHBpbmdUeXBlPjx0eXBlQS8+PC9tYXBwaW5nVHlwZT4KICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICA8c3RhcnRTeW1ib2xBbmRMZW5ndGg+NTc8L3N0YXJ0U3ltYm9sQW5k
TGVuZ3RoPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9QRFNDSC1UaW1lRG9tYWlu
UmVzb3VyY2VBbGxvY2F0aW9uPgogICAgICAgICAgICAgICAgICAgICAgICA8L3Bkc2NoLVRp
bWVEb21haW5BbGxvY2F0aW9uTGlzdD4KICAgICAgICAgICAgICAgICAgICA8L3NldHVwPgog
ICAgICAgICAgICAgICAgPC9wZHNjaC1Db25maWdDb21tb24+CiAgICAgICAgICAgIDwvaW5p
dGlhbERvd25saW5rQldQPgogICAgICAgICAgICA8YmNjaC1Db25maWc+CiAgICAgICAgICAg
ICAgICA8bW9kaWZpY2F0aW9uUGVyaW9kQ29lZmY+PG4yLz48L21vZGlmaWNhdGlvblBlcmlv
ZENvZWZmPgogICAgICAgICAgICA8L2JjY2gtQ29uZmlnPgogICAgICAgICAgICA8cGNjaC1D
b25maWc+CiAgICAgICAgICAgICAgICA8ZGVmYXVsdFBhZ2luZ0N5Y2xlPjxyZjI1Ni8+PC9k
ZWZhdWx0UGFnaW5nQ3ljbGU+CiAgICAgICAgICAgICAgICA8bkFuZFBhZ2luZ0ZyYW1lT2Zm
c2V0PgogICAgICAgICAgICAgICAgICAgIDxxdWFydGVyVD4xPC9xdWFydGVyVD4KICAgICAg
ICAgICAgICAgIDwvbkFuZFBhZ2luZ0ZyYW1lT2Zmc2V0PgogICAgICAgICAgICAgICAgPG5z
PjxvbmUvPjwvbnM+CiAgICAgICAgICAgICAgICA8Zmlyc3RQRENDSC1Nb25pdG9yaW5nT2Nj
YXNpb25PZlBPPgogICAgICAgICAgICAgICAgICAgIDxzQ1MxMjBLSFpvbmVULVNDUzYwS0ha
aGFsZlQtU0NTMzBLSFpxdWFydGVyVC1TQ1MxNUtIWm9uZUVpZ2h0aFQ+CiAgICAgICAgICAg
ICAgICAgICAgICAgIDxJTlRFR0VSPjA8L0lOVEVHRVI+CiAgICAgICAgICAgICAgICAgICAg
PC9zQ1MxMjBLSFpvbmVULVNDUzYwS0haaGFsZlQtU0NTMzBLSFpxdWFydGVyVC1TQ1MxNUtI
Wm9uZUVpZ2h0aFQ+CiAgICAgICAgICAgICAgICA8L2ZpcnN0UERDQ0gtTW9uaXRvcmluZ09j
Y2FzaW9uT2ZQTz4KICAgICAgICAgICAgPC9wY2NoLUNvbmZpZz4KICAgICAgICA8L2Rvd25s
aW5rQ29uZmlnQ29tbW9uPgogICAgICAgIDx1cGxpbmtDb25maWdDb21tb24+CiAgICAgICAg
ICAgIDxmcmVxdWVuY3lJbmZvVUw+CiAgICAgICAgICAgICAgICA8c2NzLVNwZWNpZmljQ2Fy
cmllckxpc3Q+CiAgICAgICAgICAgICAgICAgICAgPFNDUy1TcGVjaWZpY0NhcnJpZXI+CiAg
ICAgICAgICAgICAgICAgICAgICAgIDxvZmZzZXRUb0NhcnJpZXI+MDwvb2Zmc2V0VG9DYXJy
aWVyPgogICAgICAgICAgICAgICAgICAgICAgICA8c3ViY2FycmllclNwYWNpbmc+PGtIejMw
Lz48L3N1YmNhcnJpZXJTcGFjaW5nPgogICAgICAgICAgICAgICAgICAgICAgICA8Y2Fycmll
ckJhbmR3aWR0aD4xMDY8L2NhcnJpZXJCYW5kd2lkdGg+CiAgICAgICAgICAgICAgICAgICAg
PC9TQ1MtU3BlY2lmaWNDYXJyaWVyPgogICAgICAgICAgICAgICAgPC9zY3MtU3BlY2lmaWND
YXJyaWVyTGlzdD4KICAgICAgICAgICAgICAgIDxwLU1heD4yMzwvcC1NYXg+CiAgICAgICAg
ICAgIDwvZnJlcXVlbmN5SW5mb1VMPgogICAgICAgICAgICA8aW5pdGlhbFVwbGlua0JXUD4K
ICAgICAgICAgICAgICAgIDxnZW5lcmljUGFyYW1ldGVycz4KICAgICAgICAgICAgICAgICAg
ICA8bG9jYXRpb25BbmRCYW5kd2lkdGg+NjM2ODwvbG9jYXRpb25BbmRCYW5kd2lkdGg+CiAg
ICAgICAgICAgICAgICAgICAgPHN1YmNhcnJpZXJTcGFjaW5nPjxrSHozMC8+PC9zdWJjYXJy
aWVyU3BhY2luZz4KICAgICAgICAgICAgICAgIDwvZ2VuZXJpY1BhcmFtZXRlcnM+CiAgICAg
ICAgICAgICAgICA8cmFjaC1Db25maWdDb21tb24+CiAgICAgICAgICAgICAgICAgICAgPHNl
dHVwPgogICAgICAgICAgICAgICAgICAgICAgICA8cmFjaC1Db25maWdHZW5lcmljPgogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgPHByYWNoLUNvbmZpZ3VyYXRpb25JbmRleD45ODwv
cHJhY2gtQ29uZmlndXJhdGlvbkluZGV4PgogICAgICAgICAgICAgICAgICAgICAgICAgICAg
PG1zZzEtRkRNPjxvbmUvPjwvbXNnMS1GRE0+CiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICA8bXNnMS1GcmVxdWVuY3lTdGFydD4wPC9tc2cxLUZyZXF1ZW5jeVN0YXJ0PgogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgPHplcm9Db3JyZWxhdGlvblpvbmVDb25maWc+MTM8L3pl
cm9Db3JyZWxhdGlvblpvbmVDb25maWc+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8
cHJlYW1ibGVSZWNlaXZlZFRhcmdldFBvd2VyPi0xMTg8L3ByZWFtYmxlUmVjZWl2ZWRUYXJn
ZXRQb3dlcj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwcmVhbWJsZVRyYW5zTWF4
PjxuMTAvPjwvcHJlYW1ibGVUcmFuc01heD4KICAgICAgICAgICAgICAgICAgICAgICAgICAg
IDxwb3dlclJhbXBpbmdTdGVwPjxkQjIvPjwvcG93ZXJSYW1waW5nU3RlcD4KICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDxyYS1SZXNwb25zZVdpbmRvdz48c2wxMC8+PC9yYS1SZXNw
b25zZVdpbmRvdz4KICAgICAgICAgICAgICAgICAgICAgICAgPC9yYWNoLUNvbmZpZ0dlbmVy
aWM+CiAgICAgICAgICAgICAgICAgICAgICAgIDxzc2ItcGVyUkFDSC1PY2Nhc2lvbkFuZENC
LVByZWFtYmxlc1BlclNTQj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxvbmU+PG42
NC8+PC9vbmU+CiAgICAgICAgICAgICAgICAgICAgICAgIDwvc3NiLXBlclJBQ0gtT2NjYXNp
b25BbmRDQi1QcmVhbWJsZXNQZXJTU0I+CiAgICAgICAgICAgICAgICAgICAgICAgIDxyYS1D
b250ZW50aW9uUmVzb2x1dGlvblRpbWVyPjxzZjY0Lz48L3JhLUNvbnRlbnRpb25SZXNvbHV0
aW9uVGltZXI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxyc3JwLVRocmVzaG9sZFNTQj4x
OTwvcnNycC1UaHJlc2hvbGRTU0I+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwcmFjaC1S
b290U2VxdWVuY2VJbmRleD4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxsMTM5PjE8
L2wxMzk+CiAgICAgICAgICAgICAgICAgICAgICAgIDwvcHJhY2gtUm9vdFNlcXVlbmNlSW5k
ZXg+CiAgICAgICAgICAgICAgICAgICAgICAgIDxtc2cxLVN1YmNhcnJpZXJTcGFjaW5nPjxr
SHozMC8+PC9tc2cxLVN1YmNhcnJpZXJTcGFjaW5nPgogICAgICAgICAgICAgICAgICAgICAg
ICA8cmVzdHJpY3RlZFNldENvbmZpZz48dW5yZXN0cmljdGVkU2V0Lz48L3Jlc3RyaWN0ZWRT
ZXRDb25maWc+CiAgICAgICAgICAgICAgICAgICAgPC9zZXR1cD4KICAgICAgICAgICAgICAg
IDwvcmFjaC1Db25maWdDb21tb24+CiAgICAgICAgICAgICAgICA8cHVzY2gtQ29uZmlnQ29t
bW9uPgogICAgICAgICAgICAgICAgICAgIDxzZXR1cD4KICAgICAgICAgICAgICAgICAgICAg
ICAgPHB1c2NoLVRpbWVEb21haW5BbGxvY2F0aW9uTGlzdD4KICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDxQVVNDSC1UaW1lRG9tYWluUmVzb3VyY2VBbGxvY2F0aW9uPgogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIDxrMj42PC9rMj4KICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICA8bWFwcGluZ1R5cGU+PHR5cGVCLz48L21hcHBpbmdUeXBlPgogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxzdGFydFN5bWJvbEFuZExlbmd0aD40MTwv
c3RhcnRTeW1ib2xBbmRMZW5ndGg+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L1BV
U0NILVRpbWVEb21haW5SZXNvdXJjZUFsbG9jYXRpb24+CiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICA8UFVTQ0gtVGltZURvbWFpblJlc291cmNlQWxsb2NhdGlvbj4KICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICA8azI+NjwvazI+CiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgPG1hcHBpbmdUeXBlPjx0eXBlQi8+PC9tYXBwaW5nVHlwZT4KICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICA8c3RhcnRTeW1ib2xBbmRMZW5ndGg+Mzg8L3N0
YXJ0U3ltYm9sQW5kTGVuZ3RoPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9QVVND
SC1UaW1lRG9tYWluUmVzb3VyY2VBbGxvY2F0aW9uPgogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgPFBVU0NILVRpbWVEb21haW5SZXNvdXJjZUFsbG9jYXRpb24+CiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgPGsyPjc8L2syPgogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDxtYXBwaW5nVHlwZT48dHlwZUIvPjwvbWFwcGluZ1R5cGU+CiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgPHN0YXJ0U3ltYm9sQW5kTGVuZ3RoPjM4PC9zdGFy
dFN5bWJvbEFuZExlbmd0aD4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwvUFVTQ0gt
VGltZURvbWFpblJlc291cmNlQWxsb2NhdGlvbj4KICAgICAgICAgICAgICAgICAgICAgICAg
PC9wdXNjaC1UaW1lRG9tYWluQWxsb2NhdGlvbkxpc3Q+CiAgICAgICAgICAgICAgICAgICAg
ICAgIDxtc2czLURlbHRhUHJlYW1ibGU+MTwvbXNnMy1EZWx0YVByZWFtYmxlPgogICAgICAg
ICAgICAgICAgICAgICAgICA8cDAtTm9taW5hbFdpdGhHcmFudD4tOTA8L3AwLU5vbWluYWxX
aXRoR3JhbnQ+CiAgICAgICAgICAgICAgICAgICAgPC9zZXR1cD4KICAgICAgICAgICAgICAg
IDwvcHVzY2gtQ29uZmlnQ29tbW9uPgogICAgICAgICAgICAgICAgPHB1Y2NoLUNvbmZpZ0Nv
bW1vbj4KICAgICAgICAgICAgICAgICAgICA8c2V0dXA+CiAgICAgICAgICAgICAgICAgICAg
ICAgIDxwdWNjaC1SZXNvdXJjZUNvbW1vbj4wPC9wdWNjaC1SZXNvdXJjZUNvbW1vbj4KICAg
ICAgICAgICAgICAgICAgICAgICAgPHB1Y2NoLUdyb3VwSG9wcGluZz48bmVpdGhlci8+PC9w
dWNjaC1Hcm91cEhvcHBpbmc+CiAgICAgICAgICAgICAgICAgICAgICAgIDxob3BwaW5nSWQ+
NDA8L2hvcHBpbmdJZD4KICAgICAgICAgICAgICAgICAgICAgICAgPHAwLW5vbWluYWw+LTkw
PC9wMC1ub21pbmFsPgogICAgICAgICAgICAgICAgICAgIDwvc2V0dXA+CiAgICAgICAgICAg
ICAgICA8L3B1Y2NoLUNvbmZpZ0NvbW1vbj4KICAgICAgICAgICAgPC9pbml0aWFsVXBsaW5r
QldQPgogICAgICAgICAgICA8dGltZUFsaWdubWVudFRpbWVyQ29tbW9uPjxpbmZpbml0eS8+
PC90aW1lQWxpZ25tZW50VGltZXJDb21tb24+CiAgICAgICAgPC91cGxpbmtDb25maWdDb21t
b24+CiAgICAgICAgPHNzYi1Qb3NpdGlvbnNJbkJ1cnN0PgogICAgICAgICAgICA8aW5PbmVH
cm91cD4KICAgICAgICAgICAgICAgIDEwMDAwMDAwCiAgICAgICAgICAgIDwvaW5PbmVHcm91
cD4KICAgICAgICA8L3NzYi1Qb3NpdGlvbnNJbkJ1cnN0PgogICAgICAgIDxzc2ItUGVyaW9k
aWNpdHlTZXJ2aW5nQ2VsbD48bXMyMC8+PC9zc2ItUGVyaW9kaWNpdHlTZXJ2aW5nQ2VsbD4K
ICAgICAgICA8dGRkLVVMLURMLUNvbmZpZ3VyYXRpb25Db21tb24+CiAgICAgICAgICAgIDxy
ZWZlcmVuY2VTdWJjYXJyaWVyU3BhY2luZz48a0h6MzAvPjwvcmVmZXJlbmNlU3ViY2Fycmll
clNwYWNpbmc+CiAgICAgICAgICAgIDxwYXR0ZXJuMT4KICAgICAgICAgICAgICAgIDxkbC1V
TC1UcmFuc21pc3Npb25QZXJpb2RpY2l0eT48bXM1Lz48L2RsLVVMLVRyYW5zbWlzc2lvblBl
cmlvZGljaXR5PgogICAgICAgICAgICAgICAgPG5yb2ZEb3dubGlua1Nsb3RzPjc8L25yb2ZE
b3dubGlua1Nsb3RzPgogICAgICAgICAgICAgICAgPG5yb2ZEb3dubGlua1N5bWJvbHM+Njwv
bnJvZkRvd25saW5rU3ltYm9scz4KICAgICAgICAgICAgICAgIDxucm9mVXBsaW5rU2xvdHM+
MjwvbnJvZlVwbGlua1Nsb3RzPgogICAgICAgICAgICAgICAgPG5yb2ZVcGxpbmtTeW1ib2xz
PjQ8L25yb2ZVcGxpbmtTeW1ib2xzPgogICAgICAgICAgICA8L3BhdHRlcm4xPgogICAgICAg
IDwvdGRkLVVMLURMLUNvbmZpZ3VyYXRpb25Db21tb24+CiAgICAgICAgPHNzLVBCQ0gtQmxv
Y2tQb3dlcj4tMjU8L3NzLVBCQ0gtQmxvY2tQb3dlcj4KICAgIDwvc2VydmluZ0NlbGxDb25m
aWdDb21tb24+CiAgICA8dWUtVGltZXJzQW5kQ29uc3RhbnRzPgogICAgICAgIDx0MzAwPjxt
czQwMC8+PC90MzAwPgogICAgICAgIDx0MzAxPjxtczQwMC8+PC90MzAxPgogICAgICAgIDx0
MzEwPjxtczIwMDAvPjwvdDMxMD4KICAgICAgICA8bjMxMD48bjEwLz48L24zMTA+CiAgICAg
ICAgPHQzMTE+PG1zMzAwMC8+PC90MzExPgogICAgICAgIDxuMzExPjxuMS8+PC9uMzExPgog
ICAgICAgIDx0MzE5PjxtczQwMC8+PC90MzE5PgogICAgPC91ZS1UaW1lcnNBbmRDb25zdGFu
dHM+CjwvU0lCMT4KW05SX1JSQ10gICBkb19TSUIyM19OUiwgc2l6ZSA5IAogG1swbVtOUl9S
UkNdICAgRG9uZSBpbml0X05SX1NJChtbMG1bTlJfTUFDXSAgIENvbmZpZ3VyaW5nIGNvbW1v
biBwYXJhbWV0ZXJzIGZyb20gTlIgU2VydmluZ0NlbGxDb25maWcKG1swbVtOUl9NQUNdICAg
Y29uZmlnX2NvbW1vbigpIGRsX0JhbmR3aWR0aFA6NDAKG1swbVtOUl9NQUNdICAgTlIgYmFu
ZCBkdXBsZXggc3BhY2luZyBpcyAwIEtIeiAobnJfYmFuZHRhYmxlWzM3XS5iYW5kID0gNzgp
ChtbMG1bTlJfTUFDXSAgIENvbXB1dGluZyBmcmVxdWVuY3kgKHBvaW50QSA2NDAwMDAgPT4g
MzYwMDAwMCBLSHogKGZyZXFfbWluIDMzMDAwMDAgS0h6LCBOUiBiYW5kIDc4IE5fT0ZGcyA2
MjAwMDApKQobWzBtW05SX01BQ10gICBjb25maWdfY29tbW9uKCkgZGxfQmFuZHdpZHRoUDo0
MAobWzBtW05SX01BQ10gICBOUiBiYW5kIGR1cGxleCBzcGFjaW5nIGlzIDAgS0h6IChucl9i
YW5kdGFibGVbMzddLmJhbmQgPSA3OCkKG1swbVtOUl9NQUNdICAgQ29tcHV0aW5nIGZyZXF1
ZW5jeSAocG9pbnRBIDY0MDAwMCA9PiAzNjAwMDAwIEtIeiAoZnJlcV9taW4gMzMwMDAwMCBL
SHosIE5SIGJhbmQgNzggTl9PRkZzIDYyMDAwMCkpChtbMG1bTlJfTUFDXSAgIE5SIGJhbmQg
ZHVwbGV4IHNwYWNpbmcgaXMgMCBLSHogKG5yX2JhbmR0YWJsZVszN10uYmFuZCA9IDc4KQob
WzBtW05SX01BQ10gICBOUiBiYW5kIDc4LCBkdXBsZXggbW9kZSBUREQsIGR1cGxleCBzcGFj
aW5nID0gMCBLSHoKG1swbVtOUl9NQUNdICAgU2V0IFRYL1JYIGFudGVubmEgbnVtYmVyIHRv
IDEgKG51bSBzc2IgMTogODAwMDAwMDAsMCkKG1swbVtOUl9NQUNdICAgU2V0dGluZyBUREQg
Y29uZmlndXJhdGlvbiBwZXJpb2QgdG8gNgobWzBtW05SX01BQ10gICBUREQgaGFzIGJlZW4g
cHJvcGVybHkgY29uZmlndXJhdGVkChtbMG1bUEhZXSAgIERMIGZyZXF1ZW5jeSAzNjE5MDgw
MDAwIEh6LCBVTCBmcmVxdWVuY3kgMzYxOTA4MDAwMCBIejogYmFuZCA0OCwgdWxkbCBvZmZz
ZXQgMCBIegobWzBtG1szMm1bUEhZXSAgIENvbmZpZ3VyaW5nIE1JQiBmb3IgaW5zdGFuY2Ug
MCwgOiAoTmlkX2NlbGwgMCxETCBmcmVxIDM2MTkwODAwMDAsIFVMIGZyZXEgMzYxOTA4MDAw
MCkKG1swbVtQSFldICAgSW5pdGlhbGl6aW5nIGZyYW1lIHBhcm1zIGZvciBtdSAxLCBOX1JC
IDEwNiwgTmNwIDAKG1swbVtQSFldICAgSW5pdDogTl9SQl9ETCAxMDYsIGZpcnN0X2NhcnJp
ZXJfb2Zmc2V0IDE0MTIsIG5iX3ByZWZpeF9zYW1wbGVzIDE0NCxuYl9wcmVmaXhfc2FtcGxl
czAgMTc2ChtbMG1bUEhZXSAgIERvaW5nIHN5bWJvbCByb3RhdGlvbiBjYWxjdWxhdGlvbiBm
b3IgZ05CIFRYL1JYLCBmMCAzNjE5MDgwMDAwLjAwMDAwMCBIeiwgTnN5bWIgMjgKG1swbVtQ
SFldICAgU3ltYm9sIHJvdGF0aW9uIDAvMjggPT4gKDE4MjA0LC0yNzI0NSkKG1swbVtQSFld
ICAgU3ltYm9sIHJvdGF0aW9uIDEvMjggPT4gdGwgMC4wMDAwMzYgKC0yMzE3MCwtMjMxNzAp
ICgwLjM3NTAwMCkKG1swbVtQSFldICAgU3ltYm9sIHJvdGF0aW9uIDIvMjggPT4gdGwgMC4w
MDAwNzIgKC0yNzI0NSwxODIwNCkgKDAuNTkzNzUwKQobWzBtW1BIWV0gICBTeW1ib2wgcm90
YXRpb24gMy8yOCA9PiB0bCAwLjAwMDEwOCAoMTI1MzksMzAyNzIpICgwLjgxMjUwMCkKG1sw
bVtQSFldICAgU3ltYm9sIHJvdGF0aW9uIDQvMjggPT4gdGwgMC4wMDAxNDMgKDMyMTM3LC02
MzkzKSAoMC4wMzEyNTApChtbMG1bUEhZXSAgIFN5bWJvbCByb3RhdGlvbiA1LzI4ID0+IHRs
IDAuMDAwMTc5ICgtMSwtMzI3NjcpICgwLjI1MDAwMCkKG1swbVtQSFldICAgU3ltYm9sIHJv
dGF0aW9uIDYvMjggPT4gdGwgMC4wMDAyMTUgKC0zMjEzOCwtNjM5MykgKDAuNDY4NzUwKQob
WzBtW1BIWV0gICBTeW1ib2wgcm90YXRpb24gNy8yOCA9PiB0bCAwLjAwMDI1MCAoLTEyNTQw
LDMwMjcyKSAoMC42ODc1MDApChtbMG1bUEhZXSAgIFN5bWJvbCByb3RhdGlvbiA4LzI4ID0+
IHRsIDAuMDAwMjg2ICgyNzI0NCwxODIwNCkgKDAuOTA2MjUwKQobWzBtW1BIWV0gICBTeW1i
b2wgcm90YXRpb24gOS8yOCA9PiB0bCAwLjAwMDMyMiAoMjMxNjksLTIzMTcwKSAoMC4xMjUw
MDApChtbMG1bUEhZXSAgIFN5bWJvbCByb3RhdGlvbiAxMC8yOCA9PiB0bCAwLjAwMDM1NyAo
LTE4MjA1LC0yNzI0NSkgKDAuMzQzNzUwKQobWzBtW1BIWV0gICBTeW1ib2wgcm90YXRpb24g
MTEvMjggPT4gdGwgMC4wMDAzOTMgKC0zMDI3MywxMjUzOSkgKDAuNTYyNTAwKQobWzBtW1BI
WV0gICBTeW1ib2wgcm90YXRpb24gMTIvMjggPT4gdGwgMC4wMDA0MjkgKDYzOTIsMzIxMzcp
ICgwLjc4MTI1MCkKG1swbVtQSFldICAgU3ltYm9sIHJvdGF0aW9uIDEzLzI4ID0+IHRsIDAu
MDAwNDY0ICgzMjc2NywwKSAoMS4wMDAwMDApChtbMG1bUEhZXSAgIFN5bWJvbCByb3RhdGlv
biAxNC8yOCA9PiB0bCAwLjAwMDUwMCAoMTgyMDQsLTI3MjQ1KSAoMC4xNTYyNTApChtbMG1b
UEhZXSAgIFN5bWJvbCByb3RhdGlvbiAxNS8yOCA9PiB0bCAwLjAwMDUzNiAoLTIzMTcwLC0y
MzE3MCkgKDAuMzc1MDAwKQobWzBtW1BIWV0gICBTeW1ib2wgcm90YXRpb24gMTYvMjggPT4g
dGwgMC4wMDA1NzIgKC0yNzI0NSwxODIwNCkgKDAuNTkzNzUwKQobWzBtW1BIWV0gICBTeW1i
b2wgcm90YXRpb24gMTcvMjggPT4gdGwgMC4wMDA2MDggKDEyNTM5LDMwMjcyKSAoMC44MTI1
MDApChtbMG1bUEhZXSAgIFN5bWJvbCByb3RhdGlvbiAxOC8yOCA9PiB0bCAwLjAwMDY0MyAo
MzIxMzcsLTYzOTMpICgwLjAzMTI1MCkKG1swbVtQSFldICAgU3ltYm9sIHJvdGF0aW9uIDE5
LzI4ID0+IHRsIDAuMDAwNjc5ICgwLC0zMjc2NykgKDAuMjUwMDAwKQobWzBtW1BIWV0gICBT
eW1ib2wgcm90YXRpb24gMjAvMjggPT4gdGwgMC4wMDA3MTUgKC0zMjEzOCwtNjM5MykgKDAu
NDY4NzUwKQobWzBtW1BIWV0gICBTeW1ib2wgcm90YXRpb24gMjEvMjggPT4gdGwgMC4wMDA3
NTAgKC0xMjU0MCwzMDI3MikgKDAuNjg3NTAwKQobWzBtW1BIWV0gICBTeW1ib2wgcm90YXRp
b24gMjIvMjggPT4gdGwgMC4wMDA3ODYgKDI3MjQ0LDE4MjA0KSAoMC45MDYyNTApChtbMG1b
UEhZXSAgIFN5bWJvbCByb3RhdGlvbiAyMy8yOCA9PiB0bCAwLjAwMDgyMiAoMjMxNjksLTIz
MTcwKSAoMC4xMjUwMDApChtbMG1bUEhZXSAgIFN5bWJvbCByb3RhdGlvbiAyNC8yOCA9PiB0
bCAwLjAwMDg1NyAoLTE4MjA1LC0yNzI0NSkgKDAuMzQzNzUwKQobWzBtW1BIWV0gICBTeW1i
b2wgcm90YXRpb24gMjUvMjggPT4gdGwgMC4wMDA4OTMgKC0zMDI3MywxMjUzOSkgKDAuNTYy
NTAwKQobWzBtW1BIWV0gICBTeW1ib2wgcm90YXRpb24gMjYvMjggPT4gdGwgMC4wMDA5Mjkg
KDYzOTIsMzIxMzcpICgwLjc4MTI1MCkKG1swbVtQSFldICAgU3ltYm9sIHJvdGF0aW9uIDI3
LzI4ID0+IHRsIDAuMDAwOTY0ICgzMjc2NiwwKSAoMS4wMDAwMDApChtbMG1bUEhZXSAgIERv
aW5nIHN5bWJvbCByb3RhdGlvbiBjYWxjdWxhdGlvbiBmb3IgZ05CIFRYL1JYLCBmMCAzNjE5
MDgwMDAwLjAwMDAwMCBIeiwgTnN5bWIgMjgKG1swbVtQSFldICAgU3ltYm9sIHJvdGF0aW9u
IDAvMjggPT4gKDE4MjA0LC0yNzI0NSkKG1swbVtQSFldICAgU3ltYm9sIHJvdGF0aW9uIDEv
MjggPT4gdGwgMC4wMDAwMzYgKC0yMzE3MCwtMjMxNzApICgwLjM3NTAwMCkKG1swbVtQSFld
ICAgU3ltYm9sIHJvdGF0aW9uIDIvMjggPT4gdGwgMC4wMDAwNzIgKC0yNzI0NSwxODIwNCkg
KDAuNTkzNzUwKQobWzBtW1BIWV0gICBTeW1ib2wgcm90YXRpb24gMy8yOCA9PiB0bCAwLjAw
MDEwOCAoMTI1MzksMzAyNzIpICgwLjgxMjUwMCkKG1swbVtQSFldICAgU3ltYm9sIHJvdGF0
aW9uIDQvMjggPT4gdGwgMC4wMDAxNDMgKDMyMTM3LC02MzkzKSAoMC4wMzEyNTApChtbMG1b
UEhZXSAgIFN5bWJvbCByb3RhdGlvbiA1LzI4ID0+IHRsIDAuMDAwMTc5ICgtMSwtMzI3Njcp
ICgwLjI1MDAwMCkKG1swbVtQSFldICAgU3ltYm9sIHJvdGF0aW9uIDYvMjggPT4gdGwgMC4w
MDAyMTUgKC0zMjEzOCwtNjM5MykgKDAuNDY4NzUwKQobWzBtW1BIWV0gICBTeW1ib2wgcm90
YXRpb24gNy8yOCA9PiB0bCAwLjAwMDI1MCAoLTEyNTQwLDMwMjcyKSAoMC42ODc1MDApChtb
MG1bUEhZXSAgIFN5bWJvbCByb3RhdGlvbiA4LzI4ID0+IHRsIDAuMDAwMjg2ICgyNzI0NCwx
ODIwNCkgKDAuOTA2MjUwKQobWzBtW1BIWV0gICBTeW1ib2wgcm90YXRpb24gOS8yOCA9PiB0
bCAwLjAwMDMyMiAoMjMxNjksLTIzMTcwKSAoMC4xMjUwMDApChtbMG1bUEhZXSAgIEluaXRp
YWxpemluZyBnTkIgMCBzaW5nbGVfdGhyZWFkX2ZsYWc6MQobWzBtW1BIWV0gICBTeW1ib2wg
cm90YXRpb24gMTAvMjggPT4gdGwgMC4wMDAzNTcgKC0xODIwNSwtMjcyNDUpICgwLjM0Mzc1
MCkKG1swbVtQSFldICAgSW5pdGlhbGl6aW5nIGdOQiAwChtbMG1bUEhZXSAgIFN5bWJvbCBy
b3RhdGlvbiAxMS8yOCA9PiB0bCAwLjAwMDM5MyAoLTMwMjczLDEyNTM5KSAoMC41NjI1MDAp
ChtbMG1bUEhZXSAgIFJlZ2lzdGVyaW5nIHdpdGggTUFDIGludGVyZmFjZSBtb2R1bGUgKGJl
Zm9yZSAweDU1YThiZWYzMTUxMCkKG1swbVtQSFldICAgU3ltYm9sIHJvdGF0aW9uIDEyLzI4
ID0+IHRsIDAuMDAwNDI5ICg2MzkyLDMyMTM3KSAoMC43ODEyNTApChtbMG1bUEhZXSAgIElu
c3RhbGxpbmcgY2FsbGJhY2tzIGZvciBJRl9Nb2R1bGUgLSBVTF9pbmRpY2F0aW9uChtbMG1b
UEhZXSAgIFN5bWJvbCByb3RhdGlvbiAxMy8yOCA9PiB0bCAwLjAwMDQ2NCAoMzI3NjcsMCkg
KDEuMDAwMDAwKQobWzBtW1BIWV0gICBSZWdpc3RlcmluZyB3aXRoIE1BQyBpbnRlcmZhY2Ug
bW9kdWxlIChhZnRlciAweDU1YThiZWYzMTUxMCkKG1swbVtQSFldICAgU3ltYm9sIHJvdGF0
aW9uIDE0LzI4ID0+IHRsIDAuMDAwNTAwICgxODIwNCwtMjcyNDUpICgwLjE1NjI1MCkKG1sw
bVtQSFldICAgU2V0dGluZyBpbmRpY2F0aW9uIGxpc3RzChtbMG1bUEhZXSAgIFN5bWJvbCBy
b3RhdGlvbiAxNS8yOCA9PiB0bCAwLjAwMDUzNiAoLTIzMTcwLC0yMzE3MCkgKDAuMzc1MDAw
KQobWzBtW1BIWV0gICBbbnItZ25iLmNdIGdOQiBzdHJ1Y3R1cmUgYWxsb2NhdGVkChtbMG1b
UEhZXSAgIFN5bWJvbCByb3RhdGlvbiAxNi8yOCA9PiB0bCAwLjAwMDU3MiAoLTI3MjQ1LDE4
MjA0KSAoMC41OTM3NTApChtbMG1bUEhZXSAgIFN5bWJvbCByb3RhdGlvbiAxNy8yOCA9PiB0
bCAwLjAwMDYwOCAoMTI1MzksMzAyNzIpICgwLjgxMjUwMCkKG1swbVtQSFldICAgU3ltYm9s
IHJvdGF0aW9uIDE4LzI4ID0+IHRsIDAuMDAwNjQzICgzMjEzNywtNjM5MykgKDAuMDMxMjUw
KQobWzBtW1BIWV0gICBTeW1ib2wgcm90YXRpb24gMTkvMjggPT4gdGwgMC4wMDA2NzkgKDAs
LTMyNzY3KSAoMC4yNTAwMDApChtbMG1bUEhZXSAgIFN5bWJvbCByb3RhdGlvbiAyMC8yOCA9
PiB0bCAwLjAwMDcxNSAoLTMyMTM4LC02MzkzKSAoMC40Njg3NTApChtbMG1bUEhZXSAgIFN5
bWJvbCByb3RhdGlvbiAyMS8yOCA9PiB0bCAwLjAwMDc1MCAoLTEyNTQwLDMwMjcyKSAoMC42
ODc1MDApChtbMG1bUEhZXSAgIFN5bWJvbCByb3RhdGlvbiAyMi8yOCA9PiB0bCAwLjAwMDc4
NiAoMjcyNDQsMTgyMDQpICgwLjkwNjI1MCkKG1swbVtQSFldICAgU3ltYm9sIHJvdGF0aW9u
IDIzLzI4ID0+IHRsIDAuMDAwODIyICgyMzE2OSwtMjMxNzApICgwLjEyNTAwMCkKG1swbVtQ
SFldICAgU3ltYm9sIHJvdGF0aW9uIDI0LzI4ID0+IHRsIDAuMDAwODU3ICgtMTgyMDUsLTI3
MjQ1KSAoMC4zNDM3NTApChtbMG1bUEhZXSAgIFN5bWJvbCByb3RhdGlvbiAyNS8yOCA9PiB0
bCAwLjAwMDg5MyAoLTMwMjczLDEyNTM5KSAoMC41NjI1MDApChtbMG1bUEhZXSAgIFN5bWJv
bCByb3RhdGlvbiAyNi8yOCA9PiB0bCAwLjAwMDkyOSAoNjM5MiwzMjEzNykgKDAuNzgxMjUw
KQobWzBtW1BIWV0gICBTeW1ib2wgcm90YXRpb24gMjcvMjggPT4gdGwgMC4wMDA5NjQgKDMy
NzY2LDApICgxLjAwMDAwMCkKG1swbVtQSFldICAgVGltZXNoaWZ0IHN5bWJvbCByb3RhdGlv
biAwID0+ICgzMjc2NywwKSAwLjAwMDAwMAobWzBtW1BIWV0gICBUaW1lc2hpZnQgc3ltYm9s
IHJvdGF0aW9uIDEgPT4gKDMyNzE3LDE4MDkpIC0wLjA1NTIyMwobWzBtW1BIWV0gICBUaW1l
c2hpZnQgc3ltYm9sIHJvdGF0aW9uIDIgPT4gKDMyNTY3LDM2MTIpIC0wLjExMDQ0NwobWzBt
W1BIWV0gICBUaW1lc2hpZnQgc3ltYm9sIHJvdGF0aW9uIDMgPT4gKDMyMzE4LDU0MDQpIC0w
LjE2NTY3MAobWzBtW1BIWV0gICBUaW1lc2hpZnQgc3ltYm9sIHJvdGF0aW9uIDQgPT4gKDMx
OTcxLDcxNzkpIC0wLjIyMDg5MwobWzBtW1BIWV0gICBUaW1lc2hpZnQgc3ltYm9sIHJvdGF0
aW9uIDUgPT4gKDMxNTI2LDg5MzMpIC0wLjI3NjExNwobWzBtW1BIWV0gICBUaW1lc2hpZnQg
c3ltYm9sIHJvdGF0aW9uIDYgPT4gKDMwOTg1LDEwNjU5KSAtMC4zMzEzNDAKG1swbVtQSFld
ICAgVGltZXNoaWZ0IHN5bWJvbCByb3RhdGlvbiA3ID0+ICgzMDM0OSwxMjM1MykgLTAuMzg2
NTYzChtbMG1bUEhZXSAgIFRpbWVzaGlmdCBzeW1ib2wgcm90YXRpb24gOCA9PiAoMjk2MjEs
MTQwMTApIC0wLjQ0MTc4NgobWzBtW1BIWV0gICBUaW1lc2hpZnQgc3ltYm9sIHJvdGF0aW9u
IDkgPT4gKDI4ODAzLDE1NjIzKSAtMC40OTcwMTAKG1swbVtQSFldICAgZ05CIDAgY29uZmln
dXJlZAobWzBtW05SX01BQ10gICBUb3RhbCBhdmFpbGFibGUgUk8gMywgbnVtIG9mIGFjdGl2
ZSBTU0IgMTogdW51c2VkIFJPID0gMCBhc3NvY2lhdGlvbl9wZXJpb2QgMSBOX1JBX3NmbiAx
IHRvdGFsX3ByYWNoX29jY2FzaW9uc19wZXJfY29uZmlnX3BlcmlvZCAzChtbMG1bTlJfUlJD
XSAgIFtGUkFNRSAwMDAwMF1bZ05CXVtNT0QgMDBdW1JOVEkgMF0gZ05COk9QRU5BSVIgTlIg
UlJDIElOLi4uLgobWzBtW1BIWV0gICBSVSBjbG9jayBzb3VyY2Ugc2V0IGFzIGludGVybmFs
ChtbMG1bUEhZXSAgIFNldHRpbmcgdGltZSBzb3VyY2UgdG8gaW50ZXJuYWwKG1swbVtQSFld
ICAgbnVtYmVyIG9mIEwxIGluc3RhbmNlcyAxLCBudW1iZXIgb2YgUlUgMSwgbnVtYmVyIG9m
IENQVSBjb3JlcyA1NgobWzBtG1sxOzMxbVtQSFldICAgREpQIC0gZGVsZXRlIGNvZGUgYWJv
dmUgdGhpcyAvaG9tZS9naXVzZXBwZV9zYW50YXJvbWl0YS9vcGVuYWlyaW50ZXJmYWNlNWcv
ZXhlY3V0YWJsZXMvbnItcnUuYzoxOTMyChtbMG1bUEhZXSAgIENvcHlpbmcgZnJhbWUgcGFy
bXMgZnJvbSBnTkIgaW4gUkMgdG8gZ05CIDAgaW4gcnUgMCBhbmQgZnJhbWVfcGFybXMgaW4g
cnUKG1swbVtQSFldICAgU3RhcnRpbmcgcnVfdGhyZWFkIDAKG1swbVtQSFldICAgSW5pdGlh
bGl6aW5nIFJVIHByb2MgMCAoLHN5bmNoX3RvX2V4dF9kZXZpY2UpLAobWzBtW1BIWV0gICBT
dGFydGluZyBSVSAwICgsc3luY2hfdG9fZXh0X2RldmljZSksChtbMG1bUEhZXSAgIEluaXRp
YWxpemluZyBmcmFtZSBwYXJtcyBmb3IgbXUgMSwgTl9SQiAxMDYsIE5jcCAwChtbMG1bUEhZ
XSAgIEluaXQ6IE5fUkJfREwgMTA2LCBmaXJzdF9jYXJyaWVyX29mZnNldCAxNDEyLCBuYl9w
cmVmaXhfc2FtcGxlcyAxNDQsbmJfcHJlZml4X3NhbXBsZXMwIDE3NgobWzBtW1BIWV0gICBm
cC0+c2NzPTMwMDAwChtbMG1bUEhZXSAgIGZwLT5vZmRtX3N5bWJvbF9zaXplPTIwNDgKG1sw
bVtQSFldICAgZnAtPm5iX3ByZWZpeF9zYW1wbGVzMD0xNzYKG1swbVtQSFldICAgZnAtPm5i
X3ByZWZpeF9zYW1wbGVzPTE0NAobWzBtW1BIWV0gICBmcC0+c2xvdHNfcGVyX3N1YmZyYW1l
PTIKG1swbVtQSFldICAgZnAtPnNhbXBsZXNfcGVyX3N1YmZyYW1lX3dDUD01NzM0NAobWzBt
W1BIWV0gICBmcC0+c2FtcGxlc19wZXJfZnJhbWVfd0NQPTU3MzQ0MAobWzBtW1BIWV0gICBm
cC0+c2FtcGxlc19wZXJfc3ViZnJhbWU9NjE0NDAKG1swbVtQSFldICAgZnAtPnNhbXBsZXNf
cGVyX2ZyYW1lPTYxNDQwMAobWzBtW1BIWV0gICBmcC0+ZGxfQ2FycmllckZyZXE9MzYxOTA4
MDAwMAobWzBtW1BIWV0gICBmcC0+dWxfQ2FycmllckZyZXE9MzYxOTA4MDAwMAobWzBtW1BI
WV0gICBDaGFubmVsIDA6IHNldHRpbmcgdHhfZ2FpbiBvZmZzZXQgMC4wMDAwMDAsIHJ4X2dh
aW4gb2Zmc2V0IDUwLjAwMDAwMCwgdHhfZnJlcSAzNjE5MDgwMDAwIEh6LCByeF9mcmVxIDM2
MTkwODAwMDAgSHoKG1swbVtQSFldICAgSW5pdGlhbGl6aW5nIFJVIHNpZ25hbCBidWZmZXJz
IChpZl9zb3V0aCBsb2NhbCBSRikgbmJfdHggMQobWzBtW1BIWV0gICBbSU5JVF0gY29tbW9u
LnR4ZGF0YVswXSA9IDB4N2Y1ZjU0NTQzMDQwICgyNDU4ODgwIGJ5dGVzLHNmX2V4dGVuc2lv
biAzMjApChtbMG1bUEhZXSAgIFtJTklUXSBjb21tb24udHhkYXRhWzBdID0gMHg3ZjVmNTQ1
NDM1NDAgChtbMG1bUEhZXSAgIG5iX3R4IDEKG1swbVtQSFldICAgcnhkYXRhXzdfNWtIelsw
XSAweDdmNWY1NDFmOTA0MCBmb3IgUlUgMAobWzBtW1BIWV0gICBbSU5JVF0gY29tbW9uLnR4
ZGF0YV9CRj0gMHg3ZjVmM2MwMDBiMDAgKDggYnl0ZXMpChtbMG1bUEhZXSAgIHR4ZGF0YUZf
QkZbMF0gMHg3ZjVmNTQxYzAwNDAgZm9yIFJVIDAKG1swbVtQSFldICAgcnhkYXRhRlswXSAw
eDdmNWY1NDE0ZjA0MCBmb3IgUlUgMAobWzBtW1BIWV0gICBpbml0IGZlcHR4IHRocmVhZCAw
ChtbMG1bUEhZXSAgIFtJTklUXSBucl9waHlfaW5pdF9SVSgpIHJ1LT5udW1fZ05COjEgChtb
MG1bUEhZXSAgIGluaXQgZmVwdHggdGhyZWFkIDEKG1swbVtQSFldICAgV2FpdGluZyBmb3Ig
UlVzIHRvIGJlIGNvbmZpZ3VyZWQgLi4uIFJDLnJ1X21hc2s6MDEKG1swbVtIV10gICBvcGVu
YWlyMF9jZmdbMF0uc2RyX2FkZHJzID09ICdhZGRyPTE5Mi4xNjguMTAuMixtZ210X2FkZHI9
MTkyLjE2OC4xMC4yJwobWzBtW0hXXSAgIG9wZW5haXIwX2NmZ1swXS5jbG9ja19zb3VyY2Ug
PT0gJzAnIChpbnRlcm5hbCA9IDAsIGV4dGVybmFsID0gMSkKG1swbVtIV10gICBVSEQgdmVy
c2lvbiA0LjIuMC5naXQtMzY2LWdjZGNkMzlhZSAoNC4yLjApChtbMG1bSFddICAgQ2hlY2tp
bmcgZm9yIFVTUlAgd2l0aCBhcmdzIGFkZHI9MTkyLjE2OC4xMC4yLG1nbXRfYWRkcj0xOTIu
MTY4LjEwLjIKG1swbVtIV10gICBGb3VuZCBVU1JQIG4zeHgKG1swbVtIV10gICBTZXR0aW5n
IGNsb2NrIHNvdXJjZSB0byBpbnRlcm5hbAobWzBtW0hXXSAgIFNldHRpbmcgdGltZSBzb3Vy
Y2UgdG8gaW50ZXJuYWwKG1swbURMIGZyZXF1ZW5jeSAzNjE5MDgwMDAwOiBiYW5kIDQ4LCBV
TCBmcmVxdWVuY3kgMzYxOTA4MDAwMApORkFQSSBNT0RFOk1PTk9MSVRISUMKU1RBUlQgTUFJ
TiBUSFJFQURTClJDLm5iX25yX0wxX2luc3Q6MQpJbml0aWFsaXppbmcgZ05CIHRocmVhZHMg
c2luZ2xlX3RocmVhZF9mbGFnOjEgd2FpdF9mb3Jfc3luYzowCndhaXRfZ05CcygpCldhaXRp
bmcgZm9yIGdOQiBMMSBpbnN0YW5jZXMgdG8gYWxsIGdldCBjb25maWd1cmVkIC4uLiBzbGVl
cGluZyA1MG1zIChuYl9ucl9zTDFfaW5zdCAxKQpnTkIgTDEgYXJlIGNvbmZpZ3VyZWQKQWJv
dXQgdG8gSW5pdCBSVSB0aHJlYWRzIFJDLm5iX1JVOjEKSW5pdGlhbGl6aW5nIFJVIHRocmVh
ZHMKY29uZmlndXJpbmcgUlUgZnJvbSBmaWxlCltMSUJDT05GSUddIFJVcy5bMF06IDI5LzI5
IHBhcmFtZXRlcnMgc3VjY2Vzc2Z1bGx5IHNldCwgKDE3IHRvIGRlZmF1bHQgdmFsdWUpClNl
dCBSVSBtYXNrIHRvIDEKQ3JlYXRpbmcgUkMucnVbMF06MHg1NWE4YmVmMzM3MzAKU2V0dGlu
ZyBmdW5jdGlvbiBmb3IgUlUgMCB0byBnTm9kZUJfM0dQUApjb25maWd1cmluZyBydV9pZCAw
IChzdGFydF9yZiAweDU1YThiYzdmNjA3MCkKW0xJQkNPTkZJR10gZGV2aWNlLnJlY3BsYXk6
IDcvNyBwYXJhbWV0ZXJzIHN1Y2Nlc3NmdWxseSBzZXQsICg3IHRvIGRlZmF1bHQgdmFsdWUp
CltMSUJDT05GSUddIGRldmljZTogMS8xIHBhcmFtZXRlcnMgc3VjY2Vzc2Z1bGx5IHNldCwg
KDEgdG8gZGVmYXVsdCB2YWx1ZSkKW0xJQkNPTkZJR10gbG9hZGVyOiAyLzIgcGFyYW1ldGVy
cyBzdWNjZXNzZnVsbHkgc2V0LCAoMiB0byBkZWZhdWx0IHZhbHVlKQpbTElCQ09ORklHXSBs
b2FkZXIub2FpX2RldmljZTogMi8yIHBhcmFtZXRlcnMgc3VjY2Vzc2Z1bGx5IHNldCwgKDEg
dG8gZGVmYXVsdCB2YWx1ZSkKd2FpdCBSVXMKW0xPQURFUl0gbGlicmFyeSBsaWJvYWlfZGV2
aWNlLnNvIHN1Y2Nlc3NmdWxseSBsb2FkZWQKRm91bmQgVVNSUCBuMzAwCltIV10gICBkZXZp
Y2VfaW5pdCgpIHNhbXBsZV9yYXRlOjYxNDQwMDAwChtbMG1bSFddICAgY2FsIDA6IGZyZXEg
MzUwMDAwMDAwMC4wMDAwMDAsIG9mZnNldCAwLjAwMDAwMCwgZGlmZiAxMTkwODAwMDAuMDAw
MDAwChtbMG1bSFddICAgY2FsIDE6IGZyZXEgMjY2MDAwMDAwMC4wMDAwMDAsIG9mZnNldCAw
LjAwMDAwMCwgZGlmZiA5NTkwODAwMDAuMDAwMDAwChtbMG1bSFddICAgY2FsIDI6IGZyZXEg
MjMwMDAwMDAwMC4wMDAwMDAsIG9mZnNldCAwLjAwMDAwMCwgZGlmZiAxMzE5MDgwMDAwLjAw
MDAwMAobWzBtW0hXXSAgIGNhbCAzOiBmcmVxIDE4ODAwMDAwMDAuMDAwMDAwLCBvZmZzZXQg
MC4wMDAwMDAsIGRpZmYgMTczOTA4MDAwMC4wMDAwMDAKG1swbVtIV10gICBjYWwgNDogZnJl
cSA4MTYwMDAwMDAuMDAwMDAwLCBvZmZzZXQgMC4wMDAwMDAsIGRpZmYgMjgwMzA4MDAwMC4w
MDAwMDAKG1swbVtIV10gICBSWCBHYWluIDAgNTAuMDAwMDAwICgwLjAwMDAwMCkgPT4gNTAu
MDAwMDAwIChtYXggNzUuMDAwMDAwKQobWzBtW0hXXSAgIFVTUlAgVFhfR0FJTjo2NS4wMCBn
YWluX3JhbmdlOjY1LjAwIHR4X2dhaW46MC4wMAobWzBtW0hXXSAgIEFjdHVhbCBtYXN0ZXIg
Y2xvY2s6IDEyMi44ODAwMDBNSHouLi4KG1swbVtIV10gICBBY3R1YWwgY2xvY2sgc291cmNl
IGludGVybmFsLi4uChtbMG1bSFddICAgQWN0dWFsIHRpbWUgc291cmNlIGludGVybmFsLi4u
ChtbMG1bSFddICAgUkYgYm9hcmQgbWF4IHBhY2tldCBzaXplIDM2NCwgc2l6ZSBmb3IgMTAw
wrVzIGppdHRlciA2MTQ0IAobWzBtW0hXXSAgIHJ4X21heF9udW1fc2FtcHMgMzY0ChtbMG1b
SFddICAgc2V0dGluZyByeCBjaGFubmVsIDAKG1swbVtIV10gICBSWCBDaGFubmVsIDAKG1sw
bVtIV10gICAgIEFjdHVhbCBSWCBzYW1wbGUgcmF0ZTogNjEuNDQwMDAwTVNwcy4uLgobWzBt
W0hXXSAgICAgQWN0dWFsIFJYIGZyZXF1ZW5jeTogMy42MTkwODBHSHouLi4KG1swbVtIV10g
ICAgIEFjdHVhbCBSWCBnYWluOiA1MC4wMDAwMDAuLi4KG1swbVtIV10gICAgIEFjdHVhbCBS
WCBiYW5kd2lkdGg6IDEwMC4wMDAwMDBNLi4uChtbMG1bSFddICAgICBBY3R1YWwgUlggYW50
ZW5uYTogUlgyLi4uChtbMG1bSFddICAgVFggQ2hhbm5lbCAwChtbMG1bSFddICAgICBBY3R1
YWwgVFggc2FtcGxlIHJhdGU6IDYxLjQ0MDAwME1TcHMuLi4KG1swbVtIV10gICAgIEFjdHVh
bCBUWCBmcmVxdWVuY3k6IDMuNjE5MDgwR0h6Li4uChtbMG1bSFddICAgICBBY3R1YWwgVFgg
Z2FpbjogNjUuMDAwMDAwLi4uChtbMG1bSFddICAgICBBY3R1YWwgVFggYmFuZHdpZHRoOiAx
MDAuMDAwMDAwTS4uLgobWzBtW0hXXSAgICAgQWN0dWFsIFRYIGFudGVubmE6IFRYL1JYLi4u
ChtbMG1bSFddICAgICBBY3R1YWwgVFggcGFja2V0IHNpemU6IDM2NAobWzBtW0hXXSAgIERl
dmljZSB0aW1lc3RhbXA6IDEuMzI0NDY1Li4uChtbMG1bSFddICAgW1JBVV0gaGFzIGxvYWRl
ZCBVU1JQIE4zMDAgZGV2aWNlLgobWzBtW1BIWV0gICBSVSAwIFNldHRpbmcgTl9UQV9vZmZz
ZXQgdG8gODAwIHNhbXBsZXMgKGZhY3RvciAyLjAwMDAwMCwgVUwgRnJlcSAzNjAwMDAwLCBO
X1JCIDEwNiwgbXUgMSkKG1swbVtQSFldICAgU2lnbmFsaW5nIG1haW4gdGhyZWFkIHRoYXQg
UlUgMCBpcyByZWFkeSwgc2ZfYWhlYWQgMwobWzBtW1BIWV0gICBSVXMgY29uZmlndXJlZAob
WzBtW1BIWV0gICBpbml0X2VOQl9hZnRlclJVKCkgUkMubmJfbnJfaW5zdDoxChtbMG1bUEhZ
XSAgIFJDLm5iX25yX0NDW2luc3Q6MF06MHg3ZjVmNTgxMGIwMTAKG1swbVtQSFldICAgW2dO
QiAwXSBwaHlfaW5pdF9ucl9nTkIoKSBBYm91dCB0byB3YWl0IGZvciBnTkIgdG8gYmUgY29u
ZmlndXJlZAobWzBtW1BIWV0gICBJbml0aWFsaXNlIG5yIHRyYW5zcG9ydAobWzBtW1BIWV0g
ICBBbGxvY2F0aW5nIFRyYW5zcG9ydCBDaGFubmVsIEJ1ZmZlcnMgZm9yIFBVQ0NIIDAvMTYK
G1swbVtQSFldICAgQWxsb2NhdGluZyBUcmFuc3BvcnQgQ2hhbm5lbCBCdWZmZXJzIGZvciBQ
VUNDSCAxLzE2ChtbMG1bUEhZXSAgIEFsbG9jYXRpbmcgVHJhbnNwb3J0IENoYW5uZWwgQnVm
ZmVycyBmb3IgUFVDQ0ggMi8xNgobWzBtW1BIWV0gICBBbGxvY2F0aW5nIFRyYW5zcG9ydCBD
aGFubmVsIEJ1ZmZlcnMgZm9yIFBVQ0NIIDMvMTYKG1swbVtQSFldICAgQWxsb2NhdGluZyBU
cmFuc3BvcnQgQ2hhbm5lbCBCdWZmZXJzIGZvciBQVUNDSCA0LzE2ChtbMG1bUEhZXSAgIEFs
bG9jYXRpbmcgVHJhbnNwb3J0IENoYW5uZWwgQnVmZmVycyBmb3IgUFVDQ0ggNS8xNgobWzBt
W1BIWV0gICBBbGxvY2F0aW5nIFRyYW5zcG9ydCBDaGFubmVsIEJ1ZmZlcnMgZm9yIFBVQ0NI
IDYvMTYKG1swbVtQSFldICAgQWxsb2NhdGluZyBUcmFuc3BvcnQgQ2hhbm5lbCBCdWZmZXJz
IGZvciBQVUNDSCA3LzE2ChtbMG1bUEhZXSAgIEFsbG9jYXRpbmcgVHJhbnNwb3J0IENoYW5u
ZWwgQnVmZmVycyBmb3IgUFVDQ0ggOC8xNgobWzBtW1BIWV0gICBBbGxvY2F0aW5nIFRyYW5z
cG9ydCBDaGFubmVsIEJ1ZmZlcnMgZm9yIFBVQ0NIIDkvMTYKG1swbVtQSFldICAgQWxsb2Nh
dGluZyBUcmFuc3BvcnQgQ2hhbm5lbCBCdWZmZXJzIGZvciBQVUNDSCAxMC8xNgobWzBtW1BI
WV0gICBBbGxvY2F0aW5nIFRyYW5zcG9ydCBDaGFubmVsIEJ1ZmZlcnMgZm9yIFBVQ0NIIDEx
LzE2ChtbMG1bUEhZXSAgIEFsbG9jYXRpbmcgVHJhbnNwb3J0IENoYW5uZWwgQnVmZmVycyBm
b3IgUFVDQ0ggMTIvMTYKG1swbVtQSFldICAgQWxsb2NhdGluZyBUcmFuc3BvcnQgQ2hhbm5l
bCBCdWZmZXJzIGZvciBQVUNDSCAxMy8xNgobWzBtW1BIWV0gICBBbGxvY2F0aW5nIFRyYW5z
cG9ydCBDaGFubmVsIEJ1ZmZlcnMgZm9yIFBVQ0NIIDE0LzE2ChtbMG1bUEhZXSAgIEFsbG9j
YXRpbmcgVHJhbnNwb3J0IENoYW5uZWwgQnVmZmVycyBmb3IgUFVDQ0ggMTUvMTYKG1swbVtQ
SFldICAgQWxsb2NhdGluZyBUcmFuc3BvcnQgQ2hhbm5lbCBCdWZmZXIgZm9yIFVMU0NIICAw
LzgKG1swbVtQSFldICAgQWxsb2NhdGluZyBUcmFuc3BvcnQgQ2hhbm5lbCBCdWZmZXIgZm9y
IFVMU0NIICAxLzgKG1swbVtQSFldICAgQWxsb2NhdGluZyBUcmFuc3BvcnQgQ2hhbm5lbCBC
dWZmZXIgZm9yIFVMU0NIICAyLzgKG1swbVtQSFldICAgQWxsb2NhdGluZyBUcmFuc3BvcnQg
Q2hhbm5lbCBCdWZmZXIgZm9yIFVMU0NIICAzLzgKG1swbVtQSFldICAgQWxsb2NhdGluZyBU
cmFuc3BvcnQgQ2hhbm5lbCBCdWZmZXIgZm9yIFVMU0NIICA0LzgKG1swbVtQSFldICAgQWxs
b2NhdGluZyBUcmFuc3BvcnQgQ2hhbm5lbCBCdWZmZXIgZm9yIFVMU0NIICA1LzgKG1swbVtQ
SFldICAgQWxsb2NhdGluZyBUcmFuc3BvcnQgQ2hhbm5lbCBCdWZmZXIgZm9yIFVMU0NIICA2
LzgKG1swbVtQSFldICAgQWxsb2NhdGluZyBUcmFuc3BvcnQgQ2hhbm5lbCBCdWZmZXIgZm9y
IFVMU0NIICA3LzgKG1swbVtQSFldICAgTWFwcGluZyBSWCBwb3J0cyBmcm9tIDEgUlVzIHRv
IGdOQiAwChtbMG1bUEhZXSAgIGdOQi0+bnVtX1JVOjEKG1swbVtQSFldICAgQXR0YWNoaW5n
IFJVIDAgYW50ZW5uYSAwIHRvIGdOQiBhbnRlbm5hIDAKG1swbVtQSFldICAgTnVtYmVyIG9m
IHRocmVhZHMgcmVxdWVzdGVkIGluIGNvbmZpZyBmaWxlOiA4LCBOdW1iZXIgb2YgdGhyZWFk
cyBhdmFpbGFibGUgb24gdGhpcyBtYWNoaW5lOiA1NgobWzBtW1BIWV0gICBBbGxvY2F0aW5n
IFRyYW5zcG9ydCBDaGFubmVsIEJ1ZmZlcnMgZm9yIERMU0NIIDAvOAobWzBtW1BIWV0gICBB
bGxvY2F0aW5nIFRyYW5zcG9ydCBDaGFubmVsIEJ1ZmZlcnMgZm9yIERMU0NIIDEvOAobWzBt
W1BIWV0gICBBbGxvY2F0aW5nIFRyYW5zcG9ydCBDaGFubmVsIEJ1ZmZlcnMgZm9yIERMU0NI
IDIvOAobWzBtW1BIWV0gICBBbGxvY2F0aW5nIFRyYW5zcG9ydCBDaGFubmVsIEJ1ZmZlcnMg
Zm9yIERMU0NIIDMvOAobWzBtW1BIWV0gICBBbGxvY2F0aW5nIFRyYW5zcG9ydCBDaGFubmVs
IEJ1ZmZlcnMgZm9yIERMU0NIIDQvOAobWzBtW1BIWV0gICBBbGxvY2F0aW5nIFRyYW5zcG9y
dCBDaGFubmVsIEJ1ZmZlcnMgZm9yIERMU0NIIDUvOAobWzBtW1BIWV0gICBBbGxvY2F0aW5n
IFRyYW5zcG9ydCBDaGFubmVsIEJ1ZmZlcnMgZm9yIERMU0NIIDYvOAobWzBtW1BIWV0gICBB
bGxvY2F0aW5nIFRyYW5zcG9ydCBDaGFubmVsIEJ1ZmZlcnMgZm9yIERMU0NIIDcvOAobWzBt
W1BIWV0gICBBbGxvY2F0aW5nIFRyYW5zcG9ydCBDaGFubmVsIEJ1ZmZlcnMgZm9yIERMU0NI
IDAvOAobWzBtW1BIWV0gICBBbGxvY2F0aW5nIFRyYW5zcG9ydCBDaGFubmVsIEJ1ZmZlcnMg
Zm9yIERMU0NIIDEvOAobWzBtW1BIWV0gICBBbGxvY2F0aW5nIFRyYW5zcG9ydCBDaGFubmVs
IEJ1ZmZlcnMgZm9yIERMU0NIIDIvOAobWzBtW1BIWV0gICBBbGxvY2F0aW5nIFRyYW5zcG9y
dCBDaGFubmVsIEJ1ZmZlcnMgZm9yIERMU0NIIDMvOAobWzBtW1BIWV0gICBBbGxvY2F0aW5n
IFRyYW5zcG9ydCBDaGFubmVsIEJ1ZmZlcnMgZm9yIERMU0NIIDQvOAobWzBtW1BIWV0gICBB
bGxvY2F0aW5nIFRyYW5zcG9ydCBDaGFubmVsIEJ1ZmZlcnMgZm9yIERMU0NIIDUvOAobWzBt
W1BIWV0gICBBbGxvY2F0aW5nIFRyYW5zcG9ydCBDaGFubmVsIEJ1ZmZlcnMgZm9yIERMU0NI
IDYvOAobWzBtW1BIWV0gICBBbGxvY2F0aW5nIFRyYW5zcG9ydCBDaGFubmVsIEJ1ZmZlcnMg
Zm9yIERMU0NIIDcvOAobWzBtc2V0dXBfUlVfYnVmZmVyczogZnJhbWVfcGFybXMgPSAweDdm
NWY1NDc5YzAxMAp3YWl0aW5nIGZvciBzeW5jIChydV90aHJlYWQsLTEvMHg1NWE4YmQ0MTgy
YjQsMHg1NWE4YmUxYzg0ZTAsMHg1NWE4YmUwMWQ5YzApClJDLnJ1X21hc2s6MDAKQUxMIFJV
cyBSRUFEWSEKUkMubmJfUlU6MQpBTEwgUlVzIHJlYWR5IC0gaW5pdCBnTkJzCk5vdCBORkFQ
SSBtb2RlIC0gY2FsbCBpbml0X2VOQl9hZnRlclJVKCkKW0xJQkNPTkZJR10gbG9hZGVyLmRm
dHM6IDIvMiBwYXJhbWV0ZXJzIHN1Y2Nlc3NmdWxseSBzZXQsICgxIHRvIGRlZmF1bHQgdmFs
dWUpCltMT0FERVJdIGxpYnJhcnkgbGliZGZ0cy5zbyBzdWNjZXNzZnVsbHkgbG9hZGVkCltM
SUJDT05GSUddIGxvYWRlci5sZHBjOiAyLzIgcGFyYW1ldGVycyBzdWNjZXNzZnVsbHkgc2V0
LCAoMSB0byBkZWZhdWx0IHZhbHVlKQpbTE9BREVSXSBsaWJyYXJ5IGxpYmxkcGMuc28gc3Vj
Y2Vzc2Z1bGx5IGxvYWRlZApjcmVhdGUgYSB0aHJlYWQgZm9yIGNvcmUgLTEKY3JlYXRlIGEg
dGhyZWFkIGZvciBjb3JlIC0xCmNyZWF0ZSBhIHRocmVhZCBmb3IgY29yZSAtMQpjcmVhdGUg
YSB0aHJlYWQgZm9yIGNvcmUgLTEKY3JlYXRlIGEgdGhyZWFkIGZvciBjb3JlIC0xCmNyZWF0
ZSBhIHRocmVhZCBmb3IgY29yZSAtMQpjcmVhdGUgYSB0aHJlYWQgZm9yIGNvcmUgLTEKY3Jl
YXRlIGEgdGhyZWFkIGZvciBjb3JlIC0xCndhaXRpbmcgZm9yIHN5bmMgKEwxX3N0YXRzX3Ro
cmVhZCwtMS8weDU1YThiZDQxODJiNCwweDU1YThiZTFjODRlMCwweDU1YThiZTAxZDljMCkK
QUxMIFJVcyByZWFkeSAtIEFMTCBnTkJzIHJlYWR5ClNlbmRpbmcgc3luYyB0byBhbGwgdGhy
ZWFkcwpBYm91dCB0byBjYWxsIGVuZF9jb25maWdtb2R1bGUoKSBmcm9tIG1haW4oKSAvaG9t
ZS9naXVzZXBwZV9zYW50YXJvbWl0YS9vcGVuYWlyaW50ZXJmYWNlNWcvZXhlY3V0YWJsZXMv
bnItc29mdG1vZGVtLmM6ODE4CkNhbGxlZCBlbmRfY29uZmlnbW9kdWxlKCkgZnJvbSBtYWlu
KCkgL2hvbWUvZ2l1c2VwcGVfc2FudGFyb21pdGEvb3BlbmFpcmludGVyZmFjZTVnL2V4ZWN1
dGFibGVzL25yLXNvZnRtb2RlbS5jOjgyMwpUWVBFIDxDVFJMLUM+IFRPIFRFUk1JTkFURQpF
bnRlcmluZyBJVFRJIHNpZ25hbHMgaGFuZGxlcgpnb3Qgc3luYyAoTDFfc3RhdHNfdGhyZWFk
KQpnb3Qgc3luYyAocnVfdGhyZWFkKQpbUEhZXSAgIFJVIDAgcmYgZGV2aWNlIHJlYWR5Chtb
MG1zbGVlcC4uLgpzbGVlcC4uLgpzbGVlcC4uLgpzbGVlcC4uLgpzbGVlcC4uLgpzbGVlcC4u
LgpzbGVlcC4uLgpzbGVlcC4uLgpzbGVlcC4uLgpzbGVlcC4uLgpzbGVlcC4uLgpzbGVlcC4u
LgobWzE7MzFtW0hXXSAgIFtyZWN2XSByZWNlaXZlZCAzNDc0IHNhbXBsZXMgb3V0IG9mIDMw
NzIwChtbMG0bWzE7MzFtW0hXXSAgIFRpbWU6IDEuMDUyNjkgcwpFUlJPUl9DT0RFX09WRVJG
TE9XIChPdmVyZmxvdykKChtbMG0bWzE7MzFtW1BIWV0gICByeF9yZjogQXNrZWQgZm9yIDMw
NzIwIHNhbXBsZXMsIGdvdCAzNDc0IGZyb20gVVNSUAobWzBtG1sxOzMxbVtQSFldICAgcHJv
YmxlbSByZWNlaXZpbmcgc2FtcGxlcwobWzBtG1sxOzMxbVtIV10gICBbcmVjdl0gcmVjZWl2
ZWQgMTg5MDYgc2FtcGxlcyBvdXQgb2YgMzA3MjAKG1swbRtbMTszMW1bSFddICAgVGltZTog
MS4xMDQ5NCBzCkVSUk9SX0NPREVfT1ZFUkZMT1cgKE92ZXJmbG93KQoKG1swbRtbMTszMW1b
UEhZXSAgIHJ4X3JmOiBBc2tlZCBmb3IgMzA3MjAgc2FtcGxlcywgZ290IDE4OTA2IGZyb20g
VVNSUAobWzBtG1sxOzMxbVtQSFldICAgcHJvYmxlbSByZWNlaXZpbmcgc2FtcGxlcwobWzBt
G1sxOzMxbVtIV10gICBbcmVjdl0gcmVjZWl2ZWQgMTg5MDYgc2FtcGxlcyBvdXQgb2YgMzA3
MjAKG1swbRtbMTszMW1bSFddICAgVGltZTogMS4xNTcxNiBzCkVSUk9SX0NPREVfT1ZFUkZM
T1cgKE92ZXJmbG93KQoKG1swbRtbMTszMW1bUEhZXSAgIHJ4X3JmOiBBc2tlZCBmb3IgMzA3
MjAgc2FtcGxlcywgZ290IDE4OTA2IGZyb20gVVNSUAobWzBtG1sxOzMxbVtQSFldICAgcHJv
YmxlbSByZWNlaXZpbmcgc2FtcGxlcwobWzBtG1sxOzMxbVtIV10gICBbcmVjdl0gcmVjZWl2
ZWQgMTg5MDYgc2FtcGxlcyBvdXQgb2YgMzA3MjAKG1swbRtbMTszMW1bSFddICAgVGltZTog
MS4yMDkzOCBzCkVSUk9SX0NPREVfT1ZFUkZMT1cgKE92ZXJmbG93KQoKG1swbRtbMTszMW1b
UEhZXSAgIHJ4X3JmOiBBc2tlZCBmb3IgMzA3MjAgc2FtcGxlcywgZ290IDE4OTA2IGZyb20g
VVNSUAobWzBtG1sxOzMxbVtQSFldICAgcHJvYmxlbSByZWNlaXZpbmcgc2FtcGxlcwobWzBt
G1sxOzMxbVtIV10gICBbcmVjdl0gcmVjZWl2ZWQgMTg5MDYgc2FtcGxlcyBvdXQgb2YgMzA3
MjAKG1swbRtbMTszMW1bSFddICAgVGltZTogMS4yNjE2MSBzCkVSUk9SX0NPREVfT1ZFUkZM
T1cgKE92ZXJmbG93KQoKG1swbRtbMTszMW1bUEhZXSAgIHJ4X3JmOiBBc2tlZCBmb3IgMzA3
MjAgc2FtcGxlcywgZ290IDE4OTA2IGZyb20gVVNSUAobWzBtG1sxOzMxbVtQSFldICAgcHJv
YmxlbSByZWNlaXZpbmcgc2FtcGxlcwobWzBtG1sxOzMxbVtIV10gICBbcmVjdl0gcmVjZWl2
ZWQgMTg5MDYgc2FtcGxlcyBvdXQgb2YgMzA3MjAKG1swbRtbMTszMW1bSFddICAgVGltZTog
MS4zMTM4MyBzCkVSUk9SX0NPREVfT1ZFUkZMT1cgKE92ZXJmbG93KQoKG1swbRtbMTszMW1b
UEhZXSAgIHJ4X3JmOiBBc2tlZCBmb3IgMzA3MjAgc2FtcGxlcywgZ290IDE4OTA2IGZyb20g
VVNSUAobWzBtG1sxOzMxbVtQSFldICAgcHJvYmxlbSByZWNlaXZpbmcgc2FtcGxlcwobWzBt
G1sxOzMxbVtIV10gICBbcmVjdl0gcmVjZWl2ZWQgMTg5MDYgc2FtcGxlcyBvdXQgb2YgMzA3
MjAKG1swbRtbMTszMW1bSFddICAgVGltZTogMS4zNjYwOSBzCkVSUk9SX0NPREVfT1ZFUkZM
T1cgKE92ZXJmbG93KQoKG1swbRtbMTszMW1bUEhZXSAgIHJ4X3JmOiBBc2tlZCBmb3IgMzA3
MjAgc2FtcGxlcywgZ290IDE4OTA2IGZyb20gVVNSUAobWzBtG1sxOzMxbVtQSFldICAgcHJv
YmxlbSByZWNlaXZpbmcgc2FtcGxlcwobWzBtG1sxOzMxbVtIV10gICBbcmVjdl0gcmVjZWl2
ZWQgMTg5MDYgc2FtcGxlcyBvdXQgb2YgMzA3MjAKG1swbRtbMTszMW1bSFddICAgVGltZTog
MS40MTgzNSBzCkVSUk9SX0NPREVfT1ZFUkZMT1cgKE92ZXJmbG93KQoKG1swbRtbMTszMW1b
UEhZXSAgIHJ4X3JmOiBBc2tlZCBmb3IgMzA3MjAgc2FtcGxlcywgZ290IDE4OTA2IGZyb20g
VVNSUAobWzBtG1sxOzMxbVtQSFldICAgcHJvYmxlbSByZWNlaXZpbmcgc2FtcGxlcwobWzBt
G1sxOzMxbVtIV10gICBbcmVjdl0gcmVjZWl2ZWQgMTg5MDYgc2FtcGxlcyBvdXQgb2YgMzA3
MjAKG1swbRtbMTszMW1bSFddICAgVGltZTogMS40NzA1OCBzCkVSUk9SX0NPREVfT1ZFUkZM
T1cgKE92ZXJmbG93KQoKG1swbRtbMTszMW1bUEhZXSAgIHJ4X3JmOiBBc2tlZCBmb3IgMzA3
MjAgc2FtcGxlcywgZ290IDE4OTA2IGZyb20gVVNSUAobWzBtG1sxOzMxbVtQSFldICAgcHJv
YmxlbSByZWNlaXZpbmcgc2FtcGxlcwobWzBtG1sxOzMxbVtIV10gICBbcmVjdl0gcmVjZWl2
ZWQgMTg5MDYgc2FtcGxlcyBvdXQgb2YgMzA3MjAKG1swbRtbMTszMW1bSFddICAgVGltZTog
MS41MjI4MSBzCkVSUk9SX0NPREVfT1ZFUkZMT1cgKE92ZXJmbG93KQoKG1swbRtbMTszMW1b
UEhZXSAgIHJ4X3JmOiBBc2tlZCBmb3IgMzA3MjAgc2FtcGxlcywgZ290IDE4OTA2IGZyb20g
VVNSUAobWzBtG1sxOzMxbVtQSFldICAgcHJvYmxlbSByZWNlaXZpbmcgc2FtcGxlcwobWzBt
G1sxOzMxbVtIV10gICBbcmVjdl0gcmVjZWl2ZWQgMTg5MDYgc2FtcGxlcyBvdXQgb2YgMzA3
MjAKG1swbRtbMTszMW1bSFddICAgVGltZTogMS41NzUwNyBzCkVSUk9SX0NPREVfT1ZFUkZM
T1cgKE92ZXJmbG93KQoKG1swbRtbMTszMW1bUEhZXSAgIHJ4X3JmOiBBc2tlZCBmb3IgMzA3
MjAgc2FtcGxlcywgZ290IDE4OTA2IGZyb20gVVNSUAobWzBtG1sxOzMxbVtQSFldICAgcHJv
YmxlbSByZWNlaXZpbmcgc2FtcGxlcwobWzBtG1sxOzMxbVtIV10gICBbcmVjdl0gcmVjZWl2
ZWQgMTg5MDYgc2FtcGxlcyBvdXQgb2YgMzA3MjAKG1swbRtbMTszMW1bSFddICAgVGltZTog
MS42MjcyOSBzCkVSUk9SX0NPREVfT1ZFUkZMT1cgKE92ZXJmbG93KQoKG1swbRtbMTszMW1b
UEhZXSAgIHJ4X3JmOiBBc2tlZCBmb3IgMzA3MjAgc2FtcGxlcywgZ290IDE4OTA2IGZyb20g
VVNSUAobWzBtG1sxOzMxbVtQSFldICAgcHJvYmxlbSByZWNlaXZpbmcgc2FtcGxlcwobWzBt
G1sxOzMxbVtIV10gICBbcmVjdl0gcmVjZWl2ZWQgMTg5MDYgc2FtcGxlcyBvdXQgb2YgMzA3
MjAKG1swbRtbMTszMW1bSFddICAgVGltZTogMS42Nzk1NyBzCkVSUk9SX0NPREVfT1ZFUkZM
T1cgKE92ZXJmbG93KQoKG1swbRtbMTszMW1bUEhZXSAgIHJ4X3JmOiBBc2tlZCBmb3IgMzA3
MjAgc2FtcGxlcywgZ290IDE4OTA2IGZyb20gVVNSUAobWzBtG1sxOzMxbVtQSFldICAgcHJv
YmxlbSByZWNlaXZpbmcgc2FtcGxlcwobWzBtG1sxOzMxbVtIV10gICBbcmVjdl0gcmVjZWl2
ZWQgMTg5MDYgc2FtcGxlcyBvdXQgb2YgMzA3MjAKG1swbRtbMTszMW1bSFddICAgVGltZTog
MS43MzE5MiBzCkVSUk9SX0NPREVfT1ZFUkZMT1cgKE92ZXJmbG93KQoKG1swbRtbMTszMW1b
UEhZXSAgIHJ4X3JmOiBBc2tlZCBmb3IgMzA3MjAgc2FtcGxlcywgZ290IDE4OTA2IGZyb20g
VVNSUAobWzBtG1sxOzMxbVtQSFldICAgcHJvYmxlbSByZWNlaXZpbmcgc2FtcGxlcwobWzBt
G1sxOzMxbVtIV10gICBbcmVjdl0gcmVjZWl2ZWQgMTg5MDYgc2FtcGxlcyBvdXQgb2YgMzA3
MjAKG1swbRtbMTszMW1bSFddICAgVGltZTogMS43ODQyNCBzCkVSUk9SX0NPREVfT1ZFUkZM
T1cgKE92ZXJmbG93KQoKG1swbRtbMTszMW1bUEhZXSAgIHJ4X3JmOiBBc2tlZCBmb3IgMzA3
MjAgc2FtcGxlcywgZ290IDE4OTA2IGZyb20gVVNSUAobWzBtG1sxOzMxbVtQSFldICAgcHJv
YmxlbSByZWNlaXZpbmcgc2FtcGxlcwobWzBtG1sxOzMxbVtIV10gICBbcmVjdl0gcmVjZWl2
ZWQgMTkyNzAgc2FtcGxlcyBvdXQgb2YgMzA3MjAKG1swbRtbMTszMW1bSFddICAgVGltZTog
MS44MzY1IHMKRVJST1JfQ09ERV9PVkVSRkxPVyAoT3ZlcmZsb3cpCgobWzBtG1sxOzMxbVtQ
SFldICAgcnhfcmY6IEFza2VkIGZvciAzMDcyMCBzYW1wbGVzLCBnb3QgMTkyNzAgZnJvbSBV
U1JQChtbMG0bWzE7MzFtW1BIWV0gICBwcm9ibGVtIHJlY2VpdmluZyBzYW1wbGVzChtbMG0b
WzE7MzFtW0hXXSAgIFtyZWN2XSByZWNlaXZlZCAxODU0MiBzYW1wbGVzIG91dCBvZiAzMDcy
MAobWzBtG1sxOzMxbVtIV10gICBUaW1lOiAxLjg4ODcyIHMKRVJST1JfQ09ERV9PVkVSRkxP
VyAoT3ZlcmZsb3cpCgobWzBtG1sxOzMxbVtQSFldICAgcnhfcmY6IEFza2VkIGZvciAzMDcy
MCBzYW1wbGVzLCBnb3QgMTg1NDIgZnJvbSBVU1JQChtbMG0bWzE7MzFtW1BIWV0gICBwcm9i
bGVtIHJlY2VpdmluZyBzYW1wbGVzChtbMG0=

--------------QGcaOj7FDDNnuQ9odqheBuai
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------QGcaOj7FDDNnuQ9odqheBuai--
