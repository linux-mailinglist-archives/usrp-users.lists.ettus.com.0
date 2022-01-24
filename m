Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 62935497664
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jan 2022 01:06:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6553838493A
	for <lists+usrp-users@lfdr.de>; Sun, 23 Jan 2022 19:06:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ex5m0tY/";
	dkim-atps=neutral
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id D457B3844C3
	for <usrp-users@lists.ettus.com>; Sun, 23 Jan 2022 19:05:02 -0500 (EST)
Received: by mail-qk1-f174.google.com with SMTP id 71so2168231qkf.4
        for <usrp-users@lists.ettus.com>; Sun, 23 Jan 2022 16:05:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=qHh+59XnA12wykoPzUTwZnIsqfO/5aU4/66ulww1w7c=;
        b=ex5m0tY/mLUyhFQqhulD7ft6P5iQ0gxOVK6MNUqUWDFRd4FNQjSOLbnm38A23ppcwK
         FqssKediRkcY52KSJqxo0acwLRxhvppus6YWibh/tctKGFSzj/umyoUvLY54smK2Em7t
         K+gaWvmavvteKTQRoV4Xox5Yoea2YgYZMmRhGEHfkCnb//7NoXZuPk4bJvwwTHi0NKQs
         7WoFqJtwdR6vBfsyMyOtNWNthyNcYHqofZznCIC/cG5MAl+wBJpgw7msLQajzWwq6Xh4
         R6dYl5aIcSmydLIGHVZ2gWUzZFijd9oGcqSMq/qkQZCNb5geJiF2qVq8AmTFEZFevL0j
         DiXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=qHh+59XnA12wykoPzUTwZnIsqfO/5aU4/66ulww1w7c=;
        b=pTtx85eIrGQ70dXlxeRA10YGpjn7LBC6pDsHCHDAHdFNZy16bAWyOla2suhjgPg9OO
         tlut0WCDcyuB+zP9wy6ZW9z0Q/jsQz1zZpf+ApNSoB/jXM2klxvA30ldag8Rj7kpUi9B
         ivelDgXyK2bBDnRBjFKs+qDi1qhFFDDzgZKmnMTR67u+bnoWKc8oQgJ3XlxDSsmkkAKT
         QEf88chDQEjt/CwHtPvjgLAJSgtjUHGUyfAiqxLZK3M/1xOKEtORvoDr84v8F0jIL+zM
         UsKO3lfAkt2vP69nX/AkPoJfc22hQaQw/pzc8BZal1cMjTYLFROGHoTJXrc3O1MFdHnI
         TF6g==
X-Gm-Message-State: AOAM532dtcKAzNYvZZi07cbD02semnbu3COINAk5JkfiLDGWEX+vyYC7
	Aw9q/PE7Jo2Kc230Cxbsv0wMkRiJCJy/NA==
X-Google-Smtp-Source: ABdhPJzwlx+IDYLsCmtBIXhONl1tlqvWN6AhK5HOwQnJV5pppjY8nP7hTjI3liLGMASKY/5Mw75E1g==
X-Received: by 2002:a05:620a:2955:: with SMTP id n21mr9421459qkp.336.1642982701718;
        Sun, 23 Jan 2022 16:05:01 -0800 (PST)
