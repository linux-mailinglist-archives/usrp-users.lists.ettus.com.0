Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D551A1B030
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2025 07:06:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BD587385A4E
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2025 01:06:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737698760; bh=qIk1XSQz6kWJb5ckG2sqLSyJnl5o3ZhRGZceVbG4x/c=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=S4kgfghuAyD6SPpYd2g9QXdO1rwoMfSiCqc+ob+6mwcXoqv5QwEDnbLh0Y6QDp1YI
	 HiK9UoSDNPEM7I7kd6lWyJc+lX8Xct+u8W8coaRZdXNl49GjO7YTULdSlRai0p1dcb
	 a4HTMfJnm62jL8kMmE5NbDF1DCjeEbaM3XO9uqzM6rHByvC1SighXF6Xt24BkEJCE/
	 ha+cH7+91xlgkHUGdjQ6Slgny0CjXcDFHb100ADms3GbR5b9lAbDgJt+cz+vcQ8szZ
	 njMnoC8P1B1RQBYxH6x5rUpezyvkTFFoa+aqUv/RvCrw8gwpNuOCSiAkaqd7EWaYSJ
	 gvf/jggLHBCog==
Received: from omta33.uswest2.a.cloudfilter.net (omta33.uswest2.a.cloudfilter.net [35.89.44.32])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C286385260
	for <usrp-users@lists.ettus.com>; Fri, 24 Jan 2025 01:04:32 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=atindriya.co.in header.i=@atindriya.co.in header.b="D3vk+k7x";
	dkim-atps=neutral
Received: from eig-obgw-6009a.ext.cloudfilter.net ([10.0.30.184])
	by cmsmtp with ESMTPS
	id avZItLoPhWuHKbCnvt2TEs; Fri, 24 Jan 2025 06:04:31 +0000
Received: from 119-18-48-61.webhostbox.net ([119.18.48.61])
	by cmsmtp with ESMTPS
	id bCnstZ8ppp6oLbCnttQwhW; Fri, 24 Jan 2025 06:04:31 +0000
X-Authority-Analysis: v=2.4 cv=ANS2oedo c=1 sm=1 tr=0 ts=67932d6f
 a=bPTgM9xNt4Vpxv/3Ws5fWw==:117 a=bPTgM9xNt4Vpxv/3Ws5fWw==:17
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=1oJP67jkp3AA:10
 a=VdSt8ZQiCzkA:10 a=j0z1oGNQ4lYA:10 a=etiEgX_XAAAA:8 a=kVywuAJEAAAA:8
 a=gHRcY6LU9rPOv2dY6GcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=U4q1JnfK6ysA:10 a=MLbIUA-Bjd6y1alW9qBG:22 a=26tcdy2dAj9m90MLnbb2:22
 a=IOVrdXkZsZi_Xkr5h5Fc:22 a=iTWC1DL0K-q19goYTGrE:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=atindriya.co.in; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=zSp4pUDlxTcISbVQVh4/BBFMH68UwWeHC4QJExGYBuM=; b=D3vk+k7xdqoh3WAnG6kNuFBs62
	DwAqSh/CZzpg3gsBmvBRz0C4Sc5yo3EUNiFbmqkYZgcjFhhDr4szxMb6370eemz80ZRmmxY5SenvB
	RGxVcncP7PoCoD8pr9xM/+byPXy7EM9kj5Ct2hufRceSZWCVaTA2KcRsgUkuR0H/G14OSLQQwLzHj
	uaQ1nL+3L1SUBtI/V0X5d2IFWdxQ2ArKZXDaMbIvNGhTxSVjHxlstmB8NwMrzZx8BVNskm3ynZWl8
	YTPQkinsnOZnZ1mk+63JgLC1IfS9xzzShdyaSzv3G9508Ku3Va/XFJ/61HTLFubE0/BJ4Bo723DyB
	TYcxq9gA==;
Received: from [::1] (port=57944 helo=server.atindriya.co.in)
	by server.atindriya.co.in with esmtpa (Exim 4.96.2)
	(envelope-from <kavinraj@atindriya.co.in>)
	id 1tbCnm-0006Fl-32;
	Fri, 24 Jan 2025 01:04:27 -0500
