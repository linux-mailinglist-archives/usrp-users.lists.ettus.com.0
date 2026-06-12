Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Pna6FYYaLGrqLQQAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2026 16:41:10 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EAE67A471
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2026 16:41:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=P3e9bwSf;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=YfFZwQMg;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=fail reason="No valid SPF, DKIM not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 09BEA386658
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2026 10:41:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1781275268; bh=LGpiq+XTU+okz/Dc+E016qdSAa7NHW1IBvcRnH72IDM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=P3e9bwSf6BdRdVoOJNADwHhs7/FJBPKljLGN+3Snl3o87VhZgGjtwihfk5eVwwKW3
	 YvAXhxjRyl2UHf+6kMEvlmvKdfDI4O7yTxOmNGJTuOqmA/xm6URzh0s24LeJI09fLX
	 IoEqQlVlNAJXGnCk0mXnyssfgrE/Sp/U/WNAPcnfpTyhzavu3Lhaz5rbrMLLsa4yqq
	 xOnspm+kyI2jk5gRqWHC5k0J5wHtvTYLBCBotnmxEZekCNgy95QE15QrVb+rcPJqNO
	 QN/O1MZ4MrMn1cnwU0UqaXsqmUWGosTz+z5h8XvxnETfOsOp0W4DgdA4YD9RtaI4lz
	 K8y7Gr+ufSQvQ==
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 21CBC386501
	for <usrp-users@lists.ettus.com>; Fri, 12 Jun 2026 10:40:24 -0400 (EDT)
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-5175cb5946dso7065831cf.0
        for <usrp-users@lists.ettus.com>; Fri, 12 Jun 2026 07:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781275223; x=1781880023; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qlqv/P4wBSjdSxkHqpgcdU4Rr7jAfENghHRCnrYV7Y0=;
        b=YfFZwQMgyTV0MW8QyoHU/HNwj33pOwYsSfZqddBFRrGf9KfK7n3oySabKZYQXDMn3f
         Ru6mGL7nHF6HYDhtlZ8twfoYKeuenYHcH3FrCOAUFDRLJOMlBg+33CHCdjomhSKyHyWf
         r1+aJU2T8Yiwf8c6N1bGnCxw24yOago962ifIN0gkpiL7cBdNT/pTQmw/4zjGD69OVVK
         nkiY81rXh3TG6cHmAU94yA/9vgelOWs/Up8n6v5Ao4ZonKb18E9mMrjIcZIXzCfPWT2r
         pGFGQW98PGK/LEoK/Q4pNwtTg/GUYCiHKWfAbgs6EVbvRPR+fQAPBhk/onUBPkCD3c/7
         1CGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781275223; x=1781880023;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qlqv/P4wBSjdSxkHqpgcdU4Rr7jAfENghHRCnrYV7Y0=;
        b=Wi9Oth7/ejEtBM9pB3P7AYza/jLfZ9dyNSjp/+0YwLr9syQxXFs7XeqI1eY3am6bhU
         nhmMU+2PIOyB4HbGzG77pLiNeL2C8QBv9ljwb2irSq3aH8T71bsqciFiTnZDEaevcxk+
         sbgxYV+JYzlrpyPS0BhhMM2HrIMpVl/1JGqjgdoZkfcq3fHWjH6sPj/+XbKXy8EvvNrE
         b5FUJAIb2vXUJsS68xqx9oHCDuMaeTerT72FSz/lyA19zXHSI74VAgjCeIPnEAqpLfVJ
         hXAC35qJSqYsSUTR+PUx11Swro7+tVt2jkeAUOihPZLiB6QC2JZMxJVjL26rUwr2Zjsq
         OmYg==
X-Gm-Message-State: AOJu0YxRG4rO0Kc1u6G7Iq6yxmYHSbMOOOaHkYMUs4BzLD/oMViUqCbK
	VS1cFDb3dWTi8jF/81f9Ie+jlp/Q/2ty7LBKH8nji5p16lONXfYPn50GX0RhgqYC
