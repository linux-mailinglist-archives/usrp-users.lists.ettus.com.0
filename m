Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A254457E0
	for <lists+usrp-users@lfdr.de>; Thu,  4 Nov 2021 18:03:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BA798384137
	for <lists+usrp-users@lfdr.de>; Thu,  4 Nov 2021 13:03:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JDQWG9v1";
	dkim-atps=neutral
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 0122D384137
	for <usrp-users@lists.ettus.com>; Thu,  4 Nov 2021 13:02:41 -0400 (EDT)
Received: by mail-qt1-f173.google.com with SMTP id v4so4726758qtw.8
        for <usrp-users@lists.ettus.com>; Thu, 04 Nov 2021 10:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=k1ZlY6mA8TJ9yruxTbHK07XWfKXKL0xhll/IroCiMNQ=;
        b=JDQWG9v1f8Otqu2rO4i2vSmhR0OLxooCtItNMDYhB+lIUMaVjrm5AIoWY+/2Ip7dPo
         k+968FjNMbox8881ESb3QXJlZ4CljSF1TAmBsnCZ38pVdBSAIk7MF8iFih3JZ4YorkJ0
         8oNteHsK1llxIu+0VO0lokmBFrQiZTEqnpDFq+IXWM9qtpbxglANyedx7Eg0X7ILaFbC
         mWvTu+qYJVO2Mt+Ofqtl0bPcjR7ksJ2snLc+s5jNMg2mcDdRwV70NBCjSh4UM34GszKJ
         gr7DcznRvwqoBWBknaYFpFvT9W47S07goKR1xXTw12N+PB+QqLhWiQTCsznifsFtDoz+
         D9nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=k1ZlY6mA8TJ9yruxTbHK07XWfKXKL0xhll/IroCiMNQ=;
        b=Na2Ck+qmADCbpBI/sIH5/Ps8XRG3DUMw4Xd4sG6wG6uO70lXuKmW3rTKGc00JOLeIg
         LlDqhhhuXPM+vGEt42z6PnzdMdINCu5gk7Lm9Wnl8RCyGNBVKS+yxDfmWC+WsGNXpbGN
         MvRaHNyvDbdMwGQEbIwtKvFXsQAX90I3lBAYfiVgY9HVJDQ5ZaGb3BgMNUOq7b8XaWm0
         MSLr4UPDEIN25NeTqwFneNF3RQD1vYexl4OUgln3dEe3LfGLIOV9hlfD/ZIGTQ/AIb6z
         G0vAkFiCqe0Au2/7qcSlW5V48FKiwQwd98nZ5xB+NNhVgY6IeUdJOs4Bu6I3anxegWUR
         tjMw==
X-Gm-Message-State: AOAM531Gr8UGppN5JF9c4NZSyXD60Brj87Tf9N+6Oinw6vGP/d+4FP1H
	ZfkOH96rtsyo9tMyrnh4e7QK/aEO6HM=
X-Google-Smtp-Source: ABdhPJwl+Lgwpl9S3xAqPRJJFiEymrkwpYKgR4BFdrPCgnqC6QIVCKuR+zVh/zPjV1h1hVVvnlD1Kg==
X-Received: by 2002:ac8:5a0a:: with SMTP id n10mr55022830qta.54.1636045361287;
        Thu, 04 Nov 2021 10:02:41 -0700 (PDT)
Received: from [192.168.2.248] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id u17sm4461632qtx.51.2021.11.04.10.02.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Nov 2021 10:02:40 -0700 (PDT)
Message-ID: <5ecac431-05a3-8e6e-f1b8-a81b2ad005be@gmail.com>
Date: Thu, 4 Nov 2021 13:02:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CO6PR09MB784803715D92E3A08E05659CC68D9@CO6PR09MB7848.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CO6PR09MB784803715D92E3A08E05659CC68D9@CO6PR09MB7848.namprd09.prod.outlook.com>
Message-ID-Hash: 23RAGU3GI33CZQMADTKXZGWRJG6I5KMI
X-Message-ID-Hash: 23RAGU3GI33CZQMADTKXZGWRJG6I5KMI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 test_pps_input
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/23RAGU3GI33CZQMADTKXZGWRJG6I5KMI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4838227236035698234=="

