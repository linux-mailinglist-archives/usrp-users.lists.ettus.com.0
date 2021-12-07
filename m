Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F005A46B0C3
	for <lists+usrp-users@lfdr.de>; Tue,  7 Dec 2021 03:40:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3BD8F385045
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 21:40:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="atCa7wAt";
	dkim-atps=neutral
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 32B25385028
	for <usrp-users@lists.ettus.com>; Mon,  6 Dec 2021 21:39:44 -0500 (EST)
Received: by mail-qt1-f180.google.com with SMTP id p19so12881162qtw.12
        for <usrp-users@lists.ettus.com>; Mon, 06 Dec 2021 18:39:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=2hojxs5YE24g0q1wrurGOvRkvD3tHh5CkzY90BZ7Zpo=;
        b=atCa7wAt332d3Bl9ogTYEpWzbKpxxTLJfMQxFrzxrpLS1gZrdbKRRsHKKqOEgmzzXO
         Oobkwr3NdkHdl0WPBHyFzhRYwJtHo1A4R5M9z7Scd2vW4OtcDUe0ov21NcbqlEhdLhrj
         PUv76haV2MY1czJYN6G4KiOJhA0t4Ft5jY4dBtfRFaoOK0VLyzldygIknqDANf9TEHTZ
         P0aE6FxWVHDMD0RmpNSnB4SxZKm/3+QMFmlYSrxT8j/vnaRINgOnP9iFxxWHnsH3yNUY
         NTanm6kkhpHTXF+rkqjmZMVaZO/7rM3HGytV7VF1NvnZ9IE6buUC3OwAFqrbMUzZNxtt
         X/Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2hojxs5YE24g0q1wrurGOvRkvD3tHh5CkzY90BZ7Zpo=;
        b=vxAZOdfvqRIHlhzyVpSG/DCQ5LEd8ftZWFJPH2h+eb3SrG6/pEQTxOXkWQy5Vpe/A7
         3qg6yx9Bgu5hFmOFhFy6pdzo4+hdcN7JsdVceA8nlGbHt6GFCMBhocZJX2ztV4DzmMrx
         QS8nHm+5yo7gTxQsVbavxLFmbOEjZ3PSI2NI0nLQtwULfnPeJX3u2r6SofdEUdSOUK5w
         W52tw+al/6NXMHvtWXGpD7lx9PoAddJUmwjyZxwwjZmFyeA0IcVtr4lX/O6gso3lQzl6
         zmW1c4cJO6Ilq0TFd4oEOwKDqurJudYj5CW0p2IFgAxeDxzHUKFhb5W+T/u9mmFcdcGa
         ZgSQ==
X-Gm-Message-State: AOAM530jJh+USx9gEyCuxiR8+N2z/9x661SP7UfC+b5ua1yoREROU85B
	HwTsli9uvXAFtemaqqlzeYAejXuBlP0=
X-Google-Smtp-Source: ABdhPJz/AxczcQ4cRKiVUAjWU7lCFnFXEIH6J1DRp7AH9TeaiJedUCtVSFeaX5kRQK8Xbgafp11i/Q==
X-Received: by 2002:a05:622a:1708:: with SMTP id h8mr44568520qtk.318.1638844783388;
        Mon, 06 Dec 2021 18:39:43 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id d9sm7878503qkn.131.2021.12.06.18.39.42
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 18:39:42 -0800 (PST)
Message-ID: <cd412a39-d776-365f-d9d8-075b50514d2f@gmail.com>
Date: Mon, 6 Dec 2021 21:39:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <UEbV9jjqBa3MeMp78kNl8EbbKmjtPmIyPib6Wk9oM4@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <UEbV9jjqBa3MeMp78kNl8EbbKmjtPmIyPib6Wk9oM4@lists.ettus.com>
Message-ID-Hash: OCCSR6GRLQ3B7Y3S53BOVCO4DQ3Y77O5
X-Message-ID-Hash: OCCSR6GRLQ3B7Y3S53BOVCO4DQ3Y77O5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: (B210) UHD Error : Exception caught in safe-call
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OCCSR6GRLQ3B7Y3S53BOVCO4DQ3Y77O5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMi0wNiAyMTozOCwgY29uZGljaW9uam9obmV4ZWtpZWxAZ21haWwuY29tIHdyb3Rl
Og0KPg0KPiBNYXkgaSBrbm9udyBleGFjdGx5IHdoYXQgYXJlIHRoZXNlIGZpcm13YXJlIGJ1Z3Mg
dGhhdCB5b3UgYXJlIHBvaW50aW5nIA0KPiB0bz8NCj4gQ2FuIHRoZXNlIGJ1Z3MgYmUgcmVzb2x2
ZWQgYnkgc29mdHdhcmUgdXBncmFkZS91cGRhdGVzPw0KPiBUaGFuayB5b3Ugc28gbXVjaC4NCj4N
Cj4NCkknbSBzaW1wbHkgc3BlY3VsYXRpbmcgYXQgdGhpcyBwb2ludC7CoCBJIHRoaW5rIHlvdSdy
ZSBhbHJlYWR5IHJ1bm5pbmcgDQp0aGUgbGF0ZXN0IHZlcnNpb24gb2YgVUhEIHRoYXQgaGFzIGFu
eSB1cGRhdGVzIGZvciB0aGUgQjIxMC4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJz
LWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
