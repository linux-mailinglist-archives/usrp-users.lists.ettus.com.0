Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B076F0BA7
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 19:57:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 26F3F38486F
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 13:57:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682618250; bh=nBz1xa66k8ppB8bhtARMcPVVu8Hw8EP/TVWESXhIFcg=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=J/sHUcptYNaacY+SdTSAxJuffKYkYGrKTFUIXL3F/9gTKm3KIhcxUVGDtddgFv/+Z
	 mDZuUnl9ORO59ZUtoxgCqi9e6ysp2Qjr4bE6qgUi/DlBkDS3g7F88ZvwbWvbhkyTn0
	 nr3pyseOdS0gHydn4ePPKuIC7F79SLhsJqUgxfndgACJdpc82nk47KZq8B4Wz9f6lb
	 SSNvCVDCCfgaQUGF7KGmiz9z32TdOuNPdWQOzYw06D6JL3CA5xvdhVkMYRdSDQ3w3S
	 iu/Xu07YGWB/rlq4Gzwuji02K86Vcsl0zHVro5KmfoDHKstCPd7bqIx7NQqse+OSNp
	 jotT5sDxk7+hA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AFE8538481C
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 13:55:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682618117; bh=isDz3BFjEUetxs89wEv6rrMiYQGPt2lz29nqZxYiFOI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=mpcU/iZdn1hEbP9EJPumakwEP+SOhVi/HzjiTtoZbjNUf9jqV6zOrK9KoHE4fH7o1
	 aSjEG79cGpk8YkZ2ZiQQOgRQ+itDzJUa2yGXif5PkRXurp+CTM31a3vsS0W5NuGgpg
	 K4QuTurJBk4/JPxghnJ6QWH9GMnFKaoFXOfALGOp5WuLr4xuAbpQcMvElQj99pwgCA
	 aqUuY6S99p9/uiJdikGXF4PGt+taBw4QE4dYiq01XXlX+0AOyWsNSaGMNj5XI0en+p
	 QcD2wZrSnq/znY1FHNbwgsAho4wAoaEO3HP7/x+PPnTmzVgQtsNCCYbbAp0MQcharn
	 GQWOQ6u88y9Iw==
Date: Thu, 27 Apr 2023 17:55:17 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <HqaJ3sSYkYeuuV2NWQjvnHzVEQyjtDVpmMkEHeQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAGNhwTOOtvfxu7pTpkjOzcKjUCcRgyPK+jK=A9vxH+h36RztgQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: FCK7WEI7R76NUV5ADL2M4YP5WJ4HKZDT
X-Message-ID-Hash: FCK7WEI7R76NUV5ADL2M4YP5WJ4HKZDT
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus N321 SFP streaming issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FCK7WEI7R76NUV5ADL2M4YP5WJ4HKZDT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1675678562672566658=="

This is a multi-part message in MIME format.

--===============1675678562672566658==
Content-Type: multipart/alternative;
 boundary="b1_HqaJ3sSYkYeuuV2NWQjvnHzVEQyjtDVpmMkEHeQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_HqaJ3sSYkYeuuV2NWQjvnHzVEQyjtDVpmMkEHeQ
Content-Type: text/plain; charset=us-ascii

What adapters do you recommend?

--b1_HqaJ3sSYkYeuuV2NWQjvnHzVEQyjtDVpmMkEHeQ
Content-Type: text/html; charset=us-ascii

<p>What adapters do you recommend?</p>


--b1_HqaJ3sSYkYeuuV2NWQjvnHzVEQyjtDVpmMkEHeQ--

--===============1675678562672566658==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1675678562672566658==--
