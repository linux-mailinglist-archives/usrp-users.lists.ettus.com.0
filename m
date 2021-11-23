Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A2D45AD98
	for <lists+usrp-users@lfdr.de>; Tue, 23 Nov 2021 21:49:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8BACD38413F
	for <lists+usrp-users@lfdr.de>; Tue, 23 Nov 2021 15:49:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IayC+hfZ";
	dkim-atps=neutral
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 60E4238402E
	for <usrp-users@lists.ettus.com>; Tue, 23 Nov 2021 15:48:34 -0500 (EST)
Received: by mail-qk1-f175.google.com with SMTP id b67so483893qkg.6
        for <usrp-users@lists.ettus.com>; Tue, 23 Nov 2021 12:48:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=I6U2rNUj3FN9WUySYPwmoxp4CCfYhHwVolbn8pmZLD8=;
        b=IayC+hfZncjAM65yCUGb+yw/7QWQTPSNywJzx813WgnmRJ2+nzu6ulMkcdrJCd6yvf
         XTSVgINlitvEcrEC29VOtjFm7IvjTAizwxDmj30G6E+lrp2pmonpnX8ZMQTok4cr7DyJ
         Witw/UoRMsweD14ec1YYpkTChN0A3vM0C6pE7Uc5uyP08cW2LoBRaKL7kDao6aegZGeX
         2+msrnVFPbe6UzsCrd219jRYxPziw/AYpj89MYKVIXLK7/srlMoYlPnj/kRKlv1512Sx
         ShPw9TfgNVQmeeqzofzoHxjy65mRZQ/OKVOCvOwymubbOWtnEtM7Mvy7Xv7M5f3Iuowe
         2rdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=I6U2rNUj3FN9WUySYPwmoxp4CCfYhHwVolbn8pmZLD8=;
        b=OrjS+dfuN6wZpL2uggv/rKjAmZvmQ23iqSzH875zvEUJ7ZJyceTJuNbORR2PAz5a3x
         nYvzWGeKfZVdHWj/L37TKZXyWT9uUV/lyqf4OCAp4ZDAfM6rDtXVzRVH6y2/kjmVEWkP
         fSIY7nDGWV7MsfK14qxTVP+rfbyRT232vjXWBcL63O8tZkiHxNVPimhwRCnP6cUg8KrO
         mWm2Ffm+4VDza0o2wiSW4e3MJ5nyschlT87lU9nbIU2vs2J8VOA54q47c8VhfocXhKWt
         VL1QTciiith3M15Fo7qILYq26We+s4nKNRVk3H8RkiN5YpeudkRkWsJXPRFgwP4dAEIC
         mrTw==
X-Gm-Message-State: AOAM530L+ObyY7vDD2a32JtV7qnMTmrJyQ3A/OD4NOTerWK7zQMl3WpR
	tn2qDg3jly1Oin0/gnHm9Am/Adpuwmc=
X-Google-Smtp-Source: ABdhPJwbVI89MKxnlSVBef/kZP7BSto9F7zT0JjbJ/FLgbIRheKe63uRvSu67VrMxRXRDea7RRRk1Q==
X-Received: by 2002:a05:620a:2796:: with SMTP id g22mr283639qkp.341.1637700513585;
        Tue, 23 Nov 2021 12:48:33 -0800 (PST)
