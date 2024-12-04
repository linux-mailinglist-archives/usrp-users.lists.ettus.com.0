Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E12E19E4A00
	for <lists+usrp-users@lfdr.de>; Thu,  5 Dec 2024 00:49:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C13C2385471
	for <lists+usrp-users@lfdr.de>; Wed,  4 Dec 2024 18:49:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733356180; bh=DTYu7mw5Lo7d+Ly4taXGap+SkVDhzeBqGLCJEI8kqfY=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=bMdHfAp/vwLshZ1veJ36W6TKmtJJzughQ6qFMYvx8F46VRZNhG2WnEkC3FdYwvxIU
	 GO4znkslqv0P6wiB7HBygzXOy76XhrLipzYosdYeZxBAwxeCSsw5pLTtSz6SMzWfzf
	 SFV7TusHEP/dWbpFlo/baZaSwIBvAqJJt9cjoBmN57GklaeF956ivHn4QS2qSchXCr
	 0t9q6guMAY3q30jIxk4Vq3AzxuJaNI/dsfjwKJ7t5AZzgqaoOkOhjct74VfZJdRzKw
	 kQ8mWkBFWb4DG8J9VVwErHhnXRCBSA7y2LEj5uL7VRsjEkdPxw2gyutVs5ItMNem8S
	 88L/90zGTyRLw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E4BC7383FB9
	for <usrp-users@lists.ettus.com>; Wed,  4 Dec 2024 18:48:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733356139; bh=07iVoUAyYEspyM4avmvzCk1oipyFaVdcwgj8fMcIEXU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=U7gk4g0IfS7c0YGgGK8pe41ToXL6jWu3aHD1fzyQfDplSvQW+laPBwWI0PRT+O34s
	 jPMj7U3QQ2XsXFZxviWeJ11PFzV9EL2h0SBTDF4QoCr+W2qrLmHQnR68eWdBIC6FO8
	 6b2sGM//TzBFAt/VkGvyUZq3rMYvwWkNoLoYMEl4N80rJAcF+Sth08Rm2auDWDqkS3
	 ER8rzQJJgc+hW1Emq5Bv7LI5YHiiqXdnaJ2+1/yXI5d3/pRpuyDuz7GjlPjUVKoXQi
	 2V7Yuaw+FbTMDzDExLlTCUA2RXHk2QD/9Ih1IZMEPRZ95ClZ43yh0TKytT9qN2lZKB
	 JEfMeu4S1hsug==
Date: Wed, 4 Dec 2024 23:48:59 +0000
To: usrp-users@lists.ettus.com
From: dhpanchaai@gmail.com
Message-ID: <Sb8DkBKqnVQ3lXeLeWEMZSbTbqv2Oqi4TaLVNdMS3YI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: a38cfc69-ef62-4668-9da0-51008eeefd38@gmail.com
MIME-Version: 1.0
Message-ID-Hash: QRFFVZTSTF2TBXVU7KXYQ3KIS7NGOURX
X-Message-ID-Hash: QRFFVZTSTF2TBXVU7KXYQ3KIS7NGOURX
X-MailFrom: dhpanchaai@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trying to run rfnoc blocks in example uhd folder
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QRFFVZTSTF2TBXVU7KXYQ3KIS7NGOURX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8199722488788089108=="

This is a multi-part message in MIME format.

--===============8199722488788089108==
Content-Type: multipart/alternative;
 boundary="b1_Sb8DkBKqnVQ3lXeLeWEMZSbTbqv2Oqi4TaLVNdMS3YI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Sb8DkBKqnVQ3lXeLeWEMZSbTbqv2Oqi4TaLVNdMS3YI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Ok, i=E2=80=99ll give that a try

--b1_Sb8DkBKqnVQ3lXeLeWEMZSbTbqv2Oqi4TaLVNdMS3YI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Ok, i=E2=80=99ll give that a try</p>


--b1_Sb8DkBKqnVQ3lXeLeWEMZSbTbqv2Oqi4TaLVNdMS3YI--

--===============8199722488788089108==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8199722488788089108==--
