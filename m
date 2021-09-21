Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB02E4133A6
	for <lists+usrp-users@lfdr.de>; Tue, 21 Sep 2021 15:00:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8007B38436F
	for <lists+usrp-users@lfdr.de>; Tue, 21 Sep 2021 09:00:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="D2fsO79w";
	dkim-atps=neutral
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 1D8233842BF
	for <usrp-users@lists.ettus.com>; Tue, 21 Sep 2021 08:59:32 -0400 (EDT)
Received: by mail-qv1-f43.google.com with SMTP id cf2so13382780qvb.10
        for <usrp-users@lists.ettus.com>; Tue, 21 Sep 2021 05:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=PNlqkgY+eeIFcqxlFuccYpZAS7u7InlkQsjm4f8+npM=;
        b=D2fsO79w5nn1PLQJAlo3uonpe5Oo9h9NEdDb4F7R9NZ4XMqDVoMP4H5WrmzspN56s0
         OyIC6xJzemryEeSZzRQ8vEhyCCqONaj1/gdDjapDfNkjEeWL1oMKcDtPmBSYT6sX8ngk
         8713M4BW+aIEHIxTsiqaCMYSyw9fJj3YaSC7Wb39rm2/ddeVQ9BroTKgdwoymj42FzC4
         NU2SoYzqoxNtTSG9BoKhPvjgzpDQQOdOxlU+pXTUPisFzAuLBC4uithhLjW867zhmfvX
         e+NS4TEK/IKV1fztMgCsHc7aq2bcvEvdc6W4rzAlHwlvxIIt6CZ7NPqB2MB7eNC5tfzP
         JUfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=PNlqkgY+eeIFcqxlFuccYpZAS7u7InlkQsjm4f8+npM=;
        b=gsWxPnI2ge/6x9ACw/cQVO+ol8q3cwX+i69+hKOhDcjYik6Rwnix3o6H1XlOKbbpXu
         gqxRvW8yHFzoSbdkQKqjAt4LgkK3xJyzsTprVmzwRf1uHmlbanZZ19zzp1uvWJsZJf/J
         TCshROYeuNAAdrO7KVQD7n9n/o996YRCusfMZSGK4k2uysgpdV6k0jhGUvuncWVyBnj9
         /pzPbocHGxJ/JVhNO7pnpb13aXN1KxPVNMpeBaDZXHSK2yH2fbb4i9mFV5IG/fKk/HMS
         mge4TxZIIdbHicTldF07ByB0u/t1mqNFg2JCsqE/OEsqcwu5+yb+Zh+tejubY9fpuW8+
         SLxA==
X-Gm-Message-State: AOAM530TOHwQ4yMVX0L0kxnJmQVqOV66eTBbRZVZLSh7cCaWJ/H8MLoN
	jnTwaYB2zCklcwiJeikcx1PhzTYvCnU3uA==
X-Google-Smtp-Source: ABdhPJzbBremjnfj2LWg+MINCSFMlnZTKUruaQ0KMWZFTE6ZU4q8+SbJUx1ZTDlP8mM8T1tOCi0OJg==
X-Received: by 2002:ad4:498a:: with SMTP id t10mr21405883qvx.65.1632229172314;
        Tue, 21 Sep 2021 05:59:32 -0700 (PDT)
Received: from [192.168.2.227] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id c67sm13596188qke.113.2021.09.21.05.59.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Sep 2021 05:59:31 -0700 (PDT)
To: Thangaraj Mukara Dhakshinamoorthy <thangaraj@komro.net>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <78d01bc8cbdc44739d061046f13f6aa8@komro.net>
 <013d81cf-214e-a884-d807-0cd1b22407b5@gmail.com>
 <ae4f4b0c23774d9a9c103b7db3287b6a@komro.net>
 <cb5a50c8-cdbc-739c-7b27-f7584cd933dc@gmail.com>
 <837c3db130174070882c9f00c3eeff47@komro.net>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <5da73615-17fa-d419-46b6-98dca598d418@gmail.com>
Date: Tue, 21 Sep 2021 08:59:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <837c3db130174070882c9f00c3eeff47@komro.net>
Content-Language: en-US
Message-ID-Hash: LYZ4D7YNRJYHPJESUUK5ZQBYX54EKCI7
X-Message-ID-Hash: LYZ4D7YNRJYHPJESUUK5ZQBYX54EKCI7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help_Failed to build UHD in Ubuntu 20.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LYZ4D7YNRJYHPJESUUK5ZQBYX54EKCI7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3886829606948431855=="

