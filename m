Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 666109933BF
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 18:46:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30C24385A66
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 12:46:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728319611; bh=uBhbFY/FrraeYahJVwL9EqojfIfHE1SmXMtqPFr1qWI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=z1aER2G/IMPcEXH7jQK+QVK/0x4z5Y7tiKO0+H5e2t8KfL5nY2eKzPsbE0/2gYBgq
	 xlBA4BnU7wr1BmdYFOGGxIcpa+/dUGdxlgx0UXmeOsj9zoOvUpixPi7dw1YWeQeK5q
	 sPhkPy2TvtLLi1GyTIPOYxprUG+RoiAtPBzneeJjjnLscGEAZoFLgiXXdjxwtLrNZd
	 JLrDa277Z2GGr3zDsVmV+y54rZsSVBJ9TJFcvr27oLep2lImbKT0TCwpWSOp+PMWdn
	 s/gs/+H/iGlPI+PkDp9i/HvpodHdOPKVISZX4RyCst9e5BiWTJi80AhKrCSrLuX6cW
	 73rA21IkkAndw==
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id B7B29383E7A
	for <usrp-users@lists.ettus.com>; Mon,  7 Oct 2024 12:45:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AjByzdQX";
	dkim-atps=neutral
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-7a9a7bea3cfso274255985a.1
        for <usrp-users@lists.ettus.com>; Mon, 07 Oct 2024 09:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728319555; x=1728924355; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ENx0p3I4XiUVEkzcB+s5mbI+aw38A4MHkz/MVLugBF8=;
        b=AjByzdQXg5FlTw361AyN20ZHU5OHu8E4jovlm62j3HeX34ssMfM1rqsDewD93b4mqb
         L0yx62yQSLhQadvcMgHVBlnc2dIWba+iCiPcRWhAIeFu+qvYGDzqilhHOl2RALzc0tyt
         x9YHjYYXbqqQppJ7Kk4LgOYlNOZpMufCLAoirpM+g0P4a+XqlwhkmaWyFltN6w3Hv2BI
         CMVPnpSHeVvzHAhcKxCHK+qTFDXUv3MMEXNISwv+YnQSPwnu6j8XFyIeZLd0laV1H4ti
         0GmFx+ZHFtVjNqe+rxLKy4bFFlJqN20O5U8R0quBQHhlrDqjBx6SrTu4vZRsNZT9HZ56
         wSmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728319555; x=1728924355;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ENx0p3I4XiUVEkzcB+s5mbI+aw38A4MHkz/MVLugBF8=;
        b=kxLZr6IGhosV5lIasgzdvQIN/qA0Y+JSI20MkGfLLW5Al/3FuQse6OE/zqG0sGkGCq
         FHACLylED/e248ZfsL6Sy9flwoiykfpIf9TbbZZY76hclqN64h3oODMopFfaxl32GH02
         D1PD0+QRiKk6yNRvcq1dD/jOy2IWflPRPuMQL000XC6Z22WuB8z3/v/oWEp6HgmsnJE9
         0gX9dAmycTFMPRBDQ4ahIeH9UsfJxS7p5xj19jkLpDHU19psnUMQCY4TzAnHmR4jgKJE
         B5Faw1mRPjy8i9L3Z6kl8TIh/h4FVY4xuLBTejcOiAjP2Cv09tN913vcNAf644G+m8xu
         m5gw==
X-Gm-Message-State: AOJu0Yx1Vx36wZmOc8c0KcoiAfS4LLXlXxT27fDuCRRgDFGBrakFa+Ao
	j2XmcSZ9xVndXEe0r7Hdd263faq9govTOIkMrCSqQjbd1PKktzdjYUY5SA==
X-Google-Smtp-Source: AGHT+IFw9bxCYNlS2KYgftyK4Alcan6/hV20yjWL7pUa4PlQBwmbqjjbaomHhGtJpsBXbFOZUAwHxQ==
X-Received: by 2002:a05:620a:400d:b0:7ac:a0a5:9bf4 with SMTP id af79cd13be357-7ae6f48604fmr2107239185a.40.1728319554694;
        Mon, 07 Oct 2024 09:45:54 -0700 (PDT)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7ae756615besm271181285a.76.2024.10.07.09.45.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2024 09:45:54 -0700 (PDT)
