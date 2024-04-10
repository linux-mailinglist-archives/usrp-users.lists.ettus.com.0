Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F22989E7AC
	for <lists+usrp-users@lfdr.de>; Wed, 10 Apr 2024 03:20:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 60D4C385328
	for <lists+usrp-users@lfdr.de>; Tue,  9 Apr 2024 21:20:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1712712035; bh=LhJY3sT+OQuFSUgequVx8cVKGp4TNEaoyTON8QUnA/s=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=Xhmg40aENr3/qKkxQEOcW7hKjAyjQwCexrYqKPb0qZF6EFZx4ZUB8wgVs0e2PRtvg
	 UtM9/oYjzQ0bBfSAhNHggs9nr87KDb+4dwr0aTFnPwzbFgkOOoA4KdfqzTIpUX4eWm
	 bl9PHskgQ0TAgIrDQAijeJ0mB1C00V+Imk5ZSCFl3dmZl+pR3i0F3n4Mu8wpZ7lvyZ
	 xsQi8VPKgDRH29JtBLYRZqwNdMDWwS5A9dfVlJyBq+BdyuRV7L0s4dLBSC7ieer9nr
	 PpcKkZkxdRTc75Hkq1qxj7lm48ypriELDy40ZxV4vf+51yx1pk6anYFsc8R32uQt9p
	 WkzY8OhX27Pdg==
Received: from saloits.com (saloits.com [63.228.11.26])
	by mm2.emwd.com (Postfix) with ESMTPS id 48744385145
	for <usrp-users@lists.ettus.com>; Tue,  9 Apr 2024 21:19:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=saloits.com header.i=@saloits.com header.b="GTytgArz";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=saloits.com; s=s1;
	t=1712711998; bh=QvZfSejS+kmCRHBKyLXuvEkXBBsmb5iWBgj0yhWfh3Y=;
	h=Date:To:From:Subject:From;
	b=GTytgArztvBNZYEHNZxJg5aWy6gq6RgbGUemG4JbUiInxUD11pHLtknR5GmMh3CRe
	 lq7dHZUmY6d0mNWiuQ2BQrT7B8zLLP7460D+bEcmn2knKdJWmrDfhtnT1t3HG3062g
	 Ooes0SxstytRHY9O4O45FeJLngZWXfst5TET1TtGay5ZZnctVYNp7AWDWgIy+NzICy
	 4SFR/HLcMJfxgL063YX1qHuvR2YCTBBJcB6OPtqmR5f62PnZu66zHWukikOI9aupZh
	 RD0+vYMxrpKrbK+nkYLh3AlK9yCRNhpzSgBixuyAOh6V+ZRN3xM5DD8PedifXMFkRj
	 HXXfBCDcAEH1A==
Received: from [172.16.226.146] (c-69-180-150-83.hsd1.mn.comcast.net [69.180.150.83])
	by saloits.com (Postfix) with ESMTPSA id 6E5054801AF;
	Tue,  9 Apr 2024 20:19:58 -0500 (CDT)
