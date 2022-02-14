Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C86184B562C
	for <lists+usrp-users@lfdr.de>; Mon, 14 Feb 2022 17:30:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0B95A384FA4
	for <lists+usrp-users@lfdr.de>; Mon, 14 Feb 2022 11:30:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kh6lVER0";
	dkim-atps=neutral
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 11AA3385B01
	for <usrp-users@lists.ettus.com>; Mon, 14 Feb 2022 11:28:47 -0500 (EST)
Received: by mail-wr1-f43.google.com with SMTP id h6so27757427wrb.9
        for <usrp-users@lists.ettus.com>; Mon, 14 Feb 2022 08:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=yGViqu/Lrzeg4GOY7v/CMwtbQcuxp0tdcJBrwXQVAis=;
        b=kh6lVER0qi4lnXavEM7MkhPuds1K5FvN8GtGNhvLO3KuSn8YuONFJgwhVm22fUCcbD
         IZ90CndcBKSYE8xfMMY4+JMjxOyGPJ0AREgnqfyJS/t1P4c0lTHwA/Q5z/hYr/I6mKsO
         Ee2HzMF4k3hiv3HL/sOJdCngWjRZXTrn4BTg7Let8SzCR3Q/HSvESHT/dUvPvpnl3J0o
         TsKwHGJvKGsbMeFALHdk+1tasIKUY/qFIiAWQFriVESqa/CTyONI7pdAD3kvdHeMMLSN
         QMFtfKkVZpSLn2jiPLM/OMS6Nuna5pdf77l9rzCndGCwdvXf6QBtUNfvJLxUjaRG5y0n
         J7XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=yGViqu/Lrzeg4GOY7v/CMwtbQcuxp0tdcJBrwXQVAis=;
        b=lxwjxhvL5M2xQzfVc1G0Jk0UWo3mQ4yLqEeqokocheIU1f2ZWuQSWKTwvkztQgIk2D
         JF1qlRU1IYo9yAxWkDHocrmuKb+rOviZQVkwQivofGEp3SQliTAbd+wGB2JCJWAcpKHB
         4E8a2aWzY6hvx+Mw8AqVbLs+Kpjcbtj/ALporakFPnBBAR89NOg1NRndskQZXkEHNOAo
         wfLUG3uv7JrSZMweXhKTjj6Q0vt/NycH0WKTX6rFR5JgjVPuo4Vg1BQCeoVf2+0BhpvR
         p80PmKOPx6lFoOAKh4SHU7yDnDhfJb0bZPaUPqX+YxWLZWucDBha0ncRL8ghOqXQF5U3
         AXfQ==
X-Gm-Message-State: AOAM533nIsY133JNFGJXbI/Ip6FK3GdFe02xyjVTN5+IortvXGvAkaau
	5u/iUFp8urVc5/gw/N00MsB8/KRjIJ8=
X-Google-Smtp-Source: ABdhPJx5dTEgxniAsppTwrUa8SwxceoZvhzBQ6JGNUhcSBmQ3fKGql5FcZ0cVTJc2APok2i7lnZ9lg==
X-Received: by 2002:a05:6000:1acf:: with SMTP id i15mr312434wry.509.1644856126838;
        Mon, 14 Feb 2022 08:28:46 -0800 (PST)
Received: from ?IPV6:2a02:8084:ac1:9d80:7871:d580:5931:a32d? ([2a02:8084:ac1:9d80:7871:d580:5931:a32d])
        by smtp.gmail.com with ESMTPSA id x10sm12219570wmj.17.2022.02.14.08.28.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Feb 2022 08:28:46 -0800 (PST)
Message-ID: <c701de64-c2d9-a189-489a-37eac6deba22@gmail.com>
Date: Mon, 14 Feb 2022 17:28:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <deed8d5e-6ab5-21dc-5da9-9f580e859dee@gmail.com>
 <014601d81e26$cb469260$61d3b720$@zengyi-tech.com>
 <384482b4-b1ca-a497-86ec-46baa7c43472@gmail.com>
 <28e04eea-f737-f99c-c851-15b38b02388c@gmail.com>
 <ec67277c-80ac-db10-af63-c15987cf8042@gmail.com>
 <ed848007-2bc2-d246-209e-3217bf37c1a2@gmail.com>
From: Giuseppe Santaromita <giuseppe.santaromita1@gmail.com>
In-Reply-To: <ed848007-2bc2-d246-209e-3217bf37c1a2@gmail.com>
Message-ID-Hash: UU63VTWS6YJJDSOJ2ISTOGEKCSXDUYV4
X-Message-ID-Hash: UU63VTWS6YJJDSOJ2ISTOGEKCSXDUYV4
X-MailFrom: giuseppe.santaromita1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?b?UmU6IOetlOWkjTogTWVuZGVyIFVwZGF0ZSBQcm9jZXNzIE4zMTA=?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UU63VTWS6YJJDSOJ2ISTOGEKCSXDUYV4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

No. I have the USRP as I bought it

Il 14/2/22 17:27, Marcus D. Leech ha scritto:
> On 2022-02-14 11:25, Giuseppe Santaromita wrote:
>>
>> Now it works fine, but when I try uhd_usrp_probe this is the result:
>>
>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; 
>> UHD_4.1.0.4-release
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
>> mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3211008,fpga=HG,claimed=False,addr=192.168.10.2
>> [WARNING] [MPM.RPCServer] A timeout event occured!
>> [INFO] [MPM.PeriphManager] init() called with device args 
>> `fpga=HG,mgmt_addr=192.168.10.2,product=n310,clock_source=external,time_source=internal'.
>> [ERROR] [RPC] At least one PLL did not lock! Check the logs for details.
>> [ERROR] [MPM.RPCServer] init() failed with error: At least one PLL 
>> did not lock! Check the logs for details.
>> Error: RuntimeError: Error during RPC call to `init'. Error message: 
>> At least one PLL did not lock! Check the logs for details.
>>
>>
> Did you actually have an external clock connected?
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
