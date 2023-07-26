Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2A47640C7
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jul 2023 22:52:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5BB06383D90
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jul 2023 16:52:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690404720; bh=YDMFnGgCw2Ar+AqBVE25/xG082ij2KQMmyPR42AMNuU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Y/T0GD90LCSKFRJ6ylK5YiGxK0rP0wQMRg4wX/hF+f+lARue9mpvpdKOJnWldczAP
	 Lm7G/K6pmPscBaw4jHDsIUFr8zoEAx+EOH/V53FVsKBNMlJR1Zp73eS60gXyE0spdp
	 3lLvb0X6naFOitMkJkRrifXuJ3AZjcO0VHLziYH+akGS+Jl1ImuAgUG4XQarUfhCVj
	 SHYERm3vpLu9krMQMFG7lrBH4Lh3oA+9SfhuzsdB8fqlMw/rATPGBhDOpOQTtzJFzA
	 xppmDhkzbenHUkwp3X3/wJBd10LbJcBkelM3h5tJjW37/rEK4+R0o/r1Sd1qj1CA2h
	 XiEcyaYEpw+qw==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id DAC33380B68
	for <usrp-users@lists.ettus.com>; Wed, 26 Jul 2023 16:51:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UaUd1U/P";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-403b3273074so876391cf.1
        for <usrp-users@lists.ettus.com>; Wed, 26 Jul 2023 13:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690404684; x=1691009484;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zY8WPl7v+U5U+gDhFNVJp5HJYMb5jRWB1AFcty6MhWs=;
        b=UaUd1U/P+iWuu2QnMrNUViMTfH1cMcKeAlfTma2btzpGA/xlzqYsJ1kFpKYiRGcaXn
         l3rujqhTAtSLtFtanbjkQFXA4LociA9pCxmwVQccMZgMBJhlrGMb2Fz2r24N3v7orhqQ
         Rti+u5kTnfwEiKOugYZIgeiPu5yVf3xqquLSYiTUS1RbaABPnJzIPzJ/1B43qf9Y6MDg
         3FGqV7soL/PjzLvzEnv3x67iif+4zJY1dNVVSBJJ0ejIiTBibCuVSTY4aethdoAoBRVd
         Dn5tFt3mRVFBi0gpFqSr1neLzLMDebcTKXfI8uRLtVjMp4Ix7BSdYiHIaXDia31d90qX
         8cqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690404684; x=1691009484;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zY8WPl7v+U5U+gDhFNVJp5HJYMb5jRWB1AFcty6MhWs=;
        b=g9DUsNKIanUQeFoezOSUHB40bt9GGcKQPzJm9ipcvXEVSaiduLkZhAHzvH+rPfebY8
         SEzmZjawK+GOfTqO+Zj8GScJmJcHPQkwSyIfUBRh7stnKcNvzvqMZvQQnIElk/CqbYUx
         1n0H9i9LPF7pxMSi8rT23CMvUSvNdiGy4LysAI7UQRoD/m4SkUu1uvk891/GBGV8cydr
         nYQiO6/YK+4mSw7GA2pWnC+e0g/39Qoj6IImrr415Gga69eH4H+urC0r9b+OiTjtwHsu
         jsJk0WL57ip1dPwJiRyjJPFn/PlB35UftMjzZ8W1nSw2LdhETf3r1VTe/jZXmBfQUtdr
         EB6Q==
X-Gm-Message-State: ABy/qLZOcl/zrdTZmVNwSNKkxwhXVfeF3Q1UkUY5BQ5NHa6lblB2M525
	B+cNE9bvBMpGYZAKI+YtokSLlNh36bQ=
X-Google-Smtp-Source: APBJJlFOBMi7XxMwJlguKJexK69DdRCegE1v4ZpE3YIuURfqUDP0QVmmV/x9ltuL8Ts1F6zIi9rYBA==
X-Received: by 2002:a05:622a:1187:b0:405:3943:3a2c with SMTP id m7-20020a05622a118700b0040539433a2cmr687937qtk.31.1690404683973;
        Wed, 26 Jul 2023 13:51:23 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id ff20-20020a05622a4d9400b00403f1a7be90sm5062667qtb.88.2023.07.26.13.51.23
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jul 2023 13:51:23 -0700 (PDT)
Message-ID: <85f24be9-3286-b80d-4eed-27cf5fae5bf7@gmail.com>
Date: Wed, 26 Jul 2023 16:51:15 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <PH0PR09MB7433546CE3D5D14F18D7005DA800A@PH0PR09MB7433.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PH0PR09MB7433546CE3D5D14F18D7005DA800A@PH0PR09MB7433.namprd09.prod.outlook.com>
Message-ID-Hash: 3UQNRBI2SSNSU7RRWWBHNTUM6XIGNMT6
X-Message-ID-Hash: 3UQNRBI2SSNSU7RRWWBHNTUM6XIGNMT6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 correct choice for coherent 4 channel RX w/ 1 TX ?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3UQNRBI2SSNSU7RRWWBHNTUM6XIGNMT6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6700168517244023821=="

