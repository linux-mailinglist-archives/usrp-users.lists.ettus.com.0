Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 816EE9564E4
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2024 09:44:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6A895384AD7
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2024 03:44:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724053467; bh=UxDJk5IPBaw4aqg3y0MePxkJzeOaKSlYtGNiuj3Taig=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PoaE6CaI5uNjiMQW0eKZD5hLORQR2mieV9UUUiA0DpuMbU3t3aS6KjzA2GxU+5qQp
	 SlFT+lgC//lKkzRbZxwwSt6nrOlV0JTHHtPo2QTz1QO2xDbq1mCXmD4HcBLoYqWW/i
	 usdmOOLcheeNHrmNhU9cVgRRNn6klv7xGgrtzo95764ZCv2nJEHkx8HYGqPSsXHqcX
	 6rpilXUvjR4j9++lUSMZEW+fh45+reak0XEMSTpUSZHONBWu7AxGQ8hNEVYYajEd26
	 uQl5o1on8Zl6Tn0NxI241dYEWVRZBoIiwI1ULCpEGwexHvNFfv8vCkz/YBQiiszkcz
	 za/9EwZ1OFreQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 26671384AC0
	for <usrp-users@lists.ettus.com>; Mon, 19 Aug 2024 03:43:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724053429; bh=IC/HebqgFcVwek5gCkJzSlAHcqyxemzLZDzmDryJMd8=;
	h=Date:To:From:Subject:From;
	b=kuLKtOZBgVNXMKQjJ/tev6U0Ow0LJaXLnCQnV8EWqbqb4x2CQNhRuq7ttuQNj0Ec6
	 KQUu21QlQDg8YfGpt2X8dml93XoS24uDxeOEA/wDXNj/kgF39+F2qPn+KIsULctL1w
	 fRnpYDSdZNg62QtmpwM3mAJh7bORowvybcTNgCNvxuA3xuZmsvfTprA/Cs+oNUcf3C
	 Dz1gw5yYTTF3LL37kErwuK59RdxCeK8UKFlH7VcH/gzbLB3y0YHx8wPxoEu4LKVS86
	 7bi0HVkK9qbsdvAK1vRLlM9kP2y2N0XPXSqjPFW19EemSljiN5g9IjyqxQlIlDdoW5
	 gNzLky1f2A6/g==
Date: Mon, 19 Aug 2024 07:43:49 +0000
To: usrp-users@lists.ettus.com
From: hafsa.hasaan.sohail@gmail.com
Message-ID: <dkXWf45dHU7yrC9pw9gQm9Hz0bgRyvOF39GuZqDM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: PPPLWU2WUASR7RO4AUEEGR7ORFQPUYBC
X-Message-ID-Hash: PPPLWU2WUASR7RO4AUEEGR7ORFQPUYBC
X-MailFrom: hafsa.hasaan.sohail@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] LFRX daughter board compatibility with ni USRP 2930
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PPPLWU2WUASR7RO4AUEEGR7ORFQPUYBC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4938934610959037524=="

This is a multi-part message in MIME format.

--===============4938934610959037524==
Content-Type: multipart/alternative;
 boundary="b1_dkXWf45dHU7yrC9pw9gQm9Hz0bgRyvOF39GuZqDM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_dkXWf45dHU7yrC9pw9gQm9Hz0bgRyvOF39GuZqDM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I am here to inquire=C2=A0about compatibility=C2=A0of NI USRP 2930 with E=
ttus LFRX daughterboard. previously i am using this daughterboard with NI=
 USRP 2950.

--b1_dkXWf45dHU7yrC9pw9gQm9Hz0bgRyvOF39GuZqDM
Content-Type: text/html; charset=us-ascii

<p>I am here to inquire&nbsp;about compatibility&nbsp;of NI USRP 2930 with Ettus LFRX daughterboard. previously i am using this daughterboard with NI USRP 2950.</p>


--b1_dkXWf45dHU7yrC9pw9gQm9Hz0bgRyvOF39GuZqDM--

--===============4938934610959037524==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4938934610959037524==--
