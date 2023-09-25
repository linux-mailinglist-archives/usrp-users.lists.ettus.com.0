Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1095E7AD901
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 15:25:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5E97E384CE2
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 09:25:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695648349; bh=IwK1OEwdp1boZRM61uW6vRLUqBlhyfZ0YAZajIgnLGU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=biafMkFpaGdo2WEzrjxbCk7lo6Ed+xgKMZ4Qs3jp+ua7+zBiu4KHEPWRqaTEHeTl7
	 rbvrxDEfoMtaXB6tJgXuaQDpJ3aaWDZYDZdqFU6q6dLgtKOMT6M3aqmEujX07GQCxe
	 C3etnMx9HRHsNnQtAikR4MLH3h/8sNHNGpxX5YDogaWk6Haah+cOtEpIftIYyePzH0
	 iVe+s/CL+3cjiNhQ37hNutgu8YHRAXeO3BD54Qq3LQpAWV/QDk/hbRt1NC5AOAzsQN
	 c12aSC4CCVBemKORtmsa28zwv61oVDCuyVQ83d0MegikeJWXz3a6bmUk2komKcrMT8
	 glEN1SQx5aIIA==
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id CD4B8384C55
	for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 09:25:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NgVqSvYx";
	dkim-atps=neutral
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-4181f8d82b9so4350051cf.0
        for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 06:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695648346; x=1696253146; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0rL7IuLTgblha5Pti73Bmwmiqr8WaRgTEdQ/FlOBuDo=;
        b=NgVqSvYxj7tdMf7XiXkMPXSCsYGcJkLtTyUT1bzmo13ctcTUmdfGTi0q3C9r9GRS6B
         +bsTAOtuKLmRq9BOE2xezguwsaODxDnBV/aUsOqqe1lN+fWw+rkt+g/8VAz6VdfjsxgL
         18TV8IqEFx744jc7VPbQ9oP8de+Pj6D9DCToCR16Z1NMas+y9xiLBrzZfr2hDbc8LFIv
         8QC4calF7Wudpks+Kgz1GxRGErOx/mdBs5ONCw2L2RZgGtT6ixiSbwrO/QdOYC4+pbsK
         biRFWcrd+1yLt0RS8Go7Am1PpsGDI18pXJsegeeWGMZ92AU4GhbWiJeFRoTr8o6h8ad+
         ncYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695648346; x=1696253146;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0rL7IuLTgblha5Pti73Bmwmiqr8WaRgTEdQ/FlOBuDo=;
        b=Eo7ivXEfPJdN7t3AtRKYT+A01CSTVR3x8DQ/zKCcIZkAyRuksTDFq/fNR8oK0H5ele
         wKMAzd704GWJtdeIu2OmTcSWD3WUelPbVNqJhZPOgQ6XqLusjQB7ASQJc2du89Bak3PQ
         2pmfr4qgLq/t9KgHKI9VN+2U+fvkf0cNRLkGCoeVLC+G4pyfHHoX44HXXBYxvyLLqBIN
         356/vQtjd2UoPT/O/pQ+TiZjcJSDvh/xHtFVAsMC6AhNksQpVUbtSg3HrU3Wcf8bzUvl
         9WoYdCQckB4Z6PoKW6LlxoHtDqogZlkhxNQah8oERWAxTQhc4eU0kywvRdPnTd6+l0xJ
         eSPw==
X-Gm-Message-State: AOJu0Yyp9RYCdcKmCA/0QjPIKATDj7G5bCx+M//V0LWXs5yL/vbWpxY0
	58jj3oSxTtcVZVXP+9A+OCiKV+wD2DpLiQ==
X-Google-Smtp-Source: AGHT+IGM9IGxoct24BnytReDcOaH202hccVPHVgQmFg9/GoyjW/0N8rb+I61TO7pvCU0m46MXynPxw==
X-Received: by 2002:a05:622a:1896:b0:417:eb3c:494e with SMTP id v22-20020a05622a189600b00417eb3c494emr8227651qtc.59.1695648345977;
        Mon, 25 Sep 2023 06:25:45 -0700 (PDT)