Received: from [192.168.2.225] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id b23sm6166178qtp.94.2022.01.23.16.05.00
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Jan 2022 16:05:01 -0800 (PST)
Message-ID: <f24351c6-0aae-d3e4-14be-9c531480bc75@gmail.com>
Date: Sun, 23 Jan 2022 19:05:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <VE1PR04MB6653B7870588CB7067893F2BBA5D9@VE1PR04MB6653.eurprd04.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <VE1PR04MB6653B7870588CB7067893F2BBA5D9@VE1PR04MB6653.eurprd04.prod.outlook.com>
Message-ID-Hash: G75NXQGVUVW6L7QCDTLDL4WAOVTHB7V3
X-Message-ID-Hash: G75NXQGVUVW6L7QCDTLDL4WAOVTHB7V3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Regarding Phase Noise of N321
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G75NXQGVUVW6L7QCDTLDL4WAOVTHB7V3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wMS0yMyAxODoyOCwgTWluZyBZb3Ugd3JvdGU6DQo+IEhpIFVTUlAtdXNlciBsaXN0
LA0KPg0KPiBJIGFtIHdyaXRpbmcgdG8gc2VlIGlmIHRoZXJlIGNvdWxkIGJlIHNvbWUgaGVscC9p
bmZvcm1hdGlvbiByZWdhcmRpbmcgTjMyMSBzeW5jaHJvbmlzYXRpb24gYmV0d2VlbiBtdWx0aXBs
ZSBkZXZpY2VzL3BoYXNlIG5vaXNlLCBhbmQvb3IgYW55IHN1Z2dlc3Rpb25zIHRvIHByb3Blcmx5
IHNldCB0aGUgTjMyMSB0byBleHRlcm5hbCBSRUYgYW5kIFBQUyB3aXRoIENEQS0yOTkwLg0KPg0K
PiBJIGFtIHVzaW5nIENEQS0yOTkwIGFzIHRoZSBleHRlcm5hbCBSRUYgYW5kIFBQUyBzb3VyY2Us
IGFuZCBJIGFtIHN1cmUgdGhlIGNvbmZpZ3VyYXRpb24gaXMgbm8gcHJvYmxlbSBhcyBJIGhhcHBl
biB0byBoYXZlIGEgcGFpciBvZiBYMzEwLCB3aGljaCBzaG93cyBhbiBleHRyZW1lIHN0YWJsZSBw
aGFzZSBsb2NrIGFzIGV4cGVjdGVkLiBCeSBjb250cm9sbGluZyB0aGUgdmFyaWFibGVzIChpLmUu
LCBvbmx5IHN3YXAgdGhlIHgzMTAgd2l0aCBOMzIxKSwgd2hpbGUgZXZlcnl0aGluZyBlbHNlIGtl
cHQgdGhlIHNhbWUgKGNhYmxlcywgYW50ZW5uYXMsIGdyYyBmaWxlcyBpbiBnbnVyYWRpbyksIGl0
IGlzIHN0cmFuZ2UgdG8gc2VlIHRoYXQgTjMyMSBpcyBub3Qgc3RhYmxlIHdpdGggdGhlIHBoYXNl
IChzZWVtaW5nbHkgbm90IGxvY2tlZCB0byB0aGUgZXh0ZXJuYWwgcmVmKS4NCj4NCj4gRm9yIHRo
ZSBncmMsIEkgd2FzIHJlcGVhdGVkbHkgc2VuZGluZyB0aGUgc2FtZSBzZXF1ZW5jZSBvZiB3YXZl
Zm9ybSwgYW5kIHVzaW5nIENEQS0yOTkwIGFzIGV4dGVybmFsIFJFRiBhbmQgUFBTIHNvdXJjZSB0
byBzeW5jLiBiZXR3ZWVuIHJ4IGFuZCB0eC4gV2l0aCBYMzEwLCBJIHdhcyBhYmxlIHRvIG9ic2Vy
dmUgdGhhdCB0aGUgY29uc3RlbGxhdGlvbiBpcyByb2J1c3QgYW5kIG5vdCBjaGFuZ2luZyBtdWNo
LCB0aGlzIGlzIGV4cGVjdGVkLCBzbyB0aGUgcHJvYmxlbSBzaG91bGQgbm90IGJlIHdpdGggdGhl
IHNpZ25hbHMuDQo+DQo+IEFub3RoZXIgb2JzZXJ2YXRpb24gaXMgdGhhdCB0aGUgZnJlcXVlbmN5
IGJhbmRzIEkgYW0gdGVzdGluZyBpcyA5MDBNSHouIEluY3JlYXNpbmcgdGhlIGZyZXEuIHRvIDEu
N0dIeiB3aWxsIHJlc3VsdCBpbiB3b3JzZSBwaGFzZSBwZXJmb3JtYW5jZSBpbiBOMzIxLCBjb21w
YXJpbmcgdG8gdGhlIDkwME1IeiBjYXNlLiBBbnkgaWRlYSBvciBrbm93biBpc3N1ZXMvYnVncyB3
aXRoIHN1Y2ggb2JzZXJ2YXRpb25zPw0KPg0KPiBJJ3ZlIGFsc28gZm9sbG93ZWQgdGhlIGluc3Ry
dWN0aW9ucyBpbiBodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvcGFnZV91c3JwX24zeHgu
aHRtbCAsIGFuZCBhZGQgdGhlIGVuYWJsZV9ncHM9RmFsc2UgYXMgL2V0Yy91aGRtcG0uY29uZiBv
biB0aGUgTjMyMSwgYXMgd2VsbCBhcyBkZXZpY2UgYXJndW1lbnRzIGluIHRoZSAuZ3JjLg0KPg0K
PiBGb3IgeW91ciBjb252ZW5pZW5jZSwgaGVyZSBhcmUgc29tZSBiYXNpYyBiYWNrZ3JvdW5kIGlu
Zm9ybWF0aW9uIGFib3V0IHRoZSBVSEQvR05VUmFkaW8gZW52aXJvbm1lbnQgSSBhbSB1c2luZzoN
Cj4NCj4gR05VUmFkaW8gIHYzLjguMi4wLTExMS1nNmFhZDk4YTYNCj4gVUhEXzQuMC4wLjAtMTA0
LWc4ZjI3MzMwNQ0KPg0KPiBUaGUgaW1hZ2VzIGZvciB0aGUgWDMxMCBhbmQgTjMyMSBhcmUgdGhl
IGRlZmF1bHQgSEcgaW1hZ2VzIGNvbWVzIHdpdGggdGhlIFVIRCB2ZXJzaW9uIGFib3ZlLg0KPg0K
PiBBbnkgY29tbWVudHMgb3Igc3VnZ2VzdGlvbnMgd2lsbCBiZSBtdWNoIGFwcHJlY2lhdGVkLg0K
Pg0KPiBUaGFua3MsDQo+IE1pbmcNCj4NCj4NCg0KV2hhdCBkYXVnaHRlcmNhcmRzIHdlcmUgeW91
IHVzaW5nIGluIHRoZSBYMzEwP8KgIEp1c3Qgc28gd2Uga25vdyB3aGF0IHdlIA0KYXJlIGNvbXBh
cmluZy4NCg0KQ2FuIHlvdSBzaGFyZSB0aGUgZmxvdy1ncmFwaHMgdGhhdCB5b3UncmUgdXNpbmc/
DQoNCkFyZSB5b3UgY29tcGFyaW5nIGFic291dGUgcGhhc2UgcmVsYXRpb25zaGlwIGJldHdlZW4g
VFggYW5kIFJYLCBvciANCnBoYXNlLW5vaXNlLCBvciBleGFjdGx5IHdoYXQgYXJlIHlvdSBtZWFz
dXJpbmc/DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb20K
