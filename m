Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE369D9044
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2024 03:08:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 49508385CC0
	for <lists+usrp-users@lfdr.de>; Mon, 25 Nov 2024 21:08:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732586889; bh=T5mQ5/A3ErfKqbiGk8s9r7vam62myqxrvJREsYD9psA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=IXtXePy0HscLlLLFw4FqVp/NBDWnk8IkFYqweqwjKpe7esx0enJfGLilX7oKWxtgD
	 rx6lz86RjOStRXSGmKb+Rsr5R88lQ/PNpuHOgY7ZvW07s4ModRVktHLtrf9OU+5QM6
	 MbwjKcjFaGlgTEtKKBavctCUnqILiz0PlJYY25Qgk5v1SAu5XsfmT8O7b+PExuLya8
	 P6M4BwQAGvhmFhEJaWEfGWCH2uhvUyPIraHWlJUL7VoQFhsrPpgRW+z87zz8zKnY+2
	 S1+KNaQH+Oo3RV9NYXqTFPj37EVgi67rQx96MMoeSv1LA7EQXLjg6Flv1/RhGslT0K
	 bJmCeDG6OAZZQ==
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 0FF75385B41
	for <usrp-users@lists.ettus.com>; Mon, 25 Nov 2024 21:07:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HE81AgO+";
	dkim-atps=neutral
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-211fb27cc6bso50559405ad.0
        for <usrp-users@lists.ettus.com>; Mon, 25 Nov 2024 18:07:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732586847; x=1733191647; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JWbm+M6PKLKmE3lLKqTbTDVQvzuK69t0t0H2yko84P8=;
        b=HE81AgO+FZRJdUdq8tFsyQKnXZaItFClEy2C/KDXFzDEoHCUxdO04+UROoX6g6xXBO
         Ij4hKkRLdM67781zsjr+CVuxZ+3YK6TnYWqvCXrfq7LZ5eL0+2Noh/fUMVyPd8Z7iTG/
         3LtHZhcQADfERtOdVI2QJwWkwyR/H/vt6B2pCc87ouJa/khzb8GbZFQ1HHopqB67fZ3B
         BkVMqRqzoLIS7SgM1P1kYRj2A++yv8ntDqTBNrqeB2Qqq0PlbrWsBo6JxZfaYR99yDMz
         9J5yD53Gld/mRHpsxFP3KhfWg9YkCkqjUJmLWM1nwxAFhKxusvRq9fd4vqe7Mbb/U/BU
         1oHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732586847; x=1733191647;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JWbm+M6PKLKmE3lLKqTbTDVQvzuK69t0t0H2yko84P8=;
        b=Eug2YPMtCpCkdb70mZ5LxIP7WTrgn9yEMPQrBq+/3a5Bz/mHwrzlME11Pf5+gskVKg
         o0fvKG4xak2bTkYmeXCuOq3z1Gks0CKYntMf6Od4T0dEp1aMcfxkdTUJNuEyJsj2gmgn
         mRhyFr9MsmxvkLq9don4xmwrNO9aidc2R6n20BuBTj/N11qIIzv5ZknGk+DLQXELYkYG
         87BeDTkipbTaqeyr8fx/lKcuFf3FYyMuzrwpzAH1x3+rVRyD/MIW2G2j041TGrGoCiO4
         k6/0zhhSvW5nPa/37y/OlPyak8hO5PIlSzyxW8T6CxALy7S/hPY/F1s2OufBMJ02HOgm
         9oiw==
X-Gm-Message-State: AOJu0YxMRPpgbXwpH6inPWZn8p3FMFJqKXHLhb+2HqEOnGABvCM4dm9S
	AFkstM/s+3fjJn9cSyx1QwhW2e+x3SPpvGsomPv95/yu+ys48xmsse3k1Q==
