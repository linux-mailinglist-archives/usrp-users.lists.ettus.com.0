Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 118C44C48B2
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 16:23:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ECB78384882
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 10:23:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PQgeNa+K";
	dkim-atps=neutral
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 88AD9384565
	for <usrp-users@lists.ettus.com>; Fri, 25 Feb 2022 10:22:14 -0500 (EST)
Received: by mail-qt1-f179.google.com with SMTP id w1so2690097qtj.2
        for <usrp-users@lists.ettus.com>; Fri, 25 Feb 2022 07:22:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=Mm66iMPfkmNKu5uKoqNRanjdL/WC6WSv7M8qA/eqZeQ=;
        b=PQgeNa+KenBNQQ19NR5m6WoZxS/Wy4qjiQFspOAzVu3FhQoN/daqpI0Y1Nvs5L4Rlj
         gKD4N46Gu6pK83UGmgBYddFyj9sdfrZTJoEHGmEY4Pe+h8I0BWUoB8vJ1840gcTztXJq
         MacPBJjqvaXhjwFEs8bpd/0ljlXmdr3Y4q+RE6Pt1Jk9LhQ+PjlthqJ2g9hmLZ0mqCZZ
         brzAzjmS7UAiIwZ7VIvIK8570cwLQccK5zaHasUVffOoJCpCnRRJvMvbveM8i4fI+hoW
         SyesMQnMszsR/jl8Xv+ohIuIY8IduHz7pEZoBcxLgXPj7Q2RxyRu+9ni7jguIUOplLVk
         ALRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=Mm66iMPfkmNKu5uKoqNRanjdL/WC6WSv7M8qA/eqZeQ=;
        b=LA3Ibze8mtBrlVUBc0lPlSQX98HoT8SX/XVhij7dsdyUAuZNQ8kOqfTfuOj3SlgPXO
         oh90KUkCRPGwDSMpBB7LDaT1cmSIpIWyR3/hXJ6bZDWkciVObGkQFkMehV28b3wkxQNh
         xSRsP23XnT0rdz8CUzdp+Ndk9vR5SKjhO8qn6UCsHoy7ifhJ2RgFZihzSxYPonduVuVh
         kA8xUrso2SThuiTiOfNHnAqGJnXrTavZwUaIl18N8ONs0GWHQbgeHblby6AwEffy+IvP
         VaRrCP0Nq59pJ3xkhxz25inYzdHwbV5HM08I4USReVTFJiL1bKzVRMXvB++Fq6iuuvqg
         tt4g==
X-Gm-Message-State: AOAM531kq2frHj2FmuDXH/uBH7yl9vFvVOe4zaY5565m01Pp1H8nw8fq
	XnmNYXYxrLPxX/eaDYcF2qsCeN3Pv3UavQ==
X-Google-Smtp-Source: ABdhPJxlZhO1bAdGLTbD38B94ktF3gc9TTl7VSpbDmlI8/uAuYTSfNAmTYcrEgzjR/M8A2umakANQQ==
X-Received: by 2002:a05:622a:1a98:b0:2de:2c25:dcca with SMTP id s24-20020a05622a1a9800b002de2c25dccamr7238526qtc.121.1645802533527;
        Fri, 25 Feb 2022 07:22:13 -0800 (PST)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id g7-20020a376b07000000b006492f19ae76sm1353253qkc.27.2022.02.25.07.22.13
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Feb 2022 07:22:13 -0800 (PST)
Message-ID: <945ac0f4-1724-3472-84cd-1be23fb5c50f@gmail.com>
Date: Fri, 25 Feb 2022 10:22:12 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <PH1P110MB16650FA41146FF675795EAFDB73E9@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PH1P110MB16650FA41146FF675795EAFDB73E9@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: CRX34DTYTUDTLYMNQ75OLHGTVBIS62QO
X-Message-ID-Hash: CRX34DTYTUDTLYMNQ75OLHGTVBIS62QO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Question about external refclk into N320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CRX34DTYTUDTLYMNQ75OLHGTVBIS62QO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0940126517266076276=="

This is a multi-part message in MIME format.
--===============0940126517266076276==
Content-Type: multipart/alternative;
 boundary="------------rokHH7vU1QtMAwMHmwhBNNKH"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------rokHH7vU1QtMAwMHmwhBNNKH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-25 10:17, David Raeman wrote:
>
> Hi all, I=E2=80=99d like to provide an external 10MHz sinusoidal clock =
to an=20
> N320.=C2=A0 The clock signal level is below the 10dBm max spec for this=
=20
> radio, however it=E2=80=99s a bipolar sinewave (1.8Vpp, centered at 0V)=
. I=20
> think this is somewhat common for sinewave oscillators. The N320=20
> documentation isn=E2=80=99t clear on whether this is acceptable, or whe=
ther=20
> the external clock must have a DC bias even if its sinewave. Looking=20
> at the schematic, the clock feeds into a TI CDC3RL02, which seems to=20
> indicate the sinusoid must have DC offset applied to keep it above=20
> ~0.3V. Can somebody please confirm?
>
> Thanks!
>
>
It seems likely that you'll need that DC offset to keep the TI chip happy=
.



--------------rokHH7vU1QtMAwMHmwhBNNKH
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-25 10:17, David Raeman
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:PH1P110MB16650FA41146FF675795EAFDB73E9@PH1P110MB1665.NAMP110.=
PROD.OUTLOOK.COM">
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
        <p class=3D"MsoNormal">Hi all, I=E2=80=99d like to provide an ext=
ernal
          10MHz sinusoidal clock to an N320.=C2=A0 The clock signal level=
 is
          below the 10dBm max spec for this radio, however it=E2=80=99s a
          bipolar sinewave (1.8Vpp, centered at 0V). I think this is
          somewhat common for sinewave oscillators. The N320
          documentation isn=E2=80=99t clear on whether this is acceptable=
, or
          whether the external clock must have a DC bias even if its
          sinewave. Looking at the schematic, the clock feeds into a TI
          CDC3RL02, which seems to indicate the sinusoid must have DC
          offset applied to keep it above ~0.3V. Can somebody please
          confirm?<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <br>
      </div>
    </blockquote>
    It seems likely that you'll need that DC offset to keep the TI chip
    happy.=C2=A0 <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------rokHH7vU1QtMAwMHmwhBNNKH--

--===============0940126517266076276==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0940126517266076276==--
