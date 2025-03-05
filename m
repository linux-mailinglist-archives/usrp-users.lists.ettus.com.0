Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD7EA5002E
	for <lists+usrp-users@lfdr.de>; Wed,  5 Mar 2025 14:17:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DD9BA385A92
	for <lists+usrp-users@lfdr.de>; Wed,  5 Mar 2025 08:17:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741180667; bh=CKQpJvEUZha0aie5XKVvG/WRxuuHAUWjeCBeQsW/hNY=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=KQhkP1nmddcwioiTQdo8V9aUe9e1bZ92vLfm5bSIU9WUVPU5ssugYvTKKCLaZK+bF
	 wXeS4utQ/NWxWVucpZ6La9uxadyCi0gue2SYsSjTvOKzIuA25w5+GPMOWMDS+KrFsL
	 G6K5jPq96zXkaclOglYXv1AWQKB/Cz6AokR8hQ2zRp5/Y2dGbHy1wwf3Z8lrv2iZnO
	 c2J1NDAMLxB1UWdty/NjGPkGv75hlJy17OXH99HC3ec0ZKo9w4eFQ+i4GEc8Iiz7SG
	 l6eWLoQoxySpR20Lz902C/v0VCZMNo7M2jos6HTL71hkR/gx/Tzza3PC6gEeBR0KPp
	 ofxQDXuJc+5Pg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 90C33385A7F
	for <usrp-users@lists.ettus.com>; Wed,  5 Mar 2025 08:17:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741180663; bh=jfokJ+H99nlKq9TQjtzlqGBkXutqdlCNuxTSi0iaiWI=;
	h=Date:To:From:Subject:From;
	b=qmRlaOx5Suam4HC09YwbvP++lTxV3D1Efo4ecJTNkiCqsu5Wu6MrxqOOUmQ0DW9oM
	 GHMy81utPnB7QnjTH7N+5q1Sq1JT8Nht0P7dVikhS8m/T4n9v4VekgwQd6SZ5myJWV
	 I5igaC6sOGM8L9KfLICG6FiQmyGT9IAYmCsS0Sc9PRy4bGMTLszNkLpFAlzuALuXcB
	 E8hjSYBeURni4HBHXwJPntIsPRTJ1mq2qUoRTwB1s8w3zs1cOA0GHlwMDVdXM1Ssql
	 5Vg1RVxZSHDhufKsznCKhqtS9sxZR3xuOvfJU4OyTcVMaiZvDMuvw+CHCVww9pl6xH
	 /VSHLuDTfW5OQ==
Date: Wed, 5 Mar 2025 13:17:43 +0000
To: usrp-users@lists.ettus.com
From: able5541@oxobrowser.com
Message-ID: <YUmqXdWMSJ1A1ir1QWaVRD9ZZjSbdPeaIpRpnei8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 2AJ2ZOIBH3LZAAAMLOGHWPFJUQ2TJ6I6
X-Message-ID-Hash: 2AJ2ZOIBH3LZAAAMLOGHWPFJUQ2TJ6I6
X-MailFrom: able5541@oxobrowser.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Problem when working with USRP 200b mini in TX mode
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2AJ2ZOIBH3LZAAAMLOGHWPFJUQ2TJ6I6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6497000967670138276=="

This is a multi-part message in MIME format.

--===============6497000967670138276==
Content-Type: multipart/alternative;
 boundary="b1_YUmqXdWMSJ1A1ir1QWaVRD9ZZjSbdPeaIpRpnei8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_YUmqXdWMSJ1A1ir1QWaVRD9ZZjSbdPeaIpRpnei8
Content-Type: text/plain; charset=us-ascii

I recently started working with the USRP 200b mini in TX mode. I set up the input data(). When setting the tx_rate below 56, everything works fine, there is no data loss, the traffic is good (it is taken from the file), but as soon as I set the tx_rate to 56, I have an underflow(U). I started to study why this happens. The USRP is connected to a USB 3.1 port, with a connecting cable (also with a good transfer rate). In the documentation, tx_rate is supported at 56, if you set more, it resets to 56. I don't quite understand what I'm doing wrong, maybe I forgot to specify something or need to enable (disable) it somewhere, I hope for your advice. UHD 4.8.0.0, Boost ++ 1.87.0 drivers , OC Windows 10.

--b1_YUmqXdWMSJ1A1ir1QWaVRD9ZZjSbdPeaIpRpnei8
Content-Type: text/html; charset=us-ascii

<p>I recently started working with the USRP 200b mini in TX mode. I set up the input data(). When setting the tx_rate below 56, everything works fine, there is no data loss, the traffic is good (it is taken from the file), but as soon as I set the tx_rate to 56, I have an underflow(U). I started to study why this happens. The USRP is connected to a USB 3.1 port, with a connecting cable (also with a good transfer rate). In the documentation, tx_rate is supported at 56, if you set more, it resets to 56. I don't quite understand what I'm doing wrong, maybe I forgot to specify something or need to enable (disable) it somewhere, I hope for your advice. UHD 4.8.0.0, Boost ++ 1.87.0 drivers , OC Windows 10.</p>


--b1_YUmqXdWMSJ1A1ir1QWaVRD9ZZjSbdPeaIpRpnei8--

--===============6497000967670138276==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6497000967670138276==--
