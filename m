Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F8D3542DA
	for <lists+usrp-users@lfdr.de>; Mon,  5 Apr 2021 16:34:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BDD9F383D07
	for <lists+usrp-users@lfdr.de>; Mon,  5 Apr 2021 10:34:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="yFs5/9zF";
	dkim-atps=neutral
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by mm2.emwd.com (Postfix) with ESMTPS id A39E4383C9D
	for <usrp-users@lists.ettus.com>; Mon,  5 Apr 2021 10:33:34 -0400 (EDT)
Received: by mail-wr1-f46.google.com with SMTP id q26so5407170wrz.9
        for <usrp-users@lists.ettus.com>; Mon, 05 Apr 2021 07:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=9lKnfsQxoDKIS2QP2mdQVi07QRU1GZfPeZnMxSBfIZU=;
        b=yFs5/9zFsuK1FfL8AwHWCoo8KXkMJUOYYL4uhoNzOzwzRCW/TCSfwlsIWhif9UKaad
         Ar1TRyiXTfDCxpyfe7A2aizpT1y0gbG0FlAl8bNt5HchtoWQAFBDSERnp5Eps2GUP6y7
         Zw7xf01FlFc4dBkCr8IibmCRcKH1bJ4uD58Fnm6QI7VSqtegBvSLUs3DbjDgYn4qrQfu
         yUkK8qxYCMDrgddRX6RC/eOdQauVdpaewO5kRlvFEm0vyu/k+UnRfHtme/qw6OiksacA
         F2Jl5cnkj9vJ7MGlfH6iEV1MonolW8CQfgZ84Xbb1bEdd/fZdo2iygSaZCljVxzpZQP1
         N7bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=9lKnfsQxoDKIS2QP2mdQVi07QRU1GZfPeZnMxSBfIZU=;
        b=dGBAxnlUPJ5im+4jsJCskfHFKky6vnMPHCDYSwtHFY3kdsdfSpfzxiTm3amT6Dlk0U
         FCMl9z6JVBuEHMp5HhcZ3zZbLyVHsw2MrboieK8VhEubsoOmH8pI8e4tKJT54VHvdgsW
         S1Sr9QmgG03dhwzUDtOPJi7tjvBJ2fS1Nqwoz9tMQZf+mTovXGqSCVX0mBP505fZFw5H
         y+vkTPks2zMm0WoRR3di26T4vc9tlbA925kov1qkCHZ0Wjkp/IhIuauyCT0ZoLTlSXHV
         C2Xbz7smDwT7PpEUdnCUNi2FuA2OWeHfzllUNNJgwQ2JYL/nMNRH8QPwrdPDr/qcMsWF
         26UQ==
X-Gm-Message-State: AOAM531Arb3aDGEfLew08lUxSV4AGIreZEe/Ezu56YXrsIiWqVl3GIVp
	XvxXtauDLLHyfovRLnoQaxoq/DKHgEjXxmdP
X-Google-Smtp-Source: ABdhPJwaDDTN71d2whod2rUI8g4dfnT/VYJnfjTrSYfZIFCbt6Js9sg1j5T87aJKFqfnw9/knd2M4w==
X-Received: by 2002:adf:ee03:: with SMTP id y3mr10685686wrn.323.1617633213481;
        Mon, 05 Apr 2021 07:33:33 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-213.hsi.kabel-badenwuerttemberg.de. [46.223.162.213])
        by smtp.gmail.com with ESMTPSA id s138sm14667884wme.8.2021.04.05.07.33.32
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 07:33:33 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <BMXPR01MB2469029ADD6C27D6096B9D5988779@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <da032485-0b2f-6b69-3485-c414205b5b55@ettus.com>
Date: Mon, 5 Apr 2021 16:33:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <BMXPR01MB2469029ADD6C27D6096B9D5988779@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
Content-Language: en-US
Message-ID-Hash: 7IU57KHTSSQUY76O5ULUW5YMGOSW5DUH
X-Message-ID-Hash: 7IU57KHTSSQUY76O5ULUW5YMGOSW5DUH
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: troubleshooting pcie link card
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7IU57KHTSSQUY76O5ULUW5YMGOSW5DUH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Snehasish,


chances are that if the board doesn't show up in lspci, there's not much you can debug;
your mainboard doesn't seem to play nice.

Try the following:


* Check dmesg for anything related to PCIe enumeration

* Check in your BIOS/UEFI setup whether it has some dialog to list connected PCIe devices

* Check whether using a different PCIe slot helps

* Check whether your mainboard's PCIe lane assignments can be changed. This is often the
case for gamer mainboards with 2011 to ca 2019 intel CPUs, but it's also the case on some
other platforms.


Best regards,

Marcus

DISCLAIMER: Any attached Code is provided As Is. It has not been tested or validated as a product, for use in a deployed application or system, or for use in hazardous environments. You assume all risks for use of the Code. Use of the Code is subject to terms of the licenses to the UHD or RFNoC code with which the Code is used. Standard licenses to UHD and RFNoC can be found at https://www.ettus.com/sdr-software/licenses/.

NI will only perform services based on its understanding and condition that the goods or services (i) are not for the use in the production or development of any item produced, purchased, or ordered by any entity with a footnote 1 designation in the license requirement column of Supplement No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a company is not a party to the transaction.  If our understanding is incorrect, please notify us immediately because a specific authorization may be required from the U.S. Commerce Department before the transaction may proceed further.

On 05.04.21 14:39, Snehasish Kar wrote:
> Hello
>
> I need some help in troubleshooting pcie link card. I can see orange LED glowing in the
> card and even on giving the command lspci, I am not able to see the card in the list.
> Please help me with the troubleshooting.
>
> Regards
>
> Snehasish
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
