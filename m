Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8EE4A60E0
	for <lists+usrp-users@lfdr.de>; Tue,  1 Feb 2022 17:00:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A0D6A385114
	for <lists+usrp-users@lfdr.de>; Tue,  1 Feb 2022 11:00:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Zn7ggg6/";
	dkim-atps=neutral
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id E6C0E3850DA
	for <usrp-users@lists.ettus.com>; Tue,  1 Feb 2022 10:59:15 -0500 (EST)
Received: by mail-qv1-f49.google.com with SMTP id d8so16430474qvv.2
        for <usrp-users@lists.ettus.com>; Tue, 01 Feb 2022 07:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=yO6JZvb7NFzPBGPeWTfIhe4VvxFiqgzelfGpDORhAws=;
        b=Zn7ggg6/sSA6xmK3cbtzA4EmW08qbacElZDm/kJG2UvtxEO19vHiSFQTCXkpUAS59u
         d32/eIT8nFwJOOxFNppn/M1ue/ch9o8WLcIDAZ4yswPzQ7579nFyFLz8dJVZ0tLbtUjj
         vwcrRroS6J5RLd+f43p5gmtZIqTtf+rCZQCYC1svJyTFGi4gb3EVzzXaeyYTqvng4+2t
         8Lve/qrsRmfarddUH+N2VcNvpXqohG5mINoJ8kixz7umHeMl5XzRwh6TtBy4IyLJHfik
         k3+5+vsAH6C9zR03tnRjYG46GypkIMjmVIMZcNxIWz4Ac9uWyaEDY9fV8jpsTs2a2fg3
         dN5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=yO6JZvb7NFzPBGPeWTfIhe4VvxFiqgzelfGpDORhAws=;
        b=Nn4MSwubHqq6HkKvMsRQDDmcIx8Eor0Uf+VGC4vi0N8nKPi3bItsE4s5v8W+E3f+Jf
         AT2RIbiskr3GljF/v2SktjnH7l8z4Gg4Zm+254ki5gbGp2tuf1Sv/+YZFf5SWfVQSAL4
         ymLkkiVlJxchRovqWfqQs3hG8aosoMx1Zi+7AXHXduhP4EY+D2m322OOOvYrzDyr+DfP
         PELS7fNPMpBbvEO7HQcv6touaCHluVIU15sJYbfKrR634lTxGn3uuqGfQU7PuaGaHf2T
         028oP8F1hQpcjxHzUT7Sl74BuFG9RN5dlB0z2kPETe1E90K57UWXfCONTqDk2P62Tsg6
         OygQ==
X-Gm-Message-State: AOAM532H16jLaheqfVKjktyyj9gNC5XDUg2Ac2heUi6KRxjgDH63xxmZ
	5sbi30mQKdij0i3FoMDReDLn3BLIBY8oUw==
X-Google-Smtp-Source: ABdhPJz82ssbVl/aatFBTSSGHA5Z6RtwTo5W55Cfb+FKglRJdIPlRYbo6a2iH8WozPakcWBKlqrqfg==
X-Received: by 2002:a05:6214:301e:: with SMTP id ke30mr23454660qvb.49.1643731154937;
        Tue, 01 Feb 2022 07:59:14 -0800 (PST)
Received: from [192.168.2.216] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id o19sm2919784qta.19.2022.02.01.07.59.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Feb 2022 07:59:14 -0800 (PST)
Message-ID: <6629dee1-b941-2c38-30ef-5b128d6ecae1@gmail.com>
Date: Tue, 1 Feb 2022 10:59:13 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <vP0TKDmzz00Ey46ZVHwfMtZRfAMGYOLYhBV7uOH54@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <vP0TKDmzz00Ey46ZVHwfMtZRfAMGYOLYhBV7uOH54@lists.ettus.com>
Message-ID-Hash: JOBHK4Y7W6HC57Z2MECKMWEU6EKBVA3Z
X-Message-ID-Hash: JOBHK4Y7W6HC57Z2MECKMWEU6EKBVA3Z
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 two channel transmit
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JOBHK4Y7W6HC57Z2MECKMWEU6EKBVA3Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMi0wMSAwMzozMywgc2Vja2lub25jdTgwNzBAZ21haWwuY29tIHdyb3RlOg0KPg0K
PiBVbmZvcnR1bmF0ZWx5LCB0aGF0IGRvZXNu4oCZdCB3b3JrIG5laXRoZXIuIFNhbWUgZXJyb3Ig
aXMgb2NjdXJlZCBhZ2Fpbi4gDQo+IEkgY2FuIHVuZGVyc3RhbmQgd2h5IGl0IGRyb3BwZWQgcGFj
a2V0cyAoY2VjYXVzZSBvZiBQQyBvciBOSUMpIGJ1dCBJIA0KPiBoYXZlIG5vIGNsdWUgYWJvdXQg
d2h5IGl0IHN0b3BzIHRyYW5zbWl0dGluZy4NCj4NCj4NCkNvdWxkIHlvdSBjaGVjayB0aGUgZXJy
b3IgY291bnRlcnMgb24geW91ciBuZXR3b3JrIGNhcmQgYmVmb3JlIGFuZCBhZnRlciANCnlvdSBz
dGFydCBhICJydW4iIHdoZXJlIHRoaXMgaGFwcGVucz8NCg0KSG93IHNlbnNpdGl2ZSBpcyBpdCB0
byBzYW1wbGUgcmF0ZSBmb3IgdHdvIGNoYW5uZWxzP8KgIFRoYXQgaXMsIGlmIHlvdSANCmhhdmUg
dHdvIGNoYW5uZWxzIGF0IDVNc3BzIGRvZXMgdGhpcyBoYXBwZW4gYXQgYWxsPw0KDQpBcmUgeW91
IHJ1bm5pbmcgaW5zaWRlIGEgVk0sIG9yIG9uIG5hdGl2ZSBoYXJkd2FyZT/CoMKgIFdoYXQgT1M/
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
