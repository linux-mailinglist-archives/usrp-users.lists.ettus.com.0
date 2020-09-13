Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5AD2680AB
	for <lists+usrp-users@lfdr.de>; Sun, 13 Sep 2020 20:01:35 +0200 (CEST)
Received: from [::1] (port=47012 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kHWJe-0002I8-3Q; Sun, 13 Sep 2020 14:01:30 -0400
Received: from mail-ed1-f45.google.com ([209.85.208.45]:36588)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1kHWJZ-0002C0-VE
 for usrp-users@lists.ettus.com; Sun, 13 Sep 2020 14:01:26 -0400
Received: by mail-ed1-f45.google.com with SMTP id w1so15421133edr.3
 for <usrp-users@lists.ettus.com>; Sun, 13 Sep 2020 11:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=zIeaL548gJX0JL6iT5Rbrs8rxByg7yc3qxImIPimDLM=;
 b=M3gxTMwDd3tYiFhjH0K0Q0PwzDOVxDfIuEkMW07fcjzSSwrsW+WdLnOYjBIo8YxEJP
 7FHhZpBhGhOIFUWpPnPoHTerAtNsEPszeY2UZGzqRsPBLIPTWmr8KUQiotEHdQ+Dn7OD
 bkFJVBU2wc1Gd2d5NfaA9vFIBgp/XcpcDUTQ2YCY8NVO8WkkLF/s2fxJFASs+6hTwCX6
 1Wtuzo6P3YGjALQg1WRMRk/XIIj7Mr54OXsebI26GPlEwWmqSipAfirdDihINzewUnaW
 r52B+GlpraysGrY3JaOG0rPT1vqnepYrpkUjFKkkd+3NyW5SLlytiyJhHdPmUXCx28cr
 /NmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=zIeaL548gJX0JL6iT5Rbrs8rxByg7yc3qxImIPimDLM=;
 b=lvd3PsI5pTMrtn0qI2V1m8Km2Z64hM3FCKtYldr6M7Q5CuyAXto3mc521r0BAjZDyG
 00AzWMG031Ruh750r3dG5pR4MF5lXt2QOl32oPe4+HXDRlD878G5F/joGj7aPfdBPQP0
 4ijnZkQ0F6/+ipqnEbdxJ4ewtxqGb3NQUi4aymVCm0AUj8XXBHJxmPzU+2e3E94NfqoS
 R1xv7TC+LncMjOVviG9IeRR5IwqL8fei/AuSzEtQa5fhKaGTXeJBRtQCVldO/05EDq6+
 /qE5ZdqxgfC9c80AV1infwviWG/dnjcVlhwFYOvWCPFmeuD6pObX+8bhJXU0sApzHWgU
 dfyA==
X-Gm-Message-State: AOAM532GSCUn8pEKwkc1nB4Hkhzb75E7mdO6o5Aw5k1lYBqkr71/ukGO
 4j1i5HWmPPxD+ULYxJI7SThM6e+J2abi0GFA
X-Google-Smtp-Source: ABdhPJxkLqzgNnjRiS0uIfSH779AvZU1MVhVWj5vShpRv68riCq1hhZ0ehzJQAqObN4e9ggeklto3A==
X-Received: by 2002:a05:6402:1818:: with SMTP id
 g24mr13510954edy.332.1600020044514; 
 Sun, 13 Sep 2020 11:00:44 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-144.hsi.kabel-badenwuerttemberg.de. [46.223.163.144])
 by smtp.gmail.com with ESMTPSA id n7sm5785084eji.13.2020.09.13.11.00.43
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 13 Sep 2020 11:00:43 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAM+cdhJvnNTRtukiKPx9OhGQAqeFOTBz+Vp3yc1ye4CYV44+OQ@mail.gmail.com>
 <75B13EC1-5F7C-4E97-9614-26221D8E5C20@gmail.com>
 <CAM+cdhJQbH0s+rLMcfH8dVgYNqcnZVEodQCqhtLynupdChz92g@mail.gmail.com>
 <5F4E70FD.4000400@gmail.com>
 <CAM+cdhJ9F4v7q2Nq7NxoqkttPgB6eR1_6v9bJkpefoQKpQONLg@mail.gmail.com>
 <5F4E73F0.9010302@gmail.com>
Message-ID: <d32b2c60-88aa-3d07-2405-2685d0ca2595@ettus.com>
Date: Sun, 13 Sep 2020 20:00:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <5F4E73F0.9010302@gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] External Oscillator with Ettus N310
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
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

wow, doesn't at the very least that Schmitt trigger kind of worsen the
phase cleanliness, seeing it's a temperature-dependent active part?

On 01.09.20 18:16, Marcus D. Leech via USRP-users wrote:
> On 09/01/2020 12:15 PM, Christopher Flood wrote:
>> I have not looked at the output spectrum of the Rb, I kind of just
>> assumed it would be okay since it's the most stable oscillator that
>> we have in our lab. I can take a look at the spectrum and report back.
>>
>> If I do see output spurs, do you have any suggestions / tips on
>> cleaning up the signal to the point where it would work as an
>> external reference?
>>
>> -Chris
>>
> I have an Rb module that I had to send through a 3-element 10Mhz
> crystal filter and Schmitt trigger to get something clean enough to
> use...
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
