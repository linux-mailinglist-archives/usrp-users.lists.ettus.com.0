Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 047E17F17B2
	for <lists+usrp-users@lfdr.de>; Mon, 20 Nov 2023 16:45:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DEC7A384CCB
	for <lists+usrp-users@lfdr.de>; Mon, 20 Nov 2023 10:45:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700495113; bh=Wt9xlht+DcDL3YqCKqqoY20Rtnfz0R0A5K3sZYd9WzM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=JNTT85E1Gm9Uvr5dfCL0LxM6x7UC7llXSoPqoy2ycdpLhHRy45QMvsO229/rbdoMM
	 LHZffPgjOZ1ahZTuaplA16InP0LgVT5CwFBLAHiWOZLGe+HOX/kKiv/lsIKe7w4J2l
	 xfqHYPPozqdwW1EnO6g0GVXFFQia1TEgsxgC0XO29/X0ZcG6nb9RyyzzkJ4nThWXl8
	 II6iMYvz6Z+8yzs8fVdsLyVCkmZH2IeNLnQnGtSTGIh6Db6/0t2xaoOgbU1GhP68TL
	 27z/xJ1LKs9PiQXuC9XQ/fY60r+GymFZSsEukzDe5tlFZS8uxDfDwkFOsenA4Z3uLD
	 DHYmmXZD4wSsA==
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id F3370384B39
	for <usrp-users@lists.ettus.com>; Mon, 20 Nov 2023 10:45:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TZoDuitC";
	dkim-atps=neutral
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6711dd6595fso10590496d6.3
        for <usrp-users@lists.ettus.com>; Mon, 20 Nov 2023 07:45:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700495101; x=1701099901; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CNRQaRFMbdUIw6zcw1272QF2K87lEJ8ZZaR2H8psgi4=;
        b=TZoDuitC4R0cszSSBbZ9CKi72wmf7PNU6fVbr6uylOBGJ1DIJfd6rAqMhAIMEZloti
         siZ9l3uLXU9CZ5YRUi3dwrRsBpAmc7xCMkWnsODq7WT6px1TgWY1vsa0Gta6wNO1HvnI
         1yX1p0lHhsOTXwvKZ2ewmE4MeeGGfvTWphum0i/MFhKlMqxUdT8OhXU6UYAUKp+hmp6A
         o034dFK5o8ZJiWl3ysCuSee6KLdyyjqwH3bzTRIhJlFMyMWYX+DoUnqlGueyZBeiWFld
         G3YXYxaaNtqOlj+kxqndhEcCpa9ke8XZqnmdah8xjTHmUa8zCv1ooEFNmXoDfbx8CP0s
         GymA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700495101; x=1701099901;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CNRQaRFMbdUIw6zcw1272QF2K87lEJ8ZZaR2H8psgi4=;
        b=Rpzvc4AZbGPwaT4NUAuNvNak/Jrf03x+tCueIEL7AnXOOfTZM/aa6MwCBgkoDWKCRf
         9GO8Hdy9qbe1Jr25IV2mRfLQXImIvbs23xqELIOPrmsYMzTcsx+0bLi0WwQ7ezLV/YMD
         1nKfhy0AgSBfN8ZevO8txJ7tTO6oxrjQ+UIa2jE+NoQABGovCzh+mdnNgr+FbmRerYI1
         egZwrTadnMj2DMmBPAf4PDCi6UgsJS6hUsQC9BKLzlVpWSkO8F6oz6cH21ZA9mcPvflk
         wOBjTww7+gJxjtlOIw+ZlcdMYHM1N4G/z2tCAV8k0fD8LAkumr/MeWMs6l40BGe8boLM
         21qA==
X-Gm-Message-State: AOJu0YwaI4ACia/eeax8cNwsf1qQ0wlpATTnTWsWtbDw2Lv0d86P7j+p
	qowoLqSj+r9tRMlnAWsdia/Xu7qBkc0=
X-Google-Smtp-Source: AGHT+IFScJZDwvXrVQjC9VsZRwLkh9gTGO+2I/efxlvCOXgKX1UWHuuLJ2/+S9VLyO51uiE0Py4IcA==
X-Received: by 2002:a05:6214:1ccd:b0:66d:61c3:8ca4 with SMTP id g13-20020a0562141ccd00b0066d61c38ca4mr7563006qvd.15.1700495101127;
        Mon, 20 Nov 2023 07:45:01 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id 3-20020ad45ba3000000b00677fb918337sm2494790qvq.53.2023.11.20.07.45.00
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Nov 2023 07:45:00 -0800 (PST)
Message-ID: <604f2112-9d28-4891-ac07-1d5c9da74bee@gmail.com>
Date: Mon, 20 Nov 2023 10:44:51 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Advk1c3hcwRTHL5gsaBc2LYSMvjBdEmUnlk6Opa0OI@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Advk1c3hcwRTHL5gsaBc2LYSMvjBdEmUnlk6Opa0OI@lists.ettus.com>
Message-ID-Hash: 6EQGQXTAJSMHXEBLXTUES2COUQLHZHZC
X-Message-ID-Hash: 6EQGQXTAJSMHXEBLXTUES2COUQLHZHZC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 caught in bootloop, back LED 0,1 are solid green when device is turned off.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6EQGQXTAJSMHXEBLXTUES2COUQLHZHZC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2641216374336541899=="

