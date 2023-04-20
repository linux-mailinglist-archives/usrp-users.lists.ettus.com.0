Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EF86E9F25
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 00:40:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8FBD3380A80
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 18:40:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682030455; bh=YIipzHgumzXMFMLx3uB+6WpeMfN/tB8+hlNkURUfe0c=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=CR+TAGVBkHpo8D1d32PJb1MQYwm+ZzPRwgGRTTDXQEk3NfbOLuVpoUPPG1fyDs9Mc
	 nmi6Q83O+e7/aTu3Gd0yZ7i3dEKa2/+GUPwVOjmJCKxLRj0A/U8ZUJMr3ooMUuyaiw
	 yuwpPvq1fbIfHEKOEkluxOmbsSFFJ22GFimPVoar8EavaNrLB8UrC38joSvCU2IjhW
	 /fhKIE0kJIkOuiW30qgkNEDKP4WbVFRCDfrkEqekJ3OfXi7qTHsuAJe/wbMldrvPo4
	 PEP6DuqEtb0ede1Jt+aQhrdP/D1uLDIRcDF8Qvq1+O0iioO3G/VN0v/YUuZN1D2H43
	 dslScXEYb7G2g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E0FAE381251
	for <usrp-users@lists.ettus.com>; Thu, 20 Apr 2023 18:40:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682030417; bh=t2CAoeL3+3QizNf+yW/7CgkNu4A22uSgjMDwO7SVM8Y=;
	h=Date:To:From:Subject:From;
	b=tOYE8U9LOt7R4KZN68kzXINvpAqBRFZ6P2JCFAMyMTjDVg6Kg+ILowbr7Fx+nrxm4
	 nS03nHt1RAX4VneCRbAi1Bx+8K2VwxGbix2Db9L4ORoKWG0RXBR9FIvj8DmdK+Qu/h
	 BrlzTZk0KN8EU28rFl5s5nEg9AeTb5r1WOwxAOET22iceW/yCc1XEB3/RyPkQg8Kay
	 gazf0pG05gSREKz3yH+id+8vsjAOtFnXPL1K1yirqK2UNyADJ65a7saGSgwomvOK5v
	 SSFclJbJXK8VAA2r8lN79Dg5ip+dS6OJ9LShe0X6vjzqr57v9mkt4eRryra0DzUYpC
	 0cA9GFo7nHhHw==
Date: Thu, 20 Apr 2023 22:40:17 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <cPLSfXQbPtmOYLD4qcX1ZXQmkxMOb08nPk3YtZmbmYk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: Q6CAZ6UOYFBUL4BI6NCUSTSLUM43SWM5
X-Message-ID-Hash: Q6CAZ6UOYFBUL4BI6NCUSTSLUM43SWM5
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Overflow using Keep One In N block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q6CAZ6UOYFBUL4BI6NCUSTSLUM43SWM5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2429775743882596960=="

This is a multi-part message in MIME format.

--===============2429775743882596960==
Content-Type: multipart/alternative;
 boundary="b1_cPLSfXQbPtmOYLD4qcX1ZXQmkxMOb08nPk3YtZmbmYk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_cPLSfXQbPtmOYLD4qcX1ZXQmkxMOb08nPk3YtZmbmYk
Content-Type: text/plain; charset=us-ascii

Hello,

I am currently working with the X410(X4_400 image) using other the 1Gbe ethernet only(for now) and an image that uses the following RFNOC graph

Active connections:

\* 0/Radio#0:0-->0/KeepOneInN#0:0

\* 0/KeepOneInN#0:0-->RxStreamer#0:0.

Regardless of any value of N I use(even when the maximum value is used), I get an overflow error. Though it does appear to effect the number of samples I recieve: higher values of N gives lower data rates. The data rates I do get however are far lower then expected despite the overflow errors. For example, for N = 100, I get around 0.37  KSps, when I would expect around 4-5 MSps.When I request data using the default images however, I am able to achieve much higher data rates, at least 10 MSps. Any tips is very appreciated.

Thanks,

Joe

--b1_cPLSfXQbPtmOYLD4qcX1ZXQmkxMOb08nPk3YtZmbmYk
Content-Type: text/html; charset=us-ascii

<p>Hello,</p><p>I am currently working with the X410(X4_400 image) using other the 1Gbe ethernet only(for now) and an image that uses the following RFNOC graph</p><p>Active connections:</p><p>* 0/Radio#0:0--&gt;0/KeepOneInN#0:0</p><p>* 0/KeepOneInN#0:0--&gt;RxStreamer#0:0.</p><p>Regardless of any value of N I use(even when the maximum value is used), I get an overflow error. Though it does appear to effect the number of samples I recieve: higher values of N gives lower data rates. The data rates I do get however are far lower then expected despite the overflow errors. For example, for N = 100, I get around 0.37  KSps, when I would expect around 4-5 MSps.When I request data using the default images however, I am able to achieve much higher data rates, at least 10 MSps. Any tips is very appreciated.</p><p><br></p><p>Thanks,</p><p>Joe</p><p><br></p>


--b1_cPLSfXQbPtmOYLD4qcX1ZXQmkxMOb08nPk3YtZmbmYk--

--===============2429775743882596960==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2429775743882596960==--
