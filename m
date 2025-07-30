Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC377B161A2
	for <lists+usrp-users@lfdr.de>; Wed, 30 Jul 2025 15:37:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BC7CB386759
	for <lists+usrp-users@lfdr.de>; Wed, 30 Jul 2025 09:37:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753882661; bh=dWfb1x1qHw7WNjLKheqWEzEDUdj5pnGFKm4xmBB2Xro=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Q7mFuA9CKBQl9JUPJMhKQGZYxYaI1I+0ZsOOaLqcorFZju28iDuLxo0YQYXrs7wQA
	 10WzN6zmAlgQEFpvM9EoIwVsI55NsS0ix2k9DJHqy1xPln1alkK4oIs0Std4jqb1aL
	 GetXY5KltEHdteey6og53f3kHH6UEtw5znwlXHFf64jweFdcH+4S5TVefsQZDKaLyc
	 VPetjuXpkRZi1NGj+7OP8h6g88wgYyaTKmS4PzTC1v5Z/Uj4BLxBrgxVU1A8+6nyB1
	 d/N2KhmhuCviCImosCgNRIXT//R6yIrQg7vq0k6YSDE2et3Gpu8eeucVIz3upxo8Zd
	 nWltGjV84vGfg==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 6099238674D
	for <usrp-users@lists.ettus.com>; Wed, 30 Jul 2025 09:37:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kWXcBWL4";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6facf4d8e9eso42925936d6.1
        for <usrp-users@lists.ettus.com>; Wed, 30 Jul 2025 06:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753882634; x=1754487434; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+8RZJ1vgRFBZhVt+ScWULC+L90JsBe6kvd18IiLzMXQ=;
        b=kWXcBWL4fiimFx/7Y8QAFjrNil4GcDsI4qzLzXjT7mWg6+r6W52UQrfqUpResNjVC4
         bdU8743Z14BulSDl1Gpif9+oXVvGq8RjWepShDH/vGHFGia890t+EGejqnTC2cJu9NWo
         dFuLZNoqopF/Su87Kj9CSj9EeSb+9lSXyvfBYoQygsunoOFUaKE1uOX/1Hmwa5WouEhj
         i47MQPsuMlTLILj6QdTLigapumkdG0jf66v8K0dmag+TpSWOab6Tu47OcjIPCynVVEOP
         Iv1XvKH2q9eI8btsbNvYwlNjp1rgshqhn0zETv3D1BTNn/6mmGXu9S9XKXO6Nubn7Xn8
         TaBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753882634; x=1754487434;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+8RZJ1vgRFBZhVt+ScWULC+L90JsBe6kvd18IiLzMXQ=;
        b=xAMOH0RX20QdRKJ9Wx4TbwK9xbo6tT53Y/MIvHKBp1noG3SMugsO818pKk6H5VkFU7
         VcENAC3K6mhEf+d03D/cXQPrKyftLcbQooFQUOUtASaO5/BCfxxVs7CNv2ULRn2vv8wu
         Rt+CXurGOWxiJ6YnyMN/ftDzGU6GTOg8NjcQALNk/MR/MRsV5wGFQrvjal6YmQuMG5Rf
         tjKkucDXNgZlcSY7RSOYvDO/1AWhXqDaHng5LukO41ZUzWu+MoAwpkhzdvwjsL6uoySg
         VLop3q1/FCFIE7kZS95C12YmZQmjBpWRLCMT9fOUOAq9aOwB/yWNQwBzXIUmyBdxXVzU
         CigQ==
X-Gm-Message-State: AOJu0YwjiIsgVEJGcnMrSLO2y8KGN1oOSDbfLFKPLm88RXSOXdnxQHeT
	xkzECGbiawszVR4trxSWXSHtIJFugyDZT2NbrM/xO2OzeMiIcnmZSdHj74ZDjg==
X-Gm-Gg: ASbGnculMUBVjXtaHbV98SL0SVYIHpu5tbwa2w+nfiPfbdYggr3dW4aifErrqoL4qAN
	s0NrlExkdsuczAWcqMi45Mos3ldDNp0p63z/V/yCs7o8UxgQxU4urOM0MwHgI8uAMpjfQp5T6K6
	MAPWPhX6JBK+933ExIUOuyzAevtMnLqWA2JGfdlL99/Mj7FVOvwAH8qKXkslaKcodX1i2TY76Bi
	eJpMxKURwEMk70LJVdVM/Xt6YR0p5jhNKuGFwXQhJNlmpEOvlGsKejomUp3DN3ygQ0lKLCg7mtl
	4jT3LlA6+/Shp2nqnUCGCEoa88btRh+tzYkuPOm6nuXDG6cwimVviir5Rlsr9gET6S6hHioXHJd
	MEI6cmFKL2LMxv86p0paQLhzgbvYwbUk=
