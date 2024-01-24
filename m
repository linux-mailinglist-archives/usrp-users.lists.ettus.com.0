Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C370F83B273
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jan 2024 20:43:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D759E3856F2
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jan 2024 14:43:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706125392; bh=iufe170XSo4tZkj7WuPtCuD+tfNIbgHNJ94IY+3cbeo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0kyowfNc3TEOFKHuIXu/yrFX15+XaT1NRSWV3xHjUAQHgVZq3vUNZnvHrArV2YDHS
	 /n61/YVDBq+1tEvu2wZdhpYKprEqmb7wuEqfkiSLrQYgzxABQ1WMzOpDr6P5p1ucIH
	 kBQ4NCsnA8xwLFDpM9BQolEmCqM4dPCaGy56JCYn8s3tjWsRWZ2MZt9b1Yo2HPPFW6
	 4jdEQCXTv0OwxMmG9TtA+1PbJ6DCqBmibQ0O/EX6Cnp4toh/9diY/LISW/j9ZXI2NY
	 n61Zn+UeZx4EXEv3VYwg9xKTQBpnu8KWRHNNfoGucXAGwRxxOEVkgejKAfCBbD+urD
	 MkJk+dcO/8tYg==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 9DE5D3830B5
	for <usrp-users@lists.ettus.com>; Wed, 24 Jan 2024 14:42:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a8R0dwf6";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7831806c527so514596085a.3
        for <usrp-users@lists.ettus.com>; Wed, 24 Jan 2024 11:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706125338; x=1706730138; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AaV2DHfV4u+HStIbMKF+UWDOM9bYYNggPSCUUlYcERc=;
        b=a8R0dwf6711QfR/387n5Y0PYFEDwitdzXmhBnEsx0xNrExhCSr6pKk7fFOng4VGLCO
         t2sU6nDTOZd4laq14Nb6YtHwV8oTksNU5y79yeqfSv9oKvJCeMvgpRYTiqER4YbNw29b
         8I8qGhE88tdhmQEypnR2VTG1ujU3yJxSTeIjpRQmc1/RHZbdDOvvxOh0zUsuYlP/QfWQ
         hzaQ6Jm+lu5r3Hikt3iCDTjpCsUOzmUcEIJR5ckAqP738gtXLCMgeoBuiBr2WjDHjYqo
         Lpm+H/5yenQXau3bhDUvwQp4pC7igxclaFKwCv28Esc4fI8JVSfHqisr1QJvJy8z2ao7
         ft9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706125338; x=1706730138;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AaV2DHfV4u+HStIbMKF+UWDOM9bYYNggPSCUUlYcERc=;
        b=wBKew9NADuZjaPmTqaJo6vzuUfbZnXQ/rds/q5SWJNluoH/LoT3xS68ibAHvVEa2XB
         JgBvmtqhojXjBOsC8qZrBuWT2/q29+0RH3v5wNQwRZs4ao1v+nnHm410MXpgh0RwB2ea
         BeOG/xfDzWjrDQCZlpPPmxm4vOp3xBKwwmU8D2qDlWdoLpp9XcwoT9aS9l35/iBZft0L
         zMvhVQ8Z/rmqpsObPbBfPgX8uoDVRFZ6qm+nHsnOOhmtVSijwxzsgjQlHVWUMybYSlQn
         cvbDHoXQCiHf/DbHt0WuLThLvIFRxtZydfmBHW0DF2FBsbmUnHvNDxlKRKFq9Z0XGoe9
         nJDA==
X-Gm-Message-State: AOJu0YxwqgeS6w5Auj9+r9SGBdHOT+Pu1AUxc8KBlIp1GQLFOuMvA+41
	XjfOvcxD9WNMy0SRx2O3HxShEp1Ht9/98KW1of2SvUn3LomdBzHZzkJ9KMYc
