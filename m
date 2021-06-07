Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 899B539E75C
	for <lists+usrp-users@lfdr.de>; Mon,  7 Jun 2021 21:19:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A358D384783
	for <lists+usrp-users@lfdr.de>; Mon,  7 Jun 2021 15:19:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RtJ2bD82";
	dkim-atps=neutral
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 715A1384775
	for <USRP-users@lists.ettus.com>; Mon,  7 Jun 2021 15:18:36 -0400 (EDT)
Received: by mail-qt1-f181.google.com with SMTP id m13so13422655qtk.13
        for <USRP-users@lists.ettus.com>; Mon, 07 Jun 2021 12:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=BqlasTvDemPoTH2zDB2x6Dft9RORXI9raq7ZSSz2sgk=;
        b=RtJ2bD828t2dEYswz8KgJjy51+ytkmMyVSPBQPfyxkkoJR16dg2ugRP3iIrm52vdt9
         ZqpmK8QDMn57LyZZ71QJcyuZaKZphc261d5y9pxLfydNRBaPVS2Vj6oKKk4bj0V2vVIa
         cIIDp8hCuUchLNuc78VL0Bz0recq5x03t5rSNB0Sc8LjbthIkfn7hmOIpnmVYE5pkqka
         BxxgzXBle+kVAW4xSk+hdugrCoAUhyfinfYhxhB4c0S3YtJwKGMSO+PLtf/pvrszM8gg
         U1wSmSyTy91pqVZTP/Mhe1g+UNQb6Ujo+h7pI0P1il2xrhAwF4JHF32Ktc5LI26QXVj7
         xqQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=BqlasTvDemPoTH2zDB2x6Dft9RORXI9raq7ZSSz2sgk=;
        b=Nc60J5Q8tdObNYqe0vIXVLluUW23+PSZPancocr62Kp1jNSZL+qa0RU+RYsikPCEXw
         1zsi1QG4fy+u2UCP+UgfbRV8DDlvmBFjaon38aOglfGy/l2BBitZpU0PMn0Dc/kzFvsG
         PzJY3aD5ieBJEcDDd9/vXz2U6xba9SYb8xyqpVeb89pB2W7j5Y7WInxleOAx4C3HpoOV
         JCoBBxsLvx2i++yu0VBKE9pHITHBH77JjKJEHe1zttmnX++68MtxGyzXSFhWINkdzHY6
         kZXO13KkbIolzQqiYtePF2M7QQ7ig8Znmn18d0HSpBrZu2TDoS97uw6yLmL6Cg7kZhFz
         x9JA==
X-Gm-Message-State: AOAM531jdaUgv6REEX39f2WvrJYCrNhhTFcR+6rb5M4pZKdK4MV6nMq+
	KH+i1hHG3rX36qGgTTqA+BBIJnDIKcJ7JA==
X-Google-Smtp-Source: ABdhPJySnCkiHjCAY1TiaQZhN3ELbQqbwjxgDsjjw+GrfZlu7I2U4Pl45k5Ru7Xr9IJ5JIpuijUQxg==
X-Received: by 2002:a05:622a:1702:: with SMTP id h2mr10646653qtk.324.1623093515867;
        Mon, 07 Jun 2021 12:18:35 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id y1sm10746529qkp.21.2021.06.07.12.18.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jun 2021 12:18:35 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 7 Jun 2021 15:18:34 -0400
