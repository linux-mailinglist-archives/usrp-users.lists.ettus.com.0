Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E38277D037
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 18:38:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 16DDA38105B
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 12:38:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692117502; bh=diHSz6v9IZhf9/57v3RJ29JptCOBn3twsUxptGcTBNo=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=iVaWhEcYrCQovF/2G78AaS+an/uejUuVn+2kj7EERI5lPPSXMzNvrwz/8qYSmicQP
	 q7uCuRcYrE0BliDFDwbCRqKed9QgePjQKu8yrXdXNKl2URyKJkUZKM9rxTyfhnfXKa
	 tkg/0+cuorV5yX0n/mpBFe0dO5B2tC1pd8Pmaz7gMFKIR7jFuIq3/+TSb102BQJ8r/
	 rgDCy0U1EG69JFm8zTAHz6b/4EWBQmGiioNjHXDCjy4Zg+qCVJGqlLGrcGbL5YPku4
	 Hzad+9usGbH74MfZ++e4UWTYy4zQ43QsmkTdjQMq/kesyRY9liNOORDzyfJP5VpwiO
	 EGsFCz0Wi47zw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 10E3938105B
	for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 12:37:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692117471; bh=VsNspCYsV4bYOEMnqN7BQUGwQa43DYKDXJ20gdovx2U=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ruUOUSM3myb0BReQPI19XPK+pQnLfXe8yaNTn8N6GU8zWiOdYrirOgR8DW8qtRbBT
	 AcvVG9R05XmDbHDAnrqqOe8QNK9rk8HjOZORk0Yf6KffINRVHxB1aLeCtmDmL1/mEa
	 3XSaH1KHk4P5ZgGa4JtSId94+wcXHVxwR46wPp/dfpMseMePUydNVgoo89i/rOSFVs
	 HXzn71+b2UNKfO4oT2UykJsfPeOpBzn3HSg7Kc4hpv4YLWuwJXgG/M7xwSSOwm6WnN
	 1DYdMTUjIYQ3g9YYuU6npVl7+lGLzK6HLJvvdP/rz09nKUszmpRzQECcWABJKqoxBH
	 E5mkmTrorK+gQ==
Date: Tue, 15 Aug 2023 16:37:51 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <N3xOSYogeyslTN9EHGfSciRr3TUge8olsIAzTPJC4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=jqK5_BT4u8w9MwNLGpcmh4DAgP3ZY8k+T-MuU0sBt8Dg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: AUCCLNQYIZQ4T4YCVVRSOK2A4AFT4XX3
X-Message-ID-Hash: AUCCLNQYIZQ4T4YCVVRSOK2A4AFT4XX3
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows with CHDR_W = 128 on x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AUCCLNQYIZQ4T4YCVVRSOK2A4AFT4XX3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5264494886388693294=="

This is a multi-part message in MIME format.

--===============5264494886388693294==
Content-Type: multipart/alternative;
 boundary="b1_N3xOSYogeyslTN9EHGfSciRr3TUge8olsIAzTPJC4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_N3xOSYogeyslTN9EHGfSciRr3TUge8olsIAzTPJC4
Content-Type: text/plain; charset=us-ascii

Yes, the YAML file is set to 128 chdr_width. I am using v4.4.0.0

--b1_N3xOSYogeyslTN9EHGfSciRr3TUge8olsIAzTPJC4
Content-Type: text/html; charset=us-ascii

<p>Yes, the YAML file is set to 128 chdr_width. I am using v4.4.0.0</p>


--b1_N3xOSYogeyslTN9EHGfSciRr3TUge8olsIAzTPJC4--

--===============5264494886388693294==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5264494886388693294==--
