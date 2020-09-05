Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB33A25E99D
	for <lists+usrp-users@lfdr.de>; Sat,  5 Sep 2020 20:04:20 +0200 (CEST)
Received: from [::1] (port=48692 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kEcXv-0006xR-SN; Sat, 05 Sep 2020 14:04:15 -0400
Received: from mail-qk1-f175.google.com ([209.85.222.175]:38415)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kEcXs-0006qo-GF
 for usrp-users@lists.ettus.com; Sat, 05 Sep 2020 14:04:12 -0400
Received: by mail-qk1-f175.google.com with SMTP id d20so9472847qka.5
 for <usrp-users@lists.ettus.com>; Sat, 05 Sep 2020 11:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=GFsJ6PLlxp0LoNiDEOzgINsbDnwcHyTrm2avi584VH4=;
 b=sAhj1ErmGJ+KoaZE5kFIA9FGM77alsNWZRNLwabxrt6c2tmzhGGKhuAWwAP2gKkZcN
 S/KPYVxaSaB0MC4aDHDeHDKAp3sf+2OwAQmbYfgJb5d0EqbeI+CwhIpBP3VBXKEvn+5l
 z5qfyeKw0LmN1NIWOuZMWKmw/aeTcbzKopGReoRsL81+AQJnyiFWvJ0OE7vhk+c1d31C
 FdK91ckBvdgOE3Fg2NaAt5imNNiLerT2DNhny2cVMPuy4Pv+r0c/5neeDfWQyPZStuLW
 jF018z78Uk2yvjtJ8LngN+BFMfASXEmExqMB/0jX6JmhLFM2fsJ9U0NOGBgml0bX1orO
 Enbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=GFsJ6PLlxp0LoNiDEOzgINsbDnwcHyTrm2avi584VH4=;
 b=XKFazCD4HaSq+HNSYxbsEscPLYka1xPsWeaTbCUwLNMS6XlfZuFof5D69fDwNddiP7
 1prRfCS8BzKAH5gPoL8YzRe84MlFeK03XrR2OLGyfINAyNwVKqGrtxpsM3s3TXh9m2pm
 3UOLhNoPWEdcbyePEKWvaZsMpXMpLBaJWIRCoGzfcbmqCrbVitG1aKH3CkTZVNcrU5ql
 /bB5G9PJ3kA+kS6TrWxCph6nWJP2Vjq3JBKE4wZoPqXaUOcxeglEF3ruCUtJc+07rTGt
 RxCs6G+KsXTwEZY1Sadv1ADSjKFvzmV04KAp2RfCezqvQe3rDw0n9rrQTQyvwALg4vmO
 R/OA==
X-Gm-Message-State: AOAM533qmYQoOvZTiZGEtkV9So2+P7vIfTzSaRdNEEPMBNqdNa9b+OVp
 kGzGUtwUj3LeuZLRaSKfXT+RUa1v9+A=
X-Google-Smtp-Source: ABdhPJyLkj2PVn1w/gNncD0D4Ry5EZO1YLwP2CiFc/ra5bL9jIUnBxli5Wd0ENNVxiFAtaHOvexF6w==
X-Received: by 2002:a37:794:: with SMTP id 142mr13198220qkh.114.1599329011692; 
 Sat, 05 Sep 2020 11:03:31 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id d10sm7049677qkk.1.2020.09.05.11.03.31
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 05 Sep 2020 11:03:31 -0700 (PDT)
Message-ID: <5F53D2F2.2080107@gmail.com>
Date: Sat, 05 Sep 2020 14:03:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <MA1PR01MB25887D46F7718F3B577EB766902A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB25887D46F7718F3B577EB766902A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] USRP sensitivity
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============7637289155053908088=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--===============7637289155053908088==
Content-Type: multipart/alternative;
 boundary="------------050701060900050201070204"

This is a multi-part message in MIME format.
--------------050701060900050201070204
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/05/2020 10:57 AM, Koyel Das (Vehere) via USRP-users wrote:
> Hi,
>
> NI told me magnitude of IQ samples received in usrp is the voltage in 
> volts.
The I/Q samples are *linearly proportional* to the antenna voltage. But 
you can't use an analysis like below to come to any conclusions
   about absolute antenna voltage from the samples.


