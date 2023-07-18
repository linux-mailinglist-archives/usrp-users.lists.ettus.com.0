Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CA375766F
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jul 2023 10:19:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 00E963849D5
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jul 2023 04:19:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689668350; bh=Cwu8sx0DR03m2sTOlPd/zUsRMiCx7aNYFVqCuEjievk=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Bd0VqRUOmjI6YVCD0BgjuzKh7Le++RDukrR+ZtVKYbKVGXq491ZF+e5xAebCZzqhX
	 LGlReLvLLDhRBYH3jFUGqX914/KaQGz1s1Hcao9hm4EJaRV050HVu2UIWVuXekZpG+
	 pl/Mf0IfovRqSY5G5AwQukPvxpTeNvIeorOyK9P9tJdGhesIpaXosz1zGohSgfOY3g
	 olF/mjjjYtkISqJHpLtRpNhaxbwoyF6BHSyybM2TR9WTwVKEDCFCZoHuo8DLgHQTd8
	 JL6jQetQbaxa+HZWyJT23VOBpKTPwTbMgjPsBEs6MyrHg9lnD+HkJmAcJz6UNXLYgl
	 Zyo2DJ5rD+cJA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E8F973845CA
	for <usrp-users@lists.ettus.com>; Tue, 18 Jul 2023 04:18:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689668335; bh=+h9uN4qtyq2btFM3M3E8FEW1EaxPNRYy1vDSQYFmoxc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ls2h4PmOQXfWf1DbkEpR0cnsVDj9WnH/xkvYK/8jnhN8qG9l8EHWB/ekqDWcbZQ5O
	 lb1sXV7NPJI2w/yaRiNfIcQoSJBEc0AroUStDwAG/5tQ1SbjUb9++tJKeef2bwIp81
	 g/EKy+A0DQybs8s/bVDIweI67QPiOTeM67LShHQ1coKAS18+Gud8VVaMHyIuJIFcML
	 7zt4yKuJw9wmEwbfPBH1gUYBFczcUTF1J34rs4OLe1qiBgdN62ZbDF1nqePLjQywbp
	 6Q+9pj8FoYmc4fbZYEnsu8M8zgJ3ANPo9t6DwslhzPBfJBqGskaVhhY+Lyjg8Q5SCV
	 eP/RnCkZWJIfA==
Date: Tue, 18 Jul 2023 08:18:55 +0000
To: usrp-users@lists.ettus.com
From: yangamelia2333@gmail.com
Message-ID: <ulyatRuejxdZE3FO8OLb9PjY41SrHcPU2EdfM2YZ2XY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: i8OuuPJdFnwbiIZRUqieh1Trd9c6GIhUctdxjweFI@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: AGZ77L67MA6G3GDBXLC2OW5RC2KVSWGS
X-Message-ID-Hash: AGZ77L67MA6G3GDBXLC2OW5RC2KVSWGS
X-MailFrom: yangamelia2333@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC4 gain_block_control Python setup
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AGZ77L67MA6G3GDBXLC2OW5RC2KVSWGS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8757193691564202704=="

This is a multi-part message in MIME format.

--===============8757193691564202704==
Content-Type: multipart/alternative;
 boundary="b1_ulyatRuejxdZE3FO8OLb9PjY41SrHcPU2EdfM2YZ2XY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ulyatRuejxdZE3FO8OLb9PjY41SrHcPU2EdfM2YZ2XY
Content-Type: text/plain; charset=us-ascii

https://lists.ettus.com/empathy/thread/U6G2U7G2PYSPCSZG5WZRA4A7NWDKOUZS?hash=LFVUTVERRZCWQN7PDUH6SDTFAMY46JZM#LFVUTVERRZCWQN7PDUH6SDTFAMY46JZM

Maybe this way is more directly to implement block control, I will try it.

--b1_ulyatRuejxdZE3FO8OLb9PjY41SrHcPU2EdfM2YZ2XY
Content-Type: text/html; charset=us-ascii

<p>https://lists.ettus.com/empathy/thread/U6G2U7G2PYSPCSZG5WZRA4A7NWDKOUZS?hash=LFVUTVERRZCWQN7PDUH6SDTFAMY46JZM#LFVUTVERRZCWQN7PDUH6SDTFAMY46JZM<br><br></p><p>Maybe this way is more directly to implement block control, I will try it.</p>


--b1_ulyatRuejxdZE3FO8OLb9PjY41SrHcPU2EdfM2YZ2XY--

--===============8757193691564202704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8757193691564202704==--
