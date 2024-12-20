Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 585A69F99D8
	for <lists+usrp-users@lfdr.de>; Fri, 20 Dec 2024 19:57:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 15AF8385F1D
	for <lists+usrp-users@lfdr.de>; Fri, 20 Dec 2024 13:57:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734721045; bh=hKGdcoLzJYj6jSkuQy7uJfMnFjlQUTh3Wl/kS9LL9w8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=SJrcgIJH68jAv/JR+l/qBVIgnA31pnCAIYncq1u19+r3k0avbAWL+qFHGjd7te+QE
	 hJICxYy5MsUgfYuWDKnvurMALo6Gl1Vkazsj4EzhR1vP58tLdPv1kn5TxyvL+hoPzQ
	 2Y96RbaCDGLldE5epKXo2KVe/naSRZaF8PPBVd4vwahC3ZlD4hOmwDfgHj/lMrmAh+
	 4sMd/sdr7+amnGefGLjfz8QMk61GdYolpuqnIpHPoIR46zU90o1/IfmMLBI7dIiwRM
	 fkV2nKgPAdV72ssZ/EuZOfngk2wmH3DP6imcW4ZWeD5UvPxxgjBimEuVHOys4fdlbh
	 mdq5mgNxxlheQ==
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 2EC2D385D07
	for <usrp-users@lists.ettus.com>; Fri, 20 Dec 2024 13:56:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a7eAB1O9";
	dkim-atps=neutral
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-7b6f75f61f9so269248085a.0
        for <usrp-users@lists.ettus.com>; Fri, 20 Dec 2024 10:56:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734720987; x=1735325787; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DPXU9RzS3Ml7g793+zIOud2KzqW7BVBpyb8xOf18Jjc=;
        b=a7eAB1O9a5Nd9SqbaFH6dFKHCvhvnD+qvnDHrFKj3Lh/+wlSFEcvzKd74yrI3xCRLm
         ifPYI/1SS2BOiB4z7A3cGUFVNMXB+TqqFKfk8J3jA9sRa+qPtgMVb0aFCNR9yCtrQPqm
         mDPl87IpV+PJNduM5wOFbCafEUISM7kHk3BPn55pGzCVjdQpccuQDnqovg3z8J9xwYVf
         Xu7WJTeCXokUZ6b2+1MaJpfVBZpTD7FkUARooX17Q+CPpDaLe4RFK/JvG3GUkEcHhxey
         Boza4xWYR53t/YnT9AxskZCVRUvC3yIZO1kRVntbWMo1tJMVHl7qFLp50+MIb9PZfo6k
         lAxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734720987; x=1735325787;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DPXU9RzS3Ml7g793+zIOud2KzqW7BVBpyb8xOf18Jjc=;
        b=f2ZLJmtGJgc53BRHJai1DAyIfNqC0b7i1k8kNA2jLEetUFtiQhucalGV7lk9XI97wM
         BH7bz6nBJl+7UQ1ugxVS8m8nUonrvm6L30jF4amvmUJ+hUXrpZKOUg8Hec9gEyBXAMTH
         6p7QT9lr4H1WS9nSIocRK99fiBiuQ4qV+4LSPR/imKTS8Q6LjqqeKgTl4SK8doD/2DNa
         IbBkaFEk80ufi24veXF2zoUBpexJAS1Bnw+zBKbN2onB4XLylTIFUcgCBw/NOmaGHXkt
         0/ePWKpQV4fEb/avxMtaD0nK+a8xes5oKu/RrzX4tsrE39t/OFK//5G6uv898vw4253C
         PxJQ==
X-Gm-Message-State: AOJu0YyNzvhXEM+cDxPPSJop3akkrer36ngWQjNGKJaBaMgLtZ88p9aq
	stH7/nLlhR/VvOGEua/GvQ/uzpbmrb//sWX3foXtjohcI0t2drsz6tnf9w==
