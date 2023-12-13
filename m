Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C111811F22
	for <lists+usrp-users@lfdr.de>; Wed, 13 Dec 2023 20:44:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2F63E3850AF
	for <lists+usrp-users@lfdr.de>; Wed, 13 Dec 2023 14:44:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702496647; bh=nWpahclYEojgunLphW6g1ZQnBmh94otQ0lBx4gGiJ8w=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=t2tHlFgTIqN+Itllz4gOSqOWh5Dzl8YKpX5b1QaqMFMF8Ty914DMpPPY/PFBPbjgh
	 WaECB9LLNB/3Y7Yr1tPDGMdTDkZt7w1G6D3xSX5zz4H0xBwLRqs9U7+80ApOro9ti4
	 rQakp/zyOzGH7+fATY8/f+rADqzUgylz0x3yf+FLvkr1qg1EjcsgwZ9Tzmnf5HDMBf
	 x796UHcJm9oNeb26uZsUuVL3t9kIKvr2/9nj2YIheBdGDMNrfV+n3vmBM0gjZqbYm7
	 nozfdSZIB35zYKmqKZTqu5QWxX9DG9YevD8Ez88AVpZhrY0SwYoOiTvdDBWFg6m1C+
	 sYQC9wgp8BFkg==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 78943384D25
	for <usrp-users@lists.ettus.com>; Wed, 13 Dec 2023 14:36:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bB6xDd2/";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-677fba00a49so57003496d6.1
        for <usrp-users@lists.ettus.com>; Wed, 13 Dec 2023 11:36:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702496205; x=1703101005; darn=lists.ettus.com;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QTaOQo6H76xuFGxVvLwBmyP9aUnhgTsl7adzyD0jUhw=;
        b=bB6xDd2/9Zkk+/SWkXUk3jwq1ypq37cOm6gW81bvlFIk0e/iXcZEXXCV84Sh1Myyad
         atNSCQTnssiR4xvjA0KR4Z4grHDN7oViw59AkktkgPvzXFkLwWLxKqKLMkQO9js5vBBz
         iMqf4cVPAATr83cwF/Ak7PdfE1kyjf4R+CHP3j7UKSE6NFuLeO0O6q6HfciGU8895n0w
         +IJAzDYdUb3KX0TqP8hUrvw8nrn7U+ejYzllKYQ7VQZg5m5E7C5G1IIcezThNIXZRg7N
         esPKSdxPTeHbwIcgEliso/pb6YgYjBAYddOuwItLS5UfVI030v0W8oFGneb20Zi5Iu1z
         TJLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702496205; x=1703101005;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QTaOQo6H76xuFGxVvLwBmyP9aUnhgTsl7adzyD0jUhw=;
        b=SAm6wQ6t7HnpYKn47DGnd93GPRU5mMigb1Cb6cCYAFD8qkgBRQLtITROm8hfXE6qfA
         vF2Iwne+dLG7L5DoPRRZCZovBcnVQIAu4PsEKhCFt14i9pv2teysJW24ctFjv6Pyd4Ew
         mZR1a5JWJZzk2JSh+thqRxYeGVDPhIfZnVeo8YuhZ/paMgSuBqp+Z8HFLV/DG8v33MAg
         XxcUiYbwvUYOVXmf6pjxr5Q51YD8tCKePGbqSv/p8+iEQkqKiSGRwa+mJtYFMVV1uIwK
         SuaeJE7YMP3ENivNBo7Qu2Ve3E9aj8RQkcInWbF1jxcuk4oUNi2ErbPBgiBgDlqZrxwI
         wVxQ==
X-Gm-Message-State: AOJu0YyA1ZR7mcZGxoNyTZ22/N5oiXF6TSZ/1T9NSlgPnacWgVN6jMBV
	gptuBvUvLrRojQ+l8WR5aPygjqks1vQ=
X-Google-Smtp-Source: AGHT+IEZWJ2dxMeuR5bPbumZQtjZcsVgjrLk/ozyxa9E9cXphDgfK7RPqQT1PysZh9m9VFO7oAyhtQ==
X-Received: by 2002:a05:6214:20c8:b0:67e:fda1:7d5a with SMTP id 8-20020a05621420c800b0067efda17d5amr2754513qve.2.1702496205489;
        Wed, 13 Dec 2023 11:36:45 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id s9-20020a0cf789000000b0067ef5732d09sm882251qvn.50.2023.12.13.11.36.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Dec 2023 11:36:45 -0800 (PST)
