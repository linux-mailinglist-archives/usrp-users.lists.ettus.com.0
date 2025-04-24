Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 92223A9B914
	for <lists+usrp-users@lfdr.de>; Thu, 24 Apr 2025 22:25:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 894D23859E1
	for <lists+usrp-users@lfdr.de>; Thu, 24 Apr 2025 16:25:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745526321; bh=25tuAdQq6qXnR5g6Qzl0cU3/RH6bd9ra5sOLsufgWzc=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=fFIkZtYMMt/Ar+QQ1jUT+Fc8cOGPfvt5FA+uZJuRJg9cJlfHPNHDTMEm5OUjVpilp
	 1zN7R61lD0DPnhDW9FXF5SupiaMFzhaLDdiMAfySkNlELHdbT7FyZpTWEyvSUtx9cY
	 jasOmXnzyzaqeRkVZ93YEWZrQzDcftsiqYPOvxXeCUd7Rjkm9azjMniRanp2HmfUxJ
	 8nbkAou3YfEUVmng4saOKgDUCMIS9+WCSdixwrR+QhLVb7VabIo1NGdeTl/ExTi4Pf
	 0hBhnY35aanStlzy0LwH8fKhuEWiQsjHRBmXw/2rd8dyWHh0LagL5uPjzQeQdRE1YC
	 b8F0RrqzJPMlw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE294385D37
	for <usrp-users@lists.ettus.com>; Thu, 24 Apr 2025 16:23:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745526207; bh=FfLM49sfv3diXfDURa26jriCfiRsNJfZQ2hWYoy8I/Q=;
	h=Date:To:From:Subject:From;
	b=iYsmaK1j/zyzjQotL6ETc/aV+9Inddp4LJP+8ZB/8SHZE68KHji2d5urhsFKUqAoC
	 K/6cQF/cBVwOoS9tzophlH4Q9M65bC+pTuCgFa1MIXAKoA/GMQSpOyPJc5AKGPzgIV
	 mWnZ8yc/5Pf6jFvpnl6GxWedvqWTFXoqZlUV/Q3FNoHsLhftztizIdUR8OODat/5/4
	 gQpVjaGgVdaLMfZ34dDBj/KP0FC/lTw1YZmjHayQtsSMQqiwveg0cyVkFdohhathr5
	 6kgCNuZGMCF0PapnAty3DuV5bJSj3sfijVGsBm4iObYYPjxvT80mrmzBdCcaoXoyFs
	 KLURaV+K+CdXA==
Date: Thu, 24 Apr 2025 20:23:27 +0000
To: usrp-users@lists.ettus.com
From: temirkarakurum@gmail.com
Message-ID: <QZ3CeUSqtbH3RilvMEluhE5fEuHlSmyeLojBsvtcg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: ZWFZJW5C2CQR6YZTAW4EWMPAEW25XZON
X-Message-ID-Hash: ZWFZJW5C2CQR6YZTAW4EWMPAEW25XZON
X-MailFrom: temirkarakurum@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] max input power
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZWFZJW5C2CQR6YZTAW4EWMPAEW25XZON/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2706585878086192887=="

This is a multi-part message in MIME format.

--===============2706585878086192887==
Content-Type: multipart/alternative;
 boundary="b1_QZ3CeUSqtbH3RilvMEluhE5fEuHlSmyeLojBsvtcg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_QZ3CeUSqtbH3RilvMEluhE5fEuHlSmyeLojBsvtcg
Content-Type: text/plain; charset=us-ascii

I have a quick question regarding the max input power. -15 dBm is the suggested max power rating for B210. Is this average or peak power?\
\
If I have a +10dBm peak power signal with a duty cycle of 0.1% (30dB), thus an average power of -20 dBm, would this mean that I am safe? Or is there still a chance of damaging the SDR?\
\
Best,\
T

--b1_QZ3CeUSqtbH3RilvMEluhE5fEuHlSmyeLojBsvtcg
Content-Type: text/html; charset=us-ascii

<p>I have a quick question regarding the max input power. -15 dBm is the suggested max power rating for B210. Is this average or peak power?<br><br>If I have a +10dBm peak power signal with a duty cycle of 0.1% (30dB), thus an average power of -20 dBm, would this mean that I am safe? Or is there still a chance of damaging the SDR?<br><br>Best,<br>T </p>


--b1_QZ3CeUSqtbH3RilvMEluhE5fEuHlSmyeLojBsvtcg--

--===============2706585878086192887==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2706585878086192887==--
