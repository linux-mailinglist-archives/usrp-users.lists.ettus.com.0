Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6197B4085
	for <lists+usrp-users@lfdr.de>; Sat, 30 Sep 2023 15:36:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 074823852B4
	for <lists+usrp-users@lfdr.de>; Sat, 30 Sep 2023 09:36:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696081008; bh=2b9ab9rI4W22sHlAEph6AOECvAATqyMMymsThhooPjQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=PenfukW2W6iGW+VT/77MrDGsbX7sBfUvkGfIyhQPT6PZ3DRCablFCnvScuO+wQ4kT
	 bWmRxVrv2zyGYrZw2+HjUo2etePKCnnUQtkvsCD8gSEHzYtmBR3qTunfyx4rEEbGbp
	 H38poiJ2l88GhLHL0k47h3/P4S2QGk0PPoFtB46wbsEVzlY/74MxdyH3bxbnC5ajr/
	 +vyAZ7Qzgeq+hJGVr5kX1PJQMX49Qv15pm9Pn15Lg9O/MUAz02/9mz92YcgWoKvd/4
	 CIPt1JAM9skHnrYBNf0bE1yconDyLfSluD5tMoH/duY0YGf1MtIqLvMSOkYunxKl8+
	 wnuna5gTTx+fA==
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 5E37B3852A9
	for <usrp-users@lists.ettus.com>; Sat, 30 Sep 2023 09:36:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lcZezMSt";
	dkim-atps=neutral
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-77574c2cffdso70794285a.0
        for <usrp-users@lists.ettus.com>; Sat, 30 Sep 2023 06:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696081002; x=1696685802; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MlION40KiczVFz4g4V4zUqq0PxcmS/IUsuknXbtz1lo=;
        b=lcZezMSttk16nZO605zKDmj9K7xBPPdRCHrG07BQbIW5UhCNe59ACTbEP9K/8JqRGp
         Ir4hiH4ehZkqw/cn/e1zuTRfPhIbzlIm+WIQDO7MCTq60AweRkfVzGxOEiMn5hx3Tb5O
         EfbEyVjVVEG8hmvmp4spq/yngFp3PeOwZy030n7jiuzQu8NtZJIaDaa2brECaQvwRxH1
         JfaHZAN5rznMjoAqUliTs56ma92KyphPUAZhl/QJATkJqod4LLDN27L8Mqj57CY5UhuS
         e0ScTeM8I4QVd1eatflTZqkZZ3HRbNY+LprkFdR/p5i+aRAAYk072mh3s1bcCfRlCXik
         6Tnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696081002; x=1696685802;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MlION40KiczVFz4g4V4zUqq0PxcmS/IUsuknXbtz1lo=;
        b=p0eOPB9C/eiatgFXal4DA81o3Ms4Ws2fthqOegy5UkRyEj75z2Bhwrk+laiwals7b1
         LV23HhAdiCCdW0M9DwjetNH71QIDvWxg+gIB9qEvpETIFtx0HQ+lB35f49nWJkh8WZiv
         lPLOMM/aCyDe//whkH7tzAenxiSnkyfSl01QAYfHxolLfX+5kwxr8FJsuHyXpmjoJw7H
         TvGadt/JqGKhPDIla5K7Z2f8IIhVBXB8kDXpFyMRVL9aW1Ttz/Tj3mG/M3JgarLx8CXG
         Iq4XcT9nldo0pjGgAkBask1uTnDmTPKEntX4XYIZht+OIL5EP6S1xpCAIlAQ8fSCUTyf
         PSog==
X-Gm-Message-State: AOJu0YxmaJXMgQ7m2sVTI88Wcbi7JymqSzJXQZOzStLcYj5FG7GyOabT
	nyLYacyzaQ62UvAuRvsHnJ1miB2cojo=
X-Google-Smtp-Source: AGHT+IFgl2rv1xkm6q1FDQaMUe5P8TeYkWh+wtynUExfyYL8WylTTG1amIs8QzW5BtRZmBrMwmyvdA==
X-Received: by 2002:a05:620a:8f84:b0:775:9bb1:9b5d with SMTP id ri4-20020a05620a8f8400b007759bb19b5dmr1217858qkn.26.1696081002352;
        Sat, 30 Sep 2023 06:36:42 -0700 (PDT)