Message-ID: <d714a838-1118-456a-bb27-67ec4f6acfb5@gmail.com>
Date: Wed, 13 Dec 2023 14:36:36 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: CZCAVQH52ZEWF6YJ374VOOKKQI323Z4U
X-Message-ID-Hash: CZCAVQH52ZEWF6YJ374VOOKKQI323Z4U
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Stepping back for a bit.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CZCAVQH52ZEWF6YJ374VOOKKQI323Z4U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

TG9uZy10ZXJtIGRlbml6ZW5zIG9mIHRoaXMgbWFpbGluZyBsaXN0IHdpbGwga25vdyB0aGF0IEkg
aGF2ZSBiZWVuIA0KaW52b2x2ZWQgd2l0aCB0aGlzIG1haWxpbmcgbGlzdCBzaW5jZSBpdHMgaW5j
ZXB0aW9uLsKgIEZvciAxNCBvZg0KIMKgIHRob3NlIHllYXJzLCBJIGhhdmUgaGFkIGEgc21hbGwg
Y29udHJhY3Qgd2l0aCBFdHR1cy9OSS9FbWVyc29uIHRvIA0KcHJvdmlkZSBzdXBwb3J0IGJvdGgg
b24gdGhpcyBsaXN0IGFuZCB0aHJvdWdoIG90aGVyDQogwqAgc3VwcG9ydCBjaGFubmVscyBhdCBO
SS4NCg0KU29tZSBvZiB5b3UgbWF5IGFsc28ga25vdyB0aGF0IEkgcnVuIGEgbGl0dGxlIG5vbi1w
cm9maXQ6IA0KaHR0cDovL3d3dy5jY2VyYS5jYcKgIHdoaWNoIHByb3ZpZGVzIGVkdWNhdGlvbmFs
IHN1cHBvcnQNCiDCoCBzZXJ2aWNlcyBpbiB1bmRlcmdyYWR1YXRlIGFzdHJvcGh5c2ljcyBlZHVj
YXRpb24gYW5kIHJhZGlvIA0KYXN0cm9ub215LsKgwqAgVHdvIHllYXJzIGFnbywgd2UgdG9vayBv
biB0aGUgdGFzaw0KIMKgIG9mIHJlc3RvcmluZyBhIGZvcm1lci1OQVRPIDEyLjhtIHNhdGVsbGl0
ZSBkaXNoIGZvciByYWRpbyANCmFzdHJvbm9teS7CoMKgIFJlY2VudGx5LCBvbmUgb2Ygb3VyIGFj
YWRlbWljIHBhcnRuZXJzDQogwqAgaGFzIG9mZmVyZWQgdG8gcGF5IGZvciBzb21lIG9mIG15IHRp
bWUgdG8gbW92ZSB0aGF0IGVmZm9ydCBhbG9uZywgaW4gDQpzdXBwb3J0IG9mIGEgY291cGxlIG9m
IHRoZWlyIGNvdXJzZXMuDQogwqAgSSdsbCBiZSBmb2N1c2luZyBteSB0aW1lIG9uIHRoYXQgY29u
dHJhY3QgZm9yIHRoZSBuZXh0IGZldyBtb250aHMsIA0KYW5kIHdpbGwgYmUgb24gdGhpcyBsaXN0
IGZhciBsZXNzIG9mdGVuLg0KDQpJJ2xsIHN0aWxsIGJlIGludm9sdmVkIHdpdGggRXR0dXMvTkkv
RW1lcnNvbiwgYnV0IGZvciB0aGUgbmV4dCBmZXcgDQptb250aHMsIGF0IGEgdmVyeSBsb3cgZW5n
YWdlbWVudCBsZXZlbC7CoCBPdGhlciBtZW1iZXJzDQogwqAgb2YgRXR0dXMvTkkvRW1lcnNvbiBz
dXBwb3J0IHRlYW0gd2lsbCAicG9wIGluIiBoZXJlIGZyb20gdGltZSB0byB0aW1lIA0Kc3RpbGwu
wqDCoCBCdXQgbXkgb3duIGVuZ2FnZW1lbnQgd2lsbCBiZQ0KIMKgIGNvbnNpZGVyYWJseSBzbWFs
bGVyLg0KDQpDaGVlcnMNCk1hcmN1cyBMZWVjaA0KRXR0dXMvTkkvRW1lcnNvbiBUZWNobmljYWwg
U3VwcG9ydA0KUHJlc2lkZW50LCBDYW5hZGlhbiBDZW50cmUgZm9yIEV4cGVyaW1lbnRhbCBSYWRp
byBBc3Ryb25vbXkNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQo=
