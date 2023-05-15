Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D29C5702FA7
	for <lists+usrp-users@lfdr.de>; Mon, 15 May 2023 16:25:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CF6D3384AC7
	for <lists+usrp-users@lfdr.de>; Mon, 15 May 2023 10:25:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684160739; bh=G++a6OSkg8nz5atY0G1f7vQC4u8pwfZFT4zDeNAeZEQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=aAa8uYpS3WwrKS8z6v7vrqvsDhEHuYb7Gdb+U5OFaUU3Z42nBUq+2oDypoWv+AYv7
	 VJjX6aNITGQay5OmeSDwuE7jgLLEbSJ12Ym4x470A8CRxWsISKilOBpRSAkYOiOeH4
	 +mzKD/NyrkbA8ga/4vDWmOjVkFJY1SeU62q3x1AEWY8RbRGFALYNaKxYiVI1KxTGRf
	 bsC8x4WkjCuM1IHJIjQuiuPgz3zsjWMn9hslnmBVz4+/s1UX9QG0IM/NJbzJ7ckwEu
	 Ed0epa+wl7EAVT7YFHjjaQI6kldVh0NmplJj6SZI+9ghUJkqW3/6bTON5IiQBfEzmP
	 yDq0dVjMQ2Spg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B6A0E3849C6
	for <usrp-users@lists.ettus.com>; Mon, 15 May 2023 10:25:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684160711; bh=abKWBeNKpRtc85tFxbE+GvkoZZKLO7a4525x19WmJa8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=E4/oyH81uwotZ8MWOjidmmBch2F8CRbWpfPBGK3zqX157GeA5QvREi7R9N1TbdnQ7
	 t8y79ydeT8vN+LkBhyGOD6a2Fn9CAzqCMwfRgTu9LP512sWjlhlunU4x2OBJiSPPjJ
	 HX8e1Jqe8jJfwhE55JJS7QU9erfzGx1ACtiVXAQ2aQjvTYxo9yepRBdmiBSCtboj9o
	 SAdjuRlUA53wIl30IodMLdT9i4MHTaDB6j8aDzRGz3vC9QO+MnCEgU9o/Ooo4T0RBJ
	 C7gq9TXgscjScMkNY8KH1HY8Q+/FHuGoYls2S9kqhIvPqG23BtZ9EAANk5YAvZx5Ct
	 X5h1HEfBe9/1Q==
Date: Mon, 15 May 2023 14:25:11 +0000
To: usrp-users@lists.ettus.com
From: david.fernandes@viveris.fr
Message-ID: <AT7UVksH0OJaIgJKheegNgrNkNy7iIv0KZZWH0PIXWw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTRon1EeGJpzLG7ZMA4kSQ06y0w8dA7P9W63LjjOnM_C6w@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 2ODWFQ7JSREYY7Q7OD56AIRZBDUFCQ7X
X-Message-ID-Hash: 2ODWFQ7JSREYY7Q7OD56AIRZBDUFCQ7X
X-MailFrom: david.fernandes@viveris.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Manage multiple Tx streamers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2ODWFQ7JSREYY7Q7OD56AIRZBDUFCQ7X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7387057684699094760=="

This is a multi-part message in MIME format.

--===============7387057684699094760==
Content-Type: multipart/alternative;
 boundary="b1_AT7UVksH0OJaIgJKheegNgrNkNy7iIv0KZZWH0PIXWw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_AT7UVksH0OJaIgJKheegNgrNkNy7iIv0KZZWH0PIXWw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Rob,

Thank you very much for your answer, it is really helpful. I=E2=80=99ve t=
ried to create several streamers as you suggested and it works. Thanks !

--b1_AT7UVksH0OJaIgJKheegNgrNkNy7iIv0KZZWH0PIXWw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Rob,</p><p>Thank you very much for your answer, it is really helpfu=
l. I=E2=80=99ve tried to create several streamers as you suggested and it=
 works. Thanks !</p>


--b1_AT7UVksH0OJaIgJKheegNgrNkNy7iIv0KZZWH0PIXWw--

--===============7387057684699094760==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7387057684699094760==--
