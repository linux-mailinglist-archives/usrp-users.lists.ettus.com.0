Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F34E241E5A
	for <lists+usrp-users@lfdr.de>; Tue, 11 Aug 2020 18:35:28 +0200 (CEST)
Received: from [::1] (port=50954 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k5XFG-00052L-F6; Tue, 11 Aug 2020 12:35:26 -0400
Received: from mail-il1-f170.google.com ([209.85.166.170]:41022)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k5XFC-0004vw-E7
 for usrp-users@lists.ettus.com; Tue, 11 Aug 2020 12:35:22 -0400
Received: by mail-il1-f170.google.com with SMTP id c16so11165581ils.8
 for <usrp-users@lists.ettus.com>; Tue, 11 Aug 2020 09:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=OYx8U0VfKkvCjkQqjYerE+fQ9nxHO5heoj50wdDDY2U=;
 b=LemPb2x9q2Nb/2U6iQwXtiSNfCXhP20EsgpoIydSMcqgRpFSkXCA6j8Z+Ue0x9m2/m
 6fAiVfJbaidBE5gszPgdGQKLrzbYULDXfpakRz1wXO75f5D+cTsjcfRtuMALv5SZiQxT
 Dqu4to1ykzkVAvHggsK1UlMv903HeC1RjoE84bRkq9f1OjP09swZgpA9aKxijfOHaTII
 xt0Dl3OWJpyy8pirkHtXVJe1DOui0qAD1Q7tAZq1CfjJaIJd2WT7wvZfAPzM2/75jki5
 YFvlhANlgxgUcm4eKEmIYPzp32vJD4sbSXueFrD5VwgYRVlpSXuhTxKMXVSLC3E93B9/
 Mp9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=OYx8U0VfKkvCjkQqjYerE+fQ9nxHO5heoj50wdDDY2U=;
 b=JsJ7K6+Sn8mYuSryF7HpiSUKfD/SouGWO/jNJDWFIyRJa8gRuJ2EvYm4A2aWhwPvZm
 QBY6UvLVO3lecvvZ/HNYFmYYJftq6qHGw7AJnOXPckx738Qu62HkTND8inRZJzp2lio4
 2oDigwkZGzyPqXxzX9wvd+aZVSQVx7DUtiLcQv376XZzCkISGtIG7EDn/93X1JSdb6l5
 ytPJNU6kLmiuJdbBUavMlGl4U4zW/Q55j+IVLtzsX6egtx31mML/S8JQr1B+KCRvm2PN
 Xgn2Q40d2MQBSWnNQ8mbUVrs5iW91GY55YFDcTenS36s7bpXw4LNgXVzohR7ntd7SABO
 euLg==
X-Gm-Message-State: AOAM533kFtE7Hz38d5SU4QAvuduEp9ahmnC8x55ppOO0Xm2ggGYb79l/
 aE0IYs0TGQKNj+2UApBOyompD+BDS3I=
X-Google-Smtp-Source: ABdhPJxh4vGvc6YD7LwvCDyO/tD1o3WPUuozTMBeuGIQ5BA7mIfMY+3rL9aW3L9bkNOdsZPwkZsJrQ==
X-Received: by 2002:a92:1b84:: with SMTP id f4mr11198877ill.180.1597163681449; 
 Tue, 11 Aug 2020 09:34:41 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id h9sm11331586ils.53.2020.08.11.09.34.40
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Aug 2020 09:34:41 -0700 (PDT)
Message-ID: <5F32C89B.8010808@gmail.com>
Date: Tue, 11 Aug 2020 12:34:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <015901d66fd9$db045950$910d0bf0$@beniston.com>
In-Reply-To: <015901d66fd9$db045950$910d0bf0$@beniston.com>
Subject: Re: [USRP-users] B210 noise floor
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

On 08/11/2020 08:20 AM, Jon Beniston via USRP-users wrote:
> Hi,
>
> At 436MHz with a gain setting of 76dB, NF of 5dB, BW of 2MHz, I expect the
> noise floor of the B210 to be around -174+5+10*log10(2e6)=-105dBm
>
> When I run the SDR Console software, this is what it appears to be. If I
> feed in a 1MHz wide AWGN noise source at -100dBm, it can be seen 5dB about
> the floor.
>
> However, when I try to capture the same data using the MatLab USRP interface
> or the rx_samples_to_file program (with same gain and sample rate), the
> noise floor seems to be at around -90dBm.
>
> (E.g: rx_samples_to_file.exe --duration 1 --rate 2000000 --freq 436e6 --gain
> 76)
>
> Any idea why this might be? Possibly something silly, but I can't seem to
> figure out what.
>
> Thanks,
> Jon
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
My guess is that the applications just scale the FFT output differently.

Without calibration, the FFT outputs in most apps are just relative to 
some arbitrary full-scale value, and they are decidedly *NOT*
   calibrated in dBm as measured at the antenna input plane.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