Message-ID: <06353951-4822-4c3e-b3fb-f632e1718420@gmail.com>
Date: Mon, 7 Oct 2024 12:45:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <1hIYAC9aaQbrg89Shz4zifzEIEMakHdKW6A0BHXHgw@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1hIYAC9aaQbrg89Shz4zifzEIEMakHdKW6A0BHXHgw@lists.ettus.com>
Message-ID-Hash: WYV47762KOAQFHHHSZ53FPOII5LMFH5F
X-Message-ID-Hash: WYV47762KOAQFHHHSZ53FPOII5LMFH5F
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: "buffer_double_mapped :warning: allocate_buffer:" for dvbt_rx_8k.grc
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WYV47762KOAQFHHHSZ53FPOII5LMFH5F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDcvMTAvMjAyNCAxMjo0MywgaDU3amFmYXJpQGdtYWlsLmNvbSB3cm90ZToNCj4NCj4gSGks
IEkgYW0gcnVubmluZyDigJxkdmJ0X3J4XzhrLmdyY+KAnSB3aXRoIHNhbXBsZSB0cyBmaWxlLiBU
aGUgcmVzdWx0IHNhdmUgDQo+IHRvIHRoZSBvdXRwdXQgZmlsZSBhbmQgYWxzbyB3aXRoIFVEUCBz
aW5rIEkgY2FuIHNlZSB0aGUgdmlkZW8gc3RyZWFtIA0KPiBpbiB0aGUgdmxjLiBCdXQgZXZlcnkg
dGltZSBpdCBzdG9wIGFmdGVyIGEgd2hpbGUgYW5kIGdlbmVyYXRlZCBvdXRwdXQgDQo+IHRzIGZp
bGUgd2l0aCBmaXhlZCBzaXplIG9mIDI1LjJNQi4gaGVyZSBpcyB0aGUgd2FybmluZyBJIHJlY2Vp
dmUgZ251IA0KPiByYWRpbzoNCj4NCj4gUVNvY2tldE5vdGlmaWVyOiBDYW4gb25seSBiZSB1c2Vk
IHdpdGggdGhyZWFkcyBzdGFydGVkIHdpdGggUVRocmVhZA0KPg0KPiBidWZmZXJfZG91YmxlX21h
cHBlZCA6d2FybmluZzogYWxsb2NhdGVfYnVmZmVyOiB0cmllZCB0byBhbGxvY2F0ZSAxMCANCj4g
aXRlbXMgb2Ygc2l6ZSA2MDQ4LiBEdWUgdG8gYWxpZ25tZW50IHJlcXVpcmVtZW50cyAxMjggd2Vy
ZSBhbGxvY2F0ZWQuIA0KPiBJZiB0aGlzIGlzbid0IE9LLCBjb25zaWRlciBwYWRkaW5nIHlvdXIg
c3RydWN0dXJlIHRvIGEgcG93ZXItb2YtdHdvIA0KPiBieXRlcy4gT24gdGhpcyBwbGF0Zm9ybSwg
b3VyIGFsbG9jYXRpb24gZ3JhbnVsYXJpdHkgaXMgNDA5NiBieXRlcy4NCj4NCj4gYnVmZmVyX2Rv
dWJsZV9tYXBwZWQgOndhcm5pbmc6IGFsbG9jYXRlX2J1ZmZlcjogdHJpZWQgdG8gYWxsb2NhdGUg
NDMgDQo+IGl0ZW1zIG9mIHNpemUgMTUwNC4gRHVlIHRvIGFsaWdubWVudCByZXF1aXJlbWVudHMg
MTI4IHdlcmUgYWxsb2NhdGVkLiANCj4gSWYgdGhpcyBpc24ndCBPSywgY29uc2lkZXIgcGFkZGlu
ZyB5b3VyIHN0cnVjdHVyZSB0byBhIHBvd2VyLW9mLXR3byANCj4gYnl0ZXMuIE9uIHRoaXMgcGxh
dGZvcm0sIG91ciBhbGxvY2F0aW9uIGdyYW51bGFyaXR5IGlzIDQwOTYgYnl0ZXMuDQo+DQo+IGJ1
ZmZlcl9kb3VibGVfbWFwcGVkIDp3YXJuaW5nOiBhbGxvY2F0ZV9idWZmZXI6IHRyaWVkIHRvIGFs
bG9jYXRlIDQgDQo+IGl0ZW1zIG9mIHNpemUgNDgzODQuIER1ZSB0byBhbGlnbm1lbnQgcmVxdWly
ZW1lbnRzIDE2IHdlcmUgYWxsb2NhdGVkLiANCj4gSWYgdGhpcyBpc24ndCBPSywgY29uc2lkZXIg
cGFkZGluZyB5b3VyIHN0cnVjdHVyZSB0byBhIHBvd2VyLW9mLXR3byANCj4gYnl0ZXMuIE9uIHRo
aXMgcGxhdGZvcm0sIG91ciBhbGxvY2F0aW9uIGdyYW51bGFyaXR5IGlzIDQwOTYgYnl0ZXMuDQo+
DQo+IGJ1ZmZlcl9kb3VibGVfbWFwcGVkIDp3YXJuaW5nOiBhbGxvY2F0ZV9idWZmZXI6IHRyaWVk
IHRvIGFsbG9jYXRlIDEwIA0KPiBpdGVtcyBvZiBzaXplIDYwNDguIER1ZSB0byBhbGlnbm1lbnQg
cmVxdWlyZW1lbnRzIDEyOCB3ZXJlIGFsbG9jYXRlZC4gDQo+IElmIHRoaXMgaXNuJ3QgT0ssIGNv
bnNpZGVyIHBhZGRpbmcgeW91ciBzdHJ1Y3R1cmUgdG8gYSBwb3dlci1vZi10d28gDQo+IGJ5dGVz
LiBPbiB0aGlzIHBsYXRmb3JtLCBvdXIgYWxsb2NhdGlvbiBncmFudWxhcml0eSBpcyA0MDk2IGJ5
dGVzLg0KPg0KPiBidWZmZXJfZG91YmxlX21hcHBlZCA6d2FybmluZzogYWxsb2NhdGVfYnVmZmVy
OiB0cmllZCB0byBhbGxvY2F0ZSA0MCANCj4gaXRlbXMgb2Ygc2l6ZSAxNjMyLiBEdWUgdG8gYWxp
Z25tZW50IHJlcXVpcmVtZW50cyAxMjggd2VyZSBhbGxvY2F0ZWQuIA0KPiBJZiB0aGlzIGlzbid0
IE9LLCBjb25zaWRlciBwYWRkaW5nIHlvdXIgc3RydWN0dXJlIHRvIGEgcG93ZXItb2YtdHdvIA0K
PiBieXRlcy4gT24gdGhpcyBwbGF0Zm9ybSwgb3VyIGFsbG9jYXRpb24gZ3JhbnVsYXJpdHkgaXMg
NDA5NiBieXRlcy4NCj4NCj4gYnVmZmVyX2RvdWJsZV9tYXBwZWQgOndhcm5pbmc6IGFsbG9jYXRl
X2J1ZmZlcjogdHJpZWQgdG8gYWxsb2NhdGUgMTAgDQo+IGl0ZW1zIG9mIHNpemUgNjA0OC4gRHVl
IHRvIGFsaWdubWVudCByZXF1aXJlbWVudHMgMTI4IHdlcmUgYWxsb2NhdGVkLiANCj4gSWYgdGhp
cyBpc24ndCBPSywgY29uc2lkZXIgcGFkZGluZyB5b3VyIHN0cnVjdHVyZSB0byBhIHBvd2VyLW9m
LXR3byANCj4gYnl0ZXMuIE9uIHRoaXMgcGxhdGZvcm0sIG91ciBhbGxvY2F0aW9uIGdyYW51bGFy
aXR5IGlzIDQwOTYgYnl0ZXMuDQo+DQo+IGFueSBzb2x1dGlvbi4gdGhhbmsgeW91Lg0KPg0KPg0K
VGhpcyBpcyB0aGUgd3JvbmcgbWFpbGluZyBsaXN0IGZvciBHbnUgUmFkaW8gcXVlc3Rpb25zLCBw
YXJ0aWN1bGFybHkgR1IgDQpxdWVzdGlvbnMgYWJvdXQgYSB2ZXJ5LXNwZWNpZmljIEdSLWJhc2Vk
IGFwcGxpY2F0aW9uLg0KDQpVc2UgdGhlIGRpc2N1c3MtZ251cmFkaW8gbWFpbGluZyBsaXN0IGlu
c3RlYWQuDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb20K
