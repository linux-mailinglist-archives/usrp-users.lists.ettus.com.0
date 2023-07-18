Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C1C75839D
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jul 2023 19:37:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A664F384C4A
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jul 2023 13:37:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689701836; bh=fr7BgoPpP0QvRG3lZ+aYJXM3UlfcaQFmeEl8k0FdP5U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ej8rwH2h40giMwBwynJ+gDNV0pmWYgQLW1gF/jzpKSgdyJD2udPNnHQEUc/wZ8354
	 /6sUi/66uFi0MtVzoIBb9bNiQR1VBY+Dlz7124r78FUbPPBZjC0xXrVlFW9CG/PBPV
	 9QUNOBtGpA3OZZCtq7u1994IKyUWjvm8mOGhW1qBCPQ3Iz+8aFebLNe9rdo2XG9his
	 RySkN3g02MMcXVHzEOiOY3XTxnztGjBXGFBysDLkHsK6YvXqfcgxbWiPO4PzxHmoLT
	 WlEd5W2Maf5H/xQ67YYOANIzG0qXODAKwZyIxansM2PeXuYW2V28BLO1fJ90KBrr+P
	 XMH0K5qAjx+vA==
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 97AA2384BBF
	for <usrp-users@lists.ettus.com>; Tue, 18 Jul 2023 13:36:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="llliMo/c";
	dkim-atps=neutral
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-400a39d4ffcso27205771cf.0
        for <usrp-users@lists.ettus.com>; Tue, 18 Jul 2023 10:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689701797; x=1692293797;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vcttrDY1jt30+o5Lmo+yaRL518gyY/9iAk9eAuTNhpQ=;
        b=llliMo/cErj2O6hQMb9dv0TYD5Dq2JgIpKtsVjLB1XROxLfMEA/6Xz/M3y3mvpGjwQ
         9ta+07syY5Kl4DFQhzf0+FRlbvsbitlE2fiBhlGyAakewvp2KEtpP10LhcKm0C8/oWua
         2vfJOX3Sq4yq0Al8FYbt9f2cwkTd5qCj9/rCU4DPT9zOBKk+CfI8aDV8dzPmFVcudRKN
         oznqa03PkkPNPHhNZFj0/7LeMLoDf3s92KGaoBF+kCr/u87MZF3K86mPggfnKkvRpKVf
         V2/bWG0q/Wfk28HyPK6Na/LkTX372vg/QP2cMpinzuVG7y8ExMm1FPBDt+ZH9R6LVYaA
         LH8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689701797; x=1692293797;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vcttrDY1jt30+o5Lmo+yaRL518gyY/9iAk9eAuTNhpQ=;
        b=QNIeZm3PFxLRTdx0sNHionpXIh89+HGYg2He6UsSuV4FsZ3qwLmMyvZl6eMdNUzdX+
         CmkZabCWQmd4buxp/GP/6MJuaI9CWVktjHLc2sPZ3a+wy3G+wL3/cu2FWLnIlXDOKZyf
         b6NpDRqoOOd76s9PoQZ05oaUBfrVB32oOUQL3ptxwRXgIgL+fbvutmWf2YxOLLZ9gcVR
         W8JjanReEdxxjtxkr9VA8j94s8rQrL8o2pOEWS6ZxELV5JODUhLU03fcPiOxOV+a8IzS
         +lWNAJK3KEHUp+s99QOy4owdM8rsymiR6dge34Wr/gi4ZPbD6mowtNdNDUnP3TFE9CmU
         nluA==
X-Gm-Message-State: ABy/qLZVb0du5/BAOvwpDqIonQDMSqTY2dJCDRqaXNxtUTnrhO1N5vcr
	jrEU9vAkVJWA3AkHFj86W1/CS/Sjym0=
