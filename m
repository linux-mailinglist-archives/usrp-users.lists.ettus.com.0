Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 281BD1B2DDA
	for <lists+usrp-users@lfdr.de>; Tue, 21 Apr 2020 19:13:04 +0200 (CEST)
Received: from [::1] (port=32932 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jQwSD-0003Gy-0E; Tue, 21 Apr 2020 13:13:01 -0400
Received: from mail-pl1-f181.google.com ([209.85.214.181]:37721)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rfnoise@gmail.com>) id 1jQwS9-00039W-5O
 for usrp-users@lists.ettus.com; Tue, 21 Apr 2020 13:12:57 -0400
Received: by mail-pl1-f181.google.com with SMTP id w20so231791pll.4
 for <usrp-users@lists.ettus.com>; Tue, 21 Apr 2020 10:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding:thread-index:content-language;
 bh=UJBLAgPXVwzgLGjlo3giF2h1BEhuJBMcsBZkbUz0C6A=;
 b=ESDaZEPrbZua/roof6swz53J6qrES4NNIvuFKuLH+yWN9dxcx1G0HXt2j9dfMppM2U
 1xrxausJfKJ+vjGcWy6+qcptM5Wm2KCsQzKy4CNG4QJZ2Crhl+y0qgsTHY8Z4XObLeQV
 nBnN4LT+qX15w5ME3YBBP7aBq35XhpWhqnZFtLgytW7i2Agv3khqmxffeXTSrhwmSbXG
 X/4oklguQDl6zSQ4Eo0BGs9jpHAIGyL4jgcaIl5azA0Jl7HymajeNKZifOINbPd657vV
 AcU3xVGw/MVp0geap1E74jBqmkZ9QTIkpGBZAreI3nDEr5UVt3x577QYxDBsbN7Y4JzL
 aBQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding:thread-index:content-language;
 bh=UJBLAgPXVwzgLGjlo3giF2h1BEhuJBMcsBZkbUz0C6A=;
 b=m3ZnpuxwRYHvOjGKg4f90RdHyVEtEDvJ2FrIB1HKb8QddtNC/PxKleHkfQ/hxYCHle
 3ndFvIU988l459Edji5D6Jwjh/0obyrs6WFinhtB2ltZux2Qkfyq3xsaE5ZwSlqn7Qw/
 t23qRj9Nvqxgkiss8J1h20J6UsBjijjkswbFANgiXl8hLyWGHb9+C4+r0ajXBUbG7dLA
 XFvU84N/ZH6UpX0FyANa1wy8SPAvDnJBiabQlyJyBDXJiOiRTO/PixtvTn/cVa7Q1ulQ
 MOmLC6lBoiXFH61+Dcei5X0JoeOVJ3kcVNQF+iaFsP9UlY1w5XpY0RptCsRD4l6JQVSf
 WMpA==
X-Gm-Message-State: AGi0PuaAoni9qsBPTOtOEGpnTXnZNiqfRPDCJVm1w39JZawKZVMIBxSY
 KMcfnJ6N+baWGzDUuJYivOikNqvqBuU=
X-Google-Smtp-Source: APiQypKPdNK1D/JINHyLZiNmBIQPPcZLpnAdslQQV7shF+/vPmcLkFF80ETDfOF+5jLJIRuYdCMRNg==
X-Received: by 2002:a17:90a:a888:: with SMTP id
 h8mr6550708pjq.174.1587489135874; 
 Tue, 21 Apr 2020 10:12:15 -0700 (PDT)
Received: from SKULL (mail.moon-bounce.com. [192.92.6.109])
 by smtp.gmail.com with ESMTPSA id h13sm3008060pfk.86.2020.04.21.10.12.14
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 Apr 2020 10:12:15 -0700 (PDT)
To: <usrp-users@lists.ettus.com>
Date: Tue, 21 Apr 2020 10:12:14 -0700
Message-ID: <000501d61800$011fb490$035f1db0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdYX/yD2wMcQMWdrTNinPdHuWvshVw==
Content-Language: en-us
Subject: [USRP-users] Odd behavior with X310 + TwinRx
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Trango via USRP-users <usrp-users@lists.ettus.com>
Reply-To: rfnoise@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hello

I have a x310 with a TwinRX radio.

I've noticed a strange behavior:

1) Tune to 2242.5 MHz, Sample Rate of 100 KSPS, Gain of 63 on RX1 receiver
channel.

See following FFT, one signal appears to be decreasing in frequency and the
other appears to be increasing in frequency. Sort of looks like doppler
(which is what I am looking), but this is not doppler. 

https://www.dropbox.com/s/kqbk7ttolh2n3eb/IQR_20200421_040653_screenshot.png
?dl=0

2) Re-Tune to another frequency, say 2240 MHz. Then Tune back to 2242.5 MHz.
The same exact behavior, the signals start again from same initial frequency
and diverge like the picture above. Can reproduce this over and over.

Any ideas? 

Thanks
Joe


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
