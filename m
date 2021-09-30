Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF86441E2CE
	for <lists+usrp-users@lfdr.de>; Thu, 30 Sep 2021 22:47:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 267713841F5
	for <lists+usrp-users@lfdr.de>; Thu, 30 Sep 2021 16:47:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NB9uzV+p";
	dkim-atps=neutral
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 184063841D6
	for <usrp-users@lists.ettus.com>; Thu, 30 Sep 2021 16:46:48 -0400 (EDT)
Received: by mail-qt1-f170.google.com with SMTP id f15so7007100qtv.9
        for <usrp-users@lists.ettus.com>; Thu, 30 Sep 2021 13:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=ojydkpjzc4IPWXFYXcp9M/XEC8bnn+uGHM/4um4YxvE=;
        b=NB9uzV+p9JNpJQwjT6q++SsG7TYj+EqumUy4NVie4Wrgh5arXyehfk0D6Ujupw/23j
         bevqFEUJOPzVFoffZHcz8jnsGMqqfcOtRcPGZ8T7AIEszLXSU4fGC3R00uyZi9aKISgk
         tobjfA6EW6n7E//SFD2P40/AsvKQtoaZCY1Xed2PkxVJZGIO0jMS6jRLSueYiq2YZsW8
         ACgfTJNZU2v5chuOkqase2HfXjsswhvAGn2+G/zN5LKjKtATFOGCyu7Y9eQxKapA3rNT
         QZU3PctTigcn1gXDF90vjqAycVYxDeCda1ApJ8Cybty6hUGzoKB3Eky2yt27JjLBst4I
         y4+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=ojydkpjzc4IPWXFYXcp9M/XEC8bnn+uGHM/4um4YxvE=;
        b=nqxlMXgVLb8KnJ8V6crB0n6dLTqT0usMzVfQzCHLq61zENV8a4r7cLlIpAs9EFyQzr
         d3xSXKun1q3OSgouoZfett486gE2WYBArY1htZJQEnexaZkQ0EfdpUhT7H5tmWlcTw21
         fmpVbI6JEy9KaWK6E/HbAvlHlo9DAknm0mIizho92cn0MuHaluPQQ7pFt6heQ0AZ9BNC
         jBneSVOv1OOYZ9mqcHtQVXyIlmxTqj6ZAVl3SgzfuVeI79P+WxjYkgZJKsufXaCy6BXB
         VPoR1FWi1hhn0Zu0TC/Xl11KV+VPL/XzQcLSAY3kqItGhFxRO5SpMsENPI5aWxM6y75Y
         6KIA==
X-Gm-Message-State: AOAM532fI03krGspRnzxMsEzKYDcMJuvcAT94Gb+6D+WK5CE5DSRhyjq
	dAMviiD/+sVyq7i2yfdzymCxj+CNGO3ENw==
X-Google-Smtp-Source: ABdhPJw2/aGsQBwc6pkF11XOEzgam8b0eqz36nNj361rfKqL0ABhOlhGktZMbiqUAj5PnaIQERfRWA==
X-Received: by 2002:ac8:138c:: with SMTP id h12mr8643074qtj.357.1633034808378;
        Thu, 30 Sep 2021 13:46:48 -0700 (PDT)
Received: from [192.168.2.251] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id x8sm2127116qtv.5.2021.09.30.13.46.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Sep 2021 13:46:47 -0700 (PDT)
To: "Adam Bader (Proxy)" <adam.bader@oroliads.com>,
 Rob Kossler <rkossler@nd.edu>
References: <CY1P110MB08211A4EDC3FF3B5A0C29EC8E3AA9@CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM>
 <db842876-79a2-4807-fdf3-d86d03f2e29f@gmail.com>
 <CY1P110MB0821105DB4342C7D8C5A4AFCE3AA9@CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM>
 <CAB__hTSQL_ozNwJLnvyj+gpY+Nqo9xmj-=4Q1Njb98Nq-v2i5w@mail.gmail.com>
 <CY1P110MB08213E904D0CAB514E1CDF08E3AA9@CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <e8334022-4808-1181-b924-eb9bea20f255@gmail.com>