X-Google-Smtp-Source: APBJJlGYXFo0Urt8/MfOfPuM/J97rSgLp4WYAKXsnoGpQXEDQlaCperwLXj7g0iGO2Kk7bxvZ9LPnw==
X-Received: by 2002:a05:622a:1818:b0:401:dfdf:e42a with SMTP id t24-20020a05622a181800b00401dfdfe42amr14797230qtc.2.1689701796785;
        Tue, 18 Jul 2023 10:36:36 -0700 (PDT)
Received: from [192.168.2.175] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id m14-20020ac8688e000000b00403b148670esm785344qtq.73.2023.07.18.10.36.36
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jul 2023 10:36:36 -0700 (PDT)
Message-ID: <64ac7448-9e4a-215e-3906-ebc654bb0269@gmail.com>
Date: Tue, 18 Jul 2023 13:36:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <gs0AMF99lya01tqSAAW6bnkSCmMuWG5tG6ViECHHU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <gs0AMF99lya01tqSAAW6bnkSCmMuWG5tG6ViECHHU@lists.ettus.com>
Message-ID-Hash: K62LIOAHIHFANUM3GMISMYPKV3QOWYUA
X-Message-ID-Hash: K62LIOAHIHFANUM3GMISMYPKV3QOWYUA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: num_recv_frames
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K62LIOAHIHFANUM3GMISMYPKV3QOWYUA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTgvMDcvMjAyMyAxMjo0OSwgZGF2aWQuZmVybmFuZGVzQHZpdmVyaXMuZnIgd3JvdGU6DQo+
DQo+IEhpIE1hcmN1cywNCj4NCj4gVGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgeW91ciBxdWljayBy
ZXNwb25zZS4NCj4NCj4gSeKAmW0gc3RpbGwgaGF2aW5nIHRyb3VibGVzIHRvIHVuZGVyc3RhbmQg
dGhlIHJlc3VsdHMgb2YgbXkgdGVzdCA6IEkgDQo+IGNhbGwgcmVjdigpIG9uY2UsIEkgc2xlZXAg
ZHVyaW5nIDEwIG1pbnV0ZXMsIEkgY2FsbCByZWN2IG9uY2UgYWdhaW4uIA0KPiBXaGVuIEkgbWVy
Z2UgdGhlIHNhbXBsZXMgcmVjZWl2ZWQgaW4gYm90aCAn4oCccmVjduKAnSBjYWxscywgSSBzZWUg
bm8gDQo+IGRpc2NvbnRpbnVpdHkgaW4gdGhlIHJlY2VpdmVkIHNpZ25hbC4gQXMgd2VsbCwgSSBk
b27igJl0IHNlZSB0aGUgUkFNIG9mIA0KPiBteSBob3N0IGJlaW5nIGZpbGxlZCB1cCBkdXJpbmcg
dGhlIOKAnHNsZWVw4oCdIHBoYXNlLCBzbyB0aGUgc2FtcGxlcyBkb27igJl0IA0KPiBzZWVtIHRv
IGJlIGJ1ZmZlcmVkIGluIHRoZSBob3N04oCZcyBidWZmZXIuIFNvIEkgYXNzdW1lIHRoZSBzYW1w
bGVzIGFyZSANCj4gYmVpbmcgYnVmZmVyZWQgaW4gdGhlIHJhZGlvIGR1cmluZyB0aGUg4oCcc2xl
ZXDigJ0gcGhhc2UsIGJ1dCBJIGRvdWJ0IGl0IA0KPiBoYXMgZW5vdWdoIGNhcGFjaXR5IHRvIGJ1
ZmZlciA0TXNwcyoxME1pbnV0ZXMgPSAyNDAwIE1zYW1wbGVzLg0KPg0KPiBUaGFua3MgYWdhaW4g
Zm9yIHlvdXIgc3VwcG9ydC4NCj4NCj4gUmVnYXJkcywNCj4NCj4gRGF2aWQNCj4NCj4NCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0K
V2hhdCB2YWx1ZSBpcyByZXR1cm5lZCBpbjoNCg0KY2F0IC9wcm9jL3N5cy9uZXQvY29yZS9ybWVt
X21heA0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb20K
