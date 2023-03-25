Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 647FF6C9086
	for <lists+usrp-users@lfdr.de>; Sat, 25 Mar 2023 20:37:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 516D23848CF
	for <lists+usrp-users@lfdr.de>; Sat, 25 Mar 2023 15:37:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679773045; bh=t5pdRYLLC04BvjJMjxHbzK2+UC1foZUWDlAXIcwWq/s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=CGKI1l0HNAewJsJgWJofATDTqsdNtnX0CS/bzDkzw9jw0/HTg5tYdb7pg6qjamvVD
	 80lLZjfMk2Qjv3OhxYnLm5wuLxv+KZJrgsgOHFFSZJMSB0rotMfvk0p83h+EKz7SQe
	 fPZ3WrZWcmQ1cFXIwmcoLMzJ7DxDk+j4jJuUjeKJ/txr36DFAPwtXGGZ0oL8odLPrm
	 +3OxLHGAD6J8iNxh8yGwM7RCvw84wFwcpvSkhrSJnfl4R2fbSNlY4T1Ev8CNTehn23
	 zeruG+qHvhmIy4qyiNISDrA9uChbrf6Rv9rybzr4otz+hzLxEEvnkXJxp3JaiJFZEy
	 gHiRqJMH3x+ww==
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 1532F3844DD
	for <usrp-users@lists.ettus.com>; Sat, 25 Mar 2023 15:36:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YvMmwcy9";
	dkim-atps=neutral
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-536af432ee5so98140087b3.0
        for <usrp-users@lists.ettus.com>; Sat, 25 Mar 2023 12:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679772995;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WC6YuUwhlyflbLLcaWwtAXV4BlXdzcf9tHYw0UZrfuQ=;
        b=YvMmwcy9QB772+uiy1kNCw6Eph9j69aFVoKHi08NyKHCk8FlnQzgaWQ0dEeOUHEnGd
         i5XWi+xi5uVog53j81o2PN50Sx1GLWNhBfLe3mjXHzYW7wWEP3ScR+0SVNyUQcUhaN0U
         LDjXGYralMmHJACF7W1QZrFqLGLqkIpWJ8RMB0DWyi/FT5aFNg0QUft+EL/OgusHX0dk
         o6JtbwVpw+dOxR487UD0qNYr906tkng72OEvJOPQiaOHOMTGL9fDUJQAVwMpDBpLWRBY
         wJc1g5YUQJKlSOTvu6ZlSoOgvkO/wHgtiiZ0OLu4U1ZDmwXooYUgP6IMce7Yx4+BIx7s
         xt/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679772995;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WC6YuUwhlyflbLLcaWwtAXV4BlXdzcf9tHYw0UZrfuQ=;
        b=rc7+VsmOmTAEVyaeIuB3yl6v3wDILsuC0/yQb5W4SphbSZkY1qsbaVcbNCGPP9zIit
         35Po2rnl/bk81oHdD0jF0kH/cF/klHp3LkEBOjxwDA+oWKa6KmxVRxZfdv+yA1kqWXM4
         fcckkmIJkegSvS6ABGsyh6EGzGBJ948zcaVtv0osODdxqlNlXZd7G6KgxQcXrVO5v8Bv
         8mP/PJl7nxc1W0Sht0DhQKkP0PdCXUBdKejOJ5ctF5K6FEAkG5iiwbmuvPBaMnfXi/C/
         wOLwDxBFezgQIZGukt2+dd2icSZNh9Iunij6cZbHfOjBfJENSwz+lAhxwL3rxX4JFknF
         7zMw==
X-Gm-Message-State: AAQBX9e0ZHIlbKx6F0cAtLW8lZTSIO0XLKOfqFUpDquEfktNocN3PwqJ
	pqM//YQx2TByicPH0Jnf7Kihdnp/rcs=
X-Google-Smtp-Source: AKy350aC/5KIupHNX8ImTCp5WXay5jIB3znY91fGz8aZswWbQdA+8mnxnz8fhL6SruWrZ9GlYsmwbg==
X-Received: by 2002:a81:4ac5:0:b0:52e:ec74:3f50 with SMTP id x188-20020a814ac5000000b0052eec743f50mr6820358ywa.47.1679772995125;
        Sat, 25 Mar 2023 12:36:35 -0700 (PDT)