This is a multi-part message in MIME format.
--===============3886829606948431855==
Content-Type: multipart/alternative;
 boundary="------------93D0C818A40005D8FE2B21C2"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------93D0C818A40005D8FE2B21C2
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-21 4:00 a.m., Thangaraj Mukara Dhakshinamoorthy wrote:
>
> Hello Marcus,
>
> So if I want to program the N320 using the GNU Radio either in Windows=20
> 10 or in WSL2, what should I do? Any tutorial guides you would suggest?
>
> In WSL (Ubuntu), the cmake build is incomplete (throws an error) and=20
> in windows the binary installtion is done but no use (for streaming=20
> samples)!
>
> Please kindly guide me!
>
> Best regards,
>
> Thangaraj
>
You might usefully start here:

https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide

It's a network device.=A0 You'll need a spare network port on your window=
s=20
device.


> *Von:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Gesendet:* Montag, 20. September 2021 18:08
> *An:* Thangaraj Mukara Dhakshinamoorthy <thangaraj@komro.net>;=20
> usrp-users@lists.ettus.com
> *Betreff:* Re: AW: [USRP-users] Re: Help_Failed to build UHD in Ubuntu=20
> 20.04
>
> On 2021-09-20 12:02 p.m., Thangaraj Mukara Dhakshinamoorthy wrote:
>
>     Hello Marcus,
>
>     Thank you for the prompt response.
>
>     Yes, I have installed the binary UHD driver in my windows 10 and
>     also executed the command you mentioned, I am getting the same
>     output as yours,
>
>     imap://patchvonbraun%40gmail%2Ecom@imap.googlemail.com:993/fetch%3E=
UID%3E/INBOX%3E133367?header=3Dquotebody&part=3D1.2&filename=3Dimage001.p=
ng
>
>     but when I connect the N320 with my windows host PC, it is not
>     recognized as a USB device, I already installed the
>     erllc_uhd_winusb_driver (erllc_uhd_usrp1.inf) but still the Ettus
>     N320 is not recognized, what should I do?
>
>     PS: I need to program the Ettus N320 with GNU radio and I am quite
>     new to SDR!
>
>     Also, I have a windows 10 PC with WSL (Windows Subsystem for Linux)=
!
>
>     *V*
>
> This is absolutely the first mention of Windows being involved at all.
>
> Since communication with the N320 is via a *NETWORK* connection, the=20
> state of the Windows USB drivers is not, as far as I know, relevant.
>
> The USB port on the N320 (I don't have one in my collection) is, as=20
> far as I know, just for TTY-type console use and perhaps for JTAG.=A0=20
> But it is not
> =A0 in any way intended to be used for streaming samples.
>


--------------93D0C818A40005D8FE2B21C2
Content-Type: multipart/related;
 boundary="------------C5882CE129035F4FB9FA851E"


--------------C5882CE129035F4FB9FA851E
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-21 4:00 a.m., Thangaraj
      Mukara Dhakshinamoorthy wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:837c3db130174070882c9f00c3eeff47@komro.net">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
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
	font-family:"Courier New";}span.HTMLVorformatiertZchn
	{mso-style-name:"HTML Vorformatiert Zchn";
	mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert";
	font-family:Consolas;
	mso-fareast-language:EN-US;}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}span.E-MailFormatvorlage20
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}span.E-MailFormatvorlage21
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}span.E-MailFormatvorlage22
	{mso-style-type:personal-reply;
	font-family:"Verdana",sans-serif;
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
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Hello
            Marcus,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">So
            if I want to program the N320 using the GNU Radio either in
            Windows 10 or in WSL2, what should I do? Any tutorial guides
            you would suggest?<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">In
            WSL (Ubuntu), the cmake build is incomplete (throws an
            error) and in windows the binary installtion is done but no
            use (for streaming samples)!<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Please
            kindly guide me!<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Best
            regards,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif">Thangaraj</span></p>
      </div>
    </blockquote>
    You might usefully start here:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_=
N300/N310/N320/N321_Getting_Started_Guide">https://kb.ettus.com/USRP_N300=
/N310/N320/N321_Getting_Started_Guide</a><br>
    <br>
    It's a network device.=A0 You'll need a spare network port on your
    windows device.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:837c3db130174070882c9f00c3eeff47@komro.net">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif"><o:p></o:p></span></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class=3D"MsoNormal"><b><span
                  style=3D"mso-fareast-language:DE">Von:</span></b><span
                style=3D"mso-fareast-language:DE"> Marcus D. Leech
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvo=
nbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
                <br>
                <b>Gesendet:</b> Montag, 20. September 2021 18:08<br>
                <b>An:</b> Thangaraj Mukara Dhakshinamoorthy
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:thangar=
aj@komro.net">&lt;thangaraj@komro.net&gt;</a>; <a class=3D"moz-txt-link-a=
bbreviated" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a><br>
                <b>Betreff:</b> Re: AW: [USRP-users] Re: Help_Failed to
                build UHD in Ubuntu 20.04<o:p></o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 2021-09-20 12:02 p.m., Thangaraj
            Mukara Dhakshinamoorthy wrote:<span
              style=3D"font-size:12.0pt;mso-fareast-language:DE"><o:p></o=
:p></span></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">Hello
              Marcus,</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">Thank
              you for the prompt response.</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">Yes,
              I have installed the binary UHD driver in my windows 10
              and also executed the command you mentioned, I am getting
              the same output as yours,
            </span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:DE">=
<img
                style=3D"width:11.5833in;height:1.3437in"
                id=3D"Grafik_x0020_1"
                src=3D"cid:part1.C0F89C3D.1431617B@gmail.com"
alt=3D"imap://patchvonbraun%40gmail%2Ecom@imap.googlemail.com:993/fetch%3=
EUID%3E/INBOX%3E133367?header=3Dquotebody&amp;part=3D1.2&amp;filename=3Di=
mage001.png"
                class=3D"" width=3D"1112" height=3D"129"></span><o:p></o:=
p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">but
              when I connect the N320 with my windows host PC, it is not
              recognized as a USB device, I already installed the
              erllc_uhd_winusb_driver (erllc_uhd_usrp1.inf) but still
              the Ettus N320 is not recognized, what should I do? </span>=
<o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">PS:
              I need to program the Ettus N320 with GNU radio and I am
              quite new to SDR!</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">Also,
              I have a windows 10 PC with WSL (Windows Subsystem for
              Linux)!</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,s=
ans-serif">=A0</span><o:p></o:p></p>
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0cm 0cm 0cm">
              <p class=3D"MsoNormal"><b><span
                    style=3D"mso-fareast-language:DE">V</span></b><o:p></=
o:p></p>
            </div>
          </div>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:DE">This is
            absolutely the first mention of Windows being involved at
            all.<br>
            <br>
            Since communication with the N320 is via a *NETWORK*
            connection, the state of the Windows USB drivers is not, as
            far as I know, relevant.<br>
            <br>
            The USB port on the N320 (I don't have one in my collection)
            is, as far as I know, just for TTY-type console use and
            perhaps for JTAG.=A0 But it is not<br>
            =A0 in any way intended to be used for streaming samples.<br>
            <br>
            <o:p></o:p></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------C5882CE129035F4FB9FA851E
Content-Type: image/png;
 name="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <part1.C0F89C3D.1431617B@gmail.com>
Content-Disposition: inline;
 filename="image001.png"

iVBORw0KGgoAAAANSUhEUgAABFgAAACBCAIAAAB7H5kGAAAAAXNSR0IArs4c6QAANgNJREFU
eF7tnWmsXVX5/09l6sClAzOWQmmBMrZMbWWq0ibgQAyJgvm9UPSViUaNvlCbGDEa0BeamDi9
UfENkWpCDOKvCMV/maSCUGQqQymU0gKlA5QyQ/+fw3NdXb999l577eHsu8+535Wbk3PPXsOz
PutZaz/PWmuvPWHPnj2djDAyMpJ1Sb+LgAiIgAiIgAiIgAiIgAiIwOAS+NDgii7JRUAEREAE
REAEREAEREAERKAcATlC5bgplQiIgAiIgAiIgAiIgAiIwAATkCM0wI0n0UVABERABERABERA
BERABMoRkCNUjptSiYAIiIAIiIAIiIAIiIAIDDABOUID3HgSXQREQAREQAREQAREQAREoBwB
OULluCmVCIiACIiACIiACIiACIjAABOQIzTAjSfRRUAEREAEREAEREAEREAEyhGQI1SOm1KJ
gAiIgAiIgAiIgAiIgAgMMAE5QgPceBJdBERABERABERABERABESgHIEJe/bsyUo5MjJSLlOl
EgEREIEIAq9FxImPcmB8VMUUAREQAREQAREQATlC0gEREIHqBOp1aarLE5PDoDhO8WwHpUYx
raM4IiACIiACItB3AnKE+o5YBYhAWwnEW9htrUHf5Yp0LQaXZGQF+w5aBYiACIiACIhA8wTk
CDXPXCUOH4HBtYOHry1Uo4oE5BpVBKjkIiACIiACA0NAjtDANJUErYmAnJaaQCqbcURA3tE4
amxVVQREQATGDwE5QuOnrcdPTeXqjJ+2Vk3HioBco7Eir3JFQAREQARqIxBwhCbo0LjaMA9D
Ru2xe+TnDIM+qQ7jlUB7RpLx2gKqtwiIgAiIwH8JmCM0IRWIHCHpSQUC1c0dOTwV8CupCAwt
gepjy9CiUcVEQAREQAQKEcARyozvO0LLlxfKVpFFQAREQAREoEkCVzdZmMoSAREQARFoD4Gr
ry55C/hQe+ogSURABERABESgLAGm6zRjVxae0omACIjAuCQgR2hcNrsqLQIiIAIiIAIiIAIi
IALjm0B/HaG5czuf/GRn5szxzTit9gsXdoDTv9Ak+epl9ZtG/zg3nHPtoGrPsGEgKk4EREAE
REAEREAEShPoryP01FOdKVM6J55YWrzhTIhnePLJHWxQF/Alrrxy9O+882qodZPkw2XhCfMX
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
To1jIxCGNZ8HHHDAGWecgUXLY/r+lL8d9sVDGr3rAKkVwGYlN/LhQDMX7BF5HrrgJAYuYShj
YhKNc8Ys28svvxx/DOOVE9ISqVoiYUCM2iWEOZRuueUWvCD2K/KGJT45RY1T9Thh3AUaBVbu
PUKNSciSHb4KOxhNbU477TScIl4lZK08YcIELqEGLFWxhIWEREZy05Y9e/Zw8B0qZxrCyeD2
EA6eDD/a6XMcs85ZC04P99lnHy4RiMPSEMrDoYL+GXHsYSMVvhPF2VGE4QwDErpT4yCP63XU
UUf559r1r8f6OevUuGY4qxQREAEREAEREIGhJFDAEcIMxdTDcsWaxOLkDOsnnnjCh2KG7G23
3RZJClMSG5ckfsB2JzkPqbN8QYYYrCwgPPzww64sDk0247U3VUskDIhRr4TsecMTePqDABMc
RUx/7Hs2v9lTQy4kjs9uTEIEwLExvwu1wRfCC+KQAxMMhw23DR3gmG9rTSI7R8jWG/nRrlIj
OxXDMqSmuDQ8FuXrIZdw+UZGRtixZsrD4dr+kdZcJTcSkiHn15kjFMgwIKF/fDY8zZ3rJR/Z
F8pFkyNUjptSiYAIiIAIiIAIiAAEJjDvngUCg9JdWr58eS4vnhrHQl2xYkVuzLGKIAmrk28/
w+p1HJQcrr766kERVXKKgAiIgAiIgAiIQNsIFHhGKEb06scnxJRSJY4krELP0rafYfU6KgcR
EAEREAEREAEREIHhJlCnI8TxWSXe4tIkX0lYnXb7GVavo3IQAREQAREQAREQAREYegJ1bo0b
eliqoAi0ioC2xrWqOSSMCIiACIiACIjAYBGIdYQGq1aSVgREQAREQAREQAREQAREQAQCBOrc
GifQIiACIiACIiACIiACIiACIjAQBOQIDUQzSUgREAEREAEREAEREAEREIE6CcgRqpOm8hIB
ERABERABERABERABERgIAnKEBqKZJKQIiIAIiIAIiIAIiIAIiECdBOQI1UlTeYmACIiACIiA
CIiACIiACAwEATlCA9FMElIEREAEREAEREAEREAERKBOAnKE6qSpvERABERABERABERABERA
BAaCgByhgWgmCSkCIiACIiACIiACIiACIlAnATlCddJUXiIgAiIgAiIgAiIgAiIgAgNBQI7Q
QDSThBQBERABERABERABERABEaiTgByhOmkqLxEQAREQAREQAREQAREQgYEgIEdoIJpJQoqA
CIiACIiACIiACIiACNRJQI5QnTSVlwiIgAiIgAiIgAiIgAiIwEAQkCM0EM0kIUVABERABERA
BERABERABOokIEeoTprKSwREQAREQAREQAREQAREYCAIyBEaiGaSkCIgAiIgAiIgAiIgAiIg
AnUSkCNUJ03lJQIiIAIiIAIiIAIiIAIiMBAE5AgNRDNJSBEQAREQAREQAREQAREQgToJyBGq
k6byGkMCu3btGsPSVbQIiIAIiIAIiIAIiMBgEZAjNFjtJWlFQAREQAREQAREQAREQARqICBH
qAaIykIEREAEREAEREAEREAERGCwCPTXEbrkkkt+85vffOQjHxksKA1I+9WvfhU4/SuoSfLV
y+o3jf5xVs4iIAIiIAIiIAIiIAIDSqC/jtDKlSsPPvjgT3/60wNKp09i4xl+5jOf+drXvuby
x5f4f/8N3/72t6uX2yT5cFl4woRAjXppVK++chABERABERABERABERCBMIFijhD2+s9//nOz
2P/0pz/FmOz33Xff4sWL582b1ysH9rGz/sntxz/+8aGHHjoEDebXy1XQX//55z//+eCDD/7t
b39zlf33v/9N9Qk1Vj9AHqn8tvN9lfAlVx3UwK9RoKzcGvXSyE2iCCIgAiIgAiIgAiIgAiJQ
kUABR+izn/3sd77znenTp//yl7/EZF+/fv2SJUtSPRxfpt/97nevv/561qLQ1q1b//eDsHnz
ZvylH/7whxXr05Lkrl5WO8Izzzzjy/b1r3/9F7/4hfuF+KyrEGqUP0y+XEHr1q2jLv/4xz+O
P/54lAGVsHwqlpWgEZYNFy5X68rVTqlEQAREQAREQAREQATGD4EJe/bsyartyMiIf4lFmzfe
eONb3/oWVrv9zgKO+86/POnBji98pIRBzy+nn376F77wBT8y8W3H1Je//GXL7fvf//7HPvYx
/j322GMxsvmFZZO1a9dibU+ePBnj+wc/+IHFxBTGB+NHMlyxYgWC2e/Yx9/4xjf4xPXiRxKu
Xr36Jz/5CWsXgQzdVXLDu/vpT39qctrvlItUSLJ9+3a++GJkcUvUy4+G5B//+MftF5wKV3cX
hyUXPA1kTmTuV5mlpN///veuCb70pS+dffbZbjHtD3/4g7uaRT5Rii9w5CWK+9WvfoUMzhcK
t/KWLVugR7v85z//cYQDNEwkS8UXHzvVp+mht2bNGldT4nB8dkJjsxpIv4uACIiACIiACIiA
CIhA7IoQXgG2L/ao78wkHJuZM2cC9Mgjj0xgvfbaa7FcP/WpT4VxY9cSAS/I9olt3LjxgAMO
WLRoEcaueSO2F+uLX/wivgRXcRj49ytf+Yrbo4UXNGvWLPMESEihVmI4Q9ZqAqtSM2bM4Or8
+fMpEePb7PLS4S9/+UuJLXDmMODUkZZNaLiUzv3AC+IS62lu6YmdZk68SPIlqkPTIw8q4U7C
CJTFc2JgRHh8GNb98KWtxDANUqFL1Muw0+6W6hOf+ARN/NZbb8GBDPGftUBUogWVRAREQARE
QAREQATGOYFYR8gwMUMf4MX6CcauP0lvkTFkWVHBfg2z/uhHP0oEnBbbJ8bqAQYuJi9rO9df
fz2X8Eb4xCYmAmspLJt873vf4xdLSGSCrZaQhISuuHCGiEdWBDZo/fnPfyYT/1ElfAyEJyuy
3bBhQ6S6YMTjvbjgUlFWiS1wLPjcc889SEhaPsnk/PPPtzxnz57N549+9COrgl31i4shn6gU
eTrJqUhWlZ966ikuTZ06NaaVYYvw7AakIiwPuiQBGlOmTKF9XSsfdthhThLaggzRAZwxPN7w
YQyRTaZoIiACIiACIiACIiAC44pAMUcoF03WUy7M6+NduHUMl49zGLBlWSvAak+sMtn6BsY9
3o5tGGPNhw1szpJmoWbatGn8y1ISn2adE/yFEV/s3gzxfFhVsAMDFi5cSOSzzjort6bhCFSW
hRoXqucGHHdQAQKzVmZ5rlq1ik8cP4RPfXgmi3xAJPJ3khc6viKrrG3btrniduzY4Vbqwlho
WVOGhEpYKoRctmwZLiK5EbMiYSUXAREQAREQAREQAREYbwSKOUK9294ieeEgYa0uXbo0Ed85
DHhEmNGsbERmWFc0BPjZz3526qmnstpDYP2nlpzNc3Ohep4spNieOgtuvQsXiIURFrLYKsZz
U7hDCW8zi3xAJBrCSe6vLyWS9CpDTFkTJ06sSIM9cpxZR01ZY8Ql/u53v/v5z3++Yp5KLgIi
IAIiIAIiIAIiMN4IxDpCtlcN0zO8RBB4SSjP+TCLn3i5qnMYMN9Z8Emd+080CQ7VnDlz7Ecy
ZIFo586dfH/llVf4nDt3rl2KfIsriz8sKfz2t7+1fWWPP/74mGsA5/IlZAALq162i8yCv94F
Q7acsVWMZ2ZI6HbNuUx6ydOUtqfOQmD/WxYN1ABlIJ/EGmBqK7tMSMVONttqWDpQTRbEcAUR
gN2YWUt/pfNXQhEQAREQAREQAREQgfFAINYRggWLDxiyHPnFlDwOD65L4j1CrFRgmLqH2hP4
eK4Dgz7m5aq4N+RvG6j4knBpMLURw3aC2XHb7BnjE4MYHwnjGAGQ7XOf+5wTIJChuU8sgFAQ
CRcsWGD/9un5e+pCQeYuUkH33YlKFdgFx1Y9asen/c7JeMjDMgj1MvJOPItpwWg8+eSTueQ5
uo0caC9SQRKedlJFbrDHhygUP4RU7rw+lzC1la2m4EV5iPnrX//a4ufSSJWHFTBC76NoucIr
ggiIgAiIgAiIgAiIgAg4AgUcIUxPTGee8WBKHoeH49r8VQVy3LRpE5+BAxUiX7uJs0T+LPWQ
G19socM3tdm7xVU7h5qXGrlFCSxsHAniY3Nz7rZLEsgQ94nceHyfgjiG4Y9//COpcEViHLYS
amTo7CxvquC+u6yoAu4ikrhTtrmEv0E1WSmCubmabtVo0qRJ7nke217ov57IZZsgj0NihxaQ
1lJF+hX2+BDi4W6lHoxBib2tbDXFf2Pn4Te/+U233S6XRirhwG69Ei2iJCIgAiIgAiIgAiIg
AuOTQIH3CFUHxBoCKwn2bp/quYVzwFvAzvZfqtPvEtucf5PkmyzLZ673CLVZAyWbCIiACIiA
CIiACLSNQIEVoeqis9bB4sbu3burZ5WaA86PbRJjF5m9v/Wvf/1rn8oarGz7Td6n0WRZg9UK
klYEREAEREAEREAERKA9BBpdEep3tXncxR6eYYMcu7DYABZz+kK/pVL+zRDQilAznFWKCIiA
CIiACIiACAwHgaFyhIajSVSLcgTkCJXjplQiIAIiIAIiIAIiMD4JNLo1bnwiVq2bITAyMtJM
QSpFBERABERABERABERgCAjIERqCRlQVREAEREAEREAEREAEREAEihGQI1SMl2KLgAiIgAiI
gAiIgAiIgAgMAQE5QkPQiKqCCIiACIiACIiACIiACIhAMQJyhIrxUmwREAEREAEREAEREAER
EIEhICBHaAgaUVUQAREQAREQAREQAREQAREoRkCOUDFeii0CIiACIiACIiACIiACIjAEBOQI
DUEjqgoiIAIiIAIiIAIiIAIiIALFCMgRKsZLsUVABERABERABERABERABIaAgByhIWhEVUEE
REAEREAEREAEREAERKAYATlCxXgptgiIgAiIgAiIgAiIgAiIwBAQkCM0BI2oKoiACIiACIiA
CIiACIiACBQjIEeoGC/FFgEREAEREAEREAEREAERGAICcoSGoBFVBREQAREQAREQAREQAREQ
gWIE5AgV46XYIiACIiACIiACIiACIiACQ0BAjtAQNKKqIAIiIAIiIAIiIAIiIAIiUIzA/wcq
9UyXuQgAcgAAAABJRU5ErkJggg==
--------------C5882CE129035F4FB9FA851E--

--------------93D0C818A40005D8FE2B21C2--

--===============3886829606948431855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3886829606948431855==--
