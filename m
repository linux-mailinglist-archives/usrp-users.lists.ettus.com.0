Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFFB454A51
	for <lists+usrp-users@lfdr.de>; Wed, 17 Nov 2021 16:51:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7B3A13818DA
	for <lists+usrp-users@lfdr.de>; Wed, 17 Nov 2021 10:51:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VLNP5fu9";
	dkim-atps=neutral
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 8EA833818C8
	for <usrp-users@lists.ettus.com>; Wed, 17 Nov 2021 10:51:00 -0500 (EST)
Received: by mail-qt1-f175.google.com with SMTP id v22so3016739qtx.8
        for <usrp-users@lists.ettus.com>; Wed, 17 Nov 2021 07:51:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=90sqn/GzrboYMjj1KoYa4kB2C7QwLWv7XkCpW1ZbjZU=;
        b=VLNP5fu9TKV4VLHXUzLCCV4gcmP+1laWF5sS/0O9dLpsX78xQkk4unylxKNnU+NFYs
         0S8iukWGE//TnmfUAZWq4O2ok/q1DvIcP2pDryDIQWzKgCOW0se17GFB/Zu2NxVpfGqT
         KSYtgqbCoE1JoF9lbGV6iyE8uZ+UnNTTrLi4arplv0vGT7wAz6WLfYTOmTOcau7b1l7M
         vuntI+xFtC17SAs7zpHBm/r8ksvdEKgO5Rim6SqIcgx/5gwmpzafvLKGj7KGM77hJVHA
         PRagMGT2zFGIV/IMwGMexbyVZKGsN/11tmxO2zV19ZMRwxJsgSdgCm6vw5CWsZw9gzeP
         nKNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=90sqn/GzrboYMjj1KoYa4kB2C7QwLWv7XkCpW1ZbjZU=;
        b=4rKT9ExP8AjOS0NRS41s3kH0VM49jbcObXEDYNhrEcLUhRYw5xCFB7oxiuqpvtbmaF
         x7tYAs0VU8r8NBSuDB4GYldEkpikhj2fczqaKoXpe9EKXffaY2tEjh8alxt32uG1dsC9
         L397+aPs7qYnhuWaSz5uVr0w/LP4BdYzSx9ghehmtHNCbxAHEerya3EbKR9vyseFpTmr
         wYmoiz96fedJ8PJ5h139Q/HIttH1Rf/CCL7WLC/FNrGb0J3VFL7qJ/lG7pZRh9i+91o7
         jQ67pndLP1WWXPUwDoyvSwcTmpkqmY8qbb/KUBrZPQEp3js9B6OtxZadUpjVo8QKJ8Cv
         hzOg==
X-Gm-Message-State: AOAM531czZZ9hYyKX5yL0iPWYeseOVw09kayRzX7u51xm/fCJ6SvvlXC
	SivQO29ZwIm+VkYKR0xp4OU=
X-Google-Smtp-Source: ABdhPJze7uGqDMtYXp01nW7OPZcbqkKaN+pL29nzAIQu71O5yPrmhatYl6sLF3frcEALURGBaXaC0w==
X-Received: by 2002:ac8:45d2:: with SMTP id e18mr18310093qto.112.1637164259943;
        Wed, 17 Nov 2021 07:50:59 -0800 (PST)
Received: from [192.168.2.222] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id x125sm74241qkd.8.2021.11.17.07.50.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Nov 2021 07:50:59 -0800 (PST)
Message-ID: <f2e476e2-20c7-5f0d-18ff-fb14ba86d223@gmail.com>
Date: Wed, 17 Nov 2021 10:50:57 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Guillermo Ortas Delgado <g.ortas@gmv.com>, Rob Kossler <rkossler@nd.edu>
References: <d636bd419e2548878b27baeacbca4b39@gmv.com>
 <6cc298a5-c5c6-27e4-f5d6-b23a2975e372@gmail.com>
 <CAB__hTQY491Q0xiYWY75hTpbEV3u744uYMr9EK3xk-R-Lzy+RQ@mail.gmail.com>
 <1e81a40f9ccc4a15be101a63c926b8f7@gmv.com>
 <836ea247-5c8d-c5cd-86d9-78372ef7f99e@gmail.com>
 <CAB__hTTPKrcry6NmiP8sLuH1TGsu1tq3q=3Rh+DE1mBXmw3zRw@mail.gmail.com>
 <fd555cbc7d2c4498bd1fa48ee720af7d@gmv.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <fd555cbc7d2c4498bd1fa48ee720af7d@gmv.com>
Message-ID-Hash: QS27ODB6GVTLLECHXI77QZJG5F7L2DF3
X-Message-ID-Hash: QS27ODB6GVTLLECHXI77QZJG5F7L2DF3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK drops samples at low rates
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QS27ODB6GVTLLECHXI77QZJG5F7L2DF3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7739382538210256392=="