MIME-Version: 1.0
Date: Fri, 24 Jan 2025 01:04:27 -0500
From: kavinraj@atindriya.co.in
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1d81d416-1a75-40b1-aea1-f62599ad1d61@gmail.com>
References: <c0b8b26f43b81d3bc15a37088f15b44d@atindriya.co.in>
 <1d81d416-1a75-40b1-aea1-f62599ad1d61@gmail.com>
User-Agent: Roundcube Webmail/1.6.0
Message-ID: <3e680115d4521bfdf7831537d1a0589e@atindriya.co.in>
X-Sender: kavinraj@atindriya.co.in
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.atindriya.co.in
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - atindriya.co.in
X-Get-Message-Sender-Via: server.atindriya.co.in: authenticated_id: kavinraj@atindriya.co.in
X-Authenticated-Sender: server.atindriya.co.in: kavinraj@atindriya.co.in
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4xfHemXyGVg7LXxTBChhRhDOWK6wbjlr5Zd1Zd+3tFrpUMdl6ss1Rr1o8qBehEXFIRorI/XNyddHVMq9BNkLNTn+zPIEFhEFULFhe8o0N2VtZLR2WzFdiF
 CqQ2u0Nqcz5U6UH/01+YQhou6nrDLobGuFN5AihQ8R78f/a7v97bwKk8je0+Z1V31W3iSabURsgUMsX2QzCagV1Com0UNYa++Yt79augQ+9sNAxGZ+QjkTsA
