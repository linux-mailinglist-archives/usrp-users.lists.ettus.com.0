Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B54D6A224E
	for <lists+usrp-users@lfdr.de>; Fri, 24 Feb 2023 20:21:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 36F80384222
	for <lists+usrp-users@lfdr.de>; Fri, 24 Feb 2023 14:21:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677266509; bh=wBjuUN1B/mNilIs2gcfvga7NQ8U5lvzNniPRi98/6MQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=tSvs/eFIvrEwZN9zTHiU+JfOoxXpCBVr3/ldWpEcwrKT5OcoQDYaPd7Ao9EcvAJD9
	 zAqM+VGMQy2nziVoSCNjqMkCpKjRZj3X4/HYhGn7EqomPy4/TAIdKMIG5Y+4ZdTHse
	 kxDS+94GRtDnOSzxPiRxdoEHiO6OtHEo1CH/GVns3/vUZEI0yK9NUrm8njN848loue
	 hu0th9cgSNKDqgSIePgvrX+QSBhJ4kNPcEKAFJO0YsDa9WOTVnfgWZ/5T0V/vQCGer
	 b7R/YRk0daVe5fTb5rfhVgf9QbyZX6H1SUonJANjSybh5oXijfnOpPDQ85HY0RI6xV
	 W134YjcLtun1A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B3D4E38423B
	for <usrp-users@lists.ettus.com>; Fri, 24 Feb 2023 14:21:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677266503; bh=zObT1N8eAbsprJxW5MYolm8DugHg2UH5VHTgmM35xCs=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ZyHrJuH4ZhH7sApsJ62cbiyhEtKHsMIfbPlr0dr/CK/VDQpC2BHyBh3bfxvZ+wgu3
	 +l6koVxx/+d5LqVgdrqkY+1x/Xmaz2P2F6cs575PM935CE/tN7HI/ykwFegUER4zLv
	 hI499Lg1ls9wOosR95EmaGHiSYKhEmnJHC+KYlFzh0yoVt7CdIxD+gATIo10wgxF/L
	 l3jXoJNlRQ4ybd8q7C23nYZaVWplPcCPGtt+d9E+6EDqNIvq1lNPIS7jlDQ/7Xnngj
	 hNpfY5uzJYqQa3mLJRPc/8II4zNKfMWfVHp567uS/M7Ji+4v19JvVwDVd4nEKgFEbO
	 rD26yh9CYdDMA==
Date: Fri, 24 Feb 2023 19:21:43 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <JJxPsfYmE8WQ6jQjXL78919l72G4eDZMcgghRrFlgA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: e2ce046b-564b-8f06-42e3-cb0c6b3de552@gmail.com
MIME-Version: 1.0
Message-ID-Hash: W3JSTCTPT2UH7B4OHCLG4M2XHGJ4HUST
X-Message-ID-Hash: W3JSTCTPT2UH7B4OHCLG4M2XHGJ4HUST
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: using rfnoc_graph and usrp
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W3JSTCTPT2UH7B4OHCLG4M2XHGJ4HUST/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5140324482817243717=="

This is a multi-part message in MIME format.

--===============5140324482817243717==
Content-Type: multipart/alternative;
 boundary="b1_JJxPsfYmE8WQ6jQjXL78919l72G4eDZMcgghRrFlgA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_JJxPsfYmE8WQ6jQjXL78919l72G4eDZMcgghRrFlgA
Content-Type: text/plain; charset=us-ascii

i found that I needed to create a timekeeper, within the mb_controller. i.e

`uhd::rfnoc::mb_controller::timekeeper::sptr tk = graph->get_mb_controller(0)->get_timekeeper(0);`

This seems to do the trick. Im now getting a late error, but it is probably another kind of issue.

--b1_JJxPsfYmE8WQ6jQjXL78919l72G4eDZMcgghRrFlgA
Content-Type: text/html; charset=us-ascii

<p>i found that I needed to create a timekeeper, within the mb_controller. i.e</p><p><code>uhd::rfnoc::mb_controller::timekeeper::sptr tk = graph-&gt;get_mb_controller(0)-&gt;get_timekeeper(0);</code></p><p>This seems to do the trick. Im now getting a late error, but it is probably another kind of issue.</p>


--b1_JJxPsfYmE8WQ6jQjXL78919l72G4eDZMcgghRrFlgA--

--===============5140324482817243717==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5140324482817243717==--
