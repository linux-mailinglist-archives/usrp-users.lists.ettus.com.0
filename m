Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF724F3DF5
	for <lists+usrp-users@lfdr.de>; Tue,  5 Apr 2022 22:37:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2BF083842B1
	for <lists+usrp-users@lfdr.de>; Tue,  5 Apr 2022 16:37:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649191052; bh=w0B7dSxkr9z+P1Cwdxv1s10xs3BXKXtVlqqNhJgNdsA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=bfZkkk55VYT6bItSNmCBAAL0Y2oAaefm7fFnRuFi9YTu+I236L0Ff/ljH/Edk8CTh
	 hyPaShf4K8ILb/NaunGgKywW6iXzxOZiCXuPkKI8mkYcUdQTfLSznfBHojVuyf+dRy
	 T9lOaR5hhyv7Co4tpQzlouz7Iup8RKXLsq1N6KPR0eyBqw5JeLJePPhyVn6biPZnms
	 3o8nw/VPL1kkApQ9QKDVhh3tnKe+vrHeQSSvtSkMDSo78OU/jtBv18urp0Pfw2Meoi
	 15OLXGMtYOPsHiPH9SA4DswlPrJTQniNfh+yvVbEwPp4Cw45oKeH0aRGNmmUJsqvuj
	 I0wVLUMqR09YQ==
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 8D6D73843C1
	for <usrp-users@lists.ettus.com>; Tue,  5 Apr 2022 16:36:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="L5KE99VA";
	dkim-atps=neutral
Received: by mail-qt1-f180.google.com with SMTP id v2so1060751qtc.5
        for <usrp-users@lists.ettus.com>; Tue, 05 Apr 2022 13:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=3RcF9tU4QiCDtsrYaneDhQArRH8pW8GTIAlfugPAFcQ=;
        b=L5KE99VAHch0e6+ypCxRe3xoOgWW8NXgGBNtdvIDdpDz/6fky+L7SGepYCOVWynW59
         1idxHx5IJRd6BXvzFsXXzAymJ31AE5FqkxvExK92mI99ZM3xQJ0aE2Og8yl9/rXU+3BR
         XBkrJF9gHLQZOLi4uYSFeObxDSsW1sqrrGuGU2VqPFNhltUUn184+tWmze87X1wGBD9T
         dqDrKI/0LWPB0D58JUR0H/MmgprzX+cGjW052xKzYkYmvOm2ynOUVI83GXas6GzQN+uM
         ryVMQAUHfBIBiLqm2abbJOVPIkGh563kS7VqQpF13T+jFBooWt+qefrwy7k5uY8eaxUx
         STag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=3RcF9tU4QiCDtsrYaneDhQArRH8pW8GTIAlfugPAFcQ=;
        b=yQI30vG4Ys0tNsOwTAIMtJsQEGqJspjd68rOP0Z/P/iGP+vj+unUmoiwn0klH0Dqvg
         k3DW5I+UJlV+DpdBPlop6uxyghAglE8FOGxkQ3Jl10a6OghLZjhdPjRkAPJFDpw7uKc/
         itdJQ/eOeZnT0xotTdkDCftFFLzkMMVz0GGvNv1MPmBbklX4bERT1utNcPP0chhibFNV
         LsZbLPecN+Os0iWHKvjl9OaYsK0iN1MyyLxvAIvVjlBfKglg8dKIOL4GJQtN81PgBxvD
         Ht0bjecVUYakED+Z8Ff9bBcjD4ZR2JsdbYCfPUUNziQDt20PGXwNwkF/dq7khvkrD9jk
         Fsvg==
X-Gm-Message-State: AOAM533QTIKv3JouaNuhvPNvnSinDPnU8KxDcp3ZFVtGb2rFpPTqRQAt
	17XLXrtsGf09GwLtFAfmvs/gMkp4oXo=
X-Google-Smtp-Source: ABdhPJz7tQuu33egFhIPoWCQncKlEIoOCQJmOq3Jra6NP4EEjJlc+03o31+KqZYlO/U9nZSncaZmbw==
X-Received: by 2002:a37:a310:0:b0:67d:3749:16e7 with SMTP id m16-20020a37a310000000b0067d374916e7mr3562873qke.159.1649190990450;
        Tue, 05 Apr 2022 13:36:30 -0700 (PDT)
Received: from [192.168.2.156] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id d4-20020a37c404000000b0067d67adea0fsm8624548qki.84.2022.04.05.13.36.29
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Apr 2022 13:36:29 -0700 (PDT)
Message-ID: <f4bdf76d-0d4d-bae9-feb9-4a599b742247@gmail.com>
Date: Tue, 5 Apr 2022 16:36:28 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <985ffb27934e4abca12f35f2d5f087c3@lanl.gov>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <985ffb27934e4abca12f35f2d5f087c3@lanl.gov>
Message-ID-Hash: 7RUNRK4QP2EWZC3F2SR6LXVONDWAFXBW
X-Message-ID-Hash: 7RUNRK4QP2EWZC3F2SR6LXVONDWAFXBW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: bricked e320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7RUNRK4QP2EWZC3F2SR6LXVONDWAFXBW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4478509467546434222=="

