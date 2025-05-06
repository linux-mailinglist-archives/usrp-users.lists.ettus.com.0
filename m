Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A42BAACD70
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 20:42:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E2A073862B7
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 14:42:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746556938; bh=3w3WgM59alOjCF0i6KhniwFX7A9e/XHp+1jB8RTUzfM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ME3qXqmK03AP3jXoOzlYSilxjsU5SEKt7O1iHvZTtvmdMeYX1JyaR89azJYlU4yyf
	 IxZBPwGjNdGsDY5YDbgf3EZCnsvOpadvaqS3qK2mED1tb+tf+nQAj97C0R3ceeSl66
	 Sj6qeDXH2B4+VXOMkgVuMwh0WaJOfE6qRcFLGGIPerYws3GBhOe+Nx27dQOD1iVW1t
	 qXW+AOjgPlGZAh9gzyCzu8MVNjMoW0P6DK81YywPEYE+x7RrA2pQ34k4iAo3kMzu4C
	 PZSCqZtPQPRmeypLKfnmT922dqKmPBfSDl8GzzCSPjSarG4cMZvUsBjAZzynM7H9zG
	 DzFTTu6yLmhjw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6C6DE386238
	for <usrp-users@lists.ettus.com>; Tue,  6 May 2025 14:42:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746556929; bh=PZEhonC3znbFifMi5B/sle9Y+wq+HH67itYS4BDI7EA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=r3GwFKACpnojIrj69SbHzLVcVKROP7AxqHETMou/LDJz1Bz+tIRTb3mpYjH4ZB0c4
	 sOWrvbn+PHr5aeQa0K9a5rNArY++dy+qzGZvKHiXdPJQI6s8FqSfyL5RGjS37//eFN
	 gbMUO1hdxVpDMJmfd7bMnULfXkFwJNmcpDlP0sFGZJMSZ52S3uw9kpYXotlWrZWibX
	 qB5NxdIkRXHNAARconH3M+K9ZZYw5TGNXx31TFfIvSstMYZr87PBIBFKewmXxt78WD
	 Xf745qD/CCmLU7pBe7yCIjknD+aGHvdBf1nPm/HLjT4IQvoqSqElmbDdUM/PBjZzRv
	 PGxvqNTLtq7lg==
Date: Tue, 6 May 2025 18:42:09 +0000
To: usrp-users@lists.ettus.com
From: whw@appliedradar.com
Message-ID: <pLLHug2BLxX38I2dSTRVpK4lBSDEn1puUW7flUs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 3af642e9-2fe2-4908-933f-19228643a23f@gmail.com
MIME-Version: 1.0
Message-ID-Hash: GJ4ST2VIA33SEZBYS7S6GVN24EQZWHLA
X-Message-ID-Hash: GJ4ST2VIA33SEZBYS7S6GVN24EQZWHLA
X-MailFrom: whw@appliedradar.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205mini Discovery Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GJ4ST2VIA33SEZBYS7S6GVN24EQZWHLA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2910087053842447962=="

This is a multi-part message in MIME format.

--===============2910087053842447962==
Content-Type: multipart/alternative;
 boundary="b1_pLLHug2BLxX38I2dSTRVpK4lBSDEn1puUW7flUs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_pLLHug2BLxX38I2dSTRVpK4lBSDEn1puUW7flUs
Content-Type: text/plain; charset=us-ascii

We are using USB-A 3.2 Gen2 ports

--b1_pLLHug2BLxX38I2dSTRVpK4lBSDEn1puUW7flUs
Content-Type: text/html; charset=us-ascii

<p>We are using USB-A 3.2 Gen2 ports</p>


--b1_pLLHug2BLxX38I2dSTRVpK4lBSDEn1puUW7flUs--

--===============2910087053842447962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2910087053842447962==--
