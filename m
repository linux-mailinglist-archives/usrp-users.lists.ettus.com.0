Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C8B4CA271
	for <lists+usrp-users@lfdr.de>; Wed,  2 Mar 2022 11:47:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 181CC3844AB
	for <lists+usrp-users@lfdr.de>; Wed,  2 Mar 2022 05:47:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="aOWLjLIc";
	dkim-atps=neutral
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 2AF963845C7
	for <usrp-users@lists.ettus.com>; Wed,  2 Mar 2022 05:45:58 -0500 (EST)
Received: by mail-ed1-f49.google.com with SMTP id s14so1686863edw.0
        for <usrp-users@lists.ettus.com>; Wed, 02 Mar 2022 02:45:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=72jA4MP/Rhnw3kIPrp6/XJG5F1G7o/aCeiPDWPKBRts=;
        b=aOWLjLIcn6EvRDz0u5K67zA4wwFZEqgsM7Vy+8NOWs6elWbElllLeFj3wWjIGjSNdJ
         Apa4iw000UDmKI1/3E4KcQEBGR8kiba3nUuxSnGCr/ThIetAGolkKEEOg1aET0yMZAl+
         Zke23gRTy84BtthMZhy/RBzxdrKAO8+xDkeL+vmgL3vVi0QA/ih31CsHCS1ZleZcsWDx
         6uEKXDC+EGd3Dk9xbLDFiJTos86uyx24hs4W+oNjkPCAjCkdykLug4anpImHk1Wl/3yh
         qS4ie6pIU/kkrSUtxTWI0JC4Z+QLQZ8O87/H1/jOSOKsHQwEJ6TmL1phHbY+y8bqNh8t
         Z5oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=72jA4MP/Rhnw3kIPrp6/XJG5F1G7o/aCeiPDWPKBRts=;
        b=NP0OL+8N/HKVk9t8LOGFoVhPb8BWEGpoOQS+s7/YZbzpyAQvXorJMkMbDE6nZuwIap
         3bkrciv/W6qVsvWgNtNYSXCsQJWVD+Zxo+6HFvUugrBBEP7L7DLHi9L6FF34rmXHLCJK
         DlGCVGDCzniCI7Q7CEfJYqQh8yHyGVKPLy8B6mOhv0b/zPlOPdNE61W8+yWQq4rnnG0S
         Q4O7TqbVbviAo8ssgkCaGAS69QyBTQHr0xMV97nibzCiAnWcplFqQ++JEVHC+LvQPIXg
         rQ0sI7rpkY8T+cJCrMhWyxG+gPQrDhBdUU4V4tuvLMXlEaJOaGGpzl64SH1RvjPNtLrB
         ggpw==
X-Gm-Message-State: AOAM531EeWynApVuHbSyhOPxJ02DLH/2uMjA5PwBJcwOg2Zat3nbnYDJ
	8PamxdrO8vfpcAX7qVvsJOnnL/jGQmluq0Mm
X-Google-Smtp-Source: ABdhPJz5ezxFZRsA0PpY5bY6nmRa7pweStIcdlHQaVFuO7/ePay1BWU295JbYaS+JZ/pLvGdjtgQEA==
X-Received: by 2002:a05:6402:50ca:b0:413:2a27:6b63 with SMTP id h10-20020a05640250ca00b004132a276b63mr28442653edb.349.1646217956789;
        Wed, 02 Mar 2022 02:45:56 -0800 (PST)
Received: from [192.168.178.39] ([87.123.247.130])
        by smtp.gmail.com with ESMTPSA id o7-20020a17090608c700b006cef23cf158sm6273041eje.175.2022.03.02.02.45.56
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Mar 2022 02:45:56 -0800 (PST)
Message-ID: <c0d9dae1-5467-b4af-d4c9-889599f2f1c8@ettus.com>
Date: Wed, 2 Mar 2022 11:45:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BN6PR16MB170007FD7537DF2A793E2D27B9039@BN6PR16MB1700.namprd16.prod.outlook.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <BN6PR16MB170007FD7537DF2A793E2D27B9039@BN6PR16MB1700.namprd16.prod.outlook.com>
Message-ID-Hash: HP7C5R6XSMMSAB7MNDSQVXD5AVD6ZLVH
X-Message-ID-Hash: HP7C5R6XSMMSAB7MNDSQVXD5AVD6ZLVH
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: single flow utilising multiple receivers with high sample rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HP7C5R6XSMMSAB7MNDSQVXD5AVD6ZLVH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi JP,

quick remark: Are you *sure* you want 200 MS/s from *both* channels? The frontend 
bandwidth per Channel is 80 MHz, so that 100 MHz would suffice.

Best regards,
Marcus

DISCLAIMER: Any attached Code is provided As Is. It has not been tested or validated as a product, for use in a deployed application or system, or for use in hazardous environments. You assume all risks for use of the Code. Use of the Code is subject to terms of the licenses to the UHD or RFNoC code with which the Code is used. Standard licenses to UHD and RFNoC can be found at https://www.ettus.com/sdr-software/licenses/.

NI will only perform services based on its understanding and condition that the goods or services (i) are not for the use in the production or development of any item produced, purchased, or ordered by any entity with a footnote 1 designation in the license requirement column of Supplement No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a company is not a party to the transaction.  If our understanding is incorrect, please notify us immediately because a specific authorization may be required from the U.S. Commerce Department before the transaction may proceed further.

On 02.03.22 06:33, Jonathan Pratt wrote:
> Hi.
>
> My setup is an X310 with a single twinRX installed. I am trying to get 200MSPS off the device from both receive channels at the same time to one PC using two 10GbE connections.
>
> The radio has been flashed with the XG image appropriate for gnuradio 3.9.0 + uhd 4.1.0 which is running on ubuntu 20.
> There are 2x 10Gb  SFP+ modules on the radio (happen to be fibre) and an Intel X720-D2 with two 10Gb SFP+ modules on a PC and two fibre cables spanning the gap.
>
> I can read at 200MSPS from either port - no problems.
>
> I have created a flow with a uhd source that has two channels. I have set the motherboards to 1, and set the address (addr0 & addr1) to both of the ethernet addresses  that I can see and operate individually. both channels are driving null sinks for the purposes of testing.
>
> when I run this flow I get the following error
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph : RfnocError: Specified destination address is unreachable
> with a meaningless traceback following.
>
> Is there a way to do what I am trying to achieve?
>
> thanks
> JP
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
