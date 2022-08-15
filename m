Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 550315930AE
	for <lists+usrp-users@lfdr.de>; Mon, 15 Aug 2022 16:26:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0CB973812FB
	for <lists+usrp-users@lfdr.de>; Mon, 15 Aug 2022 10:26:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660573598; bh=sZ48MUTUEjNQlnsry5G79XBT3phlzbkTh1VYhHDcayU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=LMwFekYgi5VpVWDcafNufHQqgK1sKFZRQjVzs9nkVd5y0iu8dVZ8C+EuBj3qc03m/
	 1z17krPa4Xahgr3JDe8OLxQ1IyF0SJTmwbt/EVXqaxhaGMeLEmCZXeyqIQheg02BEH
	 n91b/vZrDavxhVqBniXO2fSqgXMYpH3/zopZuEDA+oXR4p8K1v5xtCIAYvhVdHv14X
	 SrTuzzHK8qfukJnaky7s4fgCMg/ZVMPDfhLwIt6mYMx1xH5XSB6KcZC7OEGGke8ZV/
	 RTrozrC5VHmKhNUmbXtG6WrVvqnoGQfsjsnzIExQeHwHto+GZLa8q1ljbhqVR2Fr05
	 PtRQzwBVn9puw==
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id DE01F380F5F
	for <usrp-users@lists.ettus.com>; Mon, 15 Aug 2022 10:24:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="oC4h4cq6";
	dkim-atps=neutral
Received: by mail-qk1-f172.google.com with SMTP id f14so5625752qkm.0
        for <usrp-users@lists.ettus.com>; Mon, 15 Aug 2022 07:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=TB1tYTHeM5qh3U4Z521keJXz3NvdFIIwzY9XdpqrVWo=;
        b=oC4h4cq6HEV30EPknGGKG3qFnBOVDwc5RBqClzi6xpqSdCJvOJerbnzdciamBxGdM5
         86bR4/TTMWFM0EQ9umXfrxF2uErZd8CddNZJs1oRNoM/tpjwb/h/IB3tJ6Imj7Z9SepB
         x/EVGS1f4CYu4roZG2usLYfCcTA7l39MB6ZkQW9esfddJulEmwTBo2FsKyTidwfp+KhL
         wFh616KRq6FzT96ALkAAy6UixwBJTbr4+8xYYaEcGEWkYL2N2Jv1cIO/89rvRhC80AyG
         PKYLKoDUVUcERA9A1wfRcnMp1KMrM6k0MsJnnEMPgrpRbm/u5GKEa3Bl5ekxHg0YKlt/
         LpsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=TB1tYTHeM5qh3U4Z521keJXz3NvdFIIwzY9XdpqrVWo=;
        b=Vjp7UO4zTrWxCK6e2NWDkf3j/u6AzU6khXQ4sRubTeMoKrSIqqFLs+2AVnVCMnZmvO
         CY3nZhXmlRmyVOK98O/dQ8pAtJsI7IvFEKQt3LQGNgL3ltgv9kN79oxao61aRYHj4jDq
         2gzS0BPsCcwYHhAKuVcCLaEDgAf3SQbY/f7OW8ekOCeyzuxbHVV/wVUYe9zwhnDYuPeW
         vXlAWdFOdOIkQjh1lo38RSYRLuBaRRrrhLPOCQSXdRtrj3cUGLSwa6WzkWgFpQ/vlRqX
         kEycpaCLMeMKSUsYjq50JBzgf02Y6kMaY8L2/k3vVOmujHRl1W2kW0aEZnr0WbRyVX0T
         VedA==
X-Gm-Message-State: ACgBeo03NTuP3PZDNJrwhbZAghcHgOZw6+i7u7IK8pCdt99xFBvVkVSC
	YqZ4yiPE5oOJnIjodpqB23IXLZf0GKA=
X-Google-Smtp-Source: AA6agR4MkvB+JmX3UpSHx+yFY9BCyDgFzrASvKjDksXiJQISpPIuFQ6YF0KrUMdJ0V91AKYIB7NbTA==
X-Received: by 2002:a37:2f03:0:b0:6b5:f8d9:7eab with SMTP id v3-20020a372f03000000b006b5f8d97eabmr11827151qkh.79.1660573476795;
        Mon, 15 Aug 2022 07:24:36 -0700 (PDT)
