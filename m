Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7714A871E
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 15:56:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 408B138590E
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 09:56:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="J0WIDzd+";
	dkim-atps=neutral
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 05B7C3858A5
	for <usrp-users@lists.ettus.com>; Thu,  3 Feb 2022 09:51:07 -0500 (EST)
Received: by mail-qv1-f53.google.com with SMTP id s7so87102qvb.0
        for <usrp-users@lists.ettus.com>; Thu, 03 Feb 2022 06:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=OFkZGyAELOhxKKdp0FqGzVLzdY6aAMoA05fD2Wz/Z6w=;
        b=J0WIDzd+7bz5Gr4axJ63pl1334y4qHYFfIc0WMzPu60yX7WW5lmmod9fM8rF4hOH9h
         bQBSm9Vvs2XlfhF5/fPEe93IXhRNoEKGbA4mQXV7LkgNozCCloFv/wDTbauNasl4+PZe
         cUJhVpvs640j2u4ReyT7XPkhZK014GRx/Co25D/9160qvdJgVYOcXnpptBTnRHmHPsf3
         GjWlkedWwE+MrFEr8rVZ4Jn4ZB/W/I/rcH5ZFFkp9LxaV4s+Xvaef18Td5ZG+1f2xOJr
         ZJnKSZT4AdWGugf1IY7FreHoFS/f/QLUkABB7tNlEeA3P7r6Z2nl61rxqcijV5aEOXdQ
         3MuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=OFkZGyAELOhxKKdp0FqGzVLzdY6aAMoA05fD2Wz/Z6w=;
        b=P2nBI0XPrNEjoYOYGFS4hSe4Wz3C/EwebupEWxnH8GKslqKePL0fTn649WSix+e6oX
         kgKFdKY8T/JyJY+V195nxLGu68TWrA+xWAhpaIIczkwNabgzrEbiR9AVuXJ9hYsG7RiH
         ZA66WXmcztJ8TjzqILbVO+TGyMxQuubAJvP0GIby1LiaJ1WG3tdYfQAhJ+RNXx/FgQSU
         7Y0//gxZRaby54JFzuftB4rw+L0+6fB28SdqtksXe+HAALu8tPdIeCDDG3v5Q+snVBSA
         TrYE82nSicUElnZXqZOeQtUOHeBlGWMdAGlf7ZLrZiqZk2mpTvfS1SIRqNb9v+jQsVZP
         fiWw==
X-Gm-Message-State: AOAM532PQwoMW/tPEch7yo/L/Ms4xVBFU1aoQB7MWwcA4aqYbkgHGSQh
	oIaWrcYAm/qb5yD+QjZ7jd1UUTY0SzY=
X-Google-Smtp-Source: ABdhPJypZyyB9ituNzUFw8dZYjE8DcXxr//1JLvI2z/tgaIH4d+qMEo9caoLVG98Y3v2o0FfItysUA==
X-Received: by 2002:a05:6214:e67:: with SMTP id jz7mr30668452qvb.41.1643899867072;
        Thu, 03 Feb 2022 06:51:07 -0800 (PST)
Received: from smtpclient.apple ([2600:380:4011:1ad3:f1fa:8e5:a2b8:47c3])
        by smtp.gmail.com with ESMTPSA id u63sm13766753qkh.43.2022.02.03.06.51.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Feb 2022 06:51:06 -0800 (PST)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 3 Feb 2022 09:51:04 -0500
