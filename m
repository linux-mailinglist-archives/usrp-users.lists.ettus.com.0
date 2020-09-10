Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 019562648FA
	for <lists+usrp-users@lfdr.de>; Thu, 10 Sep 2020 17:43:57 +0200 (CEST)
Received: from [::1] (port=44092 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGOjp-0007Fp-G3; Thu, 10 Sep 2020 11:43:53 -0400
Received: from mail-qk1-f176.google.com ([209.85.222.176]:45306)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kGOjl-00077O-3A
 for usrp-users@lists.ettus.com; Thu, 10 Sep 2020 11:43:49 -0400
Received: by mail-qk1-f176.google.com with SMTP id o5so6479545qke.12
 for <usrp-users@lists.ettus.com>; Thu, 10 Sep 2020 08:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=1wmfUTMqorr4QKjeHnMrUs1grFtT2B0qbcv0J0dGrUY=;
 b=EJioi4LbYtgZLPA5QvkGBlf0zUqlOCk1+fYTeZogJFCs3LpOUCHW2B4Zr0VqC+1zhr
 NevZaP0co4Bq8F6Rtgz8L16QJr8YKmLqFena07tj2xrkiDnHik9UpAhqmTfKyZN80f0K
 Vqw+eZbtlla5CJoRfTTV/3aPn07jDQwAsVxeh8qVWoMqdYncEJdFb6GZlJhu9lTv5+rb
 ibEREtgVUG29CuPBZQjuinU8Y0UTb6h9Z1Ex5fbFl7Vth1OPZb6sdvBmyR+pq2nwEX82
 2gFIdAG/I4kYS6Ipzu9axu/Pv980TVUsH1fXl/TII2ObZlAfurfeLpx31ErGhqLv9gSz
 +wIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=1wmfUTMqorr4QKjeHnMrUs1grFtT2B0qbcv0J0dGrUY=;
 b=k2f4QqtR4yssUnK+N0BB4hM9dOvXuC6YE/itODVopmwQ4XlT449Bfy0iy2mPiAk2Hy
 TKOTbSeWANBc3oK5pVD2hp2RVuFNuh8Km4QtaJqC8YZvZZ35ne/WshP1MeRkPqGBMfwx
 p6vJhvV6tzSlsv3WcH41g5HRCYfWEdZsKS6drR6o9g8+sp89qzBx/f+zAYAUoSA4nUhl
 VmeWz0V2I/qOvYF10bpywe2L2r0CdhfoRd7wUoAMzNWWxuG6MFYOmM/OMEwL3i0w8mjS
 1lF/6bnZjCHC4Idi9fCwIO+d5A3Ew3r5Eph+fvgomAxVYQk42RaI06F1zgCiyTG2qxaf
 ST0A==
X-Gm-Message-State: AOAM5339R5SzS94ogZmSZkq8I00q4c3LnJYPVuN+enqk2w8qj26Od0uR
 PgjUHX2362qilGnAwZD7su5Jl1mgv0zhjA==
X-Google-Smtp-Source: ABdhPJzwaRJa+L0jDxM3ZAuO8DDW4oBQZPHzr64RqIioC5ooAQR0Gv21PrRYKN4HaAsj7oyLAFciBg==
X-Received: by 2002:a37:a84a:: with SMTP id r71mr8166645qke.481.1599752588295; 
 Thu, 10 Sep 2020 08:43:08 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id s15sm1873817qkj.21.2020.09.10.08.43.07
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Sep 2020 08:43:07 -0700 (PDT)
Message-ID: <5F5A498A.8060202@gmail.com>
Date: Thu, 10 Sep 2020 11:43:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <d0a3da7b-2ecc-b56b-f405-f1a0c9547906@gmail.com>
In-Reply-To: <d0a3da7b-2ecc-b56b-f405-f1a0c9547906@gmail.com>
Subject: Re: [USRP-users] b200mini stops sampling
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
Content-Type: multipart/mixed; boundary="===============8991234027257820085=="
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
--===============8991234027257820085==
Content-Type: multipart/alternative;
 boundary="------------040900030900090800010804"

This is a multi-part message in MIME format.
--------------040900030900090800010804
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/10/2020 08:55 AM, David Evans via USRP-users wrote:
> Hi,
> I have just installed the latest "master" branch of UHD (4.0.0.0).
>
> If an overrun occurs during sampling, sampling does not continue 
> thereafter.
> I noticed this with uhd_fft, which hangs with rates over 8MHz, and 
> also rx_samples_to_file:
>
> ./rx_samples_to_file --freq 900000000 --rate 40000000
>
> Creating the usrp device with: ...
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; 
> UHD_4.0.0.0-34-g2655b0aa
> [INFO] [B200] Detected Device: B200mini
> [INFO] [B200] Operating over USB 3.
> [INFO] [B200] Initialize CODEC control...
> [INFO] [B200] Initialize Radio control...
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Setting master clock rate selection to 'automatic'.
> [INFO] [B200] Asking for clock rate 16.000000 MHz...
> [INFO] [B200] Actually got clock rate 16.000000 MHz.
> Using Device: Single USRP:
>   Device: B-Series Device
>   Mboard 0: B200mini
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: FE-RX1
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: FE-TX1
>
> Setting RX Rate: 40.000000 Msps...
> [INFO] [B200] Asking for clock rate 40.000000 MHz...
> [INFO] [B200] Actually got clock rate 40.000000 MHz.
> Actual RX Rate: 40.000000 Msps...
>
> Setting RX Freq: 900.000000 MHz...
> Setting RX LO Offset: 0.000000 MHz...
> Actual RX Freq: 900.000000 MHz...
>
> Waiting for "lo_locked": ++++++++++ locked.
>
> Press Ctrl + C to stop streaming...
> OGot an overflow indication. Please consider the following:
>   Your write medium must sustain a rate of 160.000000MB/s.
>   Dropped samples will not be written to the file.
>   Please modify this example for your purposes.
>   This message will not appear again.
> *Timeout while streaming*
>
> Done!
>
> Any ideas please?
> Should I be using the master branch, if not how do I checkout a stable 
> branch ?
>
> Thanks,
> Dave
>

You can get a list of tagged versions using:

git tag

Try again with:

git checkout   v3.15.0.0

Sometimes when the overruns are persistent and at very high rates, the 
software is unable to recover, because so much information has been
   dropped, any recovery procedure would be roughly as drastic as having 
to re-start.



--------------040900030900090800010804
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/10/2020 08:55 AM, David Evans via
      USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:d0a3da7b-2ecc-b56b-f405-f1a0c9547906@gmail.com"
      type="cite">
      <meta http-equiv="content-type" content="text/html;
        charset=windows-1252">
      Hi,<br>
      I have just installed the latest "master" branch of UHD (4.0.0.0).<br>
      <br>
      If an overrun occurs during sampling, sampling does not continue
      thereafter.<br>
      I noticed this with uhd_fft, which hangs with rates over 8MHz, and
      also rx_samples_to_file:<br>
      <br>
      ./rx_samples_to_file --freq 900000000 --rate 40000000<br>
      <br>
      Creating the usrp device with: ...<br>
      [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
      UHD_4.0.0.0-34-g2655b0aa<br>
      [INFO] [B200] Detected Device: B200mini<br>
      [INFO] [B200] Operating over USB 3.<br>
      [INFO] [B200] Initialize CODEC control...<br>
      [INFO] [B200] Initialize Radio control...<br>
      [INFO] [B200] Performing register loopback test...<br>
      [INFO] [B200] Register loopback test passed<br>
      [INFO] [B200] Setting master clock rate selection to 'automatic'.<br>
      [INFO] [B200] Asking for clock rate 16.000000 MHz...<br>
      [INFO] [B200] Actually got clock rate 16.000000 MHz.<br>
      Using Device: Single USRP:<br>
        Device: B-Series Device<br>
        Mboard 0: B200mini<br>
        RX Channel: 0<br>
          RX DSP: 0<br>
          RX Dboard: A<br>
          RX Subdev: FE-RX1<br>
        TX Channel: 0<br>
          TX DSP: 0<br>
          TX Dboard: A<br>
          TX Subdev: FE-TX1<br>
      <br>
      Setting RX Rate: 40.000000 Msps...<br>
      [INFO] [B200] Asking for clock rate 40.000000 MHz...<br>
      [INFO] [B200] Actually got clock rate 40.000000 MHz.<br>
      Actual RX Rate: 40.000000 Msps...<br>
      <br>
      Setting RX Freq: 900.000000 MHz...<br>
      Setting RX LO Offset: 0.000000 MHz...<br>
      Actual RX Freq: 900.000000 MHz...<br>
      <br>
      Waiting for "lo_locked": ++++++++++ locked.<br>
      <br>
      Press Ctrl + C to stop streaming...<br>
      OGot an overflow indication. Please consider the following:<br>
        Your write medium must sustain a rate of 160.000000MB/s.<br>
        Dropped samples will not be written to the file.<br>
        Please modify this example for your purposes.<br>
        This message will not appear again.<br>
      <b>Timeout while streaming</b><br>
      <br>
      Done!<br>
      <br>
      Any ideas please?  <br>
      Should I be using the master branch, if not how do I checkout a
      stable branch ?<br>
      <br>
      Thanks,<br>
      Dave<br>
      <br>
    </blockquote>
    <br>
    You can get a list of tagged versions using:<br>
    <br>
    git tag<br>
    <br>
    Try again with:<br>
    <br>
    git checkout   v3.15.0.0<br>
    <br>
    Sometimes when the overruns are persistent and at very high rates,
    the software is unable to recover, because so much information has
    been<br>
      dropped, any recovery procedure would be roughly as drastic as
    having to re-start.<br>
    <br>
    <br>
  </body>
</html>

--------------040900030900090800010804--


--===============8991234027257820085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8991234027257820085==--

