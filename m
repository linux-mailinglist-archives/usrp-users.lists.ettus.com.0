Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F1022CC1E
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 19:25:53 +0200 (CEST)
Received: from [::1] (port=46230 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jz1SC-0003wA-9O; Fri, 24 Jul 2020 13:25:52 -0400
Received: from mail-qt1-f169.google.com ([209.85.160.169]:45132)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jz1S8-0003nb-Gn
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 13:25:48 -0400
Received: by mail-qt1-f169.google.com with SMTP id s23so7404677qtq.12
 for <usrp-users@lists.ettus.com>; Fri, 24 Jul 2020 10:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=B55R8Qojuw6JLsqpmljcSo39EbHI0L0S1YB7NL0iAhs=;
 b=F2yvxdRgvoBj2Ql+5QHfF5y1LYf060dwkK4E338MJSv14xd1qH9ErLZUyeFuu81XWl
 B/DOZDBkJFdEl3fuLbRR0txlOA18pusHKcQ9qTqQv1M2hsh3B5m4nrdK7pYRdK45ne18
 E05pi7ifaWx8TvtVcemt5SDfsqGP3NqzJR6b1nffAeCP7eejjTyl030Tw0gOZWWWVCVR
 r550QdbkjFBn1X+awBkJMI3k8mLqcbTvZU7zzBiybXlO/atUYXFpE+VE2pWu64pP7wIb
 E0HbEZQydjDe4lYJcyB5llnCZJuaOCspu0we1zg6RF76YKhvrW+/pmv9ElwMGec5tKoZ
 RJcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=B55R8Qojuw6JLsqpmljcSo39EbHI0L0S1YB7NL0iAhs=;
 b=IEJehzV7WsWDy3p3lEKMzjpJc5snqRI5XQsQ7OVGCrbclOYbPY+C5p8WdLfaFhHP/V
 IlO+9wDEuRVm94HKwmde3uy5jEeaYQcMALGeQeETza8iqUPWRog+iYaXDnbdX5OrUvoc
 Bh4YtxEU7abTKJ0njR5D1SjUGFF2Lhvyt/PM9QZfi/ooCubPldecdlWwF9vZIG0QOdBh
 aVaBW2P2h3HnGJIUzHUwF+o/SucjU2KF3msKWVtlaj4ZJhABjgg7GyPKBFeTWn6ppIb2
 qs0xT/X+FOJSB3X1hbJvhhvVD9i0NV04k34ZUL33OjzXg0li0N2SSKB7an6ZZ4LW+tKF
 /gLA==
X-Gm-Message-State: AOAM532XZ807HoSlrOUXv0YJaCbrmgJCwMzSIsDwABjZNIk4cIzQDkQI
 9IVKskVIY9vqPfQ9xcwu47/u+Bc7LBI=
X-Google-Smtp-Source: ABdhPJzkAaaL4UvHYrtlsoT2Jz7912rvrCIrh9mCZeCLHKBYXHs7s+EDV45/7HhFWIhzKRczmv7C2A==
X-Received: by 2002:ac8:27e2:: with SMTP id x31mr10780165qtx.23.1595611507697; 
 Fri, 24 Jul 2020 10:25:07 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id b8sm2113673qtg.45.2020.07.24.10.25.07
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Jul 2020 10:25:07 -0700 (PDT)
Message-ID: <5F1B1972.50104@gmail.com>
Date: Fri, 24 Jul 2020 13:25:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAANLyua6xgH+TsH2bqmKLMu4buMm93QqYQ-JPy+vd4F9aB26SA@mail.gmail.com>
 <81D12D30-8BD2-4ED2-906C-E9F7F08B2B82@gmail.com>
 <CAB__hTTc80gTmTWXK2GnsBQpdAj6vZ_=oV_Nc_8oLs0vRzcMGA@mail.gmail.com>
 <CAANLyua3t1JCyUPPopWCjekFm9okhoycbvvFxNwkBNHXN5kgwg@mail.gmail.com>
 <5F1AF0FC.80106@gmail.com>
 <CAANLyuY0Db2CXjRrW9Ht_8AL3RMuRhFde6Zyapq_hvNHm9iHrA@mail.gmail.com>
 <5F1B12B6.1010705@gmail.com>
 <CAANLyuacSbfH-t=vwPODS8O3f7WSD+sLWBV1KjRhWB9VaaSeMA@mail.gmail.com>
In-Reply-To: <CAANLyuacSbfH-t=vwPODS8O3f7WSD+sLWBV1KjRhWB9VaaSeMA@mail.gmail.com>
Subject: Re: [USRP-users] tx_stream->get_max_num_samps() too low
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

On 07/24/2020 01:04 PM, Devin Kelly via USRP-users wrote:
> Well the documentation says RX stream only but it turned out to work 
> for TX streams too... so the documentation writer should be embarrassed!
>
> In my first message I verified that the HW actually sends 8100 byte 
> packets using ping, that is unless tcpdump is lying to me or 
> re-constructing IP packets in a way that's transparent to me.
>
> It seems that there's a frame size that's hard coded in 
> x300_eth_mgr.cpp and that's what was causing me trouble.  I got 
> get_max_num_samps up to 1996 and so far that's helped the actual 
> application I'm writing substantially.
>
> Devin
>
Ah, that's just establishing the *defaults* if you don't otherwise 
specify the send_frame_size, documented here:

https://files.ettus.com/manual/page_transport.html



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
