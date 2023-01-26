Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C3A67C5B8
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jan 2023 09:24:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4839B38417F
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jan 2023 03:24:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674721458; bh=Yj8GHsyM3O+t/6DJBRCbtg8G6Vzb+C7wn5c1z0FvVls=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=A6iHCP1VwrvFby1lXBS2NrztZ3f5BPJwQWPfm0cIgU4ar+Y9voRNWgysOg99hWkoq
	 vWrBL5/Rf/llVR1GyYSpjf6VRDoYIQ9VJ+bfI4oM6fhQtgT0sUQ13mJGoR5WAYJRBf
	 fRN5gE0qqukpXkKTUQygFcsbczWkU1VhxpzItPX10T19Yo+fIfK9uL0ED+cLvAtAnI
	 bzy2Q4T8bTVM7ff7GSW1n6QTR+5RTUveVJE3Nu57JfcUajTPyCUmJ0iiIFrDKoe4XU
	 NBTV9Ub/U+5EBm5FCgoXfQ+z4qHA/VAamWbqOR6cqiOlWPZv8KCq3GSKFWUyi8a98M
	 HYc2HumWfN8+w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 31E65384246
	for <usrp-users@lists.ettus.com>; Thu, 26 Jan 2023 03:23:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674721386; bh=eegneiwq3Ooz4Obh3v+gD22nDksSycNy7tTsaXOjc0M=;
	h=Date:To:From:Subject:From;
	b=kYFLr2U1azgy/p9B/pCNdgUuHJ1vzC1+o9NLp73PCIUPVhsctO4BhDfw3pnDNIUkU
	 5HcPb/iHdgtK0Af0NfR7grXwUgv7x3keVBzCawM7oDvU3a6kJDWiM0FRcHRlQSnwWr
	 Dju1C41YKihiuXl5LT4SZVuByHXnAgBfgtD9E587L0zvjxyxUtC8nzG7kynWWsHdQk
	 SzA4Z9JvhpA9lPN0z+VSUf5+W9X+0LG4GBZSHg1+a7IMeSRSPy1CI4agwp+dNJL+VV
	 V2Tbl2wHbRNgptksAVd/k+D7q5wxuL5xicUYosu88DTjSVkdAQ3FpgbwtfJLWgNGYt
	 63mwXtBDAOCtg==
Date: Thu, 26 Jan 2023 08:23:06 +0000
To: usrp-users@lists.ettus.com
From: daviddimavd@gmail.com
Message-ID: <nmjFvVB9gY8aHBhWqeSQYzORU3BU088RT7mKcDShM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: ZPYN7F6GDOABKBLOODZKBT65NFE2LBGN
X-Message-ID-Hash: ZPYN7F6GDOABKBLOODZKBT65NFE2LBGN
X-MailFrom: daviddimavd@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Dual-Frequency simultaneously receiver using one USRP 2901
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZPYN7F6GDOABKBLOODZKBT65NFE2LBGN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0458118453930779755=="

This is a multi-part message in MIME format.

--===============0458118453930779755==
Content-Type: multipart/alternative;
 boundary="b1_nmjFvVB9gY8aHBhWqeSQYzORU3BU088RT7mKcDShM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_nmjFvVB9gY8aHBhWqeSQYzORU3BU088RT7mKcDShM
Content-Type: text/plain; charset=us-ascii

I am trying to simultaneously receive two signals from Galileo at different frequencies (1176.45 MHz and 1575.42 MHz) using a single antenna, a USRP 2901, and the GNU Radio Companion (GRC) software. I would like to know if it is possible to do this with a single USRP, that is, is the USRP able to receive two different frequencies at the same time?\
\
In the affirmative case, is it ok to just split the incoming signal from the antenna with a splitter and connect it to two ports  the USRP?

Many thanks in advance,

David

--b1_nmjFvVB9gY8aHBhWqeSQYzORU3BU088RT7mKcDShM
Content-Type: text/html; charset=us-ascii

<p>I am trying to simultaneously receive two signals from Galileo at different frequencies (1176.45 MHz and 1575.42 MHz) using a single antenna, a USRP 2901, and the GNU Radio Companion (GRC) software. I would like to know if it is possible to do this with a single USRP, that is, is the USRP able to receive two different frequencies at the same time?<br><br>In the affirmative case, is it ok to just split the incoming signal from the antenna with a splitter and connect it to two ports  the USRP?</p><p>Many thanks in advance,</p><p>David</p>


--b1_nmjFvVB9gY8aHBhWqeSQYzORU3BU088RT7mKcDShM--

--===============0458118453930779755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0458118453930779755==--
