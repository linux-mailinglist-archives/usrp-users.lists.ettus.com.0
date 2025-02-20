Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C5867A3E0ED
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2025 17:37:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AA2C93860BC
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2025 11:37:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740069433; bh=9sAk6BG5PyhQApFCEa16nW6VknV+Qmnbdtm1JfVhNRw=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=J2rUMwEQYcqKCpW3E2irVNZ2+Yfrdri9fMDg6i5wQav1Nn8hju5vJG/+CNuReLx+L
	 6wViATTvuWeIo9PtRMpBfkoy9yTPUigQlZvbohW2PqotRJo9CNiNDnyOJkRsGTcZ0q
	 8IGzpR6hPHlky1xTkq6VRGvjDkpcmOpTDWFULhCj9pk1pb669XwFiB/x847nYEukTq
	 KXBRqahntKsIMZdtvwllx+rwNZMbw9k5rG1FLKG4uI8X1EEx+pWggVoIH4CC0cZ83c
	 ycKLsG0iW+Unq3If1SbkxqxQTH68ejDmRyBe+jHoHofOoSF1K/h9B9EB1mU5IhXvHO
	 yST3z4Bbx93PQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EB3B5385D1B
	for <usrp-users@lists.ettus.com>; Thu, 20 Feb 2025 11:36:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740069383; bh=/CQMTYkyeyWyAXNm45LkxUb/zgWMba7zSwfEJOVHVEM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=E1lHsr+Txeyg2sF6dTeG7bU+eZElZVEtOQxwqbq0BmjI6CsQoksdu90Nzzsl6d1Pm
	 uEG2Y7WVa+jgtwvE+Bl0SP5pR56s49YnarztQowG5S2zRkxmqfuMl+xOyp8JV3lOsB
	 6oBerGh0lo7baBAPrafxx9Lha9rPZSGEyp3DVUYSObTmOFz9I5xFqe5J4rQEl+tUGr
	 s+WhKiJ7hG6A71Ft2oYxmaRovIk9eIO3Fus9uGLqmzHjrh4RVXIIJ/BMzOVxXuNrAj
	 BH0gBB1fuivURQrOkNkFUhIsokz1AZuEIWHru2bhZhYr1EGaZhjEWq74ASMWIXeF0O
	 3iUzZ22sLuXBQ==
Date: Thu, 20 Feb 2025 16:36:22 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <3aPQbD9WfrahaBFRTVZe4DA1Za6bVMLpCWWvkTDccNM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A6SWEWqrkcxXHHiUXRCoz9SYXndZmA069yQHUmhrWwOKg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: KOTI3JMVSORBYX6BYH4LXXKTA5DAO7O3
X-Message-ID-Hash: KOTI3JMVSORBYX6BYH4LXXKTA5DAO7O3
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KOTI3JMVSORBYX6BYH4LXXKTA5DAO7O3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2631670946275630528=="

This is a multi-part message in MIME format.

--===============2631670946275630528==
Content-Type: multipart/alternative;
 boundary="b1_3aPQbD9WfrahaBFRTVZe4DA1Za6bVMLpCWWvkTDccNM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_3aPQbD9WfrahaBFRTVZe4DA1Za6bVMLpCWWvkTDccNM
Content-Type: text/plain; charset=us-ascii

Hi Martin,

If there is any other suggestion for me to try please let me know, I am not really sure what to do next.

Cheers,

Marino

--b1_3aPQbD9WfrahaBFRTVZe4DA1Za6bVMLpCWWvkTDccNM
Content-Type: text/html; charset=us-ascii

<p>Hi Martin,</p><p>If there is any other suggestion for me to try please let me know, I am not really sure what to do next.</p><p>Cheers,</p><p>Marino</p><p><br></p>


--b1_3aPQbD9WfrahaBFRTVZe4DA1Za6bVMLpCWWvkTDccNM--

--===============2631670946275630528==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2631670946275630528==--
