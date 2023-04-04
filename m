Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F8F6D6AD7
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 19:44:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7EA1D38489A
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 13:44:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680630275; bh=JCY8znQmfg9d6Tfyfuj3uZEkVjzhCcCWN0YYzQXgaCc=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=BJCbQPfHvF7sDnoy8gANUIPIIS0cFgykFIokUDBKCf0T3Bjglw+0kA/ZfAQGmjz+S
	 AzcNuDPDmeDfcRp9TwyyKQZH+L7GXdeZqMQsYkTlZdbG6fyMV5KVvPn/Vdox/+UV3T
	 Pgr7XGBJcBWCvD6VBMyiO8FlnF91YUGexFG3O2i3TCfrsM7ThaKF9Cvu3T/MTsCzOk
	 Rz+orE6d1lcBd8e9+Eu6+rdbzsa/IDU7udcDPHO+7egaUR2cMOse304KxH1Qf5uOUG
	 o7jshHWu0DlZ0EvgqFeq20ICnhunIsztlyFdvdyKEiew1BOsucqdvtjifMoJXVXdlB
	 ihzUxC/moXOpg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CF5BF3846F4
	for <usrp-users@lists.ettus.com>; Tue,  4 Apr 2023 11:40:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680622817; bh=RnbsE89QGzvGsOcJrZOXUAkJxWX9Kvun8/tBnCgViAo=;
	h=Date:To:From:Subject:From;
	b=tf1ecvWmzc5glUUjMvElvZX/yxqHqUYT8teZYodcaI2702fyqImyuj72BDwlBtF6J
	 cx2OxWd7KxuxOomiNK/lq09eJOPxpjbgBPRFaxDfV7pSCrzOIyjdJ2M5S+OUJIg0Xd
	 ipJzcrkb5jatLYo4RzdhFe+lAcGv+soUznw2c4rsk5di70d5+p2ytZW4iwmOvCVNDu
	 0zvttCQQ5ZZqShUd3hii8smpDlPErf647evyBwWv7fHTgzMIOBbIoLwxeFc74tHkrZ
	 4IKdToXCTFQpbqmxuMr0kgTA7tPaFTOLl6CxE/LPFHN2ZbZtiLFiJUezUplBxFBFCd
	 Pj/+Lib60dviA==
Date: Tue, 4 Apr 2023 15:40:17 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <gl5dllbrcn4HbE7Las4LHkLcjF3NbCdDkXjH6gI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
Message-ID-Hash: WOVA22BPNCIH65637BDGQJIYN4DNDN2E
X-Message-ID-Hash: WOVA22BPNCIH65637BDGQJIYN4DNDN2E
X-Mailman-Approved-At: Tue, 04 Apr 2023 13:42:48 -0400
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] PCIe NIC card connect to USRP-X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WOVA22BPNCIH65637BDGQJIYN4DNDN2E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8043452148247090951=="

This is a multi-part message in MIME format.

--===============8043452148247090951==
Content-Type: multipart/alternative;
 boundary="b1_gl5dllbrcn4HbE7Las4LHkLcjF3NbCdDkXjH6gI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_gl5dllbrcn4HbE7Las4LHkLcjF3NbCdDkXjH6gI
Content-Type: text/plain; charset=us-ascii

Hello, 

What PCIe NIC cards are suggested to connect USRP-X410 through 10GbE and 100GbE that are already tested and compatible. Thank you.

--b1_gl5dllbrcn4HbE7Las4LHkLcjF3NbCdDkXjH6gI
Content-Type: text/html; charset=us-ascii

<p>Hello, </p><p>What PCIe NIC cards are suggested to connect USRP-X410 through 10GbE and 100GbE that are already tested and compatible. Thank you.</p>


--b1_gl5dllbrcn4HbE7Las4LHkLcjF3NbCdDkXjH6gI--

--===============8043452148247090951==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8043452148247090951==--
