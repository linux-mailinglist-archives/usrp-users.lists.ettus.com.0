Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1198265C2C6
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 16:09:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EE29038407D
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 10:09:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672758590; bh=l9UxsclNMgjNpsLF98uBORNB54V8ePD8+6pOZodkdf0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=rneMyA4nNxVHHH5TUhNFXyT+B/1uRZuER0UUj6E6Q6/GmYU+OkXnjoyXRcZwLl8w4
	 4aI4GDB4lr/zU7LP/dSY1Ru1ZUYOkxqgW0GxOdhSwRXraS+1dCWwSLYD1v8j6vmG4Y
	 7EARBVJ8iCTSNYBD6C/hQA0jThFjX4Y3WEwfzkkTSKk9uAZZ3TY6jA0djpG5xexGJF
	 wrFmmWGqx8wQ0xwK6ZCjdry+V+f5DCLXBM41sgKsZmDj0H8e63SSvVRU/Mn/o6cNLM
	 y2QLu06DPGaV3QkOnmoQnSn/Ep+X16NNklGBh7q5g21dEFVBSlYxWUM0IJ4lCyBHQp
	 bl8tSu47hQl5g==
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 0BD95384072
	for <usrp-users@lists.ettus.com>; Tue,  3 Jan 2023 10:08:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="xZigyDWS";
	dkim-atps=neutral
Received: by mail-wr1-f54.google.com with SMTP id az7so5370006wrb.5
        for <usrp-users@lists.ettus.com>; Tue, 03 Jan 2023 07:08:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fpbHQMVCURNdNtiVjIGhGWH1oqiVH1qZLFJzMOL2630=;
        b=xZigyDWSi8JkeaSWpNDTM9HhyK3Krdq5LvBBfdY/b1g88ndK9MzCbfujI63QQmkRTb
         WW9stttoxB0aVsjHYJlF4gSj8dJ9G18ZeY+LK17KUEho3QCWWONXgqbTO6pGWBk9fTbW
         yP/QvkuaM4MYJmDFcNKxj9RfN27CZ+6pX51lpSzG7aNjQXZVE4RICt1+CIswx9wDVDvQ
         hPS8X8pQT80uHvhnSyaaO/6qQ1OvQT90GeIIqKFtVEV/9x60PmqnDeX3WE6Wfa8bFbuZ
         0g8XDr/aqdEC6ZPUQZ0V0bnIcnJLow6lBZrb0ulfwP4/Uf3AHgexQw/WUzMHNhqeGF0V
         uxTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fpbHQMVCURNdNtiVjIGhGWH1oqiVH1qZLFJzMOL2630=;
        b=rXlmGkAAV3k++DGJWxOr65xexQDafIbYyZckQrBVUN8165I9TrVUVf/hQWjrMrg7oU
         QucYcZCm7j18NbxMTUBXMhHsfgUA1ScWBFF0YmBKzxJ+wq6QPP+plKHwArnnlh0pcpNA
         0TuU32oaI92A61A7e+p8PtG1KnubMK1uxenOsgOgmkRPZUAoqSHYG8I8dIbz352zD8LH
         bCbelDbrNuTGvfu8YKFMCXsbLmr5ouzU7OMmK1+1kSVpaS99ID/bEeA1ksbAXhTHY9sP
         +TAaPJDvY+4aaeRnssUD0duRhsImH4FrYZG8MBZhodfrOjS787IXZhZnV+Q2llOYH6dj
         D1tw==
X-Gm-Message-State: AFqh2kqEWlFQxXc2aFM695S95YMdtZvyvDrduNIl7CPJBxI6Gf/hMSWX
	V5Lgw47S0dU0l7sxychuHArs0XByztndcO1z5FA=
X-Google-Smtp-Source: AMrXdXuWjU5bOUfjcVwJqlc2zGYtSCoo1YEH6NK0zQE1ivGdR/hKnjQs901nwBtUaJDFmjCas7z50Q==
X-Received: by 2002:adf:f882:0:b0:28e:875a:f660 with SMTP id u2-20020adff882000000b0028e875af660mr8896228wrp.28.1672758537450;
        Tue, 03 Jan 2023 07:08:57 -0800 (PST)
Received: from ?IPV6:2001:9e8:3867:8800:998f:ca6a:6065:3212? ([2001:9e8:3867:8800:998f:ca6a:6065:3212])
        by smtp.gmail.com with ESMTPSA id f1-20020a5d5681000000b002714b3d2348sm31912949wrv.25.2023.01.03.07.08.56
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jan 2023 07:08:56 -0800 (PST)
Message-ID: <1e3137bc-53e2-70ac-2c4e-4a253cdf6e95@ettus.com>
Date: Tue, 3 Jan 2023 16:08:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Tw8IjE6vV1f8jS724ptiIK8G4uU8WZ9RNGKr4RLzWDQ@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <Tw8IjE6vV1f8jS724ptiIK8G4uU8WZ9RNGKr4RLzWDQ@lists.ettus.com>
Message-ID-Hash: YS2TTXZVP5JCC6X37DFGDTCHOE5RJHW2
X-Message-ID-Hash: YS2TTXZVP5JCC6X37DFGDTCHOE5RJHW2
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RX Channel out of range
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YS2TTXZVP5JCC6X37DFGDTCHOE5RJHW2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5913598693151231232=="

