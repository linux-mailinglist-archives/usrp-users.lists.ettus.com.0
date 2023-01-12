Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C5314667E8E
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jan 2023 20:01:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E18C038430E
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jan 2023 14:01:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673550095; bh=DS8y4zFYNLbudg3pP+i1o88XaeZxXYyUR40HfrQVlWk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=EnhXSCyNcpXF9+0hoZVj1n7KItInntQNkx3y0poOH8RH9T7s1whUxi9XSZC2kjkIw
	 Ej8vkaCpXXw662B2+X7MVGGU/n2gaswSppcEdn2vTEqOMtjjZNRk4ucxbw0Np6RSO/
	 4VcYda1bPd53W8UOAt99yI7sm6zUDuHoiMhP4jKGmI1+8XzleKjm7pVYUOzr/8STKm
	 pBl/Y1E+UDl2Nxx8HlFX69Oe5ape7qOPP1s9NpVEhF3sANe0HQLelmzfeAf4lziKFs
	 upHsalIeRxKCvzqaYJziIDRmn43+jzdv3e/XnZ0D4HLY8jhdWPhocNAbkOxnNI+obw
	 LEFSlXeeKp0cA==
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C8C03842CD
	for <usrp-users@lists.ettus.com>; Thu, 12 Jan 2023 14:00:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CrcHkZs0";
	dkim-atps=neutral
Received: by mail-vs1-f47.google.com with SMTP id k4so20011976vsc.4
        for <usrp-users@lists.ettus.com>; Thu, 12 Jan 2023 11:00:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vn2O8MFZGJzSeAQdakZEA9iZmbsT9FAVQojGPRXTg74=;
        b=CrcHkZs01RcuioXAsOKSrFs8hXbdaoOIzdZH6mVagOwO6qt3oNd+WRJlTm0iIkvfj2
         R3o1bCGCYFCZp7SH/3wloDtAKaGeBXt9yxQ2+MDRfsBUoMPtenMRMTptkhKVVmr38ohc
         oMbGe3ZMsfzH/aS6qkNq+Hlfz5WkWhY5KbYZrM4pUpMc4Oz9iWTzm46Cvoq02l4X9s4I
         WxEzJNvp2ZH1X3G85023Kev+ER3arC7ilJmNjomjHfYcASZ9Bf4ZIZmS4/BC8r27yfCh
         XGVBbDrwXVLbDrisP/grvrUiBLrxAmms3iVo5DivL2t85F6BCdyJ7Xy18XnbTu6MDPh6
         csJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vn2O8MFZGJzSeAQdakZEA9iZmbsT9FAVQojGPRXTg74=;
        b=l0XHpA6lxZPch+72qxY+fMpXi93AJ2YOCyLAnrRGUCF0lsg/dIIFai9ogMafi2DNU5
         uAGJSrkJT29IiPTEO/QuHI9qazbyTxkXLVsaPOUSYgZpBht7mbyJmNOAg56i4JqUXUH1
         w+THBpmnXQZRcstY3pFYiBTdroz8hfAiWwBnsEgeDOJk0v7JYLREx9RfOCuwV5z/s60Z
         wpppBEnB3JJETj0sHlff6LnmGpBdB2tFMNy0NhSD/ZLhr8rJiezUldOAodwCsE7TjEte
         5hU+/my1/fQJu0CSIoJR2qB+ChJ7Pz7dm9cg31cPuCmdtWQP2/J8rjuHg/uusbF8b2HT
         1g2w==
X-Gm-Message-State: AFqh2ko6pQSJuIIGbcCMQR7OyAk44y9NgjQzqGYABuq2sBKom6FQSZ0J
	Rrlep7BS53vyy0xhVIAxyBNX1IdSRbk=
X-Google-Smtp-Source: AMrXdXsYIXybjq0N1IolynEdCx4L1YCf5/swXEuW1J5qdJWUbHy6CL47GwjDCBmUBVzjVWsoBlwAVg==
X-Received: by 2002:a05:6102:3d13:b0:3cb:8887:e342 with SMTP id i19-20020a0561023d1300b003cb8887e342mr32752702vsv.20.1673550044447;
        Thu, 12 Jan 2023 11:00:44 -0800 (PST)
Received: from [192.168.2.183] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id do44-20020a05620a2b2c00b006f8665f483fsm4404634qkb.85.2023.01.12.11.00.43
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jan 2023 11:00:44 -0800 (PST)
Message-ID: <8e2047c4-25cf-ead3-1f3c-e02c26e03764@gmail.com>
Date: Thu, 12 Jan 2023 14:00:43 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <n1I1ogHy1zRX6JWyBvE6qDFAttkfq32EDzPWTwIRTbU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <n1I1ogHy1zRX6JWyBvE6qDFAttkfq32EDzPWTwIRTbU@lists.ettus.com>
Message-ID-Hash: FCDWG4FGLCQTKRWZF4WCWWJK7ULAMPPV
X-Message-ID-Hash: FCDWG4FGLCQTKRWZF4WCWWJK7ULAMPPV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Update e310, UHD 4.0 Cross compile "How to"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FCDWG4FGLCQTKRWZF4WCWWJK7ULAMPPV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTIvMDEvMjAyMyAxMzo1MiwgbWdhcnJldHRAZ2FycmV0dC10ZWNoLmNvbSB3cm90ZToNCj4N
Cj4gV2Ugd291bGQgbGlrZSB0byBtb3ZlIG91ciBlMzEw4oCZcyB0byBVSEQ0LjAsIEdOVSBSYWRp
byAzLjEwICh3aXRoIA0KPiBncl9yZm5vYykgKG1vdmluZyBmcm9tIDMuMTUuMCBMVFMsIEdOVVJB
RElPIDMuNykuIFdlIGFyZSBoYXZpbmcgaXNzdWVzIA0KPiBjcmVhdGluZyBhbiBVYnVudHUgVk0g
ZGV2ZWxvcG1lbnQgZW52aXJvbm1lbnQuDQo+DQo+IFdlIGhhdmUgdGhlIGltYWdlcyBmb3IgVUhE
NC4xLjAuNCAsIEdOVSBSYWRpbyAzLjg6DQo+DQo+IGUzeHhfZTMxMF9zZzNfKl9kZWZhdWx0LXY0
LjEuMC40LnppcCAoKiA9IG1lbmRlciwgc2RpbWcsIGFuZCBzb3VyY2VzKQ0KPg0KPiBXZSBpbml0
aWFsbHkgZm9sbG93ZWQgdGhlIDMuMTUgcmVsZWFzZSA0IGluc3RydWN0aW9ucyB3aGljaCB3b3Jr
ZWQgZm9yIA0KPiAzLjE1LjAgTFRTLg0KPg0KPiBJcyB0aGVyZSBhIHN0ZXAgYnkgc3RlcCBwcm9j
ZXNzIGZvciB0aGlzPw0KPg0KPiBUaGFuayB5b3UgaW4gYWR2YW5jZSENCj4NCj4NClRoZSBtZXRh
LWV0dHVzIEdJVCByZXBvIG1pZ2h0IGFsc28gYmUgb2Ygc29tZSBoZWxwOg0KDQpodHRwczovL2dp
dGh1Yi5jb20vRXR0dXNSZXNlYXJjaC9tZXRhLWV0dHVzDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