X-Gm-Gg: ASbGnctrXpNLf/iS2tcm5lq81x0zf7fwOkiqyY7Hqj33ueXGAx6bFz/diEnNoo0LIbI
	smYCO0YV+toPITtsRoT4D5k1TTich0K3oNmTTJnq/i0apwV9Ls6Xn3j8RI4PtGTsl6ptZ2taCku
	USGupe6JlQO3YVwU2eJ1TeOFXuVN82HE9yGtCqZOeYzMGTuAUPn7ZK11gLZrzhisEWNlQk893b9
	4ez9WcL/nqOaVuVE2Lmef7mwUmTCZJ3L0sfTYaJzCkcCJRuU3TByk/m6qDeBDZZRMg=
X-Google-Smtp-Source: AGHT+IEs24+UHjVHBJy5zEvBvXie7aJVN3tZKNUyluRhf2nuuZPAhWYrolzCINwvbt2jj+j9J+XTXA==
X-Received: by 2002:a05:620a:4007:b0:7b6:f0e0:3f79 with SMTP id af79cd13be357-7b9ba8338a7mr674917785a.57.1734720987234;
        Fri, 20 Dec 2024 10:56:27 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b9ac2bd0b9sm160124085a.23.2024.12.20.10.56.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 10:56:26 -0800 (PST)
