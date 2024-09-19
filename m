Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4287897CB15
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2024 16:39:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0B14F380A6F
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2024 10:39:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1726756749; bh=wAoEEmjxxzeRR+etonXS9CQ1GiBUGxWvNtTqGc8Fpeo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=f5OIGE6zjitN/V2ALwSYDNI5QMwJ5aOxckgKLwQOxra1OGkI2uPLM2e/eVNpDpJ09
	 DhuAL4L/wUSPanjRUXHWbXCyl+0dQtUFOk2C8Az+b/4drh96Ri4YfpyDkeC+5kbexc
	 vi0NJHMIVivFG9Grkjab4A2d/10PN0/8DPip5wtudxZ/OHLHuEufpebuIzXmJ6iRsd
	 3lebE7/J5j9amyqMz8/ZxIbtmoK4lRaOAGZAOIN+hBlO5nwRFYZ/OxMOepDlzGsPw/
	 mhUa0IlNpbonrIng8QHGvJz+X9KcKNyKGVUdFVas5m+ocDoun4mjIZB6s3GGTiBkqk
	 FLoRhvM7pZRTw==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id AF466384FAB
	for <usrp-users@lists.ettus.com>; Thu, 19 Sep 2024 10:38:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aIuErpJX";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-4583083d05eso6815671cf.3
        for <usrp-users@lists.ettus.com>; Thu, 19 Sep 2024 07:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726756690; x=1727361490; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IJPKQjNfdjBimhvXkKRQaJ27HV0SBvEteOTQfRdddOs=;
        b=aIuErpJXSfackTjuJzNA/ZE69BF0CEbaMA5jdlnp/ouCY1fo6GeAmd2oHJTziil8zD
         guP24/1n0GFUEwZKRJnJjMKv+VR3Af8cgr0beUybdGKJSWVRREvHqU9C+YB1MjBLh9xQ
         Yi4lnMriDXYAlDxLnjInONM8yXmPSxmNd6tSdmYzFtg69tZV8/m5HojFay9f+Vl5oH+v
         fXsn0MJiskyOT/9FXwmPSBqSSeK1hmY3jGkiTOPHfU4FjNbuvIqLUps/EW0okQzfKK57
         bLLLTkF5xAVV4YKkbK9YHYYsVoUMyEoooCYCAN9q6i6avTD+iKK5YLBGq+qXbvZyn51C
         Y8lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726756690; x=1727361490;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IJPKQjNfdjBimhvXkKRQaJ27HV0SBvEteOTQfRdddOs=;
        b=pFMdtQ+8WCb0SzfG39UXEfN5kkUXio+qB4kW7VOsRyg1F5C70mN3PvUK3QiGWti7CQ
         ceN1fNuT+wh1E/kG7vGokksT7NXgp4ojNSRlsGI4cHrZwQ6mFGzA0CbLx1rS5o3DQ6F5
         kuiVUHTcfdt+0RZ5Q8Kch4QcS7xmeJt1Xr1xStjxUOMOw/immKIuh/rrbYicK8HAUi5j
         mHVzs0ciRWH8zYGZhI3fILu31vLrTO/DQYrcoQqe5FkhVU4p0SWPZvTUVqGQYQm26L8k
         YIPepFZtK5l/XLAva+eK02BKaOZKeU6Z1nJNxb+Adq2xFoUO6/x5pX2h93rQyJ+JXin3
         YXnQ==
X-Gm-Message-State: AOJu0YyWNr8oX2copZxgWkTs+Tmsbh7PvcolxnoWu7j4wdyc7o0Z7S6o
	/wMIt/CzJ+xXCyNpM4zKQcnWvn0oGCv9MaMw8e3Zy1LCgkEXMFxdFfKZvQ==
X-Google-Smtp-Source: AGHT+IGZTKL8hbqbochhN/VPe/lx/C7D4qiJSBfZUVvjjafJ7u+9EaCNyBE+DpDfcWO49vopNuu/1g==
X-Received: by 2002:a05:622a:198b:b0:458:3eb3:7485 with SMTP id d75a77b69052e-458603d6807mr392937381cf.45.1726756689707;
        Thu, 19 Sep 2024 07:38:09 -0700 (PDT)
Received: from [192.168.2.170] (bas1-toronto12-64-231-212-86.dsl.bell.ca. [64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-45b17878d55sm7883711cf.35.2024.09.19.07.38.08
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Sep 2024 07:38:09 -0700 (PDT)
Message-ID: <33b7ee5f-c79a-4047-b70e-f5dd7b499766@gmail.com>
Date: Thu, 19 Sep 2024 10:38:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <xwhpbLprT6T2uZ7kBawwfB9mz3MqKIlS9qXwZxXQ8@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <xwhpbLprT6T2uZ7kBawwfB9mz3MqKIlS9qXwZxXQ8@lists.ettus.com>
Message-ID-Hash: STIWNB7AYEH5LDW47AOPGCD6IOEXZIY4
X-Message-ID-Hash: STIWNB7AYEH5LDW47AOPGCD6IOEXZIY4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x300 reset script
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/STIWNB7AYEH5LDW47AOPGCD6IOEXZIY4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTkvMDkvMjAyNCAwOTo0NCwgY3liZXJwaG94QGdtYWlsLmNvbSB3cm90ZToNCj4NCj4gSGkg
YWxsLA0KPg0KPiBJIGFtIHVzaW5nIHRoaXMgdGhlIHgzMDBfcmVzZXQucHkgc2NyaXB0IHRvIHJl
c2V0IHRoZSBGUEdBIGFuZCB3b3VsZCANCj4gbGlrZSB0byBrbm93IGEgYml0IG1vcmUgYWJvdXQg
d2hhdCBpcyBpdCByZXNldHRpbmcgZXRjLiANCj4gKGh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jl
c2VhcmNoL3VoZC9ibG9iL1VIRC00LjAvaG9zdC91dGlscy94MzAwX3Jlc2V0LnB5KQ0KPg0KPiBQ
b3dlciBvZmYgYW5kIG9uIGRvZXMgbm90IHNlZW0gdG8gZ2V0IGFzIGNsZWFuIHJlc3VsdCBhcyB3
aGVuIEkgaXNzdWUgDQo+IHRoaXMgcmVzZXQuDQo+DQo+IHRoYW5rcywNCj4NCj4gTWFyaW5vDQo+
DQo+DQpUaGVyZSdzIG5vdCBhIGxvdCBvZiBpbmZvIG9uIHRoaXMgdXRpbGl0eSwgYW5kIGl0IGlz
bid0IG9mZmljaWFsbHkgDQpzdXBwb3J0ZWQsIGFsdGhvdWdoIHdlJ3ZlIHJlY29tbWVuZGVkIGl0
cyB1c2UgaW4gdGhlIHBhc3QuDQoNCk1vc3Qgb2YgdGhlIFImRCBjcmV3IGF0IEV0dHVzL05JL0Vt
ZXJzb24gYXJlIGF0IHRoZSBHbnUgUmFkaW8gY29uZmVyZW5jZSANCnRoaXMgd2VlaywgYnV0IEkn
dmUgcmVhY2hlZCBvdXQgdG8gc29tZW9uZQ0KIMKgIGluIG91ciBzdXBwb3J0IG9yZyB3aG8gbWln
aHQga25vdy4NCg0KDQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20K
