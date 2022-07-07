Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 109B5569F1B
	for <lists+usrp-users@lfdr.de>; Thu,  7 Jul 2022 12:04:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4DDCA384245
	for <lists+usrp-users@lfdr.de>; Thu,  7 Jul 2022 06:04:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657188262; bh=oO0/cOYBsCDA993kV6XY0SVf5+W7E0NvMaBEmmfWpuY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=wUYZI/B0+boINNU0xwC6hYmfQuqKA37Sv3xpN2iDSZzCcGbHq1mXHqw+TNJfyHOJq
	 rkowvQh09yw29bKY8LlOIPhgWtIx3yapcm17DseHQTaBDJ6m6gWMY4hMDn6paYrpoK
	 F1WMZeOY/tYsdyKdRke+eMRA6KZev0dDnPg9Zq29sErlTXIBI650J1FL1e0gurey/Y
	 SvuWMzPnGk1gqGUNodR69azr2evgTizdGc8CCeynV/ZO96Fli7UgyrymRA+N2e2rP1
	 MXawDRAp1GKYwk6OFBCTWxLVTDpLeNG+EKpRnHHDF461tuMGseNF/J9YZfxduJcTrS
	 KVMAzEnh5oKMQ==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 16F0138423E
	for <usrp-users@lists.ettus.com>; Thu,  7 Jul 2022 06:02:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="dkuWJ22U";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id r18so22450486edb.9
        for <usrp-users@lists.ettus.com>; Thu, 07 Jul 2022 03:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=GzTfF05VA/uBnMi4Szlq1m7p3s2et5MVr5NpJ6/zn4I=;
        b=dkuWJ22UkIDGJEEj525O3+R0p1829o7n/RrK+G6JbQ19Bry1HU+lBPHV7KaodvJ4nz
         ISs8TFMEARk/hf9XpLJbTpRqkVOAJxJwWZpwO5KYRx2LcGIdXzN/nJWeHDNDaRTpDaIF
         8jLQngF1GthzM9SOlxz2KuFBbmLkaT1+GaHagr5CT+2pzN5CZtYQMhNpnl5RWIVhY6rn
         4Qns3Qaq10EUCSO46WC7/XjFfs0lYjF74eGPYDQXTqFti0Bx5O109PZZqfecFmY9rdxv
         qrhgxocgz/cnQlUf+CuifGOVXVehCFaabrWZuDdfv4T90uYVi4o2usbK3DsuBEvZ+OsZ
         sIsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=GzTfF05VA/uBnMi4Szlq1m7p3s2et5MVr5NpJ6/zn4I=;
        b=rk1uaEWLkImXHYkxgJIwRCI9aohixIKqet3wKwoVKSeAfgva9oO5Nf2XDYeZHXLybc
         kKsD95GSyKa7v1kv3ECl6wFu9driSrt1RNG571d1F7Rbo58ZfP8GIv1R3dEQ9PF3Pt89
         cKg4VMpoo7mJ5PB/amKvHEg/wAg4VbkyTqGbLytZpzFnHLMvNSDKg2CBt624jbmAU3/P
         kB6wLjG97HwipBIpwLKRGGwlYg58LCN0JLajy+/ec+7gshWC8srY1dADPcoVgtRzNwLT
         ibcjV1Bo6GvhfdgjE+2+LS7u/k74w+vqxN4BZrCtlvlnYqmv/p1DQVsn82SUP8DMGNAu
         ddzw==
X-Gm-Message-State: AJIora88NqDZiVWAAgsJqw4KJO0gvB/X51fclw2MtQYzy32N0iRBSx7N
	Mds6tar2doE8sM974Vec0ZlxsUmgXF21h4rX
