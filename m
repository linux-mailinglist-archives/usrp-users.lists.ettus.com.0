Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 205A6278776
	for <lists+usrp-users@lfdr.de>; Fri, 25 Sep 2020 14:43:35 +0200 (CEST)
Received: from [::1] (port=58080 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kLn4U-0005ie-CJ; Fri, 25 Sep 2020 08:43:30 -0400
Received: from mail-ej1-f44.google.com ([209.85.218.44]:35387)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kLn4Q-0005bo-Ak
 for usrp-users@lists.ettus.com; Fri, 25 Sep 2020 08:43:26 -0400
Received: by mail-ej1-f44.google.com with SMTP id u21so3466746eja.2
 for <usrp-users@lists.ettus.com>; Fri, 25 Sep 2020 05:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=jxsXJEVK8SuBDt1NHtsCdUOD44yVEA+zG0E0mbCw3FQ=;
 b=PhALLbWJYFkBZ7xanZAzQVrmfECFKZk7ZttasPiEPLBaSGQIMqmCltz++l6+EmY2rE
 6wzPFMPJi0VEVfCZIBQXj+hnShEoFKkcAAp8aBlo8uFmH1XHG/3M0fNsWgjdGdtknh28
 B2ylNG9/K7XumRbX0g6Cyg6PqfRi2Fapqy7VmrE6h9bBEqXAwcvTax8RSKYR4+U1U2Lt
 8XUwwvMDI61dJGFsrkMKfkGL7YCbY38fplY5pr2Ef8U5tSjZuQ/XERdALomma/a/JnGv
 98kJMCFpGHkPy4ixHlOGCkI2vqaTHfr0CYFJFY1uqQPciyQONcRb9ANVfKQnRy+WNpRi
 zS1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jxsXJEVK8SuBDt1NHtsCdUOD44yVEA+zG0E0mbCw3FQ=;
 b=aTx0P4XiEc0uSt44j4GgSbd6bNh80OUWoTYsvuC9HugglobiZV8rbvlyKWqJMA91Cz
 4LN7UtJih4jw55PO/VviSRTrgXNPbEiN4/j3/k25HOGMlSdze4+NGdFYzNYS8/mKx4qx
 QEkDpRtQTzIzKBAHqfMkkCc/KKFVIW7pu3tXORmzVenqujs02OBnCMFkwKA56NLpNE72
 spIfJOOfRw16jloKJtxq8zSA4TUJI9/KIYC96zR/TqWM7NOt88y87Dh5Bk0gyEoeCi4s
 r5gclKkPDQLxax0Kx8zol5LA/M9/5Q06aunHnMOrbIKRW7BT0KNmFJJR8NAm1R8+Rrkh
 05Tg==
X-Gm-Message-State: AOAM5332FFnWLyDHkp2jXJYiBLzoEnf1sHTFEWw//swB0Y36bUCvoJnw
 tfN1gcKPUeSp+gooUCuyVdePhYeOr273bEgRVwg=
X-Google-Smtp-Source: ABdhPJx4W1tH0FzoNhIIzTgPhx1JcsvmGkfzksiZL8NLcpyxojnj06q3hHgulH+k/KTsK8QiCho8rg==
X-Received: by 2002:a17:906:454e:: with SMTP id
 s14mr2598345ejq.137.1601037765031; 
 Fri, 25 Sep 2020 05:42:45 -0700 (PDT)
Received: from ?IPv6:2a02:8071:2c80:c4f0::e6a? ([2a02:8071:2c80:c4f0::e6a])
 by smtp.gmail.com with ESMTPSA id j9sm1776317ejt.49.2020.09.25.05.42.44
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Sep 2020 05:42:44 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <24712a5fdd99465994c9aee26afd55eb@kongsberg.com>
Message-ID: <c5bc5654-911c-6e56-d138-cb4986eb7fb9@ettus.com>
Date: Fri, 25 Sep 2020 14:42:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <24712a5fdd99465994c9aee26afd55eb@kongsberg.com>
Content-Language: en-US
Subject: Re: [USRP-users] Losing phase alignment after underruns with X310
 multi-USRP
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
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
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

On 9/25/20 11:29 AM, Andreas B via USRP-users wrote:
> Hi,
> =

> I have asetup of several X310s connected over 10Gbit Ethernet, and
> synced with an Octoclock. I=92m generating signals on a PC, and streaming
> the signals to the X310s to get coherent waveforms. For now I=92m
> generating sinusoids where the phase of each channel slowly varies with
> time at different rates. I use UHD 4 on Fedora 32.
> =

> In case the CPU load spikes and an underrun occurs, the phase
> relationship between the channels out of the X310 changes / is lost.
> (Presumably because the X310 knows which packets belong to which
> channel, but not which packets should be aligned in time?)
> =

> Is there a way to avoid losing the established phase relationship,
> despite the underruns? All examples I=92ve seen of multi-USRP TX only sets
> the timestamp for the first send() call, and clears it afterward, so I=92m
> not sure if timestamping is the correct way to do it.

Andreas,

timestamping is the way to go. You'll need to put a new timestamp onto
each send() call. That's also how GNU Radio handles it.

The send() call handles each call as its own thing, and therefore
doesn't retain the time spec for future calls. We could feasibly add a
mode to enable that if there's interest, but it would have to go
somewhere on the backlog.

Cheers,
Martin

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
