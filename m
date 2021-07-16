Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7605F3CBC0D
	for <lists+usrp-users@lfdr.de>; Fri, 16 Jul 2021 20:46:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 669D738414D
	for <lists+usrp-users@lfdr.de>; Fri, 16 Jul 2021 14:46:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OibMDJmv";
	dkim-atps=neutral
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id D739D380A0C
	for <usrp-users@lists.ettus.com>; Fri, 16 Jul 2021 14:45:55 -0400 (EDT)
Received: by mail-qv1-f54.google.com with SMTP id f3so5058570qvm.2
        for <usrp-users@lists.ettus.com>; Fri, 16 Jul 2021 11:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=wz92VzZyZ81uFXmVE+F+o5YFhbou+36E8y3C1eDEa1c=;
        b=OibMDJmvcYp1nv7ORLKUBbYEUiB7G7qmTzEQbNysn2hz2WBlWvMVEKt14d3WRYr7v7
         1huIf4/+god2cqJmZamRz+hEAQjwWOhLifIOwogJwwVugdO9UUUhK3aTOl47kafQGKbu
         xc5xU/VQHHjizXZw3x5XCgXK0xV1D/MLxwzyEpKRuz982xszC7GtU8HeWwFzwbRdQBim
         0XUQXBYustdMKPVwWVqPQZgG5QtCgFTcna8S/JTMmmLrclBfr7Po7pfOBmZIPwOu2HRR
         LrhMnye6avF5cSuCfquNAN7iPinoWRgMoxCK79oFgL+hHAaCuCs8gq5+muLYT3JWhhB4
         FWug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=wz92VzZyZ81uFXmVE+F+o5YFhbou+36E8y3C1eDEa1c=;
        b=Xp3bkyB2auiexSxvh8IMTA2sGet5lX4ZLKNXlaEUn92UapCYGgCN17qNbKxJEDOIMi
         8PsGX/uAo6Wp0QZmdVhWJm/gC++W9KWcDgIBX6wjySe7Zh1jv2tiDytyINV1ixpe+xYp
         pn8Iex/Py7mnL+632lkOADpewDTAzCJeaOIp5hqtcLAyvn9ZmS366z+mpM9hWX7GHF4S
         k4cluvyRJiW4MpGqRWlMX+smIJu0c4vR4R1NfX6XyeRDSRjenIhYnr2yAUJyWRZk+pbW
         YiJdCEgAJb/ROab1qVQPTtrtyHPk8aEMjxl3vOSDrY3bSGB9pYvcBsbhVwAWFh7ORpN4
         zPJQ==
X-Gm-Message-State: AOAM530O7MioxVoRg+boXK5aSWTJIBup9wvJB8/Zxeu1H1XymefQe4p+
	LsGruCmsmnygqxMJZjHGiY9qRDnNlDGtsg==
X-Google-Smtp-Source: ABdhPJxFFmA/2SQ8s6NLIkapf7th1Xue/ICk2tTPXoG+5ijKLNNu71ajUI6lEv2HBKyDZlPNuw1pGA==
X-Received: by 2002:a05:6214:5085:: with SMTP id kk5mr11828948qvb.25.1626461155168;
        Fri, 16 Jul 2021 11:45:55 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id n6sm610439qta.48.2021.07.16.11.45.54
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Jul 2021 11:45:54 -0700 (PDT)
Message-ID: <60F1D3E2.2000505@gmail.com>
Date: Fri, 16 Jul 2021 14:45:54 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CO6PR19MB4801A4FA037924252BDC9DF2C6119@CO6PR19MB4801.namprd19.prod.outlook.com>
In-Reply-To: <CO6PR19MB4801A4FA037924252BDC9DF2C6119@CO6PR19MB4801.namprd19.prod.outlook.com>
Message-ID-Hash: AD7UMROICLII35DY4WEEBYUPQA2GQRDR
X-Message-ID-Hash: AD7UMROICLII35DY4WEEBYUPQA2GQRDR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Setting the TX SPP to reduce underruns
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AD7UMROICLII35DY4WEEBYUPQA2GQRDR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5673557698947831477=="

This is a multi-part message in MIME format.
--===============5673557698947831477==
Content-Type: multipart/alternative;
 boundary="------------000105000700010605090900"

This is a multi-part message in MIME format.
--------------000105000700010605090900
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 07/16/2021 02:33 PM, Jerrid Plymale wrote:
>
> Marcus,
>
> Ok, that=92s what I thought it was. So I tried changing the spp to a fe=
w=20
> different values and have seen no change. I feel like setting the spp=20
> in the stream args dropdown in the UHD USRP Sink block is not actually=20
> doing anything, because I=92m not seeing a reduction in underruns, whic=
h=20
> I thought I would see since making similar changes improved how well=20
> the benchmark_rate ran and reduced underruns at higher sampling rates=20
> when running the benchmark_rate.
>
> Any thoughts on this?
>
> Best Regards,
>
> Jerrid
>
>
Benchmark_rate and any random GR flow-graph are two computationally very=20
different things.   The stream args in GR really do change the
   stream args in the underlying flow--you can confirm this in the=20
generated Python code.



--------------000105000700010605090900
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 07/16/2021 02:33 PM, Jerrid Plymale
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CO6PR19MB4801A4FA037924252BDC9DF2C6119@CO6PR19MB4801.namprd19=
.prod.outlook.com"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Marcus,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Ok, that=92s what I thought it was. So I
          tried changing the spp to a few different values and have seen
          no change. I feel like setting the spp in the stream args
          dropdown in the UHD USRP Sink block is not actually doing
          anything, because I=92m not seeing a reduction in underruns,
          which I thought I would see since making similar changes
          improved how well the benchmark_rate ran and reduced underruns
          at higher sampling rates when running the benchmark_rate.<o:p><=
/o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Any thoughts on this?<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
        <p class=3D"MsoNormal">Jerrid<o:p></o:p></p>
      </div>
      <br>
    </blockquote>
    Benchmark_rate and any random GR flow-graph are two computationally
    very different things.=A0=A0 The stream args in GR really do change t=
he<br>
    =A0 stream args in the underlying flow--you can confirm this in the
    generated Python code.<br>
    <br>
    <br>
  </body>
</html>

--------------000105000700010605090900--

--===============5673557698947831477==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5673557698947831477==--
