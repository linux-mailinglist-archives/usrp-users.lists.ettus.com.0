Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 421B38409A1
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jan 2024 16:19:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 93FFB385166
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jan 2024 10:19:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706541543; bh=VoerkxO7WS2JUK1aZm0oeUugvBWRdLYH3pml5/hiwIE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Z2TCsicBXcVADuvX5XB3Kzq8SMoWxoUIRVMwyAZ7crEjFY12ZBEZ79B/TsionJG7s
	 mHTRDvMdDCs3v9Ekq9SWsEbEWHoOWlS/ZGllKl+CnTgAudyeTiw5yApj3+whtWCf0r
	 E+wbcSK17KC3DfgXo2Z280PEHSr7m/c9w3CTAujyGxyIsLyPKVqgVCFKulGPOk4Zbc
	 IVfCbY0iuQmqQRmdx3glM6Aba+0/t+/Yd2nWXA8q3EXRdliz042oREuKmx5eE6Wi5D
	 zqinDlqfsOJZZ8SOLmVtIp59d8Mjxg1yKtD7uO46aA0A/+fmE+s1eIyRtY72zkwNTZ
	 bqD7erOe9Isdw==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 0F9DD384DDA
	for <usrp-users@lists.ettus.com>; Mon, 29 Jan 2024 10:18:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="FJ5UeRXz";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-55ee9805da7so1636683a12.3
        for <usrp-users@lists.ettus.com>; Mon, 29 Jan 2024 07:18:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1706541509; x=1707146309; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A+0GhLNEz0zE7njEUX0ZHxZe4gdPAHo0pybRZ5kMD2I=;
        b=FJ5UeRXzI9EXQrg+DNPhkdf/cPTqs9XN3/5k2IeMDbMtpNk0/nY0RAqa5Lr3ezJY+i
         JrZygdjNl0qBbaIQLohO39IPaUPJxHhRjiL49T0rw0OB/PxjhKUlV9co9zxXzaSyJuUT
         OPes8uag1MuUJJTn53+f11K4C9+t55xolXgJUARUlj4yEXiDJ3E/S/pwymPsTNMn3ogL
         zupQfyngauNzYd1yOonSvlXTiK/DcOMHZe2tWrHECIXhSem++VEyt5q7l8Ux9XFvRTC1
         49MlbVesE/9KziM089kLXY9g1xcDqV3f7j1RK4Tdnvf1nuMB5e1pux7wV2O2WYIzUeVR
         Vk9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706541509; x=1707146309;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=A+0GhLNEz0zE7njEUX0ZHxZe4gdPAHo0pybRZ5kMD2I=;
        b=kQMfjnElmKwp3fWPgD0uJrxQtciYy/zFVS3xYC7aQ+Ugg5SbYbuWmHfTNTK5FTqgPZ
         ue3+R/JU4vl6P9ZQgeQtyZu/KhcWNE/DbbpHIDZdihTgIF4fXovS1HeuV4iZ+jWTLGuL
         l1liNm0FKTPMsaH3txJOJfZqQMzJDShOalTX7eR+Npv9XO2OUCEXakuUEUfkG6URpPIc
         hnQA09Ee6JIb12Q+5U3xCXDYLqwoNYtUqX9BhJpPULYbkJh/+c/UfmQ1sqNcoYCS0azz
         YsbvTwFy/Fmn1WBMaCl+qeAGa8rZtBWZ8lI6KipGyKoVGaQn7rppFtOEXB/a2Vbzxotv
         g3tQ==
X-Gm-Message-State: AOJu0Yx1ZW3Bz+pJbQtM+eBGZIQuxA5mlPken0SptcwgAYBNnxrB9YpU
	Y0qz96Qmugub6EbwAKqWDrU+7xofoV5kKMHV8pJlwL/oZmFf1GBrz6niyRsIch2OPK3fy8SuygL
	ZMP8=
X-Google-Smtp-Source: AGHT+IEr7+eDuh45aw8Yb2hTj4bs/jw8tQg/p2DtTlEpcxnKS563zdDVe3F5hhf7YKFBS2CR6ivNxw==
X-Received: by 2002:a17:906:4719:b0:a31:4c0a:dafe with SMTP id y25-20020a170906471900b00a314c0adafemr4153244ejq.72.1706541509218;
        Mon, 29 Jan 2024 07:18:29 -0800 (PST)