X-Gm-Gg: Acq92OGt1g1ZHakCAOqDOnbLua1bX96D3xUx8JjLbDLdHB0HThfEfTe2KSPGp7D9n5V
	MwWRrF9oTC8d6XBDr9uwbSn1oTOcCggA21kD7ZphOWU4UePJBTDG5hdEEPuhiNbuUD7bF32QkDg
	lTKAdgGNv1L6zrH1wKl7fab2Zd3ErptJF0kaQlbFLsvVmMk6RqN768VVmNtHTewX8C6VRowRpKT
	B7t5UxRDflGc9+jYOWOYbZT2HwwarbBSu6MOntbqdrBDqwfuco9+UQVxnsq1X/t99Vlf43tlF+9
	EXmRwFbhyXSvyknV5tAeHjfQs+zN7Eb/R06YKaFgp7R3BJjZXOTIUoiZ8nOYaK20iWw5B0mC0BD
	0w2pL7gkO/VcG8pvnzVVKpynqDxhYWJE7lpXFxgYsZkVXPL5i5usYXz0fF4WdsqpKzZgkj3KWse
	ZiPhy/dddH2c4t22SVTDw/16vBRCZhtK8=
X-Received: by 2002:a05:622a:860c:b0:50e:62ba:3ff7 with SMTP id d75a77b69052e-517fe5ba25fmr30758521cf.26.1781275223110;
        Fri, 12 Jun 2026 07:40:23 -0700 (PDT)
Received: from [192.168.2.233] ([174.93.0.178])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-517fb7a2227sm22339871cf.16.2026.06.12.07.40.22
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jun 2026 07:40:22 -0700 (PDT)
Message-ID: <e0a34a81-3f17-4cc4-86fd-0779ee7ef7b1@gmail.com>
Date: Fri, 12 Jun 2026 10:40:10 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <896d01fd-d484-4d45-89d6-7b498e03aa3a@syss.de>
 <PH0PR11MB5095564916CB9A0C3E0F11E69C182@PH0PR11MB5095.namprd11.prod.outlook.com>
 <ebbc933d-3e1d-40fa-845b-dc1e66f61c3d@syss.de>
 <PH0PR11MB5095F734F5F4164369315EF39C182@PH0PR11MB5095.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PH0PR11MB5095F734F5F4164369315EF39C182@PH0PR11MB5095.namprd11.prod.outlook.com>
Message-ID-Hash: NBZFBJ7RADFZPEFXC6WMQXJXCEMEEAAW
X-Message-ID-Hash: NBZFBJ7RADFZPEFXC6WMQXJXCEMEEAAW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200 frequency shifted
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NBZFBJ7RADFZPEFXC6WMQXJXCEMEEAAW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.51 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS(0.00)[m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_REJECT(0.00)[gmail.com:s=20251104];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER(0.00)[patchvonbraun@gmail.com,usrp-users-bounces@lists.ettus.com];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patchvonbraun@gmail.com,usrp-users-bounces@lists.ettus.com];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 51EAE67A471

