Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1EC71F34E
	for <lists+usrp-users@lfdr.de>; Thu,  1 Jun 2023 21:57:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E9DCC3837FE
	for <lists+usrp-users@lfdr.de>; Thu,  1 Jun 2023 15:57:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685649440; bh=lt5SGolxDgMvI4q6TVKQWfXLgrJBwnU8FO9FcIC7U0I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=oOX4GL/6OzpaBbV1TTktou3b+bB5tDVqPatP9UItt+AqOOVGg76ezyYiEdvhUd0vt
	 LM+dETlXDeBi1JMD4TuA1vu0vZtmUNAFJTkWWqxLnGdilXDGnMTD2plhQzyo+7Afmw
	 Ys95Hu6ctoI9VjLnecWtD6uz/PQx7+3am+PcbZzbg1g0wvJFq5syy7L6rMVNwuU5MS
	 /xoaUJGjO+UOhwU0Id7J0M0mW98Ne2n0rNzXG4zGjxdtKUAVQv811ZDcKFd823MvRk
	 u540FW3rDLBINjYg0Jb9td4kTetfEEnOQb6F8vfB4G6I/iM0QFzCMXcnFJSkZTJiux
	 MYZyba+ckHVeQ==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 6D479383769
	for <usrp-users@lists.ettus.com>; Thu,  1 Jun 2023 15:56:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=febo.com header.i=@febo.com header.b="ChuwdkQx";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-75d13719304so106215985a.3
        for <usrp-users@lists.ettus.com>; Thu, 01 Jun 2023 12:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=febo.com; s=google; t=1685649380; x=1688241380;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zGcPrvCUg4nz8XxE6Wt5EDPym8Sl1pjb3Mcmc12UOtM=;
        b=ChuwdkQxtudxgHgPOUiwMH0s31x5Jrdr0Z3oKy/j6u+6MuFtlciMSM4mLtM7+DpOwx
         9iI+oJYcvjVo4zY6r795mj0r7bEqZobxlaUEUR9RhU2ifLFiQPIwmCMDDAxiKUBXshna
         KJrOzLlkZ+IDsSQlQQH2lr3TBM3d2eLRwlNBJlGRNWSf4cmpwItRFpd1m+IkqsLiKsL1
         OIpUmp+f0VF89B0yN4rUdWH4ZKBo9MmG3BJoBEtMo5p/8STtLO74mXrTZsScDI2N5eAS
         X+TPzLd6Dr7xmi6lU30yMBWJCJ/BFPQZobtcStaJwYHAnTigIzkV2y4GBk/5octSuc1y
         EXnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685649380; x=1688241380;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zGcPrvCUg4nz8XxE6Wt5EDPym8Sl1pjb3Mcmc12UOtM=;
        b=DR3Rpl/IsF69rfN7f9eGChl8HO5JgKtKT0/KGelA1yKsIGlhpTqHK2L53hpgNdOLyo
         rIrYQkMVFZdbBkUnnjC8ohzMnkvnhuhhYHZU+m1OzPgLyqsOEFuwQsmMWe3qglzfMHnQ
         /LHd75SlAlAauB38auxx+p+5f4sf6I6szxjNeyguKL6/x6oFNN8Fg1P9diqKOYsUuTnu
         FGmg7Sgg+DyepoTO2LyIOUUhGxmhT0jeC14YUMJz4UIp4Lt+3ObFOzmxtg8jmi2QsuEm
         R5fUPOvVsUooOAI+lXxFqgu/xYjcRb1vD8WN22FJrLyAb4RIVbWWQVtTS86gw8k+/REI
         nbWQ==
X-Gm-Message-State: AC+VfDwh2K4vBmNk1ZzZRJ7u/0maloGgc9k6HPCTukmoNQ4OTGNuvtmh
	gHV5fhTbw4LvYE5RgdJ4iVfKdG3AvLV2i+OwGEiKBQ==
X-Google-Smtp-Source: ACHHUZ4qgrXGwFGNNOjWNcMdlgfgUfBF/rMZa8XeDdhqvH/VHx1UYR5wdKR/bA27olHecq/eQLJoNA==
X-Received: by 2002:a05:620a:4050:b0:75b:23a1:42f with SMTP id i16-20020a05620a405000b0075b23a1042fmr13049679qko.69.1685649380674;
        Thu, 01 Jun 2023 12:56:20 -0700 (PDT)
