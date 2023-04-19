Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 099336E833B
	for <lists+usrp-users@lfdr.de>; Wed, 19 Apr 2023 23:15:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A024138438A
	for <lists+usrp-users@lfdr.de>; Wed, 19 Apr 2023 17:15:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681938927; bh=hrM7aVd/yAeXZE0CUb0H4vVFIzJxq0VuTloaAUlxxzA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ulVXWJnf5XYgCIYJuwqVUYMiLzFl1w6sgEtUcGyg1l4Ot0QoFJAseZOuDHc1WK3ei
	 4v/HKlA6Bxo3lEpiOpnBIrQ5tvwULAnyZhIrpTuHAcdZfGoTdNIhuiU9WCEUDO3itN
	 kJY1klEP1Sk5Q3tuQSEvc+HKFMnqWxfCnt7mP3qNby3ITtECoBHrAhzf6bcc42CZXU
	 paXSq3UrjOXOgq/niASN6KCQBoGGn5YxLwDOaIIbpxKCeTemoW+frGJmO7t/62BZaK
	 UYwj8dRPUf4akYuG1sPLsc71Sc0rK3JZh7Hdjw7PLGRJzViJUGPwtTU13orlL8/gLE
	 kN3JeaRZCrjtQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 897413841EB
	for <usrp-users@lists.ettus.com>; Wed, 19 Apr 2023 17:14:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681938884; bh=1qw1Xl52fzvs4F1UsPlAM384JcOf2vBKE3/NYDZF/Ds=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=NJv2rA7l0c7ZHNrjYlQDKpvxHjLKXyJLVtZrBIE11K9wO0MQOTYGlsRTfuEpgWIwh
	 dFg0JsTKg29J56f+beMkGONpsgYSbQww+BQEcenC9MVIP8K3aMcXJLZ6Y07OWLRpvz
	 fXA7W3SqK7Ie04lGmNe9vKzaWajbQ3kBBxA7Ci06V+FJkOLRTpeLdP8B42gNtr5YpT
	 6VkO50wSdcpJjcgut9MR+PYs3j/0MCGoqMLMFHaX8ZPROO4YYNLWlZBN+ZnJ7Ec/dr
	 DPBNdKIV+4TctJOBoQgN+qvfzFW+P/spQ+C7C9VsjFjVPvrYdRGvRzQeeIbf2AhrVE
	 qy7uerafpj1dg==
Date: Wed, 19 Apr 2023 21:14:44 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <RECd6VBYG6MmBBgvJOXhYlGEvb6P2zq5tSK8mqPeF0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: qtazufOQZjlKneHY1kTvBmyNVPcxArTl5Q7KwLdZbAc@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 5IFCITW7OX5O22TLTZSCJL6SYTOUC2SD
X-Message-ID-Hash: 5IFCITW7OX5O22TLTZSCJL6SYTOUC2SD
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble recieving data from antenna
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5IFCITW7OX5O22TLTZSCJL6SYTOUC2SD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0344623134082094380=="

This is a multi-part message in MIME format.

--===============0344623134082094380==
Content-Type: multipart/alternative;
 boundary="b1_RECd6VBYG6MmBBgvJOXhYlGEvb6P2zq5tSK8mqPeF0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_RECd6VBYG6MmBBgvJOXhYlGEvb6P2zq5tSK8mqPeF0
Content-Type: text/plain; charset=us-ascii

I have noticed after further troubleshooting that my antenna light actually appears to blink periodically. And I also seem to be getting overflow errors, even though my data rate is quite small(\~5e6 samples per second, 32bits/sample, over ethernet).

When I use the same data rate with the default image, I get a solid green light on the antenna, and no overflow message in the metadata.

--b1_RECd6VBYG6MmBBgvJOXhYlGEvb6P2zq5tSK8mqPeF0
Content-Type: text/html; charset=us-ascii

<p>I have noticed after further troubleshooting that my antenna light actually appears to blink periodically. And I also seem to be getting overflow errors, even though my data rate is quite small(~5e6 samples per second, 32bits/sample, over ethernet).</p><p>When I use the same data rate with the default image, I get a solid green light on the antenna, and no overflow message in the metadata.</p>


--b1_RECd6VBYG6MmBBgvJOXhYlGEvb6P2zq5tSK8mqPeF0--

--===============0344623134082094380==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0344623134082094380==--
