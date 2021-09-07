Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F94403078
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 23:52:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8ACE238484C
	for <lists+usrp-users@lfdr.de>; Tue,  7 Sep 2021 17:52:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Dc2Jwgwl";
	dkim-atps=neutral
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 828C43845A5
	for <usrp-users@lists.ettus.com>; Tue,  7 Sep 2021 17:51:08 -0400 (EDT)
Received: by mail-io1-f49.google.com with SMTP id a22so427219iok.12
        for <usrp-users@lists.ettus.com>; Tue, 07 Sep 2021 14:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=Xv91ip6TpMqni+UOyveUleulWH9ux2tSNNIyMJ+iUWs=;
        b=Dc2JwgwlJyDL97iIjFTytgnKmfuoppUpZ9MN97xhN+H9moJw2vx6pFEMZZ8ftp2IKj
         iH9/VGBALCTeEQUJqvqt2uEs9pXrVtOsgvVeOjehXJJnAPKIh3B5/l3ilbsA0TZE0DMA
         0vvlvEpRxHaG6b+LKDUFFGLoxjjJwhOiIEM26rCKNHphA3gRoePbfpn8/yV0CZ5q1DAb
         yYLixYAb0Sn9uobJ9KXtd4hJjObweEivdnH1Z36nyiIXWZSQFzOLYO3ZHsi99ZFWCBhh
         9HAgKYu1LfIo+H/53j1yUhWyqOhe8hLwGRXvqOpqUcB+tGQG/qYn/c32VO5UWhQ57r3h
         CN2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Xv91ip6TpMqni+UOyveUleulWH9ux2tSNNIyMJ+iUWs=;
        b=aGtx3eNQuWFz79ELZZlc1Etnd70ycTAfd5WeweXS8bEHfFJMIK3SgWnhRzjlKh5dbH
         cu3jxIO4fpLH4vFAztoDbzPJ2P1knOp6G2B8yCPdce5HhP6SNlXgYNKorbWyOY2wDizN
         sJoeM6p9HDt0AhQz3K28eAHdPPM0miGt3JsyeWU8y7ZzYu+86EnYivXocYFILyaAZvEY
         0qtufRDYazDofe6NESaBzvw57Vf/oH4xqou/qHFkEDHwdrACyfBRkJSd0tKY1HJ3ZFI0
         HQYY1E9KA5vg88QwAmJ0gM78JLEz80Opw2Y40pjGeQzPh2v0IVCstcX45KnioEj9J/R/
         KGqg==
X-Gm-Message-State: AOAM533V2b6JenNb1y04bmLq+N6BbW0Nd1GW8mwM6s62Xc71RNKQxtml
	RRB7pq+399+2Qk/H2ChMIfLxfjfxwqqDKQ==
X-Google-Smtp-Source: ABdhPJyxFQeHcI9n58Y1s2tedsMbqZ0ohZTmzT10b6cZzCHSrlKGAgOgtYivUVcldsoaXI7AOkgL/Q==
X-Received: by 2002:a05:6638:1484:: with SMTP id j4mr464719jak.80.1631051467434;
        Tue, 07 Sep 2021 14:51:07 -0700 (PDT)
