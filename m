Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB975642DB
	for <lists+usrp-users@lfdr.de>; Sat,  2 Jul 2022 23:17:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B73463841E1
	for <lists+usrp-users@lfdr.de>; Sat,  2 Jul 2022 17:17:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1656796653; bh=ENi0wNGI7i7ZWicwkPzuQ4+GBUviMlSITDaW9zUSdP8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=R+7k2hln0ssbIhpzVTaGuFMFtw0rj/bPfG9pXWFN06dDsbOjiqurs3aHR9meMKbPz
	 ih50ieAW+6Q9D5FHyZl6NEJVjhvbqeKZbQsJ74WV2ltMBNkuysab6/nw0G3+hn+xGF
	 42ZbZ1psN+xmQXYzIwE6Ofl/CfGiy0OoCCXel2TPVxVOh8is85xizcI/accEdn/QLM
	 disGPlKr0ozqV5AR4R90R5ttd4h26QNPoF3CPQU30Exc4VKaOAp1kWKHJhMRxUvFHg
	 Np9C5QwwkKKDzzfNZXvN6U4IaG0naJ76Aqn+iUs4IvldntF4E6fLGWKbOLhtp3EmsK
	 VDJ5qhLMrAPpw==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id A4955383DB9
	for <usrp-users@lists.ettus.com>; Sat,  2 Jul 2022 17:14:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="S/qUjyrS";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id lw20so10009224ejb.4
        for <usrp-users@lists.ettus.com>; Sat, 02 Jul 2022 14:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=UIfwHNs5S4RRkGlj9HJzoBhz2kAYMyqpnmuP87EOtFQ=;
        b=S/qUjyrS7gxQ0e5S1Qd+vI2dKDNwFxByZKbTeEAhtu2QwgQ+bOqYkXHfkmHNBsGrZZ
         +dUPkLYDOqh0vcSLFIje0rKlzVrq2hupz88S6wGcC5HmnlXtvr+QpFyMpma7nu4d5kJ5
         6tHSUpfd1le13GE4w1/h8VUlzxlJhiHuhWHRWhQwyqF37Y0t89oIn9sp+Kx6NN4Wazw1
         zUmtDwnC72tlrYlC9vKSVDPgVj5Fn8vKX2MJ+5cuPH8wzz3FyqZDg6TxKWrZMUJW2Isn
         +kKXLY0h1XAE2Ao+TpJOq2FZhSAfB1oEZ8iPQB84yEWqd6DqhpVYLXhLlA0z2JJQU/1Q
         ZCJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=UIfwHNs5S4RRkGlj9HJzoBhz2kAYMyqpnmuP87EOtFQ=;
        b=6l0V3UtB6qJXAK3wKw1iNTDTXLhvm+AYJW9fQ+4bwWjSk5/FRsu17eTevdswTlJHMx
         yiNOwf6JWD0GTUQn7vvhcMsLWQ5m2NjvMMVOpcVuPzUzOU9UqALViflJhqgXqDAfyTgZ
         Ed+cCj1fs3SKby9cI6q00LE8hP0fmcv54B68G+XtnwF8rx02PMUe6prHbS/NtgGWEUTz
         Je9ZA/Y9SAQm8P6U9F4YCBzBvR5Ae/PRcS+eszfBrdABuj1Am4xMh2JqhkiAc2wMevh0
         EFCwGqRsd4KrhgGQ70X9hIM8PL2AittLvf/hjEXrHhG8EbqESIaVYLqKktRcqMJXrmUi
         4F8Q==
X-Gm-Message-State: AJIora8cdzt7+IKEPW1VPqxo8zk4uBsffOJDBdVXxHTtKhTPMQ6ENtk5
	Atbz7gvajWZtO7tPh/GJXWI1oWJz5ldrBPwI3f8=
X-Google-Smtp-Source: AGRyM1v4bOJg9JtnOhBePPPyUHD72hqTweOmmQ/aCXi5xAdV/1blJUZTMR2uTqM8KuiNOWxzy50y7VXffUuZ4/PoiF0=
X-Received: by 2002:a17:907:a0c8:b0:726:8f36:c8dc with SMTP id
 hw8-20020a170907a0c800b007268f36c8dcmr20840131ejc.40.1656796489438; Sat, 02
 Jul 2022 14:14:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2EpH5TqnpHd7hUUvchN_pSMnW=UU7=RJ_-a3jv+Jy59=Q@mail.gmail.com>
 <6E3D61AB-1674-4F9D-8952-5BF6479D0852@gmail.com>
