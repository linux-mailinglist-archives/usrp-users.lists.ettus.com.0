Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D942F745E51
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 16:16:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DAEA6380D9E
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 10:16:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688393782; bh=GJUutfm+egHW39jhUooHDhSHSr00W4JrPckTeajusQY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=vAuyPATOvohiDPF8IRlaGA/gQjHnC0QeU8/zwiAUmFFO62dAvPzgODvmDr5DBNTA9
	 qMJLc6Dh2fw9at+GJiGKFTPSFZBnZpVFVxFwtIgkeHlKAE+YPJCoMCd3fxe1Gwkrrs
	 sSDz0x4kYhE0K0FJ0k9L4S5/hQgVzTtznXIdZZDimkCFi+GjuX+a8RjK77TrEDtn1L
	 Gyzmd8CFypJ0lmIYpI4kBzV+kB4zPuhVcNW/XOgnVy6qE+4UjkZdXkJ4I2xH6Gq9D/
	 oJP6qxpqkpeLDuYvZYbKawxsjWKF0M1ylTKjr80vIu++WU7tqaxCB284Lh/C/enlhX
	 KOUYWxQkWuj2w==
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id A7995380E39
	for <usrp-users@lists.ettus.com>; Mon,  3 Jul 2023 10:15:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EWbAbxfz";
	dkim-atps=neutral
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6348a8045a2so31690876d6.1
        for <usrp-users@lists.ettus.com>; Mon, 03 Jul 2023 07:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688393726; x=1690985726;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ti2uassi9k7zKKAwOd2H02scz17GptQrBI5DWsmQ+6s=;
        b=EWbAbxfzGwtt8S/4QAGXS27LWJ9KWQOFdkE/ncBZkwja9Qg26VU3F9zG7pSFpJM5lR
         18Sqn7uwA3H1J6bXDQiWyJriHIz4RdjujR5Px6SqVovdh4MU+ASFr90lWVvRdLRCWqEq
         4QHWGKtCe4nSE3YIDpilrHBsZJ5yazit5sFdTNuAi0gDrsx8R6S9GVW8fMaMQjS2iLZV
         oMid6cQBXqSnWb9FYfuGHgCmN3jN6RMFYkt+2pnqnE0KNPb/h8mUrV4xEcnQLqw2U32A
         xZq+ecyUXx6rn+FtKUpjOweAY4SpRwSDds6Ta+DQPjd0LDi1k75DlpNExyMSYJosjnLk
         zWpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688393726; x=1690985726;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ti2uassi9k7zKKAwOd2H02scz17GptQrBI5DWsmQ+6s=;
        b=EsFHmdA1TzN0BTUg8RSXqjdXRkP+oInsefD2uHsuS0s3bQvelnw0NedX4AGy4E5Da+
         wMATZoaw2QwNo6uMA9I1Ej6r4xt6WZJJXfe1RgnB3ULPJoGf60NkH/6W5XUv6flUNTlv
         clU0WShSo/eTKiJQ0HC8IKASkM2MTFCPvtOh4Z8N2vvrUnZMQldMr2nq/gVpaJgZ0Y+P
         mP2myQlLYs+21V76K4HNZvv5CW3P8jDQ7sCE5o9ODac4iAjf1BaKFk1wU9PDofJOIo43
         a8Yhhg31Wt2R+wIRCt0Pi1tVJovlZBdXGLVnCP1saiHQ0gzRNiCECNkHzo3hH3X3g5J8
         kQ7w==
X-Gm-Message-State: ABy/qLZgnfUF2h5+fPAGsguA+ocndFEFJ3tO0y6ezrL0F0PTMtywWcaw
	T0YhKQbE1Zohq4+SFPjs1VrpNDGo8gk=
X-Google-Smtp-Source: APBJJlG+Q/4OxaoxD3dpGUkKGvXexElJO3AZwAE5YX4TZqC5olnjLRznVOsY9n7RpoYLhKTBjeYMNg==
X-Received: by 2002:a05:6214:27c4:b0:632:649:587b with SMTP id ge4-20020a05621427c400b006320649587bmr10940896qvb.45.1688393725864;
        Mon, 03 Jul 2023 07:15:25 -0700 (PDT)
Received: from [192.168.2.198] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id lw18-20020a05621457d200b006262de12a8csm3559576qvb.65.2023.07.03.07.15.25
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 07:15:25 -0700 (PDT)
Message-ID: <6847d6eb-66f3-565e-75a6-5f7c8b46f443@gmail.com>
Date: Mon, 3 Jul 2023 10:15:25 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <NSHsZJ7mvUlEyxLVvwwjrYbX4HuOWdHVnPVVFHI@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <NSHsZJ7mvUlEyxLVvwwjrYbX4HuOWdHVnPVVFHI@lists.ettus.com>
Message-ID-Hash: J7JAPIVY5SEGX7KU2MO7QSE5CVT27K4P
X-Message-ID-Hash: J7JAPIVY5SEGX7KU2MO7QSE5CVT27K4P
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Understanding time differences in rx_time
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J7JAPIVY5SEGX7KU2MO7QSE5CVT27K4P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDMvMDcvMjAyMyAwOTo1Nywgam51bmV6QGN1ZC51dmlnby5lcyB3cm90ZToNCj4NCj4gaHR0
cHM6Ly9kcml2ZS5nb29nbGUuY29tL2ZpbGUvZC8xVDVZRkZtcDNZbnBBeFlWakVnRFJmMmFsZDBO
cmRoRHYvdmlldz91c3A9c2hhcmluZw0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpZb3VyIHR3byBzb3VyY2VzIHdpbGwg
bm90IGJlIHN5bmNocm9uaXplZCB0byB0aGUgc2FtZSB0aW1lLS1iZWNhdXNlIHRoZSANCnN5bmNo
cm9uaXphdGlvbiBwcm9jZWR1cmUgaW4gZWFjaCBzb3VyY2UgYmxvY2sgd2lsbA0KIMKgIGJlIHNl
cmlhbGl6ZWQuDQoNCkl0IHdvdWxkIGJlIGluc3RydWN0aXZlIGZvciB5b3UgdG8gbG9vayBhdCB0
aGUgY29kZSBnZW5lcmF0ZWQgYnkgR1JDIGluIA0KdGhpcyBjYXNlIHRvIHNlZSBleGFjdGx5IGhv
dyB0aGUgc3luY2hyb25pemF0aW9uDQogwqAgcHJvY2VkdXJlIHdvcmtzLg0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
