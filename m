Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A79564138
	for <lists+usrp-users@lfdr.de>; Sat,  2 Jul 2022 17:56:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1D6BA38430C
	for <lists+usrp-users@lfdr.de>; Sat,  2 Jul 2022 11:56:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1656777399; bh=EVtC8///RY49LhXHhuOTLSBfCbZGK4MENPlDdLMnBvo=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=lC4cpWA/C6vMpyNSYRerVjoE8ttwMb3vFQ7gldHIGZUgHPC84ExafY5jvpppTAvjZ
	 6T6EpHp3ndOeOok3MXSpn0RGultvjnGfDd19cAR6K6R/5bUUqwMLFg1/vKlH3v/UW8
	 OSXQa5XxWHg4JNFv/v+vj4e9z/f0QCblUv6GrGz+ZHGqItMG8O/nTHtD5ZvigXoQlS
	 1/VxI6MZWHXFY2s1ygfEOKX0lh6c2MBDimQszSaaCBpEnnQcA+/zPGzDHUEx1VRW7l
	 GLji9KJ3ZtE/1Tl9sVfUKggO+R/hzqSW2D+AiXMeqnZvua6wYWx8dkz9kHEzo6qYkC
	 q7MLUCh7842uA==
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id F36EF383D0C
	for <usrp-users@lists.ettus.com>; Sat,  2 Jul 2022 11:54:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gvmySetY";
	dkim-atps=neutral
Received: by mail-qk1-f176.google.com with SMTP id r138so3855451qke.13
        for <usrp-users@lists.ettus.com>; Sat, 02 Jul 2022 08:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=C9WW08CpbZ8QooQ+VZpynxeagnuS2j/vTZIEdCuen5Q=;
        b=gvmySetY6pWBNrmDqBlW1u+k2AfMAnFCW4pyeGHSYQfLVxnZ40gAAzL1R6+xkOKKpR
         EpX0HOKrH19lC4hDvcv1Pz/BLT5feAGto4LMrWTl3ZI9oi9S4OyCTUm1HsK4LdScLZT7
         LYNItBLHGEZUJEIlcud6E9GKypuen5CB7W88aQy/1e3Ta/EKguxvXCAfUyJ4XXYb83xO
         l+ODfw3vuAPJGYDuwAbEkrT5BgTStzFU0srFjMoMq5XCjtQWbz3rYVdfYMautcJCAi59
         uRXtKaqgIgOWKnZCbFxNHpIo1oq19W55uIbYPg7MYfwVN6ZUCV3RvQYm/CTZ+CAD2gDq
         CP4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=C9WW08CpbZ8QooQ+VZpynxeagnuS2j/vTZIEdCuen5Q=;
        b=2IPxEsVnazEZY1VQepir8oLN3Vm4cCSp84ycaj/uPNxd5Ulb5y6bn1pjgVOxkt6xCF
         BnIh4rvm3Zwnz2F9Pncr3hqSa0fNTX7oh1Vi10HHBXeKoZnERGckGgpj1R4rEA4/Be33
         tanLfHetC7s65JrtK5EcO84cK9HiNCB/DcgSIBo7BmsW9LB+G/ChKSmQ3yxOt1XofyUp
         drGWKTsVzGFxB+TdXU0H8ltxDUog9XC1Rnh2InWK55HR07Q5j1JuJKkEKUqSvvXMGfEP
         S1tX3m9LqNn6asOQOZ5YbHUlIwoXZcyGPkWfzHa4R6r+jQMP9BO6aUFSqlwA8rX6M1Xy
         GbrA==
X-Gm-Message-State: AJIora8AIIdlk0Yc1YhBt+3xqi/MTRkT6V5rMBpFmTrjGPo4A/BWHegH
	HPlE6FJlvRp5PHGGUXtuuXw=