Date: Thu, 30 Sep 2021 16:46:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CY1P110MB08213E904D0CAB514E1CDF08E3AA9@CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM>
Content-Language: en-US
Message-ID-Hash: TZLCBXSHNM3N4IH3QBD4NMOTMYYBFBHA
X-Message-ID-Hash: TZLCBXSHNM3N4IH3QBD4NMOTMYYBFBHA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Amount of Radio Buffer in 4.1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TZLCBXSHNM3N4IH3QBD4NMOTMYYBFBHA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8354670697770402100=="

This is a multi-part message in MIME format.
--===============8354670697770402100==
Content-Type: multipart/alternative;
 boundary="------------97FA20287CEFD21F969E42F1"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------97FA20287CEFD21F969E42F1
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-09-30 4:40 p.m., Adam Bader (Proxy) wrote:
> My testing has been focused on a single RF channel @62.5Msps since 
> that is failing, but we normally run all 4 channels at that sampling 
> rate with 3.13 successfully.
>
> The benchmark_rate example as well as the sample application I wrote 
> do not show these failures consistently, there are occasional runs 
> where underruns and late commands will show up. Our application hits 
> underruns almost immediately after the initial time_spec passes and RF 
> transmission begins.
>
> I've been trying to investigate why we see consistent failures in our 
> application when nothing changes other than the version of UHD, which 
> led me to finding what seems like a significant change in the amount 
> of buffer the radio allocates.
> _____________________________________
> The information contained in this e-mail and any attachments from 
> Orolia may contain confidential and/or proprietary information, and is 
> intended only for the named recipient to whom it was originally 
> addressed. If you are not the intended recipient, any disclosure, 
> distribution, or copying of this e-mail or its attachments is strictly 
> prohibited. If you have received this e-mail in error, please notify 
> the sender immediately by return e-mail and permanently delete the 
> e-mail and any attachments.
Given that 1msec of data at 62.5msps is only 125Kbyte of buffer, I'm 
kind of doubtful that this is, per se, a buffering issue.

Does your application set up the stream for "NUM_SAMPS_AND_MORE" or 
"NUM_SAMPS_AND_DONE" or "START_CONTINUOUS"?

What is the spacing between your 1ms bursts?





--------------97FA20287CEFD21F969E42F1
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-30 4:40 p.m., Adam Bader
      (Proxy) wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CY1P110MB08213E904D0CAB514E1CDF08E3AA9@CY1P110MB0821.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        My testing has been focused on a single RF channel @62.5Msps
        since that is failing, but we normally run all 4 channels at
        that sampling rate with 3.13 successfully.=A0</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        The benchmark_rate example as well as the sample application I
        wrote do not show these failures consistently, there are
        occasional runs where underruns and late commands will show up.
        Our application hits underruns almost immediately after the
        initial time_spec passes and RF transmission begins.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);">
        I've been trying to investigate why we see consistent failures
        in our application when nothing changes other than the version
        of UHD, which led me to finding what seems like a significant
        change in the amount of buffer the radio allocates.=A0</div>
      <div style=3D"" font-size:9pt;=3D"" font-family:=3D""
        ?calibri?,sans-serif;??=3D"">____________________________________=
_<br>
        The information contained in this e-mail and any attachments
        from Orolia may contain confidential and/or proprietary
        information, and is intended only for the named recipient to
        whom it was originally addressed. If you are not the intended
        recipient, any disclosure, distribution, or copying of this
        e-mail or its attachments is strictly prohibited. If you have
        received this e-mail in error, please notify the sender
        immediately by return e-mail and permanently delete the e-mail
        and any attachments.
      </div>
    </blockquote>
    Given that 1msec of data at 62.5msps is only 125Kbyte of buffer, I'm
    kind of doubtful that this is, per se, a buffering issue.<br>
    <br>
    Does your application set up the stream for "NUM_SAMPS_AND_MORE" or
    "NUM_SAMPS_AND_DONE" or "START_CONTINUOUS"?<br>
    <br>
    What is the spacing between your 1ms bursts?<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------97FA20287CEFD21F969E42F1--

--===============8354670697770402100==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8354670697770402100==--
