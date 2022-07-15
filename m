Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E32D55758F9
	for <lists+usrp-users@lfdr.de>; Fri, 15 Jul 2022 03:05:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ACA70383FCE
	for <lists+usrp-users@lfdr.de>; Thu, 14 Jul 2022 21:05:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657847118; bh=3IkUEW+p5RnkfH4CS0m5zRHXj3bYXjFo3RyMOhhy94c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=xHHO9QoNKkn/fKTmRqwHKKyumcOyfa4Y9lhohNc/UkYFiK6JdyX3W9M4wqRWdSBIM
	 9f9Z3T/HNSV+ixZFETJvt0JSPQZDQRCB1r5sUpkFoVVWyHwx6DnryOMOkjpVNy+mlA
	 Q+JwFzX/a5Cl9ptX/9UI7XCpOrakzulpgBVLlQrxqXhRn4sSBuLZNXJfIW5Zf3oSId
	 Hp4Q+LjTz/s1p5DxijNI6uFpjgRlu/9sXQTUfbuYeidbYexSXolrPk2c2armDF/sWl
	 6wUwPDN7dWM16J/9FiAUj81wHP54997tOI1xu6umEdnzO3O12ZQqMAYQImGKgcei7y
	 aY3xD9biqjeqA==
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id B776B383EF9
	for <usrp-users@lists.ettus.com>; Thu, 14 Jul 2022 21:03:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hiXRlU5t";
	dkim-atps=neutral
Received: by mail-qv1-f50.google.com with SMTP id l11so2719704qvu.13
        for <usrp-users@lists.ettus.com>; Thu, 14 Jul 2022 18:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=T6+X4YvIAab6HCdNz0CgkDaU4gxLAMOZKfuBI+cT/Vk=;
        b=hiXRlU5tKkxbfVENdWwFaazmgCnYOOnfmgdb5aK7QMZd5QFDdRqzDitBYTOeEwYRce
         4tZGBccZkPoRfGzRSHVG5s/uJyMrqAxk1W89sxo3sfrDhdVmDC0xgdGwePqYCADPyduo
         hIAFnKzKUwsxQZ+KwsKulW4BS5rJs5YetaEZcWygRO06HqHLs3tyPdCe+aMXNenyajMQ
         eV79q1K7cuh99lFwiWMefUFNRwtIEPy2qP/JW1hhsUY4faomsyRNlfTApL2kjG4Aoln0
         xrAAmnSB9RmGAnPgrtnk14iURIU559xmWN0Fy2g7Zd+YP1G+nH5FneWVeahuOXn0pW9C
         pRbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=T6+X4YvIAab6HCdNz0CgkDaU4gxLAMOZKfuBI+cT/Vk=;
        b=mwSEQjZBfs0T6B7DudAS5fz4AQ7X69PXCqusBxgckb4uSgFXQYp3m7l7oUO3L/BX2I
         cNzU9oPJDovN0juVfhvhL+GSjTdRRSsL3oziVPMKcVl4kQVZHA6bbHeKrGdeYwx7jTeu
         FQSbqePRjk3ploJVSm7T9IEsgTs/nHhgNvFCPZxLUEtfVj13ZojL3zYIV3/yzS3xbCuR
         i3mO9DLQHHLQj9xYFKMJ/mjjrt9KKUrQ6lLN4a9n9UvJX/RuCKPbk8uy8V6bTT+k7NMV
         uX/u3Jjr5bRg0pi40Njjrknxx9SauGjN5ZxF80MF5yhbALxlpIHkRWEpUtz7Y2fdZzDO
         sxrA==
X-Gm-Message-State: AJIora98Ueic8V8DSTFcYnPNnAukGGmeStbuRVjBjQ/6Q80h0BkB3e3t
	IjUb+JqbFd/zBjYr8dAiPgkGBJrWMbA=
