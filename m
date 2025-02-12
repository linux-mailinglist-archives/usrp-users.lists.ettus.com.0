Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A85A32D21
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 18:14:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8B214385ECD
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 12:14:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739380442; bh=ajat9uiQw2E69Jh0oiIBqMlqeUvdgypDm2xuTLVHgA8=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Ne8t9JI8JYwrZSCim4p3AS4SoNOS17qSXnlaiqd7s+NIFt2DZMW4trAFEP/TT/xER
	 q6HLcqKIkn/wmf8oLMbcUusbTbPNv7nrq80/bNYXZvP3NeNYJxVS29mXB/0CY+zsgA
	 jiVJcu50KJZqczsEar0+b6YSKb1oOnaXXV0rOIhP78WiDfAzlSvx4VsrwcLQCz7dei
	 uS3KKEa88uI1vTCVpvg01WFZ9jdTJAJAYeRHIQXR8SAF6qiTRGkDwnZkVqG89Dxus8
	 jZl1ZfJ33iArUx2AxVNYuMSR9XCoyD7bkXgH8P5xBtAARpa3DO1tyZPT84n9THp9pM
	 0bg4edtTqq1dA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3FD45385E98
	for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2025 12:13:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739380409; bh=DNqwuMKfKYTZ6wR0ONbgPXKfmC31qXSpKGfnkd6tUu4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=M5cfmSMclAC3UoR5EKBHvBdHKxXnH4jiWAwHfHdsoYF4Glq2XcZMk7Ja8qTXB4KvF
	 1/Sp+ZNiOyXeMp5VSURFl6yzHl8+3psmHMuxDAA7wrk7eJFxoIhJ3exiTC/E4uFlrd
	 zobMS363sdJTYDQzzp2sjLvrTC2wgqFyGqJR7O6nb4jf11jasSbgyvyf5N+zxBbnXP
	 xh/LvFmnq5QorMy4FqxmWLyWivAqAw8VD0RJcxqtt8WxvMCOu+3oFi6WskWUY2Xv6g
	 kA4ScoWWnDkdFAN+ssKIaGYk2jFRgsxRWrdxZrmPUomlkNFHic++RneDloIifQUaZc
	 4Zxc86uaNpT+w==
Date: Wed, 12 Feb 2025 17:13:29 +0000
To: usrp-users@lists.ettus.com
From: dhpanchaai@gmail.com
Message-ID: <nMRcbMVQgpcHUmIhdTR1fX1bGQ2Pp98cXXV9ylsDYok@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=iiEjbPh7eDpMQtrMbnLVQXxn7-y-Yu2ZYGtN8zKrJ+gA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: ZUGXRYILD72XUP777OD7ENLZBSVTZQIB
X-Message-ID-Hash: ZUGXRYILD72XUP777OD7ENLZBSVTZQIB
X-MailFrom: dhpanchaai@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Build custom fpga image for x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZUGXRYILD72XUP777OD7ENLZBSVTZQIB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4456962126117174940=="

This is a multi-part message in MIME format.

--===============4456962126117174940==
Content-Type: multipart/alternative;
 boundary="b1_nMRcbMVQgpcHUmIhdTR1fX1bGQ2Pp98cXXV9ylsDYok"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_nMRcbMVQgpcHUmIhdTR1fX1bGQ2Pp98cXXV9ylsDYok
Content-Type: text/plain; charset=us-ascii

Hi,

Thanks for the recommendations. I installed Vivado 2021.1 on my machine and ran the rfnoc_image_builder command found in the documentation using the yaml file x410_CG_400_rfnoc_image_core.yml. It generates a folder build-usrp_x410_fpga_CG_400 with the following files: device_tree.dts  Makefile.inc  rfnoc_image_core.sv  rfnoc_image_core.vh

How do I generate the bit fpga image file with this to load onto the x410?

--b1_nMRcbMVQgpcHUmIhdTR1fX1bGQ2Pp98cXXV9ylsDYok
Content-Type: text/html; charset=us-ascii

<p>Hi,</p><p class="">Thanks for the recommendations. I installed Vivado 2021.1 on my machine and ran the rfnoc_image_builder command found in the documentation using the yaml file x410_CG_400_rfnoc_image_core.yml. It generates a folder build-usrp_x410_fpga_CG_400 with the following files: device_tree.dts  Makefile.inc  rfnoc_image_core.sv  rfnoc_image_core.vh</p><p>How do I generate the bit fpga image file with this to load onto the x410?</p>


--b1_nMRcbMVQgpcHUmIhdTR1fX1bGQ2Pp98cXXV9ylsDYok--

--===============4456962126117174940==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4456962126117174940==--
