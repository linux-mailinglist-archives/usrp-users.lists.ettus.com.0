Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B6ACE816CA1
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 12:42:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AE38B385149
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 06:42:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702899751; bh=RrbafoGpdFYP/dAUA/WpDw8a68CEvvGVZVRdNNt5PB8=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=eWABmtynL9iyfZrDEgdIPbTO5XA6vvEZSzwXwQnRrj9yjYl7HDHgNGP8q9oHA9BRv
	 3d1JUc67tqBaK08LroNbz12hqLB/0waKit+FkiKDoGeaor7394sm3RReJoXtsqiac4
	 MftjxjnNn+k9krJgRZMVy3rOzxgpaDX/M6h8EAkUf1TKukthRdQvL+jP3mNKPamw7Q
	 kdYJHOlBdmcH00PDvoOH3Rf0lwINn6wxkSzn10HYlV83OvJ2CKBTdmbMlGXFhTYJhW
	 Nl2T3PcBSHXQQEXPScXBFX36hp4LjZlfKAOCFYD2IIxdUuUFMYdsn+ViqxENaIyWpY
	 J2wlG5Eztt6Cg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 85FC4384D83
	for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 06:41:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702899717; bh=MVIZXFDeK/m6Su/Qpv8cdZhdkHdsPqFyZ7XeBB+Q7NI=;
	h=Date:To:From:Subject:From;
	b=gkTl6s521oZ+tjmrqYTacMcyA9TJTNqguqb/YHP6DsKCYjbZeJn3MqbKuruuRVlC7
	 UXSTXifq1QLjCKDPL9d92eSDOTYEQmpgqRjY1WCQkjxsRVOAC4cKy4Vg53Rpbl8kWn
	 IUeDLRfP+ly+iRZUDmQfqAxUqJbay2hOcFHNkAiL3YKuUJ+O0xxNWfo8vNe75ussMz
	 NMwfxW08p3UlMtZuWrBSKqaPomhHDBQt8RmIbn1fj9g7591vrjbQ5tdInPbJ/TXrpx
	 h6h75cpq73JCoSgSPMWS4MDayq625/mZdUfY4CRbs1NCG67mkIENPgVgQ8bWk+mw++
	 bMX9RtxJ06PEA==
Date: Mon, 18 Dec 2023 11:41:57 +0000
To: usrp-users@lists.ettus.com
From: purva.joshi@phd.unipi.it
Message-ID: <InkWHIlNo7WYrkVjT0Ab938c2c9N0oJhSGLaNRP2FAc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: ENIOPZRGUHCEKEPFEQL5YPGSF3SGQK5N
X-Message-ID-Hash: ENIOPZRGUHCEKEPFEQL5YPGSF3SGQK5N
X-MailFrom: purva.joshi@phd.unipi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP N310 A timeout event occured!
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ENIOPZRGUHCEKEPFEQL5YPGSF3SGQK5N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5783190603787477793=="

This is a multi-part message in MIME format.

--===============5783190603787477793==
Content-Type: multipart/alternative;
 boundary="b1_InkWHIlNo7WYrkVjT0Ab938c2c9N0oJhSGLaNRP2FAc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_InkWHIlNo7WYrkVjT0Ab938c2c9N0oJhSGLaNRP2FAc
Content-Type: text/plain; charset=us-ascii

Dear Users,

I am using USRP N310, with UHD 4.0 version in Ubuntu 20.04. When I want to test my uplink sniffing using N310, it gives me following errors:

1) \[WARNING\] \[MPM.RPCServer\] A timeout event occured!

2) \[WARNING\] \[0/Radio#0\] Attempting to set tick rate to 0. Skipping.

    \[WARNING\] \[0/Radio#0\] Attempting to set tick rate to 0. Skipping.

3) \[ERROR\] \[UHD RF\] std::bad_alloc 

4) Error timed out while receiving samples from UHD.

5) Error calling srsran_ue_sync_work()

If anyone have already solved these errors, kindly help me. Thanks in advance.

Regards,

Purva Joshi

--b1_InkWHIlNo7WYrkVjT0Ab938c2c9N0oJhSGLaNRP2FAc
Content-Type: text/html; charset=us-ascii

<p>Dear Users,</p><p>I am using USRP N310, with UHD 4.0 version in Ubuntu 20.04. When I want to test my uplink sniffing using N310, it gives me following errors:</p><p>1) [WARNING] [MPM.RPCServer] A timeout event occured!</p><p>2) [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.</p><p>    [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.</p><p>3) [ERROR] [UHD RF] std::bad_alloc </p><p>4) Error timed out while receiving samples from UHD.</p><p>5) Error calling srsran_ue_sync_work()</p><p><br></p><p>If anyone have already solved these errors, kindly help me. Thanks in advance.</p><p>Regards,</p><p>Purva Joshi</p>


--b1_InkWHIlNo7WYrkVjT0Ab938c2c9N0oJhSGLaNRP2FAc--

--===============5783190603787477793==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5783190603787477793==--
