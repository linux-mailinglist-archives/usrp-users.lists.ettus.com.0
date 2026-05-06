Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPA9CKA6+2nUXwMAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 06 May 2026 14:57:04 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 262044DA990
	for <lists+usrp-users@lfdr.de>; Wed, 06 May 2026 14:57:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4507738B261
	for <lists+usrp-users@lfdr.de>; Wed,  6 May 2026 08:57:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1778072221; bh=ODrzH1lIkpRT49C/rmhxoNWVBKhbPVsZQItzJu0crB0=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=MKCdJ639cbv5u8T3laSjWf9rF/H00/ZQq31mdBsXeaz1yYhQygkT++XXF64mu+Ft1
	 JuJ1qcYt+inergpisHs/BWEVHZHHSYFBi0Oz47ZYG/NLeFfDvvkRUr8E4eUHtaUVY8
	 RdTH97VW9dUCxSXENkk8PJYBd5/tpXigAYN1UZ90M+nZCe19O65Wbo6WHnwaEn2cD4
	 gXw12eXQzHgj8lHPJuk8rzLzvY9uqAHlipypDmPMFTmEzYxefGP6C3dQsskA6TYVuV
	 KWsc9cCqKB45mS2PhgMUzsl2fxMV2cQAS/UHR7m8voVfoUlWVAl6cTrUY22OF4gwuu
	 L5xmrwK1xGcsg==
