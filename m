Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7769B8593F9
	for <lists+usrp-users@lfdr.de>; Sun, 18 Feb 2024 03:10:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F99E384C06
	for <lists+usrp-users@lfdr.de>; Sat, 17 Feb 2024 21:10:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708222203; bh=VGwvidYCsD3XTWKv/vTmNcz1xv8S9JxIlV8KxaxcKFs=;
	h=In-Reply-To:Date:References:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=AqkjyIMcO+riizy4qWsKsSxKzMt0LsK9TQclKMfmV+XCLhesZRk4/BSApmMOKRFUl
	 EJZlYh4c/DbJnOkKefMy1Qo8QprrulqrFqS/IuRpLcbU3gIg9AuScLHIIznaT5AnB5
	 I2TtO2W/ZntX6YOfpEwthRWc1e7p3OaSTdQTmhsK8RynwG2i8XHSqlbGNF/4jXikAj
	 GUsRJpPxqZKLP2XdLHkgQEvtDJFwe+ZPOF4DT7AZcTmPO2ZN4hjEy8iA0apYzMXnsT
	 wiRxIxrcaku9aXzxn+OwqRzIWxG1M9swzZhVpyoA5RDVHlTVjB1O0GNh70phdVLipC
	 mmy0LLCE5aFcQ==
Received: from mr85p00im-ztdg06021801.me.com (mr85p00im-ztdg06021801.me.com [17.58.23.195])
	by mm2.emwd.com (Postfix) with ESMTPS id C8462380BF9
	for <usrp-users@lists.ettus.com>; Sat, 17 Feb 2024 21:09:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=me.com header.i=@me.com header.b="OZGbpNH6";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1708222168; bh=dl1CdbDtka265qWPdwy+AUb/l0obpO6XKC4UJPVKNb4=;
	h=Content-Type:Mime-Version:Subject:From:Date:Message-Id:To;
	b=OZGbpNH60vdWICYEC/5F4H5FDC61M1hN/VuPmfTmNH8cSRe4BpdsYctSO9cYsCj4Z
	 RAaD92GUX2kD9tvzS6ZP1iu8LliqRM3/no401SSa+6NSmuJOdOBWGil83t1yP3blli
	 YsKgnFGGBw2R3ar9rPlq0grXaRCP6X8I5vVfG0yo2/EwrJ6rduTseuMgFfTy05+/gE
	 oekpZsWWDXqIwEDdCgOGBmnOelNFmg67lrfhgMCXBsDackaipKgPLsS2VWi1vrqm9F
	 E+T3cuf9QeOcGIs4T1VBFlZVqAhl4O58AWfp0J3/QSuhTCuukHvx+hHoUsueWHY70r
	 PA6HLe8yFEB4Q==
Received: from smtpclient.apple (mr38p00im-dlb-asmtp-mailmevip.me.com [17.57.152.18])
	by mr85p00im-ztdg06021801.me.com (Postfix) with ESMTPSA id 8A1C4D0021E;
	Sun, 18 Feb 2024 02:09:27 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.400.31\))
In-Reply-To: <93f5109d-df1e-43b5-9a9c-64c783c60ca0@gmail.com>
Date: Sat, 17 Feb 2024 18:09:16 -0800
Message-Id: <123FFDDC-C327-47C5-A3A4-4D9121B4E1AF@me.com>
References: <b0fa9b2c-15fa-4fe9-94a6-75fa153d2163@me.com>
 <00e1bdc5-7342-4819-9fce-2a8b83fb5e8f@gmail.com>
 <87917179-2A59-48CA-AF3E-25976AD826D5@me.com>
 <93f5109d-df1e-43b5-9a9c-64c783c60ca0@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Mailer: Apple Mail (2.3774.400.31)
X-Proofpoint-GUID: NOYVuposzKeuC3kn6LASy4Yegy4ydrsu
X-Proofpoint-ORIG-GUID: NOYVuposzKeuC3kn6LASy4Yegy4ydrsu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-17_23,2024-02-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 malwarescore=0
 suspectscore=0 spamscore=0 bulkscore=0 clxscore=1015 adultscore=0
 mlxlogscore=999 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2402180013
