Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E01E2426F8F
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 19:29:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2779D385245
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 13:29:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ThPS9zFA";
	dkim-atps=neutral
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 22A643850F3
	for <usrp-users@lists.ettus.com>; Fri,  8 Oct 2021 13:29:10 -0400 (EDT)
Received: by mail-qt1-f171.google.com with SMTP id e16so10173310qte.13
        for <usrp-users@lists.ettus.com>; Fri, 08 Oct 2021 10:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=IzlAsA6LsvPpG24INef8rEXJ2+E+lSlsxOpOOYgWB4M=;
        b=ThPS9zFAWLL4uIFntav9yhpBnOkOQf/CQpidiS7JLtcXCKjS4gcZMPRyRV1BVWhMQn
         V5Ncy78RMQiNKK/7wo0yf/61sEmLgiKH2mW1QB3uPM5dihitLzg7D3UeEwdDXvo1LWE1
         0AnkeP/EYSqCEtMVbkKxueOTqvWPeV4KxGVc5FJuTfFvYlJOCIk8sDr8wbHq2Z1w1iCc
         OtPXuBH1dz0Fi2Mr+RR6WgffF5vsQJ6v2wwrst9v0uU63kKzH7U5nPy2J4wa9hnjOWEK
         wDPLo2M3SGqdVgYWXUP0Pn+AcoRdMh/7e/QHgyMAJMwv6cDzYmKHfgat4aHGT8SaT9yl
         zQUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=IzlAsA6LsvPpG24INef8rEXJ2+E+lSlsxOpOOYgWB4M=;
        b=cZpxuPrJ5PYAfT2yGgsHvYCb2HcmjZKIpaJBnBHuTWnrEFE63b6bSrvncRP9MqjJhs
         skGmK4pKB/fyVu7Q58LagKtHow8X4hOQTu3Lf6caYnGYmIZMSsRo/l3Zjqwoy6W9xA5N
         MUhu4c05zkRdrBjKlkqaChtxdk3RGNfZWfn2NWNSAro/g5/zzWVKPkMdwwpbBrwkjTGu
         v6oybz3Ogz1RvRkPfmczLljFWCkD5ku0mVX3gJ6tbJ/u7Lm9+b9wcsoXOMDJbegzhkFY
         R6ODJDXjhkpU8m0YZG/mCo7V/PUK3FkHrx+cHskhNkYEPBo4Wc8FXhsDylnIxEtFxzAf
         VjXw==
X-Gm-Message-State: AOAM5303jobKhMpAVwj/0JeeScDAahPUuIgUMWUl7SgX7bUe6bkF32MR
	9VnmluFFI5iTh0YCGN5neabycWBQw3I=
X-Google-Smtp-Source: ABdhPJyBOE8pMSX97W0v+H+HdSUsdX1t15Jt2p5f3ibQT316dwdmG04Akh+CKWZL7MDYK46p0hhYEg==
X-Received: by 2002:ac8:7f4a:: with SMTP id g10mr13570409qtk.150.1633714150414;
        Fri, 08 Oct 2021 10:29:10 -0700 (PDT)
Received: from [192.168.2.253] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id w1sm2575628qtv.71.2021.10.08.10.29.09
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Oct 2021 10:29:10 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <SJGg9PVgKwQO6gAL8vdI5WaA2UqGDVjvPLvMThmbFk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <308ec1a5-a4f1-a367-4fa2-a0e9a05ffa18@gmail.com>
Date: Fri, 8 Oct 2021 13:29:09 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <SJGg9PVgKwQO6gAL8vdI5WaA2UqGDVjvPLvMThmbFk@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: ZURURSS2PCWXJNJEIAKMRI7PKD3WY7VR
X-Message-ID-Hash: ZURURSS2PCWXJNJEIAKMRI7PKD3WY7VR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Possible to change the name of an N320?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZURURSS2PCWXJNJEIAKMRI7PKD3WY7VR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2021-10-08 11:02 a.m., jason@gardettoengineering.com wrote:
>
> Marcus, the problem is that /etc/hostname gets overwritten on boot. I 
> am guessing it is baked in somewhere else and gets populated on boot up.
>
>
>
Or your DHCP server is setting it?

The N310 system image uses DHCP by default, and it may be that 
UseHostname is set by default by systemd/network:

https://www.freedesktop.org/software/systemd/man/systemd.network.html



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
