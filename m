Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE844004A8
	for <lists+usrp-users@lfdr.de>; Fri,  3 Sep 2021 20:11:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 80B23384679
	for <lists+usrp-users@lfdr.de>; Fri,  3 Sep 2021 14:11:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WQ9pXDL2";
	dkim-atps=neutral
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 5186638465F
	for <usrp-users@lists.ettus.com>; Fri,  3 Sep 2021 14:10:26 -0400 (EDT)
Received: by mail-qv1-f49.google.com with SMTP id p17so118913qvo.8
        for <usrp-users@lists.ettus.com>; Fri, 03 Sep 2021 11:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=ffkRKyQc+LCmxlOZ4JroAnPewr/Uavn2Bv9bxH93BAs=;
        b=WQ9pXDL2jIuaalv1rtIg3vtC92eLbRfkl78/id92wupKPHXfBptuOHJnExvxbB/cWj
         wGCQv1K4D9hMJFNzG6rMqUiwNVqblqaBAsq6bQp/Xq+BPnWt9rh4bAioHjfZcIeKISvP
         jfRGutlU05bSFqnfZ67bfhrlIHmTjgwx4q1/hKjPQ+hAkcgUl3wP63NLZx/CCVJzk+hJ
         sjpqN7RGRxMyeb2ZEuHyGj2bMYd6CYgrYmwk6etCn/gP4O0i3vU55A18ccU8S768QrTf
         au+bROZasCFui3J9dxY9oxopPXSTVdGUrSpKRlYCIU2SlWBbd98Mj+2L957Lo1HybbX1
         QJ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=ffkRKyQc+LCmxlOZ4JroAnPewr/Uavn2Bv9bxH93BAs=;
        b=UcAIf10PYMDwHBl9VZUdP5vVH5JGHOzHkk6bJwThI1u1xhTHQS7JLaZ46arHDRRw7k
         50pfdR08tQSD62rwLFdFMwwOGtMhCnP9rORTNNgnGMwkX4TejA4JHaZc4HEpOpTrKstO
         ZMvF9Rfsp2y1j9VlkiQi6FHc0lHNeyy3eoDpgbDvxhc0Qdu1dLgPeud2haCX0dJaFhnQ
         2TCaYE6BLAjhCVTDB0N5pBPoMdi1jH4fOUiCBpoyUX7wxK60dk3CSSHUifecrQRnSDDc
         woFEq8qyJACZVXl6Qn6smMdaNpLWZA9oesLbA6z/7iGZT9GlwjpljncevNoS5kQwV4xM
         MvWg==
X-Gm-Message-State: AOAM532gGYaJzf1fiQQNBLOV+OdrRO/D9d+qKrDlvO3ILNfcXjk+3F8Z
	q6fs3MLxu49znW1WIdvC8b8eU13CzHtztQ==
X-Google-Smtp-Source: ABdhPJzYtZ50HKK5FEiL5yWbW7+9EHJ6AROAAS9ZEeGZ2ToIp55/S792AG83OOD7j3Vmy8ZYy8c4DA==
X-Received: by 2002:a0c:8d0f:: with SMTP id r15mr362651qvb.1.1630692625523;
        Fri, 03 Sep 2021 11:10:25 -0700 (PDT)
Received: from [192.168.2.232] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id s187sm4382023qkf.34.2021.09.03.11.10.24
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Sep 2021 11:10:25 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAGLr63voh9G8EnOVZMi6phwk+5rPkY7zBnuX5pu9szfdrL_KmQ@mail.gmail.com>
 <VE1PR04MB6653860A9AA24499243B8395BACC9@VE1PR04MB6653.eurprd04.prod.outlook.com>
 <CAGLr63tyG4LJkwtAoiY1QNBPr5CN_5Mu6Ygn0R90+vB52OLrOg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <cdb81990-bb54-6aa9-33cb-2cbb77c3fe2c@gmail.com>
Date: Fri, 3 Sep 2021 14:10:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAGLr63tyG4LJkwtAoiY1QNBPr5CN_5Mu6Ygn0R90+vB52OLrOg@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: N3LO75HVSF7CWE2R6LNOOBQD4UWWAJTE
X-Message-ID-Hash: N3LO75HVSF7CWE2R6LNOOBQD4UWWAJTE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Cannot Ping SFP port
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N3LO75HVSF7CWE2R6LNOOBQD4UWWAJTE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0wOS0wMyAyOjAxIHAubS4sIENhbWVyb24gTWF0c29uIHdyb3RlOg0KPiBUaGFua3Mg
Zm9yIHRoZSB0aXAgTWluZy7CoCBJIGhhdmUgaGVhcmQgdGhhdCB0aGVyZSBhcmUgc29tZSANCj4g
Y29tcGF0aWJpbGl0ecKgaXNzdWVzIG91dCB0aGVyZS7CoCBXZSBhcmUgdXNpbmcgdGhlIEZpbnNh
aXIgd2hlbiB0cnlpbmcgDQo+IGNvcHBlciAoZXRoZXJuZXQpIGFuZCAxMEd0ZWsgQVhTODUtMTky
LU0zIHdoZW4gdHJ5aW5nIGZpYmVyICh3aGljaCBpcyANCj4gaG93IGl0IHdhcyBzZXQgYW5kIHdv
cmtpbmcuKQ0KPg0KPiBPbmUgdGhpbmcgSSd2ZSBub3RpY2VkIGlzIHRoYXQgd2hlbiB1c2luZyBm
aWJlciwgdGhlcmUgaXMgbm8gbGluayBMRUQgDQo+IGlmIEkgdXNlIHNmcDAsIGJ1dCB0aGVyZSBp
cyBpbiBzZnAxLsKgIFRoZSBvcHBvc2l0ZSBpcyB0cnVlIHdoZW4gSSdtIA0KPiB1c2luZyBjb3Bw
ZXIgKGxlZCBvbiB3aGVuIHBsdWdnZWQgaW50byBzZnAwLCBvZmYgc2ZwMS4pIMKgVGhpcyBpcyB0
cnVlIA0KPiBvbiBtdWx0aXBsZSBGUEdBIGZsYXZvcnMgKFdYIGFuZCBIRykuDQo+DQo+IEknbSBy
ZWFsbHkgYXQgYSBsb3NzIGhlcmUuLi4NCj4NCj4gVGhhbmtzIGZvciB5b3VyIGhlbHAsDQo+DQo+
IENhbWVyb24NCj4NCldoZW4geW91J3JlIHBpbmdpbmcsIGRvIHlvdSBnZXQgYW4gYmxpbmt5IGxp
Z2h0cyBvbiB0aGUgTjMxMCwgaW5kaWNhdGluZyANCnRoYXQgaXQgaGFzIHNlZW4geW91ciB0cmFm
ZmljPw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQo=
