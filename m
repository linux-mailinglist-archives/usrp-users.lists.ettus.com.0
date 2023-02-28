Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6E76A5ECC
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 19:31:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 50AC7383ECD
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 13:31:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677609075; bh=UyqnAhM8hTKPrWIhF3vKjEc1Bi4sUnuHFFCna2Gv6AI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=T3iVpNv0bjPwEyiW3+ACrYqzgftNI6pm6YRHs9KdVkZ5yaGQwsGctHYiHnL/M7FLB
	 0s6LTUJsv5q37r8c/84e2OdIFq9XQOVcc8N+uE3WHqKxJQKjRVCn3SG3+wPdUPvEYo
	 PefsRmA6sgpF5XqWal+rnOM8qYnx0JwN672KXwF+oydA4LA+hAvJZVDaE/K7/v+sSt
	 kV3SBnXFY0V+Lfq219fQ5ppd/SiHZqNj4aZDQdGk6vo1W7tiQKsvTnPHW9aE0gqEUW
	 HYVvQCw99gH6jRyMaHLQAHC6p6kp3PxFYd9WG3xYY8DMOtgKkYNWDDHDCgDMuOL/U7
	 EHh2N8O/Fx1qw==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 01005383ECD
	for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 13:31:08 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UZLVtKtS";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id c18so11607823qte.5
        for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 10:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QsRayJQDmtvgKfN/D7BL9n622D/XDXDWQYiAs6N3sAM=;
        b=UZLVtKtSVYl1+2r4vVA0C2nPEVE41f1bQRrcX0cr10PwZau3iNEFtlKBok4CPL95hR
         XSFkmyMsQMlnqPE8Jx9LrBk3lnklakEzB4l3dMYS7n/3fShkwz+Efn86pEVuIfxM32Mx
         VI/KZ1JPDpVSrwqD3dlp6qS0hMpTyMlVzyd5XkWlGwPYO1BoI7p+CInQk7uGsthXJvQo
         TdinG3UGNSk1VHUQFoDqfX55ZD7Z3pDm70d3uMa2Aqtv0lB4H1rFCoVAqePtMflggEHb
         uPieYLQ5UYq6oHvpUvh4xdH+KTBonD7WvVewT9WLtU3cDUsQKLfMYRnj7hF1nqc29pEv
         O1Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QsRayJQDmtvgKfN/D7BL9n622D/XDXDWQYiAs6N3sAM=;
        b=yjxgYs7nflGydBZgzxXQfNbWGVmGBZUE48UVAo3OJxheA85BdWHp5aYa3olzsRB518
         jb8XGa+S6WdQyA3u5ZxjwiJMdL3HqCQg5bnV1Ox1Y/8N6XcmYabxhZYPk9+CdsfYH4d/
         B/LhKrx42CO+DkbLI71YKUnXJH722FZJFblYtGR2ET6tDF03dzqc/O67s49qi6q8kUzq
         oYERcPtxizKnGqmstZGtKFEltPduN1ujgo39FDwe7YONbwDU0nJTFE/ub47pGSsNYtzn
         B8YZ/naZTp4lWCTmGke2EF8IoziBJxeFdbA2HGrlEUngXDAKjNe39vRn8LkUkuJ+DWYW
         biNQ==
X-Gm-Message-State: AO0yUKUOn2UbzBvhd2X8mfWXe1nWRDXVtgDdHkq0wzlBPjnksUQ3daAt
	Xv4Y/z4lmBcQKDc51XDxK6uI6APoCrE=
X-Google-Smtp-Source: AK7set8LNhht9LzcGW//kK5xUhNB1cDGF+BUyO9PCGvRVbVnTZ1IQWzISRiAJ7TNmS1eBHNFRO/uoQ==
X-Received: by 2002:ac8:580f:0:b0:3bf:a1f0:4c8 with SMTP id g15-20020ac8580f000000b003bfa1f004c8mr6652260qtg.65.1677609068443;
        Tue, 28 Feb 2023 10:31:08 -0800 (PST)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id x30-20020ac84d5e000000b003bfb62a377fsm6933781qtv.3.2023.02.28.10.31.08
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Feb 2023 10:31:08 -0800 (PST)
Message-ID: <fe21e117-3356-e2b8-ebb2-782ffbe05ea9@gmail.com>
Date: Tue, 28 Feb 2023 13:31:07 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAA=S3PsdczijkNz1+LU9n4tJf8SOnP9jA3pgEDoPGcxm2i9d7Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAA=S3PsdczijkNz1+LU9n4tJf8SOnP9jA3pgEDoPGcxm2i9d7Q@mail.gmail.com>
Message-ID-Hash: M6XCMCIXHBCSERYEHJ4C3ZC3HXZVJJ6O
X-Message-ID-Hash: M6XCMCIXHBCSERYEHJ4C3ZC3HXZVJJ6O
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How I can chagne RFNOC blocks to another daughter board or RF B?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M6XCMCIXHBCSERYEHJ4C3ZC3HXZVJJ6O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjgvMDIvMjAyMyAxMzoyMiwgc3Agd3JvdGU6DQo+IEkgc2ltdWxhdGVkIGFuIFJYIFJGTk9D
IGJsb2NrIGFzIGEgcmVjZWl2ZXIsIGl0IHdvcmtzIGNvcnJlY3RseSBidXQgSSANCj4gd2FudCB0
byBSWCBSRk5PQyBibG9ja3MgdG8gYmXCoGV4ZWN1dGVkIG9uIFJGIEIgb3IgYW5vdGhlciBkYXVn
aHRlciBib2FyZC4NCj4gaG93IGNhbiBjaGFuZ2UgaXQgdG8gYW5vdGhlciBkYXVnaHRlciBib2Fy
ZC4uLg0KPiBUaGFua3MgdmVyeSBtdWNoLg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpJZiB5b3UgbG9vayBhdCB0aGUgJ3Jm
bm9jX3J4X3RvX2ZpbGUuY3BwJyBleGFtcGxlIGluIHRoZSBzb3VyY2UtY29kZSANCnJlcG9zaXRv
cnksIHlvdSBjYW4gc2VlIHRoYXQgdGhlcmUgYXJlDQogwqAgInJhZGlvLWlkIiBhbmQgInJhZGlv
LWNoYW4iIGNvbW1hbmQtbGluZSBwYXJhbWV0ZXJzLg0KDQpMSW5lcyAzMDcgdG8gMzIwIHNob3cg
dGhlIGhpZ2gtbGV2ZWwgUkZOb0MgQVBJIGZvciBhY2Nlc3NpbmcgdGhlIA0KZGlmZmVyZW50IGNo
YW5uZWxzIHdpdGhpbiB0aGUgZGV2aWNlLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNl
cnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
