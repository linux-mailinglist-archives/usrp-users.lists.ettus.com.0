Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F070481E68
	for <lists+usrp-users@lfdr.de>; Thu, 30 Dec 2021 18:00:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3B15B38436E
	for <lists+usrp-users@lfdr.de>; Thu, 30 Dec 2021 12:00:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TNGEw10D";
	dkim-atps=neutral
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id A7A933842F2
	for <usrp-users@lists.ettus.com>; Thu, 30 Dec 2021 11:59:43 -0500 (EST)
Received: by mail-qk1-f175.google.com with SMTP id 131so23179262qkk.2
        for <usrp-users@lists.ettus.com>; Thu, 30 Dec 2021 08:59:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=DIbCjHWj7tF29UZnucPuhOkKTwOI6H86r7Dd+C9xlqY=;
        b=TNGEw10D/4Kfy6E9Zik/pjhoKYtH/TYSnENi5/PpNblS5J1gPD0fCdZEw1hLDKeCaM
         3vXCUxrvOhRgQRpqAbtBpOo+2W6Snvl9qwXCx7FfDNlLg/M0gqSCroU7Z7ZE54wfPrQU
         Spn1ydATpCWMrrInJP+6aDwyo6K6dis78Ux7OALopWrW5NqVtWRi84Oo8upAXRBskbBh
         WNtisBRYnVc1qkz5/SzxwkzejTSx4ZF4MoLaQlL4DH1OXFjfcV94Vfio0g2yZJtpQMim
         l3W09G5A3FOcpyLQ9/nC2oj4haPbxM+GjtRVvS+/dCE9Xdg4q8r46urIDxC/DM+UA6Jf
         bpkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=DIbCjHWj7tF29UZnucPuhOkKTwOI6H86r7Dd+C9xlqY=;
        b=kvTIyZhZkoa7Lh6JMRlgbSMJ+CACXsKfSHddWadJ4T+ANtmZqkr0X4pibKXVdpts+I
         yDAyhlaepq2a+XCsc6fhF5HvTjv3Ns6Ur9GhmzV3kQPs+vGJmH+hUwe/03fvqe1F2Eh+
         TCfm9TGgkMyXtBuZQ8R0remVySNi0k8ZIw2ZdTg5gnzMNpy4exY0/Ndy8aGFeHPoJMfx
         QMbhnn2rjlUv8aMmPe3Ztxb1+tlWebMAaXdN8VegXCHs5DKLYd2LMyQTYY3aPqkzhrpE
         tNDRrdKip5I8ppWKt46JyFUp55e1CJxdiIYeDzwWupCWEhPkmLpO1hgie7Vcmu8wJ9oT
         y8kg==
X-Gm-Message-State: AOAM532Q5+TSol/rJJ8Ss74yxd6zYnXJQ3HJhJC0OAN58KJ6qkkyWuX/
	LfeTrRmb0iIFldrjsYdfwN6lJNsayxMw1g==
X-Google-Smtp-Source: ABdhPJw2x2KPkSQeNRCHOv5JLDWFAfJXcI7fcDhoWDRkc7frm+vR/5lG98sEmEYFmNArmkjqcg+53Q==
X-Received: by 2002:a37:b2c1:: with SMTP id b184mr22858874qkf.53.1640883582821;
        Thu, 30 Dec 2021 08:59:42 -0800 (PST)
Received: from [192.168.2.183] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id g19sm19970236qtg.82.2021.12.30.08.59.42
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Dec 2021 08:59:42 -0800 (PST)
Message-ID: <5290031e-4f10-22f7-20a7-b1635d73a242@gmail.com>
Date: Thu, 30 Dec 2021 11:59:41 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <6UuAQNkHTbe1DPjs9gKffsECQGhJqj9mr4J6OueQ@lists.ettus.com>
 <ebe7b6b2-a984-71cb-f45c-f2c7a43faaba@ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <ebe7b6b2-a984-71cb-f45c-f2c7a43faaba@ettus.com>
Message-ID-Hash: WISZAIVEPID7GFKV5KWMPOTN72N7D43H
X-Message-ID-Hash: WISZAIVEPID7GFKV5KWMPOTN72N7D43H
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 LO leakage cancelation
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WISZAIVEPID7GFKV5KWMPOTN72N7D43H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMi0zMCAwODoyMywgTWFyY3VzIE3DvGxsZXIgd3JvdGU6DQo+IEhlbGxvIFNlY2tp
biwNCj4NCj4gaWYgSSByZW1lbWJlciBjb3JyZWN0bHksIHRoZSBOMzIwIHNob3VsZCBoYXZlIGEg
bWF4aW11bSBnYWluIG9mIDYwIGRCLCANCj4gYnV0IHlvdSdyZSBvbmx5IHVzaW5nIDEwIGRCOyBk
b2VzIHRoZSBmaWd1cmUgZ2V0IGJldHRlciB3aGVuIHlvdSANCj4gaW5jcmVhc2UgdGhlIGdhaW4g
dG8gc2F5LCA1NSBkQj8gSSdtIHdlbGwgYXdhcmUgdGhlIHJlc3VsdGluZyBzaWduYWwgDQo+IG1p
Z2h0IGJlIHRvbyBzdHJvbmcgZm9yIHlvdSwgYnV0IGl0J2QgZ2l2ZSB1cyBhIGxlYWQuDQo+DQo+
DQo+IEJlc3QgcmVnYXJkcywNCj4gTWFyY3VzDQpJIGJlbGlldmUgdGhhdCB0aGUgc3RhdGljIEkv
USBjYWxpYnJhdGlvbiB1dGlsaXRpZXMgd2lsbCB3b3JrIHdpdGggdGhlIE4zMjA6DQoNCmh0dHBz
Oi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9wYWdlX2NhbGlicmF0aW9uLmh0bWwNCg0KDQo+DQo+
DQo+IE9uIDMwLjEyLjIxIDA5OjExLCBzZWNraW5vbmN1ODA3MEBnbWFpbC5jb20gd3JvdGU6DQo+
DQo+PiBIZWxsbywNCj4+DQo+PiBJIGFtIHVzaW5nIE4zMjAgd2l0aCBVSEQgNC4xIG9uIFVidW50
dSAyMC4wNC4gV2hlbiBJIHRyeSB0byB0cmFuc21pdCANCj4+IHNpZ25hbCwgdGhlcmUgaXMgYSBw
b3dlcmZ1bCBzaWduYWwgYXQgdGhlIGNlbnRlciBiZWNhdXNlIG9mIExPIA0KPj4gbGVha2FnZS4g
SXMgdGhlcmUgYSB3YXkgdG8gY2FuY2VsIHRoaXMgbGVha2FnZS4NCj4+DQo+PiBZb3UgY2FuIHNl
ZSB0aGUgcHJvYmxlbXMgYXQgYXR0YWNoZWQgcGljdHVyZXMgZm9yIGJvdGggQ1cgYW5kIHB1bHNl
ZCANCj4+IHNpZ25hbHMuIFB1bHNlZCBzaWduYWwgcmVjb3JkZWQgb3ZlciBOMzIwIGFuZCByZXBs
YXllZCBiYWNrLg0KPj4NCj4+IFNlY2tpbg0KPj4NCj4+DQo+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
