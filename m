Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EE134089D
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 16:17:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E6DE38305E
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 11:17:58 -0400 (EDT)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	by mm2.emwd.com (Postfix) with ESMTPS id A9FA83817DC
	for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 11:16:56 -0400 (EDT)
Received: by mail-wr1-f47.google.com with SMTP id o16so5951049wrn.0
        for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 08:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=decyben-com.20150623.gappssmtp.com; s=20150623;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=7Ufa0F+Pa6Ok+gGKAJzcNWag/8RqbA0fctOnzopd3LM=;
        b=BJB40kBPep9fOsz7rihQ/kf8U29EezutRxHUHQO7IBYGR7VTonI/T5qQnuZ46W2Ad/
         8ZSqNkdtktCBd5dNQkQZn/8QmVd7xI3LzvWViPo3swYP9GRIFarahmSKctuLlw1m/iha
         h+4jUB4xGGlbcH8XBgCeruhYxhnkV9lFHd6IUW19gRlseZdIkWHoE9OEoNrkh5RRvg0D
         EWnIE00fJJwQ3WJVUxux9llNylNOn0Geqa/Sx78+PN54XXkgbgKrVtCxrSwS2NrLhMVJ
         J+up56pMBS6whjimRQojBBigv0tvX1Yo3O8tDl9QYIJA0bye+rZs9uhCtIQidro8SySS
         2JnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding:content-language;
        bh=7Ufa0F+Pa6Ok+gGKAJzcNWag/8RqbA0fctOnzopd3LM=;
        b=G9xFvGex8H31neEBMgRuMg/EhnFT9U4mDe4EbLd4+Vwmebxs/NxScKf5WbIriTM8NJ
         gGdCYsV9A+98kpQoRgwl7RkesQaRdWUOwZbNse/8HRBOZQMPxIwA5jXb7aecCLHTH8U1
         6qZj0pY9J/SUpuLsO1t9NwpLXfbjYya2CoSnCWyvyj3Kc0znD7NW8kOQwMtE6aBAqULM
         BUXmaE3Sd/wu5vE2XPmVgbQP3z2ihpU9NchImuYQupkrxpUepNzwc8mAIyJP9/VtzZET
         vIW98YFI4EbNadgLphOndr7RmGS6VeznlEV13X9uATntaxxbUEplq+FYa9ZerxN/Ccn6
         u2kQ==
X-Gm-Message-State: AOAM53182oqnIv2JIocmLpQS3HYVKM3joH2628aFZuuKXNVwyTnQb37Y
	1yXTben1SU4XZAkCjnjsVnx44/GtMScAVA==
X-Google-Smtp-Source: ABdhPJxNa39FUZNvORGoMD5sNXQtMx6KzNixlflRdLMPNLhurGJilLQbra/RQRIlCNxJpXHgZmeMrQ==
X-Received: by 2002:a5d:404d:: with SMTP id w13mr10361582wrp.230.1616080615729;
        Thu, 18 Mar 2021 08:16:55 -0700 (PDT)
Received: from [192.168.213.237] (lfbn-idf2-1-172-133.w83-202.abo.wanadoo.fr. [83.202.252.133])
        by smtp.gmail.com with ESMTPSA id f2sm3377884wrq.34.2021.03.18.08.16.54
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Mar 2021 08:16:54 -0700 (PDT)
To: usrp-users@lists.ettus.com
From: Imad-Eddine SRAIRI <i.srairi@decyben.com>
Message-ID: <a27b1bae-35d0-d73c-460e-16b39e759d73@decyben.com>
Date: Thu, 18 Mar 2021 16:16:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
Content-Language: en-US
Message-ID-Hash: MMLLWUGPGIX2XZDAJB7HRS5I6SO6UES3
X-Message-ID-Hash: MMLLWUGPGIX2XZDAJB7HRS5I6SO6UES3
X-MailFrom: i.srairi@decyben.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] broken link for usrp-users list archive
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MMLLWUGPGIX2XZDAJB7HRS5I6SO6UES3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCkkgd2FzIHRyeWluZyB0byBhY2Nlc3MgdGhlIHVzcnAtdXNlcnMgbWFpbGluZyBsaXN0
IGFyY2hpdmUgYW5kIGl0IHNlZW1zIA0KdGhhdCBib3RoIGxpbmtzIGZvdW5kIG9uIHRoaXMgcGFn
ZQ0KIMKgIGh0dHBzOi8va2IuZXR0dXMuY29tL01haWxpbmdfTGlzdHMNCndoaWNoIGFyZToNCmh0
dHBzOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5l
dHR1cy5jb20NCmFuZA0KIMKgIGh0dHBzOi8vbGlzdHMuZXR0dXMuY29tL3BpcGVybWFpbC91c3Jw
LXVzZXJzX2xpc3RzLmV0dHVzLmNvbS8NCnJlc3VsdCBpbiBhIDQwNCBlcnJvci4NCg0KRGlkIGFu
eXRoaW5nIGNoYW5nZSBhbmQgdGhpcyBwYWdlIG5lZWRzIHVwZGF0aW5nLCBvciBhbSBJIHVzaW5n
IHRoZSANCndyb25nIFVSTHM/DQoNCkkgd291bGQgYXBwcmVjaWF0ZSBhbnkgaGVscC4gVGhhbmtz
Lg0KDQpCZXN0IFJlZ2FyZHMNCg0KSW1hZA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJz
LWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
