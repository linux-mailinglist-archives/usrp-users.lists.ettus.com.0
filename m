Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E6ED03BEA1D
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 16:56:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 35E31384A2E
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jul 2021 10:56:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="G99wLXZr";
	dkim-atps=neutral
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id ACB24384698
	for <usrp-users@lists.ettus.com>; Wed,  7 Jul 2021 10:55:43 -0400 (EDT)
Received: by mail-qk1-f181.google.com with SMTP id a6so2204036qka.4
        for <usrp-users@lists.ettus.com>; Wed, 07 Jul 2021 07:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=06oLM5Q4eX+yf6FIZgZHHVyViiF6lk7FI3CTnhFIJCM=;
        b=G99wLXZrUJWnRfPA+/2TDyB2yL5xjTynR0HLtbkb7/SwrP1ScsUlNVgDad9JSDOB02
         B3jM9I6QrcV9odFXPyq/budqnph4L7JuR81KAtOG9GQIxOrWqtsD5hYiZwMUl5VbhzRl
         n0TK1IA4GzP5nYA9kAgr5E4MT3usWf99XURzxyHQ3fizHFm4DD2WrfQTjuCpwB9V+vDe
         y4npswhejCwLKJ6s3yH4Dc6L8jLE5seQBTjJzL+oGR0INyQEChWwEuisreXv3loc7Gcd
         jNN8yacsqcJzqPU5K3AAUfLc5eSNE4oc9MjGTGPCAxi7kk90BbEZYZEp1Ekfel+TmSbU
         tEIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=06oLM5Q4eX+yf6FIZgZHHVyViiF6lk7FI3CTnhFIJCM=;
        b=l5XR2SLThKDrPyv2EddtILR4vanj4BSFfF5trTURMN05I6u2Zd8QwJexKbAr/UAzrw
         XxRCsxSC2T+0A2y5M7+eWocdKBPAJFlPgOV9Qkd+a9aMSOdb1M7S53i2O0iQ6VDPBWqr
         qjPTW20a0bdFJ3VMGsIkkKFKjPGMsy/CTukVxPRy2EctcTqtgdLeLu6e9INkxXe/eJvp
         b8ReuI02axS+6DEUNHFB/cAJvdbeZdh2nuoTCqfGjgnBn1oiz6RUZS8ucZ4QxbgVhlle
         2eXsCyPuutgjtBbGuOG8zcvf9jVWNEpN6GsgJ5wmrPSY14r8tBpkvvSVmsJwWOrjKBJc
         I4tg==
X-Gm-Message-State: AOAM5302XaBhUuvhcGcHqlYJcLK4u+nmY/kCQeiq2N/JLfPBja2x7s7M
	1V90dlU8xRXX2q/UF6lM+hudacAiwqa01g==
X-Google-Smtp-Source: ABdhPJznbSVORkxhU1x4VGNx1ouCep7arjVsswTAAVZzSDnkkx5iwm1Gf4AE8g+We+jLeYE5zG+YwA==
X-Received: by 2002:a37:9e94:: with SMTP id h142mr4719131qke.184.1625669742925;
        Wed, 07 Jul 2021 07:55:42 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id i2sm5243128qko.43.2021.07.07.07.55.42
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Jul 2021 07:55:42 -0700 (PDT)
Message-ID: <60E5C06D.7050601@gmail.com>
Date: Wed, 07 Jul 2021 10:55:41 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <811837388.29608215.1625652252148.JavaMail.root@zimbra9-e2.priv.proxad.net> <100428163.29631252.1625652473023.JavaMail.root@zimbra9-e2.priv.proxad.net> <20210707124959.5gbd2dfycsap5lcz@barbe>
In-Reply-To: <20210707124959.5gbd2dfycsap5lcz@barbe>
Message-ID-Hash: Z6XZCAQWKPZBPBD2JW76RVNLTBY6JQCV
X-Message-ID-Hash: Z6XZCAQWKPZBPBD2JW76RVNLTBY6JQCV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 multichannel delayed start sequence ?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z6XZCAQWKPZBPBD2JW76RVNLTBY6JQCV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"; format="flowed"
Content-Transfer-Encoding: quoted-printable

On 07/07/2021 08:49 AM, C=E9dric Hannotier via USRP-users wrote:
> Hi Jean-Michel,
>
> On 07/07/21 12:07, friedtj@free.fr wrote:
>> why is the multichannel behaviour in a single receiver such as the B210 =
different from the single
>> channel streaming? I can imagine the different behaviour for networked m=
ultichannels USRP (e.g.
>> X310) but how about the B210?
> I think it is related to this topic:
> https://lists.ettus.com/empathy/thread/YHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W?h=
ash=3DYHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W#YHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W
>
> Regards
When you use set_time_now(), it's an non-synchronized operation. it sets=20
the clock on the target USRP to whatever value you specify.
   But if you have more than one USRP clock to set, that *necessarily*=20
involves multiple transactions between your host and the
   target USRPs, and those transactions take a finite amount of time to=20
complete.  The clock for the Nth USRP isn't "stopped" while
   the setting takes place on the N+1th USRP, etc.  Which is precisely=20
why the whole 1PPS infrastructure exists--to allow a single
   synchronization event across multiple devices.

Now, how does this apply to the B210 for multiple channels?  Well=20
because of the way the FPGA is structured, there are effectively
   TWO time-of-day clocks on the B210--one for each channel.  So, you=20
have to use "set_time_next_pps()" on it to force both
   time-of-day clocks to be set to the same value.  Using set_time_now()=20
will cause two internal transactions--one for each clock,
   and there will necessarily be some amount (several clock cycles) of=20
skew between the two clocks.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
