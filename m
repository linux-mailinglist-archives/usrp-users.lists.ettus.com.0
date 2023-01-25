Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C23CD67B966
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jan 2023 19:33:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E02CA38436E
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jan 2023 13:33:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674671602; bh=0U/Dr9K98HNDIS6BDcMmXfvYmmLo3aNmwjQqqZAW3Zk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=1A6epiVIS1bmtOlouuG3uSidWPnxMe0VXfLkaaDP19eAXuXcM5ec/UQD7+l6Cj1ma
	 2rzrZM5/XLQsGhA71F6qhw92tOMpt/Hfga8hH1+K0bcOi4hR1biQTphAnQSWOFXc3k
	 CfnPFwHQbVemNE6sujXfbk6wklW3/S+7thVxLoRBclQwchpnqbitvSnvk2yclV1dub
	 J30eRsFtdqrrKziO5Oz+w9b2/v9iQilFI3Vt/2lVO/BUuuGV/+LjQ0T6MjtQvBHYkW
	 Xg1GUSmyoRR+GpPEwSPMKBBYeD+TO8upX+jNuDE70uRwe8VHhW9+45Lvb+0cAUFWt7
	 Wb/FX7oAPJB8Q==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id BF894384292
	for <usrp-users@lists.ettus.com>; Wed, 25 Jan 2023 13:32:32 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="g/qXR5Ao";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id m26so7061607qtp.9
        for <usrp-users@lists.ettus.com>; Wed, 25 Jan 2023 10:32:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jCswhOzvApqTFU9reNbsBiyvcV0ZVgbmOj4KWCHMnxw=;
        b=g/qXR5Ao+RU7MIr1QNEjS//UvqZXq4+gwaGsfw/uK1sy6ih4ooHEYCkCUs7HuAqV7/
         TPISOWP1D+KTZC0o/NuRNbkXdFP0trS0PwpVSDxiRHG7B3LXv+kR27O3Ne0auvqJciFq
         lmNyds/17HLnxb7q9v8YJsvuXFrU0ZtGypZ1jsLKo1jHl/Z2ugQByQkSLIi2q4XGsW7i
         B/DB9WE4vpdQQ8poMXupEA689abI7dGhMTSCZBHt21QVRUUjm1d7iUSnjc7REolhiKhQ
         dCeH8UwAwHpRcYP/ZL1PTJsog8af0VpFmvjZVkRZLMX0MGXdf2nSoN8FknPzhpHBUj3F
         ig7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jCswhOzvApqTFU9reNbsBiyvcV0ZVgbmOj4KWCHMnxw=;
        b=3a4Rz47fikf4HIG+wtHlPyqiZrlsjcdSZk60ktkkBGFzffTb6qmxH/C2M8yjzcXLRU
         k2R5qQApBatEO1hLa2F0AeLJwTihgJnPKUH4FRYzGyA3Px8Ks74Xw53zP5LHWeTAjbXI
         6xADEm+BwXYWqHaNKkVjAuaSVNyXBw+D1NLGnG/zzSiWF/2xRyEQMxutoY/hFWVGK05E
         55QRFdkKLKaSWrTz2LFioksIIg60CEUVvhDXbBdbu1rkJ04aq1F/gvkFrTsrdR6Kt4X+
         z4TQ0wAYZPfr6yY5jSoLJwAyNfIyHWKAGhwq4PqIw21/9/AGDguwp/bMZ2XWaJgER3oa
         O0Tg==
X-Gm-Message-State: AFqh2krueEy1Kef5BukM+I/R4IYMVw5np9i01Ba4kklhUnnv67bskhbG
	QUD6DJUrDACZtx0Y4MtOf3d3mLVm9fg=
