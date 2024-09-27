Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B08D988AA8
	for <lists+usrp-users@lfdr.de>; Fri, 27 Sep 2024 20:59:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A94B53851D7
	for <lists+usrp-users@lfdr.de>; Fri, 27 Sep 2024 14:59:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727463566; bh=CMai7BYPzEsXYwEHbqWVwz4Waklt2hmDs9Rqwh+HLEc=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=gRMdb6JMtBph+rb4BOjVKuoLn+EGPBU24PNom3E8SQnosCwyPETuvP776dDnUcNAg
	 StXrxd4axhhzdjVY3g+n7+cfo56CSTnTKFYIywx1+kOy4C/pD1E1VNZkJItXoTf5+j
	 /znW/jnKgByXdO9OQ95eTRlRvOILaG3eLUVarAeIPjbbp6gSf23VRBX1LEVVX4tYRM
	 9FUnHSluNjD0g2z3HiMrp6Ax0Zzj7la7m9THt/JdMjVrbvu4Kwp2gWuQczoTtYyIrA
	 fFvMZmzpzk6FALjJywwdE0S5jkLZqfhdfwB5A3Z1zHC7S8hH+2UGE2MmIBcyGnRQdY
	 vEQhyzg/6+WIQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 06A11383F26
	for <usrp-users@lists.ettus.com>; Fri, 27 Sep 2024 14:58:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727463522; bh=QC1lXIh4JEZgkoMG9YbW2sv6V1XRzg4hKJeNip1H7AU=;
	h=Date:To:From:Subject:From;
	b=jOeaH6uWRAMRBc2BuxJPW3oGhpqmXWUyczNmvs3s1kOcy1nEgB68rnjtygTnx497U
	 tYIr3TVXJMfcxmUsERBEoZMc8qR+TxHVfP+claynEkuAq6tYAGP8bSgf2pA3RRl2/m
	 Bgj+2KOadzK5IKh7B/6RHrDzpLNrvq2al24J4aWpTjPPUX6tF8FumpgVEXpLBdv40Y
	 5Xwua6aoPxC5AIKmH48Pss7n7uh6VuABVzd9gxTaksYgk0wvhKFCz6Y5c7wIWF4tmE
	 gNQ7iRaP1a75ouWzQ+kN06C18/vLOKtdlN0AL21faLNLN/jPy5sGpPUi8sKtOvfPao
	 Mhl1EUq5Yytlg==
Date: Fri, 27 Sep 2024 18:58:42 +0000
To: usrp-users@lists.ettus.com
Message-ID: <3w6KpgS0rv65EwzIaajHP3BNr8x24dxhmY8rxfg748@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 24SIVTIRA7LW2N6TGVG565ZL5M3DORE7
X-Message-ID-Hash: 24SIVTIRA7LW2N6TGVG565ZL5M3DORE7
X-MailFrom: william.haftel@bluehalo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Trouble controlling GPIO on x310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/24SIVTIRA7LW2N6TGVG565ZL5M3DORE7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Will Haftel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: william.haftel@bluehalo.com
Content-Type: multipart/mixed; boundary="===============2305837720575321934=="

This is a multi-part message in MIME format.

--===============2305837720575321934==
Content-Type: multipart/alternative;
 boundary="b1_3w6KpgS0rv65EwzIaajHP3BNr8x24dxhmY8rxfg748"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_3w6KpgS0rv65EwzIaajHP3BNr8x24dxhmY8rxfg748
Content-Type: text/plain; charset=us-ascii

Hi,

I am attempting to manually control certain GPIO pins on the x310 as outputs that will control external antenna sources.  In the code sample below, I am intending to set pin 2 to low and pins 3/4 to high, but am not having any luck.  Would it be possible to point out if there is something wrong in this code?

usrp->set_gpio_attr("FP0", "CTRL", 0x000, 0xFFF);

usrp->set_gpio_attr("FP0", "DDR", 0xFFF, 0xFFF);

usrp->set_gpio_attr("FP0", "OUT", 0, (1<<2));

usrp->set_gpio_attr("FP0", "OUT", 1, (1<<3));

usrp->set_gpio_attr("FP0", "OUT", 1, (1<<4));

Thank you!

Will

--b1_3w6KpgS0rv65EwzIaajHP3BNr8x24dxhmY8rxfg748
Content-Type: text/html; charset=us-ascii

<p>Hi,</p><p><br></p><p>I am attempting to manually control certain GPIO pins on the x310 as outputs that will control external antenna sources.  In the code sample below, I am intending to set pin 2 to low and pins 3/4 to high, but am not having any luck.  Would it be possible to point out if there is something wrong in this code?</p><p><br></p><p>usrp-&gt;set_gpio_attr("FP0", "CTRL", 0x000, 0xFFF);</p><p>usrp-&gt;set_gpio_attr("FP0", "DDR", 0xFFF, 0xFFF);</p><p>usrp-&gt;set_gpio_attr("FP0", "OUT", 0, (1&lt;&lt;2));</p><p>usrp-&gt;set_gpio_attr("FP0", "OUT", 1, (1&lt;&lt;3));</p><p>usrp-&gt;set_gpio_attr("FP0", "OUT", 1, (1&lt;&lt;4));</p><p><br></p><p>Thank you!</p><p>Will</p>


--b1_3w6KpgS0rv65EwzIaajHP3BNr8x24dxhmY8rxfg748--

--===============2305837720575321934==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2305837720575321934==--
