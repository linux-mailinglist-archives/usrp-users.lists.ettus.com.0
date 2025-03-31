Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FCEA76BA4
	for <lists+usrp-users@lfdr.de>; Mon, 31 Mar 2025 18:11:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 81C1F385130
	for <lists+usrp-users@lfdr.de>; Mon, 31 Mar 2025 12:11:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743437483; bh=k/o0pq4YOlbbKwodCgPwNDp4uF8u4H06QyRYghRnPZU=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=IW5mmqVzRo27+KZ+D980nqnwRsAmnyKFdE75CQ5xNezLoOVF2URkLhLggQap22wF7
	 XBpt22RH3KW7odr/ln1d+95HGwVEmU7w7JSlId5rvyCj2P4+OQGKknREdE60LH04ky
	 8ECnlL9dCZyLGrtEVpbxYMy6tzauaRvKybWV+AQH0txDhsnJdnhTOrb8sj5tAPH357
	 b0Fy/gnjrCyG46d4uj1CPg2nznk5bS1aAn4RjZXr1OrSsdWoCQzmcpUlvc2B2pyieL
	 S2ZGtW6J5aTpJhSFYAvHY0eU1tdEqZGSEwnYHZCjdNrC4FNvIKpmjIqFoK0UW19Fxr
	 YVgYZpFnGRYbQ==
Received: from smtp1-g21.free.fr (smtp1-g21.free.fr [212.27.42.1])
	by mm2.emwd.com (Postfix) with ESMTPS id 29F9038540E
	for <usrp-users@lists.ettus.com>; Mon, 31 Mar 2025 12:10:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=free.fr header.i=@free.fr header.b="BpF5biW5";
	dkim-atps=neutral
Received: from zimbra-e1-03.priv.proxad.net (unknown [172.20.243.151])
	by smtp1-g21.free.fr (Postfix) with ESMTP id 05BD4B0056A;
	Mon, 31 Mar 2025 18:10:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1743437421;
	bh=Ifaqr/hV9R2TwQkcUu/YiYdX5NNNpV9X5Qu32bxCpwY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=BpF5biW5bc3oNNLtBfobFTBSAxJDI6mxeZA2I8lyeSdIc6YBWr19B1okgNlrAu9Nd
	 XDkMGBq2drUV0RMzxUe33zrf4l24/XHH5iuPRvYvebfhdkP5Zo7u7ZlX4OhmdKv+hx
	 XBmcSy9ZB50RN81wb9tt+Khqus7ddwLJQDNOhmUFEDW9QQsWWUD77RAGbCI1/lZLU3
	 tBPebCWrvS5MZ8nz2mwMPhZlOM0m66Mb38PGLGcZqorHM7Rc/sO6bQ71hLg9V4hdbW
	 AGR6mmSQHdtubTSqKVpn+bGE3gSgf04Kix4By3A3i/QqTJ+TOKigwsENceZ19j36Sh
	 TqYh4gRmnNr+Q==
