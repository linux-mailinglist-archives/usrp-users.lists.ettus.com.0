Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5246D2186
	for <lists+usrp-users@lfdr.de>; Fri, 31 Mar 2023 15:38:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2150F384233
	for <lists+usrp-users@lfdr.de>; Fri, 31 Mar 2023 09:38:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680269892; bh=5Fuao3LEzA5fIoL2frs+/TKgXWFIc9tuxZDkebYsdzU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=g5kRk3bkxcMpinfn6hEwlJIehqtEr6zn+bFz6sXGKry+8UQekGzuRO8BxTsRYqWgw
	 VwSAilpeBHjO8tb780oSlZtYpkyjAqpckrqx5MZZ1Q3yKVRTiom8WsUJxutuTeGFi2
	 TnvaDUmgTba+KMk0Rx3Ttfa6dMTVlK3HOBiIqlov289+NUwmGnEA+GYugeUdDYnFiP
	 0A2jt68RPXGRjNUubR3u1O3TS8PNrItTQ8y/Vj2+o6K0sop7bixWXp3niL57eGVZu1
	 lPe6TY0HqmwC/wV6Vlce4QpMGl6iAEmannPva7e2+MVTkc/kJxFCvM50xB/EAuve/B
	 eL0TG8pSuhLAg==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 3A240384233
	for <usrp-users@lists.ettus.com>; Fri, 31 Mar 2023 09:38:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="D030K/mX";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id bz27so21671042qtb.1
        for <usrp-users@lists.ettus.com>; Fri, 31 Mar 2023 06:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680269886; x=1682861886;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KkdY/F5mGaq811j56Lml3Xog274IpKQ57xiUXiUXrxI=;
        b=D030K/mXgPipXeTH/kT4pjjSJ/mAqMyVWjSRNHntQGdiMNdZq3F/tZ7B2drkLxw1Ht
         LAuYYjsKY70UA1FNGxs2nRYYFzQPdGdox0SRomizztHqzJkqJ9TBX3GpJOJXSQrukOiV
         eePbC4AaSSHpRiFRS6S6QODCG2L0jUvBPUir7mBMhPVRhDdw/GheqVbU4aC7BzOJf2tJ
         OENp9zYpj0osKp8ZMQKG822M2fCD+uSdoOlc728hKy+oxOXwyNGzCA5mp5t640/+EzZF
         yUhBaDPL4uXo4vH+jCCYdrYkX98rXuT6I9uEhYavlEcVkOYrxoAask9OktYlhBioyxGf
         azfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680269886; x=1682861886;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KkdY/F5mGaq811j56Lml3Xog274IpKQ57xiUXiUXrxI=;
        b=koUMAhv82m73xOmr5X4xEoebidH0dx98Mm+upayMCasfESn4bzlx0u2lA8esGgfujj
         LF6XtQepr/i5kYWcX7RoQVu/XAIhiUFmUM4FcwC3gzdCW7dx67MSAvKoFWwEzBZVvoYO
         JrSkDcpBnZuaV461dE2stW2XishqIcZo7I6GCx86KJjEsHAeJQ/WVbmYVwf8p8Qkq32J
         0dgk+/9wM1ySg3An3iKwV/H1f5dt8YqGXFRShZii9Fuqic5CwU3iRy4bruzgsLiCc8Ji
         yh3Ub7s3Fq0SrWrdgUW4tBh9tYExG4nTWkNsW6uKpcvG2nTsdhM2CEor2VvpwxrN0DDA
         KbEA==
X-Gm-Message-State: AAQBX9dMA3vVxLDSyci5y8IaaGlg0bDNbVAyrTCjuivriwLdnZH93cqO
	zW7YGZdsii8P3/67I15OlQqFgtkh9ZE=
X-Google-Smtp-Source: AKy350Yr9nq8mHT0cS1YzFjyy96tOgl7hLWN7FLfvWmVgzvIVqJCVjmkv9cVDqcTL9wCZ3jCrl8bUQ==
X-Received: by 2002:a05:622a:1ba7:b0:3e6:38b6:88f5 with SMTP id bp39-20020a05622a1ba700b003e638b688f5mr6857565qtb.25.1680269886493;
        Fri, 31 Mar 2023 06:38:06 -0700 (PDT)
Received: from [192.168.2.147] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id i2-20020ac871c2000000b003e394714c07sm635579qtp.10.2023.03.31.06.38.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 06:38:06 -0700 (PDT)
Message-ID: <62351c23-9920-0cad-bc30-2a527a67c649@gmail.com>
Date: Fri, 31 Mar 2023 09:38:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAFPzw1n6OBai7G4U8PW7wnH_CjepXxWOpJH+GBfp+CMuDr+Dqg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFPzw1n6OBai7G4U8PW7wnH_CjepXxWOpJH+GBfp+CMuDr+Dqg@mail.gmail.com>
Message-ID-Hash: 5D3KSN6IU6SONJAGYZ362LDX256R5JMQ
X-Message-ID-Hash: 5D3KSN6IU6SONJAGYZ362LDX256R5JMQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Conexion error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5D3KSN6IU6SONJAGYZ362LDX256R5JMQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMzEvMDMvMjAyMyAwNDozOCwgQW5hYmVsIEFsbW9kb3ZhciB3cm90ZToNCj4gSGVsbG8sDQo+
DQo+IEkgYW0gd29ya2luZyB3aXRoIGEgdXNycCBYMzEwIGVxdWlwcGVkIHdpdGggdHdvIFR3aW5S
eCBhbmQgSSBhbSBoYXZpbmcgDQo+IGNvbm5lY3Rpb24gcHJvYmxlbXMuIFdoZW4gSSBjb25uZWN0
IGl0IHRvIHRoZSBQQyB0aGUgTEVEcyBvbiB0aGUgMTBHIA0KPiBFdGggY29ubmVjdG9yIGRvIG5v
dCBsaWdodCB1cC4gV2hlbiBJIG9wZW4gdGhlIGNhc2UgSSBjYW4gc2VlIHRoYXQgdGhlIA0KPiBp
bnRlcm5hbCBEUzE2LCBEUzE3LCBhbmQgRFMxIExFRHMgZG9uJ3QgbGlnaHQgdXAgZWl0aGVyLCBj
b21wYXJlZCB0byANCj4gYW5vdGhlciBYMzEwIHRoYXQgZG9lcyBjb25uZWN0LiBUaGVyZSBhcmUg
dGltZXMgd2hlbiB0aGUgY29ubmVjdGlvbiANCj4gd29ya3MsIGJ1dCB0aGVuIGl0IGZhaWxzIGFn
YWluLg0KPg0KPiBDYW4gYW55b25lIHRlbGwgbWUgd2hhdCBpcyBnb2luZyBvbiBhbmQgaG93IGNh
biBJIGZpeCBpdD8NCj4NCj4gVGhhbmsgeW91IHZlcnkgbXVjaCBpbiBhZHZhbmNlLg0KPiBCZXN0
IHJlZ2FyZHMsDQo+IEFuYWJlbA0KPg0KSSB3b3VsZCB0cnk6DQoNCiDCoMKgIERpZmZlcmVudCBj
YWJsZXMNCiDCoMKgIFN3YXAgaW4gYSBrbm93bi10by13b3JrIFNGUCsgbW9kdWxlIG9uIHRoZSBY
MzEwIGVuZA0KIMKgwqAgQSBrbm93bi10by13b3JrIHBvd2VyIHN1cHBseSBvbiB0aGUgWDMxMMKg
IChwZXJoYXBzIGZyb20gdGhlIHdvcmtpbmcgDQpYMzEwKQ0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