Message-ID: <97f80321-28d3-4978-9025-58f9a4fe1593@gmail.com>
Date: Fri, 20 Dec 2024 13:56:16 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <1619323082.632403599.1734720257129.JavaMail.zimbra@free.fr>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1619323082.632403599.1734720257129.JavaMail.zimbra@free.fr>
Message-ID-Hash: VQ445WELQNNRBNM4JMLRXGU57D3F4Z72
X-Message-ID-Hash: VQ445WELQNNRBNM4JMLRXGU57D3F4Z72
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 clock signal for aliasing (BasicRX daughter board)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VQ445WELQNNRBNM4JMLRXGU57D3F4Z72/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAvMTIvMjAyNCAxMzo0NCwgZnJpZWR0akBmcmVlLmZyIHdyb3RlOg0KPiBJIGFtIGludmVz
dGlnYXRpbmcgY2hvcHBpbmcgYSBzaWduYWwgd2l0aCBhIGZhc3QgdHJhY2sgYW5kIGhvbGQgdG8g
YnJpbmcgYQ0KPiBtaWNyb3dhdmUgc2lnbmFsIHRvIGJhc2ViYW5kIHdpdGhvdXQgcmVseWluZyBv
biBhIG1peGVyIChJIGNhbiBleHBsYWluIHdoeQ0KPiBpZiBuZWVkZWQgYnV0IEknbGwgc2tpcCB0
aGlzIGJhY2tncm91bmQgcGFydCBmb3IgdGhlIG1vbWVudCkuDQo+DQo+IFRvIGFjaGlldmUgdGhp
cyByZXN1bHQgSSB3b3VsZCBsaWtlIHRvIGZpdCBhIEJhc2ljUlggYm9hcmQgaW5zdGFsbGVkIGlu
IGEgWDMxMA0KPiB3aXRoIGEgSE1DNzYwIFsxXSBldmFsdWF0aW9uIGJvYXJkLCBjbG9ja2luZyB0
aGUgbGF0dGVyIHdpdGggdGhlIHNpZ25hbCBkcml2aW5nDQo+IHRoZSBBREMgaW4gb3JkZXIgdG8g
dXNlIHRoZSB1cHBlciBOeXF1aXN0IHpvbmVzIGFuZCBhbGlhc2luZyBvbiBwdXJwb3NlLg0KPg0K
PiBNeSBxdWVzdGlvbnM6DQo+ICogSSBhbSBjb25mdXNlZCBiZXR3ZWVuIGh0dHBzOi8vZmlsZXMu
ZXR0dXMuY29tL3NjaGVtYXRpY3MveDMwMC94M3h4LnBkZg0KPiBwYWdlIDQgd2hpY2ggc2hvd3Mg
cGluIDExIG9mIEozIGFzIERCMF9SWF9DTEsgYW5kIHBpbjEzIHdoaWNoIHNlZW1zIHRvIGJlIGdy
b3VuZGVkDQo+IChpZiBJIGludGVycHJldCB0aGUgc3ltYm9sIGNvcnJlY3RseSksIGFuZCBodHRw
czovL2ZpbGVzLmV0dHVzLmNvbS9zY2hlbWF0aWNzL2Jhc2ljX2Ricy9CYXNpY1JYLnBkZg0KPiB3
aGljaCBzZWVtcyB0byBjb25uZWN0IEoyIHBpbiAxMSB0byBjbGtfcCBhbmQgcGluIDEzIHRvIGNs
a19uIGxlYWRpbmcgdG8gSjM4IHBpbnMNCj4gMiBhbmQgMyBJIGFtIGNvbm5lY3RpbmcgdG8gPT4g
aXMgdGhpcyBjbG9jayBhIGJhbGFuY2VkIChkaWZmZXJlbnRpYWwpIG9yIHVuYmFsYW5jZWQgc2ln
bmFsPw0KPiBDb25uZWN0aW5nIDExLTEzIG9mIHRoZSBCYXNpY1JYIHRvIGEgTWluaWNpcmN1aXRz
IFQxLTFUIGJhbHVuIGFuZCB3YXRjaGluZyB0aGUgb3V0cHV0DQo+IHNpZ25hbCBpcyBub3QgdmVy
eSBjb252aW5jaW5nLCBidXQgbmVpdGhlciBpcyBjb25uZWN0aW5nIGEgUkYgcHJvYmUgdG8gcGlu
IDExIGVpdGhlciwNCj4gc28gSSBhbSBjb25mdXNlZCB3aXRoIHRoaXMgc2lnbmFsIChzaWduYWwg
dmlzaWJsZSB3aGVuIHRoZSBYMzEwIGlzIGlkbGUsIGEgYml0IG1vcmUNCj4gbm9pc3kgd2hlbiB0
aGUgWDMxMCBpcyBydW5uaW5nIGFuIGFjcXVpc2l0aW9uIGZsb3dncmFwaCkNCj4gKiBJIHVuZGVy
c3RhbmQgdGhhdCB0aGUgWDMxMCBpcyBzYW1wbGluZyBhdCAyMDAgTVMvcywgYnV0IGl0IHNlZW1z
IHRoYXQgdGhpcyBjbG9jaw0KPiBzaWduYWwgSSBhbSBsb29raW5nIGF0IGlzIDEwMCBNSHouIEFt
IEkgbG9va2luZyBhdCB0aGUgcmlnaHQgc2lnbmFsIGZvciBhbGlhc2luZw0KPiBhIHNpZ25hbCBz
eW5jaHJvbm91c2x5IHRvIHRoZSBzYW1wbGluZywgb3Igc2hvdWxkIEkgYmUgbG9va2luZyBlbHNl
d2hlcmU/DQo+DQo+IFRoYW5rcywgYmVzdCB3aXNoZXMsIEplYW4tTWljaGVsDQo+DQo+IFsxXSBo
dHRwczovL3d3dy5hbmFsb2cuY29tL21lZGlhL2VuL3RlY2huaWNhbC1kb2N1bWVudGF0aW9uL2Rh
dGEtc2hlZXRzL2htYzc2MC5wZGYNCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVz
ZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KTXkgdW5kZXJzdGFuZGluZyBpcyB0aGF0IHRoZSBj
bG9jayBzaWduYWwgZmVkIHRvIHRoZSBkYXVnaHRlci1jYXJkcyBpcyANCnR5cGljYWxseSBzb21l
IGZyYWN0aW9uIG9mIHRoZSBtYXN0ZXJfY2xvY2sNCiDCoCBmcmVxdWVuY3ksIGFuZCBpcyBkZXNp
Z25lZCB0byBwcm92aWRlIGEgUkVGIHNpZ25hbCBmb3Igc3ludGhlc2l6ZXJzLCANCmV0Yy7CoMKg
IEl0IHNob3VsZCBiZSBzeW5jaHJvbml6ZWQgdG8gdGhlDQogwqAgQURDIGNsb2NrcywgYnV0IHdv
bid0IG5lY2Vzc2FyaWx5IGJlIGF0IHRoZSBzYW1lIGZyZXF1ZW5jeS4NCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
