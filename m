Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9F27A4AFE
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 16:12:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 244D93850F7
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 10:12:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695046324; bh=vlOLo6m6Gmg5ibpK/pamIOGoYZFsmznStKd6DIXZZAo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=gwmBHjZsGrdZXJQWlGffi1QWRFOBkerI7tc/U6EShRRDwNVHNMMm9Vkp/VNl0fqhR
	 mN7+EDxgmM0q0e3IA/Nmv6ha2MMEhZ35UVUyRplBGBD13x2AybHWLYfdrXWU1g4ppp
	 g6XLpL1zWV5jo08iAO+08wIWDuFNV0ErdpN0I+o0ZRU91mkuMo1g8GNcE7SAvsV6AM
	 PPJTRluLmbtgWfSKIkLC6aqwxNJ/HjFL3n6smcFqatx8QqEryRQV2LuixLiFCFQJL2
	 wzYSzVS/Eu6iPon1NEhI3wgqgiovmGo/kR9+GIHme/OGJc27KNMsj4ODIvmYejpr85
	 FwpX/U36+dtKg==
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	by mm2.emwd.com (Postfix) with ESMTPS id DD29F384C47
	for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 10:11:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ilbxcYDL";
	dkim-atps=neutral
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-573429f5874so2741816eaf.0
        for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 07:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695046306; x=1695651106; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5qWsMRwPqOYIQ8wfuTMUOu+Pm0jVAIKini7Y7T2csDA=;
        b=ilbxcYDL5J16gCTumfg5BA4pEbSAZSGVJ9OPckQ3QuOmzrxOPNSjL3I8jCQV/+HuNt
         ef6Qnn/fc/hLG6iwNm42gD4gHnW2rJuvxz2vtfjijIUsAxO31tmU09ZK/70SAVTV8lHw
         MIr8vkQYuC/lri/LSHCis2qAXpOeEjVY9HXp/lf9kJzDSmO0RQo7Lo7PSgIeGp06/KJl
         b12dDmtqNE8DQvkcsZodeHjyQMPBl+MaXVFz5o7u4dTceA2UX08SHNNjhWEeZnZIUvlt
         oi1q6j7UQPBkivnx7P6dIAy5tnJYtJrj2kyXTvMEi3rzRtWbyiNPds/33/I9ktydevgg
         ulcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695046306; x=1695651106;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5qWsMRwPqOYIQ8wfuTMUOu+Pm0jVAIKini7Y7T2csDA=;
        b=dyGgGu1mQE9j3cVr4Cjd9UdtoJ8pUXdbz7gaJBpqStB+Mbze83WNt8zxaQ6ENsJx2c
         bWRukFuwGk3NJP990xA4Or88Q7D+M6GdXfgc62/2rvQnQt9OB0U9cuD0odJkfr43bubX
         oHfztkIpkeV+JMv2ZQ5lq0qVTwwNO6pguFD9aykTJmxGBQLjkzAx2eHc6yZX63k9Qecp
         tA/F+xI3wubIClmciqPqT9QCWjoQPu9XgaqSNtzu6R1sm54LsmOpSK3ft80CjtXhIE7E
         3WVIFd2RPvZ7i0JS5dFim0kXXyovB6ucyCQUjCUqss587PFv5Gs9bjRN1nE2NVqQe+zY
         5zWQ==
X-Gm-Message-State: AOJu0YxVivnm/0oViQuiwzmKSGA1yVYbDlmkr+L4pUbA9VsNFoBPTDeu
	ypQUSlWkZRjj9NSdKRBXFA01JMIJchXR4Q==
X-Google-Smtp-Source: AGHT+IHMlYO+jMLNaY68V3VEiuQEH2TbzsJ+1WSEVK3QSS1tMi+zEwV6ODsMhtjOx2SikrpLUvpOnA==
X-Received: by 2002:a05:6358:9143:b0:139:d24c:ed28 with SMTP id r3-20020a056358914300b00139d24ced28mr10013368rwr.12.1695046305720;
        Mon, 18 Sep 2023 07:11:45 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id e12-20020ad4418c000000b00647386a3234sm3113280qvp.85.2023.09.18.07.11.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 07:11:45 -0700 (PDT)
Message-ID: <166d3c97-51a5-9968-0bf5-a69ac6924630@gmail.com>
Date: Mon, 18 Sep 2023 10:11:44 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: usrp-users@lists.ettus.com
References: <0MTgCvKTtAE5aKjw693syOEp3UF20nZx5XqjlriCZQ@lists.ettus.com>
 <f90f3d5c-8735-5871-8ad4-3f67ff82bbb6@ettus.com>
 <67f923c4-0fdb-e5df-df4b-9005cf555a08@gmail.com>
 <866e2727-f39a-d114-874c-d7a07096af13@ettus.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <866e2727-f39a-d114-874c-d7a07096af13@ettus.com>
