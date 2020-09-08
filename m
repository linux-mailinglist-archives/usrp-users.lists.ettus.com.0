Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F355F261337
	for <lists+usrp-users@lfdr.de>; Tue,  8 Sep 2020 17:12:12 +0200 (CEST)
Received: from [::1] (port=50534 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kFfI2-0005Je-32; Tue, 08 Sep 2020 11:12:10 -0400
Received: from mail-ed1-f52.google.com ([209.85.208.52]:44984)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kFfHy-0005AY-EU
 for usrp-users@lists.ettus.com; Tue, 08 Sep 2020 11:12:06 -0400
Received: by mail-ed1-f52.google.com with SMTP id b12so16331222edz.11
 for <usrp-users@lists.ettus.com>; Tue, 08 Sep 2020 08:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=QnHLC8LakFNRlFBp/gurx6npn17CPhKX1baTurvm4jc=;
 b=gXp0djtWs7ve+HZAZd3IilzN437Ll9vNWYoU0Qf2sQa/mtMI3UWq4pGG87vKmu/MkL
 xi4I3Sx1xCrYJTb47byh6OdqylTfqBHoc6FhtVV2iCeGmWwPGagusu3scqsLS5dECh6X
 epNyMaG9z3VcAQc9hgJKUEOisrKr0Y1c+pYOWNyB445akSaKnxk3F4IPhviRTVNtaEPx
 Muvja9uGMLagUd1nXeemDxXSlgtvuvbz+I25NaMjLtD4AIrROMwLW4NYjS8u8HlXRIcB
 NwEYDyX6Xkmu9e5Q3P6QJ/l7quwgv/v9A3lljgyt2t0KAn1FqloLCPea/06bYJ55pgVY
 T+kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QnHLC8LakFNRlFBp/gurx6npn17CPhKX1baTurvm4jc=;
 b=rtAFVAvpaMv74SbH+GE1DVipNF3/RMZAwh4aCI2cRJ9Gk3MvEjSDOCGkNptZXpED+d
 dJdrHEz1FvhVhM3DU0IW0XQ9Pgb8iMcjIpQmKwgxp+jLIQW6F++CUfkKrfQ5TIv2NyyC
 hUdKQptoxxfyr+beYHqcaTiWj28PaoSZJv8hmQlZevK3Rzt7FMdFVM4K1ha3n+jPBPAT
 4jf1Vn91+eunCbRkVAp5g/GGkWCkOQ4olit9OmLUZTqmSG2ETOSkV87Hs8k8CdqML9Sr
 JmMa4p0zW1MdCmrYW8ycNPaIGxFtnKvjWswGbT4gmCz4bTIxby4T7kKGNE0uIzeZuHMZ
 ERhg==
X-Gm-Message-State: AOAM5306fVwgoIvxAPmgo3DE/O/SFpZbqx1L3IXzR1pshGHitImIIS56
 CgLYefS1Gh71C8rjzOdFrpu3BOUi+syk+wtF5eM=
X-Google-Smtp-Source: ABdhPJxJhh/+B7oKknqK6vaXY64tV/GX68kWHejqQRmbW+pvHJElblk1L8NBrcV3CPFjk0lqX8ASeg==
X-Received: by 2002:a50:ed8d:: with SMTP id h13mr26799364edr.50.1599577885077; 
 Tue, 08 Sep 2020 08:11:25 -0700 (PDT)
Received: from ?IPv6:2a02:8071:2c80:c4f0::e6a? ([2a02:8071:2c80:c4f0::e6a])
 by smtp.gmail.com with ESMTPSA id v23sm17828161ejh.84.2020.09.08.08.11.24
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Sep 2020 08:11:24 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <BM1PR01MB07697B6272A4EC36F8DA7F388B290@BM1PR01MB0769.INDPRD01.PROD.OUTLOOK.COM>
 <5F578EB5.2020308@gmail.com>
Message-ID: <2846a593-e653-73ee-d537-3c41a987b28d@ettus.com>
Date: Tue, 8 Sep 2020 17:11:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <5F578EB5.2020308@gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Problem in detecting the USRP from my system
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
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

On 9/8/20 4:01 PM, Marcus D. Leech via USRP-users wrote:
>> 2 days back I have used a C++ code which can acquire data from Antenna
>> via USRP 2955. Previously that code works fine in another machine. But
>> when I tried to run in another machine, it was showing "no device
>> found" when I run the command "*uhd_find_devices*". Even when i run
>> the command "*uhd_usrp_probe*" it is showing no device found. But when
>> I run the command -> uhd_usrp_probe --args="addr=192.168.10.2" , it is
>> detecting the device as well as showing all the details.
>> The OS of my system is Ubuntu 18.04.
>> Dependencies to run this code : g++, uhd-3.14.1.0, NI Linux driver 2020.
>> Communication from USRP to system is done via PCI e cable.
>>
>> Can you please help me why this is happening & how to solve this? I
>> can ensure that there is no problem in that code neither in any
>> dependency's installation.
>>
>> with regards,
>> Sourin Mondal
>>
>>
> If it's responding at that address, then it clearly isn't connected via
> PCI-e.

If PCIe is what you want, then try resource=RIO0 (or maybe even just
"type=x300") as an arg string. Also, make sure the RIO driver is running
("niusrprio_pcie start"). See also
https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_comm_issues_not_enumerated.

--M

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
