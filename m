Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEB91E1564
	for <lists+usrp-users@lfdr.de>; Mon, 25 May 2020 22:55:51 +0200 (CEST)
Received: from [::1] (port=55492 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jdK8R-0008PU-HP; Mon, 25 May 2020 16:55:47 -0400
Received: from mail-wr1-f46.google.com ([209.85.221.46]:42503)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93)
 (envelope-from <andre.puschmann@softwareradiosystems.com>)
 id 1jdK8N-0008DA-Jb
 for usrp-users@lists.ettus.com; Mon, 25 May 2020 16:55:43 -0400
Received: by mail-wr1-f46.google.com with SMTP id s8so18248001wrt.9
 for <usrp-users@lists.ettus.com>; Mon, 25 May 2020 13:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=softwareradiosystems-com.20150623.gappssmtp.com; s=20150623;
 h=to:from:autocrypt:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=Civp0EKujqJIHCKCl9LPWqoIb8PMS0VFo0OR1Ziv/qE=;
 b=zY6UvAhMAJRUsfkGLXptY99jccFpO/gvg7Hi+51uBnCG9s5g3c2YF/kPLRWAiJjzL8
 5tu17vd88pH6B36nmMpbR8aDAUQwv01X1NJa2X36fMIU6EnPvJWIlvkiUKzB+RN41M0Q
 wVTraylA7FYmRJsh6xh9394fHbdxi/CQMw9kqAPKyaSfZqekBe1T5xftmJnMqqbw4Zko
 En79Tl7TJsBar5FyLXs/wjQyplCaUt/uxc760o+J3lObwOKJIs9Nbefo10Vx+0DUXa5Q
 Z2gjOeCeWB0FodMUKoYxR81q1+2Xz8IcCf3L1gsuHUwh3pzs3BV8GnM9M2/Tu942l8sN
 uyew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:autocrypt:subject:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=Civp0EKujqJIHCKCl9LPWqoIb8PMS0VFo0OR1Ziv/qE=;
 b=QgS9UYuib3bXQqpoT9DCopcKP4asEnZWn28LoNkcCnWkt/YCjOl7uK8u73ik+CZtnd
 DPbRLO1fTFO3bJX9++DpSB/zmaTxj0pVX6YIWFsncq+2ICWLvF/xjvwpcMSOWcWcPmNY
 2G8WCgES9NIjBgcPfEhrvAqu8z+n+SG1oEqxv+oUV5XWJQdpDcrJ/JxzOS437sq5sxDX
 EwGvlxLU5tdeVyWicRKN/mR7Hhlj/J0bXQ1fX0jPLGx2h6iYdm9Zk1uI5N0IgYm8wKne
 JZhCca0B1AaR4+mQdCLTC0DCf18bqXg3sE2INiACY5O+WtVUofGbFaV1VLrGDf8RkZSz
 VEmg==
X-Gm-Message-State: AOAM5309jtztsH0Y00mv1UJiXdZTcd7RvqOhHHBebLtsNiYXwOmsDyE/
 oOWdlQY4YeL6xI0Oelgwz3qRBaqD8PI=
X-Google-Smtp-Source: ABdhPJzecezEgMGbV43qLUTUbfmXYMDNhQRX+IsD1jhhw3P8UfkeIS6FI8BmEglpdlXPCInePJNwwQ==
X-Received: by 2002:adf:9544:: with SMTP id 62mr9838642wrs.32.1590440102205;
 Mon, 25 May 2020 13:55:02 -0700 (PDT)
Received: from [10.11.14.131] (static-177-184-84-188.ipcom.comunitel.net.
 [188.84.184.177])
 by smtp.gmail.com with ESMTPSA id p7sm14297777wro.26.2020.05.25.13.55.01
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2020 13:55:01 -0700 (PDT)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Autocrypt: addr=andre.puschmann@softwareradiosystems.com;
 prefer-encrypt=mutual; keydata=
 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
Message-ID: <e52a564e-7e00-832f-b70a-ced7f3427a49@softwareradiosystems.com>
Date: Mon, 25 May 2020 22:55:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [USRP-users] B210 initialization error - device left unusable after
 some time
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
From: Andre Puschmann via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andre Puschmann <andre.puschmann@softwareradiosystems.com>
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

Hey guys,

I am facing a weird issue with one of the B210 we use in our CI setup.
It used all day long with shorter and longer runs, with different
bandwidth configurations, number of channels, stream parameters, etc.

That works fine in principle but after a while the device simply
wouldn't work any longer. The app is unable to init the device.

$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_3.15.0.HEAD-0-gaea0e2de
[INFO] [B200] Loading firmware image:
/usr/share/uhd/images/usrp_b200_fw.hex...
[ERROR] [UHD] Device discovery error: EnvironmentError: IOError: Could
not load firmware:
EnvironmentError: IOError: ihex_reader::read(): record hander returned
failure code
Error: LookupError: KeyError: No devices found for ----->
Empty Device Address

Trying to reset gives the same error:

$ /usr/lib/uhd/utils/b2xx_fx3_utils -D
Device opened (VID=0x2500,PID=0x0020)
B2xx detected... Control of B2xx granted...

Loading firmware
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_3.15.0.HEAD-0-gaea0e2de
[INFO] [B200] Loading firmware image:
/usr/share/uhd/images/usrp_b200_fw.hex...
Exception while loading firmware: EnvironmentError: IOError: Could not
load firmware:
EnvironmentError: IOError: ihex_reader::read(): record hander returned
failure code


After that happened the only way to recover the device is unplug the
USRP. A simple reboot doesn't help. Dmesg doesn't show any issues.

UHD is 3.15 compiled from source on a vanilla Ubuntu 18.04 LTE (side
note: there are no pre-built packages for 3.15 in the 18.04 PPA). System
is a Intel NUC Skull Canyon. Cables are stock ones. Let me know if you
need any further information on the setup.

Any pointers on what might be wrong here are highly appreciated.

Cheers
Andre

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