This is a multi-part message in MIME format.
--===============2641216374336541899==
Content-Type: multipart/alternative;
 boundary="------------sPk4vpUdzWNT30EsLI2t7LFD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------sPk4vpUdzWNT30EsLI2t7LFD
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 20/11/2023 10:15, jmaloyan@umass.edu wrote:
>
> Hello,
>
> After trying to change the bitstream image from CG to X4 using=20
> uhd_image_loader, I was met with the following error, and then the=20
> x410 got caught in a bootloop=E2=80=A6
>
> |[ERROR] [UHD] An unexpected exception was caught in a task loop.The=20
> task loop will now exit, things may not work.rpc::timeout: Timeout of=20
> 10000ms while calling RPC function 'reclaim'|
>
> In the past when this has happened, I reflashed the eMMC and I was=20
> able to boot again. However, after reflashing the eMMC this time, I am=20
> unable to boot the eMMC.
>
> I noticed that the back panel LEDs, when the device is powered off,=20
> currently has an Amber light on the PWR led, and a solid green light=20
> for LED 0 and 1, with LED 2 turned off. Typically, I have noticed when=20
> the device is powered off that the only LED turned on is the amber PWR=20
> light.
>
> According to the manual, the LED 0 and LED 1 is the heartbeat and FPGA=20
> light on respectively. My concern is the reason reflashing no longer=20
> works is because the eMMC/FPGA is not power cycling like it should, so=20
> it is probably never uses the new image I am trying to flash.
>
> Currently, the x410 is plugged in and I have not tried removing the=20
> power. However, if I remove the power supply, I am afraid I may damage=20
> the board since I would be pulling power from the FPGA, rather than=20
> shutting it down properly.
>
> Is it safe to remove the power supply? And if not, what should I do?
>
That should be safe.=C2=A0=C2=A0 Generally, for computer systems, one doe=
sn't pull=20
the power "in the middle of things" to make certain
 =C2=A0 that the filesystem is in a consistent state when the power gets=20
pulled, otherwise the filesystem can come up in an inconsistent
 =C2=A0 state.

For other types of electronic systems, it's generally safe to pull the=20
power at any time.=C2=A0 Generally.


> Thanks,
>
> Joe
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------sPk4vpUdzWNT30EsLI2t7LFD
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 20/11/2023 10:15, <a class=3D"moz-t=
xt-link-abbreviated" href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.ed=
u</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:Advk1c3hcwRTHL5gsaBc2LYSMvjBdEmUnlk6Opa0OI@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello,</p>
      <p>After trying to change the bitstream image from CG to X4 using
        uhd_image_loader, I was met with the following error, and then
        the x410 got caught in a bootloop=E2=80=A6</p>
      <p><code>[ERROR] [UHD] An unexpected exception was caught in a
          task loop.The task loop will now exit, things may not
          work.rpc::timeout: Timeout of 10000ms while calling RPC
          function 'reclaim'</code></p>
      <p>In the past when this has happened, I reflashed the eMMC and I
        was able to boot again. However, after reflashing the eMMC this
        time, I am unable to boot the eMMC.</p>
      <p>I noticed that the back panel LEDs, when the device is powered
        off, currently has an Amber light on the PWR led, and a solid
        green light for LED 0 and 1, with LED 2 turned off. Typically, I
        have noticed when the device is powered off that the only LED
        turned on is the amber PWR light. </p>
      <p>According to the manual, the LED 0 and LED 1 is the heartbeat
        and FPGA light on respectively. My concern is the reason
        reflashing no longer works is because the eMMC/FPGA is not power
        cycling like it should, so it is probably never uses the new
        image I am trying to flash.</p>
      <p>Currently, the x410 is plugged in and I have not tried removing
        the power. However, if I remove the power supply, I am afraid I
        may damage the board since I would be pulling power from the
        FPGA, rather than shutting it down properly. </p>
      <p>Is it safe to remove the power supply? And if not, what should
        I do?</p>
    </blockquote>
    That should be safe.=C2=A0=C2=A0 Generally, for computer systems, one=
 doesn't
    pull the power "in the middle of things" to make certain<br>
    =C2=A0 that the filesystem is in a consistent state when the power ge=
ts
    pulled, otherwise the filesystem can come up in an inconsistent<br>
    =C2=A0 state.<br>
    <br>
    For other types of electronic systems, it's generally safe to pull
    the power at any time.=C2=A0 Generally.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:Advk1c3hcwRTHL5gsaBc2LYSMvjBdEmUnlk6Opa0OI@lists.ettus.com">
      <p>Thanks,</p>
      <p>Joe</p>
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

--------------sPk4vpUdzWNT30EsLI2t7LFD--

--===============2641216374336541899==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2641216374336541899==--
