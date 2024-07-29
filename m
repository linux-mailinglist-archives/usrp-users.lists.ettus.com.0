Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D31B93F738
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2024 16:06:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6F80B38562C
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2024 10:06:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722261971; bh=bwOffV5ztFG8AE4TYVIq3HTy33qNzqL+PPHAscpdhTE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uPTTDO/Hd+pe3wWMinKPGRAJl+cfy5mOMvGHD2JbU0ZVsEMSV3J3GIy8t6xrRtssV
	 G9zKDRWHwzC7589eM6tIenFg2NrG9nUBU+g3qpUqG1BEUXDmyPOKgXrRM1Xo8RPWYa
	 neFGVvUBu9WaN5UVIoLIXx3YX09PlgCU+lLT0Tw0TT+SSsOxJeGJn2fPvX+twQjavE
	 vIoRBeWxRGcKd2EeCBY7XkMRcn+A2vkuaeXZ11SfhKajtmo+5ajbq59dwheLe+1+Vu
	 k6o3V4aclDHGoZKC1xHOmBVHKIvGfkDP7wkNNnnddk9L20R15knOSA5RcdfZwT4yKq
	 t6ScmX1Td1CPg==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id E63B7385550
	for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2024 10:05:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XznIxJL4";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7a1d024f775so219330785a.2
        for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2024 07:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722261949; x=1722866749; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bd3o8hszIdjsN3J2G8ndRPd1HYUAtOi9Kl4AbYpht/4=;
        b=XznIxJL4JPYF6CKAfs1i5HvyFjJLj0Uz3x/I9hqbSpJNZT+oBvl0Z/aCDxY/3kcF21
         0TpsWej9IQUx9cddmxlHyi94ZCMaovo/5KGkQcfE99cUzNy7hwL5YqEOTfWTCx+aWydY
         3s7wYJyrMk+IITHQA5W9j8LtkkkVrLTb5nfKMYJKDGJ6Jsi+ZJ2a8GwFFeHqcjEn+kDE
         Hu0qQoSrbnT+AoYM3PvuyiqCxkJGXl+AsT2QPGQte6Bwg6sZ1GeTOy1FHqcOSd67bysp
         1h9pKBI3lIqc/qVB5n+0cVRsvCVnE3DTdCySyEjdAvn63TeEBb2JBtKyzprg3RoSLZ5H
         okhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722261949; x=1722866749;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bd3o8hszIdjsN3J2G8ndRPd1HYUAtOi9Kl4AbYpht/4=;
        b=br69zMWyKNGVt+/aKQEkCiCKFoqSdfG7jGZ+QDjMO5zlBWiCa0l7r00JVQ9RJIZbOl
         PS+A/POSRV9bp1OKmwhcpRd4N5EdOeLYTwO4ILPVcOlDUrfZVI3o1pTI7CapvHixbsTI
         JqvgbRGAJ8LOrXYKIdoGVjskbeSeGadT+rDO4+9xyeOLn6ufgjoupuiuWy6th4QI/T30
         MmA3clxYs0gPHgwCr5VW/Z3ueKtCuhgNOhqAFd7Qq6vCGL7o1WoYa2ug6TgJxVRCqoEe
         yJvWsT3URvSG02iFVUug945y6O+uoXKsVTb6NatW4US9VyCuzd7JAWL6WkDxa9pE7f7E
         N9SA==
X-Gm-Message-State: AOJu0Ywhbe7U4I8eL/dP73VypHkYufeV57FyqQjD0Z5FDKcRXz9zJ5cq
	hA3xYi7FmA0P5uiRqmZRlWCvrEbcO6o7BLw14x1cVYQxhqFiXezVp8n4uw==
X-Google-Smtp-Source: AGHT+IG9NIeGoq60V2SjgGDnInl4cpFC7CWOC9dB6B7/2g/Ggg0GItCmwPWzMLoTIFXy0bNuKjHL/A==
X-Received: by 2002:a05:6214:d09:b0:6b0:92ac:8193 with SMTP id 6a1803df08f44-6bb55b26392mr94224526d6.54.1722261948942;
        Mon, 29 Jul 2024 07:05:48 -0700 (PDT)