Received: from mx01.hhi.fraunhofer.de (mx01.HHI.FRAUNHOFER.DE [193.174.67.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 28E9338C486
	for <usrp-users@lists.ettus.com>; Wed,  6 May 2026 08:55:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hhi.fraunhofer.de header.i=@hhi.fraunhofer.de header.b="d9Hr4IKd";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=hhi.fraunhofer.de; i=@hhi.fraunhofer.de; q=dns/txt;
  s=s1; t=1778072150; x=1809608150;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:mime-version;
  bh=5hA/3TNKW7PrQETPZJexpOJdiGOhJNX+uZcnmvF2s3M=;
  b=d9Hr4IKdp0L2XcpEutba4y0TxQKK9ENFlGBbZWLa0tW03JnC6sVsAfMv
   Rv73hE/KeAKcgCWAcdIR9di0w8QuK3zjmPsE5dY6ZRm3Ce3XjKOopAmn6
   XArbfVw7aFvfu+WG0IVzQczkybat5BrhE6oeMd0OFyP3RqB8stKyHCBUe
   PQJENEGZjqJhdSap0FBQ/jsMzmIXgTn3lahBkf/sL4yrj8uS79f0mXMsA
   6Uhx/tiLIObLO1ml+sjgltWQxHfZK0Gc10A/6+tdTc2JkGQZdRGrjJspT
   1uJ3/TDnwFY0iSNn8JoLhJIWEN2fuALhpfA9ESa/8Uf4DYz97AeC+S9PT
   A==;
X-CSE-ConnectionGUID: 1Nxn0k9oQACeZVxV8gBu1w==
X-CSE-MsgGUID: itETZDdzT0a9rghhDbSh9A==
X-IronPort-AV: E=Sophos;i="6.23,219,1770591600";
   d="scan'208,217";a="1178664"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO mx.fe.hhi.de) ([172.16.0.105])
  by mx01.hhi.fraunhofer.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 May 2026 14:55:48 +0200
Received: from mxsrv3.fe.hhi.de (fdea:e0ae:2f75:0:859b:1ee2:31f7:cd7b) by
 mxsrv2.fe.hhi.de (fdea:e0ae:2f75:0:bfb1:9396:884b:a6ab) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.37; Wed, 6 May 2026 14:55:47 +0200
Received: from mxsrv3.fe.hhi.de ([fe80::ad2b:b94c:74a4:fae9]) by
 mxsrv3.fe.hhi.de ([fe80::ad2b:b94c:74a4:fae9%5]) with mapi id 15.02.2562.037;
 Wed, 6 May 2026 14:55:54 +0200
From: "Jurk, Dennis" <dennis.jurk@hhi.fraunhofer.de>
To: "Amsel, Lars" <lars.amsel@emerson.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: USRP X410 TRIG LabView
Thread-Index: AdzW/IbukQ14JROXRXuMEmxRA866pAAyEPhAAWRE8OA=
Date: Wed, 6 May 2026 12:55:54 +0000
Message-ID: <a8b2153b867b47859a6f852d93458745@hhi.fraunhofer.de>
References: <2886c174218f45de8fb1b100e4b3c6d0@hhi.fraunhofer.de>
 <IA1PR10MB67817078046DEAD82E551D2F8C342@IA1PR10MB6781.namprd10.prod.outlook.com>
In-Reply-To: <IA1PR10MB67817078046DEAD82E551D2F8C342@IA1PR10MB6781.namprd10.prod.outlook.com>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ActionId=2857418b-4c4a-4388-ba20-4a030beb1e61;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ContentBits=0;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Enabled=true;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Method=Standard;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Name=Internal
 - No
 Label;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SetDate=2026-04-29T10:41:53Z;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;
x-originating-ip: [192.168.22.100]
MIME-Version: 1.0
Message-ID-Hash: W46JXF4CWWTCVJK6M6EBZOKICW5SN6U2
X-Message-ID-Hash: W46JXF4CWWTCVJK6M6EBZOKICW5SN6U2
X-MailFrom: prvs=579d27955=dennis.jurk@hhi.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Kaya, Altug" <altug.kaya@hhi.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X410 TRIG LabView
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W46JXF4CWWTCVJK6M6EBZOKICW5SN6U2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1237661360876427653=="
X-Rspamd-Queue-Id: 262044DA990
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[hhi.fraunhofer.de : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_DKIM_REJECT(0.00)[hhi.fraunhofer.de:s=s1];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	HAS_XOIP(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dennis.jurk@hhi.fraunhofer.de,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,hhi.fraunhofer.de:-];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,ettus.com:email,mm2.emwd.com:helo,mm2.emwd.com:rdns]

--===============1237661360876427653==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_a8b2153b867b47859a6f852d93458745hhifraunhoferde_"

--_000_a8b2153b867b47859a6f852d93458745hhifraunhoferde_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gTGFycywNCg0KdGhhbmsgeW91IGZvciB5b3VyIHJlcGx5LiBJIGhhdmUgc2VlbiB0aGUg
bWVudGlvbmVkIHRvcGljIGluIHRoZSBVU1JQIFg0MTAgVXNlciBNYW51YWwsIHdoaWNoIHJvdWdo
bHkgb3V0bGluZXMgaG93IHlvdSBjYW4gcmVwbGFjZSB0aGUgd2lyaW5nIGluIHRoZSB0aW1lZCBs
b29wIHdoZXJlIHRoZSBUcmlnIE91dCBSb3V0aW5nIFZJIGlzIGxvY2F0ZWQuDQoNCkkgd2FzIHJh
dGhlciBpbnRlcmVzdGVkIGluIGhvdyBJIGNhbiB1c2UgVFJJRyBJTiB0byBpbnRlcmZlcmUgaW4g
dGhlIFR4L1J4IExvb3AgdG8gY29udHJvbCB3aGVuIEkgcmVjZWl2ZSBhbmQgd2hlbiBJIHN0b3Ag
cmVjZWl2aW5nIHdpdGggdGhlIHRyaWdnZXIuDQoNCkJlc3QgcmVnYXJkcw0KRGVubmlzIEp1cmsN
Cg0KVm9uOiBBbXNlbCwgTGFycyA8bGFycy5hbXNlbEBlbWVyc29uLmNvbT4NCkdlc2VuZGV0OiBN
aXR0d29jaCwgMjkuIEFwcmlsIDIwMjYgMTI6NTENCkFuOiBKdXJrLCBEZW5uaXMgPGRlbm5pcy5q
dXJrQGhoaS5mcmF1bmhvZmVyLmRlPjsgdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCkNjOiBL
YXlhLCBBbHR1ZyA8YWx0dWcua2F5YUBoaGkuZnJhdW5ob2Zlci5kZT4NCkJldHJlZmY6IFJFOiBV
U1JQIFg0MTAgVFJJRyBMYWJWaWV3DQoNCkRlbm5pcywNCg0KQWNjb3JkaW5nIHRvIHRoZSBkb2N1
bWVudGF0aW9uIGh0dHBzOi8vd3d3Lm5pLmNvbS9kb2NzL2RlLURFL2J1bmRsZS91c3JwLXg0MTAv
cGFnZS9zaWduYWwtcm91dGluZy5odG1sIHlvdSBzaG91bGQgdXNlIG5pVVNSUCBwcm9wZXJ0eSBu
b2RlIG9uIHRoZSBob3N0IGFuZCB3aXJlIGFuIGlucHV0IHRvIGl0LiBJbiB0aGUgcmVmZXJlbmNl
IEZQR0EgeW91IGhhdmUgdG8gbW9kaWZ5IHRoZSBUUklHIE9VVCBWSSBvbiB0aGUgdG9wIHJpZ2h0
LiAgVGhlIGRlZmF1bHQgd2lyaW5nIGlzdCBQUFMgLT4gVHJpZyBPVVQgYW5kIHlvdSBoYXZlIHRv
IGNoYW5nZSB0aGF0IHRvIG1hdGNoIHlvdXIgZGVzaWduLiBZb3UgaGF2ZSB0byByZW1vdmUgdGhl
IGV4aXN0aW5nIHdpcmluZyBhcyB5b3Ugd2FudCB0byB1c2UgdHJpZ2dlciBhcyBvdXRwdXQuDQoN
ClJlZ2FyZHMNCg0KTGFycw0KDQpGcm9tOiBKdXJrLCBEZW5uaXMgPGRlbm5pcy5qdXJrQGhoaS5m
cmF1bmhvZmVyLmRlPG1haWx0bzpkZW5uaXMuanVya0BoaGkuZnJhdW5ob2Zlci5kZT4+DQpTZW50
OiBUdWVzZGF5LCAyOCBBcHJpbCAyMDI2IDEyOjQ5DQpUbzogdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb208bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KQ2M6IEtheWEsIEFsdHVn
IDxhbHR1Zy5rYXlhQGhoaS5mcmF1bmhvZmVyLmRlPG1haWx0bzphbHR1Zy5rYXlhQGhoaS5mcmF1
bmhvZmVyLmRlPj47IEp1cmssIERlbm5pcyA8ZGVubmlzLmp1cmtAaGhpLmZyYXVuaG9mZXIuZGU8
bWFpbHRvOmRlbm5pcy5qdXJrQGhoaS5mcmF1bmhvZmVyLmRlPj4NClN1YmplY3Q6IFtFWFRFUk5B
TF0gW1VTUlAtdXNlcnNdIFVTUlAgWDQxMCBUUklHIExhYlZpZXcNCg0KDQoNCkhlbGxvIGV2ZXJ5
b25lLA0KDQpJIHdvdWxkIGxpa2UgdG8gdXNlIHRoZSBUUklHIElOIGZ1bmN0aW9uYWxpdHkgb2Yg
dGhlIFg0MTAgdG8gc3RhcnQgdGhlIHJlY2VpdmluZyBvZiBkYXRhIG9uIGEgdHJpZ2dlci4NCg0K
SG93IGRvIEkgaW1wbGVtZW50IHRoaXMvbW9kaWZ5IHRoZSBSZWZlcmVuY2UgRlBHQSBpbWFnZSB0
byBhY2hpZXZlIHRoaXM/IEkgd291bGQgbG92ZSB0byBnZXQgc29tZSBndWlkYW5jZSByZWdhcmRp
bmcgdGhpcyBpc3N1ZS4NCg0KVGhhbmsgeW91IGluIGFkdmFuY2UhDQoNCkJlc3QgcmVnYXJkcw0K
RGVubmlzIEp1cmsNCg0K

--_000_a8b2153b867b47859a6f852d93458745hhifraunhoferde_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseTpBcHRvczt9DQovKiBTdHlsZSBEZWZpbml0
aW9ucyAqLw0KcC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJn
aW46MGNtOw0KCWZvbnQtc2l6ZToxMC4wcHQ7DQoJZm9udC1mYW1pbHk6IkFwdG9zIixzYW5zLXNl
cmlmO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsNCgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5
Ow0KCWNvbG9yOiM0Njc4ODY7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQouTXNvQ2hw
RGVmYXVsdA0KCXttc28tc3R5bGUtdHlwZTpleHBvcnQtb25seTsNCglmb250LXNpemU6MTAuMHB0
Ow0KCW1zby1saWdhdHVyZXM6bm9uZTt9DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo2MTIu
MHB0IDc5Mi4wcHQ7DQoJbWFyZ2luOjcwLjg1cHQgNzAuODVwdCAyLjBjbSA3MC44NXB0O30NCmRp
di5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0tW2lm
IGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRtYXg9
IjEwMjYiIC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxv
OnNoYXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRhPSIx
IiAvPg0KPC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJvZHkg
bGFuZz0iREUiIGxpbms9IiM0Njc4ODYiIHZsaW5rPSIjOTY2MDdEIiBzdHlsZT0id29yZC13cmFw
OmJyZWFrLXdvcmQiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDttc28tZmFy
ZWFzdC1sYW5ndWFnZTpFTi1VUyI+SGVsbG8gTGFycyw8YnI+DQo8YnI+DQp0aGFuayB5b3UgZm9y
IHlvdXIgcmVwbHkuIEkgaGF2ZSBzZWVuIHRoZSBtZW50aW9uZWQgdG9waWMgaW4gdGhlIFVTUlAg
WDQxMCBVc2VyIE1hbnVhbCwgd2hpY2ggcm91Z2hseSBvdXRsaW5lcyBob3cgeW91IGNhbiByZXBs
YWNlIHRoZSB3aXJpbmcgaW4gdGhlIHRpbWVkIGxvb3Agd2hlcmUgdGhlIFRyaWcgT3V0IFJvdXRp
bmcgVkkgaXMgbG9jYXRlZC4NCjxicj4NCjxicj4NCkkgd2FzIHJhdGhlciBpbnRlcmVzdGVkIGlu
IGhvdyBJIGNhbiB1c2UgVFJJRyBJTiB0byBpbnRlcmZlcmUgaW4gdGhlIFR4L1J4IExvb3AgdG8g
Y29udHJvbCB3aGVuIEkgcmVjZWl2ZSBhbmQgd2hlbiBJIHN0b3AgcmVjZWl2aW5nIHdpdGggdGhl
IHRyaWdnZXIuPGJyPg0KPGJyPg0KQmVzdCByZWdhcmRzPGJyPg0KRGVubmlzIEp1cmsgPG86cD48
L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMi
IHN0eWxlPSJtc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUyI+PG86cD4mbmJzcDs8L286cD48L3Nw
YW4+PC9wPg0KPGRpdj4NCjxkaXYgc3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci10b3A6c29saWQg
I0UxRTFFMSAxLjBwdDtwYWRkaW5nOjMuMHB0IDBjbSAwY20gMGNtIj4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90
O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+Vm9uOjwvc3Bhbj48L2I+PHNwYW4gc3R5bGU9ImZv
bnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlm
Ij4gQW1zZWwsIExhcnMgJmx0O2xhcnMuYW1zZWxAZW1lcnNvbi5jb20mZ3Q7DQo8YnI+DQo8Yj5H
ZXNlbmRldDo8L2I+IE1pdHR3b2NoLCAyOS4gQXByaWwgMjAyNiAxMjo1MTxicj4NCjxiPkFuOjwv
Yj4gSnVyaywgRGVubmlzICZsdDtkZW5uaXMuanVya0BoaGkuZnJhdW5ob2Zlci5kZSZndDs7IHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPGJyPg0KPGI+Q2M6PC9iPiBLYXlhLCBBbHR1ZyAmbHQ7
YWx0dWcua2F5YUBoaGkuZnJhdW5ob2Zlci5kZSZndDs8YnI+DQo8Yj5CZXRyZWZmOjwvYj4gUkU6
IFVTUlAgWDQxMCBUUklHIExhYlZpZXc8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8L2Rpdj4NCjwv
ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDttc28tZmFyZWFzdC1s
YW5ndWFnZTpFTi1VUyI+RGVubmlzLDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTIuMHB0O21zby1mYXJlYXN0LWxhbmd1
YWdlOkVOLVVTIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDttc28tZmFyZWFzdC1sYW5ndWFnZTpF
Ti1VUyI+QWNjb3JkaW5nIHRvIHRoZSBkb2N1bWVudGF0aW9uDQo8YSBocmVmPSJodHRwczovL3d3
dy5uaS5jb20vZG9jcy9kZS1ERS9idW5kbGUvdXNycC14NDEwL3BhZ2Uvc2lnbmFsLXJvdXRpbmcu
aHRtbCI+DQpodHRwczovL3d3dy5uaS5jb20vZG9jcy9kZS1ERS9idW5kbGUvdXNycC14NDEwL3Bh
Z2Uvc2lnbmFsLXJvdXRpbmcuaHRtbDwvYT4geW91IHNob3VsZCB1c2UgbmlVU1JQIHByb3BlcnR5
IG5vZGUgb24gdGhlIGhvc3QgYW5kIHdpcmUgYW4gaW5wdXQgdG8gaXQuIEluIHRoZSByZWZlcmVu
Y2UgRlBHQSB5b3UgaGF2ZSB0byBtb2RpZnkgdGhlIFRSSUcgT1VUIFZJIG9uIHRoZSB0b3Agcmln
aHQuICZuYnNwO1RoZSBkZWZhdWx0IHdpcmluZyBpc3QgUFBTIC0mZ3Q7IFRyaWcNCiBPVVQgYW5k
IHlvdSBoYXZlIHRvIGNoYW5nZSB0aGF0IHRvIG1hdGNoIHlvdXIgZGVzaWduLiBZb3UgaGF2ZSB0
byByZW1vdmUgdGhlIGV4aXN0aW5nIHdpcmluZyBhcyB5b3Ugd2FudCB0byB1c2UgdHJpZ2dlciBh
cyBvdXRwdXQuDQo8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDttc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUyI+
PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
c3R5bGU9ImZvbnQtc2l6ZToxMi4wcHQ7bXNvLWZhcmVhc3QtbGFuZ3VhZ2U6RU4tVVMiPlJlZ2Fy
ZHM8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHls
ZT0iZm9udC1zaXplOjEyLjBwdDttc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUyI+PG86cD4mbmJz
cDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZv
bnQtc2l6ZToxMi4wcHQ7bXNvLWZhcmVhc3QtbGFuZ3VhZ2U6RU4tVVMiPkxhcnM8bzpwPjwvbzpw
Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXpl
OjEyLjBwdDttc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUyI+PG86cD4mbmJzcDs8L286cD48L3Nw
YW4+PC9wPg0KPGRpdiBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLXRvcDpzb2xpZCAjRTFFMUUx
IDEuMHB0O3BhZGRpbmc6My4wcHQgMGNtIDBjbSAwY20iPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PGI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5
OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+RnJvbTo8L3NwYW4+PC9iPjxzcGFuIGxh
bmc9IkVOLVVTIiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxp
YnJpJnF1b3Q7LHNhbnMtc2VyaWYiPiBKdXJrLCBEZW5uaXMgJmx0OzxhIGhyZWY9Im1haWx0bzpk
ZW5uaXMuanVya0BoaGkuZnJhdW5ob2Zlci5kZSI+ZGVubmlzLmp1cmtAaGhpLmZyYXVuaG9mZXIu
ZGU8L2E+Jmd0Ow0KPGJyPg0KPGI+U2VudDo8L2I+IFR1ZXNkYXksIDI4IEFwcmlsIDIwMjYgMTI6
NDk8YnI+DQo8Yj5Ubzo8L2I+IDxhIGhyZWY9Im1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbSI+dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KPGI+Q2M6PC9iPiBLYXlh
LCBBbHR1ZyAmbHQ7PGEgaHJlZj0ibWFpbHRvOmFsdHVnLmtheWFAaGhpLmZyYXVuaG9mZXIuZGUi
PmFsdHVnLmtheWFAaGhpLmZyYXVuaG9mZXIuZGU8L2E+Jmd0OzsgSnVyaywgRGVubmlzICZsdDs8
YSBocmVmPSJtYWlsdG86ZGVubmlzLmp1cmtAaGhpLmZyYXVuaG9mZXIuZGUiPmRlbm5pcy5qdXJr
QGhoaS5mcmF1bmhvZmVyLmRlPC9hPiZndDs8YnI+DQo8Yj5TdWJqZWN0OjwvYj4gW0VYVEVSTkFM
XSBbVVNSUC11c2Vyc10gVVNSUCBYNDEwIFRSSUcgTGFiVmlldzxvOnA+PC9vOnA+PC9zcGFuPjwv
cD4NCjwvZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8
ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1zby1saW5lLWhlaWdodC1hbHQ6Ljc1
cHQiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7QXJpYWwm
cXVvdDssc2Fucy1zZXJpZjtjb2xvcjp3aGl0ZSI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9w
Pg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1zby1saW5lLWhl
aWdodC1hbHQ6Ljc1cHQiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MS4wcHQ7Y29sb3I6d2hpdGUi
PjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTIuMHB0O21zby1saWdhdHVy
ZXM6c3RhbmRhcmRjb250ZXh0dWFsO21zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTIj5IZWxsbyBl
dmVyeW9uZSw8YnI+DQo8YnI+DQpJIHdvdWxkIGxpa2UgdG8gdXNlIHRoZSBUUklHIElOIGZ1bmN0
aW9uYWxpdHkgb2YgdGhlIFg0MTAgdG8gc3RhcnQgdGhlIHJlY2VpdmluZyBvZiBkYXRhIG9uIGEg
dHJpZ2dlci48YnI+DQo8YnI+DQpIb3cgZG8gSSBpbXBsZW1lbnQgdGhpcy9tb2RpZnkgdGhlIFJl
ZmVyZW5jZSBGUEdBIGltYWdlIHRvIGFjaGlldmUgdGhpcz8gSSB3b3VsZCBsb3ZlIHRvIGdldCBz
b21lIGd1aWRhbmNlIHJlZ2FyZGluZyB0aGlzIGlzc3VlLjxicj4NCjxicj4NClRoYW5rIHlvdSBp
biBhZHZhbmNlITxicj4NCjxicj4NCkJlc3QgcmVnYXJkczxicj4NCkRlbm5pcyBKdXJrPG86cD48
L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQt
c2l6ZToxMi4wcHQ7bXNvLWxpZ2F0dXJlczpzdGFuZGFyZGNvbnRleHR1YWw7bXNvLWZhcmVhc3Qt
bGFuZ3VhZ2U6RU4tVVMiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPC9i
b2R5Pg0KPC9odG1sPg0K

--_000_a8b2153b867b47859a6f852d93458745hhifraunhoferde_--

--===============1237661360876427653==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1237661360876427653==--
