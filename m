Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC8090C24B
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2024 05:17:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5893538549F
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2024 23:17:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718680642; bh=NbRwo9leDpb1NpmTLMpJKzwhzPNC8FgaKYlKkQ6lHaQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=St7xvjQSZsVhFi1AUGVtLROhlbpZK77Gg3xTJPc6jGbO5CisSzUp3XCp0PHwyk6QS
	 gj5VF+LP67F/7TDQOkLRH4KY6F03+vcsmelzzvFWW8XvpUOJTt1BelHocY7z0n/fY7
	 XUew868fOYHT50/UFzg/Wb5EGrPerq+ueDSTQJvcY904Y/uKvuYtAK5A5VshiCaaDR
	 nO8XCSr1u99qgMnQoT4Kcv4k6AMf7aQY0disiu9AkooVGZ+gIp8WXn7HqmS3ghpNQG
	 Qd+PX0PnwLHLpFWUsJLDzHCOr4MyLpNOFVeV6HaQ051sNzKDomnh0TxouMnczEIaZC
	 6AbB0jrjvjDug==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5969238526C
	for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2024 23:16:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718680579; bh=1ZK/u8+f/+O0tQbPzak1iQy6HgAia/rfCVej0uJ3ork=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=fd8yd1MGQv5aZ0IUdFrotSdkDru+RHSCqd6YlpIjfiryJ7J2/OLsUY2QpyRSu4SsK
	 9bJ11UcliTWLn15NNDgGTfU/L5qhY7QjMjWBYz1Xg6e8YztWgWq31PQMNCleuHNdLr
	 G2SIzwNtX1czNe0diB+zo/0kSLI1i3FVM4EYnGtswm+QXMdqNKEOU/u4mG6GQZoy8B
	 n24aL8aIagxRZ6yDXPaZ2HH7B4wS2IaoH2R5o/ov0dEXx2A4SxlQsMgRH12gltEYDb
	 FahXRjdrASJbqudpXcZwTz/njYLcZJnuOkhrRfLJVjMLD0zpLu1DltbukGSVm0dw+F
	 4as0ncmLeYXdQ==
Date: Tue, 18 Jun 2024 03:16:19 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <sdBWmxiIN8LsmCI2IfGLRYrK4tM5zxbyMyYBV6E@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 8d1ae2ca-87fc-452f-b807-98dbae3d6c77@gmail.com
MIME-Version: 1.0
Message-ID-Hash: DAS4UHYEU6PUGJLIKNLP67L2LET2L5NT
X-Message-ID-Hash: DAS4UHYEU6PUGJLIKNLP67L2LET2L5NT
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DAS4UHYEU6PUGJLIKNLP67L2LET2L5NT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9202043470849989313=="

This is a multi-part message in MIME format.

--===============9202043470849989313==
Content-Type: multipart/alternative;
 boundary="b1_sdBWmxiIN8LsmCI2IfGLRYrK4tM5zxbyMyYBV6E"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_sdBWmxiIN8LsmCI2IfGLRYrK4tM5zxbyMyYBV6E
Content-Type: text/plain; charset=us-ascii

Thanks for all the great info Marcus & Wade

--b1_sdBWmxiIN8LsmCI2IfGLRYrK4tM5zxbyMyYBV6E
Content-Type: text/html; charset=us-ascii

<p>Thanks for all the great info Marcus &amp; Wade</p>


--b1_sdBWmxiIN8LsmCI2IfGLRYrK4tM5zxbyMyYBV6E--

--===============9202043470849989313==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9202043470849989313==--
