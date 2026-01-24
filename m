Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 7bE4BxvhdGmv+gAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Sat, 24 Jan 2026 16:11:23 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8E97E02D
	for <lists+usrp-users@lfdr.de>; Sat, 24 Jan 2026 16:11:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A82B338BAF5
	for <lists+usrp-users@lfdr.de>; Sat, 24 Jan 2026 10:11:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769267480; bh=guU+QMaBAEnfQaIczX9D5s+7ks+1ZuXj70NfZW8X5e0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=04FEGUyJfUBeUVII9d3egTpOC/GUA7QdRo7+cGbFOQWfZfAE3tCzP6MS2UuxMN3Bl
	 Gztvn/ptbB2uYgBq3Bb2VnbM6fQ5jlJs2MUGYAFpA56ArZXQHsWBRWCqMRi34GP2+H
	 vy1eMhpnwUZAloJ7QDlEv4qKwDJPGjFhRapaxTauCkZOK0DuUgPpAfvN/KvWQr+/5p
	 81/EN6pUw+QRUKmYu7VP6QgDDEb684PBsc5W4bIUOYowrwvHqyeXTu4SsVLQ4oA2gy
	 fOvhflWYs8PCw00moTDKB965t09I8rFVUZ+pPxUyAQcarfP/bMo+OjlZEC7wr5CKIM
	 fYK+bjmJh8img==
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	by mm2.emwd.com (Postfix) with ESMTPS id F30F238798F
	for <usrp-users@lists.ettus.com>; Sat, 24 Jan 2026 10:10:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mjuiRaZz";
	dkim-atps=neutral
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-9480a1f77d5so2085993241.0
        for <usrp-users@lists.ettus.com>; Sat, 24 Jan 2026 07:10:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769267413; x=1769872213; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=n4ipDst/K4ig8Ma+Jdvdh84MAhBqcOOBkV2vH96smBw=;
        b=mjuiRaZzbM0SbgUGKkYyI4pT4yPJ08xcKyynph1K/OP37je6MmpgsETYRZEyVYg2px
         j8zq+XxVqAsGJi8mPBijVaJSw26e2UZZE3rKv/GOWwj+e50KemDmxgvdXFftm7T8Vprz
         0o1t9eZ77g5rrSaMoAzAhAHzVc/ILQTf4TsQNFlS14eUhiK2pzhrtAgUL011I/jIZc8w
         qzqJ7v5Gl0gXwVuDpyjvytwFxtdc2ymvoyOtzfCZvCkNxAGzPW5Nc6mJUwtjhklchQQr
         el+t1AsxRrtsozNyaIrdXg4RYl76HnQLq/05mmBNMlkdQk2rvB+jNibXUmnAKH4uPFq3
         vqiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769267413; x=1769872213;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n4ipDst/K4ig8Ma+Jdvdh84MAhBqcOOBkV2vH96smBw=;
        b=haHgO6uDO5KEEciV1wqsYbYx7JWeOYA6Q0MjAaoQ21BmiI7D4a0b2Vz4cS5Pre+/va
         k9dbbUrs7zWlvnBwCidclg6ZQeyCODzARZaqJq7e7CY7vEbPnNzlGIR8DP/UyZqFQYRP
         9W1qQ2Ate8hHQArCxA46PYtAGlttSUNIwIKN5IuAkeTLd0/7MGnueq5afyj+tvlySX/j
         ndWlwmhJNC4wbZ0QqwXss7Jm9MCjUX2A93HSNBrKAqpmIgn/iia+q8lvy8aVATgvV4UL
         ED488qiKkY6H6wj7Kw83ToZYUkWpJNkQ+YSrdrkxGvuJVanqsEZ/P1h1c1xtP+P1GxSA
         kYKw==
X-Gm-Message-State: AOJu0YwIWK619bO1dbTY96MdCLvwIVKEyopyGftjF0lfDh/trkMEu+Q8
	AO4rIadCokuodbHJX8h9YwObr6MH/S33QDP9Wv+WmPdxhVAtVS9iLpyBLy3HQg==
X-Gm-Gg: AZuq6aLrQmsWPecryGAq08DKernzdqN93DHFNcQAywITbP0b6tsMllHJL/lYDr365i6
	PQj700ciWSnIC36IJi+093SbaKJ1o4KGPj0q4bgWQ3+WGigVUw6du9kCtoSGK43LOHRwapiJEH5
	tiRbHsGrc8+PCtdy/VN3/hnGTnITomakSPx8R0vnnJf1tPcktKuSy/aLu64bLcRxHGqOs1OTvHK
	S1PFTrMM4OAsdP1/gN75S9MkNePvN31JPEcIWuu5wDX4tugs6mQqCW29yTONU5bMS8GxIl6UJ3x
	BpgeU764NPffVuwR9dEkxYY9BwzppR3UEaWBwww5VJFzKwa4TUY2csgGfdQ4eNL4ovZR/jm/a7B
	AKczTfZZZ+ZvZnlzdgH2s5zKr/A9RUFX690nX45gOh8gII3oMqHCKzMGOuVFMCydQFFcnxaIiBI
	4nWzd4VlkMPCr+8PgSIwuw3rlPAWHIeg==
X-Received: by 2002:a05:6102:2914:b0:5f1:c453:b5ab with SMTP id ada2fe7eead31-5f54bb13431mr1905592137.13.1769267411299;
        Sat, 24 Jan 2026 07:10:11 -0800 (PST)
