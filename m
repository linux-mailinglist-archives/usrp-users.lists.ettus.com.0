Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 712794E7708
	for <lists+usrp-users@lfdr.de>; Fri, 25 Mar 2022 16:25:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 78B3C384973
	for <lists+usrp-users@lfdr.de>; Fri, 25 Mar 2022 11:25:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648221916; bh=JzPP4ZeQQ1StBUiKzJ/JPYGtUc9dR7pXG0vD/x/ehxM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=unTr4jV46dYQGB+GL9xyQn+S9Uo7izbNsoEiH03JRN1uYPX4f/cHrSGMbRPTnfFe5
	 b1qq913TvuBXCmK6Ed/++Ukh6aDaG6AgSLVBAqdAuSSRec1udWJLJqVL28YqaoTDpD
	 baRrybosiXKYlbn1T/F+oxO8Kt1FZetffB6m329khP44R3gK/PqxgvZV3P6LtGaCEZ
	 RH4AmpIKZY04UfiBrw9UKq43CUoWk0ShT0dqzTYarGfvH2el9QlFkouAtz2laWIN+8
	 aoPDvPX4lcbgpIhW7K0H7wkvZZvzsA+FNyDB8TC6LCFBNgfPhmGqGCwyqBXHZk0jY6
	 8kLFFNHqiHWqQ==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 6E03A384674
	for <usrp-users@lists.ettus.com>; Fri, 25 Mar 2022 11:24:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZVsqkpD0";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id d15so6763239qty.8
        for <usrp-users@lists.ettus.com>; Fri, 25 Mar 2022 08:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=ZWVUeIDk/BoY7twu0sAzLREg8qsWcBAWzB8E/ykyiVU=;
        b=ZVsqkpD0CRRd8w9WnCggLsy0VKoRBo4i8m21UXvLoGE8E1X36ALQ7jO+r0K5Mv1hva
         JhnOPSBlHV6PeysPZP2zYv6A4+Px9bfMNUd8/ESCyJxD2iDUF5bY9Jkv4O1oZlYmyxR5
         dqIDFB5mMAZjh5MNhgQzsqla4JIfryIzr3eSeVEA93qifjN/ZyWt1YMqwHeIHRPLqcDs
         cmds5KdyWO2XPRcd2Lhy+i7ap1cXuuSXGwnN+ltXeoXtuQdZ242f5ip519TjE6y/aphp
         dhWgJpysCKX/k/YRgw97c6oSFgYxdmi4wTwO1L1RWwEzEsjC78ic+jdsfqDyLAOX0L8t
         ygjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZWVUeIDk/BoY7twu0sAzLREg8qsWcBAWzB8E/ykyiVU=;
        b=Q4Rj0SmrzW/AL23baYLMwlwc9ZB//3hiqA8fBANym2NKxaL3iYAdalqVEJJtM6rSK6
         IxVXGqMtXGeR/1Q18dd3h5QMugNcRbMdoe4ukuiLXRBzCjaKmWMdk3mqnMfkXS9u3tWz
         M4hqapD9asrUFgFYfDZk4k+31pexM2oAkgV5PHuwt1MQAiEdLMGaVCCfa4oG1tT5QZl4
         sDNhRc4nLXl2NxOmg5Ge0VfqlXtB5bMfb8ImIqk8AHm7csAZk7RELskEKjGKFjFb1ohU
         bx+r6QRAy/hlAhOAH5Hqaj/RD7tzbuP7TONzQh7U5FNUF8LGFkNNI+VYPuGYhWhxWonA
         1AjA==
X-Gm-Message-State: AOAM533vDafMNkdBMZQ/A4whWqg63YnuEfwqdXrj8fiM54yrN9Y5YVSK
	Xz5J8g3HRqaMhVn2oGvYq8xwTLNeEc8=