X-Google-Smtp-Source: AGRyM1tbCTACZTPk9oxt+AT3lrO8gxqjDV19bfiZkYs5WoBj20MmIt4JYw4t6TcdHcUZPsEZbgpKBg==
X-Received: by 2002:a05:620a:4402:b0:6af:1b92:f064 with SMTP id v2-20020a05620a440200b006af1b92f064mr14809071qkp.410.1656777251329;
        Sat, 02 Jul 2022 08:54:11 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.gmail.com with ESMTPSA id z198-20020a3765cf000000b006a736c8ea80sm20428012qkb.48.2022.07.02.08.54.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Jul 2022 08:54:10 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sat, 2 Jul 2022 11:54:09 -0400
Message-Id: <6E3D61AB-1674-4F9D-8952-5BF6479D0852@gmail.com>
References: <CAAxXO2EpH5TqnpHd7hUUvchN_pSMnW=UU7=RJ_-a3jv+Jy59=Q@mail.gmail.com>
In-Reply-To: <CAAxXO2EpH5TqnpHd7hUUvchN_pSMnW=UU7=RJ_-a3jv+Jy59=Q@mail.gmail.com>
To: Nikos Balkanas <nbalkanas@gmail.com>
X-Mailer: iPhone Mail (19F77)
Message-ID-Hash: 5IQXBXG575EWKF6K7L2VZDF2BIQJW2AJ
X-Message-ID-Hash: 5IQXBXG575EWKF6K7L2VZDF2BIQJW2AJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sp h <stackprogramer@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can convert a complex float 32 signal to complex int 16 signal for using in USRP??
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5IQXBXG575EWKF6K7L2VZDF2BIQJW2AJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIGNvbnZlbnRpb24gaW4gdGhlIFVIRCBhbmQgR251UmFkaW8gdW5pdmVyc2UgaXMgdGhhdCBm
bG9hdHMgYXJlIHNjYWxlZCBpbnRvIHstMS4wLCsxLjB9Lg0KDQpJZiB5b3Ugc2V0dXAgeW91ciBz
dHJlYW1lciB0byB1c2UgY29tcGxleCBmbG9hdCBDUFUgZm9ybWF0IGFuZCBzYzE2IHdpcmUgZm9y
bWF0IHlvdSBqdXN0IG5lZWQgdG8gc2NhbGUgeW91ciBjb21wbGV4IGZsb2F0cyBhcHByb3ByaWF0
ZWx5LiANCg0KU2VudCBmcm9tIG15IGlQaG9uZQ0KDQo+IE9uIEp1bCAyLCAyMDIyLCBhdCAxMDoy
MiBBTSwgTmlrb3MgQmFsa2FuYXMgPG5iYWxrYW5hc0BnbWFpbC5jb20+IHdyb3RlOg0KPiANCj4g
77u/SGksDQo+IA0KPiBJIGRvbid0IGtub3cgdm9sa18zMmZjX2NvbnZlcnRfMTYgaWMuIER1bm5v
IGlmIGl0IGNvbnZlcnRzIGJldHdlZW4gYmlnDQo+IGFuZCBsaXR0bGUgaW5kaWFuczooDQo+IFdo
ZW4gY29udmVydGluZyBhIGZsb2F0IHRvIGludCwgeW91IGFsd2F5cyBoYXZlIHRvIGNlaWwgb3Ig
Zmxvb3IgdGhlIGZsb2F0Lg0KPiBDZWlsIHNvdW5kcyBhcyBnb29kIGFzIGFueS4gWW91IGNhbiBl
YXNpbHkgY2hhbmdlIHRoYXQgdG8gZmxvb3IgaWYgeW91DQo+IHJ1biBpbnRvIHByb2JsZW1zLg0K
PiBTaW5jZSBjbGlicyBsZTMydG8qIHRha2UgaW50cyBhcyBhcmd1bWVudHMsIEkgd291bGQgZmly
c3QgY29udmVydA0KPiBmbG9hdDMyIHRvIGludDMyIGZyb20gZ251cmFkaW8gc2F2ZSB0byBmaWxl
LCBhbmQgdGhlbiB3b3JyeSBhYm91dA0KPiB0aGUgaW5kaWFucyB3aGVuIGltcG9ydGluZyB0byB1
aGQuLi4NCj4gDQo+IEhUSA0KPiBOaWtvcw0KPiANCj4+IE9uIEZyaSwgSnVsIDEsIDIwMjIgYXQg
ODo0MiBBTSBzcCBoIDxzdGFja3Byb2dyYW1lckBnbWFpbC5jb20+IHdyb3RlOg0KPj4gDQo+PiBJ
IHJlY29yZGVkIGEgY29tcGxleCBzaWduYWwgZmlsZSwgSSBkaWQgaXQgd2l0aCBIYWNrUkZPTkUs
ICBGb3Igc2VuZGluZyBvbiBVU1JQIEkgd2FudCB0byB1c2UgdGhlIGludDE2IG9wdGlvbiBhcyBp
bnB1dCwgTXkgcXVlc3Rpb24gaXMgaG93IGNhbiBjb252ZXJ0IGEgY29tcGxleCBmbG9hdCAzMiBz
aWduYWwgdG8gY29tcGxleCBpbnQgMTYgZm9yIFVTUlA/DQo+PiB3aGF0J3MgdGhlIHJlbGF0aW9u
IGJldHdlZW4gY29tcGxleCBmbG9hdCAzMiBhbmQgY29tcGxleCBpbnQgMzIgaW4gVVNSUD8NCj4+
IEkga25vdyB0aGF0IGluIFVTUlAgbnVtYmVycyBhcmUgaW4gZm9ybWF0IGNvbXBsZXggaW50IDE2
IGFuZCBiaWctZW5kaWFuIGFuZCBpbiBHbnVyYWRpbyBudW1iZXJzIGluIGZvcm1hdCBjb21wbGV4
IGZsb2F0IDMyIGFuZCBsaXR0bGUtZW5kaWFuLi4uDQo+PiBodHRwczovL2ZpbGVzLmV0dHVzLmNv
bS9tYW51YWwvcGFnZV9jb252ZXJ0ZXJzLmh0bWwNCj4+IEkgdXNlZCB2b2xrIGxpYiBidXQgdGhl
IGZsb2F0IHRoYXQgSSBlbnRlcmVkIGFzIGlucHV0LCBpcyBjZWlsZWQgdG8gYmlnZ2VyIGludGVn
ZXJzLiBJcyB0aGlzIGEgbWV0aG9kIHZhbGlkIGZvciBjb252ZXJ0aW5nIHNpZ25hbHMuLi4/T3Ig
bXkgZGF0YSB3aWxsIGJlIGNvcnJ1cHQhISENCj4+IFRoYW5rcyBpbiBhZHZhbmNlLg0KPj4gDQo+
PiANCj4+PiAgICAgICBsdl8xNnNjX3QqIG91dHB1dFZlY3RvcjsNCj4+PiANCj4+PiAgICAgICBs
dl8zMmZjX3QqIGlucHV0VmVjdG9yOw0KPj4+IA0KPj4+ICAgICAgIGlucHV0VmVjdG9yLT5yZWFs
KDI1LjU1KTsNCj4+PiANCj4+PiAgICAgICBpbnB1dFZlY3Rvci0+aW1hZyg0NSk7DQo+Pj4gDQo+
Pj4gICAgICAgdm9sa18zMmZjX2NvbnZlcnRfMTZpYyhvdXRwdXRWZWN0b3IsaW5wdXRWZWN0b3Is
MzIpOw0KPj4+IA0KPj4+ICAgICAgIHFEZWJ1ZygpPDxvdXRwdXRWZWN0b3ItPnJlYWwoKTw8Ii0t
LS0tIjsNCj4+IA0KPj4gDQo+PiBUaGUgb3V0cHV0Og0KPj4+IA0KPj4+IDI2IC0tLS0tDQo+PiAN
Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+PiBV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4g
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0
dHVzLmNvbQ0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20K