This is a multi-part message in MIME format.
--===============6700168517244023821==
Content-Type: multipart/alternative;
 boundary="------------0nR5K0BVwGOUmLkS1UfGsRCG"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0nR5K0BVwGOUmLkS1UfGsRCG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/07/2023 16:47, David J Li wrote:
>
> Hi all,
>
> I=E2=80=99m currently using a USRP N310 for an application that require=
s=20
> coherent 4 channel RX w/ the ability to TX on 1 channel as well. In=20
> the past, I=E2=80=99ve used USRP X310s to do 4 channel coherent RX and =
found=20
> the calibration process for that to be relatively straight forward=20
> using the TwinRX cards. It was simply phase aligned input signals into=20
> each RX port and computing the constant phase offset between channels=20
> and just adjusting for that factor in my processing digitally.
>
> My understanding is that this is more complicated w/ the N310. The=20
> procedure as I understand is that during initialization the N310=20
> external LO needs to be set at 5 GHz. After initialization, the=20
> external LO can be set to 2 times the desired center freq, but that=20
> there is still a 180 deg ambiguity between channels which would need=20
> to be figured out via calibration w/ a phase aligned input signal. Is=20
> this correct? Is there some way to shorten or optimize this procedure?
>
The phase ambiguity arises from the 2XLO mixing in the RFIC chips, and=20
there's no way around it.

You might look at the N320/N321 family for multi-channel coherent TX/RX=20
applications.

> Second question would be if the process is simpler on different USRP=20
> models akin to how the X310 w/ TwinRX cards work where you just need=20
> to compute some calibration values once at powerup and afterwards=20
> those values hold pretty true for a long time as long as your=20
> gain/center freq don=E2=80=99t change. Having the requirement of being =
able to=20
> TX on at least 1 channel prevents me from using an X310 w/ TwinRX cards=
.
>
> Thanks,
>
> -David
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------0nR5K0BVwGOUmLkS1UfGsRCG
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/07/2023 16:47, David J Li wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:PH0PR09MB7433546CE3D5D14F18D7005DA800A@PH0PR09MB7433.namprd09=
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
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}span.EmailStyle17
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
        <p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I=E2=80=99m currently using a USRP N310 fo=
r an
          application that requires coherent 4 channel RX w/ the ability
          to TX on 1 channel as well. In the past, I=E2=80=99ve used USRP=
 X310s
          to do 4 channel coherent RX and found the calibration process
          for that to be relatively straight forward using the TwinRX
          cards. It was simply phase aligned input signals into each RX
          port and computing the constant phase offset between channels
          and just adjusting for that factor in my processing digitally.
          <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">My understanding is that this is more
          complicated w/ the N310. The procedure as I understand is that
          during initialization the N310 external LO needs to be set at
          5 GHz. After initialization, the external LO can be set to 2
          times the desired center freq, but that there is still a 180
          deg ambiguity between channels which would need to be figured
          out via calibration w/ a phase aligned input signal. Is this
          correct? Is there some way to shorten or optimize this
          procedure? </p>
      </div>
    </blockquote>
    The phase ambiguity arises from the 2XLO mixing in the RFIC chips,
    and there's no way around it.<br>
    <br>
    You might look at the N320/N321 family for multi-channel coherent
    TX/RX applications.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:PH0PR09MB7433546CE3D5D14F18D7005DA800A@PH0PR09MB7433.namprd09=
.prod.outlook.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Second question would be if the process is
          simpler on different USRP models akin to how the X310 w/
          TwinRX cards work where you just need to compute some
          calibration values once at powerup and afterwards those values
          hold pretty true for a long time as long as your gain/center
          freq don=E2=80=99t change. Having the requirement of being able=
 to TX
          on at least 1 channel prevents me from using an X310 w/ TwinRX
          cards.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
        <p class=3D"MsoNormal">-David<o:p></o:p></p>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------0nR5K0BVwGOUmLkS1UfGsRCG--

--===============6700168517244023821==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6700168517244023821==--
