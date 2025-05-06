Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4CDAAD1A6
	for <lists+usrp-users@lfdr.de>; Wed,  7 May 2025 01:45:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C5E7E3861A4
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 19:45:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746575141; bh=TfBnN2mMSjxaEw7EX6qrS4Ws8N5vL4IZc6q9gH+rlbw=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=J0L+CyiHUedSSuzHHKc5b7tAdbSC/9pZWg1WGv9qKjSb//lIyvoWU/guB26X7ZiRJ
	 aXXTRQ79ipDBuNKS9ssuG90SA5lF8VeBG0Ce2ixAmv4ZY5r0Fnrtl5BC+KTCzpecWL
	 /5EVqIL5JgSgOJNLA/K5OmzhdmWWjAWC+nIHUUsTjuhMm0i5bdoqBuSDWrke5r2sFE
	 TtTeB3eJFmCSIEOalZVfef2mjhN8vpBI6FmKkoZJGJ11UqAlxc5AvImawZkyVIXrgM
	 sWUeCmnKglW6yqWDM3+bxTtyzUC1oQe6/NxdBb1G4rHpxeSx9fGKcJ575NxcEBjBPB
	 k0bGkg944cD/g==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id B84D938612C
	for <usrp-users@lists.ettus.com>; Tue,  6 May 2025 19:44:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MnByxXAV";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7c597760323so652809385a.3
        for <usrp-users@lists.ettus.com>; Tue, 06 May 2025 16:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746575084; x=1747179884; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Dte8g+CDMqSzApl/tdFZMELvn4VGNgaIAsp7LiZfags=;
        b=MnByxXAV/ZaUXybMAZJ1wvoK+e1YarumIdzPLDZvHEYMEWhycbJxAlHfh5mEhldG1q
         TcFIb87D7QWn8atJ+WOmmUZzf9YRDVuuqOXROPCfTU3VVtXgNaKoCdHYQy95X6tv22Qg
         cpTTSCwVjiMdg/5zbtRiLDVN7EbNItx6gvS/b8HnYJ6qRL5TG1fO9dA3QQgzRLi2WtIX
         Vim/C4fJvbDQOiKljjoF7TIh4jQdIUyJuDZARld9b8Rr/lBrCA5Ma5yOTFz18xCoWu/G
         kPI+Tw1pOZOQVqwh3L6LyoMfym3bhqOBG/69g8WkUY8f2P+eoNAQjXCZMiqVC7gk4k0G
         Yoqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746575084; x=1747179884;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Dte8g+CDMqSzApl/tdFZMELvn4VGNgaIAsp7LiZfags=;
        b=KKwwerFmmJZDag4J4HmRTVS6us37mQl8S5iF6hRtQeQoPTOjrv9PAnINwUE6d2ZzJH
         AQHaKXzy0vZeC0XCw6Y+aTaLml1LohToOTc5prAfHnLvJmVENTf2ZHldIgnwpmjdAudm
         pO0qqjqUG0SwsgM0PSDzZTWbozov9nTcoGXBCdcNXHEhxtQRAtzU+eShPmtC0fgakb1w
         wXFyD38pcTIaiEOtQFm6x+DwwvBaTuKMauvXEyRjKO9OUtTQ7hsnmVxrG5vzPqrtscq0
         ehdCe9+ScomXefuGPZOqVz/VFTbuszau5GZBokZNOiumaMkVMNmb//U53QEI7EIfVJwR
         5IPw==
X-Gm-Message-State: AOJu0YwFNPGYSZSQGWe5l03oaibX7Me9rhO21D487+DLXqHzeInLE+gK
	jwwdnQxnXWz0+TeoMKqHV+Df9nekpVmNl0Xh5jDeAg8vLfmlpC2VnBaNYfDq
X-Gm-Gg: ASbGncvUCoUO6GvfCEwrRptIyDglJruqeyMJaqInu34u7xOH4CsdwTJvAf4Dfd3NRlR
	1tFb08GtM8EfFLhlvhKtkREm9kra7+acF88dO1uqCVgozAyusU3kUIaqLI42iP0sJPiKQwdXzW0
	lk0FfMcQfssdBuduxb9gl6SeLee2+GfRcgGTqaQ3rfdJjy0WUYWgVbnBMaC6kgkmBAoYgvqeoN+
	S7QR+wq0ncgmR8I+bMI2eZf+7C2a42/Zck+4HYh4KcZPpjvG6FrDgLILJbHsl/VBHNE5NFDH4Q8
	vmKD/YyUMFRSnHr1ra3+idpUJMI0NpMLaCiS4cTsYcR9GszspQ==
X-Google-Smtp-Source: AGHT+IGK9w8ydJDojU2ikqrSFlxF2xcoJBqX4BsZP5a/Ux5V9XpTHqAAjzm/CC/t1ECEJJfseJQmkA==
X-Received: by 2002:a05:620a:1a87:b0:7c5:5584:dc1b with SMTP id af79cd13be357-7caf74154ecmr216887785a.54.1746575084018;
        Tue, 06 May 2025 16:44:44 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7caf75d97f5sm46249785a.113.2025.05.06.16.44.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 May 2025 16:44:43 -0700 (PDT)
Message-ID: <02c3a25a-764e-4ed2-9189-863c8498468e@gmail.com>
Date: Tue, 6 May 2025 19:44:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bill weedon <whw@appliedradar.com>
References: <9a1b6218-c420-4a88-afe2-af29a89d23bd@gmail.com>
 <43D07915-6C31-43D8-9A42-4818AD5B776D@appliedradar.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <43D07915-6C31-43D8-9A42-4818AD5B776D@appliedradar.com>
