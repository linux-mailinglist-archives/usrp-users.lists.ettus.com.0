Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C69226466B
	for <lists+usrp-users@lfdr.de>; Thu, 10 Sep 2020 14:56:50 +0200 (CEST)
Received: from [::1] (port=42848 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGM84-0001mr-Tj; Thu, 10 Sep 2020 08:56:44 -0400
Received: from mail-wr1-f44.google.com ([209.85.221.44]:42513)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dasypuss@gmail.com>) id 1kGM81-0001dm-G5
 for usrp-users@lists.ettus.com; Thu, 10 Sep 2020 08:56:41 -0400
Received: by mail-wr1-f44.google.com with SMTP id c18so6571449wrm.9
 for <usrp-users@lists.ettus.com>; Thu, 10 Sep 2020 05:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language;
 bh=uepRtzxtjZEjw/O2ssTJLl1raD3fGM2VygF7HnnHmq4=;
 b=vBwSq3YOn3bChTFi1HVYBpDhVoi6bdEDcJl55o7MphiKP/VNbgiJRkYLsVdKr8zc4Z
 ZN3xMdQLdJU9yZbPhEdbzVbdWzP1YqbE1H1LUq9s2BtERqR1mbQ1dxnGOz9RVgx3mKCp
 VZeHW/L6LmqXWEwUSlBFXrqRTEIxs/CdwvNAKqkHi+AgrAL3hl/LhnBPLR6TArCaAzMa
 ZovSak5ptzno9LJi/MEXCzJInIH+4cLxgZSQLZ5eM5rWjEmXsDEU3CwHuNeNkQ2au7Ot
 6pLWhXZ0I0zrcd32yOQ8zK3s/MtcMCLFLhz5+2VNzYl5c98twJpwxmzX7kD4F9kuIFj6
 XE1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language;
 bh=uepRtzxtjZEjw/O2ssTJLl1raD3fGM2VygF7HnnHmq4=;
 b=VrSJTAe5+Ol4gu6NAPO/5HOdqaNvj67qgDTDr2m9c95RI9e0JQBK2gxprqkDm5mAux
 trfxneqQ4a30FnW5mRndep38u6hcaLC2NQAiKVDk1QNHPKSpCCK6AhSlu0vxV58YyKTb
 FIAQMCVoZ3KTqCX7gmrcIkdrKYCreKT3TDpCyUsDSA0vrkkVJkjKf/Hji8XxO2UeVhpv
 qpoljnTXFt9IA1d1siGsRVbpocHMBTrrFpIHKMfd9cYwF984RuKj4z0rQJYJJ4/NyGkg
 sqbvXCFl8ZaRg9Ri2xv9uuDs3lHpE50aalpAdAkxWAreRMM+hCfEdF5N5TqI+qHw9AoB
 d9Pg==
X-Gm-Message-State: AOAM530ehGUpdwqv1qyH2wgKgzfFPJpeH+rke34Sv+dLbMVakioYuPd7
 NPD2HocA/BuL7zi3CNWUVabWU3pdXfg=
X-Google-Smtp-Source: ABdhPJxSVAmuKOlGe1SOJ601URaC+7RM7+RZwT1eN3X/xh++dW8PJaVGuM3/fs8FaoJJh3VBtw0DFw==
X-Received: by 2002:a5d:458a:: with SMTP id p10mr8677451wrq.282.1599742560125; 
 Thu, 10 Sep 2020 05:56:00 -0700 (PDT)
Received: from ?IPv6:2a00:23c6:7081:1d01:11fe:8115:256d:581f?
 ([2a00:23c6:7081:1d01:11fe:8115:256d:581f])
 by smtp.gmail.com with ESMTPSA id m4sm9540156wro.18.2020.09.10.05.55.59
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Sep 2020 05:55:59 -0700 (PDT)
To: usrp-users@lists.ettus.com
Message-ID: <d0a3da7b-2ecc-b56b-f405-f1a0c9547906@gmail.com>
Date: Thu, 10 Sep 2020 13:55:59 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Language: en-GB
Subject: [USRP-users] b200mini stops sampling
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
Content-Type: multipart/mixed; boundary="===============0946790252380864203=="
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
--===============0946790252380864203==
Content-Type: multipart/alternative;
 boundary="------------75BCB95AC9416B86B89EDE36"
Content-Language: en-GB

This is a multi-part message in MIME format.
--------------75BCB95AC9416B86B89EDE36
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,
I have just installed the latest "master" branch of UHD (4.0.0.0).

If an overrun occurs during sampling, sampling does not continue thereafter.
I noticed this with uhd_fft, which hangs with rates over 8MHz, and also 
rx_samples_to_file:

./rx_samples_to_file --freq 900000000 --rate 40000000

Creating the usrp device with: ...
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; 
UHD_4.0.0.0-34-g2655b0aa
[INFO] [B200] Detected Device: B200mini
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz...
[INFO] [B200] Actually got clock rate 16.000000 MHz.
Using Device: Single USRP:
   Device: B-Series Device
   Mboard 0: B200mini
   RX Channel: 0
     RX DSP: 0
     RX Dboard: A
     RX Subdev: FE-RX1
   TX Channel: 0
     TX DSP: 0
     TX Dboard: A
     TX Subdev: FE-TX1

Setting RX Rate: 40.000000 Msps...
[INFO] [B200] Asking for clock rate 40.000000 MHz...
[INFO] [B200] Actually got clock rate 40.000000 MHz.
Actual RX Rate: 40.000000 Msps...

Setting RX Freq: 900.000000 MHz...
Setting RX LO Offset: 0.000000 MHz...
Actual RX Freq: 900.000000 MHz...

Waiting for "lo_locked": ++++++++++ locked.

Press Ctrl + C to stop streaming...
OGot an overflow indication. Please consider the following:
   Your write medium must sustain a rate of 160.000000MB/s.
   Dropped samples will not be written to the file.
   Please modify this example for your purposes.
   This message will not appear again.
*Timeout while streaming*

Done!

Any ideas please?
Should I be using the master branch, if not how do I checkout a stable 
branch ?

Thanks,
Dave


--------------75BCB95AC9416B86B89EDE36
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
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
  </body>
</html>

--------------75BCB95AC9416B86B89EDE36--


--===============0946790252380864203==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0946790252380864203==--