X-Google-Smtp-Source: AGRyM1siuB7blDlPHV0LH7yMWDYVPXZvXI+WQKXSkgNmWq49BrhzLHEqPMZjXCDli/ltROEN7kcBjg==
X-Received: by 2002:a05:6402:1f01:b0:43a:239e:e65a with SMTP id b1-20020a0564021f0100b0043a239ee65amr32666031edb.428.1657188142497;
        Thu, 07 Jul 2022 03:02:22 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3847:ffc::d8d? ([2001:9e8:3847:ffc::d8d])
        by smtp.gmail.com with ESMTPSA id f15-20020a170906084f00b00718d18a1860sm18664728ejd.61.2022.07.07.03.02.21
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jul 2022 03:02:22 -0700 (PDT)
Message-ID: <715324de-f3b6-99eb-f60c-7dc0def1bacd@ettus.com>
Date: Thu, 7 Jul 2022 12:02:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <E1188D158AA7A048AF99B6A05DA3D629DFE95889@SPROMMAIL03.spengtes.space>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <E1188D158AA7A048AF99B6A05DA3D629DFE95889@SPROMMAIL03.spengtes.space>
Message-ID-Hash: KYBI2HARUJZSQYIKVO4XNHV7VMIDFHMX
X-Message-ID-Hash: KYBI2HARUJZSQYIKVO4XNHV7VMIDFHMX
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: request on ettus usrp-x310 and ubx-160
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KYBI2HARUJZSQYIKVO4XNHV7VMIDFHMX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgU3RlZmFuaSwNCg0KSSBkb24ndCB0aGluayBldmVuIEkgY291bGQgZmluZCB0aGF0IENQTEQg
ZGVzaWduIGNvZGUuIEFsc28sIEknbSBob25lc3RseSBoYXZpbmcgYSB2ZXJ5IA0KaGFyZCB0aW1l
IGZpZ3VyaW5nIG91dCB3aGF0IHlvdSdkIGFjaGlldmUgYnkgdGhhdCDigJMgdGhlIENQTEQgcmVh
bGx5IGRvZXMgYnV0IGEgdGlueSBiaXQgb2YgDQpsb2dpYy90aW1pbmcgZ2x1ZSBvbiB0aGUgVUJY
OyB3aGF0IGlzIGl0IHRoYXQgeW91IHdhbnQgdG8gYWNoaWV2ZSBieSBtb2RpZnlpbmcgaXQ/IE1h
eWJlIA0Kd2UgY2FuIGhlbHAgeW91IGZpbmRpbmcgYW4gYWx0ZXJuYXRpdmUgaW1wbGVtZW50YXRp
b24gZS5nLiBvbiB0aGUgRlBHQSBvciBldmVuIGxlc3MgDQp3b3JrLWludGVuc2UgaW4gc29mdHdh
cmU/DQoNCkJlc3QgcmVnYXJkcywNCk1hcmN1cw0KDQoNCk9uIDA3LjA3LjIyIDExOjUxLCBTVEVG
QU5JLCBNYXVyaXppbyAoRXh0ZXJuYWwpIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KPg0KPiBISSwN
Cj4NCj4gSSBuZWVkIHRvIHByb2dyYW0gdGhlIHVieC0xNjAgdmlhIEZQR0EgdXNpbmcgbXkgVkhE
TCBjb2RlLg0KPg0KPiBCYXNpY2FsbHkgdGhlIFVCWC0xNjAgaXMgbWFuYWdlZCBieSBhIFBMRCBi
dXQgSSBoYXZlIG5vdCB0aGUgZGF0YSBmb3JtYXQgYW5kIHByb3RvY29sIHRvIA0KPiBiZSB1c2Vk
Lg0KPg0KPiBJcyB0aGVyZSBzb21lb25lIGNhbiBoZWxwIG1lIHdpdGggdGhlc2UgaW5mbyBhYm91
dCB0aGUgZm9ybWF0IHRvIHByb2dyYW0gdGhlIHVieD8NCj4NCj4gVGhhbmsgeW91IGluIGFkdmFu
Y2UNCj4NCj4gTWF1cml6byBzdGVmYW5pDQo+DQo+IFRoZSBpbmZvcm1hdGlvbiBpbiB0aGlzIGUt
bWFpbCBpcyBjb25maWRlbnRpYWwuIFRoZSBjb250ZW50cyBtYXkgbm90IGJlIGRpc2Nsb3NlZCBv
ciANCj4gdXNlZCBieSBhbnlvbmUgb3RoZXIgdGhhbiB0aGUgYWRkcmVzc2VlLiBBY2Nlc3MgdG8g
dGhpcyBlLW1haWwgYnkgYW55b25lIGVsc2UgaXMgDQo+IHVuYXV0aG9yaXNlZC4NCj4gSWYgeW91
IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwgcGxlYXNlIG5vdGlmeSBBaXJidXMgaW1t
ZWRpYXRlbHkgYW5kIGRlbGV0ZSB0aGlzIA0KPiBlLW1haWwuDQo+IEFpcmJ1cyBjYW5ub3QgYWNj
ZXB0IGFueSByZXNwb25zaWJpbGl0eSBmb3IgdGhlIGFjY3VyYWN5IG9yIGNvbXBsZXRlbmVzcyBv
ZiB0aGlzIGUtbWFpbCANCj4gYXMgaXQgaGFzIGJlZW4gc2VudCBvdmVyIHB1YmxpYyBuZXR3b3Jr
cy4gSWYgeW91IGhhdmUgYW55IGNvbmNlcm5zIG92ZXIgdGhlIGNvbnRlbnQgb2YgDQo+IHRoaXMg
bWVzc2FnZSBvciBpdHMgQWNjdXJhY3kgb3IgSW50ZWdyaXR5LCBwbGVhc2UgY29udGFjdCBBaXJi
dXMgaW1tZWRpYXRlbHkuDQo+IEFsbCBvdXRnb2luZyBlLW1haWxzIGZyb20gQWlyYnVzIGFyZSBj
aGVja2VkIHVzaW5nIHJlZ3VsYXJseSB1cGRhdGVkIHZpcnVzIHNjYW5uaW5nIA0KPiBzb2Z0d2Fy
ZSBidXQgeW91IHNob3VsZCB0YWtlIHdoYXRldmVyIG1lYXN1cmVzIHlvdSBkZWVtIHRvIGJlIGFw
cHJvcHJpYXRlIHRvIGVuc3VyZSB0aGF0IA0KPiB0aGlzIG1lc3NhZ2UgYW5kIGFueSBhdHRhY2ht
ZW50cyBhcmUgdmlydXMgZnJlZS4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNl
cnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
