Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD5B626A61
	for <lists+usrp-users@lfdr.de>; Sat, 12 Nov 2022 17:01:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1D305380EEA
	for <lists+usrp-users@lfdr.de>; Sat, 12 Nov 2022 11:01:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668268886; bh=p9OLhLUFtYob1sSJvtYxnkfbarEjVpejfLm7D0bo2RA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=b3qwF4F442V05ivC2hOOozcfVlYTGX4+leJIgFbo673V8DAgidYxBorxL4PwtJUBN
	 HL+x+Epk/tvvhWPZKrRX8gAG7kYMxXuvJqcoLcZP1zoRMbVk8pGUjIR8gjcU3GguAU
	 njYS8oMgZkHOYTH8liBXhLAt8wzH/IfyMxrC/+LYBkvYihzqfudQ7zlu+BWcMQIBGz
	 e0ElOkjZD6oqr3oMjlodOH99c236C78Gu57CC0N30id7gPxpcSNUEkIMi+P1z4dO4H
	 d5R31KWhxEhY5gMGRnngeKyRK96QAHqB4UbPT/pvXSP0cXJ5gn1yH3FEPbZYqIfGEo
	 TMkefZrznS5/Q==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 47AEA380A2D
	for <usrp-users@lists.ettus.com>; Sat, 12 Nov 2022 11:00:36 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Js8lZnDV";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id n18so5325286qvt.11
        for <usrp-users@lists.ettus.com>; Sat, 12 Nov 2022 08:00:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rR4n1Sr8OS0StotO797owiuwgJVebfR50Hhqn0CJCDY=;
        b=Js8lZnDV8aU4LzdDgsdYaxGX6BwvfdWw/eCJvs6dZo/l6M+0hDHaiugnPt/GAZWQnL
         +Ex62PjVfOF0cUaxAaUt5oNSnPVt3GoOGxfTgusL5kI3FhJPhyL2FGXMLa91XMUSomFm
         SS13kmcM8tldcIUzj/FXOsbiH9p7rawJ+gUcf69NAJJkZ95ZhzyP0cVli5BQdwmR0WZR
         y5Z8rJwXSzIXt+QYMOOfnh93CypMN0bTqynvtTBjWGCaWVRq0nat8+Yvwx4z4WRd2BFe
         7vfuWns8JGRmDzAA3uPJBbgzib4MhfRkol1fLhrtl2llQzDzX32iwRat+CKjCvtOkRBM
         12VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rR4n1Sr8OS0StotO797owiuwgJVebfR50Hhqn0CJCDY=;
        b=lIBDCqP3dmckTdJ3zqnn+xzOobwR4tfnYFvBI08nRdVLaydWR2li8LS7nTOz+LWBhk
         WVNqpxsn31Qes6x+TOYfQGCMT4uPGuLK8Ux21CjGaHgsijOPvJiAEB7HPve+EPEgo296
         6kMfAS38JUOhSkV7GIklBK8b25xh4nR1I02UDUQFHn5wuWY9NVCbw1i2rvTAaN7tn98X
         QN0kR1fXkSed+xKcwAF7i80z4OjbnzWC/8/xg1eWupmGYiuCMbhgjOeA1osGXuYYNJGj
         qLafu9eSnwqNFC/nROPcshaN+Mzm2M4J8E7I1/R3gh0wyz/nU2XWJmyaqJ4XPyVgUJM5
         cmfQ==
X-Gm-Message-State: ANoB5pmC7hXWVkYrK5inKGJm6Mf2aJ6y3tszRlvllJ3TKONeezJvpYgZ
	y8fmtIe0W7wf+D9QLK/B+atMFPk2hJk=
X-Google-Smtp-Source: AA0mqf4MYy8ger2Zn/eSC+ocaHzXXFMICB0WCCRm+qF/lNewa40KMSsyoIEzjKWj3fRLQKYYFzY2rA==
X-Received: by 2002:a0c:fc10:0:b0:4b4:441d:806d with SMTP id z16-20020a0cfc10000000b004b4441d806dmr6270480qvo.44.1668268835234;
        Sat, 12 Nov 2022 08:00:35 -0800 (PST)
Received: from [192.168.2.183] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id q6-20020a05622a04c600b003992448029esm2985387qtx.19.2022.11.12.08.00.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 08:00:34 -0800 (PST)
Message-ID: <62ef8495-080d-cb73-53f7-a367147a9c8a@gmail.com>
Date: Sat, 12 Nov 2022 11:00:34 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <yVUbFSu5iP7xugWUWiQW3wqTi1DocKFzw4CWFtBaRI@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <yVUbFSu5iP7xugWUWiQW3wqTi1DocKFzw4CWFtBaRI@lists.ettus.com>
Message-ID-Hash: WDYWETNGWARWNRU32B3AI27EEEVK5FMK
X-Message-ID-Hash: WDYWETNGWARWNRU32B3AI27EEEVK5FMK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: SSSSS Message
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WDYWETNGWARWNRU32B3AI27EEEVK5FMK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTIvMTEvMjAyMiAxMDozNCwgaGVucnkucG93ZWxsLnh4QGdtYWlsLmNvbSB3cm90ZToNCj4N
Cj4gSSBhbSB1c2luZyBib3RoIFNEUidzIHVzYiBjYWJsZSBhbmQgU0RSJ3MgYWRhcHRvci4gVGhl
IGFkYXB0b3IgaXMgNS45ViANCj4gNEEuIFNhbXBsZSByYXRlJ3MgMTRNSHouIEkgYW0gcnVubmlu
ZyB3aXRoaW4gbmF0aXZlLg0KPg0KPg0KQ2FuIHlvdSB1c2UgdGhlICJiZW5jaG1hcmtfcmF0ZSIg
VUhEIHV0aWxpdHkgdG8gc2VlIGhvdyBmYXIgeW91IGNhbiBwdXNoIGl0Pw0KDQpBcmUgeW91IGNl
cnRhaW4gdGhhdCB0aGUgVVNCIGNvbnRyb2xsZXIgaXMgc3VwcG9ydGluZyBhIFVTQjMgDQpjb25u
ZWN0aW9uP8KgIE5vcm1hbGx5IHdoZW4gVUhEIGVzdGFibGlzaGVzIGEgY29ubmVjdGlvbiB0bw0K
IMKgIHRoZSBkZXZpY2UsIGl0IHdpbGwgaW5kaWNhdGUgIk9wZXJhdGluZyBvdmVyIFVTQjMiLg0K
DQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQo=
