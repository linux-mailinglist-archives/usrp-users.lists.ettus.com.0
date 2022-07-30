Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB79458577E
	for <lists+usrp-users@lfdr.de>; Sat, 30 Jul 2022 02:02:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6183A3840A5
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 20:02:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659139369; bh=GFhKH3tc6FvprLA3JtBGzRuVNRNQfgUxuSdtJoFSvb0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=GfxuurGAQoHFu3jocLQJeNhx71og1DujufuyEuq2+UIT91R49/wCvkI0PkTovbEBU
	 g+N4NIno1D3Fq8SMBLoprBTm/eoAY6+Fo2qziI4d46FK+yjn193wlMoGdey8XsIcUy
	 PzA0tRJQdiAiSGmkw9Z1S34a5n+tdgWTdEGSCpc9FtetUqt92D5DvcC+BalCJNlLON
	 HIJrPszpFno0zzCwFayGLYQE7OTCJoLX1cimXVo7rq8aT27OeBVFILixMzayELrY5z
	 2XLVocaBwn+iI7hH+gL9lZzqx89TLtO85qFWKHvhSu01rBVV1ai3UryWrNu+cocumJ
	 Am4V0hb1Z51fg==
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id D78CA384088
	for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 20:01:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hye0bEIa";
	dkim-atps=neutral
Received: by mail-qk1-f176.google.com with SMTP id l3so4763740qkl.3
        for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 17:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=ajRCw7JxL+UnEq9SuoD1SrcOUJWqqdUNeI8mxZ7yXRU=;
        b=hye0bEIa7Zy41l5lIut7Q+mJkACXBL5lN4Vpyv7PwAcGl57uBEFP2KgujWDlzD8Z9f
         5MxSwpRucMgmZyGidg055kD/G01Gk5PcT7fycciPSEaf38OkMVuU4ajR4yAOB9CEsuZw
         2177OBsKxA/T/H2H83abDK+Dk4gscVBgB1eeXirVlQ6ZbpJFG7jYtnsMJ9CozZvK1sd6
         0PzH0ye6by9QbS35M/LqDIDcbiyQRqD0EocTFt86ysnVg/fL7RHVWCHVpqYgdcUR5UKG
         EB8V3u5SggtgqJI641eIXhGLh8g5fTp8Xed5IUuIskGSSGUtDi2p0GU5r2bPcYkxwdbI
         hTdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=ajRCw7JxL+UnEq9SuoD1SrcOUJWqqdUNeI8mxZ7yXRU=;
        b=GJgXTt7AilfXpXNxkk1Umt19gBbzlZPyZsrEg+c6/ln+Xoj252l6KIvYHKknBLFC2F
         dr0pAsZCj1q6w/HnncEdbj9j+OdLbk5wBCt8R5C9QLZzOUhJ2SjorhwLOtnMg3+KC1Z5
         K2uDb43vYgBJImSQskZucu2+Do2+FM0Ry7KN+ZWLFBrNy2IzsZNpIl5WSi9n98Z6L5oP
         0611CfkN6tYzAFeTDB/fOv22df8/msz/3tRbS6y9NV4mYi0HSKY6BXBWtl0azftSZPm2
         ds8qSHKBPKN330g57WqQjik6OpjoUw/KH1xhCstDwoLCK0hRerFcV98e0JzPeauZK/cQ
         zeww==
X-Gm-Message-State: AJIora+BVf3eSjOGNnrUtojzP0yofy217cZk6SJtU6RfEl3PA1rSNdID
	mLSOttDbwp/upNEIzbq2m8yuefdRlOo=
X-Google-Smtp-Source: AGRyM1vChAlk8qwsX8cg1i5Cz1+Me8ZEZhTXh4AQmx/2k7wiOCZWZ4F5uwYpvC5VUyWVy6BhEeH1iw==
X-Received: by 2002:a05:620a:1992:b0:6b5:fc74:474 with SMTP id bm18-20020a05620a199200b006b5fc740474mr4660828qkb.335.1659139298927;
        Fri, 29 Jul 2022 17:01:38 -0700 (PDT)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id t14-20020a37ea0e000000b006b58fce19dasm3460550qkj.20.2022.07.29.17.01.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jul 2022 17:01:38 -0700 (PDT)
