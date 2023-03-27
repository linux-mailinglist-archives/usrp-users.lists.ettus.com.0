Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14ECD6CA9BF
	for <lists+usrp-users@lfdr.de>; Mon, 27 Mar 2023 17:59:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4C585384346
	for <lists+usrp-users@lfdr.de>; Mon, 27 Mar 2023 11:59:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679932797; bh=pk/FW09pWKO14HycCwAz8GpvrUSi5jCZzI8wupZCRQo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=s41OjcmegicsB4fKylaFzSC+sVmxgenphB68U2rOaepr676rC/DKDU44b2mLNJOK+
	 8FETsOUD0SlqU/sxngzt7xOqg8Eqdt+CpVKV2y8Cc7BVEz7shQYXcZEO5QIJRMOlSN
	 WZQTbgMpK70WGoerxdgbomFraevLEAk7qtdL05ClZAKc9sk9pSu41smU2ef02dTI+5
	 n7Xhg1YIRHv0Q5GjlIsicbYX2Wl0Z7KDERHab3jfkuG0zX3SDNGFo0QZYDVLECRAHk
	 7Z/SrKteNlLIbr0jnZQ6m0v2LgU+Q6eCC5WzxTqRluI7QmRkrT/PkxZG4mGwC2Xcct
	 2nYVDw6GQuNPw==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id E854D384346
	for <usrp-users@lists.ettus.com>; Mon, 27 Mar 2023 11:59:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Z1GTIE8u";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id oe8so7049650qvb.6
        for <usrp-users@lists.ettus.com>; Mon, 27 Mar 2023 08:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679932790;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a65JExFnmJcT1Xtbv16GBkv6zVBB6jfQNXbmptw+wNQ=;
        b=Z1GTIE8ul58RI+r9DT3oWdBti5uZuTE5fFpCFNMSYu57Xct3hflJLSY1i8pZEoQ/ES
         V11v5N+uMKgJ6hlmxPuCHKLkMkW6Flp5n+LB2d3dVO6wbl7xFJx73Hw/lAbJQrB5dXTu
         nXL1drlung6TqgYBFQwAHYmbrhMy10kgI1TGY15s75ZBbB0LwzQaNVx94BOcvfhRzR07
         E6OhtCqvONtNKYz6xYJs0GFY0ve1rGy8+JOlsE6iFHOe7gULAbRcbyXPwCtli+Yo4IFt
         CmAhrYoKuwMVRCvEgvYV7feOggqZ7Zicfbw/C76YNJt5T3tpisuSOwDCjZA8Q/oOSSgC
         +j2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679932790;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a65JExFnmJcT1Xtbv16GBkv6zVBB6jfQNXbmptw+wNQ=;
        b=iYuXJfnWBJtckDWcW+lR8RX5VcUw/d7jSNCjf4F44bOYokXVPETIQbjfdAz0i1WzO3
         K0j2hYn2e5akY1x33Rl08+F7hG6hNxlo5I/yX6an+bYtJ9DmDyKWSXerftMSwEuivl2N
         Bdi1v+6c8OWw5Appf4rPYVDIDLt0RVMmFADq5hjZF+pjjNATCDdOw5Oagel7xhcppJsO
         sFqa6N9zgmXbWslZNeqoNODBLJQ52oIGcVW79nkc5qy4gVQEE1tvzGT4761QZE/7ssdC
         1Y72b2S+zwG8D1OY24h6txnFqdJzr/RvSfRdPbsYUKLjZUgw0edESpEPdJXEKMV6yftl
         Njyw==
X-Gm-Message-State: AAQBX9c2NlTe14fA2YJFKGPae7tPGsYdaC/DtrRNgmtuKOHfq77eeCVW
	+O+k1EfsqzViTEnr6f6ooozbWd4h/Q0=
X-Google-Smtp-Source: AKy350YyvZeuz5MkIz2i+HZJhlO6X7KA/aZ7odWbnAH4SHW8lLh0B8tK/b+iUusnxekvoegJp+nDfw==
X-Received: by 2002:ad4:5fcd:0:b0:5a7:e9e4:5016 with SMTP id jq13-20020ad45fcd000000b005a7e9e45016mr20185824qvb.44.1679932790210;
        Mon, 27 Mar 2023 08:59:50 -0700 (PDT)
Received: from [192.168.2.155] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id cy2-20020a05621418c200b005deeeba2aa2sm1298204qvb.43.2023.03.27.08.59.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 08:59:49 -0700 (PDT)
Message-ID: <4c53cd1a-f29a-43b3-e386-22f8d4c89285@gmail.com>
Date: Mon, 27 Mar 2023 11:59:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAJQWkW7MjbjvCsrQ2dcmTSQxzN-qvh9f6DGHtznUEXFW5DqhkA@mail.gmail.com>
 <1cc6f5ff-cf57-fc56-e0d8-a17e8dd6159f@ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1cc6f5ff-cf57-fc56-e0d8-a17e8dd6159f@ettus.com>
