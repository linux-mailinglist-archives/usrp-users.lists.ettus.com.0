Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD18A8593EA
	for <lists+usrp-users@lfdr.de>; Sun, 18 Feb 2024 02:59:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6F187384BCD
	for <lists+usrp-users@lfdr.de>; Sat, 17 Feb 2024 20:59:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708221580; bh=H0cIFO/7LgHMnGaWjEMWBPurefl3heGy6ZD8Wua0G5o=;
	h=In-Reply-To:Date:References:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=OSaWGx3JEridz5U0xCqYEYm+rrjJ6BjoSKkehB6wJzBX1Z80qObPGOEnXMF1263K9
	 IpSPc85HLa46RDNXt9t83gzXMsVexRMZdMI9BMQ0QTFoKNHJNFaCf+64pVpNRGyruS
	 nd1PFwK0tl2d+P88+hDyMNr/nP0dKq2xY63yJZt+5hCDuRSDg/fDAYDaHJ0lDck15S
	 YTxrf2khaYVwtL5ifwOJQ7TUWkizqQp8b+VywHn7OslTDe3I48LaZumD/B2KZROlac
	 0cf/KJoKvh0TNMOGbEiEHUpLGVRgJqh5ThgHZdYGLflfCOEhheAmJqSW/XjUOLpQ00
	 /HNxNMuJuhmYg==
Received: from mr85p00im-hyfv06021401.me.com (mr85p00im-hyfv06021401.me.com [17.58.23.190])
	by mm2.emwd.com (Postfix) with ESMTPS id 62EAA380BF9
	for <usrp-users@lists.ettus.com>; Sat, 17 Feb 2024 20:59:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=me.com header.i=@me.com header.b="ZXURiRPq";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1708221545; bh=hn47cIQAp0yRQIYSTGDTH4Jp/2206LpcUlQF1nCX8UE=;
	h=Content-Type:Mime-Version:Subject:From:Date:Message-Id:To;
	b=ZXURiRPqyM6rDTXu+R4DGoRk+7dU/x2sg4sh57Ocf0tnhoO4re/Tf+r9sljTzSUYJ
	 ib/0t2tv+JqCteqdVhFs3W/9tU1Yj9FktczTlTb5Hs76N7oubL2av0DzxWlQDt0hwB
	 Nj0sfNFDbVL6b5Bgq0DISxYxSxYp+1Q1PjH4CvFzJENni8zd9vxTZLCV54/v65NltX
	 Mb1a5GIzmmTjZi0JpdhwJZ+Y3xnbJYsm76xvrComWkZmuSHxBrjBvnVUNTmbi5Yt0A
	 AxGn8lrMAUVR19TKZmSnzdKH5GZtz9qveeRlqFAqonfkDVPvpxtnjzILGItZDgMSut
	 BvhExr+8QPXRQ==
Received: from smtpclient.apple (mr38p00im-dlb-asmtp-mailmevip.me.com [17.57.152.18])
	by mr85p00im-hyfv06021401.me.com (Postfix) with ESMTPSA id DF95D3038387;
	Sun, 18 Feb 2024 01:59:04 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.400.31\))
In-Reply-To: <00e1bdc5-7342-4819-9fce-2a8b83fb5e8f@gmail.com>
Date: Sat, 17 Feb 2024 17:58:53 -0800
Message-Id: <87917179-2A59-48CA-AF3E-25976AD826D5@me.com>
References: <b0fa9b2c-15fa-4fe9-94a6-75fa153d2163@me.com>
 <00e1bdc5-7342-4819-9fce-2a8b83fb5e8f@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Mailer: Apple Mail (2.3774.400.31)
X-Proofpoint-ORIG-GUID: FJ6DCt04yQH0b6gdpIn0VO5a9SeOXLtk
X-Proofpoint-GUID: FJ6DCt04yQH0b6gdpIn0VO5a9SeOXLtk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-17_23,2024-02-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 mlxlogscore=999
 bulkscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2402180012
