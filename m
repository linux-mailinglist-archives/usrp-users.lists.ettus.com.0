Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 284FE6A946E
	for <lists+usrp-users@lfdr.de>; Fri,  3 Mar 2023 10:50:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A94D538488A
	for <lists+usrp-users@lfdr.de>; Fri,  3 Mar 2023 04:50:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677837000; bh=jwZ1d5ahnAtcVQFoPXQk2wCjvoyPJflC8jQku9+gDDA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VZnbRnbNGF7sp2ERMca2Y/hycE/RS0ylVoBUQkM7OcH8WopStxaP6880ndioI8WiN
	 U+ewrzVWz1t9XfD0aXu4NG7Nrx5Q6I7ansS/L7KsAChrAO0aKQSkgYGLLm5qWFc6MS
	 1Sa0r4ZFg0coLKeQGriRFvrre1mNITt5DS89baWHHWxwokpw7/n7vmdxbAeVMRLbAm
	 lqIRxPgYBTx+WDI3LdJuJ9ixQ6V8dP3WSzueiyBMg6L10Nq7UEVr0a+hhvP26E8CF0
	 2KmlGaqX7OY37hBuGioGxaqrxR53G8AswBJ0lc/ZHLecjcmM8p65gyh/QsfEOhIYOv
	 xSmPpvW7qmdAg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5A84B38488A
	for <usrp-users@lists.ettus.com>; Fri,  3 Mar 2023 04:49:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677836994; bh=9Ahqxw4beR1lmsdiyYZNF0gDysL7l72tA89jqZLKnzU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=KSf2pQzin7tqPGoI+7a8TbYYW5a1oZbFufunoT1sEPsMZ9y9/c9xlxi9TlwcgvWwA
	 VrmjFDdWGOTCoS4OtzjTUGmQ/ZYquXBlaC5qGsVFO1x5Ox40ou7PsInqTYmnQQzDwK
	 MbHyuuz1EwXJfH4kT+qz6/UbA6k5y0+8UPtXw3LkC732DwF3legVZCtMKJW68i4yL/
	 raspXycuPD75AqoOg7nS6b2It7cl1JUolv4tsl6GJ2uqPbGLFlgpqXE2VBCnDdeusa
	 SkA3aeZN8WYOVFMOAfAj6a2l6NfaRkkcHKCTnrh++cgNHPQ9ciijCwHQ8iVEDxjYiN
	 ttW54KDkoq2uA==
Date: Fri, 3 Mar 2023 09:49:54 +0000
To: usrp-users@lists.ettus.com
From: henry.powell.xx@gmail.com
Message-ID: <nsoso1PPebZp0BY3JwyZYUG4iqKX5oPZvaLkz7V3w@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTSZ81Qg80JZi2KO7=8E-FOTP9YxPgbUkZ+yCVQuUhV6DQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: BFUB3OPNZSZBPZRIV4KSURBUX4EJHPB6
X-Message-ID-Hash: BFUB3OPNZSZBPZRIV4KSURBUX4EJHPB6
X-MailFrom: henry.powell.xx@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wrong Measurement Results
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BFUB3OPNZSZBPZRIV4KSURBUX4EJHPB6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7631883550914614110=="

This is a multi-part message in MIME format.

--===============7631883550914614110==
Content-Type: multipart/alternative;
 boundary="b1_nsoso1PPebZp0BY3JwyZYUG4iqKX5oPZvaLkz7V3w"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_nsoso1PPebZp0BY3JwyZYUG4iqKX5oPZvaLkz7V3w
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Rob,

I need complex signal. But I tried with a constant, too. I set what you s=
aid. But the result has not changed. I changed variables. I tried differe=
nt setups in the context of what you wrote like lo_offset to 1MHz, 5MHz, =
bandwidth to 5MHz, 10MHz, master_clock_rate to 20MHz all this combination=
s but still hasn=E2=80=99t changed.

Thank you for helping.

--b1_nsoso1PPebZp0BY3JwyZYUG4iqKX5oPZvaLkz7V3w
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Rob,</p><p>I need complex signal. But I tried with a constant, too.=
 I set what you said. But the result has not changed. I changed variables=
. I tried different setups in the context of what you wrote like lo_offse=
t to 1MHz, 5MHz, bandwidth to 5MHz, 10MHz, master_clock_rate to 20MHz all=
 this combinations but still hasn=E2=80=99t changed.</p><p>Thank you for =
helping.</p>


--b1_nsoso1PPebZp0BY3JwyZYUG4iqKX5oPZvaLkz7V3w--

--===============7631883550914614110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7631883550914614110==--