Message-ID-Hash: 3O6BOUABDUOHQWXM7ZDBZDRUWDD25OX5
X-Message-ID-Hash: 3O6BOUABDUOHQWXM7ZDBZDRUWDD25OX5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Host-usrp communication with VPN
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3O6BOUABDUOHQWXM7ZDBZDRUWDD25OX5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjcvMDMvMjAyMyAxMTo1MywgTWFyY3VzIE3DvGxsZXIgd3JvdGU6DQo+IEhpIE9qYXMsDQo+
DQo+IGl0J3MgYSBiaXQgaGFyZCB0byBrbm93IGhvdyB0aGF0IFZQTiBvZiB5b3VycyBpcyBhY3R1
YWxseSBzZXQgdXAuIEluIA0KPiBnZW5lcmFsLCBkb2luZyBhcmJpdHJhcnkgb3RoZXIgbmV0d29y
a2luZyBvbiB0aGUgc2FtZSBtYWNoaW5lIGhhcyANCj4gYWJzb2x1dGVseSBubyBlZmZlY3Qgb24g
VUhELCBhcyBsb25nIGFzIHRoZSBwYWNrZXRzIHRvIGFuZCBmcm9tIHRoZSANCj4gVVNSUCBzdGls
bCBnbyB0aHJvdWdoIHJlZ3VsYXJseS4NCj4NCj4gV2hhdCBtaWdodCBiZSBoYXBwZW5pbmcgaGVy
ZSBpcyB0aGF0IHRoZSBWUE4gZXN0YWJsaXNoZXMgaXRzZWxmIGFzIHRoZSANCj4gZGVmYXVsdCBy
b3V0ZSwgaW5jbHVkaW5nIGZvciB0aGUgYnJvYWRjYXN0IGFkZHJlc3MgYW5kIG90aGVyIGFkZHJl
c3NlcyANCj4gb2YgdGhlIHByaXZhdGUgbmV0d29yayB5b3Ugb25seSB1c2UgdG8gY29ubmVjdCB0
byB0aGUgVVNSUC4NCj4NCj4gQmVzdCwNCj4gTWFyY3VzDQpGb3IgInVoZF9maW5kX2RldmljZXMi
IGluIHBhcnRpY3VsYXIsIGl0IGFjcXVpcmVzIHRoZSBsaXN0IG9mIGFsbCB5b3VyIA0KbmV0d29y
ayBpbnRlcmZhY2VzICh3aGljaCB3b3VsZCBpbmNsdWRlIHRoZSB2aXJ0dWFsIGludGVyZmFjZQ0K
IMKgIHNldC11cCBieSB5b3VyIFZQTiBzb2Z0d2FyZSkgYW5kIHRoZW4gc2VuZHMgYSAqc3VibmV0
IGJyb2FkY2FzdCogb24gDQplYWNoIG9mIHRob3NlIGxvb2tpbmcgZm9yIGEgcmVwbHkgZnJvbSBh
IFVTUlAuDQoNCkl0J3MgcHJvYmFibHkgdGhhdCB0aGUgVlBOIHNvZnR3YXJlIGlzbid0IGhhbmRs
aW5nIHRoaXMgY2FzZSB2ZXJ5IHdlbGwuDQoNCkJ1dCBpZiB5b3UgYWx3YXlzIHVzZSBleHBsaWNp
dCBkZXZpY2UgYWRkcmVzc2luZyBpbiB5b3VyIGRldmljZSANCmFyZ3VtZW50cywgeW91IG5ldmVy
IGV4ZXJjaXNlIHRoZSBjb2RlIHRoYXQgc2VuZHMgb3V0DQogwqAgYnJvYWRjYXN0ICJwcm9iZXMi
LsKgwqDCoCBTaW5jZSB5b3Uga25vdyB3aGVyZSB5b3VyIFg0MTAgaXMgY29ubmVjdGVkLCANCmFu
ZCB3aGF0IGl0cyBhZGRyZXNzIGlzLCB5b3Ugc2hvdWxkIGp1c3QgYWx3YXlzDQogwqAgdXNlIHRo
b3NlIGFuZCBub3QgcmVseSBvbiB0aGUgImZpbmQgbXkgdXNycCIgZmVhdHVyZSB0aGF0J3MgYnVp
bHQtaW4gDQp0byBVSEQuDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20K
