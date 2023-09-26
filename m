Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6697AF700
	for <lists+usrp-users@lfdr.de>; Wed, 27 Sep 2023 01:58:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BEF3B384D1F
	for <lists+usrp-users@lfdr.de>; Tue, 26 Sep 2023 19:58:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695772712; bh=+oc1M/K+v8MbDMT5J/xJ/KQIAiqw8qm6YyUNrE+W5ZY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=H6Mxgmw18U36LDrwTe11nQKIqetKMgkOVNQhLO4Cm/VDgfwbYJZMmdzSmtI+OXa95
	 QlGHynmAwjUiRL3jVCHngVYnlNj/TVGAj0pBocA5kF7gKIrGF1uvxCIFPkQqU7lq3y
	 UOlReUSIkzdJ1hJAS/WUre+qAf1dxI/2bsNmFwQ9FPbzg8eTGPY7JmcRQNl22WV97r
	 0giRaPAhB+uQT1SYb/EpGIJly4TLp09vNRG0pupLp2pOvXOyn83KamB9dEcdfPmQQY
	 F9Ic6qqqBQBgrtQqzpkjabwBGhhe9hIWI15tgadLoGN9mykALcFjH+3dsGjByR5YeI
	 rzw51lFyR6IMw==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 3366D384A42
	for <usrp-users@lists.ettus.com>; Tue, 26 Sep 2023 19:58:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IYabYWxn";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-773b18cf900so532678585a.0
        for <usrp-users@lists.ettus.com>; Tue, 26 Sep 2023 16:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695772707; x=1696377507; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WnvqJGiI5zXLOOM8pQLpf3cUeaOxatLJuIxAVitzLDI=;
        b=IYabYWxndpv00UcGmjEjmbrEVv7CliMvyG7Si3Ve+UhCs5JUaomprZixeGcjYyA8+b
         e1lZiK/iMBsx2F+6sIx1nVTcj2dFsep2EA5drypdEvfoUc6IP8qzoGmEQ+MNG2SYkcwh
         EMDw/Sk4NmpVXwsjgZZfFr6MOpCkZrKnzn57yKApGgo3pRtOvuANK6tSWorW/6QfV43F
         na9Lou44ST8dSxr7U3OHiXhP/YG6MjgfDkLJ5d3qtFTabsQiyQNZsUitFeDF1GELLf+m
         zwnRfwmcpqw+Is3Q+s9mxu5L1fWnazNMMMWwaXw0GCIKukByi3luncFQYSc5IgIFgfEE
         RCSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695772707; x=1696377507;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WnvqJGiI5zXLOOM8pQLpf3cUeaOxatLJuIxAVitzLDI=;
        b=EKojD3aS1DwUMcsLQ9Av6ptPFMBElp6JTOdfRpzYdMpF8dxQALbNBiZLEbpykL+8Jb
         GvVbu82XT8dnErxn/xboR/pASQSUwxP25byTQlLmdvQUutUcnfZ46bvkHm9n9dKCcG1t
         IOspI8JP8gAKugWGYP18jNp4lPnKkPGMVwVotvIccdBQmNLlC1zdKS7HfGc1erzItKFU
         dtZ8eLE0fpuAhrAhlK3hYG72mttS6nQHHKiCl1bbuZe+F9pV2/EbkfeUbXdTAqnTK1QU
         7+gB8oCRtPC87pCA2SAjqmScGSWOWGDr4vXbKqWs8S7zNfP4qqYc8a0MZADT9bRfHqTI
         Sdew==
X-Gm-Message-State: AOJu0YyOTCrKdYIaPB9ydQ2Vmcn61Ej2lq27tewu1REVkn6gVd1ISAp1
	C+nGM7O9YI1rpECVYI58k0SXxpXStK9pZw==
X-Google-Smtp-Source: AGHT+IH4l5wjEmC9+t5CJfcG4U3zZy8SauAPyc5mwgMAh/KUKl2j801Mj2c1wI6hNBoKTB394P8ERw==
X-Received: by 2002:a05:620a:2ae7:b0:774:e4e:34d with SMTP id bn39-20020a05620a2ae700b007740e4e034dmr403123qkb.33.1695772707421;
        Tue, 26 Sep 2023 16:58:27 -0700 (PDT)
