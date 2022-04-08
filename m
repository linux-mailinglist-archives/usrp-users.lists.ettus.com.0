Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 34ED64F8BD3
	for <lists+usrp-users@lfdr.de>; Fri,  8 Apr 2022 03:27:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EEB853850F0
	for <lists+usrp-users@lfdr.de>; Thu,  7 Apr 2022 21:27:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649381260; bh=yuO9Vzo/cEsAmyHlVD94JjJiBFXjCxot7rf+MY7aspc=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=JFgF5mDaDZJUL4ym3b5bgQcMT7NoF2ojIILmgREVR1UaRXtUXd3/AcRaMbckhsT8+
	 Dmu1nAKpMaiFA0+m91lUJH4dPqt/qKeIC6iDv+JVAWOh3krzVwQkNJCdKjMuyc3rik
	 +Z9u28nVmMG7Lxd2CDZLXqyMqhp05djaZ/7rpnvSnJY/S+GF6JAosEXYIfYmHuxKtb
	 lhooGEFvc+bMS5UfH7EHl8q7LRq5REHRZoItGrLhzmfJjS6DiEbmo7woXC4ts/t13T
	 mDY76q62z9H06RDqmfmKGp/78tW0l3KelHv9LyTsfc6O39R40YceuWC/NnHn5DZTi0
	 vE1i2dXVMQtGQ==
Received: from sender4-of-o58.zoho.com (sender4-of-o58.zoho.com [136.143.188.58])
	by mm2.emwd.com (Postfix) with ESMTPS id F0913384D0D
	for <usrp-users@lists.ettus.com>; Thu,  7 Apr 2022 21:26:39 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649381197; cv=none;
	d=zohomail.com; s=zohoarc;
	b=Abo3ROo3MierNx/vzJiVah4r9+1DsrKBnyXRYspRolUVtYT60eGXsPstSG5d1Hq8nSxezmhA7sno0GTyTr+JAwSjPjPAbb/8pireH86XCkK0Lk/emW7IG3gSKqrx/i2Upn4BY5coSIugjJqQ7RvJRqbRFsmhcoLu72lpx8gOqJE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1649381197; h=Content-Type:Date:From:MIME-Version:Message-ID:Subject:To;
	bh=uJZMw0fpmml9DVckGWQOY24iPYZ7uwXxqOPLabyQ9FQ=;
	b=hs5lc9pTzfpVVZitlfRg7NAfV5v+8TNhCDt/prdwJabPD5Yg5FvE4Dlfxf8fM8l26nKYtDVGavCJmk4q+UB67Y4hJoypDk9WrL/1gaOfZZbZqFJUiCHX4h71PJdXPGog8FpeAOeGpTsagiB+AeAeTwDIu4WKZsKr2ROfJJ6aCr8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	spf=pass  smtp.mailfrom=jgallegos@uberasch.com;
	dmarc=pass header.from=<jgallegos@uberasch.com>
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1649381191135148.17975438220287; Thu, 7 Apr 2022 18:26:31 -0700 (PDT)
Date: Thu, 07 Apr 2022 18:26:31 -0700
From: Jack Gallegos <jgallegos@uberasch.com>
To: "usrp-users" <usrp-users@lists.ettus.com>
Message-Id: <18006c7adc5.11592e850591606.557968034305965161@uberasch.com>
In-Reply-To: 
MIME-Version: 1.0
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Message-ID-Hash: T6IGY4HJUYHNXICWW6RK3S4BFKYZEWAY
X-Message-ID-Hash: T6IGY4HJUYHNXICWW6RK3S4BFKYZEWAY
X-MailFrom: jgallegos@uberasch.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] 10GbE NIC for USRP-2944/X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T6IGY4HJUYHNXICWW6RK3S4BFKYZEWAY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8695577950964552582=="

--===============8695577950964552582==
Content-Type: multipart/alternative;
	boundary="----=_Part_1908361_1991048530.1649381191109"

------=_Part_1908361_1991048530.1649381191109
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Has anyone had success with a 10GbE NIC other than the recommended Intel X520 card for the USRP-2944/X310?



And, does the USRP require 2xSFP+ for 200Ms/s RX capture, or is 1x SFP+ sufficient? I only need to rx on one mboard (UBX160) but at the max sample rate.



Thanks,

Jack Gallegos
------=_Part_1908361_1991048530.1649381191109
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head><meta content="text/html;charset=UTF-8" http-equiv="Content-Type"></head><body ><div style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10pt;"><div><div style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 10.0pt;"><div style="font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 10.0pt;"><div>Has anyone had success with a 10GbE NIC other than the recommended Intel X520 card for the USRP-2944/X310?<br></div><div><br></div><div>And, does the USRP require 2xSFP+ for 200Ms/s RX capture, or is 1x SFP+ sufficient? I only need to rx on one mboard (UBX160) but at the max sample rate.<br></div><div><br></div><div>Thanks,<br></div><div>Jack Gallegos<br></div></div></div></div><div><br></div></div><br></body></html>
------=_Part_1908361_1991048530.1649381191109--

--===============8695577950964552582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8695577950964552582==--
