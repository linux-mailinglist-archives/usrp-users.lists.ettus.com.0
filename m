Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F88A1A5DE
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jan 2025 15:38:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 691E4385D6E
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jan 2025 09:38:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737643138; bh=sUMoC2jJdb27u73B2HSLbsF+ZpJmn0UDBOI33vIz4gQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=GlKwIGLrkeNzs3hfLngOdRRF64WpVZI99NM5ksz16jBXBt8fXCZpW9+WSJm/TRiUY
	 h5gae+GtBRtpkFVjiX52plBM6p6bPnEmwK8xV4UuA/f/aQsVOkZ3H2DymlMrHFTcN6
	 W5dUH5MmlnY0VjAhfGfhKyC8TwEauMCp80TOy2x7lOi80zNR4qDDCa5YjYKB3kVn/G
	 3dMEbD9Ns3Y/haYggyxkI8W/SZ0QU/fBSvsFEb8oHgXjMiisBT9WBhtjhROae+/kVU
	 sjeb88W4CcyyLuD8SaLSOC3P54YjkEl6psnhOL67vumgkm36K/W1MIgfxzExCylkFA
	 ZHuoPaBtEI53Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B94D8385D41
	for <usrp-users@lists.ettus.com>; Thu, 23 Jan 2025 09:38:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737643109; bh=lqbVp7UDl+FwZmf0tlbJyKIof9laA/o3IhM9UqKJYwE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Zh1Rc/0n2HHkpg1Pwb7z0hryK08pGiYn13pKEY92O1xMhUUV+tFVOh4+v5t9YTkBs
	 Sm538tWuTlJeIkjXGCAx5YfKbNcoxL9Lw8TQ3KL3lP9R9cZD0sAK/Z//gmie84nxHP
	 sampEu+Zvm77Ky9g6KC+PDz9W0uVcBN2/tD1EtIatxm4L3qR4pa4aeGHCyp/VWo7YJ
	 D3RpkuvIRDD0vzzOBTVGRmqZtSs6jYbg9+d+OFKREXQ3JSGOeUeRKSX7J9Y3UrJlUf
	 VEzhCkbE7uFmv7hGqTA3VR7dkUXP8RjBFZxrg84A9+jmas/prVcoqhZwgfJKmIDyhF
	 NPUASU0li/qlA==
Date: Thu, 23 Jan 2025 14:38:29 +0000
To: usrp-users@lists.ettus.com
From: elkana443@gmail.com
Message-ID: <1QTcOqxzywXIng440ATi8XmAqXCOXeC8b2KIFTeJFI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A7uqkZJ+4ayUrVC8CEhDJaBnny+11ptNJBJrd_9CYGnyg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: AYJHEHX3AYBYSCR2TVJL56FPYK4MCXDH
X-Message-ID-Hash: AYJHEHX3AYBYSCR2TVJL56FPYK4MCXDH
X-MailFrom: elkana443@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help Needed: Issues Implementing RFNoC Example with UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AYJHEHX3AYBYSCR2TVJL56FPYK4MCXDH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2672644368712685406=="

This is a multi-part message in MIME format.

--===============2672644368712685406==
Content-Type: multipart/alternative;
 boundary="b1_1QTcOqxzywXIng440ATi8XmAqXCOXeC8b2KIFTeJFI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_1QTcOqxzywXIng440ATi8XmAqXCOXeC8b2KIFTeJFI
Content-Type: text/plain; charset=us-ascii

Hi Martin,

Thank you very much,

I would be happy if you could explain to me how I can make the folder  "fpga/ip" like the rfnoc-gain

Elkana

--b1_1QTcOqxzywXIng440ATi8XmAqXCOXeC8b2KIFTeJFI
Content-Type: text/html; charset=us-ascii

<p>Hi Martin,</p><p>Thank you very much,</p><p>I would be happy if you could explain to me how I can make the folder  "fpga/ip" like the rfnoc-gain<br><br></p><p>Elkana</p>


--b1_1QTcOqxzywXIng440ATi8XmAqXCOXeC8b2KIFTeJFI--

--===============2672644368712685406==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2672644368712685406==--
