Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AEB7CA8FE
	for <lists+usrp-users@lfdr.de>; Mon, 16 Oct 2023 15:13:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 28F993863B2
	for <lists+usrp-users@lfdr.de>; Mon, 16 Oct 2023 09:13:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697461990; bh=cS+emJg8EvphLY0EYnDeghT1D/W8/11NwmCWMEAU7So=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=b+CAznC6iauYMNoocFC1ECs1axmuW7t23D9LfafK8JpiGEMmBqpbh99WxYK6iUMLe
	 Wr4ffp2KvnCL2KjdrHILJHIoPBCpGapJYenDtTt8Vkd1wYK8vEcTlyE2SxYUobCCY4
	 ofoZ4JEc9bO8fPUG+ROJvSlwZHHF3L/5wZWJrw+f3GN8NmzbsbjumOPOh3eryzG+DU
	 Dlj0DSp7HMfkPZXMzec2VFx0qtNTP2xJEXchGu74Pwpf4uojI0VJXcCqq7NoSkQ+r/
	 qUHfZvSljOPPTkMhPOlX9suWEkGeIr8MmbOef6Jyitg8GvBRLLkNOjxa61mB8oyT8J
	 i7T7T+ehTzwRA==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 92DA6386243
	for <usrp-users@lists.ettus.com>; Mon, 16 Oct 2023 09:12:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="L9WOHo/E";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-4197bb0a0d9so29246681cf.3
        for <usrp-users@lists.ettus.com>; Mon, 16 Oct 2023 06:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697461939; x=1698066739; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A13g53P3dYB1wGj+g+1eG10tnbLIu8K64zfedWOomxA=;
        b=L9WOHo/E959VHcJ4s3HnIEw4Pq3/k/JKM1/RBngKe8rkvPZHHv5VUgivOWe9uAH6yl
         uwVLdrcshDIgaHkd450c4CvTydkzXnoqV6d42gSSomTFHYA373bVIwCn3A3WfAlDre3B
         prcfaKKWOy0vqhMGORBvJx1nWJgfF4LVG3+gwGcF9rjmh67VSfZLMnF0KI/FEo85p8Vz
         OgYi9Dr5oJzSFiN/OTqIRo8YCYR3ozLj4DwVz45R5UeP0eGiQK51KRml9o9OnmHhZPd1
         WqcJcyU4lU8gPJSQCuoZXA7m4ozXnVgy2UF9hbFC+cQyamyVB82kWrbyUvT/HFri+qWy
         5LPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697461939; x=1698066739;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=A13g53P3dYB1wGj+g+1eG10tnbLIu8K64zfedWOomxA=;
        b=diMFWujvED7JO+QW7dpLb3mZ7z/j0OQKK5/KYrfW+UjrQhG5FwW/K3HWjvwgrd2lig
         bmo+DeeDnuN1MtSst6h+p5BDkgNngamD46Fx8uklTaZp3aB9AlgruBvy5uZYos1iFyFR
         TAFragZEWGSHnaa6QUpVXAFYanCht0i106xy6JJ6GJmWDARP8YG8v6NkU8HB0klorSLv
         y7FH96eSIQIq8czfHrCpyAvT7VtpNnC2zmLalhoLo0Z9A6jZpKvtalt3qMzTlny7XZIX
         Qd2I6bAZK3b5Ge9acvt7mosHu0MDVC0lgFi9YHUhqdgTixMrVG9ROnJK8+FOhkS1REXq
         Jing==
X-Gm-Message-State: AOJu0Ywr6Fun3dFCBOuxZFPTwoS9yOD0y6cxdpqTg36jxOWFjqhmUOsd
	+3zSqmcoJuR+nfUJec33s8NnVOkpbI8=
X-Google-Smtp-Source: AGHT+IE7Y6EonD3UWrPOYDKeOX8VbhT5XOB7kjuhkYmpJnZobruUMZPsgUpe7ixqXPhz45trxNxPYA==
X-Received: by 2002:a05:622a:289:b0:40f:dd92:5c91 with SMTP id z9-20020a05622a028900b0040fdd925c91mr40898380qtw.37.1697461938785;
        Mon, 16 Oct 2023 06:12:18 -0700 (PDT)
Received: from [192.168.2.165] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id s11-20020ac85ecb000000b00419b094537esm3021486qtx.59.2023.10.16.06.12.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Oct 2023 06:12:18 -0700 (PDT)
Message-ID: <bb804269-3deb-4cd6-b344-03ac0c6aaeb0@gmail.com>
Date: Mon, 16 Oct 2023 09:12:09 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <75c7acf9196142a6a2c0fda19fe48938@iis.fraunhofer.de>
 <ee48002f-1ed7-4700-a354-6dacd367e540@gmail.com>
 <0c2366a1545f44b19cc0b4c6bff59b22@iis.fraunhofer.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <0c2366a1545f44b19cc0b4c6bff59b22@iis.fraunhofer.de>
