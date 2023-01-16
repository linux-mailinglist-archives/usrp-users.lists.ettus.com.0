Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FD766CDBB
	for <lists+usrp-users@lfdr.de>; Mon, 16 Jan 2023 18:39:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97956384324
	for <lists+usrp-users@lfdr.de>; Mon, 16 Jan 2023 12:39:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673890748; bh=lJbeU4a9mRS0U5vPQJJxmcCpqNdRpmwnEgac5RdLgLQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PtuMouQULsnXRAmkMdPwCwQfRID0RhVtbeScsvri1cRFcyEO+wi6ZrlH5MwJu9srf
	 yGv+6NY03G7kDvigQ84RMLAxdr4VoGmF002+rliueOGsnmexuCmbtBA6rnJA0tPhZv
	 VqDJ3bSBvoEOjOKxZF8DlDBf4TOWP8QSj+u/EIY6AOOHxphmt7dRhHStuMUJxKi5N7
	 GMhjaoHCQFHlPIyTcsZOtT/OPFAC9drv+ncmYju4wu0SlOwjhyPpshqF8F43CDWtO9
	 GRtqPVG9FLRWDmEe/n3PybAdjzNKioliuYc7VfIFXWWSaeL2RPjIywmdh6YScIJjqP
	 RqjPL+nholgyg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1596384252
	for <usrp-users@lists.ettus.com>; Mon, 16 Jan 2023 12:38:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673890701; bh=5iZPrGQI47kmXBVS/PjkCGU3NnG8SgzTWlYivt8z1EQ=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=JmYX2BxgltV4YhhD2ztoDC1GWMoJ7vSTiSmr0ZATLOFXypy6pX7jCPcAkNzia6wWI
	 NxSAzS+qW1ZqLkpNmo3gi4/N92sPp4IT5hmiMvobARetGfeS0n8kDfscVAQH7Qdpds
	 mBM4ZHLrBrlwDqKzz3DPkl+22tzejc8rhRLUShfcP9xHmE97RVA9NLGwgkQCprWG0c
	 tWXXNRKl67qRMJ4btJI3xRFi93IaiKzl89iK8cybtt97dr2KtpjPOXkroQ/Pi0/+1S
	 nnreyKCGsPVtcHF+0vQf1RkOV38Eq0er9PfkBZb8zA+4qLzPuIprblVIp8R6NXrW4O
	 pxe0YuvduJl9Q==
Date: Mon, 16 Jan 2023 17:38:20 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <QAaPr3p2OrWVpkAyUM3SZLzz5IUt1M38KCpGM1AjE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAEXYVK6wW3cR3-BFeEOhyaDcWt01pkThnbXrqDGsQ9OpsKm5gA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: QJVYGCXAC7RVGLNYTZ2T5K4BYY6X5P2J
X-Message-ID-Hash: QJVYGCXAC7RVGLNYTZ2T5K4BYY6X5P2J
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Starting FPGA development on Ettus N321
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QJVYGCXAC7RVGLNYTZ2T5K4BYY6X5P2J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1314503471267117032=="

This is a multi-part message in MIME format.

--===============1314503471267117032==
Content-Type: multipart/alternative;
 boundary="b1_QAaPr3p2OrWVpkAyUM3SZLzz5IUt1M38KCpGM1AjE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_QAaPr3p2OrWVpkAyUM3SZLzz5IUt1M38KCpGM1AjE
Content-Type: text/plain; charset=us-ascii

This worked! Thanks.

Do you know if the makefile generates a vivado project (.xpr file) or does it only produce a final bitstream and its reports?

--b1_QAaPr3p2OrWVpkAyUM3SZLzz5IUt1M38KCpGM1AjE
Content-Type: text/html; charset=us-ascii

<p>This worked! Thanks.</p><p>Do you know if the makefile generates a vivado project (.xpr file) or does it only produce a final bitstream and its reports? </p>


--b1_QAaPr3p2OrWVpkAyUM3SZLzz5IUt1M38KCpGM1AjE--

--===============1314503471267117032==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1314503471267117032==--