>
> Info: Office wifi 10 m distant USRP 70 dB (power) gain gives 10^-3 
> (volts? ie magnitude of IQ samples)
>
> Assume wifi transmits +20 dBm, isotropic radiator, isotropic receiving 
> antenna
>
> Voltage expected at receiving antenna terminals in 50 ohm:
>
> Effective area receiving antenna: lambda^2 / (4 pi) = (0.125 m)^2 / (4 
> pi) = 1.2e-3 m^2
> Power per area at 10 m distance = 0.01 W / (4 pi * (10 m)^2) = 8e-6 W/m^2
> Received power = power per area * effective area = 8e-6 W/m^2 * 1.2e-3 
> m^2 = 9.5e-9 W
> P = V^2/R 9.5e-9 W = V^2 / 50 ohm V = 7e-4 V is voltage across antenna 
> terminals
>
> Voltage at ADC:
>
> Power gain = 70 dB -> voltage gain = 45 dB.
> 7e-4 V at antenna terminal is amplified by factor 10^4.5, gives 22 V
The ADCs are set to a reference voltage of 1.2V.  That's as much as they 
can reasonably see.

Also, you haven't said what USRP you're using, nor what frequency you're 
operating at.

Further 70dB power gain == 35dB voltage gain.

I prefer to do this type of analysis with any of the online path-loss 
calculator tools, and set both the TX and TX antenna gain to 0.

Further, you can't infer the total system gain from the gain setting in 
the API--that just sets a gain-setting hardware "variable", which in
   most cases, is an attenuator.  Without knowing WHICH exact hardware 
you're using, you simply cannot know what the exact system gain
   is ahead of the ADC.

But wait there's more.  Unless your sample-rate == ADC clock rate, 
you'll be getting decimated samples, which will tend to reduce the
   total power in the output channel, leading to lower-magnitude samples.





--------------050701060900050201070204
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/05/2020 10:57 AM, Koyel Das
      (Vehere) via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:MA1PR01MB25887D46F7718F3B577EB766902A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div>
          <div>Hi,</div>
          <div dir="ltr"><br>
          </div>
          <div dir="ltr">NI told me magnitude of IQ samples received in
            usrp is the voltage in volts.</div>
        </div>
      </div>
    </blockquote>
    The I/Q samples are *linearly proportional* to the antenna voltage. 
    But you can't use an analysis like below to come to any conclusions<br>
      about absolute antenna voltage from the samples.<br>
    <br>
    <br>
    <blockquote