X-Google-Smtp-Source: AGRyM1uXElcDUQm6xciu92nAI7ibkeMkcVK9fktHLNU46uqpX+4WsLN0k49grOuzVf0YvQRY55nxqg==
X-Received: by 2002:a05:6214:2427:b0:473:39c5:870a with SMTP id gy7-20020a056214242700b0047339c5870amr10067051qvb.109.1657847013916;
        Thu, 14 Jul 2022 18:03:33 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id f38-20020a05622a1a2600b0031c56d5f7e1sm2876637qtb.92.2022.07.14.18.03.33
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 18:03:33 -0700 (PDT)
Message-ID: <f784e82c-6a9e-15eb-f60e-3f78b7fe611e@gmail.com>
Date: Thu, 14 Jul 2022 21:03:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MN2PR12MB387160D39097A5A043F6B443AF889@MN2PR12MB3871.namprd12.prod.outlook.com>
 <3c5ed3e4-8df8-e0b6-0d03-14e790e19c25@gmail.com>
 <611a069c-01be-4886-2eb5-61dcddbf14b9@ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <611a069c-01be-4886-2eb5-61dcddbf14b9@ettus.com>
Message-ID-Hash: IG44XFXLTOJ2KPBZYURRMZ5MGGCEMO6M
X-Message-ID-Hash: IG44XFXLTOJ2KPBZYURRMZ5MGGCEMO6M
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: weird usrp coredump
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IG44XFXLTOJ2KPBZYURRMZ5MGGCEMO6M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNy0xNCAxODo1NywgTWFyY3VzIE3DvGxsZXIgd3JvdGU6DQo+IEJ1dCB0aGF0IGFw
cGxpY2F0aW9uIGlzIHRoZSBVU1JQIGJsb2NrIG9mIEdOVSBSYWRpbywgc28geW91J3JlIGF0IA0K
PiBsZWFzdCBub3QgdGhlIGZpcnN0IHRvIHVzZSBpdCA6KQ0KPg0KPg0KPiBXaWxkIHN0YWI6DQo+
DQo+IFNvLCB0aGlzIGlzIHJ1biBvbiB5b3VyIFBDLCByaWdodDsgYXJlIHlvdSBzdXJlIHRoYXQg
dGhlIEdOVSBSYWRpbyB5b3UgDQo+IHJ1biB3YXMgYnVpbHQgYWdhaW5zdCB0aGUgVUhEIHlvdSdy
ZSB1c2luZz8gKFRoaXMgaXMgYmFzaWNhbGx5IGFza2luZyANCj4gaG93IHlvdSBpbnN0YWxsZWQg
Ym90aCBHTlUgUmFkaW8gYW5kIFVIRCkNCj4NCj4NCj4gQmVzdCByZWdhcmRzLA0KPg0KPiBNYXJj
dXMNCkluZGVlZCwgbWlzLW1hdGNoIGJldHdlZW4gd2hhdCBhbiBhcHBsaWNhdGlvbiB3YXMgbGlu
a2VkIGFnYWluc3QsIGFuZCANCndoYXQgaXQgaGFzIGR5bmFtaWNhbGx5IGxvYWRlZCBjYW4gY2F1
c2UgQmFkIFRoaW5ncyh0bSkuwqAgSXQncyANCnVuZm9ydHVuYXRlIHRoYXQgdGhlDQogwqAgKnJl
YWxpdHkqIG9mIGR5bmFtaWNhbGx5LWxpbmtlZCwgc2hhcmVkLWxpYnJhcnkgYXBwbGljYXRpb25z
IGlzIHRoYXQgDQp5b3UgKmNhbm5vdCogbWl4LWFuZC1tYXRjaC7CoMKgwqDCoCBUaGlzIHdhcyBv
bmUgb2YgdGhlICJwcm9taXNlcyIgb2YgRExMcyANCiJiYWNrIGluIHRoZSBkYXkiLCB3aGVuDQog
wqAgdGhleSB3ZXJlIGEgc2hpbnktbmV3IHRoaW5nLsKgIFNpZ2guDQoNCkJ1dCBteSBjb21tZW50
IHN0aWxsIGhvbGRzIHRvIGEgY2VydGFpbiBkZWdyZWUuwqDCoCBJZiB5b3UncmUgd3JpdGluZyBh
biANCmFwcCBpbiBDKysgb3IgQyB0aGF0IHVzZXMgR251IFJhZGlvLCB5b3UgY2FuIHN0aWxsICJw
YXN0ZSIgdGhpbmdzIGluIA0Kc3VjaCBhIHdheSB0aGF0IHNvbWUNCiDCoMKgICJkaXN0YW50IiBs
aWJyYXJ5IGxvc2VzIGl0cyBsdW5jaC7CoCBCZWVuIHRoZXJlLsKgwqAgRG9uZSB0aGF0LiBZaWtl
cy4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQo=
