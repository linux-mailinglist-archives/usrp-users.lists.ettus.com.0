Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A15562662EC
	for <lists+usrp-users@lfdr.de>; Fri, 11 Sep 2020 18:07:26 +0200 (CEST)
Received: from [::1] (port=55192 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGla7-0002by-98; Fri, 11 Sep 2020 12:07:23 -0400
Received: from mail-wr1-f43.google.com ([209.85.221.43]:43367)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dasypuss@gmail.com>) id 1kGla2-0002Oz-Tj
 for usrp-users@lists.ettus.com; Fri, 11 Sep 2020 12:07:19 -0400
Received: by mail-wr1-f43.google.com with SMTP id k15so11996438wrn.10
 for <usrp-users@lists.ettus.com>; Fri, 11 Sep 2020 09:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=KXIidZPvxJOZaC/6QWo8+Y0EfH3dhONaGkJ2RpePBV0=;
 b=F0uaH7iSCo58dKmfprkWAJWQCrYZI/uC0mfRiKoLuqPIt31piB7QNXUtnFWcrKej/5
 rWMTdY36A92WrxebQEHAJKNCPF28hfvxmv9ENAu0nPaHW0s74Ur0RBe9paQh6i89+U2Z
 x9/9DSL9MORdPYT6y1xcHysF0VU5ADtIbTHiGxN+UGd6Cxf6x84SrYiW8jWHnGbb5Nbo
 g2FEq6mAu5KWgBaZzmvboA8lb6tSfMvPHdau/Rs7CkZve6GFCLYLlQBalM54CSLB+c7O
 ILEke5Ywf3ic1uZJrX+aNplLegf+QoiXxnCa/HOmOuCTWSVWs6juUEN/axhDUI0fXJ6O
 8CKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=KXIidZPvxJOZaC/6QWo8+Y0EfH3dhONaGkJ2RpePBV0=;
 b=WInV9zRQv1EiiP3WKMJn9lkt+jUYt8L24jd3CG3wooqaOD3HOCyzR4CcvPmow2S5DK
 x8hf417AOxoUXcT4LpV9hSOmjEiq7IUK4Rit3BPZs8wOa7MJWb6RZDIfYX+BHrC2yJUd
 lM8aUpn/BhwPWXiVlpUUI44EC/x9TMXHqedS9U+9lUFblDBJewPcsIhcYZkVB5hw63RW
 RCP9fFz0NGhEzLsy0aJin5sYtCFJxKt1mR1hGe/cxx8vAV1GeSPDwPXuIuyNHW7H4TjS
 vVQPqYpghGXew8huajHFLjg8bznkL/B2OpBABS6G0F+tXy0Adrq1Vdji0iaGTjCS8iri
 lfuQ==
X-Gm-Message-State: AOAM530kewrhk8h/TKjR1d/+EGbhqBwShN8Wi/3I9ka+mZ0qzBe0ROjG
 8eN53Vq7Fah4+jUtNcHgsdzRYX6UPmw=
X-Google-Smtp-Source: ABdhPJyWBFinxvVq/h5OuLTbla7v0RaSGFYYn+nJAfEisGiDnzsijWxvEzQbzb8iakcK+ti+BRifOw==
X-Received: by 2002:adf:f0c7:: with SMTP id x7mr2691704wro.315.1599840397517; 
 Fri, 11 Sep 2020 09:06:37 -0700 (PDT)
Received: from ?IPv6:2a00:23c6:7081:1d01:7c62:76ae:e001:ebab?
 ([2a00:23c6:7081:1d01:7c62:76ae:e001:ebab])
 by smtp.gmail.com with ESMTPSA id p16sm5512558wro.71.2020.09.11.09.06.36
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 11 Sep 2020 09:06:36 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <d0a3da7b-2ecc-b56b-f405-f1a0c9547906@gmail.com>
 <5F5A498A.8060202@gmail.com>
Message-ID: <24fbcdd2-35fd-9d14-1c17-7a05d0d2a4e1@gmail.com>
Date: Fri, 11 Sep 2020 17:06:36 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <5F5A498A.8060202@gmail.com>
Content-Language: en-GB
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
From: David Evans via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Evans <dasypuss@gmail.com>
Content-Type: multipart/mixed; boundary="===============7231425367980222904=="
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
--===============7231425367980222904==
Content-Type: multipart/alternative;
 boundary="------------C77D4B5077D60C9C32C51050"
Content-Language: en-GB

This is a multi-part message in MIME format.
--------------C77D4B5077D60C9C32C51050
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Thanks Marcus,

