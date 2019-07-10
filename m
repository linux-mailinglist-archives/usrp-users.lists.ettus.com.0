Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDBA64D25
	for <lists+usrp-users@lfdr.de>; Wed, 10 Jul 2019 22:04:05 +0200 (CEST)
Received: from [::1] (port=48236 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hlIot-0000Fb-MK; Wed, 10 Jul 2019 16:04:03 -0400
Received: from mail-edges23.fraunhofer.de ([153.97.7.23]:48049)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <matthias.kollmann@iosb.fraunhofer.de>)
 id 1hlICF-0006sl-ID
 for usrp-users@lists.ettus.com; Wed, 10 Jul 2019 15:24:07 -0400
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2HctgDDOiZd/xmnZsBlHQEBGAEGBQG?=
 =?us-ascii?q?BTgUBAwGBLQIBAQEBAQ1TgT8vMoQSiB5dpGaBegkBAQEBAQEBAQEGAQEtAgE?=
 =?us-ascii?q?BhFmCOCM8Ag0BAwEBBQEBAQEFAgJphT0LhXURVwEiAiYCBDAVEgSDNYIKAQE?=
 =?us-ascii?q?DAa4DgTKFR4RvgQwmAgEBAQEBAQGLWIFYPoE4H4pYMoImBI5um2gDBAICgTd?=
 =?us-ascii?q?ilAcbghwBixGKVI0wl0ICERQBgX4LgVhxeQGCQpEEgXohjV0BgSABAQ?=
X-IPAS-Result: =?us-ascii?q?A2HctgDDOiZd/xmnZsBlHQEBGAEGBQGBTgUBAwGBLQIBA?=
 =?us-ascii?q?QEBAQ1TgT8vMoQSiB5dpGaBegkBAQEBAQEBAQEGAQEtAgEBhFmCOCM8Ag0BA?=
 =?us-ascii?q?wEBBQEBAQEFAgJphT0LhXURVwEiAiYCBDAVEgSDNYIKAQEDAa4DgTKFR4Rvg?=
 =?us-ascii?q?QwmAgEBAQEBAQGLWIFYPoE4H4pYMoImBI5um2gDBAICgTdilAcbghwBixGKV?=
 =?us-ascii?q?I0wl0ICERQBgX4LgVhxeQGCQpEEgXohjV0BgSABAQ?=
X-IronPort-AV: E=Sophos;i="5.63,475,1557180000"; d="scan'208";a="11914371"
Received: from mail-mtadd25.fraunhofer.de ([192.102.167.25])
 by mail-edgeS23.fraunhofer.de with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 21:23:11 +0200
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0COfABSOiZd/wUMYJllHQEBGAEGBQG?=
 =?us-ascii?q?BTgUBAwGBLQIBAQEBAQ1TgT4wMoQSiB5diWCbBoF6CQEDAQEBAQEGAQEtAgE?=
 =?us-ascii?q?BhFmCNyM8Ag0BAwEBBAEBAgEFbYU9C4V0EVcBIgImAgQwFRIEgzWCCgIDAa4?=
 =?us-ascii?q?DgTKFR4RvgQwmAgEBAQEBAQGLWIFYPoE4H4pYMoImBI5um2gDBAICgTdilAc?=
 =?us-ascii?q?bghwBixGKVI0wl0ICERQBgX4KgVhxeQGCQpEEQYE5IY1dAYEgAQE?=
X-IronPort-AV: E=Sophos;i="5.63,475,1557180000"; d="scan'208";a="51601418"
Received: from smtpi.iosb.fraunhofer.de ([153.96.12.5])
 by mail-mtaDD25.fraunhofer.de with ESMTP/TLS/DHE-RSA-AES256-SHA;
 10 Jul 2019 21:23:09 +0200
Received: from webmail.iosb.fraunhofer.de (ms3casht2.iosb.fraunhofer.de
 [153.96.14.96])
 by smtpi.iosb.fraunhofer.de (8.14.3/8.14.3/SuSE Linux 0.8) with ESMTP id
 x6AJN802017800
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK)
 for <usrp-users@lists.ettus.com>; Wed, 10 Jul 2019 21:23:08 +0200
Received: from MS3MBX2.ms3.corp ([fe80::1069:4b5f:8a30:a47e]) by
 ms3casht2.ms3.corp ([fe80::a593:4fc7:feac:6944%15]) with mapi id
 14.03.0468.000; Wed, 10 Jul 2019 21:23:08 +0200
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E320 GPS issues
Thread-Index: AQHVN1TnLl91xxnX+0Cn8u7zWKqyXQ==
Date: Wed, 10 Jul 2019 19:23:08 +0000
Message-ID: <60C06761-D9AE-4D97-8A01-B9D3195A40F9@iosb.fraunhofer.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [46.223.18.21]
Content-ID: <5F890DA70E9D364B8B972DA9C2193FD4@ms3.corp>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 10 Jul 2019 16:04:00 -0400
Subject: [USRP-users] E320 GPS issues
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Kollmann, Matthias via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Kollmann, Matthias" <matthias.kollmann@iosb.fraunhofer.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

SGkgYWxsLA0KDQpJIGFtIGN1cnJlbnRseSB0cnlpbmcgdG8gc3luY2hyb25pemUgdGhlIHJlY2Vw
dGlvbiB0aW1lIG9mIHR3byBFMzIwIHVzaW5nIHRoZWlyIEdQUy4gQnV0IG1vc3Qgb2YgdGhlIHRp
bWUgdGhlIFVIRCB0ZWxscyBtZSB0aGVyZSBpcyBubyBmaXggYWx0aG91Z2ggdGhlIGdwc2Qgb2Yg
dGhlIEUzMjAgc2hvd3MgMTArIHNhdGVsbGl0ZXMgYW5kIGEgZ29vZCBmaXggLiBJIGFtIHRlc3Rp
bmcgd2l0aCBVSEQgMy4xNC4xIGFuZCB0aGUgcXVlcnlfZ3BzZG9fc2Vuc29ycyB1dGlsLiBDYW4g
c29tZWJvZHkgdGVsbCBtZSB3aGF04oCZcyB0aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIGEgVUhEIEdQ
UyBsb2NrIGFuZCBhIG5vcm1hbCBvbmUgYW5kIGhvdyB0byBhcmNoaXZlIGEgc3RhYmxlIFVIRCBH
UFMgbG9jaz8gT3VyIFgzMTAgZG9lcyBub3QgaGF2ZSB0aGVzZSBpc3N1ZXMgb24gdGhlIHNhbWUg
c3BvdC4gDQoNClJlZ2FyZHMgDQpNYXR0aGlhcw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8v
dXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
