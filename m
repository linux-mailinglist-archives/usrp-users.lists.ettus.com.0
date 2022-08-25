Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0785A0577
	for <lists+usrp-users@lfdr.de>; Thu, 25 Aug 2022 03:01:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 589BB38EDC9
	for <lists+usrp-users@lfdr.de>; Wed, 24 Aug 2022 21:01:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1661389299; bh=PIYw28fGNmfU9Oak2waifsGDfFfhD+vbb7ymAKanG30=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Z1PuXLGC2YSYP/JcYoA2iaBm7Q9YqPjigJIrNL6v9Nctw1MovP8DAQ5SKxXQuDuwb
	 Vi0BhLVtZEaluIo+7AhvpKGQH6MIf1GrLmIfgm3YZIiunLPV0RRaw05pxxjYsxzNAB
	 sFTWCAzVXkVimOWbHwklapP4xf82GDiRkZFc6HKb0ZvF4DE8hDiBV7cj4Lc+Z4LMt0
	 dGGbVjOgJ2rG6km6vro76xSwEeh+ezgF+rMGGXJaZYEdiDraRYLNjsHyXnk/5Gvsb8
	 esdkDz8tN/CkTTXTZZaTdG/AqSWxc4fAVnYQLCq2ZtS8oR1fiEMMPGcl8mcY5FILXb
	 e9xyctVGKuCAQ==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 4A25D38EDB2
	for <usrp-users@lists.ettus.com>; Wed, 24 Aug 2022 21:00:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nYS2o3Uk";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id h22so14148617qtu.2
        for <usrp-users@lists.ettus.com>; Wed, 24 Aug 2022 18:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=TIAFc/geaXsIepAQkqQNt9kqzHCHQHPDq/8cB3gtlCQ=;
        b=nYS2o3Uk6O7htQMYFQVE335Mwo1DifIcBx1QabjQRPlU818rzULCHr35RvExZemwts
         7s4mTHu9CX6F3eDXTXVnHbknotcGQ+TYjj+cD08FoZrKzuoUkLUImDEcy2Im2zQxAhPP
         DSZm6qj+6wAq0x3fTGftFUvKk2BrUxbDHVqSBHcX/H+DJWt9Hh56aawFhxTjYYT/Vzq7
         X5JkYhUeECJAfQRx+fwIt9dqmjuW1nuvbncGVE38SDCbVg/OrralGJ7AtPZkbtNaHUAm
         FtTpZyNd76JTHWVYzN2U8UJ1/b5rXCMHslqfkQQ64/LHMGvGe/OmT3S9Aj0pkI2R5yQj
         T0HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=TIAFc/geaXsIepAQkqQNt9kqzHCHQHPDq/8cB3gtlCQ=;
        b=bdvrhDhUVXcT9OeDPvf0WSXJj/Z51WHKG4FJaKVR31lItl4ULVivQm3+YrhpH5Xrjz
         hRMlGEcHu8wkTeU5Y0/Q1mAImMpwrQuzOg5w1zE/IyrI00yQi+ZVKpmVV4X67YxlfxXl
         zAbM3EhOztctJWJbzl9l0fDjwNB4xIAqYS9haOA+QQ/5O6Aie+m3tNH+e9X8P4X5brjh
         lR7gTEbGZZv1QO6wVcyCrDdSyR2uZMxksGQBqVrFndbjTxVTwwnayEIqSUQub7RxnzZ3
         OL7UpupcC/SV2y4bsCmq/bToUMSKkG3RcqoM+IQtFLtoYG2xbchWrGYf1tBf7oShVeEl
         QznQ==
X-Gm-Message-State: ACgBeo2Yr6CrYcVvdQTucnln5RP0/oiHPxAUHdcX95B8yevNyhNhBsJX
	VBblYAazbKgsWycTQz/thSqbbumHaLc=
X-Google-Smtp-Source: AA6agR747YjD4Hv5J1Uvd27aiiL6YlL6YFLEZISYjEpTPQvARIShteEmsx9kKI/EA+mQ0OIssUv/cg==
X-Received: by 2002:a05:622a:30d:b0:343:63d1:3751 with SMTP id q13-20020a05622a030d00b0034363d13751mr1692845qtw.679.1661389240245;
        Wed, 24 Aug 2022 18:00:40 -0700 (PDT)