This is a multi-part message in MIME format.
--===============4838227236035698234==
Content-Type: multipart/alternative;
 boundary="------------MKnyRYci9w0e1BhLnpHmy7k3"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------MKnyRYci9w0e1BhLnpHmy7k3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-04 11:09, Carey, Samuel Craig via USRP-users wrote:
>
> Howdy,
>
> I=E2=80=99m trying to verify whether an E310 is synchronizing its clock=
 based=20
> on a PPS input signal.
>
> I tried running the test_pps_input UHD example with =E2=80=93source opt=
ion set=20
> to =E2=80=9Cgpsdo=E2=80=9D, =E2=80=9Cexternal=E2=80=9D, and the default=
.
>
> Even after I had disconnected the PPS input and GPS input, this test=20
> reported =E2=80=9CSUCCESS!=E2=80=9D
>
> I tried measuring the center frequency of an input reference tone from=20
> a separate signal generator and there was an obvious improvement in=20
> accuracy when the PPS was connected vs. not connected.
>
> Why is this test reporting success when the PPS input is not even prese=
nt?
>
> Is there a better way to check whether the E310 clock is locked to a=20
> PPS input?
>
> This is happening on multiple E310 devices.
>
> The UHD version is reported during test execution as=20
> =E2=80=9CUHD_003.009.002-0-unknown=E2=80=9D. I cannot easily update the=
 version.
>
> Thanks,
>
> Sam Carey
>
> /R&D S&E, Computer Engineering/
>
> /Sandia National Laboratories/
>
> /Org. 7662, Telemetry and Software Systems/
>
> /Mobile: (505) 239-2698/
>
>
>
On the E310, there's always a PPS signal, even without an external 1PPS=20
reference.=C2=A0 It generates 1PPS internally.



--------------MKnyRYci9w0e1BhLnpHmy7k3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-04 11:09, Carey, Samuel
      Craig via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CO6PR09MB784803715D92E3A08E05659CC68D9@CO6PR09MB7848.namprd09=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Howdy,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I=E2=80=99m trying to verify whether an E3=
10 is
          synchronizing its clock based on a PPS input signal.<o:p></o:p>=
</p>
        <p class=3D"MsoNormal">I tried running the test_pps_input UHD
          example with =E2=80=93source option set to =E2=80=9Cgpsdo=E2=80=
=9D, =E2=80=9Cexternal=E2=80=9D, and
          the default.<o:p></o:p></p>
        <p class=3D"MsoNormal">Even after I had disconnected the PPS inpu=
t
          and GPS input, this test reported =E2=80=9CSUCCESS!=E2=80=9D<o:=
p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I tried measuring the center frequency of
          an input reference tone from a separate signal generator and
          there was an obvious improvement in accuracy when the PPS was
          connected vs. not connected.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Why is this test reporting success when th=
e
          PPS input is not even present?<o:p></o:p></p>
        <p class=3D"MsoNormal">Is there a better way to check whether the
          E310 clock is locked to a PPS input?<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">This is happening on multiple E310 devices=
.<o:p></o:p></p>
        <p class=3D"MsoNormal">The UHD version is reported during test
          execution as =E2=80=9CUHD_003.009.002-0-unknown=E2=80=9D. I can=
not easily
          update the version.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
        <p class=3D"MsoNormal">Sam Carey<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><i><span style=3D"font-family:&quot;Courie=
r
              New&quot;">R&amp;D S&amp;E, Computer Engineering<o:p></o:p>=
</span></i></p>
        <p class=3D"MsoNormal"><i><span style=3D"font-family:&quot;Courie=
r
              New&quot;">Sandia National Laboratories<o:p></o:p></span></=
i></p>
        <p class=3D"MsoNormal"><i><span style=3D"font-family:&quot;Courie=
r
              New&quot;">Org. 7662, Telemetry and Software Systems<o:p></=
o:p></span></i></p>
        <p class=3D"MsoNormal"><i><span style=3D"font-family:&quot;Courie=
r
              New&quot;">Mobile: (505) 239-2698<o:p></o:p></span></i></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
      <br>
      <br>
    </blockquote>
    On the E310, there's always a PPS signal, even without an external
    1PPS reference.=C2=A0 It generates 1PPS internally.<br>
    <br>
    <br>
    <br>
  </body>
</html>
--------------MKnyRYci9w0e1BhLnpHmy7k3--

--===============4838227236035698234==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4838227236035698234==--