Message-Id: <109E63E9-B214-44D2-B364-099636A257A5@gmail.com>
References: <9ba302d5-4e89-6721-1b65-c025c2db4514@destevez.net>
In-Reply-To: <9ba302d5-4e89-6721-1b65-c025c2db4514@destevez.net>
To: =?utf-8?Q?Daniel_Est=C3=A9vez?= <daniel@destevez.net>
X-Mailer: iPhone Mail (19C63)
Message-ID-Hash: YR2BKKDAO4B5ERI32BJMYOUXTOWZK6R7
X-Message-ID-Hash: YR2BKKDAO4B5ERI32BJMYOUXTOWZK6R7
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: GNURadio Discussion List <discuss-gnuradio@gnu.org>, usrp-users <usrp-users@lists.ettus.com>, Rob Kossler <rkossler@nd.edu>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Here's how to get the N321's LO sharing to work in GNURadio 3.9 with UHD4.1.0.5
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YR2BKKDAO4B5ERI32BJMYOUXTOWZK6R7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGV5IERhbmllbC4gDQpHbGFkIHlvdSBsaWtlIGl0LiBUaGUgZnVuY3Rpb25hbGl0eSBpcyB0aGVy
ZSBmb3Igbm93LCBidXQgSSBoYXZlIHNvbWUgcmVzZXJ2YXRpb25zIGFib3V0IHJlY29tbWVuZGlu
ZyB0aGlzIGZvciB1cHN0cmVhbS4gDQpUTERSOiBtb3JlIHdvcmsgcHJvYmx5IG5lZWRzIHRvIGJl
IGRvbmUgZm9yIHRoZSBjaGFuZ2VzIHRvIGJlIHN0YWJsZS4gDQoNCk15IHN1Z2dlc3Rpb25zL2Nv
bmNlcm5zIG9uIHVwc3RyZWFtIGNoYW5nZXMgYXJlIGFzIGZvbGxvd3M6DQoNCjEpIElmIHRoZSBm
aWxlIHN5c3RlbSBuYW1pbmcgY29udmVudGlvbiBjaGFuZ2VzIGluIG5ldyB2ZXJzaW9ucyBvZiBV
SEQgbXkgZnVuY3Rpb24gd2lsbCBicmVhayBpbiBnci11aGQgc2luY2UgdGhlIGZpbGUgc3lzdGVt
IHBhdGggaXMgaGFyZGNvZGVkLiBBcyB5b3XigJl2ZSBwcm9ibHkgbm90aWNlZCBVSEQgYWJzdHJh
Y3RzIHRoZSB2YXJpb3VzIGZzIHBhdGhzIGludG8gdmFyaWFibGVzIHNvIGNoYW5nZXMgdG8gdGhl
IGZzIGFyZSB0cmFuc3BhcmVudCB0byB0aGUgQVBJLiANCg0KMikgbXkgY2hhbmdlcyBuZWVkIHRv
IGZvbGxvdyB0aGUgbmFtaW5nIGNvbnZlbnRpb24gYW5kIGFic3RyYWN0aW9uIG9mIGdyLXVoZC4g
Rm9yIGV4YW1wbGUsIGFueSBmdW5jdGlvbnMgdGhhdCBleGlzdCBmb3IgYm90aCBUWCBhbmQgUlgg
YXJlIHB1dCBpbiB0aGUgY29tbW9uIGJsb2NrIGFuZCB0aGVuIHRoZSBzYW1lIGZ1bmN0aW9uIGlz
IHVzZWQgZm9yIFRYL1JYIGluIGVpdGhlciBzaW5rIG9yIHNvdXJjZSBibG9ja3MgcmVzcGVjdGl2
ZWx5LiANCg0KMykgSSB0aGluayBhZGRpbmcgTE8gZGlzdHJpYnV0aW9uIGFzIGEgcGFyYW1ldGVy
IGluIHRoZSBHUkMgYmxvY2sgd291bGQgYWxzbyBiZSBuZWNlc3NhcnkgdG8gZm9sbG93IGhhdmUg
4oCcR05VUmFkaW8gY2l0aXplbnNoaXDigJ0uIA0KDQpJIGhvbmVzdGx5IGxpa2UgdGhlIGRpcmVj
dGlvbiBvZiB5b3VyIHNvbHV0aW9uIG1vcmUgYmVjYXVzZSBpdCBmb2xsb3dzIHRoZSBBUEkgaW50
ZXJwbGF5IHRoYXTigJlzIGFscmVhZHkgaW4gcGxhY2UgYmV0d2VlbiBVSEQgYW5kIGdyLVVIRC4g
VW5mb3J0dW5hdGVseSwgYXMgeW91IHBvaW50ZWQgb3V0IGl0IHdvdWxkIHJlcXVpcmUgdGhlIG1v
ZGlmaWNhdGlvbnMgdG8gYmUgYSB1cHN0cmVhbWVkIGZvciBib3RoIFVIRCBhbmQgZ3ItdWhkLiAN
Cg0KSSB0aGluayBJIGNvdWxkIGhhbmRsZSB0aGUgZ3ItdWhkIHBhcnQgaWYgdGhlIFVIRCBzaWRl
IGdldHMgZG9uZS4gDQpEb2VzIGFueW9uZSBmcm9tIEV0dHVzIHRoaW5rIHRoaXMgd291bGQgYmUg
YSB2YWx1YWJsZSBhZGRpdGlvbj8gQ291bGQgd2UgZ2V0IHNvbWUgaGVscCBvbiBhZGRpbmcgYSBj
b252ZW5pZW5jZSBmdW5jdGlvbiBmb3IgTE8gZGlzdHJpYnV0aW9uIGJvYXJkIGVuYWJsZSB0byB0
aGUgVUhEIEFQST8NCg0KPGVuZCB0cmFuc21pc3Npb24+DQoNCj4gT24gSmFuIDI5LCAyMDIyLCBh
dCAwNDo0NiwgRGFuaWVsIEVzdMOpdmV6IDxkYW5pZWxAZGVzdGV2ZXoubmV0PiB3cm90ZToNCj4g
DQo+IO+7v0hpLA0KPiANCj4gVGhhbmtzISBUaGF0IHNlZW1zIHZlcnkgbmljZS4gQ291bGQgd2Ug
dHJ5IHVwc3RyZWFtaW5nIHRoaXM/IEkgZG9uJ3Qgc2VlIGFueSBvYnZpb3VzIGRyYXdiYWNrcyB0
byBoYXZpbmcgdGhpcyBpbi10cmVlLCBwYXJ0aWN1bGFybHkgc2luY2UgeW91ciBhcHByb2FjaCBk
b2Vzbid0IHJlcXVpcmUgbW9kaWZ5aW5nIFVIRC4NCj4gDQo+IEJlc3QsDQo+IERhbmllbC4NCj4g
DQo+PiBFbCAyOC8xLzIyIGEgbGFzIDIzOjU1LCBQYXVsIEF0cmVpZGVzIGVzY3JpYmnDszoNCj4+
IEN1cnJlbnRseSB0aGVyZSdzIG5vIHdheSB0byB1c2UgTE8gc2hhcmluZyB3aXRoIHRoZSBOMzIx
IGluIGdyLXVoZC4NCj4+IFRoZSBOMzIxIHVzZXMgYW4gUkYgRGlzdHJpYnV0aW9uIGJvYXJkIHdo
aWNoIGhhcyBwb3J0IHRlcm1pbmF0aW9ucyB0aGF0IG5lZWQgdG8gYmUgc3dpdGNoZWQgdG8gYWN0
aXZlIG91dHB1dHMgd2hlbiB0aGUgTE8gaXMgZXhwb3J0ZWQuIFRoaXMgaXNuJ3QgYWNjZXNzaWJs
ZSBpbiBnci11aGQuDQo+PiBJbiBvcmRlciB0byBhY2Nlc3MgdGhlIExPIGRpc3RyaWJ1dGlvbiBl
bmFibGUgY29tbWFuZHMgc2hvd24gaGVyZToNCj4+IGh0dHBzOi8va2IuZXR0dXMuY29tL1VTUlBf
TjMyMC9OMzIxX0xPX0Rpc3RyaWJ1dGlvbiNVSERfTE9fRGlzdHJpYnV0aW9uX0NvbW1hbmRzIDxo
dHRwczovL2tiLmV0dHVzLmNvbS9VU1JQX04zMjAvTjMyMV9MT19EaXN0cmlidXRpb24jVUhEX0xP
X0Rpc3RyaWJ1dGlvbl9Db21tYW5kcz4NCj4+IGEgZnVuY3Rpb24gbmVlZHMgdG8gYmUgYWRkZWQg
dG8gZ3ItdWhkDQo+PiBBbGwgdGhpcyBjb2RlIGJlbG93IGlzIHRha2VuIGZyb20gaGVyZToNCj4+
IGh0dHBzOi8vZ2l0aHViLmNvbS9kYW5pZXN0ZXZlei91aGQvY29tbWl0LzBhNmRhMWEzZmQ1ODM5
Yjg2MmNhYzc0MGVkNzAyOTIzZWQyMWIwOTYgPGh0dHBzOi8vZ2l0aHViLmNvbS9kYW5pZXN0ZXZl
ei91aGQvY29tbWl0LzBhNmRhMWEzZmQ1ODM5Yjg2MmNhYzc0MGVkNzAyOTIzZWQyMWIwOTY+DQo+
PiBodHRwczovL2dpdGh1Yi5jb20vZGFuaWVzdGV2ZXovZ251cmFkaW8vY29tbWl0L2Y5OTA5YmFk
ZTg2MDQ1ZjM3OWY4MzAwMWRlMjczMTdjYzI2MTgwN2YgPGh0dHBzOi8vZ2l0aHViLmNvbS9kYW5p
ZXN0ZXZlei9nbnVyYWRpby9jb21taXQvZjk5MDliYWRlODYwNDVmMzc5ZjgzMDAxZGUyNzMxN2Nj
MjYxODA3Zj4NCj4+IHdpdGggdGhlIHJ4IHN3aXRjaGVkIGZvciB0eCBhbmQgc291cmNlIHN3aXRj
aGVkIGZvciBzaW5rDQo+PiBpIGFsc28gZGlkIG5vdCBtb2RpZnkgYW55IFVIRCBjb2RlIG1ha2lu
ZyB0aGlzIGEgZml4IHRoYXQgcmVxdWlyZXMgT05MWSBtb2RpZnlpbmcgZ3ItdWhkDQo+PiB1c3Jw
X3NpbmtfaW1wbC5jYw0KPj4gdm9pZHVzcnBfc2lua19pbXBsOjpzZXRfdHhfbG9fZGlzdChib29s
ZW5hYmxlZCwNCj4+IGNvbnN0c3RkOjpzdHJpbmcmbmFtZSwNCj4+IHNpemVfdGNoYW4pDQo+PiB7
DQo+PiAjaWZkZWZVSERfVVNSUF9NVUxUSV9VU1JQX1RYX0xPX0NPTkZJR19BUEkNCj4+IF9kZXYt
PmdldF90cmVlKCktPmFjY2Vzczxib29sPigiL2Jsb2Nrcy8wL1JhZGlvIzAvZGJvYXJkL3R4X2Zy
b250ZW5kcy8wL2xvcy9sbzEvbG9fZGlzdHJpYnV0aW9uIi86OnVoZDo6ZnNfcGF0aChuYW1lKSAv
ImV4cG9ydCIpLnNldChlbmFibGVkKTsNCj4+ICNlbHNlDQo+PiB0aHJvd3N0ZDo6cnVudGltZV9l
cnJvcigibm90IGltcGxlbWVudGVkIGluIHRoaXMgdmVyc2lvbiIpOw0KPj4gI2VuZGlmDQo+PiB9
DQo+PiB1c3JwX3NpbmtfaW1wbC5oDQo+PiB2b2lkc2V0X3R4X2xvX2Rpc3QoYm9vbGVuYWJsZWQs
DQo+PiBjb25zdHN0ZDo6c3RyaW5nJm5hbWUsIHNpemVfdGNoYW49IDApIG92ZXJyaWRlOw0KPj4g
dXNycF9zaW5rLmgNCj4+IHZpcnR1YWx2b2lkc2V0X3R4X2xvX2Rpc3QoYm9vbGVuYWJsZWQsIGNv
bnN0c3RkOjpzdHJpbmcmbmFtZSwgc2l6ZV90Y2hhbj0wKSA9IDA7DQo+PiB1c3JwX3NpbmtfcHl0
aG9uLmNjDQo+PiAuZGVmKCJzZXRfdHhfbG9fZGlzdCIsDQo+PiAmdXNycF9zaW5rOjpzZXRfdHhf
bG9fZGlzdCwNCj4+IHB5OjphcmcoImVuYWJsZWQiKSwNCj4+IHB5OjphcmcoIm5hbWUiKSwNCj4+
IHB5OjphcmcoImNoYW4iKSA9MCwNCj4+IEQodXNycF9zaW5rLCBzZXRfdHhfbG9fZGlzdCkpDQo+
PiB1c3JwX3NpbmtfcHlkb2NfdGVtcGxhdGUuaA0KPj4gc3RhdGljY29uc3RjaGFyKiBfX2RvY19n
cl91aGRfdXNycF9zaW5rX3NldF90eF9sb19kaXN0PSBSImRvYygpZG9jIjsNCj4+IEFzc3VtaW5n
IHRoZSBzaW5rIGJsb2NrIGlzICJ1c3JwX3NpbmtfMCINCj4+IHNuaXBwZXRfMCBjb2RlDQo+PiAn
TWFpbi1BZnRlciBJbml0Jw0KPj4gIyBUdXJuIG9uIHRoZSBwb3J0cw0KPj4gc2VsZi51c3JwX3Np
bmtfMC5zZXRfdHhfbG9fZGlzdChUcnVlLCJMT19PVVRfMCIsMCkNCj4+ICMgcmVwZWF0IHRoZSBh
Ym92ZSBmb3IgYWxsIHBvcnRzIG5lZWRlZCAiTE9fT1VUXzxOPiINCj4+IHNuaXBwZXRfMQ0KPj4g
J01haW4tQWZ0ZXIgU3RvcCcNCj4+ICMgVHVybiBvZmYgdGhlIHBvcnRzDQo+PiBzZWxmLnVzcnBf
c2lua18wLnNldF90eF9sb19kaXN0KEZhbHNlLCJMT19PVVRfMCIsMCkNCj4+ICMgcmVwZWF0IGZv
ciBhbGwgcG9ydHMgeW91IGVuYWJsZWQgIkxPX09VVF88Tj4iDQo+PiBUaGUgb3RoZXIgc2V0dGlu
Z3MgaSBmb3VuZCB3ZXJlIG5lZWRlZCBpbiB0aGUgZ3ItdWhkIGJsb2NrIGluY2x1ZGVkOg0KPj4g
U2V0dGluZyB0aGUgc3RhcnQgdGltZSB0byAxDQo+PiBTZXR0aW5nIHRoZSBNYXN0ZXIgQ2xvY2sg
cmF0ZSB0byAyMDBNSHoNCj4+IENIMDoNCj4+ICAgTE8gU291cmNlID0gZXh0ZXJuYWwNCj4+ICAg
TE8gRXhwb3J0ID0gVHJ1ZQ0KPj4gQ0gxOg0KPj4gICBMTyBTb3VyY2UgPSBleHRlcm5hbA0KPj4g
ICBMTyBFeHBvcnQgPSBGYWxzZQ0KPj4gSSdkIGxpa2UgdG8gdGhhbmsgdGhlIGNvbW11bml0eSBv
ZiB1c2VycyBmb3IgZG9pbmcgYWxsIG9mIHRoaXMgd29yaywgZXNwZWNpYWxseSBNYXJjdXMgTGVl
Y2gsIFJvYiBLb3NzbGVyIGFuZCBEYW5pZWwgRXN0ZXZleg0KPiAKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0g
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
