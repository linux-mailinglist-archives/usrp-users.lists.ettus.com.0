Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A7F264681
	for <lists+usrp-users@lfdr.de>; Thu, 10 Sep 2020 15:03:02 +0200 (CEST)
Received: from [::1] (port=42910 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGME8-0002KT-Pn; Thu, 10 Sep 2020 09:03:00 -0400
Received: from mail-ed1-f52.google.com ([209.85.208.52]:37046)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <i1ndp.nando@gmail.com>)
 id 1kGME4-0002Di-Q5
 for usrp-users@lists.ettus.com; Thu, 10 Sep 2020 09:02:56 -0400
Received: by mail-ed1-f52.google.com with SMTP id n22so6233768edt.4
 for <usrp-users@lists.ettus.com>; Thu, 10 Sep 2020 06:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=B+qLk1UOc3LqZudFOH7mPm+/mMGz4L2uT5HdshbHbrU=;
 b=CNvIhUZRESEMPpJOTLAlcrl6YjhDmH0R0sVA8Q7Dll2m1Q7fG3F0DUVWsbM5Ri9hxt
 iAb5FDjy1lPDHE95JFY4ijcKtENJ2hMB5N0W9mw82QGsHaHX3u0qHmEqhlwkwGAXHVZB
 9PcHPd+MJ8CGoXljXPKNFr/wf9G7B8MUy8NWi5DYn9D2VZ2itbUs94XeBWNjfK6MAb/M
 zSSlO1KXeWFGb9DgppcapEr5YnP+6sED/fjtCcK8UhBJKQpQXawQWZHU7Wm9uoeQPa/0
 4jLKAlM1IYPCQWYoRkDnf7D9DHNEHke9MkHsLykafAkMX7n9hschQOMEqWj5FS8gB7Vy
 A6hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=B+qLk1UOc3LqZudFOH7mPm+/mMGz4L2uT5HdshbHbrU=;
 b=coVzyYBD5jb+tQECbjfsNDbroNoLa7smXFuGDzjQ6/XHyqkIkGnuwQpGqhG7hVkxqS
 vodMILFNBoLCma5Jg2GrcSgIuJu1S0ypxJQVa7nAAF2ZcmD6Mvncw60sZTIwfRI3NkxG
 rGZ22x6Xrq7VHAHj+hQdHN8Nex0HgF5rRB30nFl+gVBsOVKEBo1G+3ACQMzxmXhSXV0y
 dyyWVGNh/1YRf1aVRgtgsSUQ9hnpI45O9psguO0FJYfX7L9abm3bdVor8QzBetwAOKii
 yayNU8lSaJaSoHDhpd9ak2m+KBOLsXqwniPeWe98/BvbQW15JnIa8OBNvLXmlGB10qDW
 YdjA==
X-Gm-Message-State: AOAM5338ZtPwv+NL/ImcaLkAmF00kwDpJf8KfrpNE8CfGvVfS0m6FtGB
 /E0UPkdgX8KhBkJp8/eKyGv3e/NUmyd/6A==
X-Google-Smtp-Source: ABdhPJwqhMwleZndUiQZDsSbQEkti03mAuupC/7XW1I9Emj/r+2gM2A4h8ULnNG7DSjyAhk7AcGOXQ==
X-Received: by 2002:a05:6402:164d:: with SMTP id
 s13mr9061669edx.222.1599742935643; 
 Thu, 10 Sep 2020 06:02:15 -0700 (PDT)
Received: from [10.0.0.3] ([176.65.80.99])
 by smtp.gmail.com with ESMTPSA id z21sm6913840eja.72.2020.09.10.06.02.14
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Sep 2020 06:02:15 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <d0a3da7b-2ecc-b56b-f405-f1a0c9547906@gmail.com>
Message-ID: <400843b9-bc89-cc1b-a0ff-c9f213bbe973@gmail.com>
Date: Thu, 10 Sep 2020 15:02:14 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <d0a3da7b-2ecc-b56b-f405-f1a0c9547906@gmail.com>
Content-Language: en-US
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
From: Nando Pellegrini via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nando Pellegrini <i1ndp.nando@gmail.com>
Content-Type: multipart/mixed; boundary="===============4717498043555853214=="
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
--===============4717498043555853214==
Content-Type: multipart/alternative;
 boundary="------------52103B39646547FE46E857CC"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------52103B39646547FE46E857CC
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Dave,
I have seen the same following an overflow error the code drops in a 
time out message and no way to continue.
It is certainly a problem but hopefully it'll be fixed with next releases.
nando

On 9/10/2020 14:55, David Evans via USRP-users wrote:
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
>   Device: B-Series Device
>   Mboard 0: B200mini
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: FE-RX1
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: FE-TX1
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
>   Your write medium must sustain a rate of 160.000000MB/s.
>   Dropped samples will not be written to the file.
>   Please modify this example for your purposes.
>   This message will not appear again.
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
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------52103B39646547FE46E857CC
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Hi Dave,<br>
    I have seen the same following an overflow error the code drops in a
    time out message and no way to continue.<br>
    It is certainly a problem but hopefully it'll be fixed with next
    releases.<br>
    nando<br>
    <br>
    <div class="moz-cite-prefix">On 9/10/2020 14:55, David Evans via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:d0a3da7b-2ecc-b56b-f405-f1a0c9547906@gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
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

--------------52103B39646547FE46E857CC--


--===============4717498043555853214==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4717498043555853214==--