X-Google-Smtp-Source: AMrXdXsEn5Bki9A4WaTeJZd/CEeVfJs07z9HqvTT/dupPGxTfm8KjhV8PkyjhdTAqJg4SvSjeft5qA==
X-Received: by 2002:ac8:4787:0:b0:3a6:a43a:8ba9 with SMTP id k7-20020ac84787000000b003a6a43a8ba9mr46067397qtq.3.1674671552023;
        Wed, 25 Jan 2023 10:32:32 -0800 (PST)
Received: from [192.168.2.199] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id b4-20020a05620a118400b006cbc00db595sm3926790qkk.23.2023.01.25.10.32.31
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jan 2023 10:32:31 -0800 (PST)
Message-ID: <53c37d2e-5e0a-1498-c3e7-18169df331c3@gmail.com>
Date: Wed, 25 Jan 2023 13:32:31 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <rCAOMglCMKAW1fFEORoPm0G9Kv67iobBg95pUHg@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <rCAOMglCMKAW1fFEORoPm0G9Kv67iobBg95pUHg@lists.ettus.com>
Message-ID-Hash: F7WBJIOADVFOFBCZY5QZRZOX6S3PXA5D
X-Message-ID-Hash: F7WBJIOADVFOFBCZY5QZRZOX6S3PXA5D
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Parsing dat file produced by rfnoc_rx_to_file
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F7WBJIOADVFOFBCZY5QZRZOX6S3PXA5D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjUvMDEvMjAyMyAxMzoyMywgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPiBUaGFu
a3MsIEZvbGxvd2luZyB1cCBvbiB0aGlzLCBpZiBJIHRoZW4gdXNlIGZjMzIsIG9yIGZjNjQsIGhv
dyBkb2VzIA0KPiB0aGUgZm9ybWF0IGNoYW5nZS4NCj4NClRoZW4gaXQncyBpbnRlcmxlYXZlZCBJ
USBpbiBuYXRpdmUtYmluYXJ5IGZvcm1hdCBmb3IgdGhhdCBwYXJ0aWN1bGFyIA0KdHlwZS7CoMKg
wqAgRm9yICJmYzMyIiBpdCdzIGludGVybGVhdmVkDQogwqAgc2luZ2xlLXByZWNpc2lvbiBmbG9h
dGluZy1wb2ludCwgYW5kIGZvciBmYzY0LCBpdCdzIGludGVybGVhdmVkIA0KZG91YmxlLXByZWNp
c2lvbiBmbG9hdGluZy1wb2ludC4NCiDCoCBPbiBtb3N0IGFyY2hpdGVjdHVyZXMsIHRoaXMgaXMg
SUVFRSBmbG9hdGluZy1wb2ludCBmb3JtYXQuDQoNClJlYWRpbmcgYW5kIHdyaXRpbmcgbmF0aXZl
LWJpbmFyeSBmb3JtYXRzIGlzIGEgZmFpcmx5LW9yZGluYXJ5IGV4ZXJjaXNlIA0KaW4gYm90aCBD
KysgYW5kIFB5dGhvbiwgYW5kIGlzbid0DQogwqAgc3BlY2lmaWNhbGx5IHJlbGF0ZWQgdG8gVUhE
LsKgwqAgRm9yIGV4YW1wbGUsIE51bXB5LCBmb3IgUHl0aG9uIGhhcyB0aGUgDQoiZnJvbWZpbGUi
IG1ldGhvZDoNCg0KaHR0cHM6Ly9udW1weS5vcmcvZG9jL3N0YWJsZS9yZWZlcmVuY2UvZ2VuZXJh
dGVkL251bXB5LmZyb21maWxlLmh0bWwNCg0KDQo+DQo+IEFsc28sIGRvZXMgdGhlcmUgZXhpc3Qg
ZG9jdW1lbnRhdGlvbiBvbiB0aGUgZGVmYXVsdCBzZXQgb2YgZmlsZSBmb3JtYXRzPw0KPg0KTm90
IHJlYWxseSwgYmVjYXVzZSB0aGVyZSdzIG5vdCBtdWNoICJmb3JtYXQiIHRoZXJlLg0KDQoNCj4N
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQo=