Received: from ?IPV6:2001:16b8:cc76:8d00:10fc:1619:bea3:90d1? ([2001:16b8:cc76:8d00:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id h17-20020a17090634d100b00a312651ff8dsm4021968ejb.157.2024.01.29.07.18.28
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jan 2024 07:18:29 -0800 (PST)
Message-ID: <c984a2ff-cf65-48b8-acfb-4534becc383a@ettus.com>
Date: Mon, 29 Jan 2024 16:18:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAKHaR3kbcmH8o01pSb=S6SppD51TyJjsVYxBwG+KbSdrX+1sEA@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAKHaR3kbcmH8o01pSb=S6SppD51TyJjsVYxBwG+KbSdrX+1sEA@mail.gmail.com>
Message-ID-Hash: FKXTNQKUEMZ3BOMJDUPMLSTK64QKWW6D
X-Message-ID-Hash: FKXTNQKUEMZ3BOMJDUPMLSTK64QKWW6D
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnocmodtool
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FKXTNQKUEMZ3BOMJDUPMLSTK64QKWW6D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0399618598063622889=="

This is a multi-part message in MIME format.
--===============0399618598063622889==
Content-Type: multipart/alternative;
 boundary="------------iqda8XgHK7ejl2QnwhDF0hOS"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------iqda8XgHK7ejl2QnwhDF0hOS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Dario,

you're right, that currently doesn't exist. R&D is aware of that, and fro=
m what I hear=20
through the grapevine, it's something that they want to re-establish func=
tionally (don't=20
know whether that means "forward-porting" the old tool or writing a new o=
ne).

Alas, there's nothing that we could currently give you, sorry.

Best,
Marcus

On 22.01.24 17:37, Dario Pennisi wrote:
> Hi,
> i have been using RFNoC for quite some time and am now starting a new p=
roject based on=20
> UHD4.5. in the past i used rfnocmodtool=C2=A0which was very useful but =
i can see that in=20
> gnuradio 3.10 gr-ettus is not required anymore but at the same time the=
re's no=20
> replacement for rfnocmodtool, at least that i found.
> also, gr-ettus seem a bit outdated with regards to UHD and some files h=
ave been moved to=20
> UHD repository (for example the simulation script)
> since support for gnuradio 3.10 seem to be still in early stage i'm goi=
ng to stay with=20
> 3.8 but i wonder if rfnocmodtool from gr-ettus is still the best way to=
 create an OOT=20
> block and eventually what is going to be its replacement in the future.
> thanks,
>
> Dario Pennisi
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------iqda8XgHK7ejl2QnwhDF0hOS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Dario,</p>
    <p>you're right, that currently doesn't exist. R&amp;D is aware of
      that, and from what I hear through the grapevine, it's something
      that they want to re-establish functionally (don't know whether
      that means "forward-porting" the old tool or writing a new one).</p=
>
    <p>Alas, there's nothing that we could currently give you, sorry.</p>
    <p>Best,<br>
      Marcus<br>
    </p>
    <div class=3D"moz-cite-prefix">On 22.01.24 17:37, Dario Pennisi wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAKHaR3kbcmH8o01pSb=3DS6SppD51TyJjsVYxBwG+KbSdrX+1sEA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi,
        <div>i have been using RFNoC for quite some time and am now
          starting a new project based on UHD4.5. in the past i used
          rfnocmodtool=C2=A0which was very useful but i can see that in
          gnuradio 3.10 gr-ettus is not required anymore but at the same
          time there's no replacement for rfnocmodtool, at least that i
          found.</div>
        <div>also, gr-ettus seem a bit outdated with regards to UHD and
          some files have been moved to UHD repository (for example the
          simulation script)</div>
        <div>since support for gnuradio 3.10 seem to be still in early
          stage i'm going to stay with 3.8 but i wonder if rfnocmodtool
          from gr-ettus is still the best way to create an OOT block and
          eventually what is going to be its replacement in the future.</=
div>
        <div>thanks,</div>
        <div><br clear=3D"all">
          <div>
            <div dir=3D"ltr" class=3D"gmail_signature"
              data-smartmail=3D"gmail_signature">
              <div dir=3D"ltr"><span
style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.333=
3px">Dario
                  Pennisi</span></div>
              <div dir=3D"ltr"><br>
              </div>
            </div>
          </div>
        </div>
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
  </body>
</html>

--------------iqda8XgHK7ejl2QnwhDF0hOS--

--===============0399618598063622889==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0399618598063622889==--
