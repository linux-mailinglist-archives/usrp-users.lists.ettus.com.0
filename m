Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CAA6ED944
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 02:17:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9EC713848DF
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 20:17:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682381862; bh=IyRR/901ublYZwzokJULo6Q6JpHHI/gLuw0d3yAAngg=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=i+uFbZk8sG4RCMOWQeRxtLUMnwDaLBndGf5ICvDnRtvrfuHNZmVk+I7HF8f00NDyl
	 2uuSrnaH9orXx5S7h4bLxQVBDjXSeBuaoXNdne63MJhBYSbu0aS7GpKXQ++w0Qh9Nt
	 USpd8Hw80vtJCmdcGy4+vA5wyP/vFObDlPh58a9hKGijjXIUezpnemukfAOd+WTu87
	 J2ljBQbSOJKlyGWrdnB0myfpA5xYYEidhpLrn57zczafNZRID5UXq9cw0IAUSQM61p
	 rcR1P/Zjsox7UZvTkwC8AIAdxAqVt10N0JCD9eGTVavhdO9lHcNHyMKRsnOkI+TG8u
	 wDE79ewQukjCA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 27F6338489D
	for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 20:17:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682381823; bh=BGi6uUaHyguhAyOrd/mQyFTi1SW+wgGjSg4xMBiwSTQ=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=qct61/CUkEdRue8jpNdUMThvBKj0wS1nQzxhTHCc+N0ltXB6VIETMlmtUa1YKkSfj
	 nb7xoqkPF55GwYkqROv4GwixWHR7D7RVrYGNprNU51Gg4q7JSMaOB3DebytOHc6ho5
	 5jO1ohSPnwDgYJYS8yNzeUVpNzh9nhNb+PBfhosCr1woOx3sw9OqrvgM1q2vUOuLLx
	 P9B+XHoJWb4bNCubIvYSrlshPG4Qp07G+i9nGtOY3y8MHgj1hQTzv6W2P929oDtU9B
	 BgLMtHIUi2N52xBEUE30+mgiB20sh2kJ3cYvLV+22n/eQI8PSgDWG94PZSQmXqJh3J
	 jX1urHJriK/Wg==
Date: Tue, 25 Apr 2023 00:17:03 +0000
To: usrp-users@lists.ettus.com
From: nriedel@serranosystems.com
Message-ID: <4tQxPRwaGjZ4RqB6APYFnpkIi8joiy06zJs1yCJzc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 185e6448-cbb7-de5a-23c7-3c9902828a9c@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 6OMBHYO2BYJCHEEDRDBCHEB324VMG3JU
X-Message-ID-Hash: 6OMBHYO2BYJCHEEDRDBCHEB324VMG3JU
X-MailFrom: nriedel@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Multicast support on x300/x310 with UHD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6OMBHYO2BYJCHEEDRDBCHEB324VMG3JU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8765040320793030804=="

This is a multi-part message in MIME format.

--===============8765040320793030804==
Content-Type: multipart/alternative;
 boundary="b1_4tQxPRwaGjZ4RqB6APYFnpkIi8joiy06zJs1yCJzc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_4tQxPRwaGjZ4RqB6APYFnpkIi8joiy06zJs1yCJzc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you, Marcus.  The subscription to the multicast UDP should not be a=
n issue, we=E2=80=99re Linux-based and the IP stack will take care of the=
 IGMP functions. =20

My concern is if there is something within UHD that would prevent us from=
 using a multicast destination IP address.  Obviously flow control is not=
 going to work with multicast, but I=E2=80=99m hoping everything else is =
OK.

Your point about decoding the CHDR packets is well taken. =20

Thanks,

Neal

--b1_4tQxPRwaGjZ4RqB6APYFnpkIi8joiy06zJs1yCJzc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thank you, Marcus.  The subscription to the multicast UDP should not b=
e an issue, we=E2=80=99re Linux-based and the IP stack will take care of =
the IGMP functions.  </p><p>My concern is if there is something within UH=
D that would prevent us from using a multicast destination IP address.  O=
bviously flow control is not going to work with multicast, but I=E2=80=99=
m hoping everything else is OK.</p><p>Your point about decoding the CHDR =
packets is well taken.  </p><p>Thanks,</p><p>Neal</p><p><br></p>


--b1_4tQxPRwaGjZ4RqB6APYFnpkIi8joiy06zJs1yCJzc--

--===============8765040320793030804==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8765040320793030804==--
