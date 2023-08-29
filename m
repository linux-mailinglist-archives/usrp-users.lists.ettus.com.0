Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 922E478CD93
	for <lists+usrp-users@lfdr.de>; Tue, 29 Aug 2023 22:36:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 990D1384B53
	for <lists+usrp-users@lfdr.de>; Tue, 29 Aug 2023 16:36:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693341393; bh=/iZDvOexPXOOP6hBqlnZs+QIpIKF4JUmv/4bXZAtrzo=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=dZge9PE1ME+YW9qCEQOOry6etRtpTdBJVZ0z+0ilLL5zKGwkP5AI55TqSYuyXTlMz
	 g+CrMiucZr2wnL7SBaJ+38mSxnzGJ6RgudrDullqgZB4eiyubdSiADvHwAUBeOnR3X
	 08fdMcECJDDSgLgL+QUaa5J4WSJbGIADF8H2fYJz9iq7Xz8+lfgh/WHOjnrU51BZoy
	 pbQLGn7bk8J/xDkT4RgVohkAO5RUWYiKG0NzgFxBMF/F+q1lbX2XXgebjci+Efs4G0
	 MJxaAmnkvrDJqacRmU5EwbtdCxKe4fdOgJcCssWTIWtx1ZEwVe1SG+NUtA6nCxeYLC
	 +1+MMnFDgkqhQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DD2B5384B1E
	for <usrp-users@lists.ettus.com>; Tue, 29 Aug 2023 16:35:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693341340; bh=rWUI+DAL6zJV0Xm9+76AWOL92KWW0MayqutOwDFqDyU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=kN/aV/EZXLObsQ4lucoiqbVw0FXmLdA4wWLu256u5AlpFZigr5q6wCWKQSm2K3CMT
	 EBLRPg7dfaCWkocP/Qzpj58RUaQyTjt7s5iYCULOpx7yfhu0PAL5V+Zwonwtx5bEDV
	 fgsXWSmAxn1Oay43MgwF7qJHIHP/CLq1OrC9HB9aJmxUtd3nKGL5i32WQ5iCA6fYfs
	 ayXIBT7PnJDBnm2CT2M483Nh21p0hMn6CZK+NO3H8kmiATpc7Yu5Ss5PBNk7OY3p1K
	 qCSRFJle2kKGWjJeegIbEfhngZFWPtaFv1Nr7Flk8NhSCyVwMF9ODmCIU35Aa7awLZ
	 6e4BNk4uyDlVw==
Date: Tue, 29 Aug 2023 20:35:40 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <UZwXAmGA8z2VzG8sA3CCc2lCmDXgLhoW1BHOboAKVd4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=jWLJAgNV4ECkEha=9BvEU0dAnonkXwS1SqTkjVFUUwvQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: AE72OHMF7XELB2G7H44VY6C4VDBXC55U
X-Message-ID-Hash: AE72OHMF7XELB2G7H44VY6C4VDBXC55U
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Specifications of host computer for 100 Gb/s streaming with x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AE72OHMF7XELB2G7H44VY6C4VDBXC55U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1140420470572060962=="

This is a multi-part message in MIME format.

--===============1140420470572060962==
Content-Type: multipart/alternative;
 boundary="b1_UZwXAmGA8z2VzG8sA3CCc2lCmDXgLhoW1BHOboAKVd4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_UZwXAmGA8z2VzG8sA3CCc2lCmDXgLhoW1BHOboAKVd4
Content-Type: text/plain; charset=us-ascii

Thanks for the link.

Another question, does one QSFP port alone support 100 Gb streaming, and if so, when I compile the x410, does that just entail using the x410_CG_400 option alone for compiling or are there other considerations?

Thanks

Joe

--b1_UZwXAmGA8z2VzG8sA3CCc2lCmDXgLhoW1BHOboAKVd4
Content-Type: text/html; charset=us-ascii

<p>Thanks for the link.</p><p><br></p><p>Another question, does one QSFP port alone support 100 Gb streaming, and if so, when I compile the x410, does that just entail using the x410_CG_400 option alone for compiling or are there other considerations?</p><p><br></p><p>Thanks</p><p>Joe</p>


--b1_UZwXAmGA8z2VzG8sA3CCc2lCmDXgLhoW1BHOboAKVd4--

--===============1140420470572060962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1140420470572060962==--