Message-ID-Hash: PGGPMTWNIZTRADMZ5XIKOXWMK2JATCOM
X-Message-ID-Hash: PGGPMTWNIZTRADMZ5XIKOXWMK2JATCOM
X-MailFrom: jimgrubb@me.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem getting USRP B205mini-i running
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PGGPMTWNIZTRADMZ5XIKOXWMK2JATCOM/>
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

VGhhbmtzIE1hcmN1cywNCg0KSeKAmWxsIGdldCByaWQgb2YgdGhlIHBwYeKAmXMgYW5kIHRyeSB0
byByZS1pbnN0YWxsIGZyb20gdGhlIFVidW50dSByZXBvc2l0b3JpZXMuICBJ4oCZbGwgbGV0IHlv
dSBrbm93IGhvdyBpdCBnb2VzLg0KVGhhbmtzIGFnYWluLA0Kag0KDQo+IE9uIEZlYiAxNywgMjAy
NCwgYXQgNjowNuKAr1BNLCBNYXJjdXMgRC4gTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29t
PiB3cm90ZToNCj4gDQo+IE9uIDE3LzAyLzIwMjQgMjA6NTgsIEppbSBHcnViYiB3cm90ZToNCj4+
IA0KPj4gVGhpcyBwYXJ0IEnigJltIGEgYml0IGNvbmZ1c2VkIG9uLiAgSSBhZGRlZCB0aGUgZXR0
dXMgcmVwb3NpdG9yeSB3aGljaCBoYXMgZWFybGllciB2ZXJzaW9ucyBvZiBsaWJ1aGQsIGJ1dCBv
bmx5IGhhcyB0aGUgNC42IHZlcnNpb24gb2YgdWhkLXRvb2xzLiAgSWYgSSB0cnkgdG8gaW5zdGFs
bCBvbmUgb2YgdGhlIGVhcmxpZXIgdmVyc2lvbnMgb2YgbGlidWhkIHdpdGggdGhlIDQuNiB1aGQt
dG9vbHMsIGl0IGNhdXNlcyBhIGNvbmZsaWN0IGFuZCB3b27igJl0IGluc3RhbGwuIEkgd2FzIGFi
bGUgdG8gZmluZCBhIC5kZWIgZmlsZSBmb3IgdWhkLXRvb2xzIDQuNCBidXQgaXMgaXMgZmFpbGlu
ZyB3aGVuIEkgdHJ5IHRvIGluc3RhbGwgaXQuDQo+PiANCj4+IEFueSBhZHZpY2Ugb24gaG93IHRv
IGluc3RhbGwgYW4gZWFybGllciB2ZXJzaW9uIHdvdWxkIGJlIGFwcHJlY2lhdGVkLg0KPj4gDQo+
PiBUaGFuayB5b3UgZm9yIHlvdXIga2luZCBhc3Npc3RhbmNlIQ0KPj4gQmVzdCwNCj4+IEppbQ0K
Pj4gDQo+IEZvciBVYnVudHUgMjIuMDQsIFVidW50dSBwYWNrYWdlcyByZWNlbnQtZW5vdWdoIHZl
cnNpb25zIG9mIEdudSBSYWRpbyBhbmQgVUhELCBzbyB0aGF0IHlvdSBkb24ndCBuZWVkIHRvIHVz
ZSB0aGUNCj4gICBzcGVjaWFsIEV0dHVzIHJlcG8gd2l0aCBibGVlZGluZy1lZGdlIFVIRC4gICBU
aGUgY29kZWJhc2UgZm9yIHRoZSBCMnh4IHNlcmllcyBoYXNuJ3QgcmVhbGx5IGNoYW5nZWQgaW4g
cXVpdGUgc29tZSB0aW1lLg0KPiANCj4gSSBoYXZlIGEgMjIuMDQgc3lzdGVtICh0eXBpbmcgb24g
b25lIHJpZ2h0IG5vdykgdGhhdCBqdXN0IGhhcyBwYWNrYWdlcyBmcm9tIHRoZSBVYnVudHUgcmVw
b3NpdG9yaWVzIHdpdGhvdXQgaGF2aW5nIHRvIHVzZQ0KPiAgIHRoZSBFdHR1cyBQUEFzLg0KPiAN
Cj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+
IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+
IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb20K
