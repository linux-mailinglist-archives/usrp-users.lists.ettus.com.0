Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE532A44F5B
	for <lists+usrp-users@lfdr.de>; Tue, 25 Feb 2025 22:59:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C349638626B
	for <lists+usrp-users@lfdr.de>; Tue, 25 Feb 2025 16:59:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740520755; bh=n4gIrojW4V2MYyQ3w13oCRaHkIGEVyp5weWGrD3GFi8=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=fNki/AZ4H4QJI/imoO17fLmoJjFT4XYCkmlqEHLteBwKXaZqxBMSJisqGXw7Q5qWQ
	 gA6wJwoSPXgFBGpqPl0L+urR2TA8HQ/EwHm9RdjI012m8wSAL5J6fF/SRgvYoLm5ct
	 Elj9aMpnUvKa5ZzitwbKwp2tzyKQqKi9J76txsQ+SL2Qw60CcD3YFjoNXclVmt11hX
	 ht8nZU2a7XyP/k0SfqTWvEm3ahcsoA3+sfedCGcyXxLXJjmxlacXEzHkjlcWaaj9oj
	 H5+iwuws+XblKtjxulL0BSCQ3RZHq5xT1LsoEWAs1KbQ6PJswk5IP3F02ml1vBoDLx
	 rv1wxyENdgkNw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F06F8385B26
	for <usrp-users@lists.ettus.com>; Tue, 25 Feb 2025 16:58:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740520696; bh=lROTyWgFNCwFSuLb272+fRs2Um50N2kTXO5t8n+x3pw=;
	h=Date:To:From:Subject:From;
	b=00vU7h79Rr3CLRI5qA/A+VqmQDnnQjRqM+CuOZlE6dpzuPs9gMzhIpXhbTQyHROtc
	 RLOL3QEYuNPwnsDxQK5TPT8WTFPQgv/loNEe0RY5OLrIJ2/wOmbX0VQaqhKEHlFNXV
	 VyagTf5hY6dlcrBXbJLAg8f3U7txfiQUTBEYAarPMClepaZfMuVWX+c8LmWsVbCvZ6
	 7wNFR+9bqH2IbU8V4CyGUCANANprHZyLOgx26mGrFZ1+bHS8j705koLNvkAG8+eFXM
	 3L4I4vBOT8oF9sTXzomH02YRttpm2uk5b33qNAQWfuLl+bJ7A6Zb4yK8DZvszrHjuL
	 FM7kwZVEJ74xA==
Date: Tue, 25 Feb 2025 21:58:15 +0000
To: usrp-users@lists.ettus.com
From: mslusarski@xysensing.pl
Message-ID: <evhr7kyxKbT1wvGRcwhHudfUyiOtnz1bsf0u7wa0h6k@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: WXUZPAO7EKZQE4BZZBUI3AFHSSY5GBLD
X-Message-ID-Hash: WXUZPAO7EKZQE4BZZBUI3AFHSSY5GBLD
X-MailFrom: mslusarski@xysensing.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] x410 configuration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WXUZPAO7EKZQE4BZZBUI3AFHSSY5GBLD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6181670324344736244=="

This is a multi-part message in MIME format.

--===============6181670324344736244==
Content-Type: multipart/alternative;
 boundary="b1_evhr7kyxKbT1wvGRcwhHudfUyiOtnz1bsf0u7wa0h6k"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_evhr7kyxKbT1wvGRcwhHudfUyiOtnz1bsf0u7wa0h6k
Content-Type: text/plain; charset=us-ascii

Hello, 

We have done a project for gen3 x410 usrp 200MHz bandwidth 4channels enabled. When we try to change configuration to 1 channel, tx/rx works but we got strange behaviour in a custom part of design. Is 1 channel supported for x410 200 configuration and/or tested?

Regards

--b1_evhr7kyxKbT1wvGRcwhHudfUyiOtnz1bsf0u7wa0h6k
Content-Type: text/html; charset=us-ascii

<p>Hello, </p><p>We have done a project for gen3 x410 usrp 200MHz bandwidth 4channels enabled. When we try to change configuration to 1 channel, tx/rx works but we got strange behaviour in a custom part of design. Is 1 channel supported for x410 200 configuration and/or tested?</p><p>Regards</p>


--b1_evhr7kyxKbT1wvGRcwhHudfUyiOtnz1bsf0u7wa0h6k--

--===============6181670324344736244==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6181670324344736244==--
