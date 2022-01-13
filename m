Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D327448D9B9
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 15:32:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE56D384C85
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 09:32:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=univ-ubs.fr header.i=@univ-ubs.fr header.b="QEQV/KFL";
	dkim-atps=neutral
Received: from smtpout01-ext2.partage.renater.fr (smtpout01-ext2.partage.renater.fr [194.254.240.33])
	by mm2.emwd.com (Postfix) with ESMTP id 0ED43384A5C
	for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 09:31:35 -0500 (EST)
Received: from zmtaout01.partage.renater.fr (zmtaout01.partage.renater.fr [194.254.240.30])
	by smtpout10.partage.renater.fr (Postfix) with ESMTP id 1700C63D8E
	for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 15:31:34 +0100 (CET)
Received: from zmtaout01.partage.renater.fr (localhost [127.0.0.1])
	by zmtaout01.partage.renater.fr (Postfix) with ESMTPS id 99B6C1A0052
	for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 15:31:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by zmtaout01.partage.renater.fr (Postfix) with ESMTP id 892961A0278
	for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 15:31:20 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zmtaout01.partage.renater.fr 892961A0278
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=univ-ubs.fr;
	s=17793E05-77B4-4C60-8F0C-0A8087DD0087; t=1642084280;
	bh=nUaJFyQY37AnBLX2ZeEavaE47DuhkQ2LP+o15Uv3Lx4=;
	h=Message-ID:Date:MIME-Version:From:To;
	b=QEQV/KFLPoNGpOrTTyhSOII0THqTt7MCy+sfCD3Mc+r6NpfAlbR4LGUHMHO/OGcCf
	 2WHSDkUcR/wBWO2GeegIcxERKCSfZ1fZEyJ7cGCeOQr3HrftCINjcwLGA22EKIfd8I
	 9/2oWHH+4uUNZMzpHJiosghD0XVW6n8yE2Vmh7vInXIZC51LRf745vMjNk4u8oUGcm
	 I7inQyEB02lky9lSKVggKl79980p+WbRd4LnRScZ3NxpraFEuCTB5Zs2p5468Wcp1z
	 TMGvrwCME2S1d22kPq+s//Vmn9CGWZGgmQedMO4KbAptZo3G4O8qH6bee1/8J+Kbk5
	 E0H57jt/nuf5w==
X-Virus-Scanned: amavisd-new at zmtaout01.partage.renater.fr
Received: from zmtaout01.partage.renater.fr ([127.0.0.1])
	by localhost (zmtaout01.partage.renater.fr [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id N9bH5Q54SbOr for <usrp-users@lists.ettus.com>;
	Thu, 13 Jan 2022 15:31:20 +0100 (CET)
Received: from [0.0.0.0] (unknown [194.254.241.249])
	by zmtaout01.partage.renater.fr (Postfix) with ESMTPA id 617FB1A0052
	for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 15:31:20 +0100 (CET)
Message-ID: <7a0dba07-cfba-e011-e7d5-d0d7624a6218@univ-ubs.fr>
Date: Thu, 13 Jan 2022 15:31:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
From: Camille Moniere <camille.moniere@univ-ubs.fr>
To: usrp-users@lists.ettus.com
Content-Language: en-US
X-Pep-Version: 2.1
Content-Type: text/plain; charset="utf-8"
X-Renater-Ptge-SpamState: clean
X-Renater-Ptge-SpamScore: 0
Message-ID-Hash: EQIWKORUF47O5FIPOHJMCCFISQ44VAGX
X-Message-ID-Hash: EQIWKORUF47O5FIPOHJMCCFISQ44VAGX
X-MailFrom: camille.moniere@univ-ubs.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Fir Filter RFNoC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EQIWKORUF47O5FIPOHJMCCFISQ44VAGX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: base64

SGVsbG8gZXZlcnlvbmUsDQoNCkkgdW5zdWNjZXNzZnVsbHkgdHJ5IHRvIHVzZSB0aGUgRklSIEZp
bHRlciBSRk5vQyBibG9jayBpbiByZWNlcHRpb24sIGluICANCmFuIFVTUlAgWDMxMCB3aXRoIGEg
VUJYLTE2MCBkYXVnaHRlcmJvYXJkIG9uLWJvYXJkLg0KSSBoYXZlIHRlc3RlZCBzZXZlcmFsIHRv
cG9sb2d5IGZvciB0aGUgY3VzdG9tIGltYWdlIChyYWRpbzAgLSA+IGRkYzAgLT4gIA0KZmlyMCAt
PiBlcDAgfHwgcmFkaW8wIC0+IGRkYzAgLT4gZXAwICsgZXAxIC0+IGZpcjAgKyBmaXIwIC0+IGVw
MSwgZm9yICANCmV4YW1wbGUpLA0Kd2l0aCBzZXZlcmFsIHBhcmFtZXRlciBmb3IgdGhlIGZpbHRl
ciAoV2l0aCBvciB3aXRob3V0IHJlLWxvYWRhYmxlICANCmNvZWZmaWNpZW50cywgd2l0aCBvciB3
aXRob3V0IGVtYmVkZGVkIERTUCByZWdpc3RlcnMsIDIxIGNvZWYnIGluc3RlYWQgIA0Kb2YgNDEg
Li4uKSBidXQgaXQgdWx0aW1hdGVseQ0KYWx3YXlzIGZhaWxzIHRoZSBzYW1lIHdheS4NCldoZW4g
dGhlIEZJUiBpcyB1c2VkLCBJIGNhbid0IHJldHJpZXZlIGFueSBkYXRhLiBJIGdvdCBhbiBPdmVy
ZmxvdyAgDQplcnJvciwgd2l0aG91dCByZWNlaXZpbmcgYW55IHNhbXBsZXMuIFNvbWV0aW1lcywg
SSBldmVuIGdvdCBhICJMYXRlICANCkNvbW1hbmQiIGVycm9yLCBldmVuIHdoZW4gdXNpbmfCoCBS
Rk5vQyBpbiBDKysNCihncmFwaCBjb21taXR0ZWQgaW1tZWRpYXRlbHkgYmVmb3JlIHRoZSBzdHJl
YW0gbm93IHN0cmVhbV9jbWQpLg0KDQpGb3IgdGhlIHJlY29yZCwgdGhlIGNlbnRlciBmcmVxdWVu
Y3kgaXMgNDMzIE1IeiBmb3IgYSBzYW1wbGluZyByYXRlIG9mIDEgIA0KTXNwcy4NCg0KSSBhc3N1
bWVkIHRoZSBmaWx0ZXIgb3V0cHV0IG9uZSBjb21wbGV4IHNhbXBsZSAoc2MxNikgZm9yIGVhY2gg
bmV3IGlucHV0ICANCihzYzE2IHRvbykuIEFtIEkgd3Jvbmc/IE9yIGlzIHRoZXJlIHNwZWNpZmlj
IHNldHVwIEkgaGF2ZSBmb3Jnb3R0ZW4/DQpIYXMgc29tZW9uZSBzdWNjZXNzZnVsbHkgdXNlZCB0
aGlzIGJsb2NrLCBhbmQgY2FuIHByb3ZpZGUgYW4gZXhhbXBsZSBvciAgDQp0dXRvcmlhbD8NCg0K
UmVnYXJkcywNCg0KQ2FtaWxsZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tCg==
