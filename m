Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBA441507E
	for <lists+usrp-users@lfdr.de>; Wed, 22 Sep 2021 21:34:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 11630384F02
	for <lists+usrp-users@lfdr.de>; Wed, 22 Sep 2021 15:34:17 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EACA0384616
	for <usrp-users@lists.ettus.com>; Wed, 22 Sep 2021 15:33:27 -0400 (EDT)
Date: Wed, 22 Sep 2021 19:33:27 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <bNOcxPoNGjMRy6DnYKzsLiaR8A9M4ecOOxdi1YKcM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAL7q81u5ujvSzQbXenysWAcx-OUvACXnRdDo_f_=4ZWbE8vOtA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: ZVURNSV2EMLGEJX4Z33BNC2ZKZKP6LLQ
X-Message-ID-Hash: ZVURNSV2EMLGEJX4Z33BNC2ZKZKP6LLQ
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Radio loopback / "scaling@OUTPUT_EDGE:0" error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZVURNSV2EMLGEJX4Z33BNC2ZKZKP6LLQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1681568495384677056=="

This is a multi-part message in MIME format.

--===============1681568495384677056==
Content-Type: multipart/alternative;
 boundary="b1_bNOcxPoNGjMRy6DnYKzsLiaR8A9M4ecOOxdi1YKcM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_bNOcxPoNGjMRy6DnYKzsLiaR8A9M4ecOOxdi1YKcM
Content-Type: text/plain; charset=us-ascii

I might give it a shot again, but when compiling and trying 4.1.0.2 on my radio I get:

ImportError: /usr/lib/python3.7/site-packages/usrp_mpm/libpyusrp_periphs.so: undefined symbol: _ZTIN3uhd16filter_info_baseE

--b1_bNOcxPoNGjMRy6DnYKzsLiaR8A9M4ecOOxdi1YKcM
Content-Type: text/html; charset=us-ascii

<p>I might give it a shot again, but when compiling and trying 4.1.0.2 on my radio I get:</p><p>ImportError: /usr/lib/python3.7/site-packages/usrp_mpm/libpyusrp_periphs.so: undefined symbol: _ZTIN3uhd16filter_info_baseE</p>


--b1_bNOcxPoNGjMRy6DnYKzsLiaR8A9M4ecOOxdi1YKcM--

--===============1681568495384677056==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1681568495384677056==--