Date: Mon, 31 Mar 2025 18:10:20 +0200 (CEST)
From: friedtj@free.fr
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <325722806.531637239.1743437420991.JavaMail.zimbra@free.fr>
In-Reply-To: <df01792d-cf76-4468-ac42-87a79806bd66@gmail.com>
References: <CALM_BfYZML=gn1qcQEDVCc5W+DdeojAVxiFmKdmDESFuA1Ep6Q@mail.gmail.com> <b577024e-902c-4eed-8a32-409d7ba8335a@gmail.com> <CAOEzSFTb_RoOYxYuDzR4HHYQjL_rZz2oXKB9F3qHQ9op3xis+g@mail.gmail.com> <PH1P110MB1284346766755262C416A81D98A1A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM> <a5f4e895-2921-4c9d-9979-ede6bf91ceb0@gmail.com> <1606018006.2100559.1743436319414@mail.yahoo.com> <df01792d-cf76-4468-ac42-87a79806bd66@gmail.com>
MIME-Version: 1.0
X-Originating-IP: [194.167.45.227]
X-Mailer: Zimbra 9.0.0_GA_1337 (ZimbraWebClient - FF136 (Linux)/9.0.0_GA_1337)
Thread-Topic: Max Input RF Power in X310
Thread-Index: JI3k6zWJoB/VwQbhqRhjMnW6QGU+Fg==
Message-ID-Hash: 4YHIAB6KALXL2ZOILAI3FNO2Z4QSXLBS
X-Message-ID-Hash: 4YHIAB6KALXL2ZOILAI3FNO2Z4QSXLBS
X-MailFrom: friedtj@free.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Max Input RF Power in X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4YHIAB6KALXL2ZOILAI3FNO2Z4QSXLBS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWxzbyBub3RpY2UgdGhhdCB0aGUgaW5wdXQgcG93ZXIgdG8gdGhlIFgzMTAgKHRoZSBBREMgZGVz
Y3JpYmVkDQppbiB0aGUgZmlyc3QgbGluaykgbWlnaHQgbm90IGJlIHJlbGV2YW50IHRvIHRoZSBV
QlgtMTYwIGRhdWdodGVyIGJvYXJkIA0KaW5wdXQgd2l0aCBpdHMgcHJlYW1wbGlmaWVyIGFuZCBt
aXhlciBvciBSRiBmcm9udGVuZCBpbiBnZW5lcmFsLiANCldpdGggYSBCYXNpY1JYIChpZSBiYWx1
biAtPiBBREMgZGlyZWN0IGNvbm5lY3Rpb24sIG5vIGZyb250ZW5kL21peGVyL3ByZWFtcCkgDQpJ
IGhhdmUgbWVhc3VyZWQgdGhlIEFEQyBvdXRwdXQgYW1wbGl0dWRlIHRvIGlucHV0IGFtcGxpdHVk
ZSB0byBiZSBsaW5lYXIgdXAgdG8gDQorNiBkQm0gaW5wdXQgcG93ZXIsIHdoaWNoIEkgdXNlIHdp
dGggc3ludGhldGljIGRhdGEgZ2VuZXJhdGVkIGZyb20gYW4gRlBHQSANCmZvciBiZXN0IFNOUiB3
aXRoIG5vIGRpc3RvcnNpb24uDQoNCkJlc3QsIEpNDQoNCi0tLS0tIE1haWwgb3JpZ2luYWwgLS0t
LS0NCkRlOiAiTWFyY3VzIEQuIExlZWNoIiA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+DQrDgDog
InVzcnAtdXNlcnMiIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4NCkVudm95w6k6IEx1bmRp
IDMxIE1hcnMgMjAyNSAxNzo1Nzo1NQ0KT2JqZXQ6IFtVU1JQLXVzZXJzXSBSZTogTWF4IElucHV0
IFJGIFBvd2VyIGluIFgzMTANCg0KT24gMzEvMDMvMjAyNSAxMTo1MSwgemhvdSB2aWEgVVNSUC11
c2VycyB3cm90ZTogDQoNCg0KDQpIaSwgDQoNCldoYXQgaXMgdGhlIG1heCBpbnB1dCBzaWduYWwg
cG93ZXIgdG8gUkYgcG9ydHMgaW4gWDMxMD8gVGhlcmUgaXMgYSBzcGVjIGluIHRoZSBiZWxvdyBs
aW5rOiANClsgaHR0cHM6Ly93d3cuZXR0dXMuY29tL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDI0LzAx
L1gzMDBfWDMxMF9TcGVjX1NoZWV0XzIwMjQtMDEtMjMucGRmIHwgaHR0cHM6Ly93d3cuZXR0dXMu
Y29tL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDI0LzAxL1gzMDBfWDMxMF9TcGVjX1NoZWV0XzIwMjQt
MDEtMjMucGRmIF0gDQpUaGVyZSBhcmUgbWF4IG91dHB1dCBwb3dlcnMsIGJ1dCBub3QgaW5wdXQg
cG93ZXIuIA0KSSBhbSB1c2luZyBVQlgtMTYwIGRhdWdodGVyYm9hcmQuIA0KDQpJbiBbIGh0dHBz
Oi8va2IuZXR0dXMuY29tL1gzMDAvWDMxMF9HZXR0aW5nX1N0YXJ0ZWRfR3VpZGVzIHwgaHR0cHM6
Ly9rYi5ldHR1cy5jb20vWDMwMC9YMzEwX0dldHRpbmdfU3RhcnRlZF9HdWlkZXMgXSAsIGl0IHNh
eXMgdGhhdCANCiIgTmV2ZXIgYXBwbHkgbW9yZSB0aGFuIC0xNSBkQm0gb2YgcG93ZXIgaW50byBh
bnkgUkYgaW5wdXQuICIgDQoNCkNoYXRHcHQgc2F5cyB0aGF0ICIgVUJYIDQwIDogKzEwIGRCbSAo
MTAgbVcpIiANCg0KV2hhdCBpcyB0aGUgbWF4IGlucHV0IHNpZ25hbCBwb3dlcj8gDQoNClRoYW5r
cyBmb3IgYW55IGNvbW1lbnRzLCANCg0KWmhvdSANCg0KDQoNCi0xNWRCbSBpcyBzb21ld2hhdCBj
b25zZXJ2YXRpdmUsIGJ1dCBpZiB0aGF0J3Mgd2hhdCB0aGUgbWFudWZhY3R1cmVyIHJlY29tbWVu
ZHMsIEknZCBnbyB3aXRoIHRoYXQsIHJhdGhlciB0aGFuIGEgDQpoYWxsdWNpbmF0aW9uIHByb2R1
Y2VkIGJ5IENoYXRHUFQuIA0KDQpUaGUgcmVjZWl2ZXJzIG9uIFVTUlBzIGFyZSBnZW5lcmFsbHkg
ZGVzaWduZWQgdG8gYmUgY29ubmVjdGVkIHRvIGFuIGFudGVubmEsIGFuZCBhcyBzdWNoIGhhdmUg
c2Vuc2l0aXZlLCBsb3dlci1ub2lzZSANCmZyb250LWVuZHMuIFN1Y2ggZnJvbnQtZW5kcyBnZW5l
cmFsbHkgZG9uJ3QgdG9sZXJhdGUgaGlnaGVyIGlucHV0IHBvd2VycyB3aXRob3V0IGRhbWFnZS0t
YW5kICsxMGRCbSAqSVMqIGhpZ2ggDQppbnB1dCBwb3dlciBmb3IgYSByYWRpbyByZWNlaXZlci4g
DQoNCk9uZSBtYXkgaGF2ZSBnb3R0ZW4gdXNlZCB0byB0aGUgcmVsYXRpdmVseS1pbnNlbnNpdGl2
ZSBpbnB1dHMgb2YgbGFib3JhdG9yeSBzcGVjdHJ1bSBhbmFseXplcnMsIHdoaWNoIG9mdGVuIGhh
dmUgDQppbnB1dHMgdGhhdCBjYW4gdG9sZXJhdGUgY29uc2lkZXJhYmx5LWhpZ2hlciBwb3dlciBs
ZXZlbHMsIGJ1dCBhcmUgaW5zZW5zaXRpdmUgYXQgbGV2ZWxzIGV4cGVjdGVkIGZyb20gZGlyZWN0
IA0KY29ubmVjdGlvbiB0byBhbiBhbnRlbm5hLiBCdXQgVVNSUHMgYXJlIGRlc2lnbmVkIGZvciBh
bnRlbm5hIGNvbm5lY3Rpb24uIElmIHlvdSB3YW50IHRvIHVzZSB0aGVtIGFzIA0KYSBsYWJvcmF0
b3J5IHNwZWN0cnVtIGFuYWx5c2VyLCB5b3UnbGwgbmVlZCB0byB1c2UgYXR0ZW51YXRvcnMuIA0K
DQoNCg0KQlFfQkVHSU4NCg0KDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18NClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIFsgbWFpbHRvOnVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tIHwgdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gXSBUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIFsgbWFpbHRvOnVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tIHwgdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20gXSANCg0KQlFf
RU5EDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18g
DQpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSAN
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tCg==