Message-ID: <0dab63dd-43ad-5668-98fb-5bde82f44342@gmail.com>
Date: Fri, 29 Jul 2022 20:01:37 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <C6F0AC93-7393-4F62-B2A0-CFC0032AA51D@egr.msu.edu>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <C6F0AC93-7393-4F62-B2A0-CFC0032AA51D@egr.msu.edu>
Message-ID-Hash: EE4VHXXCXVEIH3I6DW77MZCLKYEVOKUJ
X-Message-ID-Hash: EE4VHXXCXVEIH3I6DW77MZCLKYEVOKUJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Properly changing tx_streamer channels
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EE4VHXXCXVEIH3I6DW77MZCLKYEVOKUJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNy0yOSAxNjo0MSwgSmFzb24gTWVybG8gd3JvdGU6DQo+IEhpIEFsbCwNCj4NCj4g
SeKAmW0gd29ya2luZyBvbiBhIHByb2plY3QgdXNpbmcgYW4gWDMxMCBhbmQgVUJYLTE2MCBkYXVn
aHRlcmJvYXJkcyB3aGVyZSB3ZSBuZWVkIHRvIHBlcmZvcm0gZnVsbCBkdXBsZXggb24gb25lIGRh
dWdodGVyYm9hcmQgYW5kIHRpbWUtZG9tYWluIGR1cGxleGluZyBvbiB0aGUgVFgvUlggcG9ydCBv
ZiB0aGUgc2Vjb25kIGRhdWdodGVyYm9hcmQuICBUaGUgZW5kIGdvYWwgaXMgZXNzZW50aWFsbHkg
anVzdCB0byBjb250cm9sIHRoZSBzd2l0Y2hlcyBvbiB0aGUgVUJYLTE2MCB0byBhbGxvdyBtZSB0
byB0cmFuc21pdCBvciByZWNlaXZlIG9uIHRoZSBUWC9SWCBwb3J0IG9uIG9uZSBvZiB0aGUgY2hh
bm5lbHMgd2hpbGUgb3BlcmF0aW5nIHRoZSBzZWNvbmQgY2hhbm5lbCBpbiBmdWxsLWR1cGxleC4g
Q3VycmVudGx5LCBJ4oCZbSBwZXJmb3JtaW5nIHRpbWVkIHRyYW5zbWl0IGFuZCByZWNlaXZlcyBh
dCB0aGUgc2FtZSB0aW1lIHVzaW5nIFNUUkVBTV9NT0RFX05VTV9TQU1QU19BTkRfRE9ORSB3aGVu
ZXZlciBkYXRhIG5lZWRzIHRvIGJlIHRyYW5zbWl0dGVkLg0KPg0KPiBNeSBjdXJyZW50IGFwcHJv
YWNoIHRvIGFjY29tcGxpc2ggdGhlIHRpbWUgZHVwbGV4aW5nIChlZmZlY3RpdmVseSBjb250cm9s
bGluZyB0aGUgc3dpdGNoZXMgdG8gYWxsb3cgdHJhbnNtaXQvcmVjZWl2ZSkgaXMgYnkgY2FsbGlu
ZyB1aGQ6OnVzcnA6Om11bHRpX3VzcnA6OmdldF90eF9zdHJlYW0oKSBlYWNoIHRpbWUgbmV3IGRh
dGEgaXMgcmVjZWl2ZWQgYnkgdGhlIHRyYW5zbWl0IGZ1bmN0aW9uLCBzZXR0aW5nIHRoZSB0eF9z
dHJlYW1fYXJncy5jaGFubmVscyBmaWVsZCBhcHByb3ByaWF0ZWx5IHByaW9yIHRvIHJlLWNyZWF0
aW5nIHRoZSBzdHJlYW1lciwgdG8gc3dpdGNoIG9uIGFuZCBvZmYgdGhlIHRyYW5zbWl0IHN3aXRj
aCBvbiB0aGUgVFgvUlggcG9ydCBzaW5jZSB0aGUgc3dpdGNocyBpcyBpbiBUWCBtb2RlIHdoZW5l
dmVyIGRhdGEgaXMgYmVpbmcgdHJhbnNtaXR0ZWQuICBJIGFsd2F5cyByZWNlaXZlIGRhdGEgZnJv
bSB0aGUgVFgvUlggcG9ydCBhbmQgaWdub3JlIGl0IHdoZW4gVFggaXMgdHJhbnNtaXR0aW5nIHRv
IGF2b2lkIG92ZXJoZWFkIG9mIHJlLWNyZWF0aW5nIHRoZSByeF9zdHJlYW1lciBlYWNoIHRpbWUu
DQo+DQo+IFRoaXMgd29ya3MsIGJ1dCBvbmx5IGZvciBleGFjdGx5IDEyMCBpdGVyYXRpb25zLiBB
ZGRpdGlvbmFsbHksIGlmIEkgZHluYW1pY2FsbHkgY3JlYXRlIHRoZSByZWNlaXZlIHN0cmVhbWVy
IGFzIHdlbGwgaXQgd29ya3MgZm9yIGV4YWN0bHkgNjAgaXRlcmF0aW9ucy4gIE9uY2UgaXQgcmVh
Y2hlcyAxMjAgaXRlcmF0aW9ucyBJIHN0YXJ0IHRvIGdldCBFUlJPUl9DT0RFX1RJTUVPVVQgcmVj
ZWl2aW5nIDAgc2FtcGxlcywgaS5lLiwgdGhlIFNEUiBzdG9wcyByZWNlaXZpbmcgYW55IGRhdGEs
IGhvd2V2ZXIgaXQgc3RpbGwgc2VlbXMgdG8gdHJhbnNtaXQganVzdCBmaW5lIChJIGdldCBBQ0tz
IGZvciBhbGwgdGhlIHRyYW5zbWl0dGVkIGRhdGEpLiAgRm9yIHdoYXQgaXTigJlzIHdvcnRoLCBp
dCBzZWVtcyB0byBiZSBpbmRpZmZlcmVudCB0byBUWC9SWCBidWZmZXIgc2l6ZSwgc28gaXQgZG9l
c27igJl0IHNlZW0gZGlyZWN0bHkgcmVsYXRlZCB0byBzdHJlYW1pbmcgYnVmZmVycy4gIEkgZG9u
4oCZdCBrbm93IGlmIGl0IGhhcyBzb21ldGhpbmcgdG8gZG8gd2l0aCB0aGUgdHhfc3RyZWFtZXIg
bm90IGJlaW5nIGZ1bGx5IGRlbGV0ZWQuICBJ4oCZbSBjYWxsaW5nIHR4X3N0cmVhbWVyLnJlc2V0
KCkgYW5kIGFzc2lnbmluZyB0byBudWxscHRyIGZvciBnb29kIG1lYXN1cmUgdG8gc3VnZ2VzdCB0
aGUgc2hhcmVkX3B0ciB0byBkZWxldGUgdGhlIG9iamVjdCAodGhvdWdoIEnigJltIG5vdCBzdXJl
IGhvdyB0byBkZXRlcm1pbmUgaWYgdGhpcyBpcyBhY3R1YWxseSBoYXBwZW5pbmcpLiAgQWRkaXRp
b25hbGx5LCBiZWZvcmUgSSB3YXMgZHluYW1pY2FsbHkgY3JlYXRpbmcgdGhlIHR4X3N0cmVhbSBv
YmplY3QsIHRoZSBwcm9ncmFtIHJhbiBmaW5lOyBpdOKAmXMgb25seSBub3cgdGhhdCBJIGFtIHJl
LWNyZWF0aW5nIHRoZSB0eF9zdHJlYW0gZHluYW1pY2FsbHkgYmFzZWQgb24gd2hpY2ggY2hhbm5l
bHMgYXJlIGFjdHVhbGx5IHRyYW5zbWl0dGluZyBkdXJpbmcgYSBjZXJ0YWluIHBlcmlvZC4NCj4N
Cj4gVGhlIG9ubHkgaGludCBJ4oCZdmUgZ290dGVuIGlzIGZyb20gdGhlIGdldF90eF9zdHJlYW0o
KSBkb2N1bWVudGF0aW9uOiAiVGhlcmUgY2FuIGFsd2F5cyBvbmx5IGJlIG9uZSBzdHJlYW1lci4g
V2hlbiBjYWxsaW5nIGdldF90eF9zdHJlYW0oKSBhIHNlY29uZCB0aW1lLCB0aGUgZmlyc3Qgc3Ry
ZWFtZXIgbXVzdCBiZSBkZXN0cm95ZWQgYmVmb3JlaGFuZC4iIFNvIGlmIHRoZSBzaGFyZWRfcHRy
IGlzbuKAmXQgYWN0dWFsbHkgYmVpbmcgZGVsZXRlZCB0aGlzIGNvdWxkIGJlIHRoZSBjYXVzZSwg
dGhvdWdoIEnigJltIG5vdCBzdXJlIHdoeSBpdCBhbGxvd3MgMTIwIGNhbGxzIGJlZm9yZSBpdCBz
dG9wcyByZWNlaXZpbmfigJRpdCBzZWVtcyBsaWtlIGl0IHNob3VsZCBjcmFzaCBhZnRlciB0aGUg
c2Vjb25kIGNhbGwsIGJ1dCBJIGFsc28gdGVzdGVkIGl0IHdpdGhvdXQgY2FsbGluZyByZXNldCgp
IG9yIGFzc2lnbmluZyBpdCB0byBudWxscHRyIG9uIHRoZSBzaGFyZWQgcG9pbnRlciwgYW5kIGl0
IGhhZCB0aGUgZXhhY3Qgc2FtZSBiZWhhdmlvci4gSG93ZXZlciwgdGhlIHR4X3N0cmVhbSBvYmpl
Y3QgZG9lcyBnbyBvdXQgb2Ygc2NvcGUgYXQgdGhlIGVuZCBvZiB0aGUgZnVuY3Rpb24gd2hpY2gg
bWF5IGFsc28gdGFrZSBjYXJlIG9mIHRoZSBzaGFyZWRfcHRyIGRlbGV0aW9uLCBzbyB0aGlzIG1h
eSBub3QgYmUgdGhlIGlzc3VlLiBGdXJ0aGVybW9yZSwgaXTigJlzIHN0cmFuZ2UgdGhhdCBkeW5h
bWljYWx5IGNyZWF0aW5nIHR4X3N0cmVhbSBvbmx5IHNlZW1zIHRvIGFmZmVjdCB0aGUgcnhfc3Ry
ZWFtIG9wZXJhdGlvbiBhbmQgdHhfc3RyZWFtIGFwcGVhcnMgdG8gY29udGludWUgdG8gd29yayBm
aW5lLg0KPg0KPiBJZiBJIGFjY29tcGxpc2ggdGhlIHN3aXRjaGluZyBkaXJlY3RseSB3aXRob3V0
IGNyZWF0aW5nIGEgbmV3IHR4X3N0cmVhbWVyIG9iamVjdCwgb3IgaWYgSSBjb3VsZCBjaGFuZ2Ug
dGhlIHRyYW5zbWl0IGNoYW5uZWxzIG9mIGEgdHhfc3RyZWFtZXIgb2JqZWN0IHdpdGhvdXQgZGVs
ZXRpbmcvY3JlYXRpbmcgYSBuZXcgb25lIHRoYXQgbWF5IGFsc28gcmVzb2x2ZSB0aGlzIGlzc3Vl
IEkgdGhpbmsuDQo+DQo+IElmIGFueW9uZSBoYXMgc3VnZ2VzdGlvbnMgb24gc29sdmluZyB0aGUg
aXNzdWUgZGVzY3JpYmVkIGFib3ZlLCBvciBob3cgdG8gYWNjb21wbGlzaCB0aGlzIGluIGEgZGlm
ZmVyZW50IHdheSwgSSB3b3VsZCBncmVhdGx5IGFwcHJlY2lhdGUgdGhlIGZlZWRiYWNrLg0KPg0K
PiBUaGFua3MgaW4gYWR2YW5jZSwNCj4gSmFzb24NCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KSSB0aGluayB3aGF0IHlvdSBtaWdo
dCB3YW50IHRvIGRvIGlzIHVzZSB0aGUgYnVyc3QtdGFncyBpbiB0aGUgbWV0YWRhdGEgDQpmb3Ig
InNlbmQoKSI6DQoNCmh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9zdHJ1Y3R1aGRfMV8x
dHhfX21ldGFkYXRhX190Lmh0bWwjYWI1ZmZlODEyZjhkM2QxODcwMjUzZTk4ZTZmZjE3MThhDQoN
ClBlcnNvbmFsbHksIHRoZSBUWCBzaWRlIG9mIHRoaW5ncyBoYXMgbmV2ZXIgYmVlbiBtdWNoIG9m
IGEgInRoaW5nIiBmb3IgDQptZSwgZ2l2ZW4gdGhhdCA5MCUgb2YgbXkgdGltZSBJIHNwZW5kIGFz
IGEgcmFkaW8gYXN0cm9ub21lciwgYnV0IHRoZSANClNUQVJUL0VORCBvZiBidXJzdA0KIMKgIHRh
Z3Mgd2VyZSBkZXNpZ25lZCB0byBwcm92aWRlIG1vcmUgaGludHMgdG8gdGhlIEFUUiBzd2l0Y2hp
bmcgDQpoYXJkd2FyZSBhbW9uZyBvdGhlciB0aGluZ3MuDQoNCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0g
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
