Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B79576F0AD2
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 19:26:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E30EA3810E5
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 13:26:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682616380; bh=d2TML+y/zfzVZHA0573TE2eaJCf7Rxt+g6AaeTQc9gE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=OYNwWSkqUteJptJcJJBrazNuAoKj5yH8ekBiJMrTzQRUTwO/iUciQZCg2GY/1fSW4
	 0U1OKg1sE6WesZcrUE1u/F9qCHFEgc/aeY7XYB2XllpN6gx5azD/LpDPnESEu83vfC
	 pUb6QsB3PWyEVTP7oRfROD/59cNvjEYdMugFtDqbA+d2tAncRJQ+NWlnxBUp8g447I
	 y5sj/4hNDI5BkVut/p7m4DdYTwBut1Al/ZArlxWcXBoMwgxlPdXPvkOXGV7Uvj77DS
	 R632iqaeaRvYkzs0SZZShOoEKesqvqDBDWiNKiDq6T+DBXX4SGPeTUDJC23dzMTvE+
	 JZQq92nzQDkxg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C8A16383E74
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 13:25:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682616344; bh=WDB+1maQwJhqpu4HNDYOJh3no25ofgw9nLIwa1RMy7Y=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=xHrbTZFfROsG5bPHsEPjMzFVcs8aNjz5x5l8JC3ATqsOlTC6SpnR1314/2yIS9Lxx
	 eqbKv15cS4tw518W496JmBN4cLLHfbr9NMqLFRRxKgPjLQ6WCSkAGLoKHARLG8+ou9
	 GDmvB5Usf1Y+cK6csubgWbgTub9f8YKCenJHVs58rxbUoyBcf1+UGw7f9qK8WykQY6
	 jqrMtJnnEmjQowl7mu1yhFxbd0i4kfMjFEff/fim4/5q1AB2UIMo1SE86UrwOGNkSa
	 igqF1SROAz+TMtW4MF5J8asygj8eOZ5f8TX1Yr/eTFv5e9CcizISVqIu0KRNXB7Vof
	 weDYDWu8g5KfQ==
Date: Thu, 27 Apr 2023 17:25:44 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <PdsHKwYBKRyYR85Maxr65vFeBwLCSc19O1PQBuISvg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: f35f1062-67fa-1d78-88c8-704977d155d5@gmail.com
MIME-Version: 1.0
Message-ID-Hash: X52SCY7L4OPMGFZZG4ES7E62LJJV2PUI
X-Message-ID-Hash: X52SCY7L4OPMGFZZG4ES7E62LJJV2PUI
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus N321 SFP streaming issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X52SCY7L4OPMGFZZG4ES7E62LJJV2PUI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6949682480349718858=="

This is a multi-part message in MIME format.

--===============6949682480349718858==
Content-Type: multipart/alternative;
 boundary="b1_PdsHKwYBKRyYR85Maxr65vFeBwLCSc19O1PQBuISvg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_PdsHKwYBKRyYR85Maxr65vFeBwLCSc19O1PQBuISvg
Content-Type: text/plain; charset=us-ascii

Currently, I am using 192.168.20.2(as if trying to stream from port SFP1 instead of SFP0) however, switching to either port and using either 192.168.10.2 or 192.168.20.2 did not result in any change. I am unable to ping through those addresses and I ensured that the MTU is set to 9000.

When I use wireshark on the host computer and attempt to connect using the non management addresses(i.e ./rx_samples_to_file --args addr=192.168.20.2,mgmt_addr=192.168.1.151), I notice that host computer is shouting looking for 192.168.20/10.2, but is yet still unable find it, and then it reports back the error mentioned at the beginning of my post.

--b1_PdsHKwYBKRyYR85Maxr65vFeBwLCSc19O1PQBuISvg
Content-Type: text/html; charset=us-ascii

<p>Currently, I am using 192.168.20.2(as if trying to stream from port SFP1 instead of SFP0) however, switching to either port and using either 192.168.10.2 or 192.168.20.2 did not result in any change. I am unable to ping through those addresses and I ensured that the MTU is set to 9000.</p><p><br></p><p>When I use wireshark on the host computer and attempt to connect using the non management addresses(i.e ./rx_samples_to_file --args addr=192.168.20.2,mgmt_addr=192.168.1.151), I notice that host computer is shouting looking for 192.168.20/10.2, but is yet still unable find it, and then it reports back the error mentioned at the beginning of my post. </p>


--b1_PdsHKwYBKRyYR85Maxr65vFeBwLCSc19O1PQBuISvg--

--===============6949682480349718858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6949682480349718858==--