Received: from [192.168.2.182] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id c21-20020ac853d5000000b004181d77e08fsm434227qtq.85.2023.09.25.06.25.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Sep 2023 06:25:45 -0700 (PDT)
Message-ID: <523cda22-5051-28b0-c10d-9fb221222763@gmail.com>
Date: Mon, 25 Sep 2023 09:25:36 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAANLyuawttfqk9emcKXbJR-7NXAcL5xC-pih1xyzrh4Rcjg_QQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAANLyuawttfqk9emcKXbJR-7NXAcL5xC-pih1xyzrh4Rcjg_QQ@mail.gmail.com>
Message-ID-Hash: BIRFRIP55GPI7BTWMYP2GJCHD45MIFW4
X-Message-ID-Hash: BIRFRIP55GPI7BTWMYP2GJCHD45MIFW4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TX Streamer Send Time
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BIRFRIP55GPI7BTWMYP2GJCHD45MIFW4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9174955872506107867=="

This is a multi-part message in MIME format.
--===============9174955872506107867==
Content-Type: multipart/alternative;
 boundary="------------0L30oZcNHmA3p0l7xZ0QHqGZ"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0L30oZcNHmA3p0l7xZ0QHqGZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 25/09/2023 08:57, Devin Kelly wrote:
> Hello,
>
> I have an application where I=E2=80=99m sending many short bursts to a =
USRP=20
> B210 using uhd::tx_streamer.send() (link below) and I occasionally set=20
> the PPS time to 0 using set_time_last_pps.
>
> Sometimes I set the PPS time to 0 when there=E2=80=99s still a burst in=
 the=20
> USRPs queue.=C2=A0 When I do this the burst is transmitted much later t=
han=20
> I want.
>
> Is there a way to clear the queue on the USRP or UHD?=C2=A0 That is, if=
 I=20
> send a TX burst in the distant future can I cancel it before it gets=20
> transmitted?=C2=A0 Can I clear everything in the TX queue?
>
> I=E2=80=99ve read on this list that calling the stream destructor will =
do=20
> this, is that right? I=E2=80=99ve tried this without success.
>
> Thanks!
> Devin
>
This is an unusual scenario -- what is the reason for constantly=20
resetting the timer to zero?=C2=A0=C2=A0 This is not the kind of scenario=
 that
 =C2=A0 was contemplated in the architecture.=C2=A0 I don't think there's=
 a "flush=20
pending things in the queue" operation possible--although
 =C2=A0 I admit it might be useful.



--------------0L30oZcNHmA3p0l7xZ0QHqGZ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 25/09/2023 08:57, Devin Kelly wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAANLyuawttfqk9emcKXbJR-7NXAcL5xC-pih1xyzrh4Rcjg_QQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">
        <meta charset=3D"UTF-8">
        <span
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none">Hello,</span><br
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none">
        <span
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none"></span><br
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none">
        <span
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none">I
          have an application where I=E2=80=99m sending many short bursts=
 to a
          USRP B210 using uhd::tx_streamer.send() (link below) and I
          occasionally set the PPS time to 0 using set_time_last_pps. =C2=
=A0</span><br
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none">
        <span
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none"></span><br
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none">
        <span
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none">Sometimes
          I set the PPS time to 0 when there=E2=80=99s still a burst in t=
he
          USRPs queue.=C2=A0 When I do this the burst is transmitted much
          later than I want.</span><br
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none">
        <span
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none"></span><br
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none">
        <span
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none">Is
          there a way to clear the queue on the USRP or UHD?=C2=A0 That i=
s,
          if I send a TX burst in the distant future can I cancel it
          before it gets transmitted?=C2=A0 Can I clear everything in the=
 TX
          queue?</span><br
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none">
        <span
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none"></span><br
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none">
        <span
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none">I=E2=80=99ve
          read on this list that calling the stream destructor will do
          this, is that right? I=E2=80=99ve tried this without success.</=
span><br
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none">
        <span
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none"></span><br
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none">
        <span
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none">Thanks!</span><br
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none">
        <span
style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none">Devin</span></div>
      <br>
    </blockquote>
    This is an unusual scenario -- what is the reason for constantly
    resetting the timer to zero?=C2=A0=C2=A0 This is not the kind of scen=
ario that<br>
    =C2=A0 was contemplated in the architecture.=C2=A0 I don't think ther=
e's a
    "flush pending things in the queue" operation possible--although<br>
    =C2=A0 I admit it might be useful.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------0L30oZcNHmA3p0l7xZ0QHqGZ--

--===============9174955872506107867==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9174955872506107867==--