Message-ID-Hash: BHX3WR3MEOXZUX5CIWXNXIW4UA4KCJ5P
X-Message-ID-Hash: BHX3WR3MEOXZUX5CIWXNXIW4UA4KCJ5P
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC + GNU Radio: spp is set differently
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BHX3WR3MEOXZUX5CIWXNXIW4UA4KCJ5P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2100697262052719453=="

This is a multi-part message in MIME format.
--===============2100697262052719453==
Content-Type: multipart/alternative;
 boundary="------------tbE7KQ30na3TNEKNPfnkfW7y"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------tbE7KQ30na3TNEKNPfnkfW7y
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 16/10/2023 02:29, Bachmaier, Luca wrote:
>
> Hello Marcus,
>
> when starting my flowgraph in GNU Radio it puts out this first:
>
> Generating: '/home/sdr/dev/rfnoc/fft3/fft3.py'
>
> Executing: /usr/bin/python3 -u /home/sdr/dev/rfnoc/fft3/fft3.py
>
> [INFO] [UHD] linux; GNU C++ version 12.2.0; Boost_107400;=20
> UHD_4.4.0.0-33-g4a77791c
>
> It=E2=80=99s correct that I used to have the distro packages of GNU Rad=
io and=20
> UHD installed on my system but since then I removed these versions and=20
> installed both from source, first UHD and then GNU Radio. In last line=20
> of the output above, =E2=80=9CUHD_4.4.0.0=E2=80=A6=E2=80=9D should be a=
 definitive indicator=20
> that GNU Radio uses the installation from source, right? UHD 4.4 is=20
> the version I installed from source, apt (I=E2=80=99m on a Debian syste=
m) only=20
> offers UHD 4.3 to be installed.
>
> Regards
>
> Luca
>
Run:

uhd_config_info --version

And also:

which uhd_config_info
which uhd_usrp_probe

What do those return?


> *Von:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Gesendet:* Montag, 9. Oktober 2023 18:24
> *An:* usrp-users@lists.ettus.com
> *Betreff:* [USRP-users] Re: RFNoC + GNU Radio: spp is set differently
>
> On 09/10/2023 10:56, Bachmaier, Luca wrote:
>
>     Hi all,
>
>     I=E2=80=99m currently implementing a GNU Radio flowgraph that makes=
 use of
