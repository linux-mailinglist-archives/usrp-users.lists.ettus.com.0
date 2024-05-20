Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 573CB8C9B1A
	for <lists+usrp-users@lfdr.de>; Mon, 20 May 2024 12:20:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F058A384A35
	for <lists+usrp-users@lfdr.de>; Mon, 20 May 2024 06:20:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1716200427; bh=BJauZ6pbUEP5P9tvcChkNxwkDj5GX5324ngixpyngQ0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=aYl+dpdhDwpDR8l1E0UeBNVrGNEjpZuae+N8dE4etjL0Ni54Iqg+HBCf0earRbnEY
	 xgYvZMDPNakwsOO8W9Pdq0Qm+3PA7edOUwdHCHhWT64W/NS6OJMs8Z51eRAh+P+34a
	 Rd/kMKrEbXIf5JXWBM+j5Q4UsuaHaWbx8IT2VOy3+Ggm8SzZgXaj8yhsXoMFNGrXlg
	 GSkFozZJaMSg1nw7rsAuDS1y3rsfLdMRojmHt3WZi/Jlp7DdGmvPevSzMnxZ8ORs7f
	 bxI7sdYeBi5KACDCE4/pt5OtUxBN6fnLdF4Lacfbc5p3Ui71q8Od0fwtbLPeQXFOJj
	 UXy/Hap/ekTYQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B91B73849D3
	for <usrp-users@lists.ettus.com>; Mon, 20 May 2024 06:19:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1716200379; bh=TIVCvXByiFsMjjXMvtF/T3bxjAJ2CCcKH9G1PgXN0LU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=O7ahbd3aExBC40NyDoRGv5PMxxxBx3In4GZ5rJcXDAbXgyHsC4KnDtB5yfoVQWkoU
	 Tzw9ga4a2qoDMBB7yt01ANMZ/J+J3L2VLfKf4QlIyBqjQ7K08EN9BcyHTq4cjTTzLw
	 UVz8ecZgS407iWifjTEs2a7XvITtA6I0mFF0M4zClQlBxeXTADY7Un5RpE+wnZOkZd
	 YVjtXHx62eVBHA3XNnZbOh3HooCq35ACidxBZ45Bww9uyjSS130vdv2ILedgao7kHJ
	 7Egk6Ag0O/ezpP5eFvCgtqEhwqsSEU5H+40CNMkode3y29RquEhDRuj/nd43MPXSt8
	 s1fq3Pf5gcUvQ==
Date: Mon, 20 May 2024 10:19:39 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <UG3hfi8KxZySiPYkmdJ3l4VnmAw1qYnIhctePJdQ5o@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=h0M6+Dq_SnoBb8M7UBAude95nCDutkZk92faC=5VZXzQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: TQCCO4FUSQS7BYJTF4NCCUIQ4RWAX7EH
X-Message-ID-Hash: TQCCO4FUSQS7BYJTF4NCCUIQ4RWAX7EH
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC FFT block on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TQCCO4FUSQS7BYJTF4NCCUIQ4RWAX7EH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7715967635597519445=="

This is a multi-part message in MIME format.

--===============7715967635597519445==
Content-Type: multipart/alternative;
 boundary="b1_UG3hfi8KxZySiPYkmdJ3l4VnmAw1qYnIhctePJdQ5o"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_UG3hfi8KxZySiPYkmdJ3l4VnmAw1qYnIhctePJdQ5o
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I used a yml file that is attached to the first message in this thread. T=
hat YML used to work with UHD 4.3.

Wade=E2=80=99s version has some additional parts in descriptions of radio=
s:\
ctrl_clock: _device_.rfnoc_ctrl\
timebase_clock: _device_.radio

and changes in clk_domains (names of clocks from radio_2x to ce).  So my =
version probably shouldn=E2=80=99t work anymore.

In case of having issues with UHD 4.6 you can try going back to 4.3 to ch=
eck if everything on your side is working.

Best Regards,\
Piotr Krysik

--b1_UG3hfi8KxZySiPYkmdJ3l4VnmAw1qYnIhctePJdQ5o
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I used a yml file that is attached to the first message i=
n this thread. That YML used to work with UHD 4.3.</p><p>Wade=E2=80=99s v=
ersion has some additional parts in descriptions of radios:<br>ctrl_clock=
: _device_.rfnoc_ctrl<br>timebase_clock: _device_.radio</p><p>and changes=
 in clk_domains (names of clocks from radio_2x to ce).  So my version pro=
bably shouldn=E2=80=99t work anymore.</p><p>In case of having issues with=
 UHD 4.6 you can try going back to 4.3 to check if everything on your sid=
e is working.</p><p>Best Regards,<br>Piotr Krysik</p>


--b1_UG3hfi8KxZySiPYkmdJ3l4VnmAw1qYnIhctePJdQ5o--

--===============7715967635597519445==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7715967635597519445==--