This is a multi-part message in MIME format.
--===============5913598693151231232==
Content-Type: multipart/alternative;
 boundary="------------jMbtkidWlk9MIOIldPUfdSbA"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------jMbtkidWlk9MIOIldPUfdSbA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I'm guessing here, but: /
/

/RX channel 2106923663889/

is not the worst indication that your benchmark_rate calls a UHD function with a different 
function signature than it thinks it has.

This would only happen if you have competing installations of UHD on your machine: one 
from which your benchmark_rate.exe is, and a different one supplying the library that that 
program uses.

Can you make sure that's not the case? How did you install UHD?


Best regards,

Marcus

On 03.01.23 15:29, henry.powell.xx@gmail.com wrote:

> Hello,
>
> I am writing this code from terminal:
>
> /benchmark_rate --rx_rate 10e6 --tx_rate 10e6/ and the output is: /[INFO] [UHD] Win32; 
> Microsoft Visual C++ version 14.1; Boost_107000; UHD_4.2.0.0-release [00:00:00.000100] 
> Creating the usrp device with: ... [INFO] [B200] Detected Device: B200 [INFO] [B200] 
> Operating over USB 3. [INFO] [B200] Initialize CODEC control... [INFO] [B200] Initialize 
> Radio control... [INFO] [B200] Performing register loopback test... [INFO] [B200] 
> Register loopback test passed [INFO] [B200] Setting master clock rate selection to 
> 'automatic'. [INFO] [B200] Asking for clock rate 16.000000 MHz... [INFO] [B200] Actually 
> got clock rate 16.000000 MHz. Using Device: Single USRP: Device: B-Series Device Mboard 
> 0: B200 RX Channel: 0 RX DSP: 0 RX Dboard: A RX Subdev: FE-RX1 TX Channel: 0 TX DSP: 0 
> TX Dboard: A TX Subdev: FE-TX1 Error: LookupError: IndexError: multi_usrp: RX channel 
> 2106923663889 out of range for configured RX frontends/
>
> I tried to enter channels manual but outcomes is same
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------jMbtkidWlk9MIOIldPUfdSbA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hello, <br>
    </p>
    <p>I'm guessing here, but: <em><br>
      </em></p>
    <p><em>RX channel 2106923663889</em></p>
    <p>is not the worst indication that your benchmark_rate calls a UHD
      function with a different function signature than it thinks it
      has.</p>
    <p>This would only happen if you have competing installations of UHD
      on your machine: one from which your benchmark_rate.exe is, and a
      different one supplying the library that that program uses.</p>
    <p>Can you make sure that's not the case? How did you install UHD?</p>
    <p><br>
    </p>
    <p>Best regards,</p>
    <p>Marcus<br>
    </p>
    <p>On 03.01.23 15:29, <a class="moz-txt-link-abbreviated" href="mailto:henry.powell.xx@gmail.com">henry.powell.xx@gmail.com</a> wrote:</p>
    <blockquote type="cite"
      cite="mid:Tw8IjE6vV1f8jS724ptiIK8G4uU8WZ9RNGKr4RLzWDQ@lists.ettus.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p>Hello,</p>
      <p>I am writing this code from terminal:</p>
      <p><em>benchmark_rate --rx_rate 10e6 --tx_rate 10e6</em>
        and the output is:
        <em>[INFO] [UHD] Win32; Microsoft Visual C++ version 14.1;
          Boost_107000; UHD_4.2.0.0-release
          [00:00:00.000100] Creating the usrp device with: ...
          [INFO] [B200] Detected Device: B200
          [INFO] [B200] Operating over USB 3.
          [INFO] [B200] Initialize CODEC control...
          [INFO] [B200] Initialize Radio control...
          [INFO] [B200] Performing register loopback test...
          [INFO] [B200] Register loopback test passed
          [INFO] [B200] Setting master clock rate selection to
          'automatic'.
          [INFO] [B200] Asking for clock rate 16.000000 MHz...
          [INFO] [B200] Actually got clock rate 16.000000 MHz.
          Using Device: Single USRP: Device: B-Series Device Mboard 0:
          B200 RX Channel: 0 RX DSP: 0 RX Dboard: A RX Subdev: FE-RX1 TX
          Channel: 0 TX DSP: 0 TX Dboard: A TX Subdev: FE-TX1
          Error: LookupError: IndexError: multi_usrp: RX channel
          2106923663889 out of range for configured RX frontends</em></p>
      <p>I tried to enter channels manual but outcomes is same</p>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------jMbtkidWlk9MIOIldPUfdSbA--

--===============5913598693151231232==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5913598693151231232==--