X-Gm-Gg: ASbGncuoDnY4zgLZHMmkKfBdV6YvtJIBOIhmdYWULozwI+CShswiGlUznidGrS8TPCD
	i0ZqWnujHXfSa3ryV7n0Mjwc0Hcl2yiWkXBtdiyjaOKEP9KlsurXRhuWKBYfKXMi5+jRfwLygEa
	p9Rd0OxybRcVtmHCDPYJjcZQ+3RVYsVhDScg9L8tlf7KZlTTOztyUs6G8u36i4WVFKJNP+V8rmB
	9smpzj5LzG77gGdjpdEnkYryyYn6qnX57iRbgUovkMKxRfpWwdC5jdqf0BS
X-Google-Smtp-Source: AGHT+IF2J3czpV+nkPJlJsRyuQjt9ICiogpNCaOhP3YFaag/Wpkq/7gRT0bylhGlGXkcoiMqP8cfDw==
X-Received: by 2002:a17:902:ce02:b0:212:5d38:b47f with SMTP id d9443c01a7336-2129f5e6a69mr270300925ad.22.1732586846761;
        Mon, 25 Nov 2024 18:07:26 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2129db8c358sm72669955ad.41.2024.11.25.18.07.25
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2024 18:07:26 -0800 (PST)
Message-ID: <22d4dbd8-e014-4319-ab18-1f61a21c43fc@gmail.com>
Date: Mon, 25 Nov 2024 21:07:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <WKNJrBm2YdpcnK8R7TYTY7tao0Evoqa54RWhFMgKG0@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <WKNJrBm2YdpcnK8R7TYTY7tao0Evoqa54RWhFMgKG0@lists.ettus.com>
Message-ID-Hash: WO44TD2YQGSDBQZ4JX3FXKB7QS7JALIY
X-Message-ID-Hash: WO44TD2YQGSDBQZ4JX3FXKB7QS7JALIY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: LED quickly turns back off X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WO44TD2YQGSDBQZ4JX3FXKB7QS7JALIY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjUvMTEvMjAyNCAyMDo1NywgZGhwYW5jaGFhaUBnbWFpbC5jb20gd3JvdGU6DQo+DQo+IEni
gJltIHJlY2VpdmluZyBhIHdpZGUgYmFuZHdpZHRoIHNpZ25hbCAofjI1MCBNSHogc2FtcGxlIHJh
dGUgdXNpbmcgDQo+IERQREspIG9uIFg0MTAgdXNpbmcgR05VUmFkaW8gYW5kIEkgbm90aWNlIHRo
YXQgdGhlIGdyZWVuIExFRCBsaWdodCANCj4gdHVybnMgT04gYW5kIHF1aWNrbHkgdHVybnMgYmFj
ayBvZmYgd2hlbmV2ZXIgSSBoYXZlIHNpZ25hbCBwcm9jZXNzaW5nIA0KPiBibG9ja3MgKGUuZy4g
ZmlsdGVyIGJsb2NrKSBjb25uZWN0ZWQgdG8gdGhlIFVIRCBzb3VyY2UgYmxvY2suIFlvdSBoYXZl
IA0KPiAxLTIgb3ZlcmZsb3dzIGF0IHRoZSBiZWdpbm5pbmcgYnV0IHRoZSBHVUkgc2VlbXMgdG8g
d29yayBmaW5lIHNob3dpbmcgDQo+IHRoZSBzaWduYWwgd2l0aCB0aGUgdGltZS9mcmVxIHNpbmsg
cGxvdHMuIFdoZW5ldmVyIEkganVzdCBoYXZlIHRoZSANCj4gdGltZS9mcmVxIHNpbmsgYmxvY2tz
IG9ubHkgY29ubmVjdGVkIHRvIHRoZSB1aGRfc291cmNlLCB0aGUgZ3JlZW4gDQo+IGxpZ2h0IHN0
YXlzIG9uLg0KPg0KPiBNeSBxdWVzdGlvbiBpcyB3b3VsZCB0aGUgZ3JlZW4gbGlnaHQgdHVybmlu
ZyBxdWlja2x5IG9mZiBiZSBzdGlsbCBhbiANCj4gaXNzdWU/IElmIHNvLCBhbnkgaWRlYXMgaG93
IHRvIHJlc29sdmUgdGhhdCBvbmU/IEnigJltIHdvbmRlcmluZyBiZWNhdXNlIA0KPiBJIHdpbGwg
bmVlZCB0byByZS10cmFuc21pdCB0aGUgc2lnbmFsIGFnYWluIHVzaW5nIFVIRCBzaW5rIGJsb2Nr
IGFuZCANCj4gYW0gZXhwZXJpZW5jaW5nIHVuZGVyZmxvd3MgKG5vdCBiZWVuIGFibGUgdG8gcmVz
b2x2ZSB0aGlzIHlldCBhbmQgdGhlIA0KPiByZWQgdHJhbnNtaXQgbGlnaHQgZG9lc27igJl0IHR1
cm4gb24pLiBJ4oCZbSB3b25kZXJpbmcgaWYgdGhhdOKAmXMgcGFydGx5IA0KPiBkdWUgdG8gdGhl
IGdyZWVuIGxpZ2h0IHR1cm5pbmcgYmFjayBvZmYuDQo+DQo+DQpEb2luZyAqQU5ZKiBzaWduYWwt
cHJvY2Vzc2luZyAic3R1ZmYiIGF0IDI1ME1zcHMgd2l0aGluIEdudSBSYWRpbyBpcyANCnZlcnkg
bGlrZWx5IHRvIHJlc3VsdCBpbiBzaWduaWZpY2FudCBudW1iZXJzIG9mDQogwqAgb3Zlci1ydW5z
LCBhbmQgaXQgbWF5IGV2ZW4gYmUgdGhlIGNhc2UgdGhhdCBubyBmb3J3YXJkIHByb2dyZXNzIGNh
biANCmJlIG1hZGUgYXQgYWxsIGF0IHRob3NlIHJhdGVzLCB3aXRoIHRoZSBpbnRlcmZhY2UNCiDC
oCBkcm9wcGluZyBzYW1wbGUgYnVmZmVycyBiZWNhdXNlIHRoZXJlJ3Mgbm93aGVyZSB0byBwdXQg
dGhlbSwgYmVjYXVzZSANCnRoZSBhcHBsaWNhdGlvbiAoeW91ciBHbnUgUmFkaW8gZmxvdy1ncmFw
aCkNCiDCoCBzaW1wbHkgY2Fubm90IHZhY3V1bSBvdXQgdGhlIGludGVyZmFjZSBmYXN0IGVub3Vn
aC7CoCBUaGUgZnJlcXVlbmN5IA0Kc2luayB1c2VzIGEgaGVhdmlseSAic3R1dHRlcmVkIiBhcHBy
b2FjaCB0bw0KIMKgIHByb2R1Y2luZyB0aGUgc3BlY3RyYWwgZXN0aW1hdGUuwqAgSWYgdGhlIGZy
YW1lIHJhdGUgaXMgKGxldCdzIHNheSkgDQoxMEh6LCB0aGVuIG5lYXJseSBBTEwgb2YgdGhlIGlu
Y29taW5nIHNhbXBsZQ0KIMKgIGZyYW1lcyBhcmUgZHJvcHBlZCBvbiB0aGUgZmxvb3IsIHdoaWNo
IGlzIHdoeSBpdCAqYXBwZWFycyogdGhhdCBpdCBpcyANCiJrZWVwaW5nIHVwIiB3aGVuIHlvdSBv
bmx5IGhhdmUgYSBmcmVxdWVuY3kNCiDCoCBzaW5rIGluIHlvdXIgZmxvdy4NCg0KV2hhdCBraW5k
IG9mIGNvbXB1dGVyIGFyZSB5b3UgdXNpbmc/wqAgV2hhdCBoYXBwZW5zIHdoZW4geW91IGRyb3Ag
dGhlIA0Kc2FtcGxlIHJhdGUgZG93biBieSBhIGZhY3RvciBvZiA0Pw0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
