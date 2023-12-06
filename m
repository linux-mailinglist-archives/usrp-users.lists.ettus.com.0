Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7918074BD
	for <lists+usrp-users@lfdr.de>; Wed,  6 Dec 2023 17:18:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 467C7385063
	for <lists+usrp-users@lfdr.de>; Wed,  6 Dec 2023 11:18:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701879517; bh=z3okmS89G5aQLGzCEgBwLYB+6vFTi/u4MH7mGt5uT6o=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=xKl7tvZxrMxNbAkBhXyx9Sueyg5avUGBF+WFGx50uDwj2G9Mr/WSzbrYhfibFYDU+
	 C2aC2hHZjVwM5etdvElyUCCp8n5pPJqgUFu6RG6MXc5hKaefhuy725UqQv37ey+s5Y
	 T4SZk+gRdTHWyZUkiKl/aM1En9kc7NqMb85iZMA/f9DPdfn+ZTv8By4mgywmlJ34f+
	 FM9fvJMbOCOFAw98Ybq6ZyQVwY47SonmhGZ1jwY5u/Bq5pUkuHb0s6he27OmOy9v8P
	 Wt9gqr1Mr16hmoegYlneNBhmtK1bZB9oq2O/X8IHDXFIXsOJ8SNEE4I24Jwkq88o4e
	 mSJDSFcvy+llQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 74597384A46
	for <usrp-users@lists.ettus.com>; Wed,  6 Dec 2023 11:17:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701879464; bh=nkvDW2kjewSqknVHEBBep0Kzcix5tzdKu+pswDNF2Jg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Ep9RLJgF5m9JbH6n3xJ+gyaUMfbuelhJZiQFFQRcsOLtNUQoS/AQghZGaqpebRxSz
	 Dj89w3Q7hkr+9Kpart2hlif4znBvoXsDB8MTuzo5pZKuh8gNrhU/NANhcJ519BKodC
	 d9QKMFCnNSHXkdgmaEv9GKwpmGoveNUZ75Y1fbvijBVoOdq9HKfZ7oZLB05FbCiAs2
	 XTSzk20d40akLi1+en3IY+LafaZAi02IWduSjUt2838yWYzvUWTjXKJJo8QB5QKF0k
	 auLt9fY604ZmncMvlY9OvxhM3TaViLOCDHjTyrikIwKkEzsJvZ3BRXTgCKMJGqH3M5
	 YsjofRas7U9TA==
Date: Wed, 6 Dec 2023 16:17:44 +0000
To: usrp-users@lists.ettus.com
From: purva.joshi@phd.unipi.it
Message-ID: <QpCVeTMaowTKyyP9BYa3jgPsUyl7o1CFdQvrmBTKzo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 3e8eaa65-2fb2-4bf7-a305-ab79f8a29420@gmail.com
MIME-Version: 1.0
Message-ID-Hash: DTHKEHZQBI47F5MJER6PTNYEPME4LS2U
X-Message-ID-Hash: DTHKEHZQBI47F5MJER6PTNYEPME4LS2U
X-MailFrom: purva.joshi@phd.unipi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DTHKEHZQBI47F5MJER6PTNYEPME4LS2U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8785093627135997924=="

This is a multi-part message in MIME format.

--===============8785093627135997924==
Content-Type: multipart/alternative;
 boundary="b1_QpCVeTMaowTKyyP9BYa3jgPsUyl7o1CFdQvrmBTKzo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_QpCVeTMaowTKyyP9BYa3jgPsUyl7o1CFdQvrmBTKzo
Content-Type: text/plain; charset=us-ascii

Dear Marcus, 

Many thanks. When I tried to update the image to my SD card on my host PC, my PC stopped working as it showed me an error for BIOS UEFI Utility boot mode. Once, I will fix this bug, I will try your solution and Let you know soon. However, thank you for your always support.

--b1_QpCVeTMaowTKyyP9BYa3jgPsUyl7o1CFdQvrmBTKzo
Content-Type: text/html; charset=us-ascii

<p>Dear Marcus, </p><p>Many thanks. When I tried to update the image to my SD card on my host PC, my PC stopped working as it showed me an error for BIOS UEFI Utility boot mode. Once, I will fix this bug, I will try your solution and Let you know soon. However, thank you for your always support. </p>


--b1_QpCVeTMaowTKyyP9BYa3jgPsUyl7o1CFdQvrmBTKzo--

--===============8785093627135997924==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8785093627135997924==--