Received: from [192.168.2.171] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id vu17-20020a05620a561100b00767dba7a4d3sm5121344qkn.109.2023.09.26.16.58.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Sep 2023 16:58:27 -0700 (PDT)
Message-ID: <8db267c7-73ba-f10c-d083-9747e8a35be6@gmail.com>
Date: Tue, 26 Sep 2023 19:58:26 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAErymBiwZv4-RmdGWZV=o1GO8Vn_9L-2yTqjwgtz1Fna3nyf8Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAErymBiwZv4-RmdGWZV=o1GO8Vn_9L-2yTqjwgtz1Fna3nyf8Q@mail.gmail.com>
Message-ID-Hash: BRXFU624MSBOJCAFFNRVY2Z2V42TZTRG
X-Message-ID-Hash: BRXFU624MSBOJCAFFNRVY2Z2V42TZTRG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Do I need package python3-uhd when I upgrade uhd?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BRXFU624MSBOJCAFFNRVY2Z2V42TZTRG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjYvMDkvMjAyMyAxOTo1NiwgQWNoaWxsZWFzIEFuYXN0YXNvcG91bG9zIHdyb3RlOg0KPiBJ
IHVzdWFsbHkgaW5zdGFsbCB1aGQgZnJvbSBldHR1cyBiaW5hcmllcyB0aHJvdWdoIHRoZSBzdWdn
ZXN0ZWQgbWV0aG9kOg0KPg0KPiBzdWRvIGFkZC1hcHQtcmVwb3NpdG9yeSBwcGE6ZXR0dXNyZXNl
YXJjaC91aGQNCj4gc3VkbyBhcHQtZ2V0IHVwZGF0ZQ0KPiBzdWRvIGFwdC1nZXQgaW5zdGFsbCBs
aWJ1aGQtZGV2IHVoZC1ob3N0DQo+DQo+IEhvd2V2ZXIsIGxvb2tpbmcgaGVyZToNCj4NCj4gaHR0
cHM6Ly9sYXVuY2hwYWQubmV0L35ldHR1c3Jlc2VhcmNoLythcmNoaXZlL3VidW50dS91aGQvK3Bh
Y2thZ2VzP2ZpZWxkLm5hbWVfZmlsdGVyPXVoZCZmaWVsZC5zdGF0dXNfZmlsdGVyPXB1Ymxpc2hl
ZCZmaWVsZC5zZXJpZXNfZmlsdGVyPWZvY2FsIA0KPiA8aHR0cHM6Ly9sYXVuY2hwYWQubmV0L35l
dHR1c3Jlc2VhcmNoLythcmNoaXZlL3VidW50dS91aGQvK3BhY2thZ2VzP2ZpZWxkLm5hbWVfZmls
dGVyPXVoZCZmaWVsZC5zdGF0dXNfZmlsdGVyPXB1Ymxpc2hlZCZmaWVsZC5zZXJpZXNfZmlsdGVy
PWZvY2FsPg0KPg0KPiBJIHNlZSBvbmUgbW9yZSBwYWNrYWdlICJweXRob24zLXVoZCIuDQo+DQo+
IERvIEkgYWxzbyBuZWVkIHRoaXMgcGFja2FnZSBpZiBJIHdhbnQgdG8gcnVuIGdudXJhZGlvIHdp
dGggVVNSUHMgYW5kIA0KPiB3YW50IHRvIGRvIGdudXJhZGlvIGRldmVsb3BtZW50wqBhcyB3ZWxs
IChlZywgT09UIG1vZHVsZXMgZXRjKT8NCj4NCk5vLsKgIFRoYXQgcGFja2FnZSBpcyB0aGUgcHl0
aG9uIGJpbmRpbmdzIGZvciBkaXJlY3QgdXNlIG9mIFB5dGhvbiB3aXRoIA0KVUhELCB3aXRob3V0
IEdudSBSYWRpby4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQo=
