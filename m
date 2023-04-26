Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 896BD6EFA04
	for <lists+usrp-users@lfdr.de>; Wed, 26 Apr 2023 20:26:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C9B4C383E43
	for <lists+usrp-users@lfdr.de>; Wed, 26 Apr 2023 14:26:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682533616; bh=fm7fv9NUkTbMCZ8Z1ncdl3lBuGI72fqn0cV436Gam2g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uZRQMrcN8TiTuDIjAHHpmvJqNnbIZt90GyVA8o7v3LoA8x2jYly6dJr1xI+LBIgQe
	 kd/ZaIN6kPX8+2ReAIgf5W7uAGDhD6uC2NaESLjZ4JBHa/UBIiyvkRx5iaUTwlRG1Z
	 JAZ3CIo2zr0Je8L9k/gohtdcHlzdkkP/ClS6K2CyptXYT5H5LEzGB9wVa5NJ/VfUK4
	 M4VkNbl9TItP1Gv1GPmGMZHMW/ZRl3VsCq3MV+PnCJqtWcH+d92pyyXN6RfFKMIIvw
	 Qnv2z88DBucBlhctnuLoZ4ZTaS+Q+OTMhZa54wMRN3BDs+6YJfOq351n6fFg5Uy99h
	 zwm07EB56mhPA==
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id A3A84380995
	for <usrp-users@lists.ettus.com>; Wed, 26 Apr 2023 14:26:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="W5Ne7+4N";
	dkim-atps=neutral
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-74dd7f52f18so30205585a.0
        for <usrp-users@lists.ettus.com>; Wed, 26 Apr 2023 11:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682533574; x=1685125574;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rmrL25RjMvZAvQrqi4Vv9jL6Qan7JUkWfp4M0qlXC7U=;
        b=W5Ne7+4NmPoxSC4CMqvXFSKfyJqDhhJtRm6QG/NGrpg937R2y4rWSFCXIyenghyiuF
         gruTfceA+ovXSsJbSy2iE+HPdtMwVx7VDuANuqVTl5srXGjGDldQSNR1TeEZQFg4dF1y
         ogBFW4wNGHL6lam+25DLtxc8AVxzdHECP6f6NM9u2FMaKHG2axtIbWtz4RX2ynr8RDq7
         B/sVSAcGvLulNit+06ifC5dW5j4HP5dxhKfXPFDzZC/Zov0vq/ZxciLNxeminOWK3an3
         KTbHXAZZ9CGBdPxXUetm97rGLm3pSelszSJpTinHA++2s3W7McoLA1Bx+I4bfdXvTepD
         W5lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682533574; x=1685125574;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rmrL25RjMvZAvQrqi4Vv9jL6Qan7JUkWfp4M0qlXC7U=;
        b=IqRB3qwQUxHIIkyowjLaZyoFP0KAALsqInqWpf+Xz+dtQBQgRQJ5yxcZ85QBOJo+SC
         /fjarodb9lvbqDK26cFBA27G34gKSBPEKzD/H7j2BNQuBAgtScGMlVbOENSrwP1UyHJU
         8yFNJNSqkQxtJlzfsXL2/35jXekS3jLlWliHxadKhnzevdSvtzUcvuW3PnISjdUBDx6K
         H2cGa7MoLuBEBrnHH1z5xjg6w8cgZbzMFkZbmqhprZTWA49MOf826fPbMKFvbOQEt/Lk
         nIp8w17cHhwB2u1i672kCtQ3FcXu4ufqcQzUgmVT5/YzPq9DAZIJKNwQ1b3JGISNM991
         1F4Q==
X-Gm-Message-State: AC+VfDwzFmARMyz6SbMTIIvMG7TiG12kMkurmFncQl2JtyOtptiAfAYq
	Ygoew3JSMuqYkWJeiLiA+tKvpgxoufs=
X-Google-Smtp-Source: ACHHUZ6ygrHfPe+mbzPrFhyEbqxKFJG05ki3K8HsChwr4QD8AcQAQCI5YmBYl3mnkLVXybF6TTjZuA==
X-Received: by 2002:ad4:5de2:0:b0:5ea:a3f0:9fd8 with SMTP id jn2-20020ad45de2000000b005eaa3f09fd8mr6031897qvb.14.1682533574540;
        Wed, 26 Apr 2023 11:26:14 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id y19-20020a0ce053000000b006166f6c56b2sm128608qvk.37.2023.04.26.11.26.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Apr 2023 11:26:14 -0700 (PDT)
