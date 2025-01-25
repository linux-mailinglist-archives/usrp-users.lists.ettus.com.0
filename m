Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E41A1C533
	for <lists+usrp-users@lfdr.de>; Sat, 25 Jan 2025 21:49:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7CD98385F6C
	for <lists+usrp-users@lfdr.de>; Sat, 25 Jan 2025 15:49:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737838159; bh=I/1MPhVvoidAm36yTTH+qzN2D4VUiC2aWV3ipxe1se4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Cov2NuJvMesXDNfRntjP5aMzWT5pcPNaJcQLUty9WNtSkEZLcSa9O3a0B2S0Egw5B
	 tZwHK7BECVBmwzLTNsMTcEuIyckQac/AE6eN6bdlkNNfO306bt32fJzxfJxEtiO4gR
	 vbCYHrXSylAMVrmaH1CJu4/lyngUlqzXOIS4n3Hw/dY/igbAXXRtc52Fg547Qay+vt
	 nnThlrSu/V/slWpWwa8Ujz4MkT3ndcg+eP1I2YB1DzrgOih9Huq5LSxQJSdq5j9her
	 i1YB5w3/wYwMfjxSXnV5Dff7tRt7607S5zj94yTZ6mroq2GEvZyw1w/Swmsmxk8SWo
	 Hd5UP4jLV+pLw==
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id D0229385EF9
	for <usrp-users@lists.ettus.com>; Sat, 25 Jan 2025 15:48:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cmBQJGbA";
	dkim-atps=neutral
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6dccccd429eso34270406d6.3
        for <usrp-users@lists.ettus.com>; Sat, 25 Jan 2025 12:48:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737838133; x=1738442933; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BXzo5KVxufAudO2QUTHDWqL1nRarz2DeuoNGkUoj8Ak=;
        b=cmBQJGbAp/ahDq+1PJDtIY3YeXtMafx+tKFEDOAEvJWq/lZqPq8iXLrsgFiTyF6qG5
         5DA2S3fX9zpYHWC7CdVl0fKhCX8wgtzCpW4KgtZ+rVhMgp+TJ+fHJfW/IrNrFIbgpRQB
         Q5BDdeGVn8EoKGaVzONm9DjcrZISbdKt22tCjCrOcOZbPAiNa676F8UMn5d02yuS9J7x
         auNkiSDebAQgU20up6DjzubVmMoTop4ksSD46LSZffK6S3LU8a/NQ/YlMSW8kXskY3yt
         kQK274W4Wm/xX0OWPkaFKQdHsR85NaHUNFGZqGEyefheFZdU1slfsOayjmfvfQ72Jd3V
         Wmvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737838133; x=1738442933;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BXzo5KVxufAudO2QUTHDWqL1nRarz2DeuoNGkUoj8Ak=;
        b=m1srfkZsSkuLn49M7hDTPNZ0dedwIcvU4D7unpWJ1cMVNipUf4NCvfTfU0GIpKajRf
         EvQUxGrxq4JloDD7vEZ829okCihSBFkchbiJubfSsbdwnG/SVkX7cajPzCeWX6hCSL+S
         EEvqKlWiI//vDRnIltSTGxgPT9nMlwxjGulh+jDRoJDVRpvo7J43VnoqqMix8gActlDs
         bXkQd+Hxld/59/50nO5PZYO87BXnBdF3KYbf+liiaRrAu818DWFqw+GSEWnoUQYzRjf4
         YM7NRMxq5OCq+LhEaB+MrdWtE9JwvAWhcUgP1+1hxZDgy5nEo5yieDxtIddf/UDuLUPq
         mSwQ==
X-Gm-Message-State: AOJu0Yz/RXztji1ui3tyDC8PGjOkM8NUr1/tjYVOJpqj6SShjk7CFUNN
	kZEuVMb/5NPyHjWn/qvYOSPLNUrbSckZsqPfyL40kqKqtW7nd6RIAB7Pjw==
X-Gm-Gg: ASbGnct6XRmklZ10lSa16uz/9nSkiJ8CLMSY1AD4hA0+SecQfk90nkUGNnaKs9Gm06V
	MYdaF8rlEt4WZV+LfgzFfr77RauCyuG76GeU74/Y/GVG5UFBqPltoriMGOXdeqHIUwjkBMDVv1x
	fjCHr+9E2GO+l2i1kvbZMO7X0aWL3r/Ja2fGHxd+vzz3yMwEaM/5oe9oAKy0HLI7JFggyg96FMV
	S9PMflzVAsMbxFjLLpCTwRCco0cUhvfK9qsuoCJB09F/gwX91rG7dZ/rslXoJp+EG5c+Rf2SZwb
	EyX/NcJpbj8gj30=