Message-ID-Hash: CNJ7ZPUQUCN3B4NJHABD7MBAYJLEGHMJ
X-Message-ID-Hash: CNJ7ZPUQUCN3B4NJHABD7MBAYJLEGHMJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205mini Discovery Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CNJ7ZPUQUCN3B4NJHABD7MBAYJLEGHMJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDYvMDUvMjAyNSAxODo1NiwgQmlsbCB3ZWVkb24gd3JvdGU6DQo+IEkgc3VzcGVjdCB0aGUg
ZGV2aWNlIHdhcyB3aXBlZCBhcyB5b3Ugc3RhdGVkLiBJcyB0aGVyZSBhIHJlbWVkeSB0byBicmlu
ZyBpdCBiYWNrIHRvIGZhY3Rvcnkgc3RhbmRhcmRzPyBUaGVyZSBpcyBhIG1pY3RvciBjb25uZWN0
b3Igd2l0aCBGWDMgSlRBRyBidXQgcmVxdWlyZXMgbWF0aW5nIGNvbm5lY3RvciwgcHJvZ3JhbW1l
ciBhbmQgYmluYXJ5IGltYWdlLg0KPiBUaGFua3MsDQo+IEJpbGwgV2VlZG9uDQpUaGVyZSBpcyB0
aGlzOg0KDQpodHRwczovL3d3dy5ldHR1cy5jb20vYWxsLXByb2R1Y3RzL2p0YWctZngzLWNhYmxl
LTI0Lw0KDQpUaGVyZSdzIGEgYm9vdGxvYWRlciBpbWFnZSBoZXJlOg0KDQovdXNyL3NoYXJlL3Vo
ZC9pbWFnZXMvdXNycF9iMjAwX2JsLmltZw0KDQpJIGRvbid0IGtub3cgaWYgdGhhdCBpbWFnZSBj
YW4gYmUgcHJvZ3JhbW1lZCBvdmVyIEpUQUcsIG9yIHNvbWUgb3RoZXIgDQppbWFnZSBpcyByZXF1
aXJlZC7CoCBUaGVyZSBpcyBhIHV0aWxpdHk6DQoNCi91c3IvbGliL3VoZC91dGlscy9iMnh4X2Z4
M191dGlscw0KDQpUaGF0IGlzIHVzZWQgKndoZW4gdGhlIGRldmljZSBhY3R1YWxseSBhcHBlYXJz
IG9uIFVTQiouwqDCoCBJbiB5b3VyIGNhc2UsIA0KInNpZGUgbG9hZGluZyIgdGhyb3VnaCBKVEFH
LS0tPkZYMyBpcyBub3Qgc29tZXRoaW5nIEkNCiDCoCBoYXZlIGEgcHJvY2VkdXJlIGZvciwgYnV0
LCBsaWtlIEkgc2FpZCwgSSdtIHRyeWluZyB0byBmaW5kIG91dC4NCg0KDQo+DQo+IE9uIE1heSA2
LCAyMDI1LCBhdCA1OjQz4oCvUE0sIE1hcmN1cyBELiBMZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFp
bC5jb20+IHdyb3RlOg0KPg0KPiDvu79PbiAwNi8wNS8yMDI1IDE2OjU1LCB3aHdAYXBwbGllZHJh
ZGFyLmNvbSB3cm90ZToNCj4+IFdlIHRyaWVkIHBsdWdnaW5nIHRoZSB1bml0IGludG8gc2V2ZXJh
bCBQQ+KAmXMgYW5kIGxhcHRvcHMsIGFuZCBpdCBzZWVtcyB0aGUgZGV2aWNlIGlzIG5vdCBlbnVt
ZXJhdGluZy4gSSBhbSBzdGFydGluZyB0byB0aGluayB0aGUgRlgzIEVFUFJPTSBpcyBjb3JydXB0
LiBJcyB0aGVyZSBhIHdheSBmb3IgdGhlIHVzZXIgdG8gcmVzZXQgdGhlIEZYMyBmaXJtd2FyZSB0
byBmYWN0b3J5IHNldHRpbmc/IElzIGEgcHJvZ3JhbW1pbmcgY2FibGUsIEZYMyBpbWFnZSwgYW5k
IHByb2dyYW1tZXIgYXZhaWxhYmxlPw0KPj4NCj4+DQo+IEknbSB0cnlpbmcgdG8gZmluZCB0aGF0
IG91dC4gIElmIGl0IHdvbid0IGVudW1lcmF0ZSwgdGhlcmUncyBubyB3YXkgdG8gZ2l2ZSB0aGUg
RlgzIGEgZmFjdG9yeS1mcmVzaCBib290IGltYWdlIG92ZXIgVVNCLg0KPg0KPiBUaGlzIGhhcyBo
YXBwZW5lZCBzbyByYXJlbHkgaW4gdGhlIDE1ICB5ZWFycyBJJ3ZlIHN1cHBvcnRlZCBVU1JQIGRl
dmljZXMgdGhhdCBJIGRvbid0IGhhdmUgYSBwcm9jZWR1cmUgY29tbWl0dGVkIHRvIG1lbW9yeS4N
Cj4NCj4gSXMgaXQgcG9zc2libGUgdGhhdCB0aGlzIGRldmljZSB3YXMgIndpcGVkIiBhY2NvcmRp
bmcgdG8gbWlsaXRhcnkgc2VjdXJpdHkgc3RhbmRhcmRzIGZvciBzdWNoIGRldmljZXM/DQo+DQo+
DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20K