Message-ID: <9f84e2bf-7333-89d7-a789-bdbe47a1aa3a@gmail.com>
Date: Wed, 26 Apr 2023 14:26:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <oq6osNeQHKT5FqOO5QyGNgNDPqzsljQbbXrFMJvUK50@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <oq6osNeQHKT5FqOO5QyGNgNDPqzsljQbbXrFMJvUK50@lists.ettus.com>
Message-ID-Hash: GSX65SO5IAZBCE7H6IUM65YBUSS2BJQA
X-Message-ID-Hash: GSX65SO5IAZBCE7H6IUM65YBUSS2BJQA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full duplex issues with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GSX65SO5IAZBCE7H6IUM65YBUSS2BJQA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjYvMDQvMjAyMyAxNDoyMCwgZGF2aWQuZmVybmFuZGVzQHZpdmVyaXMuZnIgd3JvdGU6DQo+
DQo+IEhpIGV2ZXJ5b25lLA0KPg0KPiBJIGFtIHRyeWluZyB0byBwZXJmb3JtIGZ1bGwgZHVwbGV4
IGNvbW11bmljYXRpb24gd2l0aCBteSBYMzEwIGluIHRoZSANCj4gZm9sbG93aW5nIHdheSB1c2lu
ZyBHTlUgUmFkaW8gOg0KPg0KPiBbUkYwLCBUWC9SWF0gPT0+IFtSRjEsIFJYMl0NCj4NCj4gW1JG
MSwgVFgvUlhdID09PiBbUkYwLCBSWDJdDQo+DQo+IEJ1dCBJIHNlZSBubyBzaWduYWxzIGluIHRo
ZSByZWNlcHRpb24gc2lkZXMuIEhvd2V2ZXIsIElmIEkgZGlzYWJsZSB0aGUgDQo+IHRyYW5zbWlz
c2lvbiBpbiAxIGNoYW5uZWwsIEkgY2FuIHNlZSB0aGUgc2lnbmFsIHJlY2VwdGlvbiBpbiB0aGF0
IGNoYW5lbC4NCj4NCj4gV2hlcmUgY291bGQgdGhlIGlzc3VlIGNvbWUgZnJvbT8gRGlkIEkgZm9y
Z2V0IHRvIGNvbmZpZ3VyZSBzb21ldGhpbmc/DQo+DQo+IFlvdSBjYW4gZmluZCB0aGUgR05VIEZs
b3dncmFwaCBhdHRhY2hlZC4NCj4NCj4gSGVyZSBpcyBzb21lIGluZm9ybWF0aW9uIGFib3V0IG15
IFVTUlAgZGV2aWNlIDoNCj4gMSBNYm9hcmQgOiBYMzEwDQo+IDIgUlggU3ViZGV2OiBXQlgtMTIw
IFJYK0dEQg0KPiAyIFRYIFN1YmRldjogV0JYLTEyMCBUWCtHREINCj4gVUhEIHZlcnNpb24gOiBV
SERfNC4xLjAuNi0wLWcxYTViNGZkMg0KPg0KPiBUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB5b3Vy
IHN1cHBvcnQuDQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20NClRoZSBtYWluIGlzc3VlIHRoYXQgbGVhcHMgb3V0IGF0IG1l
IHJpZ2h0IGF3YXkgaXMgdGhhdCB5b3UgaGF2ZSBtdWx0aXBsZSANCnNvdXJjZS9zaW5rIGFkZHJl
c3NpbmcgdGhlIHNhbWUgZGV2aWNlLsKgIElmIHlvdSB3YW50DQogwqAgbXVsdGktY2hhbm5lbCBz
dXBwb3J0LCBpdCBhbGwgaGFzIHRvIGJlIGluIHRoZSBzYW1lIHNvdXJjZS9zaW5rLCBhbmQgDQp5
b3UgY29uZmlndXJlIGl0IGZvciBtdWx0aXBsZSBjaGFubmVscy4NCg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