T24gMjAyNi0wNi0xMiAwNToxNCwgUm9nbnNrb2csIEpvaG4tSGFycnkgdmlhIFVTUlAtdXNlcnMg
d3JvdGU6DQo+IEhpIENocmlzdGlhbiwNCj4NCj4gTm8sIHdoYXQgeW91IG5lZWQgaXMgYSBnb29k
IGV4dGVybmFsIGNsb2NrLiBUaGUgaW50ZXJuYWwgY2xvY2sgd2lsbCBkcmlmdCB3aXRoIHRlbXBl
cmF0dXJlIGFuZCBhZ2UgZXRjIGFuZCBpcyBub3QgZGV0ZXJtaW5pc3RpYy4NCj4gRGVwZW5kaW5n
IG9uIHlvdXIgcHJpY2UgcG9pbnQsIHRoZXJlIGFyZSBtdWx0aXBsZSBvcHRpb25zLCBmcm9tIGNo
ZWFwIEdQU0RPJ3MgZG8gdGhlIGhpZ2hlc3QtZW5kIEZ1Z3JvIEF0b21pY2hyb24gb25lcyAoU3Bh
cmtmdW4gR05TU0RPIGZvciBleGFtcGxlKS4NCj4NCj4gS2luZCByZWdhcmRzLA0KPiBKb2huDQpD
aGVhcCBHUFNET3MgYXJlIGF2YWlsYWJsZSBmcm9tIHBsYWNlcyBsaWtlIExlbyBCb2RuYXIsIGFu
ZCB0aGV5IGhhdmUgYSANCmdvb2QgcmVwdXRhdGlvbi4NCg0KSSd2ZSBhbHNvIHNvdXJjZWQgcmVh
c29uYWJseS1wcmljZWQgMTBNSHogT0NYTyBtb2R1bGVzIGZyb20gQW1hem9uIG9mIA0KYWxsIHBs
YWNlcy4NCg0KVGhlIHNwZWMgZm9yIHRoZSBCMjAwIGlzICsvLTJQUE0sIGFuZCA1a0h6IGF0IDIu
NkdIeiBpcyB3aXRoaW4gdGhpcyANCnNwZWMuwqAgwqBDcnlzdGFsIG9zY2lsbGF0b3JzIGFyZSBz
dWJqZWN0IHRvIHRoZXJtYWwNCiDCoCBlZmZlY3RzLCBhbmQgKmFnaW5nKiwgc28gbWF5IG5vdCBh
bHdheXMgcHJvdmlkZSBhY2NlcHRhYmxlIGFjY3VyYWN5IA0Kb3ZlciB0aGVpciBsaWZldGltZXMu
DQoNClRoZSB3aG9sZSByZWFzb24gZm9yIHRoZSBleHRlcm5hbCBjbG9jayBpbnB1dHMgb24gVVNS
UHMgaXMgZm9yIA0KYXBwbGljYXRpb25zIHdoZXJlIGhpZ2hlciBjbG9jayBhY2N1cmFjeSBpcyBy
ZXF1aXJlZC4NCg0KDQo+DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IENo
cmlzdGlhbiBaw6Rza2UgPGNocmlzdGlhbi56YWVza2VAc3lzcy5kZT4NCj4gU2VudDogRnJpZGF5
LCBKdW5lIDEyLCAyMDI2IDEwOjUwIEFNDQo+IFRvOiBSb2duc2tvZywgSm9obi1IYXJyeSA8ai5y
b2duc2tvZ0BmdWdyby5jb20+OyB1c3JwLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bT4NCj4gU3ViamVjdDogUmU6IFtVU1JQLXVzZXJzXSBCMjAwIGZyZXF1ZW5jeSBzaGlmdGVkDQo+
DQo+IEhpIEpvaG4sDQo+DQo+IHllcyB3ZSBhcmUgdXNpbmcgdGhlIGludGVybmFsIGNsb2NrLiBJ
dCBpcyBqdXN0IGEgYml0IHdlaXJkIHRoYXQgdGhlDQo+IGV4YWN0IHNhbWUgc2V0dXAgd29ya2Vk
IGluIHRoZSBwYXN0LiBXZSB0aGVuIGhhZCB0aGUgU0RSIGRlcGxveWVkIGluDQo+IGFub3RoZXIg
cHJvamVjdCBhbmQgbm93IHdhbnRlZCB0byB0cnkgdGhlIHNldHVwIGFnYWluIGFuZCBpdCBzdG9w
cGVkDQo+IHdvcmtpbmcgYmVjYXVzZSBvZiB0aGUgc2hpZnQuDQo+DQo+IEJ1dCBpZiBpdCBpcyB0
ZWNobmljYWxseSB3aXRoaW4gc3BlYyBhbmQgd2UgY2FuJ3QgcmVhbGx5IGRvIGFueXRoaW5nIHRv
DQo+IGZpeCB0aGlzLCBJIGd1ZXNzIHdlIGp1c3QgbmVlZCBhIG5ldyBTRFINCj4NCj4gT24gNi8x
Mi8yNiAxMDo0MiwgUm9nbnNrb2csIEpvaG4tSGFycnkgd3JvdGU6DQo+PiBIaSwNCj4+IEkgYXNz
dW1lIHlvdSBhcmUgdXNpbmcgaW50ZXJuYWwgY2xvY2s/IDVrSHogaXMgd2l0aGluIGl0cyBzcGVj
IChiYXJlbHkpLiBNeSB1bml0cyB2YXJ5IGluIHRoYXQgcmFuZ2UsIGFsdGhvdWdoIG5vdCBhcyBt
dWNoIGluZGl2aWR1YWxseS4NCj4+IEtpbmQgcmVnYXJkcywNCj4+IEpvaG4NCj4+DQo+PiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPj4gRnJvbTogQ2hyaXN0aWFuIFrDpHNrZSB2aWEgVVNS
UC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+DQo+PiBTZW50OiBGcmlkYXksIEp1
bmUgMTIsIDIwMjYgMTA6MzUgQU0NCj4+IFRvOiB1c3JwLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbT4NCj4+IFN1YmplY3Q6IFtVU1JQLXVzZXJzXSBCMjAwIGZyZXF1ZW5jeSBzaGlm
dGVkDQo+Pg0KPj4gSGVsbG8sDQo+Pg0KPj4gKFNvcnJ5IGlmIHRoaXMgaXMgYSBkdXBsaWNhdGUs
IEkgdGhpbmsgdGhlcmUgd2VudCBzb21ldGhpbmcgd3Jvbmcgd2l0aCBteSBsYXN0IGVtYWlsIHRv
IHRoZSBtYWlsaW5nIGxpc3QpDQo+Pg0KPj4gSW4gdGhlIHBhc3QsIHdlIHVzZWQgYSBCMjAwIGFu
ZCBzcnNSQU4gdG8gYnVpbGQgb3VyIG93biBMVEUgY2VsbCwgd2hpY2ggYWx3YXlzIHdvcmtlZCBm
bGF3bGVzc2x5LiBBZnRlciBzb21lIHRpbWUsIHdlIHdhbnRlZCB0byBidWlsZCB0aGlzIHNldHVw
IGFnYWluIGJ1dCB3ZSByYW4gaW50byBhbiBpc3N1ZTogVGhlIHBob25lIG5ldmVyIGZvdW5kIHRo
ZSBjZWxsLg0KPj4NCj4+IEFmdGVyIGxvb2tpbmcgaW50byB0aGUgcHJvYmxlbSBJIG5vdGljZWQs
IHRoYXQgdGhlIG91dHB1dCBmcmVxdWVuY3kgb2YgdGhlIEIyMDAgaXMgc2hpZnRlZCBhcm91bmQg
KzUga0h6IGF0IGFyb3VuZCAyLjYgR0h6IChWZXJpZmllZCBpdCB3aXRoIGFub3RoZXIgU0RSKS4g
VG9vIG11Y2ggZm9yIHRoZSBwaG9uZSB0byBnZXQgdGhlIHNpZ25hbCBwcm9wZXJseS4gV2hlbiBJ
IG1hbnVhbGx5IGFkanVzdCB0aGUgZnJlcXVlbmN5IGluIHNyc1JBTiB0byBjb21wZW5zYXRlIGZv
ciB0aGUgNSBrSHogc2hpZnQsIHRoZSBwaG9uZSBpbW1lZGlhdGVseSBkZXRlY3RzIHRoZSBjZWxs
Lg0KPj4NCj4+IEF0IGxvd2VyIGZyZXF1ZW5jaWVzLCB0aGUgc2hpZnQgYWxzbyBnZXRzIGxvd2Vy
Lg0KPj4NCj4+IElzIHRoZXJlIHNvbWV0aGluZyB3ZSBjYW4gZG8gdG8gcmV2aXZlIHRoZSBCMjAw
P8KgIEJlY2F1c2UgdGhpcyBleGFjdCBzZXR1cCB3b3JrZWQgaW4gdGhlIHBhc3QsIEkgdGhpbmsg
c29tZXRoaW5nIGhhcHBlbmVkIHRvIHRoZSBiMjAwIHRoYXQgY2F1c2VzIHRoaXMgc2hpZnQuDQo+
Pg0KPj4gVGhhbmtzIGluIGFkdmFuY2UsDQo+PiBDaHJpc3RpYW4NCj4+DQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
