Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B40E026A656
	for <lists+usrp-users@lfdr.de>; Tue, 15 Sep 2020 15:35:12 +0200 (CEST)
Received: from [::1] (port=38512 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kIB71-0006qw-8y; Tue, 15 Sep 2020 09:35:11 -0400
Received: from mail-ed1-f52.google.com ([209.85.208.52]:46400)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kIB6x-0006je-ID
 for usrp-users@lists.ettus.com; Tue, 15 Sep 2020 09:35:07 -0400
Received: by mail-ed1-f52.google.com with SMTP id a12so3002699eds.13
 for <usrp-users@lists.ettus.com>; Tue, 15 Sep 2020 06:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=a6aAiLPpnxMm+XdmuSjnosRd8VWe/PM+9eS3bHucYBg=;
 b=bFC0sG7P7RM/t0khBfIwKRfEENjYXYTqv/yOE396WLLd1b026vmNI7uU7JSMWmE28C
 /Owk33exCqJAreSu4dcgCFmqnVT9NhxyXypsX09J02B4Jub5muxHvzE7bc3/jkxm9CNV
 bqTloJG3S6FU8wDJ3LQN4n3O+ZXnIKOP2f4d8eqADWwCnLAe4OBF+8uiOG7kuG8D7ce7
 Il1Rtrp+wA8H1srycc+ce7dLLGZQQwrRv8a8yuOiM1FYmVRsGUNiETOfd78st+mllf7A
 1BkwolEcQ836VviSefdcNT/DgjqgOyguZAudyAxhbqs9uYF3d/Qws7uOpQRoyj6n5mN7
 q/AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=a6aAiLPpnxMm+XdmuSjnosRd8VWe/PM+9eS3bHucYBg=;
 b=nfMDnXQnGZTpAsl9AUltHIzto6ohTxP4YK1AI60m3kCQYk9H+DZrWyb7sqRSbuULY3
 Ha+fDc60cBQ6BdwRaAy7kHzy1xh9dhTo4h7SnO3O/Q4IJXICSpRI2CxgOWUdY1UVcntL
 Cgo/Kwzo5WRhmW2StdV6VBd3gf0UbAHWwwA4NT5+uhG16LfyESACrMXD5onHp4Aq9lGX
 H/wkEt8z10+ZHBy6vAFX8lxpO+VTf+E958O8hIgf+3bh72FchrzrQw0ORVCUZuKPrZzt
 NNpUOr6Yxsatt7kaYXek+eUZFmak7XXfAVIKwpR6321Moj8A7Fl581b/TRXiNsz/dfK+
 /yDA==
X-Gm-Message-State: AOAM530x86WAbCCpaacEaYe4xZ4MAvyXLyvp/M55Egst3QIcTARqUEHh
 nqCWmctHlegFJLmazr+5DH4JpdhNoecAiC65
X-Google-Smtp-Source: ABdhPJwJamnVXQMY1vJoBAgj6EsgvkK0oJ3KTGRSdNIHwt+SiCm+ZxfHanCQZy+v6/9TMJfpvDb0Sw==
X-Received: by 2002:a05:6402:202a:: with SMTP id
 ay10mr12738045edb.36.1600176866254; 
 Tue, 15 Sep 2020 06:34:26 -0700 (PDT)
Received: from ?IPv6:2a02:8071:2c80:c4f0::e6a? ([2a02:8071:2c80:c4f0::e6a])
 by smtp.gmail.com with ESMTPSA id l15sm10091767ejk.50.2020.09.15.06.34.25
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Sep 2020 06:34:25 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <MA1PR01MB2588860E8055E12D760E47D590200@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <53af74de-6008-a04c-0931-73eee3947808@ettus.com>
Message-ID: <0138dcdb-ab04-b8f9-751c-67a41f072e2a@ettus.com>
Date: Tue, 15 Sep 2020 15:34:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <53af74de-6008-a04c-0931-73eee3947808@ettus.com>
Content-Language: en-US
Subject: Re: [USRP-users] 100 MSps in usrp 2955
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

On 9/15/20 3:19 PM, Martin Braun wrote:
> On 9/15/20 2:14 PM, Koyel Das (Vehere) via USRP-users wrote:
>> Hi,
>>
>> When we set sample rate at 100 MSps in usrp 2955, is the actual sample
>> rate 100 MSps only or 128 MSps?
> 
> This USRP can do 100 Msps, 200 Msps, or 184.32 MHz. It can't do 122.88
> or 128 Msps.

...minor correction: The 2955 (with the TwinRX boards) can do 100 MHz
and integer fractions thereof. Not 184.32 or 200 Msps.

--M


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
