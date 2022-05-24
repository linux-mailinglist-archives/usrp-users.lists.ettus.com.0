Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C225325A0
	for <lists+usrp-users@lfdr.de>; Tue, 24 May 2022 10:51:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3C03E3843E4
	for <lists+usrp-users@lfdr.de>; Tue, 24 May 2022 04:51:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653382264; bh=21AN8pzF+Sj0YaQ9to816RFF4/ZZayuTTPW/HnyA3+8=;
	h=Date:References:From:To:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=fNWa3dtMRckPkosWSeQ8nuE0XQaCZynXwxOHN5XZdvn3/rSGHqLLh9UmVoiLHf1UU
	 MBfT7709oD6OfOYlx5eobKmHQnt0+p0Zc+R0JrnO7zfJ7DFEDAGAWBa3un3i6rpCEt
	 9jGLB/h+4LV+DBorO1OuVFivNJLRaM7JQunpAXA1dWYu4pRlg8/iqsCHEyfqj2r2y4
	 cf+QGB6yr0Th3RI8sxTFMzwfU6ce+/NdET2NYj3ahsrqdlVWKqoPrh+UrsCCqmozdU
	 6k8eQQMxB+BJY3Es5l2IMB7vR+OEl6S0K8BaACmpahcysly4Pa227FbyhlOYu1uWxj
	 dKIlP1eW2D6Ug==
Received: from mx-p1.obspm.fr (mx-p1.obspm.fr [145.238.193.20])
	by mm2.emwd.com (Postfix) with ESMTPS id B0B083843D0
	for <usrp-users@lists.ettus.com>; Tue, 24 May 2022 04:49:56 -0400 (EDT)
Received: from [145.238.204.64] (syrtepc117.obspm.fr [145.238.204.64])
	(authenticated bits=0)
	by mx-p1.obspm.fr (8.15.2/8.15.2/DIO Observatoire de Paris - 15/04/10) with ESMTPSA id 24O8ntGA095348
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <usrp-users@lists.ettus.com>; Tue, 24 May 2022 10:49:55 +0200
Message-ID: <cd6b55e7-1fb3-c7e8-9ef7-839df5208104@obspm.fr>
Date: Tue, 24 May 2022 10:49:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: fr
References: <mailman.35.1653321606.1334.discuss-gnuradio@gnu.org>
From: Maxime.Dupont@obspm.fr
To: usrp-users@lists.ettus.com
In-Reply-To: <mailman.35.1653321606.1334.discuss-gnuradio@gnu.org>
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2 (mx-p1.obspm.fr [145.238.193.20]); Tue, 24 May 2022 10:49:55 +0200 (CEST)
X-Virus-Scanned: clamav-milter 0.103.5 at mx-p1
X-Virus-Status: Clean
Message-ID-Hash: 2EIKXFQYB2BQOAFGEIWERM3PWVNP5I4C
X-Message-ID-Hash: 2EIKXFQYB2BQOAFGEIWERM3PWVNP5I4C
X-MailFrom: Maxime.Dupont@obspm.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] problem using rfnoc blocks under gnuradio-companion
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2EIKXFQYB2BQOAFGEIWERM3PWVNP5I4C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCldoZW5ldmVyIEkgd2FudCB0byB1c2UgcmZub2MgYmxvY2tzIHVuZGVyIGdudXJhZGlv
LWNvbXBhbmlvbiBJIGdldCB0aGUgDQpmb2xsb3dpbmcgZXJyb3IgOg0KDQondG9wX2Jsb2NrX3Nw
dHInIG9iamVjdCBoYXMgbm8gYXR0cmlidXRlICdyZm5vY19ncmFwaCcNCg0KQysrIGFwcGxpY2F0
aW9ucyBhbGwgd29yayBmaW5lIGFzIGxvbmcgYXMgdGhleSBkb24ndCBpbnZvbHZlIGN1c3RvbSAN
CmJsb2NrcyAoZWxzZSBubyBjdXN0b20gYmxvY2sgY29udHJvbGxlciBpcyBmb3VuZC4gSSBkb24n
dCBrbm93IGlmIGl0IGlzIA0KbGlua2VkKQ0KDQpJIGluc3RhbGxlZCB1aGQgNC4yLCBnbnVyYWRp
bzMuOC41IGFuZCBnci1ldHR1c8KgIGZyb20gc291cmNlDQoNCkkgZG9uJ3QgdW5kZXJzdGFuZCB3
aHkgSSBnZXQgdGhpcyBlcnJvcj8NCg0KUmVnYXJkcywNCk1heGltZQ0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