Received: from [192.168.2.210] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id t13-20020a05620a450d00b006bb6c63114fsm17716228qkp.110.2022.08.24.18.00.39
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 18:00:39 -0700 (PDT)
Message-ID: <561e8c98-42b9-8059-e1d8-84e8695cdd60@gmail.com>
Date: Wed, 24 Aug 2022 21:00:38 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CH0PR01MB7050582855A91C6BFD950630B5739@CH0PR01MB7050.prod.exchangelabs.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CH0PR01MB7050582855A91C6BFD950630B5739@CH0PR01MB7050.prod.exchangelabs.com>
Message-ID-Hash: 5N4DUICAJCQNMLPYNLKMKEOXWRLTYXHV
X-Message-ID-Hash: 5N4DUICAJCQNMLPYNLKMKEOXWRLTYXHV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 GPSDO time synchronization issues
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5N4DUICAJCQNMLPYNLKMKEOXWRLTYXHV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wOC0yNCAxOTozOCwgTWNLbmlnaHQsIFJ5YW4gd3JvdGU6DQo+IEkgYW0gbGVhcm5p
bmcgdG8gdXNlIHRoZSBHUFNETyBjYXBhYmlsaXR5IG9uIHRoZSBOMjEwIGFuZCBJIGFtIGhhdmlu
ZyBhIHN0cmFuZ2UgaXNzdWUsIHNlZW1pbmdseSByZWxhdGVkIHRvIHRoaXMgcHJldmlvdXMgdGhy
ZWFkOg0KPg0KPiBodHRwczovL3d3dy5tYWlsLWFyY2hpdmUuY29tL3VzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tL21zZzA1OTk3Lmh0bWwNCj4NCj4gSGVyZSBpcyBhIFB5dGhvbiBzbmlwcGV0IHRo
YXQgZGVtb25zdHJhdGVzIHRoZSBpc3N1ZToNCj4NCj4gaW1wb3J0IHN5cw0KPiBpbXBvcnQgdGlt
ZQ0KPiBpbXBvcnQgdWhkDQo+DQo+IHVzcnAgPSB1aGQudXNycC5NdWx0aVVTUlAoInNlcmlhbD0z
MEFCMDhFIikNCj4gdXNycC5zZXRfcnhfcmF0ZSg1MGU2LCAwKQ0KPiB1c3JwLnNldF9yeF9mcmVx
KHVoZC5saWJweXVoZC50eXBlcy50dW5lX3JlcXVlc3QoOTEuM2U2KSwgMCkNCj4gdXNycC5zZXRf
cnhfZ2FpbigzMS41LCAwKQ0KPiB1c3JwLnNldF9yeF9hbnRlbm5hKCJSWDIiLCAwKQ0KPiB1c3Jw
LnNldF9jbG9ja19zb3VyY2UoImdwc2RvIikNCj4gdXNycC5zZXRfdGltZV9zb3VyY2UoImdwc2Rv
IikNCj4NCj4gdHJpZXMgPSAwDQo+IHdoaWxlIHRyaWVzIDwgNToNCj4gICAgICBncHNkb19sb2Nr
ID0gdXNycC5nZXRfbWJvYXJkX3NlbnNvcigiZ3BzX2xvY2tlZCIpLnRvX2Jvb2woKQ0KPiAgICAg
IGlmIGdwc2RvX2xvY2s6DQo+ICAgICAgICAgIHByaW50KCdHUFNETyBsb2NrZWQnKQ0KPiAgICAg
ICAgICBicmVhaw0KPiAgICAgIGVsc2U6DQo+ICAgICAgICAgIHRpbWUuc2xlZXAoMSkNCj4gICAg
ICAgICAgdHJpZXMgKz0gMQ0KPg0KPiBpZiBub3QgZ3BzZG9fbG9jazoNCj4gICAgICBwcmludCgn
W0VSUk9SXSBncHNkbyBmYWlsZWQgdG8gbG9jayB3aXRoaW4gNSBzZWNvbmRzJykNCj4gICAgICBz
eXMuZXhpdCgxKQ0KPg0KPiB0cmllcyA9IDANCj4gd2hpbGUgdHJpZXMgPCA1Og0KPiAgICAgIHJl
Zl9sb2NrID0gdXNycC5nZXRfbWJvYXJkX3NlbnNvcigicmVmX2xvY2tlZCIpLnRvX2Jvb2woKQ0K
PiAgICAgIGlmIHJlZl9sb2NrOg0KPiAgICAgICAgICBwcmludCgncmVmIGxvY2tlZCcpDQo+ICAg
ICAgICAgIGJyZWFrDQo+ICAgICAgZWxzZToNCj4gICAgICAgICAgdGltZS5zbGVlcCgxKQ0KPiAg
ICAgICAgICB0cmllcyArPSAxDQo+DQo+IGlmIG5vdCByZWZfbG9jazoNCj4gICAgICBwcmludCgn
W0VSUk9SXSBVU1JQIGZhaWxlZCB0byBsb2NrIG9uIHRvIGdwc2RvIHJlZmVyZW5jZSB3aXRoaW4g
NSBzZWNvbmRzJykNCj4gICAgICBzeXMuZXhpdCgxKQ0KPg0KPiB1c3JwLnNldF90aW1lX25leHRf
cHBzKHVoZC5saWJweXVoZC50eXBlcy50aW1lX3NwZWMoMC4wKSkNCj4NCj4gd2hpbGUgVHJ1ZToN
Cj4gICAgICBwcmludCh1c3JwLmdldF90aW1lX2xhc3RfcHBzKCkuZ2V0X3JlYWxfc2VjcygpKQ0K
PiAgICAgIHRpbWUuc2xlZXAoMSkNCj4NCj4gSSB3b3VsZCBleHBlY3QgdGhpcyB0byBwcmludCBv
dXQgMCwgMSwgMiwgMyBldGMuIHdpdGhvdXQgZHJpZnRpbmcgYXQgYWxsLCBidXQgSSBhbSBhY3R1
YWxseSBzZWVpbmcgcHBzIHRpbWVzIHRoYXQgc2xvd2x5IGRyaWZ0LiBIZXJlIGlzIGFuIGV4YW1w
bGUgb3V0cHV0Og0KPg0KPiBbSU5GT10gW1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiAxMC4z
LjA7IEJvb3N0XzEwNzQwMDsgVUhEXzQuMi4wLkhFQUQtcmVsZWFzZQ0KPiBbSU5GT10gW1VTUlAy
XSBPcGVuaW5nIGEgVVNSUDIvTi1TZXJpZXMgZGV2aWNlLi4uDQo+IFtJTkZPXSBbVVNSUDJdIEN1
cnJlbnQgcmVjdiBmcmFtZSBzaXplOiAxNDcyIGJ5dGVzDQo+IFtJTkZPXSBbVVNSUDJdIEN1cnJl
bnQgc2VuZCBmcmFtZSBzaXplOiAxNDcyIGJ5dGVzDQo+IFtJTkZPXSBbVVNSUDJdIERldGVjdGlu
ZyBpbnRlcm5hbCBHUFNETy4uLi4NCj4gW0lORk9dIFtHUFNdIEZvdW5kIGFuIGludGVybmFsIEdQ
U0RPOiBKYWNrc29uLUxhYnMsIEZpcmVGbHkgLCBGaXJtd2FyZSBSZXYgMC45MjkNCj4gW0lORk9d
IFtVU1JQMl0gU2V0dGluZyByZWZlcmVuY2VzIHRvIHRoZSBpbnRlcm5hbCBHUFNETw0KPiBHUFNE
TyBsb2NrZWQNCj4gcmVmIGxvY2tlZA0KPiA1NS45OTk5OTU2OA0KPiA1Ni45OTk5OTU2OA0KPiAw
Ljk5OTk5OTk4DQo+IDEuOTk5OTk5OTgwMDAwMDAwMQ0KPiAyLjk5OTk5OTk4DQo+IDMuOTk5OTk5
OTgNCj4gNC45OTk5OTk5OA0KPiA1Ljk5OTk5OTk4DQo+IDYuOTk5OTk5OTgNCj4gNy45OTk5OTk5
OA0KPiA4Ljk5OTk5OTk4DQo+IDkuOTk5OTk5OTgNCj4gMTAuOTk5OTk5OTgNCj4gMTEuOTk5OTk5
OTgNCj4gMTIuOTk5OTk5OTgNCj4gMTMuOTk5OTk5OTgNCj4gMTQuOTk5OTk5OTgNCj4gMTUuOTk5
OTk5OTgNCj4gMTYuOTk5OTk5OTgNCj4gMTcuOTk5OTk5OTgNCj4gMTguOTk5OTk5OTgNCj4gMTku
OTk5OTk5OTgNCj4gMjAuOTk5OTk5OTgNCj4gMjEuOTk5OTk5OTgNCj4gMjIuOTk5OTk5OTgNCj4g
MjMuOTk5OTk5OTgNCj4gMjQuOTk5OTk5OTgNCj4gMjUuOTk5OTk5OTgNCj4gMjYuOTk5OTk5OTgN
Cj4gMjcuOTk5OTk5OTgNCj4gMjguOTk5OTk5OTgNCj4gMjkuOTk5OTk5OTgNCj4gMzAuOTk5OTk5
OTgNCj4gMzEuOTk5OTk5OTgNCj4gMzIuOTk5OTk5OTgNCj4gMzMuOTk5OTk5OTgNCj4gMzQuOTk5
OTk5OTgNCj4gMzUuOTk5OTk5OTgNCj4gMzYuOTk5OTk5OTgNCj4gMzcuOTk5OTk5OTgNCj4gMzgu
OTk5OTk5OTgNCj4gMzkuOTk5OTk5OTgNCj4gNDAuOTk5OTk5OTgNCj4gNDEuOTk5OTk5OTgNCj4g
NDIuOTk5OTk5OTgNCj4gNDMuOTk5OTk5OTgNCj4gNDQuOTk5OTk5OTgNCj4gNDUuOTk5OTk5OTgN
Cj4gNDYuOTk5OTk5OTgNCj4gNDcuOTk5OTk5OTgNCj4gNDguOTk5OTk5OTgNCj4gNDkuOTk5OTk5
OTgNCj4gNTAuOTk5OTk5OTgNCj4gNTEuOTk5OTk5OTgNCj4gNTIuOTk5OTk5OTgNCj4gNTMuOTk5
OTk5OTgNCj4gNTQuOTk5OTk5OTgNCj4gNTUuOTk5OTk5OTgNCj4gNTYuOTk5OTk5OTgNCj4gNTcu
OTk5OTk4NDMNCj4gNTguOTk5OTk4NDMNCj4gNTkuOTk5OTk4NDMNCj4gLi4uDQo+DQo+IEFueSBp
ZGVhcyBhcyB0byB3aGF0IEknbSBkb2luZyB3cm9uZywgb3IgaWYgdGhpcyBpcyBhIGJ1ZyBpbiBV
SEQgcmVsYXRlZCB0byB0aGUgYnVnIGluIHRoZSBvdGhlciB0aHJlYWQgdGhhdCBJIGxpbmtlZD8g
SSBhbSB1c2luZyBVSEQgdmVyc2lvbiA0LjIuMC4NCj4NCj4gVGhhbmtzLA0KPiBSeWFuDQo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20N
CkkgY2FuJ3QgaW1tZWRpYXRlbHkgdGVsbCB3aGF0J3MgZ29pbmcgb24gaGVyZSwgYnV0IGEgY291
cGxlIG9mIGNvbW1lbnRzOg0KDQpFeHBlY3RpbmcgdG8gZ2V0ICJncHNfbG9ja2VkIiB3aXRoaW4g
NSBzZWNvbmRzIGlmIHRoZSBkZXZpY2UgaGFzIA0KcmVjZW50bHkgcG93ZXJlZC11cCBpcyBub3Qg
cmVhbGlzdGljLsKgIEl0IGNhbiB0YWtlIDEwcyBvZiBtaW51dGVzDQogwqAgZm9yIGl0IHRvIGFj
aGlldmUgbG9jayBmcm9tIGEgY29sZCBzdGFydC4NCg0KVGhlIGNvZGUgZm9yIHRoZSBOMjEwIGhh
c24ndCBjaGFuZ2VkIGluIHNldmVyYWwgeWVhcnMgYXMgZmFyIGFzIEkga25vdy7CoCANCllvdSBt
aWdodCB0cnkgcmV2ZXJ0ZWQgdG8gMy4xNSB0byBzZWUgaWYgdGhpcyBjaGFuZ2VzDQogwqAgYW55
dGhpbmcsIGJ1dCBJIHJhdGhlciBkb3VidCBpdC7CoCBJcyB0aGlzIGEgbmV3IE4yMTAsIG9yIG9u
ZSB0aGF0IGhhcyANCmJlZW4gYXJvdW5kIGZvciBhIGZldyB5ZWFycz/CoCBbSnVzdCB0cnlpbmcg
dG8gc2VlIGlmIG1heWJlDQogwqAgdGhlcmUncyBhIGJhdGNoIG9mIHJlY2VudCBGaXJlRmx5IEdQ
U0RPcyB0aGF0IGFyZSB3b25reS4uLl0NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJz
LWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