X-Google-Smtp-Source: ABdhPJwfQiTR1EINHvwJyMaotNbmkJbGT/PM82nbIF2eJU1UpFu86X4oLVg0LNMu9moUeAEr0BKhqg==
X-Received: by 2002:a05:622a:cd:b0:2e1:c59f:48 with SMTP id p13-20020a05622a00cd00b002e1c59f0048mr9893898qtw.603.1648221861648;
        Fri, 25 Mar 2022 08:24:21 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id t7-20020a05622a180700b002e0ccf0aa49sm5492992qtc.62.2022.03.25.08.24.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Mar 2022 08:24:20 -0700 (PDT)
Message-ID: <4d54f52a-7af1-1637-6ed9-f5e45a13c85a@gmail.com>
Date: Fri, 25 Mar 2022 11:24:19 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com,
 "Discuss-gnuradio@gnu.org" <Discuss-gnuradio@gnu.org>
References: <52foVpoqSUJwCXXEpbIGZWva0rxHwGjE5HitMax5g@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <52foVpoqSUJwCXXEpbIGZWva0rxHwGjE5HitMax5g@lists.ettus.com>
Message-ID-Hash: J72W4MAWAZPWR7EGFZQUZ5L52QJAA4SO
X-Message-ID-Hash: J72W4MAWAZPWR7EGFZQUZ5L52QJAA4SO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 2 rx antennas + USRP B210 + GNU radio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J72W4MAWAZPWR7EGFZQUZ5L52QJAA4SO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMy0yNSAxMToyMCwgSnVtYW5hIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KPg0KPiBJ
IHdhbnQgdG8gY2FwdHVyZSBMb3JhIHRyYWNlIHVzaW5nIDIgYW50ZW5uYXMgdGhhdCBsb2NhdGVk
IGluIHBvcnQgDQo+IEE6UlgyIGFuZCBCOlJYMiB0aGVuIHNhdmUgdGhlIGRhdGUgaW4gYSBmaWxl
Lg0KPg0KPiBJIGNyZWF0ZWQgYSBzaW1wbGUgR251IFJhZGlvIGZsb3ctZ3JhcGguIEluIFVTUlAg
c291cmNlLCBpIGFkZCBzZXJpYWwgDQo+ICsgMiBjaGFubmVsICsgZnJlcSArIGdhaW4uDQo+DQo+
IFRoZSBwcm9ibGVtIHRoYXQgaSBjYW4gbm90IHNhdmUgdGhlIGRhdGEgaW4gYSBmaWxlLg0KPg0K
PiBJIGdvdCBlcnJvciDigJxQb3J0IGlzIG5vdCBjb25uZWN0ZWTigJ0NCj4NCj4gQ2FuIGFueSBv
bmUgaGVscCBtZT8NCj4NCj4gSQ0KSSd2ZSBjcm9zcy1wb3N0ZWQgdG8gZGlzY3Vzcy1nbnVyYWRp
bywgc2luY2UgdGhpcyBpc24ndCByZWFsbHkgdGhlIA0KInRlYWNoIG15c2VsZiBnbnVyYWRpbyIg
bWFpbGluZyBsaXN0Lg0KDQpZb3UndmUgZGlzYWJsZWQgeW91ciBVU1JQIHNvdXJjZSwgdGhlICJy
ZWFsIiBvdXRwdXQgb2YgeW91ciANCmNvbXBsZXgtdG8tcmVhbCBpcyBnb2luZyB0byBhIGZpbGUg
c2luayB0aGF0IGlzIGNvbmZpZ3VyZWQgZm9yIA0KY29tcGxleC1mbG9hdC7CoCBZb3VyIHNvdXJj
ZSByZWZlcnMgdG8gYSB2YXJpYWJsZSwNCiDCoCAiZ2FpbiIgdGhhdCBkb2Vzbid0IGV4aXN0IHdp
dGhpbiB5b3VyIGdyYXBoLg0KDQpZb3Ugc2hvdWxkIHByb2JhYmx5IHNwZW5kIGEgYml0IG1vcmUg
dGltZSB3aXRoIEdudSBSYWRpbyB0dXRvcmlhbHMuDQoNCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