Sorry,, I know this isn't the place, but when i check out a version I 
get "detached head...".
I also don't want to check anything back in, do I ignore this (I've 
never understood what detached head means, even after looking it up!).

Cheers,
Dave

On 10/09/2020 16:43, Marcus D. Leech via USRP-users wrote:
> On 09/10/2020 08:55 AM, David Evans via USRP-users wrote:
>> Hi,
>> I have just installed the latest "master" branch of UHD (4.0.0.0).
>>
>> If an overrun occurs during sampling, sampling does not continue 
>> thereafter.
>> I noticed this with uhd_fft, which hangs with rates over 8MHz, and 
>> also rx_samples_to_file:
>>
>> ./rx_samples_to_file --freq 900000000 --rate 40000000
>>
>> Creating the usrp device with: ...
>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; 
>> UHD_4.0.0.0-34-g2655b0aa
>> [INFO] [B200] Detected Device: B200mini
>> [INFO] [B200] Operating over USB 3.
>> [INFO] [B200] Initialize CODEC control...
>> [INFO] [B200] Initialize Radio control...
>> [INFO] [B200] Performing register loopback test...
>> [INFO] [B200] Register loopback test passed
>> [INFO] [B200] Setting master clock rate selection to 'automatic'.
>> [INFO] [B200] Asking for clock rate 16.000000 MHz...
>> [INFO] [B200] Actually got clock rate 16.000000 MHz.
>> Using Device: Single USRP:
>>   Device: B-Series Device
>>   Mboard 0: B200mini
>>   RX Channel: 0
>>     RX DSP: 0
>>     RX Dboard: A
>>     RX Subdev: FE-RX1
>>   TX Channel: 0
>>     TX DSP: 0
>>     TX Dboard: A
>>     TX Subdev: FE-TX1
>>
>> Setting RX Rate: 40.000000 Msps...
>> [INFO] [B200] Asking for clock rate 40.000000 MHz...
>> [INFO] [B200] Actually got clock rate 40.000000 MHz.
>> Actual RX Rate: 40.000000 Msps...
>>
>> Setting RX Freq: 900.000000 MHz...
>> Setting RX LO Offset: 0.000000 MHz...
>> Actual RX Freq: 900.000000 MHz...
>>
>> Waiting for "lo_locked": ++++++++++ locked.
>>
>> Press Ctrl + C to stop streaming...
>> OGot an overflow indication. Please consider the following:
>>   Your write medium must sustain a rate of 160.000000MB/s.
>>   Dropped samples will not be written to the file.
>>   Please modify this example for your purposes.
>>   This message will not appear again.
>> *Timeout while streaming*
>>
>> Done!
>>
>> Any ideas please?
>> Should I be using the master branch, if not how do I checkout a 
>> stable branch ?
>>
>> Thanks,
>> Dave
>>
>
> You can get a list of tagged versions using:
>
> git tag
>
> Try again with:
>
> git checkout   v3.15.0.0
>
> Sometimes when the overruns are persistent and at very high rates, the 
> software is unable to recover, because so much information has been
>   dropped, any recovery procedure would be roughly as drastic as 
> having to re-start.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------C77D4B5077D60C9C32C51050
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    Thanks Marcus,<br>
    <br>
    Sorry,, I know this isn't the place, but when i check out a version
    I get "detached head...".<br>
    I also don't want to check anything back in, do I ignore this (I've
    never understood what detached head means, even after looking it
    up!).<br>
    <br>
    Cheers,<br>
    Dave<br>
    <br>
    <div class="moz-cite-prefix">On 10/09/2020 16:43, Marcus D. Leech
      via USRP-users wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:5F5A498A.8060202@gmail.com">
      <meta content="text/html; charset=windows-1252"
        http-equiv="Content-Type">
      <div class="moz-cite-prefix">On 09/10/2020 08:55 AM, David Evans
        via USRP-users wrote:<br>
      </div>
      <blockquote
        cite="mid:d0a3da7b-2ecc-b56b-f405-f1a0c9547906@gmail.com"
        type="cite">
        <meta http-equiv="content-type" content="text/html;
          charset=windows-1252">
        Hi,<br>
        I have just installed the latest "master" branch of UHD
        (4.0.0.0).<br>
        <br>
        If an overrun occurs during sampling, sampling does not continue
        thereafter.<br>
        I noticed this with uhd_fft, which hangs with rates over 8MHz,
        and also rx_samples_to_file:<br>
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
        [INFO] [B200] Setting master clock rate selection to
        'automatic'.<br>
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
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------C77D4B5077D60C9C32C51050--


--===============7231425367980222904==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7231425367980222904==--