Received: from [192.168.210.241] ([142.183.237.33])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6bb3f8f9e1csm52418026d6.44.2024.07.29.07.05.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jul 2024 07:05:48 -0700 (PDT)
Message-ID: <c2c85494-ec2c-4c85-945e-ee58c1a6813b@gmail.com>
Date: Mon, 29 Jul 2024 10:05:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <WgydSVdMii5oOWtGBBmzrc97MI4eBM6rO3U4MmzHto@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <WgydSVdMii5oOWtGBBmzrc97MI4eBM6rO3U4MmzHto@lists.ettus.com>
Message-ID-Hash: ORMYXWDUQTGO2ROHLYMT77LBBTO5L3BR
X-Message-ID-Hash: ORMYXWDUQTGO2ROHLYMT77LBBTO5L3BR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reaching high signal bandwidth with X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ORMYXWDUQTGO2ROHLYMT77LBBTO5L3BR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjkvMDcvMjAyNCAwOTowMywgc2ViYXN0aWFuLnNjaHJvZWRlckBoaGkuZnJhdW5ob2Zlci5k
ZSB3cm90ZToNCj4NCj4gSGV5IE1hcmN1cywNCj4NCj4gSW4gdGhlIGxhc3QgbW9udGhzIEkgdHJp
ZWQgdG8gZGV2ZWxvcCBhIHNpbXBsZSB0ZXN0YmVuY2ggYXQgaGlnaCANCj4gYmFuZHdpZHRocyB3
aXRoIEdOVSBSYWRpbyBhbmQgdGhlIFg0MTAgZm9yIG15IGJhY2hlbG9yIHRoZXNpcy4NCj4NCj4g
WW91IGFyZSByaWdodCwgdGhlIHByb2JsZW0gaXMgdHdvZm9sZCwgZmlyc3QgdGhlIHNvdXJjZSBo
YXMgdG8ga2VlcCB1cCANCj4gd2l0aCB0aGUgcmVxdWlyZW1lbnRzIG9mIHRoZSBzb3VyY2UsIGFu
ZCBzZWNvbmQgdGhlIFVTUlAgc2luayBoYXMgdG8gDQo+IHdvcmsgYXQgdGhlIHRocm91cHV0IHJh
dGVzIG9mIHRoZSByZXF1aXJlZCBiYW5kd2lkdGguDQo+DQo+IFRoZSBmaXJzdCBjYW4gYmUgdGVz
dGVkIHdpdGggdGhlIGRlc2NyaWJlZCBtZXRob2QgdG8gbWVhc3VyZSB0aGUgDQo+IGdlbmVyYXRl
ZCBzYW1wbGVzIHBlciBzZWNvbmQgd2l0aCB0aGUgUHJvYmUgUmF0ZSBibG9jay4NCj4NCj4gRm9y
IHRoZSB0aGVzaXMsIEkgYWxzbyBkaWQgc29tZSBzaW5nbGUgYmxvY2sgdGhyb3VwdXQgbWVhc3Vy
ZW1lbnRzLCANCj4gbGlrZSB5b3UgYWxzbyBvbmNlIGRpZCBmb3IgdGhlIEdSIHNvdXJjZSBibG9j
a3MgDQo+IChodHRwczovL3dpa2kuZ251cmFkaW8ub3JnL2luZGV4LnBocD90aXRsZT1SYW5kb21f
U291cmNlI0NvbXB1dGF0aW9uYWxfUGVyZm9ybWFuY2UpLiANCj4NCj4NCj4gVGhlIGZpbGUgc291
cmNlIHdvcmtlZCBxdWl0ZSB3ZWxsIGZvciBtZSB3aXRoIHVwIHRvIDUuMyBHUy9zICghKSBmcm9t
IA0KPiBhIE0uMiBTU0Qgb3IgYSBSQU0gZGlzay4NCj4NCj4gQWxsIG90aGVyIHJhbmRvbSBzb3Vy
Y2VzIChSYW5kb20gU291cmNlLCBSYW5kb20gVW5pZm9ybSBTb3VyY2UgYW5kIA0KPiBHTEZTUiBT
b3VyY2UpIGFsc28gd29ya2VkIHdlbGwgd2l0aCBvdmVyIDQwMCBNUy9zLiBUaGlzIGlzIHVzdWFs
bHkgbm90IA0KPiB0aGUgYm90dGxlbmVjayAod2l0aCBhIGdvb2QgQ29tcHV0ZXIpLCBzbyBJIHRl
c3RlZCB0aGUgVVNSUCBzaW5rIA0KPiBkaXJlY3RseSBwbHVtYmVkIHRvIG9uZSBvZiB0aGVzZSBz
b3VyY2VzLg0KPg0KPiBGb3IgdGhlIHNlY29uZCBwcm9ibGVtLCBJIGZpcnN0IG1hZGUgc3VyZSBJ
IGhhZCBhIHdvcmtpbmcgc2V0dXAgd2l0aCANCj4gVUhELiBJIHZhbGlkYXRlZCB0aGlzIHdpdGgg
dGhlIGJlbmNobWFyay4gVG8gZ2V0IG5vIHVuZGVyZmxvd3Mgd2l0aCANCj4gVUhELCBJIGhhZCB0
byB1c2UgdGhlIERQREsgYW5kIGFsbCB0aGUgdGlwcyBmcm9tIHRoZSBrbm93bGVkZ2ViYXNlLg0K
Pg0KPiBBcyB5b3Ugc2F5LCB0aGVyZSBtYXkgYmUgc29tZSBzdWJvcHRpbWFsIGRlZmF1bHQgY29u
ZmlndXJhdGlvbiBvZiB0aGUgDQo+IFVTUlAgc2luayBibG9jazoNCj4NCj4gRm9yIGV4YW1wbGUs
IEkgd29uZGVyZWQgd2h5IHRoZSBHTlUgUmFkaW8gVVNSUCBzaW5rIGJsb2NrIG9wdGlvbnMgZGlk
IA0KPiBub3QgaW5jbHVkZSB0aGUgLS1wcmlvcml0eSAiaGlnaCIgYW5kIC0tbXVsdGlfc3RyZWFt
ZXIgb3B0aW9uIGZyb20gdGhlIA0KPiBVSEQgc2NyaXB0IHdoZW4gdXNpbmcgYSBzb3VyY2UgYW5k
IHNpbmsgaW4gdGhlIHNhbWUgZmxvd2dyYXBoLg0KPg0KPiBJIGFsc28gd29uZGVyZWQgd2hhdCBt
aWdodCBiZSB0aGUgYmVzdCBidWZmZXIgc2l6ZSBvZiB0aGUgYmxvY2tzIGFzIGl0IA0KPiBoYWQg
c29tZSBwZXJmb3JtYW5jZSBpbXBsaWNhdGlvbnMuDQo+DQo+IEluIGFkZGl0aW9uLCBpdCB3YXMg
bm90IHBvc3NpYmxlIHRvIGhhdmUgdHdvIGZsb3cgZ3JhcGhzLCBvbmUgd2l0aCBhIA0KPiBVU1JQ
IHNpbmssIG9uZSB3aXRoIHRoZSBzb3VyY2UsIHRvIHVzZSB0aGUgRFBESyBpbiBwYXJhbGxlbC4N
Cj4NCj4gQWxsIGluIGFsbCwgSSB3b3VsZCBjb25jbHVkZSB0aGF0IEdOVSBSYWRpbyBpbiBpdHMg
Y3VycmVudCBzdGF0ZSANCj4gY2Fubm90IGRlbGl2ZXIgaGlnaCBiYW5kd2lkdGggcmF0ZXMgKGFi
b3ZlIDYxLjQ0IE1TL3MpIGZvciB0aGUgWDQxMCBvciANCj4gWDQ0MC4NCj4NCj4gQlIsDQo+IFNl
YmFzdGlhbg0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVh
dmVAbGlzdHMuZXR0dXMuY29tDQpJJ3ZlIHN0cmVhbWVkIDEwME1zcHMgZnJvbSBhbiBYMzEwIGlu
dG8gYSBHbnUgUmFkaW8gZmxvdy1ncmFwaCBpbiB0aGUgDQpwYXN0LsKgIE9uIGEgbXVsdGktY29y
ZSBzZXJ2ZXIgdGhhdCdzIGFib3V0IGEgZGVjYWRlDQogwqAgb2xkLsKgIFNvLCBpdCdzIG5vdCBp
bXBvc3NpYmxlLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tCg==