>     the RFNoC FFT block. After fixing a bug found out by Rob Kossler
>     (mail in this mailing list from September 14) in the UHD
>     repository, the original problem persists in GNU Radio: trying to
>     use FFT lengths greater than 256 throws the error =E2=80=9Csamples =
per
>     package must not be smaller than atomic item size=E2=80=9D.
>
>     When trying to look closer into the problem I noticed that the spp
>     parameter is set differently when using the UHD python API
>     directly (script rfnoc_rx_to_file) and when using GNU Radio. I
>     added debug statements to the rfnoc_rx_streamer block that print
>     the values of spp and ais.get() (atomic item size). When calling
>     the rfnoc_rx_to_file script with a spp set to 1024 and an FFT
>     length of 1024 I get the following output:
>
>     [INFO] [0/LogPwr#0] Setting default MTU forward policy.
>
>     Using radio 0, channel 0 Attempting to connect FFT:0 to 0/Radio#0:0=
...
>
>     Requesting RX Freq: 0 MHz... Actual RX Freq: 1 MHz...
>
>     Waiting for "lo_locked": ++++++++++ locked.
>
>     Requesting samples per packet of: 1024
>
>     Actual samples per packet =3D 1024
>
>     Using streamer args:
>
>     [DEBUG] spp =3D 18446744073709551615
>
>     [DEBUG] ais.get() =3D 1
>
>     [DEBUG] spp =3D 2000
>
>     [DEBUG] ais.get() =3D 1
>
>     [DEBUG] spp =3D 2000
>
>     [DEBUG] ais.get() =3D 1024
>
>     [DEBUG] spp =3D 1024
>
>     [DEBUG] ais.get() =3D 1024
>
>     Since here spp is not smaller than ais.get(), the flowgraph is
>     able to run. When trying the same as a GNU Radio flowgraph, the
>     output is the following:
>
>     [INFO] [0/LogPwr#0] Setting default MTU forward policy.
>
>     [DEBUG] spp =3D 18446744073709551615
>
>     [DEBUG] ais.get() =3D 1
>
>     [DEBUG] spp =3D 2000
>
>     [DEBUG] ais.get() =3D 1
>
>     [DEBUG] spp =3D 2000
>
>     [DEBUG] ais.get() =3D 2048
>
>     [DEBUG] spp =3D 0
>
>     [DEBUG] ais.get() =3D 2048
>
>     For some reason, spp is finally set to zero and ais.get() is set
>     to 2048. I do not understand why, and I also don=E2=80=99t get why =
the
>     behavior is different for GNU Radio at all. Is it possible that
>     GNU Radio uses its own version of UHD? Up until now I believed
>     that GNU Radio simply uses the already installed UHD
>     implementation over the UHD Python API. If this is not the case,
>     how can I change this specific GNU Radio UHD version? I tried
>     looking into the source code of gnuradio/gr-uhd/lib/rfnoc but I do
>     not understand it unfortunately.
>
>     Regards
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
> If you installed Gnu Radio from the distros package, it will have been=20
> linked against whatever version of the UHD was also
> =C2=A0 packaged by the distro.
>
> If you then build UHD from source (with your fixes), Gnu Radio won't=20
> see that version of UHD.=C2=A0 What you might need to do is
> =C2=A0 having built your patched UHD from source, also build Gnu Radio =
from=20
> source, having first removed the installed-by-the-distro
> =C2=A0 UHD and Gnu Radio packages.
>
> This is just an emergent property of large complex software systems,=20
> the semantics of compiled languages and linking, and
> =C2=A0 conflicts between built-from-source, and installed-from-the-dist=
ro=20
> packages.
>

--------------tbE7KQ30na3TNEKNPfnkfW7y
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 16/10/2023 02:29, Bachmaier, Luca
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:0c2366a1545f44b19cc0b4c6bff59b22@iis.fraunhofer.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
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
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hello Marcus=
,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">when
            starting my flowgraph in GNU Radio it puts out this first:<o:=
p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span
            style=3D"color:#1F497D" lang=3D"EN-US">Generating:
            '/home/sdr/dev/rfnoc/fft3/fft3.py'
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span
            style=3D"color:#1F497D" lang=3D"EN-US">Executing:
            /usr/bin/python3 -u /home/sdr/dev/rfnoc/fft3/fft3.py<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span
            style=3D"color:#1F497D" lang=3D"EN-US">[INFO] [UHD] linux; GN=
U
            C++ version 12.2.0; Boost_107400; UHD_4.4.0.0-33-g4a77791c<o:=
p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span
            style=3D"color:#1F497D" lang=3D"EN-US"><o:p>=C2=A0</o:p></spa=
n></p>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span
            style=3D"color:#1F497D" lang=3D"EN-US"><o:p>=C2=A0</o:p></spa=
n></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">It=E2=80=99s
            correct that I used to have the distro packages of GNU Radio
            and UHD installed on my system but since then I removed
            these versions and installed both from source, first UHD and
            then GNU Radio. In last line of the output above,
            =E2=80=9CUHD_4.4.0.0=E2=80=A6=E2=80=9D should be a definitive=
 indicator that GNU
            Radio uses the installation from source, right? UHD 4.4 is
            the version I installed from source, apt (I=E2=80=99m on a De=
bian
            system) only offers UHD 4.3 to be installed.<o:p></o:p></span=
></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">Regards<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">Luca</span></p>
      </div>
    </blockquote>
    Run:<br>
    <br>
    uhd_config_info --version<br>
    <br>
    And also:<br>
    <br>
    which uhd_config_info<br>
    which uhd_usrp_probe<br>
    <br>
    What do those return?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:0c2366a1545f44b19cc0b4c6bff59b22@iis.fraunhofer.de">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <div
style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm 4.0=
pt">
          <div>
            <div
style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm 0cm=
 0cm">
              <p class=3D"MsoNormal"><b><span
                    style=3D"mso-fareast-language:DE">Von:</span></b><spa=
n
                  style=3D"mso-fareast-language:DE"> Marcus D. Leech
                  <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
                  <br>
                  <b>Gesendet:</b> Montag, 9. Oktober 2023 18:24<br>
                  <b>An:</b> <a class=3D"moz-txt-link-abbreviated" href=3D=
"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                  <b>Betreff:</b> [USRP-users] Re: RFNoC + GNU Radio:
                  spp is set differently<o:p></o:p></span></p>
            </div>
          </div>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          <div>
            <p class=3D"MsoNormal">On 09/10/2023 10:56, Bachmaier, Luca
              wrote:<span
                style=3D"font-size:12.0pt;mso-fareast-language:DE"><o:p><=
/o:p></span></p>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m curre=
ntly
                implementing a GNU Radio flowgraph that makes use of the
                RFNoC FFT block. After fixing a bug found out by Rob
                Kossler (mail in this mailing list from September 14) in
                the UHD repository, the original problem persists in GNU
                Radio: trying to use FFT lengths greater than 256 throws
                the error =E2=80=9Csamples per package must not be smalle=
r than
                atomic item size=E2=80=9D.</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><o:p=
></o:p></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">When trying to lo=
ok
                closer into the problem I noticed that the spp parameter
                is set differently when using the UHD python API
                directly (script rfnoc_rx_to_file) and when using GNU
                Radio. I added debug statements to the rfnoc_rx_streamer
                block that print the values of spp and ais.get() (atomic
                item size). When calling the rfnoc_rx_to_file script
                with a spp set to 1024 and an FFT length of 1024 I get
                the following output:</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><o:p=
></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">[INFO] [0/LogPwr#0] Setting default MTU
                forward policy.</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">Using radio 0, channel 0 Attempting to
                connect FFT:0 to 0/Radio#0:0...</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">Requesting RX Freq: 0 MHz... Actual RX
                Freq: 1 MHz...</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">Waiting for "lo_locked": ++++++++++ locked=
.</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">Requesting samples per packet of: 1024</sp=
an><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">Actual samples per packet =3D 1024</span><=
o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">Using streamer args:</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">=C2=A0</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">[DEBUG] spp =3D 18446744073709551615</span=
><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">[DEBUG] ais.get() =3D 1</span><o:p></o:p><=
/p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">=C2=A0</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">[DEBUG] spp =3D 2000</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">[DEBUG] ais.get() =3D 1</span><o:p></o:p><=
/p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">=C2=A0</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">[DEBUG] spp =3D 2000</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">[DEBUG] ais.get() =3D 1024</span><o:p></o:=
p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">=C2=A0</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">[DEBUG] spp =3D 1024</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">[DEBUG] ais.get() =3D 1024</span><o:p></o:=
p></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><o:p=
></o:p></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">Since here spp is
                not smaller than ais.get(), the flowgraph is able to
                run. When trying the same as a GNU Radio flowgraph, the
                output is the following:</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><o:p=
></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">[INFO] [0/LogPwr#0] Setting default MTU
                forward policy.
                <br>
                <br>
                [DEBUG] spp =3D 18446744073709551615</span><o:p></o:p></p=
>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">[DEBUG] ais.get() =3D 1</span><o:p></o:p><=
/p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">=C2=A0</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">[DEBUG] spp =3D 2000</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">[DEBUG] ais.get() =3D 1</span><o:p></o:p><=
/p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">=C2=A0</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">[DEBUG] spp =3D 2000</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">[DEBUG] ais.get() =3D 2048</span><o:p></o:=
p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">=C2=A0</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">[DEBUG] spp =3D 0</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">[DEBUG] ais.get() =3D 2048</span><o:p></o:=
p></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><o:p=
></o:p></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">For some reason, =
spp
                is finally set to zero and ais.get() is set to 2048. I
                do not understand why, and I also don=E2=80=99t get why t=
he
                behavior is different for GNU Radio at all. Is it
                possible that GNU Radio uses its own version of UHD? Up
                until now I believed that GNU Radio simply uses the
                already installed UHD implementation over the UHD Python
                API. If this is not the case, how can I change this
                specific GNU Radio UHD version? I tried looking into the
                source code of gnuradio/gr-uhd/lib/rfnoc but I do not
                understand it unfortunately.</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><o:p=
></o:p></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">Regards</span><o:=
p></o:p></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">Luca</span><o:p><=
/o:p></p>
            <p class=3D"MsoNormal"><span
style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;m=
so-fareast-language:DE"><br>
                <br>
                <o:p></o:p></span></p>
            <pre>_______________________________________________<o:p></o:=
p></pre>
            <pre>USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><o:p></o:p></pre>
            <pre>To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users-leave@lists.ettus.com</a><o:p></o:p></pre>
          </blockquote>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;m=
so-fareast-language:DE">If
              you installed Gnu Radio from the distros package, it will
              have been linked against whatever version of the UHD was
              also<br>
              =C2=A0 packaged by the distro.<br>
              <br>
              If you then build UHD from source (with your fixes), Gnu
              Radio won't see that version of UHD.=C2=A0 What you might n=
eed
              to do is<br>
              =C2=A0 having built your patched UHD from source, also buil=
d
              Gnu Radio from source, having first removed the
              installed-by-the-distro<br>
              =C2=A0 UHD and Gnu Radio packages.<br>
              <br>
              This is just an emergent property of large complex
              software systems, the semantics of compiled languages and
              linking, and<br>
              =C2=A0 conflicts between built-from-source, and
              installed-from-the-distro packages.<br>
              <br>
              <o:p></o:p></span></p>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------tbE7KQ30na3TNEKNPfnkfW7y--

--===============2100697262052719453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2100697262052719453==--
