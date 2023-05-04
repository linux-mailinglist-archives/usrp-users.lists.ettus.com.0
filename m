Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9E96F6EB8
	for <lists+usrp-users@lfdr.de>; Thu,  4 May 2023 17:13:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 82D3F384660
	for <lists+usrp-users@lfdr.de>; Thu,  4 May 2023 11:13:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683213199; bh=O26Cn7cWSbW+mhhzUtc4jw/0vhS3vTppcpBEIctJ6Bs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=fOsipXAnuhMSKSpXqoXDbz4N/NHGfWFv/5zdKMnRdc6WyBFe9X3h535Tu62HNaLZI
	 KXuB8x/v4K+NOMb1IaHKB/34lGsaZLxJH6UgDWGEYfB0iQT6f0pMkwXdyIFiWbUKH8
	 lskaOZCCgxkMc0Csp9mdQkdCXdKm4yCKaBpvvxiQFM1iT0AvWQnxhE+cvFWmK0JTSw
	 dqhadA0IgfQ8trL05XF2Bcd1Gct429f93ja6gSH1fweMoXE74n5PNcp+ttrrHnFJzc
	 fnsAM0M1VSdwcbiYkuHVYy12hlggSYXJrI1NZdMR4E+7x+JS7gmu9/iAbvJ75XhVeM
	 vrvK582aXLqTg==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 862493845BD
	for <usrp-users@lists.ettus.com>; Thu,  4 May 2023 11:12:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HHKWaqyS";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-61b79b93ac5so2874226d6.0
        for <usrp-users@lists.ettus.com>; Thu, 04 May 2023 08:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683213162; x=1685805162;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PzWYRxacKzVzyuslAfrGzsnvZqXcihe0PmmLgds/YF8=;
        b=HHKWaqySjxdPTJVnsK1SGteACNn/3R9XMtocurLPmAnDw/5bmYgDsZic5k9PdpqIiX
         Cx+fnrAsmyQUqX0O4ebjnt+c44eh4GQ7YzsM27xfVsDR/CQUt65z0O8rXOVa5ebYEzll
         jG6gRwi0qZERTuAossTZIuHvLEO/LJHx6siD0ZxeZ3/7LTsdFn5i7pCAIJttXGzyB33G
         g1Lp0tYLdKo08BS1L/1uZXvWPlZg9YUeidZgBs/tZWBV/eO33inUmxpOJKqgfLqMjez3
         hOJ25uKZZyXnPPlknLr7prSCxJQ8HUK/AYEX+G0Oc5roZnJN8AKNOobpNL/kQbBv6a6Q
         DWdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683213162; x=1685805162;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PzWYRxacKzVzyuslAfrGzsnvZqXcihe0PmmLgds/YF8=;
        b=VmWv5SvQ5OJxpr+VAffhhKlKxYTGNrJhJlsCtCzIVdv05cwTj2BiIz2cTfEZGPsBuE
         2b+aS7w68DI8pTX4sDyQNMVjTsfpYy9a691ioNDDaEXa0pAy9d4mZcyDiUDKPJWuDUOp
         8R7mOz/jEdZGp0rA/qzAVaxeMQYsapjQV+XqhHDGggMcZXtlN7GfLV4Ss+JhbZZ7Iang
         AI9n632D3HIImFpJ1NXzvKIeUVHyiVYUDQC90UQ7SCQZT9KfMtL13CCZ9Wl7uUXbzK5w
         I1PKtfYEvqG9mtUWxsHkxIhGUpcetIcEQdv4ufyFLPnFsgJfUswt6qvAz9jmF7k6Y48q
         NkjA==
X-Gm-Message-State: AC+VfDzzV066SOR7NJnxllcc4Sewy9pUA44VS/E9ajivamwIEeTh4MMI
	hHOd5j+ixVNa+70lg6cBmGtotIviNFc=
X-Google-Smtp-Source: ACHHUZ4C/R60l3vWjhpZCYNQOES//hAoipy2nBAtBHiUpMdLvAtfvNK0S5J0u+NFQMKjQjT41mzOCg==
X-Received: by 2002:a05:6214:491:b0:5ef:435f:dc7e with SMTP id pt17-20020a056214049100b005ef435fdc7emr16148345qvb.52.1683213161831;
        Thu, 04 May 2023 08:12:41 -0700 (PDT)
Received: from [192.168.2.168] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id d7-20020a0ce447000000b0061b5ad0290asm3330827qvm.67.2023.05.04.08.12.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 08:12:41 -0700 (PDT)
Message-ID: <a52fb3c8-c19c-6abe-36b3-f4c42385bdd2@gmail.com>
Date: Thu, 4 May 2023 11:12:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <b6UvUNXfjdwWK8OIBTsMRiSWh8Wx2yYyFeiFpzdd9LI@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <b6UvUNXfjdwWK8OIBTsMRiSWh8Wx2yYyFeiFpzdd9LI@lists.ettus.com>
Message-ID-Hash: XOFD56HDTEAN2YEW4BQV6L3UXDJSUFJB
X-Message-ID-Hash: XOFD56HDTEAN2YEW4BQV6L3UXDJSUFJB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full duplex issues with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XOFD56HDTEAN2YEW4BQV6L3UXDJSUFJB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDQvMDUvMjAyMyAxMDo1NCwgZGF2aWQuZmVybmFuZGVzQHZpdmVyaXMuZnIgd3JvdGU6DQo+
DQo+IEhpIE1hcmN1cywNCj4NCj4gSW5kZWVkLCBJIHRlc3RlZCBzbyBtYW55IHRoaW5ncyB0aGF0
IEkgZm9yZ290IHRvIHB1dCB0aGUgcmlnaHQgDQo+IGZyZXF1ZW5jaWVzLiBOb3cgaXQgd29ya3Mg
c21vb3RobHkuIFRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHlvdXIgc3VwcG9ydC4NCj4NCj4NCllv
dSdyZSBtb3N0IHdlbGNvbWUuwqAgVGhlIEV0dHVzIFImRCB0ZWFtIGlzIG5vdyBhd2FyZSB0aGF0
IHRoZXJlJ3MgYSANCnByb2JsZW0gd2l0aCBVSEQgNC5YIGluIHRoaXMgc2NlbmFyaW8uDQoNCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
