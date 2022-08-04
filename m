Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B361C58A2B7
	for <lists+usrp-users@lfdr.de>; Thu,  4 Aug 2022 23:14:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1C92A383E57
	for <lists+usrp-users@lfdr.de>; Thu,  4 Aug 2022 17:14:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659647657; bh=B8tNL0xutzvfccTy5Tm+4/jhraYTWFGVWeax3sXtmx0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=A1CnGrlCAb0G+sXsHlpFFWrBbYSFNJam0ZasswCsQfXwMJfhYzDs5o+38ubkcbMek
	 XMEl/nzNp+UG3VDh9IEv8PGb9TnkVDQTkwk76OAuAtTcWyKlhiFdUOcY3gCwrbk4bY
	 mR8BPMPKTQzzhmYHTy7C1IguQEfISOqiwKl7XZQmQAZ02w45GUIJk0lByjAvxLMfE6
	 uZh2S1fQC3r+o1qmpG1717CGZiKHcdE1hH8n9WJC1oPJY2dI6KPQsFuDs16BmHd+4J
	 Q2B4YagKRcTe4W0Rjeq1VqOhZ9OYAwVyVc4MkbGqURjHqmVD18gmBqPeJQQcfpLtKi
	 922bx+rAQ/KUQ==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 147C7383BA8
	for <usrp-users@lists.ettus.com>; Thu,  4 Aug 2022 17:13:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="l+ryrOZj";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id o1so571981qkg.9
        for <usrp-users@lists.ettus.com>; Thu, 04 Aug 2022 14:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=jA8zQ6ekCDPYYnrh2xctWzDEFEeqqdyvYAv+hRlI/2o=;
        b=l+ryrOZjY0mC2O/uN1zu/n94Id/Zoq6aVj0IRFYz8ESYwFdTvoFXSbuVXOm3StRaHG
         IhmIZL4990h6OJBBpegqCUBn2vvmlXtDewI1D29550X7R2oGXV1FlaNbG3ZOwHewbLD9
         xcfh9vnrngXN8sYRfUlp5R14uBVFgJGzppq2Ih5gDBIC5jLog3Dvt2ZgUzX/36WGJ1tc
         9vWYkhj20yAiDaJg/5ffrHH0bHIO49Tl+wzkftFDKZKN5ovU9o545/FJQg4hQb8lHlNl
         mDD5rekgUTQjgIQJorX3bhHO/CMRg8SgywBGVNdU5u3bl1XwltKJIP7Pc4Qm9wIC9lNW
         LjvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=jA8zQ6ekCDPYYnrh2xctWzDEFEeqqdyvYAv+hRlI/2o=;
        b=nwdM6FkbSqqR0sWXg6JINMOWICN43RSvJskZSoml6EUPJfJYCdNrY48qhbp9EAlP3X
         0AJktZDgm8YLplxOTeKS+eTUZSEt9UmY6XcTHZJMLS8xAhrVQf4En653UMaJfeZztX7h
         XAwZ2tRaGuK/3+MLFtBWbWvO+FeHEUGbxSA7LEVg5T8WP/q4hMaaN6z6IaTRIiIiBBqg
         GKzsDOwZP9Wn0xHXHiUKCMKLjpPn0va5xYng9sX4rB046BvsS5SExfcBMv2/6v3KlNng
         MetlXQ5MW2dOtiQq+ZAcZWfK3UY44OCKtCzJ3ohW2YfZ7deuRPPTMghUq1n7fjYz3wNY
         uf6w==
X-Gm-Message-State: ACgBeo1fP9bYm1kOhTLmOefGOPDcMEKsarC1c1YpYtCDSUJCJojQHvDZ
	yV/YHqzX3RvrckSphMPmapplGoHCjb4=
X-Google-Smtp-Source: AA6agR5OD2K8qKf7iYT3BelzQe5ALREaXoh58G8Z8B0lmDjwFF2yiL2bR01GTvA0g0hCBGoHjJVEzA==
X-Received: by 2002:a37:b702:0:b0:6b8:d9ec:3196 with SMTP id h2-20020a37b702000000b006b8d9ec3196mr2846851qkf.660.1659647584973;
        Thu, 04 Aug 2022 14:13:04 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id bn42-20020a05620a2aea00b006b5e296452csm1367730qkb.54.2022.08.04.14.13.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Aug 2022 14:13:04 -0700 (PDT)
Message-ID: <64b8c6b9-34ef-27e9-b119-d18dcd23d398@gmail.com>
Date: Thu, 4 Aug 2022 17:13:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Cgl4ujGqfFEb7EnpD2l6KQVk3itGjw4v0XBhMrZtENk@lists.ettus.com>
 <CAAxXO2FAwtczPxOD6YCbZkCexibTYGmOUfM8csWsHgAvZ_BGDg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2FAwtczPxOD6YCbZkCexibTYGmOUfM8csWsHgAvZ_BGDg@mail.gmail.com>
Message-ID-Hash: QMOZ3YS7QKXHN6WCPCWXXBXSOE42UKA4
X-Message-ID-Hash: QMOZ3YS7QKXHN6WCPCWXXBXSOE42UKA4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Decreasing Power at Higher Frequencies
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QMOZ3YS7QKXHN6WCPCWXXBXSOE42UKA4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wOC0wNCAxMjo1MSwgTmlrb3MgQmFsa2FuYXMgd3JvdGU6DQo+IFdvdyEgVGhhdCdz
IHJhdGhlciBkcmFzdGljOigNCj4gSSB3b3VsZCBleHBlY3QgdGhhdCBGcmlpcyBlcXVhdGlvbiBp
cyBpbmRlcGVuZGVudCBvZiB0cmFuc21pc3Npb24NCj4gbWVkaXVtIChjb3BwZXIsIGFpcikuDQo+
IEJlc2lkZXMgeW91ciBvYnNlcnZhdGlvbnMgbWF0Y2ggdGhlIHRoZW9yeSB2ZXJ5IHdlbGw7LSkN
Cj4NCj4gQlINCj4gTmlrb3MNCj4NClRoZSBGcmlpcyBlcXVhdGlvbnMgZGVzY3JpYmUgb25seSBm
cmVlLXNwYWNlIHByb3BhZ2F0aW9uLiBQcm9wYWdhdGlvbiBpbiANCmEgY2FibGUgb3Igd2F2ZWd1
aWRlIGlzIGEgY29tcGxldGVseQ0KIMKgIGRpZmZlcmVudCByZWdpbWUuDQoNCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
