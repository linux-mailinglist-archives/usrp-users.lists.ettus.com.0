Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 950548535E2
	for <lists+usrp-users@lfdr.de>; Tue, 13 Feb 2024 17:21:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9C5A9383E1F
	for <lists+usrp-users@lfdr.de>; Tue, 13 Feb 2024 11:21:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707841297; bh=3UoT/5cVUSSs9kusSmP4Ar0wX36sPkuet7iDy0PcTHc=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ZfSO/aSRxdzTmY7Iksj7XmE9EFZa0vZgU+kNioKhSfhYRsieoKOpQiFJI+qaPMFj7
	 rD7xF8edH7J0lHsvG6Atk1AJ0R3i5WKp9ig3TmObCOBJ7Xt+RVp8MuGLyuOF6DmZmM
	 1iQcS9cXI/VpD7QB28y0h/E8nQTFi+N48ydDzEAUpzrokuchKahDKZJbL0TJyrpyay
	 25TlT1AcafvqS/yguJK6yepXO9l77gdkjtNHtVtv5HxYprBA4yKmxzG3ucwW/MY7Ss
	 MHyz7GFq8QgzRh5tw2UM+rp9Y897PvaJKXn5NOeR3eCnb0nSDrDOcy9vfW5M7XzVk3
	 83MjVn9ZFyQ3g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C0B01380BF7
	for <usrp-users@lists.ettus.com>; Tue, 13 Feb 2024 11:21:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707841278; bh=RsUjOVPPvJY+GB1DHgiDRolWfiFclKmdhosRuO5My0o=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Emol5Ew9uKrul8dPGJhSsgTZu3nXhXdJ/Lgsqrxud+6a9C7FWzubRmZi/R33m7zKP
	 eDABRPbO7GtGVX/znlYKIvqzNaGXHaJZxiYWNzPjOm25GeUAgSmZS32wj6QBihQjxT
	 SSxMbXPuP2WCaV3MSG6xFByV5vz2eHYI0mUue6yrX0/OLPIEfiPxXaSfUBW38s8YeM
	 +csFs7+4xbgq0H13MfuI+r5oDKX8sQA4pkKbZPeM0aFxqLii1C2GyxuKgSmtaLwxBa
	 WlgCzvzgtpijFwyF4usHBIOQnZpcrsLRyc7CWT6NdRh4oDYyCF4BGCtdsbxUzHKO3v
	 qffd1HhbD3Y/g==
Date: Tue, 13 Feb 2024 16:21:18 +0000
To: usrp-users@lists.ettus.com
From: jnunez@cud.uvigo.es
Message-ID: <S5jj5EbXWK8qgzAU4cul5WBl1a9QAxwBxIJeHbKOw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 69c5e17d-0e8d-462c-a14a-0113b276c448@gmail.com
MIME-Version: 1.0
Message-ID-Hash: KAXH72P6F7LKOOS7RPKF5OIAMR5SLBEK
X-Message-ID-Hash: KAXH72P6F7LKOOS7RPKF5OIAMR5SLBEK
X-MailFrom: jnunez@cud.uvigo.es
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can't set gain on N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KAXH72P6F7LKOOS7RPKF5OIAMR5SLBEK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4826512980887604098=="

This is a multi-part message in MIME format.

--===============4826512980887604098==
Content-Type: multipart/alternative;
 boundary="b1_S5jj5EbXWK8qgzAU4cul5WBl1a9QAxwBxIJeHbKOw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_S5jj5EbXWK8qgzAU4cul5WBl1a9QAxwBxIJeHbKOw
Content-Type: text/plain; charset=us-ascii

I am using an up-to-date version of Radioconda, both in Windows and Linux. Binary files (like *rx_samples_to_file*) are distributed with Radioconda and compiled on 04-10-2023.

--b1_S5jj5EbXWK8qgzAU4cul5WBl1a9QAxwBxIJeHbKOw
Content-Type: text/html; charset=us-ascii

<p>I am using an up-to-date version of Radioconda, both in Windows and Linux. Binary files (like <em>rx_samples_to_file</em>) are distributed with Radioconda and compiled on 04-10-2023.</p>


--b1_S5jj5EbXWK8qgzAU4cul5WBl1a9QAxwBxIJeHbKOw--

--===============4826512980887604098==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4826512980887604098==--
