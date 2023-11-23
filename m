Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3516F7F6463
	for <lists+usrp-users@lfdr.de>; Thu, 23 Nov 2023 17:51:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9470E384B1A
	for <lists+usrp-users@lfdr.de>; Thu, 23 Nov 2023 11:51:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700758273; bh=9+YCg+kWXgMTsINjFu93+SWd2F4atO0x3wPFTPIjFns=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=pTk4yIc0KCmx6p0FD7y6kMIq1jsNAVOalGufhK7y28h09rWoNFtzqFIfOk0RSo2Fk
	 2GvsnStroKcuLXDaVyO/os04rmyMX9x6Z8P08PJNk8J+6t72MNC7wXA08hnkQjU/MK
	 Ze1YoW7bKkJF0+3rqoXO9cqpEkzj9igEmeQzPcTPHlkNXP7T2eQ+uewzWGuAbaXvAp
	 mKf8Ya4nB78Phe2e9PBAJTusOSgcmAOvh7z2swEizVKFHZQwqBG+wUnCiHtrelETdb
	 sG955ZelRuWqQBXLVNabq0sKYwKdaM6HVms9qpAZpZJoPMGoD/e9i4vtoZgLZGSiWA
	 +/WJCY0yhKovQ==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 263A03849C0
	for <usrp-users@lists.ettus.com>; Thu, 23 Nov 2023 11:50:51 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RPRXDI/k";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-67a0e1ef63bso1621336d6.3
        for <usrp-users@lists.ettus.com>; Thu, 23 Nov 2023 08:50:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700758250; x=1701363050; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IVJCxPaDHED5EkhAGSksMgA5zwG6ZC/hISQg4cAGLcM=;
        b=RPRXDI/ksT4II7++iCLt2YCuvyCLQ8jTuxqY4o2OSbMgHOt5tfEgNHlQ5eTiQ6OPj4
         UW7YLXN4me0VhSrj4te/IVn1vm8IsfGXuu5kxXzZzBqMbd8Sui/Za4uXMs6YJ/g7r5L3
         cPr4Ze/dRSHMqpvS6Uc4GTV8rpWpKPAjfMVrc65Uju1wGR/b4q/MeCkcu7R/yk25NXvM
         AOOF/f5IPw2xL+zcs0ZlBsMsMDlrC9OazqQJs25biqtvgIMjXazzZQO6r45mjeqSmlPo
         S+8rczZdYU/CdkzPQDbFYwwTfndABwfqhorFJCCxqTm+rpQkGX83QDuEGuRBLRIVCpJY
         KKQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700758250; x=1701363050;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IVJCxPaDHED5EkhAGSksMgA5zwG6ZC/hISQg4cAGLcM=;
        b=F2jWdtmWYAwwxwSmPMzG0rrbrvEFiE7ClG7XRuFNoWI0nI0kXUIE5g7brwnNwWGX4+
         /GLDud6GFsb3KrMjXnNQb3rC4LU1sI9NbB2JFiPcfJVjAuMeBD9zQ580yc64y4tEdPtS
         XBYpPpytlJG5CGeHLH0OtqZQQgaeDVEewRJLDwORl/VmlqP9YF186mvC2psjlbnbDJ1F
         cb9rMJKuBtg406vZLE3Leb/W6g3EL5JcqnNBHmOl0QPwqMDEIT5j4BGVStv5xtpdt5GK
         vX9vzz+9B0QEMQ2AK2cayqlKz4WGlSdaHwelPryiM0wWJmwgqLdVCrCgUG2rPoTRja2Z
         h6Yw==
X-Gm-Message-State: AOJu0Yx/cDqbKD7aJNWQzIpqBdPdTdvq85b+wgmfTjQ8BvebKkBuBCBU
	carBGLWL3YvBm2H34Lvx/s3DRxoE4hA=