Received: from [192.168.2.242] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id q14sm178018ilj.34.2021.09.07.14.51.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Sep 2021 14:51:07 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <20210907222503.Horde.1VehEQybsJZtjZQOIfHL6dd@wimap.feld.cvut.cz>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <34f9ecb7-b9e4-5b9b-2dc2-1a81aef4cde9@gmail.com>
Date: Tue, 7 Sep 2021 17:51:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210907222503.Horde.1VehEQybsJZtjZQOIfHL6dd@wimap.feld.cvut.cz>
Content-Language: en-US
Message-ID-Hash: 2M4PDXU6KHEJK5LM3OOORZ7JS36HDY4V
X-Message-ID-Hash: 2M4PDXU6KHEJK5LM3OOORZ7JS36HDY4V
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Struggling to build kernel and userspace for x400
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2M4PDXU6KHEJK5LM3OOORZ7JS36HDY4V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0wOS0wNyA0OjI1IHAubS4sIHR5d29uZW1pQGZlbC5jdnV0LmN6IHdyb3RlOg0KPiBE
ZWFyIFVTUlAgbWFpbnRhaW5lcnMsDQo+DQo+IEFzIG15IG1hc3RlcidzIHRoZXNpcyBJJ3ZlIHNl
dCBvdXQgdG8gcG9ydCB0aGUgR05VIFJhZGlvIFJGTm9DIHRvIHRoZSANCj4gUkZTb0MgMngyIGRl
dmVsb3BtZW50IGJvYXJkIGZvciBwdXJwb3NlcyBvZiBhY2FkZW1pYyByZXNlYXJjaCBvZiANCj4g
b3B0aWNhbCBjb21tdW5pY2F0aW9ucywgYW5kIEkgaGF2ZSBzb21lIGlzc3Vlcy4gSWYgaXQncyBt
b3JlIHByYWN0aWNhbCANCj4gZm9yIHlvdSwgZmVlbCBmcmVlIHRvIGZvcndhcmQgbWUgdG8gd3Jp
dHRlbiByZXNvdXJjZXMgSSBtYXkgaGF2ZSBtaXNzZWQuDQo+IEZpcnN0IHNvbWUgY29udGV4dDog
VGhlIG1vdGl2YXRpb24gZm9yIHRoaXMgaXMgcmFwaWQgZGV2ZWxvcG1lbnQgYW5kIA0KPiBtZWFz
dXJlbWVudCBvbiBhIGRpZ2l0aXplci1saWtlIHBsYXRmb3JtIHdpdGhvdXQgUkYgZnJvbnRlbmRz
LiBTaW5jZSANCj4gVVNSUCB4NDEwIGhhcyB0aGUgc2FtZSBTb0Mgb24gYm9hcmQsIHRoZSBlYXNp
ZXN0IHdheSBmb3IgbWUgdG8gZG8gdGhpcyANCj4gd2lsbCBiZSB0byB1c2UgYXMgbXVjaCBvZiB0
aGUgZXhpc3Rpbmcgb3BlbiBzb3VyY2Ugd29yayBkb25lIGJ5IA0KPiBmb3JraW5nIHRoZSBVU1JQ
IGRlc2lnbi4gSG93ZXZlciwgSSdtIGdldHRpbmcgc3R1Y2sgb24gYnVpbGRpbmcgeW9jdG8gDQo+
IGR1ZSB0byBhIHN5bWJvbCBkdXBsaWNhdGUgaW4gZ2RibSBidWlsZCB3aXRoaW4gdGhlIG9lLWNv
cmUgcGFja2FnZS4NCj4gVGhlcmUgc2VlbSB0byBiZSBzZXZlcmFsIHN0ZXBzIGludm9sdmVkIGlu
IHRoaXMgcG9ydC9mb3JrIC0gc3R1YmJpbmcgDQo+IHRoZSBSRiBmcm9udGVuZCBjb250cm9scyBh
bmQgcmVtb3Zpbmcgc3VwcG9ydCBpbiB0aGUgVUhEIGhvc3QgZHJpdmVycywgDQo+IGFkYXB0aW5n
IHRoZSBib2FyZCBjb25zdHJhaW50cywgcG9zc2libHkgcmVkdWNpbmcgc29tZSBidWZmZXIgc2l6
ZXMgDQo+IGR1ZSB0byBsb3dlciBhdmFpbGFibGUgUEwgUkFNLCBidXQgcmlnaHQgbm93IEkgYW0g
dHJ5aW5nIHRvIHZlcmlmeSBpZiANCj4gSSdsbCBiZSBhYmxlIHRvIGdldCBhY2Nlc3MgdG8gYWxs
IHRoZSBzb3VyY2VzIGFuZCB0b29scyByZXF1aXJlZCB0byANCj4gbWFrZSB0aGUgcHJvY2Vzc2lu
ZyBzdWJzeXN0ZW0gcGlwZSBvciBmaWx0ZXIgc2FtcGxlcyBiZXR3ZWVuIHRoZSBoYXJkIA0KPiBs
b2dpYyBnaWdhYml0IGV0aGVybmV0IGNvbnRyb2xsZXIgYW5kIHRoZSBwcm9ncmFtbWFibGUgbG9n
aWMgd2l0aCB0aGUgDQo+IFJGTm9DIGNyb3NzYmFyLCBhbmQgdG8gcGVyZm9ybSB0aGUgUkZOb0Mg
Y29udHJvbCBvcGVyYXRpb25zLiBUaGlzIGlzIA0KPiBiZWNhdXNlIHRoZSBSRlNvQyAyeDIgbGFj
a3MgYW4gU0ZQLWxpa2UgaW50ZXJmYWNlIGZvciBoaWdoZXIgYmFuZHdpZHRoIA0KPiBkYXRhIHBh
Y2tldCBzdHJlYW1pbmcuIEl0J3Mgb25seSBtZW50aW9uZWQgaW4gb25lIGxpbmUgaW4gdGhlIHg0
MTAgDQo+IG1hbnVhbDoNCj4gTGlrZSBvdGhlciBVU1JQcywgaXQgaXMgYWRkcmVzc2FibGUgdGhy
b3VnaCBhIDEgR2JFIFJKNDUgY29ubmVjdG9yLCANCj4gd2hpY2ggYWxsb3dzIGZ1bGwgYWNjZXNz
IHRvIHRoZSBlbWJlZGRlZCBMaW51eCBzeXN0ZW0sIGFzIHdlbGwgYXMgZGF0YSANCj4gc3RyZWFt
aW5nIGF0IGxvdyByYXRlcy4NCj4gSSdkIGxpa2UgdG8gYnVpbGQgTGludXggZm9yIHRoZSBVU1JQ
IHRvIHNlZSB3aGF0IHNvdXJjZXMgaXQgcHVsbHMgYW5kIA0KPiB0byB2ZXJpZnkgYW5kIG1heWJl
IG1vZGlmeSB0aGUgZGF0YXBhdGggZnJvbSB0aGUgZ2lnYWJpdCBjb250cm9sbGVyIA0KPiB0aHJv
dWdoIHRoZSBkcml2ZXIgdG8gdGhlIFBMLiBIb3dldmVyLCBJIGhhdmUgdHJvdWJsZSBnZXR0aW5n
IGl0IHRvIA0KPiBidWlsZC4NCj4gSSdtIHJ1bm5pbmcgQXJjaCBMaW51eCB3aXRoIEdDQyAxMS4x
LCBrYXMgMi41IChkaXJlY3RseSwgbm8gZG9ja2VyIA0KPiBpbWFnZSkuDQo+IE9uIG1ldGEtZXR0
dXMgcmVwb3NpdG9yeSwgdGFnIHY0LjEuMC4yLXJjMywgcnVubmluZyANCj4gYC4vY29udHJpYi9r
YXNfYnVpbGRfaW1nc19wYWNrYWdlLnNoIHg0eHhgIGZhaWxzIHRoZSBvZS1jb3JlIHN0ZXA6DQo+
DQo+IHwgL2hvbWUvZW1pbC9zY2hvb2wvbWV0YS1ldHR1cy9idWlsZC90bXAtZ2xpYmMvaG9zdHRv
b2xzL2xkOiANCj4gLi9saWJnZGJtYXBwLmEocGFyc2VvcHQubyk6KC5ic3MrMHg4KTogbXVsdGlw
bGUgZGVmaW5pdGlvbiBvZiANCj4gYHBhcnNlb3B0X3Byb2dyYW1fYXJncyc7IGdkYm10b29sLm86
KC5kYXRhLnJlbC5sb2NhbCsweDI2MCk6IGZpcnN0IA0KPiBkZWZpbmVkIGhlcmUNCj4gfCAvaG9t
ZS9lbWlsL3NjaG9vbC9tZXRhLWV0dHVzL2J1aWxkL3RtcC1nbGliYy9ob3N0dG9vbHMvbGQ6IA0K
PiAuL2xpYmdkYm1hcHAuYShwYXJzZW9wdC5vKTooLmJzcysweDEwKTogbXVsdGlwbGUgZGVmaW5p
dGlvbiBvZiANCj4gYHBhcnNlb3B0X3Byb2dyYW1fZG9jJzsgZ2RibXRvb2wubzooLmRhdGEucmVs
LmxvY2FsKzB4MjY4KTogZmlyc3QgDQo+IGRlZmluZWQgaGVyZQ0KPg0KPiBJcyB0aGlzIHJlcGxp
Y2FibGUgZm9yIHlvdT8gSXQgaGFwcGVucyB0byBtZSB3aXRoIHRoZSB4NHh4LXByZXJlbGVhc2Ug
DQo+IHRhZywgdG9vLiBJcyB0aGVyZSBzb21lIGZyb3plbiBkZXZlbG9wbWVudCBzZXR1cCBlbnZp
cm9ubWVudCB0aGF0IA0KPiBzaG91bGQgYmUgdXNlZD8gSXMgdGhhdCBpbmNsdWRlZCBpbiB0aGUg
a2FzIGRvY2tlcj8gSWYgc28sIGhvdyB3b3VsZCBJIA0KPiBpbnZva2Uga2FzIGZyb20gZG9ja2Vy
IHRvIHVzZSB0aGUgeWFtbCBjb25maWdzPw0KPg0KPiBBbHNvLCBJJ3ZlIGdvbmUgdGhyb3VnaCB0
aGUgIk1QTSIgYW5kICJmaXJtd2FyZSIgc2VjdGlvbnMgb2YgdGhlIFVIRCANCj4gdHJlZSBsb29r
aW5nIGZvciBzb2Z0d2FyZSB0aGF0IHdvdWxkIHJ1biBvbiB0aGUgU29DIGFuZCBjb25maWd1cmUg
dGhlIA0KPiBnaWdhYml0IGV0aGVybmV0IGFuZCB3b3JrIHdpdGggaXQuIEZvciBleGFtcGxlLCBp
biB4MzAwLCB0aGlzIGlzIGRvbmUgDQo+IGluIGZpcm13YXJlL3VzcnAzL3gzMDAveDMwMF9pbml0
LmMgYnV0IEkgaGF2ZSBub3QgZm91bmQgYW55IA0KPiBjb25maWd1cmF0aW9uIChhbnkgZXZlbnR1
YWwgY2FsbHMgdG8geGdlXyogZXRjKS4gQW0gSSB3cm9uZyB0byBhc3N1bWUgDQo+IHRoYXQgdGhp
cyBjb2RlIGhhcyBub3QgYmVlbiBwdWJsaXNoZWQgeWV0PyBJcyBpdCBnb2luZyB0byBiZSBtYWRl
IG9wZW4gDQo+IHNvdXJjZSBpbiB0aGUgZnV0dXJlPyBJdCByZWFsbHkgc2VlbXMgbGlrZSBldmVy
eXRoaW5nIGVsc2UgaXMgcHJlc2VudCwgDQo+IGJ1dCB0aGUgYWN0dWFsIHVzZXJzcGFjZSBzb2Z0
d2FyZSBydW5uaW5nIG9uIHRoZSB4NDAwLg0KPg0KPiBCZXN0IHJlZ2FyZHMsDQo+DQo+IEVtaWwg
SiBUeXdvbmlhaywNCj4gRmFjdWx0eSBvZiBFbGVjdHJpY2FsIEVuZ2luZWVyaW5nDQo+IEN6ZWNo
IFRlY2huaWNhbCBVbml2ZXJzaXR5IGluIFByYWd1ZQ0KVGhpcyBzZWVtcyBhIHZlcnkgYW1iaXRp
b3VzIHByb2plY3QsIGFuZCBJIHdpc2ggeW91IGx1Y2suDQoNClRoZSBhbW91bnQgb2YgZXhwZXJp
ZW5jZSAib3V0IHRoZXJlIiB3aXRoIHRoZSBYNDAwIHNlcmllcyBmcm9tIEV0dHVzIGF0IA0KdGhp
cyBwb2ludCBpcyB2ZXJ5IHNtYWxsLCBzbyBkb24ndCBiZSB0aGF0IHN1cnByaXNlZCBub3QgdG8g
Z2V0IG11Y2ggaW4gDQp0aGUgd2F5IG9mIGhlbHANCiDCoCBmcm9tICJ0aGUgY29tbXVuaXR5Ii4N
Cg0KSW4gdGVybXMgb2YgRXR0dXMgUiZEIGZvbGtzIHdobyBtYXkgYmUgYWJsZSB0byBoZWxwIHlv
dSwgdGhleSdyZSBwcmV0dHkgDQpidXN5IHdvcmtpbmcgb24gYWN0dWFsIEV0dHVzL05JIHByb2R1
Y3RzLCBhbmQgbGlrZWx5IGRvbid0IGhhdmUgYSBsb3Qgb2YgDQp0aW1lDQogwqB0byBoZWxwIGZv
bGtzIHBvcnRpbmcgRXR0dXMgY29kZSB0byBub24tRXR0dXMgaGFyZHdhcmUuwqAgSnVzdCBhIA0K
cHJhY3RpY2FsaXR5IG9mIHRpbWUgbWFuYWdlbWVudC4NCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
