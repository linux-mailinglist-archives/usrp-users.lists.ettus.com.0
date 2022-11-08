Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C00D9621716
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 15:44:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0A5E93809F6
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 09:44:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667918687; bh=j0PKcv5rQvUixn78Q448EGhjC56yrtPXBO9wBs0xQi8=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=HIx5SRFL8Z3VHwj4IPkwZEs1RDqcRL0aWGiwQnAQlNQx4s93zVnvW9SvlNVubaD36
	 anLcy3qfrbK2dHGsrRKR2VQNz94QxAThMzPLdFa8vgehKpo+PVFrxBORWjWy7Z7v9D
	 2OLSiF7SN+VcSpT02+5KABx+SvCSy6LpCy3ooELdxZmI8rD+zkauDmifotvHjxH30K
	 HoBcfpDPdT3OZ6gpT0NmDarazOFsD85st8ZsSSxvBlmYgVCNqJFvxYd1ltkWNLefV8
	 x7gS1YxEguIRqTAy7q2HWOzzEmWlbxyX0gurHw8+h5fuvyE9NXQ0QNt6xoE902tYiy
	 UJPZcFhtVkoNg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9BDD3380937
	for <usrp-users@lists.ettus.com>; Tue,  8 Nov 2022 09:43:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667918633; bh=L/1Lb8/AIKthPBPSepVYAz9o7IwD8PtqEvCemZStXcA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ifUlYC5kYRuOfh7b3yVzrmXXPl5H/8z4UYkCcVreyYHOGsSaW6poqIvIUEmi6V7Qa
	 Z9S5AWtNgsDU/8IXKSWXQaIPQMXVSyN5xBkyFgULBqqkvAWp0FjqfeFKfH47Lp1pEK
	 aG4RbP5C1z2EtY2v0MVpYEESPTD39ReXt+oNa9iifTdT5IYu0xLrqJDvuMLOei+wOB
	 26t3IY6PUJANu67w/JYbZc05o1sCqLpUQkDhPlf5AqN87RafBr2rd5mi/ClQHyjw6A
	 7yXm0KB2RRiY92pLhvQjVqvTsOTp/Vc1NQO0PFxLtCnYG3pcLrp1Gftd+mMrj09TB1
	 zzXfiyA4MI0tA==
Date: Tue, 8 Nov 2022 14:43:53 +0000
To: usrp-users@lists.ettus.com
From: ali.mahbas@brunel.ac.uk
Message-ID: <rJYSwIXU9bi4L65MECOXY5OX7g8uaSpzWBFywLmyXM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: d184d963-5823-d7a2-5647-e356f18da2c6@ettus.com
MIME-Version: 1.0
Message-ID-Hash: NGL33TKA5FSKQE3EDX4KU6DOAW5ZJFSG
X-Message-ID-Hash: NGL33TKA5FSKQE3EDX4KU6DOAW5ZJFSG
X-MailFrom: ali.mahbas@brunel.ac.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 undetectable
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NGL33TKA5FSKQE3EDX4KU6DOAW5ZJFSG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4571089680573502958=="

This is a multi-part message in MIME format.

--===============4571089680573502958==
Content-Type: multipart/alternative;
 boundary="b1_rJYSwIXU9bi4L65MECOXY5OX7g8uaSpzWBFywLmyXM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_rJYSwIXU9bi4L65MECOXY5OX7g8uaSpzWBFywLmyXM
Content-Type: text/plain; charset=us-ascii

it was changed to 192.168.10.3. The utility only allows to change the IP not the subnet.

kind regards,

Ali

--b1_rJYSwIXU9bi4L65MECOXY5OX7g8uaSpzWBFywLmyXM
Content-Type: text/html; charset=us-ascii

<p>it was changed to 192.168.10.3. The utility only allows to change the IP not the subnet.</p><p><br></p><p><br></p><p>kind regards,</p><p>Ali</p>


--b1_rJYSwIXU9bi4L65MECOXY5OX7g8uaSpzWBFywLmyXM--

--===============4571089680573502958==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4571089680573502958==--