X-Google-Smtp-Source: AGHT+IHnHqs7/3qWbAQLgf7qs87dyWuyAdWkZKHWQvUAJY48E2SfOv9RfhmOs50mby0lNhgHteBICw==
X-Received: by 2002:a0c:eb90:0:b0:679:f6e4:5ef1 with SMTP id x16-20020a0ceb90000000b00679f6e45ef1mr48249qvo.32.1700758250344;
        Thu, 23 Nov 2023 08:50:50 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id mn23-20020a0562145ed700b0067a0a00b24csm491762qvb.73.2023.11.23.08.50.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Nov 2023 08:50:50 -0800 (PST)
Message-ID: <3eef1048-c6df-480b-9af9-6ea7b8b9e366@gmail.com>
Date: Thu, 23 Nov 2023 11:50:41 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <PH0PR11MB5095A4703514F7B1FCBF1EEB9CB9A@PH0PR11MB5095.namprd11.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PH0PR11MB5095A4703514F7B1FCBF1EEB9CB9A@PH0PR11MB5095.namprd11.prod.outlook.com>
Message-ID-Hash: SVVY3RL4DPIR3VHKNTAVMAHU3CC6FYTX
X-Message-ID-Hash: SVVY3RL4DPIR3VHKNTAVMAHU3CC6FYTX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPIO delay on B210 (Timed command)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SVVY3RL4DPIR3VHKNTAVMAHU3CC6FYTX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjMvMTEvMjAyMyAwNToxNywgUm9nbnNrb2csIEpvaG4tSGFycnkgdmlhIFVTUlAtdXNlcnMg
d3JvdGU6DQo+IEhpLA0KPg0KPiBJIGFtIG1lYXN1cmluZyBHUElPIGRlbGF5IGJldHdlZW4gUFBT
IGlucHV0IGFuZCBHUElPIG91dHB1dCBvZiBhcHByb3hpbWF0ZWx5IDkvTUNMSyB1c2luZyB0aGUg
c2NyaXB0IGJlbG93LiBJIGhhdmUgcnVuIHRocm91Z2ggYWxsIG1hc3RlciBjbG9jayBmcmVxdWVu
Y2llcyB3aXRoIDFNSHogc3RlcHMgYW5kIG1lYXN1cmluZyB0aGUgUFBTIGlucHV0IGFuZCBHUElP
IG91dHB1dCBvbiBhIG9zY2lsbG9zY29wZS4NCj4gRm9yIGV4YW1wbGUgYSA0TUh6IG1hc3RlciBj
bG9jayBnaXZlcyBhIGRlbGF5IG9mIDIuMXVzIGFuZCBhIDQwTUh6IG1hc3RlciBjbG9jayBnaXZl
cyBhIGRlbGF5IG9mIDIyMG5zLg0KPiBDb3VsZCBhbnlvbmUgc2hlZCBhIGxpZ2h0IG9uIHdoZXJl
IHRoaXMgZGVsYXkgY29tZXMgZnJvbSwgaXMgdGhlcmUgYW4gaW5wdXQgZGVsYXkgZnJvbSBQUFMg
dG8gVklUQSB0aW1lLCBvciBpcyB0aGlzIGRlbGF5IG9ubHkgb24gdGhlIEdQSU8gb3V0cHV0Pw0K
Pg0KPiBpbXBvcnQgdWhkDQo+IGltcG9ydCB0aW1lDQo+DQo+IHVzcnAgPSB1aGQudXNycC5NdWx0
aVVTUlAoKQ0KPiB1c3JwLnNldF9tYXN0ZXJfY2xvY2tfcmF0ZSg2MWU2KQ0KPg0KPiAjIHNldCB0
aW1pbmcgc291cmNlcw0KPiB1c3JwLnNldF9jbG9ja19zb3VyY2UoImV4dGVybmFsIikNCj4gdXNy
cC5zZXRfdGltZV9zb3VyY2UoImV4dGVybmFsIikNCj4NCj4NCj4gIyBzZXQgR1BJTyByZWdpc3Rl
cnMNCj4gdXNycC5zZXRfZ3Bpb19hdHRyKCdGUDAnLCdDVFJMJywgMHgwMDAsIDB4RkZGKQ0KPiB1
c3JwLnNldF9ncGlvX2F0dHIoJ0ZQMCcsJ0REUicsIDB4RkZGLCAweEZGRikNCj4gdXNycC5zZXRf
Z3Bpb19hdHRyKCdGUDAnLCdPVVQnLDB4M0ZGLCAweDNGRiwgMCkNCj4NCj4gIyBzeW5jaHJvbml6
ZSB0byB0aW1lDQo+IHVzcnAuc2V0X3RpbWVfdW5rbm93bl9wcHModWhkLnR5cGVzLlRpbWVTcGVj
KDApKQ0KPiB1c3JwLnNldF90aW1lX25leHRfcHBzKHVoZC50eXBlcy5UaW1lU3BlYygwKSkNCj4N
Cj4gZm9yIGkgaW4gcmFuZ2UoMTAwMDAwMCk6DQo+ICAgICAgcHBzdGltZSA9IHVzcnAuZ2V0X3Rp
bWVfbGFzdF9wcHMoKQ0KPg0KPiAgICAgICMgY2xlYXIgRlBHQSBjb21tYW5kIHF1ZXVlDQo+ICAg
ICAgdXNycC5jbGVhcl9jb21tYW5kX3RpbWUoKQ0KPiAgICAgIHRyaWdnZXJ0aW1lID0gdWhkLnR5
cGVzLlRpbWVTcGVjKHBwc3RpbWUuZ2V0X2Z1bGxfc2VjcygpICsgMSkNCj4NCj4gICAgICB1c3Jw
LnNldF9jb21tYW5kX3RpbWUodHJpZ2dlcnRpbWUpDQo+DQo+ICAgICAgcHJpbnQoImxvb3AgIixp
LCBwcHN0aW1lLmdldF9mdWxsX3NlY3MoKSwgcHBzdGltZS5nZXRfZnJhY19zZWNzKCksICJ0cmln
Z2VydGltZSIsIHRyaWdnZXJ0aW1lLmdldF9mdWxsX3NlY3MoKSwgdHJpZ2dlcnRpbWUuZ2V0X2Zy
YWNfc2VjcygpICkNCj4NCj4gICAgICAjIGlzc3VlIHRoaXMgY29tbWFuZCBhdCBwcHN0aW1lICsg
aQ0KPiAgICAgIHVzcnAuc2V0X2dwaW9fYXR0cignRlAwJywgJ09VVCcsIDB4RkZGLCAweEZGRikN
Cj4NCj4gICAgICAjIGlzc3VlIHRoaXMgY29tbWFuZCBzZXQgcHBzdGltZSArIGkgKyAwLjENCj4g
ICAgICB1c3JwLnNldF9jb21tYW5kX3RpbWUodHJpZ2dlcnRpbWUgKyAwLjEpDQo+ICAgICAgdXNy
cC5zZXRfZ3Bpb19hdHRyKCdGUDAnLCAnT1VUJywgMHgwLCAweEZGRikNCj4NCj4gICAgICB0aW1l
LnNsZWVwKDAuOSkNCj4NCj4gQ2hlZXJzLA0KPiBKb2huDQo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0t
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NClRoZSBtYXN0ZXIgY2xvY2sg
ZGV0ZXJtaW5lcyBGUEdBIGNsb2NraW5nIGFzIHdlbGwgYXMgcmFkaW8gYW5kIHNhbXBsZXIgDQpj
bG9ja2luZy7CoCBJdCBhbHNvIGRldGVybWluZXMgdGhlIGdyYW51bGFyaXR5IG9mDQogwqAgdGhl
IHRpbWUtb2YtZGF5IGNsb2NrLg0KDQpZb3UncmUgbG9va2luZyBhdCBsYXRlbmN5IGltcG9zZWQg
YnkgdGhlIEZQR0EgImNvZGUiLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVh
dmVAbGlzdHMuZXR0dXMuY29tCg==
