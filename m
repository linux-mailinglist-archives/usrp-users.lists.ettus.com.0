Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EF776E2DF
	for <lists+usrp-users@lfdr.de>; Thu,  3 Aug 2023 10:24:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 00BD7384BD3
	for <lists+usrp-users@lfdr.de>; Thu,  3 Aug 2023 04:24:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691051059; bh=O9ZoN/PIsInRqN/QbSU07d7otZHT2v1AKO1g9L1xPuY=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MIw/B6APNlI/wfP8pDLBvhpLNYuqqhqDAlz9uUj77sTlrPARZxqg2GhmYG9G4petb
	 ALGoIfJKqFUZiPfjUuG2JfIbR9V3fjRyH7QTW2o4Dlpispe9IqgyOp5GtGfv1/FOJw
	 xznH32mU+/K73c52x32Z/RYyaZYGxZgQ6faGKpDTGwFRsrDjoNCEGF22yF64CCwjcb
	 xog1KmBqBNG8l8+u2fBtTSfjGhlZ7UyZG69iAoXE9PLEMJS1M4WCDHA4Bop3NTR1a+
	 JYqbJuNe5vbXWerlClg12KY6Ek0Cbf2daRo9iOIKLkRJcc+WdegJjdWlNgXLlZtqbz
	 pwdei1pHDeGtw==
Received: from zproxy110.enst.fr (zproxy110.enst.fr [137.194.2.192])
	by mm2.emwd.com (Postfix) with ESMTPS id 059A0384BC1
	for <usrp-users@lists.ettus.com>; Thu,  3 Aug 2023 04:23:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=imt-atlantique.fr header.i=@imt-atlantique.fr header.b="XgdWwrVX";
	dkim-atps=neutral
Received: from localhost (localhost [IPv6:::1])
	by zproxy110.enst.fr (Postfix) with ESMTP id D6E9F81A6E
	for <usrp-users@lists.ettus.com>; Thu,  3 Aug 2023 10:22:48 +0200 (CEST)
Received: from zproxy110.enst.fr ([IPv6:::1])
 by localhost (zproxy110.enst.fr [IPv6:::1]) (amavis, port 10032) with ESMTP
 id ot7vEiqPfoyT for <usrp-users@lists.ettus.com>;
 Thu,  3 Aug 2023 10:22:48 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
	by zproxy110.enst.fr (Postfix) with ESMTP id 9914F81A9C
	for <usrp-users@lists.ettus.com>; Thu,  3 Aug 2023 10:22:48 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zproxy110.enst.fr 9914F81A9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imt-atlantique.fr;
	s=50EA75E8-DE22-11E6-A6DE-0662BA474D24; t=1691050968;
	bh=PBaYl0Df/yg+CjCJHCxWab84Ytnvzfsj6kZ/vZ7s6uY=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=XgdWwrVXtlAIQzc54xsQvS0KD1oDuW2KO/QbulpqOhDhIyelaviD/zdbapo4W7fEZ
	 7L0Q2AkL88PU2xaAR+V1FngYDMDdn9PRbNB0LgL26kpUxO5s5zZErilboySo8e55xl
	 7DetrHjlPeP8Asvnef06orPqohYm13Pecg6k2paQ=
X-Virus-Scanned: amavis at zproxy110.enst.fr
Received: from zproxy110.enst.fr ([IPv6:::1])
 by localhost (zproxy110.enst.fr [IPv6:::1]) (amavis, port 10026) with ESMTP
 id kXfTOHyYGuQA for <usrp-users@lists.ettus.com>;
 Thu,  3 Aug 2023 10:22:48 +0200 (CEST)
Received: from zmail-imta1.enst.fr (zmail-imta1.enst.fr [137.194.2.216])
	by zproxy110.enst.fr (Postfix) with ESMTP id 8045481A6E
	for <usrp-users@lists.ettus.com>; Thu,  3 Aug 2023 10:22:48 +0200 (CEST)
Date: Thu, 3 Aug 2023 10:22:48 +0200 (CEST)
From: EVAN LAURANS <evan.laurans2@imt-atlantique.fr>
To: usrp-users@lists.ettus.com
Message-ID: <1254906326.128380.1691050968443.JavaMail.zimbra@imt-atlantique.fr>
MIME-Version: 1.0
X-Originating-IP: [::ffff:10.29.232.11]
X-Mailer: Zimbra 9.0.0_GA_4546 (ZimbraWebClient - FF116 (Linux)/9.0.0_GA_4564)
Thread-Index: g521diDPgV4pUU10xDW/VshrmKsEng==
Thread-Topic: How to have 10MHz on REF OUT with a master clock of 184.32 MHz
Message-ID-Hash: RVXXSWBENAJS6CV7OZLKAI4Q2BHB5GS3
X-Message-ID-Hash: RVXXSWBENAJS6CV7OZLKAI4Q2BHB5GS3
X-MailFrom: evan.laurans2@imt-atlantique.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to have 10MHz on REF OUT with a master clock of 184.32 MHz
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RVXXSWBENAJS6CV7OZLKAI4Q2BHB5GS3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpJIHVzZSB0aGUgVVNSUCBYMzEwIHRvIGFuYWx5emUgc2lnbmFsIGFuZCBpIHVz
ZSB0aGUgMTAgTUh6IFJFRiBPVVQgZm9yIGFuIGV4dGVybmFsIGRldmljZS4gSSBub3RpY2VkIHRo
YXTigJlzIHRoZSBSRUYgT1VUIGhhc27igJl0IGEgZnJlcXVlbmN5IG9mIDEwIE1IeiB3aGVuIGkg
YW0gdXNpbmcgYSAxODQuMzIgTUh6IG1hc3RlciBjbG9jayByYXRlIGJ1dCBhYm91dCA5Ljk2IE1I
eiwgd2hlcmVhcyB0aGUgUkVGIE9VVCBmcmVxdWVuY3kgaXMgMTAgTUh6IHdpdGggYSBtYXN0ZXIg
Y2xvY2sgcmF0ZSBvZiAyMDBNSHouDQpJcyB0aGVyZSBhbnkgd2F5IHRvIGhhdmUgYSBSRUYgT1VU
IGF0IHRoZSBmcmVxdWVuY3kgb2YgMTAgTUh6IHdpdGggYSBtYXN0ZXIgY2xvY2sgcmF0ZSBvZiAx
ODQuMzIgTUh6ID8NCg0KUmVnYXJkcywNCg0KRXZhbgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAt
dXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