In-Reply-To: <6E3D61AB-1674-4F9D-8952-5BF6479D0852@gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sat, 2 Jul 2022 21:14:37 +0300
Message-ID: <CAAxXO2Gzu2DFt7mkMJjYZrNk4X8g+TK7j3ymzpeehDX=NSjm4Q@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: J2Y5EMRZDWZJWLCEMX3FIUTTXFY5BNLX
X-Message-ID-Hash: J2Y5EMRZDWZJWLCEMX3FIUTTXFY5BNLX
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sp h <stackprogramer@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can convert a complex float 32 signal to complex int 16 signal for using in USRP??
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J2Y5EMRZDWZJWLCEMX3FIUTTXFY5BNLX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU2F0LCBKdWwgMiwgMjAyMiBhdCA2OjU0IFBNIE1hcmN1cyBEIExlZWNoIDxwYXRjaHZvbmJy
YXVuQGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+IFRoZSBjb252ZW50aW9uIGluIHRoZSBVSEQgYW5k
IEdudVJhZGlvIHVuaXZlcnNlIGlzIHRoYXQgZmxvYXRzIGFyZSBzY2FsZWQgaW50byB7LTEuMCwr
MS4wfS4NCj4NCj4gSWYgeW91IHNldHVwIHlvdXIgc3RyZWFtZXIgdG8gdXNlIGNvbXBsZXggZmxv
YXQgQ1BVIGZvcm1hdCBhbmQgc2MxNiB3aXJlIGZvcm1hdCB5b3UganVzdCBuZWVkIHRvIHNjYWxl
IHlvdXIgY29tcGxleCBmbG9hdHMgYXBwcm9wcmlhdGVseS4NCg0KSnVzdCB0byBlbGFib3JhdGUg
b24gdGhpcyBhIGJpdC4gSWYgeW91ciBkYXRhIGlzIGxhcmdlIGVub3VnaCAoPj4xKQ0KdGhlbiAr
LSAxIHdvbid0IG1ha2UgYW55IGRpZmZlcmVuY2UuLi4NCklmIGl0IGlzICg8IDEpIHRoZW4gaXQg
d2lsbCBiZSBhIGJpZyBwcm9ibGVtLiBTY2FsZSBhY2NvcmRpbmdseTopDQpZb3UgY2FuIHVzZSBl
aXRoZXIgY2VpbCBvciBmbG9vci4gU2FtZSBlcnJvcjopDQoNCk5pa29zDQo+DQo+IFNlbnQgZnJv
bSBteSBpUGhvbmUNCj4NCj4gPiBPbiBKdWwgMiwgMjAyMiwgYXQgMTA6MjIgQU0sIE5pa29zIEJh
bGthbmFzIDxuYmFsa2FuYXNAZ21haWwuY29tPiB3cm90ZToNCj4gPg0KPiA+IO+7v0hpLA0KPiA+
DQo+ID4gSSBkb24ndCBrbm93IHZvbGtfMzJmY19jb252ZXJ0XzE2IGljLiBEdW5ubyBpZiBpdCBj
b252ZXJ0cyBiZXR3ZWVuIGJpZw0KPiA+IGFuZCBsaXR0bGUgaW5kaWFuczooDQo+ID4gV2hlbiBj
b252ZXJ0aW5nIGEgZmxvYXQgdG8gaW50LCB5b3UgYWx3YXlzIGhhdmUgdG8gY2VpbCBvciBmbG9v
ciB0aGUgZmxvYXQuDQo+ID4gQ2VpbCBzb3VuZHMgYXMgZ29vZCBhcyBhbnkuIFlvdSBjYW4gZWFz
aWx5IGNoYW5nZSB0aGF0IHRvIGZsb29yIGlmIHlvdQ0KPiA+IHJ1biBpbnRvIHByb2JsZW1zLg0K
PiA+IFNpbmNlIGNsaWJzIGxlMzJ0byogdGFrZSBpbnRzIGFzIGFyZ3VtZW50cywgSSB3b3VsZCBm
aXJzdCBjb252ZXJ0DQo+ID4gZmxvYXQzMiB0byBpbnQzMiBmcm9tIGdudXJhZGlvIHNhdmUgdG8g
ZmlsZSwgYW5kIHRoZW4gd29ycnkgYWJvdXQNCj4gPiB0aGUgaW5kaWFucyB3aGVuIGltcG9ydGlu
ZyB0byB1aGQuLi4NCj4gPg0KPiA+IEhUSA0KPiA+IE5pa29zDQo+ID4NCj4gPj4gT24gRnJpLCBK
dWwgMSwgMjAyMiBhdCA4OjQyIEFNIHNwIGggPHN0YWNrcHJvZ3JhbWVyQGdtYWlsLmNvbT4gd3Jv
dGU6DQo+ID4+DQo+ID4+IEkgcmVjb3JkZWQgYSBjb21wbGV4IHNpZ25hbCBmaWxlLCBJIGRpZCBp
dCB3aXRoIEhhY2tSRk9ORSwgIEZvciBzZW5kaW5nIG9uIFVTUlAgSSB3YW50IHRvIHVzZSB0aGUg
aW50MTYgb3B0aW9uIGFzIGlucHV0LCBNeSBxdWVzdGlvbiBpcyBob3cgY2FuIGNvbnZlcnQgYSBj
b21wbGV4IGZsb2F0IDMyIHNpZ25hbCB0byBjb21wbGV4IGludCAxNiBmb3IgVVNSUD8NCj4gPj4g
d2hhdCdzIHRoZSByZWxhdGlvbiBiZXR3ZWVuIGNvbXBsZXggZmxvYXQgMzIgYW5kIGNvbXBsZXgg
aW50IDMyIGluIFVTUlA/DQo+ID4+IEkga25vdyB0aGF0IGluIFVTUlAgbnVtYmVycyBhcmUgaW4g
Zm9ybWF0IGNvbXBsZXggaW50IDE2IGFuZCBiaWctZW5kaWFuIGFuZCBpbiBHbnVyYWRpbyBudW1i
ZXJzIGluIGZvcm1hdCBjb21wbGV4IGZsb2F0IDMyIGFuZCBsaXR0bGUtZW5kaWFuLi4uDQo+ID4+
IGh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9wYWdlX2NvbnZlcnRlcnMuaHRtbA0KPiA+
PiBJIHVzZWQgdm9sayBsaWIgYnV0IHRoZSBmbG9hdCB0aGF0IEkgZW50ZXJlZCBhcyBpbnB1dCwg
aXMgY2VpbGVkIHRvIGJpZ2dlciBpbnRlZ2Vycy4gSXMgdGhpcyBhIG1ldGhvZCB2YWxpZCBmb3Ig
Y29udmVydGluZyBzaWduYWxzLi4uP09yIG15IGRhdGEgd2lsbCBiZSBjb3JydXB0ISEhDQo+ID4+
IFRoYW5rcyBpbiBhZHZhbmNlLg0KPiA+Pg0KPiA+Pg0KPiA+Pj4gICAgICAgbHZfMTZzY190KiBv
dXRwdXRWZWN0b3I7DQo+ID4+Pg0KPiA+Pj4gICAgICAgbHZfMzJmY190KiBpbnB1dFZlY3RvcjsN
Cj4gPj4+DQo+ID4+PiAgICAgICBpbnB1dFZlY3Rvci0+cmVhbCgyNS41NSk7DQo+ID4+Pg0KPiA+
Pj4gICAgICAgaW5wdXRWZWN0b3ItPmltYWcoNDUpOw0KPiA+Pj4NCj4gPj4+ICAgICAgIHZvbGtf
MzJmY19jb252ZXJ0XzE2aWMob3V0cHV0VmVjdG9yLGlucHV0VmVjdG9yLDMyKTsNCj4gPj4+DQo+
ID4+PiAgICAgICBxRGVidWcoKTw8b3V0cHV0VmVjdG9yLT5yZWFsKCk8PCItLS0tLSI7DQo+ID4+
DQo+ID4+DQo+ID4+IFRoZSBvdXRwdXQ6DQo+ID4+Pg0KPiA+Pj4gMjYgLS0tLS0NCj4gPj4NCj4g
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPj4g
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4g
Pj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQ0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQo+ID4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20NCj4gPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMt
bGVhdmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20K