Received: from [192.168.2.211] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id ay42sm6992105qkb.40.2021.11.23.12.48.32
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Nov 2021 12:48:33 -0800 (PST)
Message-ID: <482fd72a-048c-c1a9-903b-9a1a2f677e77@gmail.com>
Date: Tue, 23 Nov 2021 15:48:32 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <360d04b1-759d-69cb-fa01-d400cb592203@virginia.edu>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <360d04b1-759d-69cb-fa01-d400cb592203@virginia.edu>
Message-ID-Hash: 3KCF6PHIOKNJ5XDDQ432KPWGYYAG4KA7
X-Message-ID-Hash: 3KCF6PHIOKNJ5XDDQ432KPWGYYAG4KA7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 FPGA errors
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3KCF6PHIOKNJ5XDDQ432KPWGYYAG4KA7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMS0yMyAxNDoyMCwgRHVzdGluIFdpZG1hbm4gd3JvdGU6DQo+IEhpIGxpc3QsDQo+
DQo+IEkgb2NjYXNpb25hbGx5LCB1bnByZWRpY3RhYmx5LCBnZXQgRlBHQS1yZWxhdGVkIGVycm9y
cy4gVXN1YWxseSBzb21lIA0KPiBzb3J0IG9mIEZQR0EgdGltZW91dHMsIHNvIEkgaGF2ZSB0byBy
ZXNldCB0aGUgVVNSUCBhZnRlciB0aGVzZSBlcnJvcnMsIA0KPiB3aGljaCBpcyByYXRoZXIgaW5j
b252ZW5pZW50Lg0KPg0KPiBUaGUgc29mdHdhcmUgaXMgQysrIHVzaW5nIHRoZSBVSEQgNCBtdWx0
aS11c3JwIEFQSS4NCj4NCj4gV2l0aG91dCBnb2luZyBpbnRvIHRvbyBtdWNoIGRldGFpbCwgSSB3
b25kZXIgaWYgdGhlcmUgaXMgYW55dGhpbmcgDQo+IHBhcnRpY3VsYXIgdG8gbXkgKmFwcHJvYWNo
KiB0aGF0IGNvdWxkIG1ha2UgdGhpbmdzIG1vcmUgcHJvbmUgdG8gRlBHQSANCj4gZXJyb3JzIG9m
IGFueSBzb3J0cy4gSSdtIGFsc28gY3VyaW91cyBhYm91dCB0aGUgZGlmZmVyZW50IA0KPiDigJxz
dHJlYW1fbW9kZXPigJ0gdGhhdCBhcmUgYXZhaWxhYmxlLCB0aGVpciBwcm9zIGFuZCBjb25zIC8g
dXNlIGNhc2VzLCANCj4gYW5kIG1vcmUgcGFydGljdWxhcmx5IGlmIEknbSByZWFsbHkgdXNpbmcg
dGhlIG9uZSBiZXN0IHN1aXRlZCB0byBteSANCj4gdXNlIGNhc2UuDQo+DQo+IEJlZm9yZSBkZXNj
cmliaW5nIHRoYXQsIHRoaXMgaXMgd2hhdCBJJ20gdHJ5aW5nIHRvIGRvLiBJdCdzIGZhaXJseSAN
Cj4gc2ltcGxlLCBidXQgSSdtIHRyeWluZyB0byBtYWtlIGl0IHR1bmUsIGNvbGxlY3QsIGFuZCB0
aGVuIHR1bmUgYWdhaW4gDQo+IGFzIHF1aWNrbHkgYXMgcG9zc2libGUgd2l0aG91dCBsZWF2aW5n
IG15IGNvenkgQysrIGJlZC4gSXQncyBjdXJyZW50bHkgDQo+IGRvaW5nIHRoaXMgPjEwMCB0aW1l
cyBwZXIgc2Vjb25kLg0KPiAqIHRyYW5zbWl0cyBjb250aW51b3VzbHkNCj4gKiBpbiBhIGxvb3A6
DQo+ICoqKiB0dW5lIHRoZSB0cmFuc21pdHRlciBhbmQgcmVjZWl2ZXJzIGFuZCBzZXQgdGhlaXIg
Z2FpbjoNCj4gKioqIHJlY2VpdmUgYSBmaXhlZCBudW1iZXIgb2Ygc2FtcGxlcw0KPg0KPiBIb3cg
SSdtIGN1cnJlbnRseSBnb2luZyBhYm91dCBpdDoNCj4NCj4NCj4gSW4gbWFpbiBvYmplY3QvdGhy
ZWFkDQo+ICogaW5pdCB0aGUgcmFkaW8NCj4gKiBjcmVhdGUgYSB0eCBvYmplY3QgYW5kIG1vdmUg
aXQgdG8gYSBuZXcgdGhyZWFkDQo+ICogZ2l2ZSB0aGUgdHggb2JqZWN0IGEgc3RyZWFtZXINCj4g
KiB0ZWxsIHRoZSB0eCBvYmplY3QgdG8gc3RhcnQgc3RyZWFtaW5nDQo+ICogY3JlYXRlIGEgcngg
b2JqZWN0IGFuZCBtb3ZlIGl0IHRvIGEgbmV3IHRocmVhZA0KPiAqIGdpdmUgdGhlIHJ4IG9iamVj
dCBhIHN0cmVhbWVyDQo+ICogdGVsbCB0aGUgcnggb2JqZWN0IHRvIHN0YXJ0IHN0cmVhbWluZw0K
PiAqIGluIGEgbG9vcCAoZm9yZXZlcik6DQo+ICoqKiBjbGVhciBjb21tYW5kIHRpbWUNCj4gKioq
IHNldCBjb21tYW5kIHRpbWUgdG8gbm93KCkrMC4wMDQNCj4gKioqIHNldF9yeF9mcmVxIHRvIG5l
eHQgZnJlcXVlbmN5IGZvciBib3RoIGNoYW5uZWxzDQo+ICoqKiBzZXRfdHhfZnJlcSB0byBuZXh0
IGZyZXF1ZW5jeSBmb3IgY2hhbm5lbCAwDQo+ICoqKiBzZXQgdGhlIHJ4IGdhaW4NCj4gKioqIHNl
dCB0aGUgdHggZ2Fpbg0KPiAqKiogc2xlZXAgZm9yIDRtcw0KPiAqKiogYXNrIHRoZSByeCBvYmpl
Y3QgdG8gc2F2ZSBzb21lIHNhbXBsZXMNCj4NCj4gaW4gdHggb2JqZWN0L3RocmVhZA0KPiAqIGlu
IGEgbG9vcCAodW50aWwgYXNrZWQgdG8gc3RvcCBieSBtYWluKQ0KPiAqKiogY2FsbCBzZW5kIG9u
IHRoZSBzdHJlYW1lciB3aXRoIG1heF9udW1fc2FtcHMgc2FtcGxlcyBmcm9tIGEgZml4ZWQgDQo+
IHdhdmVmb3JtDQo+ICogd2hlbiBraWxsZWQsIHNlbmQgYW4gZW1wdHkgZW5kX29mX2J1cnN0DQo+
DQo+IGluIHJ4IG9iamVjdC90aHJlYWQNCj4gKiBpc3N1ZSBTVFJFQU1fTU9ERV9TVEFSVF9DT05U
SU5VT1VTLCBzdGFydGluZyAwLjI1IGluIHRoZSANCj4gZnV0dXJlL19yZXN0YXJ0DQo+ICogaW4g
YSBsb29wICh1bnRpbCBhc2tlZCB0byBzdG9wIGJ5IG1haW4pDQo+ICoqKiByZWN2wqAgbWF4X251
bV9zYW1wcyBmcm9tIHRoZSBzdHJlYW1lcg0KPiAqKiogY2hlY2sgZm9yL2hhbmRsZSBlcnJvcnMg
aWYgdGhleSBvY2N1ciAob2Z0ZW4gZG8gYXQgdGhlIHN0YXJ0IG9mIA0KPiB0aGUgc3RyZWFtKQ0K
PiAqKiogY29weSB0aGUgc2FtcGxlc8KgIGlmIGN1cnJlbnRseSBjb2xsZWN0aW5nLCBlbHNlIGRp
c2NhcmQgdGhlbQ0KPiAqIHdoZW4ga2lsbGVkLCBpc3N1ZSBTVFJFQU1fTU9ERV9TVE9QX0NPTlRJ
Tk9VUw0KPg0KPiBJIGNhbi93aWxsIHByb3ZpZGUgbW9yZSBkZXRhaWwvY29kZS9ldGMsIGJ1dCB0
aGF0J3Mgbm90IG5lY2Vzc2FyaWx5IA0KPiByZWxldmFudCB0byB0aGUgKmFwcHJvYWNoKiBJIHdv
dWxkbid0IHRoaW5rLiBUbyByZWl0ZXJhdGUgdGhlIA0KPiBxdWVzdGlvbiwgSSB3YW50IHRvIGtu
b3cgaWYgdGhlcmUgaXMgYW55dGhpbmcgYWJvdXQgdGhlIGFwcHJvYWNoIHRoYXQgDQo+IHdvdWxk
IG1ha2UgRlBHQSByZWxhdGVkIGVycm9ycyBsaWtlbHkuDQo+DQo+IC1EdXN0aW4NCj4NClNldHRp
bmcgeW91ciBjb21tYW5kLXRpbWUgb25seSA0bXNlYyBpbiB0aGUgZnV0dXJlIHdpbGwgYmUgYSBi
aXQgZGljZXksIA0KanVzdCBkdWUgdG8gT1MgYW5kIG5ldHdvcmstbGF5ZXIgbGF0ZW5jeS4NCg0K
QnV0IGZ1cnRoZXIgaW5wdXQgd2lsbCBsaWtlbHkgcmVxdWlyZSB0aGUgYWN0dWFsIGVycm9ycyBw
cm9kdWNlZCwgYW5kIA0KcHJvYmFibHkgY29kZSBzbmlwcGV0cyB0byBzaG93IHdoYXQgcHJvdm9r
ZXMgdGhlIGVycm9ycy4NCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tCg==