Message-Id: <7EC7607F-5969-486A-A478-D656CBB270B3@gmail.com>
References: <8240441d45754de2afcd994d046b84e8@erdc.dren.mil>
In-Reply-To: <8240441d45754de2afcd994d046b84e8@erdc.dren.mil>
To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV" <Carl.L.Wolsieffer@erdc.dren.mil>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: 2HO5B5D6MTAC5QRGPVRLU6QG23RBQHXH
X-Message-ID-Hash: 2HO5B5D6MTAC5QRGPVRLU6QG23RBQHXH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tx_samples_from_file warnings for ettus x310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2HO5B5D6MTAC5QRGPVRLU6QG23RBQHXH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SeKAmW0gbm93IHRoaW5raW5nIHRoYXQgYXQgMjAwTXNwcyBpdCBkb2VzbuKAmXQgdXNlIHRoZSBE
VUMgbW9kdWxlIHdpdGhpbiBSRk5PYyBzaW5jZSB0aGUgQURDIHJ1bnMgYXQgdGhhdCByYXRlLiBT
byB0aGlzIGlzIHBlcmhhcHMgYW5kIGVuaWdtYXRpYyB3YXkgb2Ygc2F5aW5nIHRoYXQgaXTigJlz
IHNraXBwaW5nIHRoZSBEVUMgbW9kdWxlPw0KDQoNCg0KU2VudCBmcm9tIG15IGlQaG9uZQ0KDQo+
IE9uIEp1biA3LCAyMDIxLCBhdCAyOjU5IFBNLCBXb2xzaWVmZmVyLCBDYXJsIEwuIEVSREMtUkRF
LUNSTC1OSCBDSVYgPENhcmwuTC5Xb2xzaWVmZmVyQGVyZGMuZHJlbi5taWw+IHdyb3RlOg0KPiAN
Cj4g77u/SGkgTWFyY3VzLA0KPiANCj4gWWVzIHRoZSAiPiBbV0FSTklOR10gWzAvUmFkaW8jMF0g
QXR0ZW1wdGluZyB0byBzZXQgdGljayByYXRlIHRvIDAuIFNraXBwaW5nLiIgSXMgc3RpbGwgdGhl
cmUgd2hlbiBJIGp1c3QgdHJpZWQgYXQgMk1zcHMsIHRoZSAiW1dBUk5JTkddIFtSRk5PQzo6R1JB
UEg6OkRFVEFJTF0iIG1lc3NhZ2UgaXMgZ29uZSBob3dldmVyLiBOb3Qgc3VyZSBpZiB0aGF0J3Mg
b25lIHRvIGJlIGNvbmNlcm5lZCBhYm91dCBvciBub3QuDQo+IA0KPiANCj4gVGhhbmtzIGZvciB5
b3VyIHJlc3BvbnNlIQ0KPiBDYXNleQ0KPiANCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
Cj4gRnJvbTogTWFyY3VzIEQgTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPiANCj4gU2Vu
dDogTW9uZGF5LCBKdW5lIDcsIDIwMjEgMjoyNSBQTQ0KPiBUbzogV29sc2llZmZlciwgQ2FybCBM
LiBFUkRDLVJERS1DUkwtTkggQ0lWIDxDYXJsLkwuV29sc2llZmZlckBlcmRjLmRyZW4ubWlsPg0K
PiBDYzogVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gU3ViamVjdDogUmU6IFtVU1JQLXVz
ZXJzXSB0eF9zYW1wbGVzX2Zyb21fZmlsZSB3YXJuaW5ncyBmb3IgZXR0dXMgeDMxMA0KPiANCj4g
RG9lcyB0aGUgZXJyb3IgaGFwcGVuIGF0IGxvd2VyIHNhbXBsZQ0KPiBSYXRlcz8gIEnigJltIHRo
aW5raW5nIHRoYXQgcGVyaGFwcyB0aGUgdHhfc2FtcGxlc19mcm9tX2ZpbGUgZXhhbXBsZSBoYXNu
4oCZdCBiZWVuIHByb3Blcmx5IGNvbnZlcnRlZCB0byB0aGUgbmV3ZXIgUkZOT0MgaW5mcmFzdHJ1
Y3R1cmUgdGhhdOKAmXMgdW5kZXJuZWF0aC4gDQo+IA0KPiBTZW50IGZyb20gbXkgaVBob25lDQo+
IA0KPj4gT24gSnVuIDcsIDIwMjEsIGF0IDE6MzIgUE0sIFdvbHNpZWZmZXIsIENhcmwgTC4gRVJE
Qy1SREUtQ1JMLU5IIENJViB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20+IHdyb3RlOg0KPj4gDQo+PiDvu79IZWxsbyBhbGwsDQo+PiANCj4+IFdoaWxlIHRyeWluZyB0
byBjb25maXJtIGlmIHRoZSB4MzEwIChVQlgtMTYwKSBjYW4gd29yayB3aXRoIGEgDQo+PiBzaW5n
bGVtb2RlIGZpYmVyIG9wdGljIDEwR2JlIEkgaGF2ZSBiZWVuIHVzaW5nIHRoZSANCj4+IHR4X3Nh
bXBsZXNfZnJvbV9maWxlIGFuZCByeF9zYW1wbGVzX3RvX2ZpbGUuIFRoZSByeF9zYW1wbGVfZnJv
bV9maWxlIA0KPj4gc2VlbXMgdG8gZ28gb3ZlciBhbHJpZ2h0IHdyaXRpbmcgNTAwbXMgd29ydGgg
b2YgZGF0YSBkb3duIGF0IDIwME1zcHMsIA0KPj4gYnV0IHRoZSBUeCBzaWRlIGdpdmVzIG1lIHR3
byB3YXJuaW5ncyB0aGF0IEkgaGF2ZSBub3QgYmVlbiBhYmxlIHRvIA0KPj4gdHJhY2sgZG93biBp
biBkb2N1bWVudGF0aW9uIG9yIG9uIG1lc3NhZ2UgYm9hcmRzLiBBcyBhbiBhc2lkZSBpbiANCj4+
IHJlYWRvdXQgeW91J2xsIHNlZSBhIGZldyB1bmRlcmZsb3dzIGFzIHdlbGwgLSB3aGlsZSBJIGRp
ZCBtb3N0IG9mIHRoZSANCj4+IHBlcmZvcm1hbmNlIHVwZ3JhZGVzIChhc2lkZSBmcm9tIERQREsg
d2hpY2ggaXMgc3RpbGwgcGVuZGluZyksIEknbSANCj4+IGNhbGxpbmcgc2FtcGxlcyBmcm9tIGZp
bGUgZnJvbSBhbiBvbGRlciBIREQsIEknbSB1cGdyYWRpbmcgb3ZlciB0byBhbiANCj4+IFNTRCBp
biBuZXh0IGRheSBvciB0d28gc28gSSBhbSBiYW5raW5nIG9uIHRoYXQgbWl0aWdhdGluZyB0aGF0
IGlzc3VlLCANCj4+IGhlbmNlIHdoeSBJJ20gYWxzbyBsaW1pdGVkIHRvIGFib3V0IDUwMG1zIGF0
IGEgdGltZSB0byB0ZXN0DQo+PiANCj4+IFBTIGFueW9uZSBoYXZlIGV4cGVyaWVuY2UgdXNpbmcg
dGhlIHNpbmdsZSBtb2RlIGZpYmVyIG9wdGljIGNhYmxpbmcgYW5kIHRyYW5zY2VpdmVyIG92ZXIg
MTBHYmU/IE1vc3Qgb2YgRXR0dXMgbGl0ZXJhdHVyZSBzYXlzIHRoZXkndmUgb25seSB0ZXN0ZWQg
b3ZlciBtdWx0aW1vZGUsIGJ1dCB0aGUgbG9uZ2VyIGRpc3RhbmNlcyBhbGxvdHRlZCBieSB1c2lu
ZyBzaW5nbGUgbW9kZSBtYWtlIGl0IGFuIGFwcGVhbGluZyBvcHRpb24gZm9yIG15IHN5c3RlbS4N
Cj4+IA0KPj4gDQo+PiAkIC4vdHhfc2FtcGxlc19mcm9tX2ZpbGUgLS1hcmdzICdhZGRyPTE5Mi4x
NjguNDAuMicgLS1maWxlIA0KPj4gdXNycF9zYW1wbGVzLmRhdCAtLWZyZXE9MjQwMDAwMDAwMCAt
LWxvLW9mZnNldCAxMDAwMDAgLS1nYWluIDAgLS1yYXRlIA0KPj4gMjAwMDAwMDAwDQo+PiANCj4+
IENyZWF0aW5nIHRoZSB1c3JwIGRldmljZSB3aXRoOiBhZGRyPTE5Mi4xNjguNDAuMi4uLg0KPj4g
W0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gOS4zLjA7IEJvb3N0XzEwNzQwMDsg
DQo+PiBVSERfNC4wLjAuSEVBRC1yZWxlYXNlIFtJTkZPXSBbWDMwMF0gWDMwMCBpbml0aWFsaXph
dGlvbiBzZXF1ZW5jZS4uLg0KPj4gW0lORk9dIFtYMzAwXSBNYXhpbXVtIGZyYW1lIHNpemU6IDgw
MDAgYnl0ZXMuDQo+PiBbSU5GT10gW1gzMDBdIFJhZGlvIDF4IGNsb2NrOiAyMDAgTUh6DQo+PiBV
c2luZyBEZXZpY2U6IFNpbmdsZSBVU1JQOg0KPj4gRGV2aWNlOiBYLVNlcmllcyBEZXZpY2UNCj4+
IE1ib2FyZCAwOiBYMzEwDQo+PiBSWCBDaGFubmVsOiAwDQo+PiAgIFJYIERTUDogMA0KPj4gICBS
WCBEYm9hcmQ6IEENCj4+ICAgUlggU3ViZGV2OiBVQlggUlgNCj4+IFJYIENoYW5uZWw6IDENCj4+
ICAgUlggRFNQOiAxDQo+PiAgIFJYIERib2FyZDogQg0KPj4gICBSWCBTdWJkZXY6IFVua25vd24g
KDB4ZmZmZikgLSAwDQo+PiBUWCBDaGFubmVsOiAwDQo+PiAgIFRYIERTUDogMA0KPj4gICBUWCBE
Ym9hcmQ6IEENCj4+ICAgVFggU3ViZGV2OiBVQlggVFgNCj4+IFRYIENoYW5uZWw6IDENCj4+ICAg
VFggRFNQOiAxDQo+PiAgIFRYIERib2FyZDogQg0KPj4gICBUWCBTdWJkZXY6IFVua25vd24gKDB4
ZmZmZikgLSAwDQo+PiANCj4+IFNldHRpbmcgVFggUmF0ZTogMjAwLjAwMDAwMCBNc3BzLi4uDQo+
PiBBY3R1YWwgVFggUmF0ZTogMjAwLjAwMDAwMCBNc3BzLi4uDQo+PiANCj4+IFNldHRpbmcgVFgg
RnJlcTogMjQwMC4wMDAwMDAgTUh6Li4uDQo+PiBTZXR0aW5nIFRYIExPIE9mZnNldDogMC4xMDAw
MDAgTUh6Li4uDQo+PiBBY3R1YWwgVFggRnJlcTogMjQwMC4wMDAwMDAgTUh6Li4uDQo+PiANCj4+
IFNldHRpbmcgVFggR2FpbjogMC4wMDAwMDAgZEIuLi4NCj4+IEFjdHVhbCBUWCBHYWluOiAwLjAw
MDAwMCBkQi4uLg0KPj4gDQo+PiBDaGVja2luZyBUWDogVFhMTzogbG9ja2VkIC4uLg0KPj4gW1dB
Uk5JTkddIFswL1JhZGlvIzBdIEF0dGVtcHRpbmcgdG8gc2V0IHRpY2sgcmF0ZSB0byAwLiBTa2lw
cGluZy4NCj4+IFVVDQo+PiBEb25lIQ0KPj4gDQo+PiBbV0FSTklOR10gW1JGTk9DOjpHUkFQSDo6
REVUQUlMXSBDYW5ub3QgZm9yd2FyZCBhY3Rpb24gdHhfZXZlbnQgZnJvbSAwL1JhZGlvIzA6SU5Q
VVRfRURHRTowLCBubyBuZWlnaGJvdXIgZm91bmQhDQo+PiANCj4+IA0KPj4gDQo+PiBDYXNleSBX
b2xzaWVmZmVyDQo+PiBSZXNlYXJjaCBFbGVjdHJpY2FsIEVuZ2luZWVyIC0gU2lnbmF0dXJlIFBo
eXNpY3MgQnJhbmNoIENvbGQgUmVnaW9ucyANCj4+IFJlc2VhcmNoICYgRW5naW5lZXJpbmcgTGFi
b3JhdG9yeQ0KPj4gNzIgTHltZSBSZCwgSGFub3ZlciBOSCAwMzc1NQ0KPj4gKDYwMykgNjQ2LTQy
NTQgKG9mZmljZSkNCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQo+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbSBUbyB1bnN1YnNjcmliZSANCj4+IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZl
QGxpc3RzLmV0dHVzLmNvbQo=
