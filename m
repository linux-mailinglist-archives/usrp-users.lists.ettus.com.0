Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7956352C3A0
	for <lists+usrp-users@lfdr.de>; Wed, 18 May 2022 21:43:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1D7053846C2
	for <lists+usrp-users@lfdr.de>; Wed, 18 May 2022 15:43:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652903038; bh=bXwsZStAsOzXAt23xrlVGNUfurT6L16+SAf/NhI9kIQ=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=bdhZboZ02XlwReQL/69qPio20pppymExrqkTbcwVanUPa/WPZ4wrkHd5pF+cCeKYc
	 sqd7nqTxWqUHHS6ufSTHhItEOUMMAx1HPtIdMSYDOhW817mxtQ3mLXJh/EwxWiZPUw
	 u1va12yvfnuP3gykL+W5MTf7UoIOK2+/VlDAy/eFawFDVtp6cVOeO9mvFDlKDo9iXf
	 55okBLkt2jFQ5powN53NmCMNaz+E9PLJFNx1AIaRoiSE1vCU5964e8BZayQaCtTDLo
	 NWUGJ7+bAN1gLwmTIO7Hg9maL8E0oARLz9cziYPyL83skvEFRO3FPCamSCpcBYrZYr
	 ShEQE+R79xnDQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AE172384608
	for <usrp-users@lists.ettus.com>; Wed, 18 May 2022 15:42:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652902964; bh=ZdHORVd0WNA0ZJZXm5Qsadte39cnroD2pH5xYq9BERY=;
	h=Date:To:From:Subject:From;
	b=Jp1e22uoVzpI8tBWppIxSjezG+GJp9hVZiznKFl2raM0l1i0JauFwV/qcH6lTHTZt
	 YFwRBx/NpoPS6pSUGaiw+J/NHZJBk+ILERieI43ui26X+tWXNQ7LXuRq6YYmfwQLTO
	 XdfunIVDtvjG1S6s00pmCqd0pf6Y+IIMj4NY57cy3vpDcrfVodF+lu2CLh4wq1CU2w
	 Me+2ba0ecaOmj7KCbVbo7agq7JQf96jv71WrEK6eIbikDvTJFTuwY/fR0ZzB/eY3d9
	 wdZPPwQBN5gqO/5Hg/0nsN9grsrDomNjq3La6RyRwAHthWaRyy7zjzkU6wm27fWfZ9
	 iCusN2jMPrmDg==
Date: Wed, 18 May 2022 19:42:44 +0000
To: usrp-users@lists.ettus.com
From: ahamza1982@gmail.com
Message-ID: <5MRZslBCn8543oJnh1vGlSlOw7dYQTzWCtpBw9jo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: EK3XW4Q2KAKISDEZE3MQZBWWE7DG5QDB
X-Message-ID-Hash: EK3XW4Q2KAKISDEZE3MQZBWWE7DG5QDB
X-MailFrom: ahamza1982@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] b200 mini LVDS Vs CMOS
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EK3XW4Q2KAKISDEZE3MQZBWWE7DG5QDB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6561378489176451984=="

This is a multi-part message in MIME format.

--===============6561378489176451984==
Content-Type: multipart/alternative;
 boundary="b1_5MRZslBCn8543oJnh1vGlSlOw7dYQTzWCtpBw9jo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_5MRZslBCn8543oJnh1vGlSlOw7dYQTzWCtpBw9jo
Content-Type: text/plain; charset=us-ascii

Hi,

I have b200 mini and by reading registers I figured out that it is using CMOS for digital interface between ad9361 and BBP. 

Is there a way to make it use LVDS? 

For example, an FPGA image that could do this?

I am using GNU radio and UHD to program the board, what other modifications in the software I will need to support LVDS if possible?

Thanks,

Ahmed

--b1_5MRZslBCn8543oJnh1vGlSlOw7dYQTzWCtpBw9jo
Content-Type: text/html; charset=us-ascii

<p>Hi,</p><p><br></p><p>I have b200 mini and by reading registers I figured out that it is using CMOS for digital interface between ad9361 and BBP. </p><p>Is there a way to make it use LVDS? </p><p>For example, an FPGA image that could do this?</p><p>I am using GNU radio and UHD to program the board, what other modifications in the software I will need to support LVDS if possible?</p><p><br></p><p>Thanks,</p><p>Ahmed</p>


--b1_5MRZslBCn8543oJnh1vGlSlOw7dYQTzWCtpBw9jo--

--===============6561378489176451984==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6561378489176451984==--