cite="mid:MA1PR01MB25887D46F7718F3B577EB766902A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <div dir="ltr">
        <div>
          <div dir="ltr"><br>
          </div>
          <div><span style="caret-color: rgb(0, 0, 0); font-family:
              -apple-system, HelveticaNeue; font-size:
              14.666666984558105px; display: inline !important">Info:
              Office wifi 10 m distant USRP 70 dB (power) gain gives
              10^-3 (volts? ie magnitude of IQ samples)</span><br
              style="caret-color: rgb(0, 0, 0); font-family:
              -apple-system, HelveticaNeue; font-size:
              14.666666984558105px">
            <br style="caret-color: rgb(0, 0, 0); font-family:
              -apple-system, HelveticaNeue; font-size:
              14.666666984558105px">
            <span style="caret-color: rgb(0, 0, 0); font-family:
              -apple-system, HelveticaNeue; font-size:
              14.666666984558105px; display: inline !important">Assume
              wifi transmits +20 dBm, isotropic radiator, isotropic
              receiving antenna</span><br style="caret-color: rgb(0, 0,
              0); font-family: -apple-system, HelveticaNeue; font-size:
              14.666666984558105px">
            <br style="caret-color: rgb(0, 0, 0); font-family:
              -apple-system, HelveticaNeue; font-size:
              14.666666984558105px">
            <span style="caret-color: rgb(0, 0, 0); font-family:
              -apple-system, HelveticaNeue; font-size:
              14.666666984558105px; display: inline !important">Voltage
              expected at receiving antenna terminals in 50 ohm:</span><br
              style="caret-color: rgb(0, 0, 0); font-family:
              -apple-system, HelveticaNeue; font-size:
              14.666666984558105px">
            <br style="caret-color: rgb(0, 0, 0); font-family:
              -apple-system, HelveticaNeue; font-size:
              14.666666984558105px">
            <span style="caret-color: rgb(0, 0, 0); font-family:
              -apple-system, HelveticaNeue; font-size:
              14.666666984558105px; display: inline !important">Effective
              area receiving antenna: lambda^2 / (4 pi) = (0.125 m)^2 /
              (4 pi) = 1.2e-3 m^2</span><br style="caret-color: rgb(0,
              0, 0); font-family: -apple-system, HelveticaNeue;
              font-size: 14.666666984558105px">
            <span style="caret-color: rgb(0, 0, 0); font-family:
              -apple-system, HelveticaNeue; font-size:
              14.666666984558105px; display: inline !important">Power
              per area at 10 m distance = 0.01 W / (4 pi * (10 m)^2) =
              8e-6 W/m^2</span><br style="caret-color: rgb(0, 0, 0);
              font-family: -apple-system, HelveticaNeue; font-size:
              14.666666984558105px">
            <span style="caret-color: rgb(0, 0, 0); font-family:
              -apple-system, HelveticaNeue; font-size:
              14.666666984558105px; display: inline !important">Received
              power = power per area * effective area = 8e-6 W/m^2 *
              1.2e-3 m^2 = 9.5e-9 W</span><br style="caret-color: rgb(0,
              0, 0); font-family: -apple-system, HelveticaNeue;
              font-size: 14.666666984558105px">
            <span style="caret-color: rgb(0, 0, 0); font-family:
              -apple-system, HelveticaNeue; font-size:
              14.666666984558105px; display: inline !important">P =
              V^2/R 9.5e-9 W = V^2 / 50 ohm V = 7e-4 V is voltage across
              antenna terminals</span><br style="caret-color: rgb(0, 0,
              0); font-family: -apple-system, HelveticaNeue; font-size:
              14.666666984558105px">
            <br style="caret-color: rgb(0, 0, 0); font-family:
              -apple-system, HelveticaNeue; font-size:
              14.666666984558105px">
            <span style="caret-color: rgb(0, 0, 0); font-family:
              -apple-system, HelveticaNeue; font-size:
              14.666666984558105px; display: inline !important">Voltage
              at ADC:</span><br style="caret-color: rgb(0, 0, 0);
              font-family: -apple-system, HelveticaNeue; font-size:
              14.666666984558105px">
            <br style="caret-color: rgb(0, 0, 0); font-family:
              -apple-system, HelveticaNeue; font-size:
              14.666666984558105px">
            <span style="caret-color: rgb(0, 0, 0); font-family:
              -apple-system, HelveticaNeue; font-size:
              14.666666984558105px; display: inline !important">Power
              gain = 70 dB -&gt; voltage gain = 45 dB.</span><br
              style="caret-color: rgb(0, 0, 0); font-family:
              -apple-system, HelveticaNeue; font-size:
              14.666666984558105px">
            <span style="caret-color: rgb(0, 0, 0); font-family:
              -apple-system, HelveticaNeue; font-size:
              14.666666984558105px; display: inline !important">7e-4 V
              at antenna terminal is amplified by factor 10^4.5, gives
              22 V</span></div>
        </div>
      </div>
    </blockquote>
    The ADCs are set to a reference voltage of 1.2V.  That's as much as
    they can reasonably see.<br>
    <br>
    Also, you haven't said what USRP you're using, nor what frequency
    you're operating at.<br>
    <br>
    Further 70dB power gain == 35dB voltage gain.<br>
    <br>
    I prefer to do this type of analysis with any of the online
    path-loss calculator tools, and set both the TX and TX antenna gain
    to 0.<br>
    <br>
    Further, you can't infer the total system gain from the gain setting
    in the API--that just sets a gain-setting hardware "variable", which
    in<br>
      most cases, is an attenuator.  Without knowing WHICH exact
    hardware you're using, you simply cannot know what the exact system
    gain<br>
      is ahead of the ADC.<br>
    <br>
    But wait there's more.  Unless your sample-rate == ADC clock rate,
    you'll be getting decimated samples, which will tend to reduce the<br>
      total power in the output channel, leading to lower-magnitude
    samples.<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------050701060900050201070204--


--===============7637289155053908088==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7637289155053908088==--

