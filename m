Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2A76052EB
	for <lists+usrp-users@lfdr.de>; Thu, 20 Oct 2022 00:21:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1CF40383CB0
	for <lists+usrp-users@lfdr.de>; Wed, 19 Oct 2022 18:21:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666218062; bh=cMnfddgI+KllMNlj3gOFTpzeITNoActSfX5hUtdZfd4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ZMj6EJnmIF+G80H0swzCzXLF8nlAdii1nXFJnJSJLJmaxnz0elBJdmAtIy1tah4H/
	 iZRbN4Xd2WRwxDl17M4hLukFSbgVGDSJWcUGkEKZUMCYrwk6I/50kpmZphNtndP5pk
	 FTYRo7Mi7/uuWnS+q8usIw2Y14MeelVjy/leBvPTYwCumgkBb+jywVdRZr1BukA9Hw
	 x21LX1upcuGGfujW7WPhNuMrCv6606KRBoqj735WP/vxk4crIWdKP/GKQxLTaurrmc
	 GW4YzqCBQh+j+SeIz2vIp0Kk28jbKk7yS3urHomc/JQhsU4yf8SU28H87fJ4m5yZkM
	 Z5COYTVw5wQUw==
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 667B4383C07
	for <usrp-users@lists.ettus.com>; Wed, 19 Oct 2022 18:20:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="I2+IMOoA";
	dkim-atps=neutral
Received: by mail-qt1-f178.google.com with SMTP id w3so12646388qtv.9
        for <usrp-users@lists.ettus.com>; Wed, 19 Oct 2022 15:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=433WoEMvniDFIyboQxgVKQciQKgT3K3j0dbLTUJnuOY=;
        b=I2+IMOoAKTWte6xoVPLZLdh2B0bsH/7cHi/lrsTilKopOnomz8gx5U1ZidGMYeUoLJ
         CS9YoQUBVtsE4DhKihFpMHbUFCvj5SZ5fERJRpBF0XYbT3IopPTA1AqpkoQJr+1DyGU3
         6XCi504xNJu2zjAu7ndF555VLp19r0PnSHLlPU14+MvIZCjSqCeSd0+TXXxqOJhsVjk3
         EDJiyxstGvGW7hboihD5a0szuUSUVol2g+10Oufqx8PzgxoQnQ/JcwKj9C8FiNsAHWxY
         xt/wnLQCQEiG/47f90D1fpSqs3kD4bIBV+zX1DRiiTRmbv4GucjG8x4MA/1go4GPkJB6
         2Wyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=433WoEMvniDFIyboQxgVKQciQKgT3K3j0dbLTUJnuOY=;
        b=sN3Uq1t8HzOdpDfz3TPlHMSkn9pt3tcPtYqxCG3cATCi59q7O+V3K5fzuD6ajVfllX
         uELE0FQTovZxUcmdLSexsQN1MpJHPXHlGNUGf8VHfAC+/yA8iSBut/6NiQhMvNXW1gG8
         KqIrmISIhEkp0WFlWqntzz8Hbth6CkdE148yOVpV/YkW9JYafAv1FFIJtNnKDbT2doXu
         NYASVt66YEV21aDTBWMshOmWnvu/3jaPIIleomPyDskSSqsJn80FsO7BUUyrHviDmzCG
         Aw8V/NRJrxqs4koafo2NqlacgKxUC41E3MzgWQMYD1QHl0LLo+W5lsiif0qzU7fLyJ2M
         QLVQ==
X-Gm-Message-State: ACrzQf1Lq8y1b7WX7sYv5lG6gDgtHg2CAIrckdg/LVCKQuZF4Zr1rd/6
	otPhKLASrYEAghvaOqqfqRbALXEwF5o=
X-Google-Smtp-Source: AMsMyM7Su4v13MXpIGmBYU+UbTLAYeVqk98DlG7jwy36EDsm1ZGx78xsczW54ge3i1fSt4zjijHzCA==
X-Received: by 2002:ac8:5a05:0:b0:39d:8a5:356d with SMTP id n5-20020ac85a05000000b0039d08a5356dmr2218083qta.472.1666218015748;
        Wed, 19 Oct 2022 15:20:15 -0700 (PDT)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id s10-20020a05620a29ca00b006e07228ed53sm6080810qkp.18.2022.10.19.15.20.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 15:20:15 -0700 (PDT)
Message-ID: <eddd1e24-75df-3723-28f9-4979e43dff4e@gmail.com>
Date: Wed, 19 Oct 2022 18:20:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BYAPR16MB2952D76B86E7A8A82923FB3FB9289@BYAPR16MB2952.namprd16.prod.outlook.com>
 <7e0821ca-636a-88f6-eb38-c58cc7d408d4@gmail.com>
 <BYAPR16MB2952EA77A2796D897FF4399EB9289@BYAPR16MB2952.namprd16.prod.outlook.com>
 <CAL7q81uMR0y-qCWZSqFbiuEMp3kTgW2n5cYQK=-AtP0_HCz9Ug@mail.gmail.com>
 <BYAPR16MB2952D2002B1535C032E87FE7B92B9@BYAPR16MB2952.namprd16.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BYAPR16MB2952D2002B1535C032E87FE7B92B9@BYAPR16MB2952.namprd16.prod.outlook.com>