Received: from [10.73.3.60] (litterbox.febo.com. [98.103.30.118])
        by smtp.gmail.com with ESMTPSA id v4-20020a05620a122400b0074d60b697a6sm7038834qkj.12.2023.06.01.12.56.20
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 12:56:20 -0700 (PDT)
Message-ID: <34f133e4-3eab-0cc4-a5ba-e579fbfaf3c9@febo.com>
Date: Thu, 1 Jun 2023 15:56:19 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SJ0PR09MB9126585283051825C55DFA30EC499@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: John Ackermann N8UR <jra@febo.com>
In-Reply-To: <SJ0PR09MB9126585283051825C55DFA30EC499@SJ0PR09MB9126.namprd09.prod.outlook.com>
Message-ID-Hash: NFZYHDVKX5ULAGWSGKSF7V2FZH7ITY7V
X-Message-ID-Hash: NFZYHDVKX5ULAGWSGKSF7V2FZH7ITY7V
X-MailFrom: jra@febo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: octoclock specs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NFZYHDVKX5ULAGWSGKSF7V2FZH7ITY7V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgLS0NCg0KVGhlcmUncyBzb21lIGZhaXJseSBvbGQgZGF0YSBhYm91dCB0aGUgT2N0b2Nsb2Nr
IGhlcmU6DQpodHRwOi8vd3d3LmFuZGVyc3dhbGxpbi5uZXQvMjAxNi8wOS9ldHR1cy1vY3RvY2xv
Y2stZGlzdHJpYnV0aW9uLWFtcGxpZmllci8NCg0KSW4gdGhlIHNoYW1lbGVzcyBwbHVnIGRlcGFy
dG1lbnQsIHRoZSBUQURELTEgZGlzdHJpYnV0aW9uIGFtcGxpZmllciBmcm9tIA0KVEFQUjoNCmh0
dHBzOi8vdGFwci5vcmcvcHJvZHVjdC90YWRkLTEtcmYtZGlzdHJpYnV0aW9uLWFtcGxpZmllci8N
Cg0KaGFzIHZlcnkgZ29vZCBhZGRpdGl2ZSBub2lzZSwgYW5kIGlzIGluZXhwZW5zaXZlLiAgSXQg
aGFzIHNpeCBjaGFubmVscyANCmJ1dCB0d28gb3IgbW9yZSBib2FyZHMgY2FuIGJlIHN0YWNrZWQg
YW5kIGRyaXZlbiBmcm9tIGEgY29tbW9uIGlucHV0LiANClRoZSBkb3duc2lkZSBpcyB0aGF0IGl0
J3MgYSBraXQgKHRocm91Z2gtaG9sZSBwYXJ0cykuDQoNCkkgY29tcGFyZWQgdGhlIGFkZGl0aXZl
IHBoYXNlIG5vaXNlIG9mIHNldmVyYWwgZGlzdHJpYnV0aW9uIGFtcHMgaGVyZToNCmh0dHBzOi8v
d3d3LmZlYm8uY29tL3BhZ2VzL2FtcGxpZmllcl9waGFzZV9ub2lzZS8NCg0KKHRoYXQgZGF0YSBp
cyBhbHNvIGZhaXJseSBvbGQ7IGN1cnJlbnRseS1zaGlwcGVkIFRBREQtMXMgdXNlIGEgbmV3ZXIg
DQphbXBsaWZpZXIgY2hpcCB0aGF0IHNlZW1zIHRvIGhhdmUgYSBjb3VwbGUgb2YgZEIgYmV0dGVy
IHBlcmZvcm1hbmNlKS4NCg0KQmVzdCwNCkpvaG4NCi0tLS0NCg0KT24gNi8xLzIzIDE1OjE2LCBF
dWdlbmUgR3JheXZlciB3cm90ZToNCj4gSGVsbG8sDQo+IA0KPiBJIGFtIGJ1aWxkaW5nIGEgaGln
aC1lbmQgdGVzdGJlZCBhbmQgdHJ5aW5nIHRvIGRlY2lkZSBvbiBhIDEwIE1IeiANCj4gZGlzdHJp
YnV0aW9uIG9wdGlvbi7CoCBJJ3ZlIHVzZWQgb2N0b2Nsb2NrIGZvciBvdGhlciBzeXN0ZW1zIGFu
ZCBpdCANCj4gJ3dvcmtzLifCoCBIb3dldmVyIHRoZSBkYXRhc2hlZXQgaXMgcHJldHR5IHNwYXJz
ZS7CoCBEb2VzIGFueW9uZSBoYXZlIA0KPiBkZXRhaWxlZCBzcGVjcyAodGhhdCB5b3UgbWVhc3Vy
ZWQgb3IgZnJvbSBFdHR1cykuwqAgSSBhbSBpbnRlcmVzdGVkIGluIA0KPiB0aGUgbm9uLUdQU0RP
IHZlcnNpb24gc2luY2UgbXkgMTAgTUh6IGNvbWVzIGZyb20gb3V0c2lkZSB0aGUgc3lzdGVtDQo+
IA0KPiAgICogcG9ydC10by1wb3J0IGRlbGF5IHZhcmlhdGlvbg0KPiAgICogcGhhc2Ugbm9pc2Ug
aW5jcmVhc2UgaWYgYW55IChhc3N1bWluZyBleHRlcm5hbCBzb3VyY2UpDQo+IA0KPiBNeSBvdGhl
ciBvcHRpb24gaXMgDQo+IGh0dHBzOi8vZW5kcnVudGVjaG5vbG9naWVzLmNvbS9wcm9kdWN0cy9k
aXN0cmlidXRpb24vMTAtTUh6LWxvdy1waGFzZS1ub2lzZSA8aHR0cHM6Ly9lbmRydW50ZWNobm9s
b2dpZXMuY29tL3Byb2R1Y3RzL2Rpc3RyaWJ1dGlvbi8xMC1NSHotbG93LXBoYXNlLW5vaXNlPiwg
d2hpY2ggaXMgYWJvdXQgNXggbW9yZSBleHBlbnNpdmUuDQo+IA0KPiBUaGFua3MuDQo+IA0KPiBf
X19fX19fX19fX19fX19fX19fX19fX18NCj4gDQo+IEV1Z2VuZSBHcmF5dmVyLCBQaC5ELg0KPiBB
ZXJvc3BhY2UgQ29ycC4sIFByaW5jaXBhbCBFbmdpbmVlcg0KPiBUZWw6IDMxMC4zMzYuMTI3NA0K
PiBfX19fX19fX19fX19fX19fX19fX19fX18NCj4gDQo+IA0KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0t
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