X-Google-Smtp-Source: AGHT+IH+IKp2jJqcBi9j9ht4HzySi+oqnuk1bFx3J4WWRplD62NZnDmn78cZKr15EaeSHG16NAQ1ZA==
X-Received: by 2002:a05:6214:258a:b0:707:2220:e077 with SMTP id 6a1803df08f44-70767456b08mr53304966d6.31.1753882634253;
        Wed, 30 Jul 2025 06:37:14 -0700 (PDT)
Received: from [192.168.2.208] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-70752597db1sm33593016d6.26.2025.07.30.06.37.13
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 06:37:13 -0700 (PDT)
Message-ID: <419b440a-232d-4021-8a50-ef8ebf77cf49@gmail.com>
Date: Wed, 30 Jul 2025 09:37:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <8bfcBosbB017m5zcThlx6kskuX0KxhL1QpyK1VWHOo@lists.ettus.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <8bfcBosbB017m5zcThlx6kskuX0KxhL1QpyK1VWHOo@lists.ettus.com>
Message-ID-Hash: YBMLGFSALMAAEXNGXBKFMWYHNGN5MJXV
X-Message-ID-Hash: YBMLGFSALMAAEXNGXBKFMWYHNGN5MJXV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Underflow Issue During Transmission and Reception with USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YBMLGFSALMAAEXNGXBKFMWYHNGN5MJXV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyNS0wNy0zMCAwMjo0NSwgZ2VjaGIyMUBnbWFpbC5jb20gd3JvdGU6DQo+DQo+IEhlbGxv
LA0KPg0KPiBJ4oCZbSB1c2luZyBVU1JQIFgzMTAgZGV2aWNlcyBvbiBib3RoIHRoZSB0cmFuc21p
dHRpbmcgYW5kIHJlY2VpdmluZyANCj4gZW5kcyB0byBoYW5kbGUgYSBkYXRhIHN0cmVhbS4gRHVy
aW5nIHRyYW5zbWlzc2lvbiwgSSBydW4gdGhlIGZvbGxvd2luZyANCj4gY29tbWFuZDoNCj4NCj4g
L3Vzci9saWIvdWhkL2V4YW1wbGVzL3R4X3NhbXBsZXNfZnJvbV9maWxlIC0tZnJlcSAyNDg0ZTYg
LS1yYXRlIDIwZTYgDQo+IC0tZ2FpbiAxMCAtLXdpcmVmbXQgc2MxNiAtLXJlZj1pbnRlcm5hbCAt
LWZpbGUgDQo+IC9ob21lL3VidW50dXR4L3VoZC9leGFtcGxlcy90eF90cmFuc21pdF9kYXRhLmRh
dCAtLXJlcGVhdA0KPg0KPiBJIGVuY291bnRlciBjb25zaXN0ZW50IHVuZGVyZmxvdyBpc3N1ZXMg
KGluZGljYXRlZCBieSAiVSIgbWVzc2FnZXMgaW4gDQo+IHRoZSBjb25zb2xlKSwgcmVnYXJkbGVz
cyBvZiB0aGUgc2FtcGxlIHJhdGUgdXNlZC4gQ291bGQgeW91IHBsZWFzZSANCj4gYWR2aXNlIGhv
dyB0byBtb2RpZnkgbXkgc2V0dXAgb3IgY29kZSB0byBlbmFibGUgc3RhYmxlIHRyYW5zbWlzc2lv
biANCj4gYW5kIHJlY2VwdGlvbiB3aXRob3V0IHRoZXNlIHVuZGVyZmxvdyBlcnJvcnM/DQo+DQo+
IFRoYW5rIHlvdSwNCj4NCj4gR2V0YW5laCBCZXJpZQ0KPg0KPg0KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpJJ2xsIG5vdGUgdGhh
dCAyMG1zcHMgaXMgODBNYnl0ZS9zZWNvbmQuwqDCoCBJZiB5b3VyIGRpc2sgc3Vic3lzdGVtIGNh
bm5vdCANCnN1c3RhaW4gdGhpcyByYXRlLCB5b3UnbGwgZ2V0IHVuZGVyLXJ1bnMuDQoNCklmIHlv
dXIgZmlsZSBjYW4gZml0IG9uIHJhbS1kaXNrLCBtb3ZlIGl0IHRoZXJlLg0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