Received: from [192.168.2.163] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id o3-20020ac85a43000000b00342f8d4d0basm8606924qta.43.2022.08.15.07.24.35
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 07:24:36 -0700 (PDT)
Message-ID: <6f08d94a-a9bc-d2b0-3d6a-a429a16ca674@gmail.com>
Date: Mon, 15 Aug 2022 10:24:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <B72xaKaRIC2UxRuWOmwCJi86KWNRsedQa7pmUfpHkg@lists.ettus.com>
 <CAAxXO2Gty2mtQD4sEEN7d5JUyCXocE=-2bKrV+_Lk=Ls48Ux-w@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAAxXO2Gty2mtQD4sEEN7d5JUyCXocE=-2bKrV+_Lk=Ls48Ux-w@mail.gmail.com>
Message-ID-Hash: KDEX23AJVJS23OMCC5C3BZJKIYFXWBTD
X-Message-ID-Hash: KDEX23AJVJS23OMCC5C3BZJKIYFXWBTD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bus errors and UHD exceptions with simple I/Q recorder
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KDEX23AJVJS23OMCC5C3BZJKIYFXWBTD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wOC0xNCAyMDo1NywgTmlrb3MgQmFsa2FuYXMgd3JvdGU6DQo+IEFhYWFoLCBpdCdz
IHRoZSBkcmVhZGVkIG1heF9zYW1wc19wZXJfYnVmZmVyOigNCj4gWXVwLCB5b3UgbmVlZCB0byBt
YWtlIHlvdXIgcmVhZCBidWZmZXIgYWxpZ25lZCB0byBtYXhfc2FtcHNfcGVyX2J1ZmZlci4uLg0K
Pg0KPiBIVEgNCj4gTmlrb3MNCkFsc28sIGNvdWxkIHdlIGNvbmZpcm0gdGhhdCB0aGUgc3RyZWFt
IGlzIGJlaW5nIHNldC11cCBmb3Igc2MxNiBvbiB0aGUgDQoqaG9zdCogc2lkZSBhcyB3ZWxsP8Kg
IFRoZSBkZWZhdWx0DQogwqAgaXMsIEFGQUlSLCAiZmMzMiIgZm9yIHRoZSAqaG9zdCogc2lkZS4u
Lg0KDQoNCj4NCj4gT24gU3VuLCBBdWcgMTQsIDIwMjIgYXQgOToyNCBQTSA8d296bnljaEBnbWFp
bC5jb20+IHdyb3RlOg0KPj4gTmlrb3MsDQo+Pg0KPj4gVGhhbmtzIGZvciB0aGUgcmVwbHkuIEkg
dHJhY2VkIGl0IHRvIHRoZSDigJxyZWN24oCdIGNhbGwgd2hpY2ggaGFzIGxlZnQgbWUgcHV6emxl
ZC4gSSBhZGRlZCBhIGJ1bmNoIG9mIGluc3RydW1lbnRhdGlvbiB0byBzZWUgaWYgSSB3YXMgd2Fs
a2luZyBvZmYgdGhlIGVuZCBvZiBteSBtZW1vcnkgdGhhdCB3YXMgYWxsb2NhdGVkIHRvIHRoZSAx
Ni1iaXQgSS9RIGJ1ZmZlci4NCj4+DQo+PiBjb25zdCBzdGQ6OmludDMyX3Qgc3RhcnRJbmRleCA9
IDIqbnVtX2FjY3VtX3NhbXBzOw0KPj4NCj4+IGNvbnN0IHN0ZDo6aW50MzJfdCByZW1haW5pbmdT
aXplID0gMipzYW1wbGVMZW5ndGgtKDIqbnVtX2FjY3VtX3NhbXBzKTsNCj4+DQo+PiBzdGQ6OmNv
dXQgPDwgImlxWyIgPDwgc3RhcnRJbmRleCA8PCAiXSA9ICIgPDwgaXFbc3RhcnRJbmRleF07DQo+
Pg0KPj4gc3RkOjpjb3V0IDw8ICJcdCIgPDwgcmVtYWluaW5nU2l6ZTsNCj4+DQo+PiBzdGQ6OmNv
dXQgPDwgIlx0IiA8PCBzdGFydEluZGV4ICsgcmVtYWluaW5nU2l6ZTsNCj4+DQo+PiBzdGQ6OmNv
dXQgPDwgIlx0IiA8PCBidWZmZXJTaXplIDw8IHN0ZDo6ZW5kbDsNCj4+DQo+PiBudW1fYWNjdW1f
c2FtcHMgKz0gcnhfc3RyZWFtLT5yZWN2KCZpcVtzdGFydEluZGV4XSwgcmVtYWluaW5nU2l6ZSwg
bWV0YSwgNS4wLCB0cnVlKTsNCj4+DQo+PiBBbmQgSSBjYW4gZ2V0IGl0IHRvIGZhaXRoZnVsbHkg
Y3Jhc2ggZXZlcnkgc2luZ2xlIHRpbWUgd2hlbiBJIGRvbuKAmXQgcGFkIG15IGFycmF5IG9mIDE2
LWJpdCBpbnRlZ2VycyBieSBhbiBhZGRpdGlvbmFsIDIxNjUgaW50MTZzLiBJIGluY2x1ZGVkIHNv
bWUgb3V0cHV0IGluZGljYXRpbmcgd2hlcmUgSeKAmXZlIHNwZWNpZmllZCBhcyB0aGUgc3RhcnQg
b2YgdGhlIGJ1ZmZlciBmb3IgaXQgdG8gd3JpdGUgdG8sIGZvbGxvd2VkIGJ5IHRoZSByZW1haW5p
bmcgc2l6ZSwgZm9sbG93ZWQgYnkgdGhlIHN1bSBvZiB0aGUgdHdvIGp1c3QgdG8gbWFrZSBzdXJl
IEkgY2FuIG1hdGgsIGFuZCBmaW5hbGx5IHRoZSBhY3R1YWwgcmVzZXJ2ZWQgYnVmZmVyIHNpemUg
cGx1cyB0aGUgcGFkIG9mIDIxNjQgaW50MTZzLg0KPj4NCj4+IOKApg0KPj4NCj4+IGlxWzExODA0
ODBdID0gMCAxOTUyMCAxMjAwMDAwIDEyMDIxNjQNCj4+DQo+PiBpcVsxMTg1OTIwXSA9IDAgMTQw
ODAgMTIwMDAwMCAxMjAyMTY0DQo+Pg0KPj4gaXFbMTE5MTM2MF0gPSAwIDg2NDAgMTIwMDAwMCAx
MjAyMTY0DQo+Pg0KPj4gaXFbMTE5NjgwMF0gPSAwIDMyMDAgMTIwMDAwMCAxMjAyMTY0DQo+Pg0K
Pj4gU2VnbWVudGF0aW9uIGZhdWx0IChjb3JlIGR1bXBlZCkNCj4+DQo+PiBJZiB5b3XigJlsbCBu
b3RpY2UsIEnigJl2ZSBzcGVjaWZpZWQgZm9yIGl0IHRvIHN0YXJ0IGF0IGluZGV4IDExOTY4MDAg
YW5kIHRoYXQgdGhlIG51bWJlciBvZiBzYW1wbGVzIHBlciBidWZmZXIgYmVpbmcgcGFzc2VkIHRv
IHJlY3YoKSBpcyAzMjAwLiBJIHRoaW5rIEnigJltIGp1c3QgYmVpbmcgZGVuc2UgLyBtaXNpbnRl
cnByZXRpbmcgdGhlIG5zYW1wc19wZXJfYnVmZiAodGhlIHNlY29uZCBwYXJhbWV0ZXIgb2YgdGhl
IOKAnHJlY3bigJ0gY2FsbCkgYmVjYXVzZSBpdCBzZWVtcyBhcyBpZiBpdCBpcyBub3QgcmVzcGVj
dGluZyB0aGUgcmVtYWluaW5nIGJ1ZmZlciBzaXplIHRoYXQgSSBhbSBzcGVjaWZ5aW5nIGFuZCBh
dHRlbXB0aW5nIHRvIHdyaXRlIGJleW9uZCB0aGUgYm91bmRzIG9mIHRoZSBtZW1vcnkgSeKAmXZl
IGFsbG9jYXRlZCBmb3IgdGhlIGJ1ZmZlci4NCj4+DQo+PiBJcyB0aGVyZSBzb21lIGFsaWdubWVu
dCBvciBtaW5pbXVtIGJ1ZmZlciBzaXplIHRoYXQgSeKAmW0gbm90IGF3YXJlIG9mPw0KPj4NCj4+
IFRoYW5rcywNCj4+DQo+PiBDaHJpcw0KPj4NCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQo+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