Message-ID-Hash: QBG27DM26ER2UKS4JDC3T5DEYG6MDZOX
X-Message-ID-Hash: QBG27DM26ER2UKS4JDC3T5DEYG6MDZOX
X-MailFrom: kavinraj@atindriya.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG : B205MINI-I board
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QBG27DM26ER2UKS4JDC3T5DEYG6MDZOX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQogICBUaGFuayB5b3UgZm9yIHlvdXIgcmVwbHkuDQoNCiAgIEhvdyB0byByZXNvbHZlIHRo
aXMgaXNzdWU/DQoNClRoYW5rcywNCkthdmlucmFqLg0KDQoNCg0KDQpPbiAyMDI1LTAxLTI0IDAw
OjU4LCBNYXJjdXMgRC4gTGVlY2ggd3JvdGU6DQo+IE9uIDI0LzAxLzIwMjUgMDA6MzMsIGthdmlu
cmFqQGF0aW5kcml5YS5jby5pbiB3cm90ZToNCj4+IEhpLA0KPj4gwqDCoCBSZWNlbnRseSwgSSBo
YXZlIGJvdWdodCBVU1JQIEIyMDVtaW5pIGJvYXJkLiBJIGFtIHdvcmtpbmcgb24gaXQuIEkgDQo+
PiBoYXZlIGRvd25sb2FkZWQgdGhlIFVIRCBkcml2ZXIgZnJvbSB0aGUgdWJ1bnR1IHBhY2thZ2Uo
c3VkbyBhcHQtZ2V0IA0KPj4gaW5zdGFsbCBsaWJ1aGQtZGV2IHVoZC1ob3N0KS4NCj4+IA0KPj4g
wqDCoCBXaGVuIHRoZSBib2FyZCBpcyBjb25uZWN0ZWQgdG8gdGhlIFBDIGl0IGlzIGRldGVjdGVk
IHdoZW4gSSBnaXZlIA0KPj4gdGhlIHVoZF9maW5kX2RldmljZXMgaXQgc2hvd3MgdGhlIHNlcmlh
bCxuYW1lLHByb2R1Y3QgYW5kIHR5cGUuDQo+PiANCj4+IMKgwqAgU28sIEkgaGF2ZSB3cml0dGVu
IHRoZSBjb2RlIGZvciByZWNlaXZpbmcgdGhlIGRhdGEuIFdoZW4gSSBhbSBidWlsZCANCj4+IHRo
ZSBjb2RlIGl0IGRvZXNuJ3Qgc2hvdyBhbnkgZXJyb3IuIFdoZW4gSSBydW4gdGhlIHByb2dyYW0g
c29tZSBBUEkgDQo+PiBmdW5jdGlvbnMgYXJlIHdvcmtpbmcgZmluZS4gd2hlbiBpdCByZWFjaCB0
aGUgDQo+PiB1aGRfcnhfc3RyZWFtZXJfaXNzdWVfc3RyZWFtX2NtZChyeF9zdHJlYW1lciwmc3Ry
ZWFtX2NtZCk7IGFuZCANCj4+IHVoZF9yeF9zdHJlYW1lcl9yZWN2KHJ4X3N0cmVhbWVyLCBidWZm
c19wdHIsIFNBTVBMRVNfUEVSX0JVUlNULCANCj4+ICZyeF9tZXRhZGF0YSwgYnVyc3RfZHVyYXRp
b24sIGZhbHNlLCAmaXRlbXNfcmVjZWl2ZWQpO8KgIGl0IA0KPj4gYXV0b21hdGljYWxseSB0ZXJt
aW5hdGVzIHRoZSBwcm9ncmFtLg0KPj4gDQo+PiDCoMKgIFdoZW4gSSBkZWJ1ZyBsaW5lIGJ5IGxp
bmUsIGFmdGVyIHJlYWNoaW5nIHRoZSBhYm92ZSBmdW5jdGlvbiBpdCANCj4+IHNob3dzIGxpa2Ug
Tm8gc291cmNlIGF2YWlsYWJsZSBmb3IgInVoZF9yeF9zdHJlYW1lcl9pc3N1ZV9zdHJlYW1fY21k
KCkgDQo+PiBhdCAweDdmZmZmNzIyN2NmZSIgLsKgIFdoYXQgbWF5IGJlIHRoZSBpc3N1ZT8NCj4g
VGhhdCBqdXN0IG1lYW5zIHRoYXQgdGhlIGRlYnVnZ2VyIGRvZXNuJ3Qga25vdyB3aGVyZSB0byBm
aW5kIHRoZSBzb3VyY2UgDQo+IGNvZGUuwqAgSWYgdGhlIHByb2dyYW0gYXV0b21hdGljYWxseSB0
ZXJtaW5hdGVkLCB5b3UNCj4gwqAgbGlrZWx5IHBhc3NlZCBhbiBhcmd1bWVudCB3aXRoIGEgd2ls
ZCBwb2ludGVyIHRoYXQgcG9pbnRlZCBhdCBpbnZhbGlkIA0KPiBtZW1vcnkuwqAgVGhhdCdzIGp1
c3QgYSBwcm9ncmFtbWluZyBpbiBDL0MrKyBxdWVzdGlvbi4NCj4gDQo+IA0KPj4gDQo+PiDCoMKg
IEFsc28gSSB3YW50IHRvIGNvbmZpZ3VyZSB0aGUgR1BJTyBwaW5zIGluIHRoZSBib2FyZC4gRm9y
IHRoYXQgSSANCj4+IG5lZWQgR1BJTyBiYW5rIG5hbWUsIENhbiB5b3UgZ2l2ZSBtZSB0aGUgR1BJ
TyBiYW5rIG5hbWUgb2YgdGhpcyBib2FyZD8NCj4+IA0KPj4gDQo+IFNlZSBoZXJlOg0KPiANCj4g
aHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL3BhZ2VfZ3Bpb19hcGkuaHRtbCN4Z3Bpb19m
cGFuZWxfeGFtcGxlDQo+IA0KPiBUaGVyZSdzIGEgImdldF9ncGlvX2JhbmtzKCkiIGZ1bmN0aW9u
IHRoYXQgY2FuIHNob3cgeW91IGJhbmsgbmFtZShzKS4NCj4gDQo+IA0KPj4gV2l0aCByZWdhcmRz
LA0KPj4gS2F2aW5yYWouDQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXw0KPj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20NCj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNl
cnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