This is a multi-part message in MIME format.
--===============4478509467546434222==
Content-Type: multipart/alternative;
 boundary="------------uwZgVQlYJsIet3W8KRrfOaGU"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------uwZgVQlYJsIet3W8KRrfOaGU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-04-05 16:32, Caffrey, Michael Paul via USRP-users wrote:
>
> Hi,
>
> I apparently loaded a bad bistream onto my e320 (in case)=C2=A0 and now=
 it=20
> seems bricked. I am trying to use the jtag programmer on vivado 2019.1=20
> -> digilent onboard jtag programmer -> reprogram the fpga.=20
> Unfortunately the stm32 turns off the zynq as quickly as it comes up,=20
> is there a way to override this behavior? I can=E2=80=99t connect long =
enough=20
> to program the fpga=E2=80=A6
>
> [0.000402 Inits done]
>
> [0.034887 SW 0x01]
>
> Enclosure version ... using alternative thermal parameters
>
> Console is enabled; type HELP for help.
>
> > [0.045631 power state 4 =3D G3->S5, in 0x0000]
>
> [0.045802 power state 1 =3D S5, in 0x0000]
>
> [0.045943 power state 5 =3D S5->S3, in 0x0000]
>
> [0.046128 event set 0x00002000]
>
> [0.046246 hostcmd init 0x2000]
>
> [0.060204 power state 2 =3D S3, in 0x0002]
>
> [0.074684 power state 6 =3D S3->S0, in 0x01fe]
>
> [1.074914 AP didn't come up, shutdown]
>
> [1.075083 power state 7 =3D S0->S3, in 0x01fe]
>
> [1.091168 Watchdog timeout, warm reset the AP]
>
> [1.091308 event set 0x00100000]
>
> [1.108303 power state 2 =3D S3, in 0x0002]
>
> [1.108489 power state 8 =3D S3->S5, in 0x0002]
>
> [1.108706 power state 1 =3D S5, in 0x0000]
>
> [1.108857 power state 9 =3D S5->G3, in 0x0000]
>
> [1.109018 power state 0 =3D G3, in 0x0000]
>
> [1.319702 power state 4 =3D G3->S5, in 0x0000]
>
> [1.319895 power state 1 =3D S5, in 0x0000]
>
> [1.320047 power state 5 =3D S5->S3, in 0x0000]
>
> [1.334169 power state 2 =3D S3, in 0x0002]
>
> [1.348719 power state 6 =3D S3->S0, in 0x01fe]
>
> [2.348960 AP didn't come up, shutdown]
>
> [2.349132 power state 7 =3D S0->S3, in 0x01fe]
>
> [2.365217 Watchdog timeout, warm reset the AP]
>
> [2.382343 power state 2 =3D S3, in 0x0002]
>
> [2.382531 power state 8 =3D S3->S5, in 0x0002]
>
> [2.382750 power state 1 =3D S5, in 0x0000]
>
> [2.382904 power state 9 =3D S5->G3, in 0x0000]
>
> [2.383068 power state 0 =3D G3, in 0x0000]
>
> Thanks for any suggestions- Mike
>
Unless I'm mistaken, the FPGA image on the E320 comes from the Linux=20
filesystem on the system image.=C2=A0=C2=A0 Just make yourself a fresh sy=
stem=20
image uSD card, and your
 =C2=A0 system should come up.

https://kb.ettus.com/E320_Getting_Started_Guide#Updating_the_files_system=
_by_writing_the_disk_image




--------------uwZgVQlYJsIet3W8KRrfOaGU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-04-05 16:32, Caffrey, Michael
      Paul via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:985ffb27934e4abca12f35f2d5f087c3@lanl.gov">
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}span.EmailStyle17
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
        <p class=3D"MsoNormal">Hi,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I apparently loaded a bad bistream onto my
          e320 (in case)=C2=A0 and now it seems bricked. I am trying to u=
se
          the jtag programmer on vivado 2019.1 -&gt; digilent onboard
          jtag programmer -&gt; reprogram the fpga. Unfortunately the
          stm32 turns off the zynq as quickly as it comes up, is there a
          way to override this behavior? I can=E2=80=99t connect long eno=
ugh to
          program the fpga=E2=80=A6<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">[0.000402 Inits done]<o:p></o:p></p>
        <p class=3D"MsoNormal">[0.034887 SW 0x01]<o:p></o:p></p>
        <p class=3D"MsoNormal">Enclosure version ... using alternative
          thermal parameters<o:p></o:p></p>
        <p class=3D"MsoNormal">Console is enabled; type HELP for help.<o:=
p></o:p></p>
        <p class=3D"MsoNormal">&gt; [0.045631 power state 4 =3D G3-&gt;S5=
,
          in 0x0000]<o:p></o:p></p>
        <p class=3D"MsoNormal">[0.045802 power state 1 =3D S5, in 0x0000]=
<o:p></o:p></p>
        <p class=3D"MsoNormal">[0.045943 power state 5 =3D S5-&gt;S3, in
          0x0000]<o:p></o:p></p>
        <p class=3D"MsoNormal">[0.046128 event set 0x00002000]<o:p></o:p>=
</p>
        <p class=3D"MsoNormal">[0.046246 hostcmd init 0x2000]<o:p></o:p><=
/p>
        <p class=3D"MsoNormal">[0.060204 power state 2 =3D S3, in 0x0002]=
<o:p></o:p></p>
        <p class=3D"MsoNormal">[0.074684 power state 6 =3D S3-&gt;S0, in
          0x01fe]<o:p></o:p></p>
        <p class=3D"MsoNormal">[1.074914 AP didn't come up, shutdown]<o:p=
></o:p></p>
        <p class=3D"MsoNormal">[1.075083 power state 7 =3D S0-&gt;S3, in
          0x01fe]<o:p></o:p></p>
        <p class=3D"MsoNormal">[1.091168 Watchdog timeout, warm reset the
          AP]<o:p></o:p></p>
        <p class=3D"MsoNormal">[1.091308 event set 0x00100000]<o:p></o:p>=
</p>
        <p class=3D"MsoNormal">[1.108303 power state 2 =3D S3, in 0x0002]=
<o:p></o:p></p>
        <p class=3D"MsoNormal">[1.108489 power state 8 =3D S3-&gt;S5, in
          0x0002]<o:p></o:p></p>
        <p class=3D"MsoNormal">[1.108706 power state 1 =3D S5, in 0x0000]=
<o:p></o:p></p>
        <p class=3D"MsoNormal">[1.108857 power state 9 =3D S5-&gt;G3, in
          0x0000]<o:p></o:p></p>
        <p class=3D"MsoNormal">[1.109018 power state 0 =3D G3, in 0x0000]=
<o:p></o:p></p>
        <p class=3D"MsoNormal">[1.319702 power state 4 =3D G3-&gt;S5, in
          0x0000]<o:p></o:p></p>
        <p class=3D"MsoNormal">[1.319895 power state 1 =3D S5, in 0x0000]=
<o:p></o:p></p>
        <p class=3D"MsoNormal">[1.320047 power state 5 =3D S5-&gt;S3, in
          0x0000]<o:p></o:p></p>
        <p class=3D"MsoNormal">[1.334169 power state 2 =3D S3, in 0x0002]=
<o:p></o:p></p>
        <p class=3D"MsoNormal">[1.348719 power state 6 =3D S3-&gt;S0, in
          0x01fe]<o:p></o:p></p>
        <p class=3D"MsoNormal">[2.348960 AP didn't come up, shutdown]<o:p=
></o:p></p>
        <p class=3D"MsoNormal">[2.349132 power state 7 =3D S0-&gt;S3, in
          0x01fe]<o:p></o:p></p>
        <p class=3D"MsoNormal">[2.365217 Watchdog timeout, warm reset the
          AP]<o:p></o:p></p>
        <p class=3D"MsoNormal">[2.382343 power state 2 =3D S3, in 0x0002]=
<o:p></o:p></p>
        <p class=3D"MsoNormal">[2.382531 power state 8 =3D S3-&gt;S5, in
          0x0002]<o:p></o:p></p>
        <p class=3D"MsoNormal">[2.382750 power state 1 =3D S5, in 0x0000]=
<o:p></o:p></p>
        <p class=3D"MsoNormal">[2.382904 power state 9 =3D S5-&gt;G3, in
          0x0000]<o:p></o:p></p>
        <p class=3D"MsoNormal">[2.383068 power state 0 =3D G3, in 0x0000]=
<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier
            New&quot;">Thanks for any suggestions- Mike<o:p></o:p></span>=
</p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
    </blockquote>
    Unless I'm mistaken, the FPGA image on the E320 comes from the Linux
    filesystem on the system image.=C2=A0=C2=A0 Just make yourself a fres=
h system
    image uSD card, and your<br>
    =C2=A0 system should come up.<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/E320_Gett=
ing_Started_Guide#Updating_the_files_system_by_writing_the_disk_image">ht=
tps://kb.ettus.com/E320_Getting_Started_Guide#Updating_the_files_system_b=
y_writing_the_disk_image</a><br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------uwZgVQlYJsIet3W8KRrfOaGU--

--===============4478509467546434222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4478509467546434222==--
