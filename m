Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E976310DF
	for <lists+usrp-users@lfdr.de>; Sat, 19 Nov 2022 21:42:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 73881384333
	for <lists+usrp-users@lfdr.de>; Sat, 19 Nov 2022 15:42:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668890549; bh=Fnn2qMDkKhgwZlqulfm8mJrT6JpphdAihVftsdKXngo=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0LzZcvjV8AYSb9DJZSE9nUL0EqiJ3L81+x/YrHsS71g2hB3du3NfWxY+hrFaeU6Ba
	 3uqgl4Rpjozabrq/d2AHekyUH6IS2EOZpU0dHlDNjT6v8PBddLbZ6/+Zf2Zh4cLARz
	 KLnFO6REDr0xY4RzYcBLLhUgU1Ot9QW5M9aZ1gM2hdvvqwCR5+0QxbC/exXF6a3lqH
	 u6DJ5k3AsJ+jC4O659Hbsc12vLlxhnY6blZGdOb9h3Yc71EYNVe107rLO+bvnZodeB
	 KuiuwglwTgGj2rwHC6cD2AGpmI+OjH8WD9k6lFJjHGG7rA8NtaB4gYOQnwIiUO9eRI
	 NPb5ZSOOVJ1bA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 59B763842D9
	for <usrp-users@lists.ettus.com>; Sat, 19 Nov 2022 15:41:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668890501; bh=jKLBc/oeYuyqO59tMQBDxV8qJiyLm49e9RmASUZB5hs=;
	h=Date:To:From:Subject:From;
	b=nYZP2EXyJeHuE3cO8kHFif/UTTfS9xRgEUFFE9rEQBVHhlh1cd5IiqEu/5BTkvnB5
	 EBLNfbVaGbiuRSIpLriWRn/Gr1i99iOFCULwhPHjnSB48X3QSBorEgN8Ensoo1UjRu
	 gPMrZERwV1D2rCgxbvLDN+5basq0BXO0xoTKdPmZGlZY6QaMexqxFejSmpiySlso6K
	 kvuyXV8/WupWz3lL8iS8kZ25sn36Gx75uBkwuxSKo/S632r0QeBSO38tlYKP4TdhFb
	 IOE8aXvdMuZgO3T2aXr91cVoN0K7F/wBNhvBv03kkf7OSI0GToS5ytsQcOqXqN2jpp
	 GKpeMUZj3ehDg==
Date: Sat, 19 Nov 2022 20:41:41 +0000
To: usrp-users@lists.ettus.com
From: siddsubra@gmail.com
Message-ID: <SjMnf5fJ0VNhdYQqeNknHsmEan2AgwsZTaOAoAxoo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 2OIYJ2YCNPEMIWYVWGO6Q7UH7Z2A6ZPH
X-Message-ID-Hash: 2OIYJ2YCNPEMIWYVWGO6Q7UH7Z2A6ZPH
X-MailFrom: siddsubra@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Jackson Labs LC_XO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2OIYJ2YCNPEMIWYVWGO6Q7UH7Z2A6ZPH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0329998362849088335=="

This is a multi-part message in MIME format.

--===============0329998362849088335==
Content-Type: multipart/alternative;
 boundary="b1_SjMnf5fJ0VNhdYQqeNknHsmEan2AgwsZTaOAoAxoo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_SjMnf5fJ0VNhdYQqeNknHsmEan2AgwsZTaOAoAxoo
Content-Type: text/plain; charset=us-ascii

Does anyone have any experience using the Jackson Labs LC_XO, TCXO GPSDO?

A colleague is ordering one for a separate using case but from reviewing the spec sheet and schematic it seems like it would fit right on the GPSDO slot for a B200/B210? Has anyone used this GPSDO on a USRP before? Would it be compatible?

Thanks,

Sidd

--b1_SjMnf5fJ0VNhdYQqeNknHsmEan2AgwsZTaOAoAxoo
Content-Type: text/html; charset=us-ascii

<p>Does anyone have any experience using the Jackson Labs LC_XO, TCXO GPSDO?</p><p><br></p><p>A colleague is ordering one for a separate using case but from reviewing the spec sheet and schematic it seems like it would fit right on the GPSDO slot for a B200/B210? Has anyone used this GPSDO on a USRP before? Would it be compatible?</p><p><br></p><p>Thanks,</p><p>Sidd</p>


--b1_SjMnf5fJ0VNhdYQqeNknHsmEan2AgwsZTaOAoAxoo--

--===============0329998362849088335==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0329998362849088335==--