Message-ID-Hash: DHTGMAPY6MI4HIPVELOT5ZNUZ6OZMUA6
X-Message-ID-Hash: DHTGMAPY6MI4HIPVELOT5ZNUZ6OZMUA6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [ERROR] [RFNOC::GRAPH] Error during initialization of block 0/Radio#0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DHTGMAPY6MI4HIPVELOT5ZNUZ6OZMUA6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2641010729102334620=="

This is a multi-part message in MIME format.
--===============2641010729102334620==
Content-Type: multipart/alternative;
 boundary="------------RmRb024CesmoGLI8WoQUiRSW"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------RmRb024CesmoGLI8WoQUiRSW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-10-19 17:51, Jonathan Pratt wrote:
>
> Thanks for the information. we would be surprised if it wasn=E2=80=99t =
a=20
> hardware issue.
>
> A more full story=C2=A0 is that we have three systems deployed and are =
not=20
> physically accessible (and not returnable) so that we cannot do any=20
> hardware diagnostics. The other two systems have died and are not=20
> visible on their network interfaces. They actually died before=20
> deployment but the team responsible for the enclosure and power supply=20
> sequencing failed to let us know prior to the deployment date that=20
> they were non-functioning. One of these we have tried to recover=20
> through JTAG reprogramming but no success there. As for this last one=20
> that was working at the time of deployment, a insignificant=20
> (incidental) amount of investigation showed that the power sequencing=20
> affected whether or not the x310 was functioning. Now it appears but=20
> is failing with the error as described. The people responsible for the=20
> enclosure also made it exceedingly difficult for us to do even=20
> software diagnostics by choosing a USB port for their convenience=20
> rather than the alternative one we specified resulting in limited=20
> access of the processing platform (that is running gnu radio) so that=20
> the only thing we can do is insert a USB drive with arbitrary code on=20
> it which will get executed when the power is cycled. This makes=20
> reprogramming UHD difficult and treacherous. We only have access to=20
> these systems in this way for one more day, so everything is looking gr=
im.
>
> Personally, I suspect that the power switching has fried 2 =C2=BD x310s=
 and=20
> this project is a dead loss for us.
>
> thanks - JP
>
>
It would be useful to the rest of us to know exactly how you believe the=20
power sequencing led to the failure of these devices.
 =C2=A0 I understand, given the domain of use, that such information may =
not=20
be readily available.

But if the power-sequencing to an X310 can fry it, I think this=20
community would surely like to know how...


--------------RmRb024CesmoGLI8WoQUiRSW
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-10-19 17:51, Jonathan Pratt
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BYAPR16MB2952D2002B1535C032E87FE7B92B9@BYAPR16MB2952.namprd16=
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
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
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
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
>Thanks
            for the information. we would be surprised if it wasn=E2=80=99=
t a
            hardware issue.<br>
            <br>
            A more full story=C2=A0 is that we have three systems deploye=
d
            and are not physically accessible (and not returnable) so
            that we cannot do any hardware diagnostics. The other two
            systems have died and are not visible on their network
            interfaces. They actually died before deployment but the
            team responsible for the enclosure and power supply
            sequencing failed to let us know prior to the deployment
            date that they were non-functioning. One of these we have
            tried to recover through JTAG reprogramming but no success
            there. As for this last one that was working at the time of
            deployment, a insignificant (incidental) amount of
            investigation showed that the power sequencing affected
            whether or not the x310 was functioning. Now it appears but
            is failing with the error as described. The people
            responsible for the enclosure also made it exceedingly
            difficult for us to do even software diagnostics by choosing
            a USB port for their convenience rather than the alternative
            one we specified resulting in limited access of the
            processing platform (that is running gnu radio) so that the
            only thing we can do is insert a USB drive with arbitrary
            code on it which will get executed when the power is cycled.
            This makes reprogramming UHD difficult and treacherous. We
            only have access to these systems in this way for one more
            day, so everything is looking grim.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
>Personally,
            I suspect that the power switching has fried 2 =C2=BD x310s a=
nd
            this project is a dead loss for us.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
>thanks
            - JP <o:p></o:p></span></p>
        <br>
      </div>
    </blockquote>
    It would be useful to the rest of us to know exactly how you believe
    the power sequencing led to the failure of these devices.<br>
    =C2=A0 I understand, given the domain of use, that such information m=
ay
    not be readily available.<br>
    <br>
    But if the power-sequencing to an X310 can fry it, I think this
    community would surely like to know how...<br>
    <br>
    <br>
  </body>
</html>

--------------RmRb024CesmoGLI8WoQUiRSW--

--===============2641010729102334620==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2641010729102334620==--