Received: from [192.168.2.155] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id bh27-20020a05690c039b00b00545afe31a69sm883645ywb.97.2023.03.25.12.36.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Mar 2023 12:36:34 -0700 (PDT)
Message-ID: <ae048222-67c7-7820-8c59-ff31dcafa6bc@gmail.com>
Date: Sat, 25 Mar 2023 15:36:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <DU2PR07MB80619CE763A9ADA120CBFA9A84859@DU2PR07MB8061.eurprd07.prod.outlook.com>
 <DU2PR07MB806169B8D468901B4659A43B84859@DU2PR07MB8061.eurprd07.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <DU2PR07MB806169B8D468901B4659A43B84859@DU2PR07MB8061.eurprd07.prod.outlook.com>
Message-ID-Hash: DDQ5GUGOD2SUUHJQNYLZLSS7ROPJXC4P
X-Message-ID-Hash: DDQ5GUGOD2SUUHJQNYLZLSS7ROPJXC4P
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rx_samples_to_file doesn't maintain the phase offset in different data acquisitions for X300 with 2 TwinRx
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DDQ5GUGOD2SUUHJQNYLZLSS7ROPJXC4P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3562464836259988503=="

This is a multi-part message in MIME format.
--===============3562464836259988503==
Content-Type: multipart/alternative;
 boundary="------------hxflwz9lW0a1XoSW9jtJA0v7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------hxflwz9lW0a1XoSW9jtJA0v7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 25/03/2023 15:20, Alda Xhafa wrote:
> Hi everyone,
> I am trying to record data with=C2=A0X300 with 2 TwinRx using 4 channel=
s=20
> simultaneously. I have noticed is that the phase offset among channels=20
> is not maintained in different acquisitions but the phase offsets=20
> between channels that share the same LO yes (see the images attached).=20
> I have modified the source code and added the configuration of LO so=20
> that the sharing is done but still the result is the same. What should=20
> be the way to force the LO share with each other?
>
> Thank you in advance,
> Alda
>
The rx_samples_to_file example doesn't necessarily exercise and expose=20
all possible underlying UHD features, including LO-sharing.

https://kb.ettus.com/TwinRX#LO_Sharing_with_Neighbour_TwinRXs

May be of some help.

As will:

https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a865f=
1e3d08802842a73e1f0571110335


--------------hxflwz9lW0a1XoSW9jtJA0v7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 25/03/2023 15:20, Alda Xhafa wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:DU2PR07MB806169B8D468901B4659A43B84859@DU2PR07MB8061.eurprd07=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial,
          Helvetica, sans-serif; font-size: 12pt;">Hi everyone,</span><br=
>
      </div>
      <div dir=3D"ltr">
        <div class=3D"x_elementToProof x_ContentPasted0"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0);
          background-color:rgb(255,255,255)">
          I am trying to record data with=C2=A0X300 with 2 TwinRx using 4
          channels simultaneously. I have noticed is that the phase
          offset among channels is not maintained in different
          acquisitions but the phase offsets between channels that share
          the same LO yes (see the images attached). I have modified the
          source code and added the configuration of LO so that the
          sharing is done but still the result is the same. What should
          be the way to force the LO share with each other?=C2=A0</div>
        <div class=3D"x_elementToProof x_ContentPasted0"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0);
          background-color:rgb(255,255,255)">
          <br>
        </div>
        <div class=3D"x_elementToProof x_ContentPasted0"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0);
          background-color:rgb(255,255,255)">
          Thank you in advance,</div>
        <div class=3D"x_elementToProof x_ContentPasted0"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0);
          background-color:rgb(255,255,255)">
          Alda</div>
        <div class=3D"x_elementToProof x_ContentPasted0"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0);
          background-color:rgb(255,255,255)">
        </div>
      </div>
      <br>
    </blockquote>
    The rx_samples_to_file example doesn't necessarily exercise and
    expose all possible underlying UHD features, including LO-sharing.<br=
>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/TwinR=
X#LO_Sharing_with_Neighbour_TwinRXs">https://kb.ettus.com/TwinRX#LO_Shari=
ng_with_Neighbour_TwinRXs</a><br>
    <br>
    May be of some help.<br>
    <br>
    As will:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
/classuhd_1_1usrp_1_1multi__usrp.html#a865f1e3d08802842a73e1f0571110335">=
https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a865f=
1e3d08802842a73e1f0571110335</a><br>
    <br>
    <br>
  </body>
</html>

--------------hxflwz9lW0a1XoSW9jtJA0v7--

--===============3562464836259988503==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3562464836259988503==--