Received: from [192.168.2.208] ([76.68.79.204])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-8949bdd0a67sm25270156d6.26.2026.01.24.07.10.10
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Jan 2026 07:10:10 -0800 (PST)
Message-ID: <5a5f21cd-62af-42db-b2da-da58577ebce2@gmail.com>
Date: Sat, 24 Jan 2026 10:09:58 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <z8sAV3W3o2GBEAngc2xwL2TDBhJ5OSeVTUFOJL9Ws@lists.ettus.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <z8sAV3W3o2GBEAngc2xwL2TDBhJ5OSeVTUFOJL9Ws@lists.ettus.com>
Message-ID-Hash: Z6DP5PLUVCUNCD2QHZT7DIO53CO7UQVK
X-Message-ID-Hash: Z6DP5PLUVCUNCD2QHZT7DIO53CO7UQVK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPSDO Lock slow on X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z6DP5PLUVCUNCD2QHZT7DIO53CO7UQVK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	R_DKIM_REJECT(0.00)[gmail.com:s=20230601];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[patchvonbraun@gmail.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim]
X-Rspamd-Queue-Id: 3F8E97E02D
X-Rspamd-Action: no action

T24gMjAyNi0wMS0yNCAwNDoyNiwgY2FybWl4ZGV2QGdtYWlsLmNvbSB3cm90ZToNCj4NCj4gSGks
DQo+DQo+IEkgaGF2ZSBhIHByb2JsZW0gd2l0aCBYMzEwIGFuZCBHUFNETyBsb2NrLiBJIG5vdGlj
ZWQgdGhhdCBvbiBwb3dlciBvbiANCj4gdGhlIHRpbWUgdG8gZ2V0IEdQU0RPIGxvY2tpbmcgb24g
R1BTIHNpZ25hbCBpcyBhYm91dCAxMSBtaW51dGVzLCBldmVuIA0KPiB3aXRoIGdvb2QgYW50ZW5u
YSBhbmQgZ29vZCBzaWduYWwuIE90aGVyIHJlY2VpdmVycyB3aXRoIHRoZSBzYW1lIA0KPiBhbnRl
bm5hIGluIHRoZSBzYW1lIHBvc2l0aW9uIChlLmcuIFUtYmxveCBNOCkgZ2V0IGEgZml4IGFuZCBQ
UFMgb3V0cHV0IA0KPiBhZnRlciBhIGxvdCBsZXNzIHRpbWUgKDEtMiBtaW51dGVzKS4NCj4NCj4g
QnkgdGhlIHdheSBpZiBJIHNpbXBseSBkaXNjb25uZWN0IEdQUyBhbnRlbm5hIGFuZCByZWNvbm5l
Y3QgaXQgYWZ0ZXIgYSANCj4gd2hpbGUgdGhlIHJhZGlvIGdldHMgdGhlIGxvY2sgaW4gbGVzcyB0
aGFuIGEgbWludXRlLg0KPg0KPiBJdCBzZWVtcyB0byBtZSBsaWtlIHRoZSBHUFNETyBkb2VzIGEg
Y29sZCBzdGFydCB3aGVuZXZlciBJIHBvd2VyIGN5Y2xlIA0KPiB0aGUgU0RSLCBhbnl3YXkgMTEg
bWludXRlcyBpcyB3YXkgdG8gc2xvdyBldmVuIGZvciBhIGNvbGQgc3RhcnQuDQo+DQo+IFdoeSBk
byB0aGUgR1BTRE8gb24gWDMxMCBpcyBzbyBzbG93PyBpbiBteSBhcHBsaWNhdGlvbiBpIG5lZWQg
dG8gaGF2ZSANCj4gdGhlIHJhZGlvIGZ1bGwgb3BlcmF0aXZlIGFuZCB0aW1lIGFsaWduZWQgaW4g
YXQgbW9zdCA1IG1pbnV0ZXMgc2luY2UgDQo+IHBvd2VyIG9uLCBpcyBpdCBwb3NzaWJsZSB0byBh
Y2hpZXZlIHRoYXQgd2l0aCBYMzEwIGFuZCBpdHMgR1BTRE8/DQo+DQo+DQo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NClRoZSBPQ1hP
IG9uIHRoZSBib2FyZCBuZWVkcyBzZXZlcmFsIG1pbnV0ZXMgdG8gbGl0ZXJhbGx5IHdhcm0gdXAg
dG8gDQpyZWFjaCBzdGFiaWxpemF0aW9uIHRlbXBlcmF0dXJlLsKgIFRoYXQncyB0aGUgcmVhc29u
IHRoYXQgd2hlbiB5b3Ugc2ltcGx5IA0KZGlzY29ubmVjdCB0aGUgYW50ZW5uYSwgaXQNCiDCoCBh
Y2hpZXZlcyBsb2NrIGFnYWluIHF1aXRlIHF1aWNrbHksIGJ1dCB3aGVuIHlvdSBwb3dlci1jeWNs
ZSwgdGhlIHVuaXQgDQptdXN0IG5lY2Vzc2FyaWx5IGRlYWwgd2l0aCB0aGUgT0NYTyB3YXJtLXVw
LCBpbiBhZGRpdGlvbiB0byB0aGUgc3RhbmRhcmQgDQpHUFMgbG9jayBjeWNsZS4NCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWls
aW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