Message-ID-Hash: JYZ4YNM4V47R5GQK4BVZG7RSDENWESQS
X-Message-ID-Hash: JYZ4YNM4V47R5GQK4BVZG7RSDENWESQS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Re=3A_Bypassing_U807_and_U805_=28SKY13335=E2=88=92381LF=29?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JYZ4YNM4V47R5GQK4BVZG7RSDENWESQS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTgvMDkvMjAyMyAwOTo0MywgTWFyY3VzIE3DvGxsZXIgd3JvdGU6DQo+DQo+DQo+IEkgZG9u
J3QgYWN0dWFsbHkga25vdyB3aGF0IFRYL1JYIGlzb2xhdGlvbiBpcyBwb3NzaWJsZSBvbiB0aGUg
QUQ5MzYxOyANCj4gaWYgSSdkIGhhdmUgdG8gdGFrZSBhIGd1ZXNzIGZyb20gdGhlIFJYIEVWTSBm
aWd1cmVzIGluIHRoZSBwcmVzZW5jZSBvZiANCj4gY2xvc2UtYnkgYmxvY2tlcnMsIGl0IHdvdWxk
IGluZGVlZCBiZSBpbiB0aGUgcmFuZ2Ugb2YgMsOXMjQgZEIuDQo+DQo+IEJlc3QsDQo+IE1hcmN1
cw0KTmVhciBhcyBJIGNhbiB0ZWxsLCBBREkgZG9uJ3QgYWN0dWFsbHkgc3BlY2lmeSB0aGUgUlg8
LS0+VFggaXNvbGF0aW9uLCANCmJ1dCBpZiBpdCdzIGJldHRlciB0aGFuIDYwZEIgSSdkIGJlIHZl
cnkgc3VycHJpc2VkLS13aXRoDQogwqAgdGhlIGNhdmVhdCB0aGF0IEknbSBub3QgYW4gUkYgY2hp
cCBkZXNpZ25lciwgYW5kIHNvbWV0aW1lcyBpbnR1aXRpb24gDQpmYWlscyB5b3UuLi4NCg0KRXZl
biBpZiBpdCdzIDcwZEIsIGFuZCB5b3UncmUgdHJhbnNtaXR0aW5nIGF0ICsxMGRCbSwgdGhhdCBt
ZWFucyB0aGUgUlggDQppcyAic2VlaW5nIiBhYm91dCAtNjBkQm0gb2YgeW91ciBUWCBzaWduYWwu
DQogwqAgVGhhdCdzIGFib3V0IDYwLTcwZEIgYWJvdmUgdGhlIE1EUyB0aHJlc2hvbGQgZm9yIG5h
cnJvd2JhbmQgc2lnbmFscyANCmF0IG1heCBSWCBnYWluLsKgwqAgU28gaG9waW5nIHRvIHVzZSBS
WC9UWCBpc29sYXRpb24NCiDCoCB0byBub3QgInNlZSIgeW91ciB0cmFuc21pdCBzaWduYWxzIGlz
IHdpc2hmdWwgdGhpbmtpbmcgaW4gYW4gUkYgDQpwbGF0Zm9ybSBkZXNpZ24gbGlrZSB0aGlzLsKg
IEFsdGhvdWdoLCBvYnZpb3VzbHkgZm9yIG1vc3QNCiDCoCBmdWxsLWR1cGxleCBzY2hlbWVzLCB0
aGUgUlggYW5kIFRYIGZyZXF1ZW5jaWVzIGFyZSBzZXBhcmF0ZWQsIGFuZCB0aGUgDQpUWC10by1S
WCBsZWFrYWdlIGlzIG9ubHkgYSBjb25jZXJuIGlmIGl0IGNvbnRyaWJ1dGVzDQogwqAgdG8gbG9z
cyBvZiBsaW5lYXJpdHkvc2Vuc2l0aXZpdHkgaW4gdGhlIFJYIHBhdGh3YXkuDQoNCkluIHN5c3Rl
bXMgbGlrZSBzaW1wbGUgYW5hbG9nIHJlcGVhdGVycyAod2l0aCBzcGxpdCBmcmVxdWVuY2llcyks
IGNhdml0eSANCmR1cGxleGVycyBhcmUgdXNlZCB0byBpc29sYXRlIHRoZSBUWC9SWCBmcmVxdWVu
Y2llcywgYWx0aG91Z2gNCiDCoCBvbmUgKnN0aWxsKiBoYXMgdGhlIGluLXRoZS1yYWRpbyBsZWFr
YWdlIHRvIGJlIGNvbmNlcm5lZCBhYm91dC4gSW4gDQp0aGUgb2xkZW4gZGF5cywgdGhlIFJYIGFu
ZCBUWCBhc3NlbWJsaWVzIHdlcmUgb2Z0ZW4gb24gc2VwYXJhdGUNCiDCoCBib2FyZHMsIGluIHRo
ZWlyIG93biBzdWItc3lzdGVtIGVuY2xvc3VyZXMgdG8gaW1wcm92ZSB0aGlzLsKgwqAgSGFyZCB0
byANCmRvIHRoYXQgb24gYSBib2FyZCB3aGVyZSB0aGUgUlggYW5kIFRYIHBhdGhzIGdvIHRocm91
Z2gNCiDCoCB0aGUgc2FtZSBjaGlwLi4uDQoNCg0KPg0KPiBPbiAxOC4wOS4yMyAxNToxMywgTWFy
Y3VzIEQuIExlZWNoIHdyb3RlOg0KPj4gT24gMTgvMDkvMjAyMyAwNjoxMSwgTWFyY3VzIE3DvGxs
ZXIgd3JvdGU6DQo+Pj4gSGkgT8SfdXpoYW4sDQo+Pj4NCj4+PiB3ZSBvZiBjb3Vyc2UgaGF2ZW4n
dCBydW4gYW55IG1hdGNoaW5nIHRlc3RzIG9uIHdoYXQgaGFwcGVucyBpbiB0aGF0IA0KPj4+IGJ5
cGFzcyBtb2RlOyBpdCB3b3VsZCBzdGlsbCBzZWVtIHRvIG1lIHRoYXQgaWYgeW91IGJ5cGFzcyBV
ODA1LCANCj4+PiB5b3UnZCB3YW50IHRvIHJlbW92ZSB0aGUgaW4tIGFuZCBvdXRwdXQgY2FwYWNp
dG9ycywgaW5kZWVkLiBJJ2QgDQo+Pj4gc3Ryb25nbHkgYWR2aXNlIGFnYWluc3QgZG9pbmcgdGhp
cyBtb2RpZmljYXRpb24sIGZvciB0aGUgZm9sbG93aW5nIA0KPj4+IHRlY2huaWNhbCByZWFzb246
DQo+Pj4NCj4+PiAyNCB0byAyNyBkQiBpc29sYXRpb24gaXMgaW5kZWVkIHdoYXQgdGhlIGRhdGFz
aGVldCBvZiB0aGUgDQo+Pj4gU0tZMTMzMzUtMzgxTEYgc2F5cywgYnV0IGRvbid0IGZvcmdldCB0
aGF0IHlvdSBoYXZlIGFub3RoZXIgMjQgdG8gMjcgDQo+Pj4gZEIgb2YgaXNvbGF0aW9uIGJldHdl
ZW4gVFggYW5kIFJYIGluIFU4MDcsIGFkZGluZyB1cCB0byA0OCB0byA1NCBkQiANCj4+PiBvZiBp
c29sYXRpb24uIFRoYXQncyBpbiB0aGUgc2FtZSBiYWxscGFyayBhcyBjcm9zc3RhbGsgdGhyb3Vn
aCB0aGUgDQo+Pj4gYm9hcmQsIHBvd2VyIHN1cHBseSwgYWRqYWNlbnQgdHJhY2VzIGV0Yy4gVGhl
IEIyeHggd2FzIGRlc2lnbmVkIGJ5IA0KPj4+IFJGIGVuZ2luZWVycyB3aG8ga2luZCBvZiBrbmV3
IHdoYXQgdGhleSB3ZXJlIGRvaW5nIDpEDQo+Pj4NCj4+PiBTbywgZG9uJ3QgZXhwZWN0IHRvIHdp
biBtdWNoIGJ5IHJlbW92aW5nIFU4MDUuIEVzcGVjaWFsbHkgcGFpcmVkIA0KPj4+IHdpdGggdGhl
IGZhY3QgdGhhdCB3ZSBoYXZlIG5vIGNoYXJhY3Rlcml6YXRpb24gb2YgbWF0Y2hpbmcgaW4gdGhl
IA0KPj4+IGJ5cGFzc2VkIG1vZGUsIEknZCBhc3N1bWUgeW91IHJlYWxseSB3b24ndCBlbmQgd2l0
aCBhIGNsZWFuZXIgUlgsIA0KPj4+IGJ1dCBqdXN0IG1vcmUgcHJvYmxlbXMNCj4+Pg0KPj4+IEJl
c3QsDQo+Pj4gTWFyY3VzDQo+Pj4NCj4+PiBPbiAxOC4wOS4yMyAwODoxMSwgb3V6YW5fdHNAaG90
bWFpbC5jb20gd3JvdGU6DQo+Pj4+DQo+Pj4+IEhlbGxvLCBpbiBteSBjYXNlLCB0aGUgZnVuY3Rp
b24gcGVyZm9ybWVkIGJ5IHRoZSAiU0tZMTMzMzXiiJIzODFMRiIgDQo+Pj4+IElDIHN3aXRjaCBp
cyBub3Qgd29ya2luZyBmb3IgbWUuIEFuZCBhcyBmYXIgYXMgSSBjYW4gc2VlLCB0aGUgDQo+Pj4+
IGlzb2xhdGlvbiBvZiB0aGlzIGNvbXBvbmVudCBpcyBsb3cgKDI0ZEItMjdkQikuIFRoZSBjYXJk
IEkgaGF2ZSBpcyANCj4+Pj4gQjIwMC4gU2NoZW1hdGljIEIyMTAgZ2l2ZW4gaW4gdGhlIGxpbmsg
DQo+Pj4+ICJodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9zY2hlbWF0aWNzL2IyMDAvYjIxMC5wZGYi
LiBJIHdhbnQgdG8gDQo+Pj4+IGJ5cGFzcyB0aGlzIGNvbXBvbmVudC4gQXMgZmFyIGFzIEkgY2Fu
IHNlZSwgdGhlcmUgYXJlIHBhZHMgZm9yIHRoaXMgDQo+Pj4+IG9uIHRoZSBjYXJkLiBJIHRoaW5r
IGl0IGlzIGJ5cGFzc2VkIGJ5IGFjdGl2YXRpbmcgQzg0NyBhbmQgQzg0OSBpbiANCj4+Pj4gdGhl
IHJlbGV2YW50IHBhcnQgb2YgdGhlIEIyMTAgc2NoZW1hdGljIHRoYXQgSSBzZW50IHlvdSBpbiBh
dHRhY2htZW50Lg0KPj4+Pg0KPj4+Pg0KPj4+Pg0KPj4+PiBUaGUgbWFpbiBxdWVzdGlvbiBJIHdh
bnQgdG8gYXNrIGlzLCBzaG91bGQgSSBjb25uZWN0IHRoZSAyMjBwRiANCj4+Pj4gY2FwYWNpdHkg
c2VlbiBpbiBDODEwIHRvIEM4NDcsIGFuZCB0aGUgNDcwcEYgY2FwYWNpdHkgc2VlbiBpbiBDODE0
IA0KPj4+PiB0byBDODQ5PyBPciBzaG91bGQgSSBzaG9ydCBjaXJjdWl0IGRpcmVjdGx5Pw0KPj4+
Pg0KPj4+Pg0KPj4+Pg0KPj4+PiBJIGFtIGF3YXJlIG9mIGFsbCB0aGUgcmlza3MuIEknbGwgYmUg
aGFwcHkgaWYgeW91IGNhbiBoZWxwIG1lLiBIYXZlIA0KPj4+PiBhIG5pY2UgZGF5Lg0KPj4+Pg0K
Pj4+Pg0KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xw0KPj4+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQ0KPj4+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVh
dmVAbGlzdHMuZXR0dXMuY29tDQo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18NCj4+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQ0KPj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4+DQo+Pg0KPj4gSUYgdGhlIGdvYWwgaXMg
cmVhbGx5IHJlYWxseSBoaWdoIFRYL1JYIGlzb2xhdGlvbiwgeW91J3JlIG5vdCBnb2luZyANCj4+
IHRvIGFjaGlldmUgdGhhdCB3aXRoIHRoaXMgZGVzaWduLsKgIFNpbmNlIHRoZSBUWCBhbmQgUlgg
c2lnbmFscw0KPj4gwqAgZ28gdGhyb3VnaCB0aGUgQUQ5MzYxIFJGIGNoaXAsIHdoaWNoIGlzIHRp
bnksIHZlcnkgaGlnaCBpc29sYXRpb24gDQo+PiB3aWxsIG5ldmVyIGJlIGFjaGlldmVkLg0KPj4N
Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+PiBV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4g
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0
dHVzLmNvbQ0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tCg==
