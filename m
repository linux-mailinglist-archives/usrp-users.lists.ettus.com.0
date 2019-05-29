Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A6E2E5A7
	for <lists+usrp-users@lfdr.de>; Wed, 29 May 2019 21:59:03 +0200 (CEST)
Received: from [::1] (port=51678 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hW4j0-00057h-I8; Wed, 29 May 2019 15:59:02 -0400
Received: from mail-ua1-f53.google.com ([209.85.222.53]:35822)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hW4iw-000505-Gn
 for usrp-users@lists.ettus.com; Wed, 29 May 2019 15:58:58 -0400
Received: by mail-ua1-f53.google.com with SMTP id r7so1560776ual.2
 for <usrp-users@lists.ettus.com>; Wed, 29 May 2019 12:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=7Fm7Yy2JDnISucu2QQvLxXrF9NNN9VhuONg331wuk34=;
 b=kBVsYcN1Tm3CDnZlmNuq7/nC9hEts/NRgvHa8W82Q6tihKqfihOlqmf7cpeAODhTaO
 4ENjAleDz7Y4FAK11e6b8MNQE0Qlp8iKfLg2ESGxNELYO0HQE8EHHQJS+R6VZXEiAULI
 gD9l3CCaJBpMtHgyHVzKqvBer4KXd++LOC/JuNo8uHsjC3J91BtS5nHdj9VUwfMYZ8vd
 NOVRx6idnoZOvD59hFu5KXGPSb8FS/sOotBxenYz2MojNlj8sUIkML/XXFFsW2WPflq3
 7Ncm7F7lTuwTfAb6dc8HvJLDaeX9vQYmAkBf3zYxBB6fHi2ijyDU86fck6Npn30xHg/V
 2ApQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=7Fm7Yy2JDnISucu2QQvLxXrF9NNN9VhuONg331wuk34=;
 b=A2fZVQmKfRKrCV0+H6EEhwo58G8Guy9MUXTcP2xKCJNJndjU4/GY8+Od8F48bA1Dwu
 vN05htZJuMRbV6tN5/NyqqQ38CVwpRp1WLo2s2cw6cZ3Zolce1cZx8EJ1i0dygNSBkSY
 Li5aaDZS8c6wopXXPmPJX8P/T9pOYSNUjktKzjjLh4/VzT37tio4dyHWGTEtEoIPTmta
 LzIxyHp3KHpRgm7jftmM4WECnIr2IE/KCrGEjeWGj63Gx2NaN8zad+nzUNx8ezZRike6
 HHqSFVEnM/k2WhU74xk5KhWQrwFl9qJSdasPbPVqpAyjhWrTd9TUxIJTsG95RmXQ8XQA
 OAPg==
X-Gm-Message-State: APjAAAUnrZfo99vWnA072DRTXKQZSK+ZmP7l/5f6aYvOa9PyHSDn2I/M
 AmVQibx+pNcv5sNQh2ogt7kx4cj8iZ8=
X-Google-Smtp-Source: APXvYqygI6Q+jc5LSrKLz5uwc1IsygYBkAngIwiDQqFQBbd+0kkxbjBJNDjtP436Kxtjvsb0uL89nA==
X-Received: by 2002:ab0:698f:: with SMTP id t15mr5952277uaq.34.1559159897836; 
 Wed, 29 May 2019 12:58:17 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id n132sm890892vke.18.2019.05.29.12.58.16
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 12:58:17 -0700 (PDT)
Message-ID: <5CEEE458.5000905@gmail.com>
Date: Wed, 29 May 2019 15:58:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <813cfe18-1c46-adf1-8a41-ecc536a1b907@3db-labs.com>
In-Reply-To: <813cfe18-1c46-adf1-8a41-ecc536a1b907@3db-labs.com>
Subject: Re: [USRP-users] X300 with TwinRX and LFRX under UHD v3.14
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

On 05/29/2019 12:18 PM, Jason Roehm via USRP-users wrote:
> Some time back, I had an exchange on this list regarding how to 
> configure an X300 to stream data from a TwinRX and LFRX daughterboard 
> simultaneously. The previous thread is archived here:
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-February/051672.html 
>
>
> Specifically, I would like to synchronously stream both TwinRX 
> channels at 100 MSPS complex, while streaming both LFRX channels as a 
> single 100 MSPS complex stream as well. To do that, I am:
>
> - Creating three multi_usrp objects initialized with identical 
> arguments, with the subdev specification "A:0 A:1 B:AB".
>
> - Obtaining one rx_streamer object from each multi_usrp (passing a 
> different channel number 0, 1, or 2 to each), then calling 
> issue_stream_cmd() with stream_now = false and time_spec some time in 
> the future (say 2 seconds away to ensure much more than enough time to 
> finish setting up the stream). This should ensure that they all start 
> streaming simultaneously so I get time-coincident samples
>
> - Using the rx_streamer objects to receive data on each channel, use 
> recv() to stream data in.
>
> I have run this setup for over a year with no issues under UHD 
> v3.10.3.0. I updated my application to use UHD v3.14.0.0 in order to 
> get access to TwinRX bugfixes and more Ettus hardware support.
>
> After the UHD upgrade, the above setup does not work. I do get data 
> streaming from the 2 TwinRX channels at the desired rate, but I never 
> get data from the LFRX. Instead, the first call to recv() in the 
> thread that is reading the LFRX data returns ERROR_CODE_LATE_COMMAND, 
> then the subsequent calls time out (I have the timeout set to 5 seconds).
>
> Notably, if I set stream_now = true in the stream command, then I get 
> data from all of the channels as expected at the desired rate. 
> However, this method is incompatible with time alignment across 
> channels, so it is not an option.
>
> How can I get time-aligned streaming from TwinRX/LFRX working under 
> UHD v3.14?
>
> Thank you.
>
> Jason
I'm a little bit surprised this worked AT ALL--you have 3 independent 
multi-usrp objects all pointing at the same hardware.

Time alignment is something that is done WITHIN A SINGLE multi_usrp object.

The right way to do this is to use a single multi_usrp object, with a 
multi-channel stream--that way the time-aligner within multi_usrp
   will take care of time alignment.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
