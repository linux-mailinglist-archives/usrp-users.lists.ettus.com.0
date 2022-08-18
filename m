Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 44662598318
	for <lists+usrp-users@lfdr.de>; Thu, 18 Aug 2022 14:26:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D20E9383097
	for <lists+usrp-users@lfdr.de>; Thu, 18 Aug 2022 08:26:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660825585; bh=K/8rTkJ/P8pH3Mq/mJNIYMQ/G3iEQWKQ0IZO7jtwtpA=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0N43Dv9wj40M8g/SslmaAeQocCbAwZ46je7/fZUDGd9ASwOxBevIoTFL9QuZ0NvAS
	 BMKYP9+m57Rv9CvJiChWaU1WVvm6CZluWKqznLgQ1K46BKM3ThZlVps0aDju/Tln9T
	 eJyoVBnEI0W5rY79E8GxKI51JnGMpxRvea8hm4V3KQYo2mw9uv8/WwLFljr6p2ZmuU
	 jsekATL7hT3Xyvg5vITnhdrvcxiViY2C193g2Qne3xjKzMZpiKrObuwbadi2SHt11q
	 su9I3S5ouub0m7ZH5x7Vx7Mld+u0vTyRiiFvoAcWSqo1HEJWdAkobLIGmEVfbqqxoC
	 z7zRG+7g0lHfg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B1CD8383A1A
	for <usrp-users@lists.ettus.com>; Thu, 18 Aug 2022 08:24:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660825470; bh=mBL4P8sYdluPAN0zJD0xfDBXAa8VWawEOo3n0w87Vgg=;
	h=Date:To:From:Subject:From;
	b=FJxjxCqGhhPoQzyuxk8lUCRp5zNMVKTykHuZ4no4k32ZM/ThmXkXYoKkqB2mSEzkr
	 cXHeYJ1pd/sa9qw28nQjE586oTl4P2zRcYaw0H6hZShYytCDLgcKkYuQBKwtjP5Rw1
	 wyXWnxy01u1sp3GI3EhTXuEtZNu79nXFafuWUjVGzeEVGk5xJfWeVAqxsGayN5nEuo
	 aePZgy0qwEZ05g71g68qRFNYFsbhc0MBcCmAnk5IBzY4bhXotCyBjsI8dLl/ejHFjH
	 25vT8D2+YVC26O5vFnu9pmiM1CRwd60MQYwYPrpYLFeqG5vU86KAJXi7PU6Q4hLnC0
	 03q7GYZb84y4g==
Date: Thu, 18 Aug 2022 12:24:30 +0000
To: usrp-users@lists.ettus.com
From: adrian.campos@integrasys-sa.com
Message-ID: <YMFp481oKWLKHn6Gld6NW6T7ruuXTKrHxl9wgxfhLM8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: APJJ6OHH4TZKSVXXW6PTFS4CBFUPQ2VT
X-Message-ID-Hash: APJJ6OHH4TZKSVXXW6PTFS4CBFUPQ2VT
X-MailFrom: adrian.campos@integrasys-sa.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] AXI_RAM_FIFO Controller
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/APJJ6OHH4TZKSVXXW6PTFS4CBFUPQ2VT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5029876116700464698=="

This is a multi-part message in MIME format.

--===============5029876116700464698==
Content-Type: multipart/alternative;
 boundary="b1_YMFp481oKWLKHn6Gld6NW6T7ruuXTKrHxl9wgxfhLM8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_YMFp481oKWLKHn6Gld6NW6T7ruuXTKrHxl9wgxfhLM8
Content-Type: text/plain; charset=us-ascii

I am making a custom block which has to start storing data to be read later, in other words store the data in a FIFO. I am interested in using the RAM provided by the E320 so I want to take advantage of the axi_ram_fifo code. However, I don't really understand the control of that block, how can I control when to start writing data to memory and when to start reading it? I have checked the registers in case it could be controlled from there like the replay block that has two registers to start reading and another one to do a restart but I haven't seen anything like that.

I hope you can help me. Thank you very much in advance

--b1_YMFp481oKWLKHn6Gld6NW6T7ruuXTKrHxl9wgxfhLM8
Content-Type: text/html; charset=us-ascii

<p>I am making a custom block which has to start storing data to be read later, in other words store the data in a FIFO. I am interested in using the RAM provided by the E320 so I want to take advantage of the axi_ram_fifo code. However, I don't really understand the control of that block, how can I control when to start writing data to memory and when to start reading it? I have checked the registers in case it could be controlled from there like the replay block that has two registers to start reading and another one to do a restart but I haven't seen anything like that.</p><p>I hope you can help me. Thank you very much in advance</p><p><br></p>


--b1_YMFp481oKWLKHn6Gld6NW6T7ruuXTKrHxl9wgxfhLM8--

--===============5029876116700464698==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5029876116700464698==--