Received: from [192.168.2.156] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id l5-20020a37f505000000b0076f21383b6csm7677204qkk.112.2023.09.30.06.36.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Sep 2023 06:36:41 -0700 (PDT)
Message-ID: <3cce3301-8c58-26ae-8e44-b03188d62f85@gmail.com>
Date: Sat, 30 Sep 2023 09:36:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <G3HhV2ceYy2j7dtL6UXgZHUeuS90QgGmsDvPhHhrVyg@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <G3HhV2ceYy2j7dtL6UXgZHUeuS90QgGmsDvPhHhrVyg@lists.ettus.com>
Message-ID-Hash: 3FPFTD2BMXWVY6MT4RBO4ZZI3N43PPSZ
X-Message-ID-Hash: 3FPFTD2BMXWVY6MT4RBO4ZZI3N43PPSZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus, USRP N310, MPM major compat number mismatch error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3FPFTD2BMXWVY6MT4RBO4ZZI3N43PPSZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1238411318092336332=="

This is a multi-part message in MIME format.
--===============1238411318092336332==
Content-Type: multipart/alternative;
 boundary="------------XgvIdBmrzWSMnMYri0YHHDjN"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------XgvIdBmrzWSMnMYri0YHHDjN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 30/09/2023 08:57, usama.khurram@hotmail.com wrote:
>
> Hi, I am using USRP N310, I have installed UHD driver many times from=20
> the Source in Ubuntu, but still getting the same error, also I=20
> downgraded the UHD version to 4.0.0.0, but still same, Could someone=20
> please help me in this regards, Thanks
>
> usama@monnawea:~$ uhd_usrp_probe
>
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;=20
> UHD_4.5.0.0-0-g471af98f
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D10.0.1.217=20
> <https://10.0.1.217/>,type=3Dn3xx,product=3Dn310,serial=3D31AFFD4,fpga=3D=
HG,claimed=3DFalse,addr=3D10.0.1.217=20
> <https://10.0.1.217/>
>
> [ERROR] [MPMD] MPM major compat number mismatch. Expected: 5.3 Actual:=20
> 4.0. Please update the version of MPM on your USRP device.
>
> Error: RuntimeError: MPM major compat number mismatch. Expected: 5.3=20
> Actual: 4.0. Please update the version of MPM on your USRP device.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Your USRP device itself needs to be updated with a compatible system imag=
e.

Use:

sudo uhd_images_downloader --type n310 --type sdimg

This will download a complete system image to wherever your=20
configuration stores FPGA and Firmware images
 =C2=A0 (/usr/local/share/uhd/images or /usr/share/uhd/images=C2=A0 typic=
ally).

Once you have the sdimg file, you can program a new uSD card, following=20
the directions here:

https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updat=
ing_the_files_system_by_writing_the_disk_image




--------------XgvIdBmrzWSMnMYri0YHHDjN
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 30/09/2023 08:57,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usama.khurram@=
hotmail.com">usama.khurram@hotmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:G3HhV2ceYy2j7dtL6UXgZHUeuS90QgGmsDvPhHhrVyg@lists.ettus=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi, I am using USRP N310, I have installed UHD driver many
        times from the Source in Ubuntu, but still getting the same
        error, also I downgraded the UHD version to 4.0.0.0, but still
        same, Could someone please help me in this regards, Thanks</p>
      <p>=C2=A0</p>
      <p>usama@monnawea:~$ uhd_usrp_probe</p>
      <p>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
        UHD_4.5.0.0-0-g471af98f</p>
      <p>[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
        mgmt_addr=3D<a href=3D"https://10.0.1.217/" moz-do-not-send=3D"tr=
ue">10.0.1.217</a>,type=3Dn3xx,product=3Dn310,serial=3D31AFFD4,fpga=3DHG,=
claimed=3DFalse,addr=3D<a
          href=3D"https://10.0.1.217/" moz-do-not-send=3D"true">10.0.1.21=
7</a></p>
      <p>[ERROR] [MPMD] MPM major compat number mismatch. Expected: 5.3
        Actual: 4.0. Please update the version of MPM on your USRP
        device.</p>
      <p>Error: RuntimeError: MPM major compat number mismatch.
        Expected: 5.3 Actual: 4.0. Please update the version of MPM on
        your USRP device.</p>
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
    Your USRP device itself needs to be updated with a compatible system
    image.<br>
    <br>
    Use:<br>
    <br>
    sudo uhd_images_downloader --type n310 --type sdimg<br>
    <br>
    This will download a complete system image to wherever your
    configuration stores FPGA and Firmware images<br>
    =C2=A0 (/usr/local/share/uhd/images or /usr/share/uhd/images=C2=A0 ty=
pically).<br>
    <br>
    Once you have the sdimg file, you can program a new uSD card,
    following the directions here:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_N300=
/N310/N320/N321_Getting_Started_Guide#Updating_the_files_system_by_writin=
g_the_disk_image">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_S=
tarted_Guide#Updating_the_files_system_by_writing_the_disk_image</a><br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------XgvIdBmrzWSMnMYri0YHHDjN--

--===============1238411318092336332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1238411318092336332==--