X-Google-Smtp-Source: AGHT+IFaAlvQgOmNvZYCbzseZ8qGXwN1yPCV6k5OxNsf6B1F0a+MyMUAhO58GpTaOZAD79dPHanQSg==
X-Received: by 2002:ad4:4ee9:0:b0:686:1e2:747f with SMTP id dv9-20020ad44ee9000000b0068601e2747fmr3431695qvb.2.1706125337872;
        Wed, 24 Jan 2024 11:42:17 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id pi18-20020a0562144a9200b0068696873d38sm2790388qvb.120.2024.01.24.11.42.17
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jan 2024 11:42:17 -0800 (PST)
Message-ID: <ab8ed2aa-f7a2-413e-83e9-c79a1e54c1cf@gmail.com>
Date: Wed, 24 Jan 2024 14:42:08 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <jcruQmHQZeKDZZaLSX1gllzmNKa3cT9CH517aGVnU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <jcruQmHQZeKDZZaLSX1gllzmNKa3cT9CH517aGVnU@lists.ettus.com>
Message-ID-Hash: JXWWVDOM64VRZA47WAEA6NYQYEASEGSN
X-Message-ID-Hash: JXWWVDOM64VRZA47WAEA6NYQYEASEGSN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting Dropped packets
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JXWWVDOM64VRZA47WAEA6NYQYEASEGSN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjQvMDEvMjAyNCAxMzowMCwgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPiBIZWxs
bywNCj4NCj4NCj4gSSBjdXJyZW50bHkgaGF2ZSBhbiBhcHBsaWNhdGlvbiB3aGVyZSBJIGFtIGJ1
cnN0IHJlY2VpdmluZyhhYm91dCA4MCANCj4gbWljcm8gcGVyIG1pbGxpIHNlY29uZCkgd2l0aCB0
aGUgZXR0dXMgWDQxMCBhdCB0aGUgZnVsbCBzYW1wbGUgcmF0ZSANCj4gYWNyb3NzIDQgY2hhbm5l
bHMuIEkgYW0gZ2V0dGluZyBvY2Nhc2lvbmFsIGlzc3VlcyB3aGVyZSBkYXRhIGlzIA0KPiBkcm9w
cGVkICh0ZXJtaW5hbCBtZXNzYWdlcyBzaG93IOKAnETigJ0gZXJyb3IpLiBJIGhhdmUgYmVlbiBh
YmxlIHRvIGdldCANCj4gRFBESyB0byB3b3JrIGJ1dCB0aGF0IGRvZXMgbm90IHNlZW0gdG8gaGF2
ZSByZXNvbHZlZCB0aGUgaXNzdWUuIEJ5IG15IA0KPiBjYWxjdWxhdGlvbiwgdGhpcyBjb21lcyBv
dXQgdG8gYSBkYXRhIHJhdGUgb2YgNS4xMioxMF45IEdiaXQvcw0KPg0KPiBUaGUgY3VycmVudCBo
b3N0IGNvbXB1dGVyIGhhcyBhbiBpOS0xMzkwMEtTLCBOdm1lLCAxMjggR0Igb2YgUkFNLCBhbmQg
DQo+IEkgYW0gY3VycmVudGx5IHVzaW5nIGEgTWVsbGFub3ggMTAwIEdiaXQgUVNGUCBuZXR3b3Jr
IGNhcmQNCj4NCj4gSSB3b3VsZCBzYXkgaW4gZ2VuZXJhbCwgSSBhbSBhYmxlIHRvIHNhdmUganVz
dCB1bmRlciAxMDAlIG9mIGFsbCB0aGUgDQo+IGRhdGEgSSByZXF1ZXN0IGZyb20gdGhlIHg0MTAs
IGhvd2V2ZXIsIGZvciBvdXIgYXBwbGljYXRpb24sIGl0IGlzIHZlcnkgDQo+IGNyaXRpY2FsIHRo
YXQgd2UgZG8gbm90IGxvc2UgYW55IGRhdGEuIElmIEkgcnVuIHRoZSBkZWZhdWx0IENHXzQwMCAN
Cj4gaW1hZ2Ugd2l0aCBiZW5jaG1hcmsgcmF0ZSgxIGNoYW5uZWwgb25seSksIEkgZG8gbm90IGdl
dCBkcm9wcGVkIGRhdGEuIA0KPiBUaGUgb25seSBzaWduaWZpY2FudCBkaWZmZXJlbmNlIGJldHdl
ZW4gbXkgY3VzdG9tIGhvc3Qgc29mdHdhcmUgYW5kIA0KPiBiZW5jaG1hcmtfcmF0ZS5jcHAgaXMg
SSBzYXZlIGRhdGEgdG8gYSAuZGF0IGZpbGUoc2ltaWxhciB0byANCj4gcnhfc2FtcGxlc190b19m
aWxlLmNwcCkgLg0KPg0KPiBJIGhhdmUgbG9va2VkIGF0IHRoZSB0dW5pbmcgbm90ZXMgaGVyZSAN
Cj4gaHR0cHM6Ly9rYi5ldHR1cy5jb20vR2V0dGluZ19TdGFydGVkX3dpdGhfRFBES19hbmRfVUhE
LiBJIGhhdmUgdHJpZWQgDQo+IERQREssIGNvcmUgaXNvbGF0aW9uLyBkaXNhYmxpbmcgc3lzdGVt
IGludGVycnVwdHMsIG5pY2UgcHJpb3JpdHksIA0KPiBtdWx0aXRocmVhZGluZy91aGQ6OnNldF90
aHJlYWRfcHJpb3JpdHksIGJ1dCBub25lIGhhdmUgc2VlbWVkIHRvIA0KPiByZXNvbHZlIHRoZSBp
c3N1ZS4NCj4NCj4gV2hhdCBJIGhhdmUgbm90aWNlZCBpcyB0aGF0IHdoZW4gSSBnZXQgYSDigJxE
4oCdIGVycm9yLCBpdCBjb3JyZXNwb25kcyB0byANCj4gcmVjdigpIHJldHVybmluZyBhIG51bWJl
ciBvZiBzYW1wbGVzIGxlc3MgdGhhbiBzYW1wbGVzIHBlciBidWZmZXIsIA0KPiBmb2xsb3dlZCBi
eSBhIHJldHVybiB2YWx1ZSBvZiAwLg0KPg0KPiBNeSBjdXJyZW50IGFzc3VtcHRpb24gaXMgdGhh
dCB0aGUgdGFzayBvZiBzYXZpbmcgZGF0YSB0byBOVk1FIGlzIA0KPiBjcmVhdGluZyBhIGNyaXRp
Y2FsIHBhdGggdGhhdCBjYW50IGJlIHJlc29sdmVkIHdpdGggdGhyZWFkIA0KPiBwcmlvcml0aXph
dGlvbiBvciBtdWx0aXRocmVhZGluZy4gT3IsIG1heWJlIEkgYW0ganVzdCBub3QgZG9pbmcgdGhy
ZWFkIA0KPiBwcmlvcml0eSBvciBtdWx0aXRocmVhZGluZyBjb3JyZWN0bHkuIEVpdGhlciB3YXks
IGl0IGlzIHN0cmFuZ2UgdG8gbWUgDQo+IHRoYXQgcmVjdigpIGNhbiByZXR1cm4gYSBudW1iZXIg
b2Ygc2FtcGxlcyBsZXNzIHRoYW4gYnVmZmVyIG91dHNpZGUgb2YgDQo+IGEgc3RvcCBzaWduYWwg
b3IgdGltZW91dCBzaWduYWwuDQo+DQo+DQo+IEFueSBoZWxwL3N1Z2dlc3Rpb24gYXJlIGFwcHJl
Y2lhdGVkLA0KPg0KPiBKb2UNCj4NCj4NClRoYXQgc3VnZ2VzdHMgdGhhdCBwYWNrZXRzIGFyZSBn
ZXR0aW5nIGRyb3BwZWQgc29tZXdoZXJlIGluIHRoZSBuZXR3b3JrIA0Kc3RhY2sgLS0gcG9zc2li
bHkgdGhlIG5ldHdvcmstY2FyZCBpbnRlcmZhY2UgaW50bw0KIMKgIHRoZSBrZXJuZWwuDQoNCllv
dSBoYXZlIGRvbmUgYWxsIHRoZSB0aGluZ3MgaGVyZToNCg0KaHR0cHM6Ly9rYi5ldHR1cy5jb20v
VVNSUF9Ib3N0X1BlcmZvcm1hbmNlX1R1bmluZ19UaXBzX2FuZF9Ucmlja3MNCg0KDQpJbmNsdWRp
bmcgaW5jcmVhc2luZyB0aGUgbnVtYmVyIG9mIHJpbmcgYnVmZmVycyBpbiB0aGUgbmV0d29yayBj
YXJkPw0KDQoNCj4NCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJz
LWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxl
YXZlQGxpc3RzLmV0dHVzLmNvbQo=
