Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7371CA455F5
	for <lists+usrp-users@lfdr.de>; Wed, 26 Feb 2025 07:47:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 84976385D87
	for <lists+usrp-users@lfdr.de>; Wed, 26 Feb 2025 01:47:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740552422; bh=QNnOZ4rThVSKjB9lyrivs9Ce4HdCHBG12e99V+//eSQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=t2lFYQfWYsv+nAiliKVEFBm8COohkHfHYz5T+K2gvX/1tHyIsb5xvAp27NKkKlKFT
	 BcAxHs2o1rZXANMv4ao36P0YfklnVtDrSMElN1a4ouwayA6YRX/dkUzcNKiQO2AWGg
	 rRLAU9BbJgXUU0XoOZ/Og9+Kr2JWQsQZ4nD3mL4XkOFZQCKxX35i3jc+YrJ+nGJMXP
	 OBJYDE6DwVANba4SBdt3FkGoRsMFGywUnTcQjasTYhotPmrXABNpwe8/+ocs0Xweie
	 zvdfaa4gcssG/EMKkNujYJ+arPxsNFGLgwjTmZEGB8SZ+Sw/20KZQjiVOCnl57HJ64
	 mmPy+3x6rfuRQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0987E385D7A
	for <usrp-users@lists.ettus.com>; Wed, 26 Feb 2025 01:46:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740552363; bh=RlruQeZxlONQy0fEirRRAlrmYlH0MygdUVOv91D3W+4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=jBh6GKZZhh/isXvq+hKdCltE+KQXrnhaZMe0nSc/5POaBMXHsqJ7nBI7rbwX/Mkpq
	 c3Qedt97TLb4YBV9R4vFsQ+DZB6jQS1LHvEsOz6LPWl+t3kLp4HhgyRo5u02249iNf
	 fQEnWDA6vPhPIXT1iQ0BicrN5652gMFrFEBAKSA3Ki1xKxAQZphV4gZ/1sdv1HprVl
	 hWV8mjcC/bQmEHCjCrXqV9nKhEQsqJvkr9ORSv+4UiBT7pQWarC7sF+uXKKtlrqcY8
	 kfRmt+8Ei5o25hM0zCvLztbBv38vAUNkCqGDlLtvMsx3zrQ2Or625bcKyIubbLZP6l
	 Gd2ZKdVOfnnNA==
Date: Wed, 26 Feb 2025 06:46:03 +0000
To: usrp-users@lists.ettus.com
From: anjana.krishnan@technosci.com
Message-ID: <9hooWV4qc9uwUhx57tq5HuP6O6K2bcTD5RsPyIofFHo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: rNy1xvMCPUNPS1D1vD47ji2ZG7z7Ht7wYq8BKmVA4@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 6TM2LSFP4BEBFMWQAOMOSKT2LVEQERC6
X-Message-ID-Hash: 6TM2LSFP4BEBFMWQAOMOSKT2LVEQERC6
X-MailFrom: anjana.krishnan@technosci.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Build UHD image from GRC file
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6TM2LSFP4BEBFMWQAOMOSKT2LVEQERC6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8316239994655119069=="

This is a multi-part message in MIME format.

--===============8316239994655119069==
Content-Type: multipart/alternative;
 boundary="b1_9hooWV4qc9uwUhx57tq5HuP6O6K2bcTD5RsPyIofFHo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_9hooWV4qc9uwUhx57tq5HuP6O6K2bcTD5RsPyIofFHo
Content-Type: text/plain; charset=us-ascii

Hi Martin,

The issue has been resolved. The shell was not configured to bash and hence the error occurred. The RFNoC image builder is working fine.

Thank you.

--b1_9hooWV4qc9uwUhx57tq5HuP6O6K2bcTD5RsPyIofFHo
Content-Type: text/html; charset=us-ascii

<p>Hi Martin,</p><p>The issue has been resolved. The shell was not configured to bash and hence the error occurred. The RFNoC image builder is working fine.</p><p>Thank you.</p><p><br></p>


--b1_9hooWV4qc9uwUhx57tq5HuP6O6K2bcTD5RsPyIofFHo--

--===============8316239994655119069==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8316239994655119069==--
