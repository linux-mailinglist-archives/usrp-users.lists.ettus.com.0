Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7E28011C0
	for <lists+usrp-users@lfdr.de>; Fri,  1 Dec 2023 18:32:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F0D08385890
	for <lists+usrp-users@lfdr.de>; Fri,  1 Dec 2023 12:32:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701451923; bh=vfL/4fvubHQHbF0BRalADraZjEmhru8z6Smsjb50cvs=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=eMUMfalSu1kM9+2BbCAy3Bag3x2luLT/0RfJlxI1Gv3b8Fswhxtt3QKwfUUUpdu8x
	 sbWN8PgYaXsBTTlibKsKYvJ/hi8JH4ZJ7Inr+DElBpF3Mu+jZr44j+ltXhtmoiNjd+
	 pEFg3vOFPNChWWeHzLtpzUDa2oSozw1RhdtTtH1sIJF5EOexcY30hqnT4vducrNoMZ
	 MAXDFHi2VsXQyR/H210N4xJel1rR/01PVURDIXh/ZHNIAKUn+/VNxF9bFCi7FyasMB
	 e3KABJSnABYSFhJ+4BLbwHdigUwjPMQEEj/vMYiwvd+oJhZbZB9ROJgp7UUm2D3SOS
	 UhXXX+0BjANsA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B2406385AEA
	for <usrp-users@lists.ettus.com>; Fri,  1 Dec 2023 12:31:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701451871; bh=dMCzykaFbAt5cljLR5iy3645y2vCZQZGES6GmvMBwvU=;
	h=Date:To:From:Subject:From;
	b=Fb60nEtE06p9KqHxDwOa/QAQr89xQZvxzQqRYEmfWbkoU7SXNnz5ZKqq2+4NgNBE1
	 tXE9MSToSMRA2D0qGFO6qbEic2JztiOA3Uvckx0f7wRgPPWZsQFabXvCnIqnI9wsKg
	 cfHjrs0bH6bJhNa1Ep8W2OyX6L5Au9PZl0KqSNF9YXXSUKPW2M0XxHURCsWYnzRD3w
	 p1qAcSFr6V8OwcL82GdlJQg4lt/yn2C57mM+m00JyCJ+oEQHDix4JBO6ObV2iDTx1z
	 2Ju5tX00Bm60LYZZbbxGXFFmtMqKDKT/yYdTZrILTmTs3VKyKX/nFteThh+/5C6QR5
	 /NSyed3/ghyuw==
Date: Fri, 1 Dec 2023 17:31:11 +0000
To: usrp-users@lists.ettus.com
From: purva.joshi@phd.unipi.it
Message-ID: <ZiObs8gKcVL781slr5wqS0mwe9z9d3UApxHyaVqGBgs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: CSFXIRUGIY5OHKLKKY3JBPPII77NCLMW
X-Message-ID-Hash: CSFXIRUGIY5OHKLKKY3JBPPII77NCLMW
X-MailFrom: purva.joshi@phd.unipi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CSFXIRUGIY5OHKLKKY3JBPPII77NCLMW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9134775655133318690=="

This is a multi-part message in MIME format.

--===============9134775655133318690==
Content-Type: multipart/alternative;
 boundary="b1_ZiObs8gKcVL781slr5wqS0mwe9z9d3UApxHyaVqGBgs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ZiObs8gKcVL781slr5wqS0mwe9z9d3UApxHyaVqGBgs
Content-Type: text/plain; charset=us-ascii

Dear All,

My name is Purva Joshi. I am using USRP N310 from Ettus Research. I am not able to find my device. I am using Ubuntu 18.04 with UHD version 4.0. From physical set up, I have everything ready. If I ping for the USRP IP it gives me positive response and from "ifconfig" command, I can see that my wired connection is okay. However, when I asked for "uhd_find_devices" this command gives me " no device found". Kindly help me in this matter.

Thanks in advance.

Regards,

Purva

--b1_ZiObs8gKcVL781slr5wqS0mwe9z9d3UApxHyaVqGBgs
Content-Type: text/html; charset=us-ascii

<p>Dear All,</p><p>My name is Purva Joshi. I am using USRP N310 from Ettus Research. I am not able to find my device. I am using Ubuntu 18.04 with UHD version 4.0. From physical set up, I have everything ready. If I ping for the USRP IP it gives me positive response and from "ifconfig" command, I can see that my wired connection is okay. However, when I asked for "uhd_find_devices" this command gives me " no device found". Kindly help me in this matter.</p><p><br><br></p><p>Thanks in advance.</p><p><br><br></p><p>Regards,</p><p>Purva</p>


--b1_ZiObs8gKcVL781slr5wqS0mwe9z9d3UApxHyaVqGBgs--

--===============9134775655133318690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9134775655133318690==--