This is a multi-part message in MIME format.
--===============7739382538210256392==
Content-Type: multipart/alternative;
 boundary="------------IACePCg0aK4LO0GUEQx0TzOh"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------IACePCg0aK4LO0GUEQx0TzOh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-17 04:50, Guillermo Ortas Delgado wrote:
>
> Thanks for your message, I already have the mbuf size maxed out to 512=20
> (that=E2=80=99s the maximum value it will take).
>
> I have noticed that DPDPK v19.11 made great improvements to the BNXT=20
> driver. Is there any chance to get UHD running with DPDK 19.11? Or=20
> even better 20.11.3?
>
> Both are long-term support releases which are more mature and support=20
> vector mode, which offers must better performance.
>
> Quote from DPDK 19.11:
> =E2=80=9CThe BNXT PMD includes support for SSE vector mode on x86 platf=
orms.=20
> Vector provides *significantly improved performance* over the base=20
> implementation=E2=80=9D
>
> I already tried building UHD 4.1.0.4 with DPDK 19.11 by modifying the=20
> makefile to accept this version, but the build fails.
>
> I would really appreciate it if you could add support for newer=20
> versions of DPDK.
>
> Best,
>
> Guillermo
>
>
The main issue with moving to newer versions of DPDK (which I understand=20
*is* in the pipe-line, just not sure when), is that
 =C2=A0 DPDK keeps changing their mind on the API that applications use t=
o=20
interact with it.=C2=A0 This makes maintenance of those
 =C2=A0 applications really hard.

Again, my understanding is that moving to newer DPDK is definitely "on=20
the list", but I have no insight into priorities.

You'd previously noted that *without* DPDK you can sustain high=20
rates--across all 4 of your USRPs or just two of them.

Streaming at max rate from all 4 of your USRPs (8 channels) is going to=20
be a significant challenge, regardless of the
 =C2=A0 fraction of that challenge that is presented by the network layer=
.

What type of host computer do you have to do this?=C2=A0 Are you streamin=
g=20
directly into GPUs, or do you have some other
 =C2=A0 architecture?=C2=A0 8 channels at max rate really is a significan=
t hurdle.


--------------IACePCg0aK4LO0GUEQx0TzOh
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-17 04:50, Guillermo Ortas
      Delgado wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:fd555cbc7d2c4498bd1fa48ee720af7d@gmv.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}span.EstiloCorreo18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.EstiloCorreo19
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">Thanks for your message, I already have the
            mbuf size maxed out to 512 (that=E2=80=99s the maximum value =
it will
            take).<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">I have noticed that DPDPK v19.11 made great
            improvements to the BNXT driver. Is there any chance to get
            UHD running with DPDK 19.11? Or even better 20.11.3?<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">Both are long-term support releases which are
            more mature and support vector mode, which offers must
            better performance.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">Quote from DPDK 19.11:<br>
            =E2=80=9CThe BNXT PMD includes support for SSE vector mode on=
 x86
            platforms. Vector provides
            <b>significantly improved performance</b> over the base
            implementation=E2=80=9D<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">I already tried building UHD 4.1.0.4 with DPDK
            19.11 by modifying the makefile to accept this version, but
            the build fails.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">I would really appreciate it if you could add
            support for newer versions of DPDK.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D"
            lang=3D"EN-US">Best,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D"
            lang=3D"EN-US">Guillermo</span><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D"
            lang=3D"EN-US">
            <o:p></o:p></span></p>
        <br>
      </div>
    </blockquote>
    The main issue with moving to newer versions of DPDK (which I
    understand *is* in the pipe-line, just not sure when), is that<br>
    =C2=A0 DPDK keeps changing their mind on the API that applications us=
e to
    interact with it.=C2=A0 This makes maintenance of those<br>
    =C2=A0 applications really hard.<br>
    <br>
    Again, my understanding is that moving to newer DPDK is definitely
    "on the list", but I have no insight into priorities.<br>
    <br>
    You'd previously noted that *without* DPDK you can sustain high
    rates--across all 4 of your USRPs or just two of them.<br>
    <br>
    Streaming at max rate from all 4 of your USRPs (8 channels) is going
    to be a significant challenge, regardless of the<br>
    =C2=A0 fraction of that challenge that is presented by the network
    layer.=C2=A0 <br>
    <br>
    What type of host computer do you have to do this?=C2=A0 Are you
    streaming directly into GPUs, or do you have some other<br>
    =C2=A0 architecture?=C2=A0 8 channels at max rate really is a signifi=
cant
    hurdle.<br>
    <br>
    <br>
  </body>
</html>
--------------IACePCg0aK4LO0GUEQx0TzOh--

--===============7739382538210256392==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7739382538210256392==--