X-Google-Smtp-Source: AGHT+IFGz5m/tZGdhRXmJFT3zXgEVgix+33CgEiLIKiIPICBAYPwd/bAsHpO1Ie0tE5wL2hN/PnsdA==
X-Received: by 2002:a05:6214:250e:b0:6d8:963e:b4c3 with SMTP id 6a1803df08f44-6e1b21868ffmr483180256d6.11.1737838132963;
        Sat, 25 Jan 2025 12:48:52 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6e20514f174sm20938486d6.28.2025.01.25.12.48.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Jan 2025 12:48:51 -0800 (PST)
Message-ID: <97d113cf-819f-41c3-a0f4-3148875b06f7@gmail.com>
Date: Sat, 25 Jan 2025 15:48:40 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <ab60a559e8abcbfef267f09310a77d6e@atindriya.co.in>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <ab60a559e8abcbfef267f09310a77d6e@atindriya.co.in>
Message-ID-Hash: Z6LDXVQTYIL5GFL3JZIUFJPSHRWJFO2E
X-Message-ID-Hash: Z6LDXVQTYIL5GFL3JZIUFJPSHRWJFO2E
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG : Receiving the Data In USRP b205mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z6LDXVQTYIL5GFL3JZIUFJPSHRWJFO2E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjUvMDEvMjAyNSAwMTowNSwga2F2aW5yYWpAYXRpbmRyaXlhLmNvLmluIHdyb3RlOg0KPiBI
aSwNCj4gwqAgSSB3YW50IHRvIHJlY2VpdmUgdGhlIEFEQyBkYXRhIGluIFVTUlAgYjIwNW1pbmkt
aSBtb2R1bGUuIEZvciB0aGF0IEkgDQo+IGhhdmUgd3JpdHRlbiB0aGUgUnggc3RyZWFtZXIgY29k
ZSB1c2luZyBVSEQgQVBJLg0KPg0KPiDCoCBBY3R1YWxseSwgUnggcG9ydCBpcyBjb25uZWN0ZWQg
dG8gc29tZSBzaWduYWwgZ2VuZXJhdG9yIG9mIDQzME1IeiB0byANCj4gNDcwTUh6LiBCdXQsIFdo
ZW4gaSBzZWUgdGhlIEFEQyBkYXRhIGZyb20gc3RyZWFtZXIgaXMgbm90IG1hdGNoaW5nLiBJcyAN
Cj4gdGhlcmUgaXMgYW55IHdhbnQgYWNjZXNzIHRoZSBSeCBMTyBpbiB0aGUgVVNSUC4gV2hlbiBJ
IHByaW50IHRoZSANCj4gTnVtYmVyIG9mIFJ4IExvIG5hbWVzLCBpdCBzaG93cyBhcyAwLiBIb3cg
dG8gc2V0IHRoZSBMTyBhcyA0MDBNSHogDQo+IGZyZXF1ZW5jeT8gSXMgdGhlcmUgaXMgYW55IGRl
ZmF1bHQgTE8gZnJlcXVlbmN5IGlzIHNldD8NCj4NCj4gwqAgQW5kIEkgd2FudCB0byBrbm93IHRo
ZSBkZWZhdWx0IGRlY2ltYXRpb24gZmFjdG9yIGZvciB0aGlzIGJvYXJkPw0KPg0KUGxlYXNlIGxv
b2sgYXQgInJ4X3NhbXBsZXNfdG9fZmlsZS5jcHAiIGV4YW1wbGUsIHdoaWNoIHNob3dzIGhvdyB0
byANCnN0cmVhbSBwcm9wZXJseS7CoCBTZXQgc2FtcGxlLXJhdGUgcHJvcGVybHksIGFuZCBzZXQN
CiDCoCBjZW50ZXItZnJlcXVlbmN5IHByb3Blcmx5Lg0KDQpUbyB0b3AgbGV2ZWwgIktub3dsZWRn
ZSBCYXNlIiBwYWdlIGlzIGhlcmU6DQoNCmh0dHBzOi8va2IuZXR0dXMuY29tL0tub3dsZWRnZV9C
YXNlDQoNCg0KPg0KPg0KPiBUaGFua3MsDQo+IEthdmlucmFqLg0KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