Message-ID: <d506d310-c2e3-43b4-8ae2-515205e3e19b@saloits.com>
Date: Tue, 9 Apr 2024 20:19:41 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
Message-ID-Hash: HZMZCANS6UEBCDMNZWVOUZTTLEDEYRNP
X-Message-ID-Hash: HZMZCANS6UEBCDMNZWVOUZTTLEDEYRNP
X-MailFrom: salo@saloits.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B210 Frequency Stability versus Frequency Accuracy
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HZMZCANS6UEBCDMNZWVOUZTTLEDEYRNP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Timothy J. Salo via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Timothy J. Salo" <salo@saloits.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCkknbSB3cml0aW5nIGEgIkdldHRpbmcgU3RhcnRlZCIgZ3VpZGUgZm9yIG91ciByZXNl
YXJjaCBncm91cC4gIFdoZW4gSQ0KZ290IHRvIHRoZSBHUFNETyBzZWN0aW9uLCBJIGhhZCBkaWZm
aWN1bHR5IGluIGZpZ3VyaW5nIG91dCB0aGUgZnJlcXVlbmN5DQpzdGFiaWxpdHkgYW5kIHRoZSBm
cmVxdWVuY3kgYWNjdXJhY3kgb2YgdGhlIEIyMTAuDQoNCkF0IGxlYXN0IHRoZSBlYXJseSB2ZXJz
aW9ucyBvZiB0aGUgQjIxMCB1c2VkIGEgQ1RTIEVsZWN0cm9uaWMgQ29tcG9uZW50cw0KNTIwTDIw
REE0ME0wMDAwIFRDWE8uICBUaGUgZGF0YXNoZWV0IGZvciB0aGlzIFRDWE8gc2F5cyBpdCBoYXMg
YQ0KZnJlcXVlbmN5IF9zdGFiaWxpdHlfIG9mICsvLSAyLjAgcHBtIG92ZXIgYW4gb3BlcmF0aW5n
IHRlbXBlcmF0dXJlIHJhbmdlDQpvZiAtMzBDIC0gKzg1Qy4NCg0KVGhlIENUUyB3ZWJzaXRlIHN0
YXRlcyB0aGF0IHRoZWlyIFRDWE8gZXhoaWJpdDogIlN0cmF0dW0gMyBQZXJmb3JtYW5jZTsNCsKx
NC42cHBtIG92ZXJhbGwsIMKxMC4yOHBwbSBvdmVyIC00MMKwQyB0byArODXCsEMiLiAgQW0gSSBj
b3JyZWN0IGluDQpjb25jbHVkaW5nIHRoYXQgdGhpcyBpcyB0aGUgZnJlcXVlbmN5IF9hY2N1cmFj
eV8gb2YgdGhlIFRDWE8gdXNlZCBpbg0KdGhlIEIyMTA/ICBEb2VzIHRoaXMgdHJhbnNsYXRlIGRp
cmVjdGx5IGludG8gdGhlIGZyZXF1ZW5jeSBfYWNjdXJhY3lfDQpvZiB0aGUgQjIxMD8NCg0KVGhl
IEIyMTAgZGF0YXNoZWV0IHN0YXRlcyBhIGZyZXF1ZW5jeSBfYWNjdXJhY3lfIG9mICsvLSAyLjAg
cHBtLiAgSXMNCmlzIGEgdHlwbywgYW5kIHNob3VsZCB0aGUgZGF0YXNoZWV0IGFjdHVhbGx5IHNh
eSBmcmVxdWVuY3kgX3N0YWJpbGl0eV8/DQpPciwgZGlkIHNvbWVvbmUgY29uY2x1ZGUgdGhhdCBv
dmVyIGEgcmVhc29uYWJsZSBvcGVyYXRpbmcgdGVtcGVyYXR1cmUsDQp0aGUgZWZmZWN0cyBvZiB0
ZW1wZXJhdHVyZSBvdXR3ZWlnaCBhbnkgaW5hY2N1cmFjeSBpbiB0aGUgZnJlcXVlbmN5DQpvZiB0
aGUgVENYTz8NCg0KQW5lY2RvdGFsbHksIEkgaGF2ZSBoZWFyZCB0aGF0IG9uZSBvcmdhbml6YXRp
b24gZm91bmQgdGhhdCB0aHJlZSBvZg0KdGhlaXIgZm91ciBCMjEwcywgd2hlbiBvcGVyYXRpbmcg
YXMgYSA1RyBiYXNlIHN0YXRpb24sIHdlcmUgdW5hYmxlDQp0byBjb25uZWN0IHdpdGggY29tbWVy
Y2lhbCBvZmYtdGhlLXNoZWxmIGNlbGx1bGFyIGhhbmRzZXRzLCB1bmxlc3MNCmFuIGV4dGVybmFs
IEdQU0RPIHdhcyB1c2VkIHdpdGggdGhlIEIyMTAuICBEb2VzIGFueW9uZSBoYXZlIGFueSBpZGVh
DQp3aGF0IGZyZXF1ZW5jeSBhY2N1cmFjeSBpcyBleHBlY3RlZCBieSBjZWxsdWxhciBoYW5kc2V0
cz8NCg0KU28sIGRvZXMgYW55b25lIGtub3cgd2hhdCB0aGUgZnJlcXVlbmN5IF9hY2N1cmFjeV8g
b2YgdGhlIEIyMTAgaXMsIGluDQp0aGUgYWJzZW5jZSBvZiBhIEdQU0RPPyAgT3IsIHNob3VsZCBJ
IGp1c3QgdXNlIHRoZSArLzEgMi4wIHBwbSBmaWd1cmU/DQoNClRoYW5rcywNCg0KLXRqcw0KLSAt
IC0gLQ0KDQpbMV0gDQpodHRwczovL3d3dy5jdHNjb3JwLmNvbS9GaWxlcy9EYXRhU2hlZXRzL1Bh
c3NpdmVzL0ZDUC9UQ1hPL1RDWE8tNTIwLWRhdGFzaGVldC5wZGYNCg0KDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