Message-ID-Hash: 3DRGJCWIKRUD4BLP5BRWH4UW6Z6OTTDN
X-Message-ID-Hash: 3DRGJCWIKRUD4BLP5BRWH4UW6Z6OTTDN
X-MailFrom: jimgrubb@me.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem getting USRP B205mini-i running
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3DRGJCWIKRUD4BLP5BRWH4UW6Z6OTTDN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Jim Grubb via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jim Grubb <jimgrubb@me.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWFyY3VzLCANCg0KVGhhbmsgeW91IGZvciB5b3VyIGhlbHAhDQoNCg0KPiBUaGluZ3MgdG8g
Y2hlY2s6DQo+IA0KPiBBcmUgeW91IHVzaW5nIGEgVVNCMy1jb21wYXRpYmxlIGNhYmxlLS0tbGlr
ZSB0aGUgb25lIHNoaXBwZWQgd2l0aCB0aGUgQjIwNT8NCg0KWWVzLiAgVXNpbmcgdGhlIGNhYmxl
IHRoYXQgY2FtZSB3aXRoIHRoZSBCMjA1DQo+IA0KPiBIb3cgb2xkIGlzIHlvdXIgY29tcHV0ZXI/
ICBWZXJ5LWVhcmx5IFVTQjMgY29udHJvbGxlcnMgd2VyZSBmbGFrZXkgaW4gdGhpcyByZWdhcmQu
DQoNCkNvbXB1dGVyIGlzIGN1cnJlbnQuICBpOS0xMzkwMEsgb24gYSBaNzkwIG1vdGhlcmJvYXJk
IHdpdGggMTkyRyBSYW0uDQo+IA0KPiBBcmUgeW91IGdvaW5nIHRocm91Z2ggYSBVU0IgaHViLCBv
ciBkaXJlY3QgdG8gdGhlIGNvbXB1dGVyPyAgU29tZSBodWJzIGFyZSwgYWdhaW4sDQo+ICAgZmxh
a2V5IGluIHRoaXMgcmVnYXJkLg0KRGlyZWN0bHkgcGx1Z2dlZCBpbnRvIGEgVVNCIDMuMiAxMEcg
cG9ydC4NCj4gDQo+IEFyZSB5b3UgcnVubmluZyBpbiBhIFZNLCBvciBvbiAiYmFyZSBtZXRhbCI/
ICAgVVNCIHN1cHBvcnQgaW4gVk1zIGNvbnRpbnVlcyB0byBiZSBzdWItb3B0aW1hbC4NCkJhcmUg
bWV0YWwgcG9wIV9vcyAodWJ1bnR1KSAyMi4wNA0KDQo+IENhbiB5b3UgdHJ5IGJhY2tpbmctb3V0
IHRvIFVIRDQuNSBvciBldmVuIDQuND8NCj4gDQo+IA0KVGhpcyBwYXJ0IEnigJltIGEgYml0IGNv
bmZ1c2VkIG9uLiAgSSBhZGRlZCB0aGUgZXR0dXMgcmVwb3NpdG9yeSB3aGljaCBoYXMgZWFybGll
ciB2ZXJzaW9ucyBvZiBsaWJ1aGQsIGJ1dCBvbmx5IGhhcyB0aGUgNC42IHZlcnNpb24gb2YgdWhk
LXRvb2xzLiAgSWYgSSB0cnkgdG8gaW5zdGFsbCBvbmUgb2YgdGhlIGVhcmxpZXIgdmVyc2lvbnMg
b2YgbGlidWhkIHdpdGggdGhlIDQuNiB1aGQtdG9vbHMsIGl0IGNhdXNlcyBhIGNvbmZsaWN0IGFu
ZCB3b27igJl0IGluc3RhbGwuIEkgd2FzIGFibGUgdG8gZmluZCBhIC5kZWIgZmlsZSBmb3IgdWhk
LXRvb2xzIDQuNCBidXQgaXMgaXMgZmFpbGluZyB3aGVuIEkgdHJ5IHRvIGluc3RhbGwgaXQuDQoN
CkFueSBhZHZpY2Ugb24gaG93IHRvIGluc3RhbGwgYW4gZWFybGllciB2ZXJzaW9uIHdvdWxkIGJl
IGFwcHJlY2lhdGVkLg0KDQpUaGFuayB5b3UgZm9yIHlvdXIga2luZCBhc3Npc3RhbmNlIQ0KQmVz
dCwNCkppbQ0KDQoNCj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20K
