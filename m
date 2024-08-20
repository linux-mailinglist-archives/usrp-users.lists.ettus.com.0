Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2B4958ACC
	for <lists+usrp-users@lfdr.de>; Tue, 20 Aug 2024 17:12:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B33EE385587
	for <lists+usrp-users@lfdr.de>; Tue, 20 Aug 2024 11:12:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724166771; bh=TWNyCUdFb9xQD24pJ+BLW3EIATOp40yIQjgMt4eWsvo=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vU5oE9T/SRzX8OMxVSXb4ThMyA4LWPv/YF1aUdQYqKshQEsQSINqzWuWBMKV/FYvH
	 AIdgJtiaWaBBWjj7YB6lkNsDfHct2Id/sySRwTvDycvsajYcgUVsJn7euawYSa/Z58
	 A4ebF+vB33PLkUr8SfYPcqm0IAmHpT0/fFDnWvuYJowmkVMpMgiyUp06rHQOyLqR1F
	 +OgjC+tkj0K7sRE2ISlRJniSEa43y1mvkvq6RkZc9PkS+dkRo1K9jo2xUWOWrHZ9br
	 hVJRSX3iz0ciuJCKvlNWHmWh0eF3sBKMLq5s2kmsBOH/7lnM+mlub7gGuMBlfzZvSz
	 p7hbiQc/JXOEw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E6837385448
	for <usrp-users@lists.ettus.com>; Tue, 20 Aug 2024 11:12:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724166753; bh=2S1q9vCrmqwjJhIigYri0YTrXSsXx1fLNxz4Vtkvf5I=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=FjtkPdv/fu6nNsnK/m8AiUKHo4jtvVvhu9JwAy8d4AVkXIVFVhUrqVGUCZkBgQJh2
	 PzguvJeYeUXC0ti2bmfr47UiWbi/DYW5Z8UjHvaXlgYAc43/5ZBUfsNPlPcdz/Q3pB
	 SEWuZvwN5yAR48mANX/7RN7TQJTZRuO2G/+mC/34OxVj2rlFC89g0Bg+dhgUW4h3zj
	 2eXDcKgcM2xv3cOGK247M2fGgmEeVZSNm3jppyYFCFnaQkJLXVQg9zjkA3bx0h+M7y
	 bR1VZYIVlCQGylyNYDe2XXl9yY5ABzH8qCCeXNPcHwNsAb04qwn4XXBSZ0SgUG2b0t
	 H1Aem8g48FG4Q==
Date: Tue, 20 Aug 2024 15:12:33 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <naFoGnbLICmwEJ0DE2umLt4sOXpfqMH6RRCqrdDXc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 61cbbc78-871a-4451-aac5-28e0afbb7710@gmail.com
MIME-Version: 1.0
Message-ID-Hash: IEGZEP52OGDSRE2AIRIR4GPERKFBFPK3
X-Message-ID-Hash: IEGZEP52OGDSRE2AIRIR4GPERKFBFPK3
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Re=3A_Synchronizing_B210=27s_with_external_PPS=E2=80=99s_but_without_ref?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IEGZEP52OGDSRE2AIRIR4GPERKFBFPK3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8443906943116143550=="

This is a multi-part message in MIME format.

--===============8443906943116143550==
Content-Type: multipart/alternative;
 boundary="b1_naFoGnbLICmwEJ0DE2umLt4sOXpfqMH6RRCqrdDXc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_naFoGnbLICmwEJ0DE2umLt4sOXpfqMH6RRCqrdDXc
Content-Type: text/plain; charset=us-ascii

hey marcus,\
\
thanks for your response!.. just for the records, what is your supervision on timestamping / time of arrival, do you suspect we might be able to stamp to a good resolution, say downto us-ns levels between the devices?\
\
eden.

--b1_naFoGnbLICmwEJ0DE2umLt4sOXpfqMH6RRCqrdDXc
Content-Type: text/html; charset=us-ascii

<p>hey marcus,<br><br>thanks for your response!.. just for the records, what is your supervision on timestamping / time of arrival, do you suspect we might be able to stamp to a good resolution, say downto us-ns levels between the devices?<br><br>eden.</p>


--b1_naFoGnbLICmwEJ0DE2umLt4sOXpfqMH6RRCqrdDXc--

--===============8443906943116143550==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8443906943116143550==--
