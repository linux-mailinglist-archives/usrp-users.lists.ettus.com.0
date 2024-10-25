Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7AF9B0B9A
	for <lists+usrp-users@lfdr.de>; Fri, 25 Oct 2024 19:33:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 88740385D9F
	for <lists+usrp-users@lfdr.de>; Fri, 25 Oct 2024 13:33:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729877586; bh=ZyG7mn5Fp+6wrAdwar0YqmFdNmZ9Y4k5DYJSZn/2adI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=o1fEX15JB0BTEbzv4Odl3aSBIsCaP7iGrVdFVThx+eZTcLmvFJLNcJpDdyVGqT3mR
	 sYEsDTWr7yRIpf4miWnkiGJTOC6vak7HEpsDHK76912v2R0uI3+ZmoHMpw4UX7M4IV
	 LV81IpzdN8UWBv4jtDXi6mzyItjNCTSXGehegkV9BuEXJPb67P05ctYe5y/Bdwj3ZQ
	 KO/FcFpiZZnJgRK1oe98hA3dSUjAKs3+JQXdezGh7xqz+PzXsK0yi5IcL9qTfsX4oL
	 O2BjbUgWPHG3ih4ERLqBo2xPVfQgyJ1j3TRO4NlA4aq83xautkZwgDpoIZLvC+pjuO
	 izy2XLCnTPQgA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3451F385D19
	for <usrp-users@lists.ettus.com>; Fri, 25 Oct 2024 13:32:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729877531; bh=DerjeWwcdGHKjVnzYQPTsO70LCWh0AcPax+BBpZJhoU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=fAgE4K5c2MavLIARp2ecpiGivZvGBsF2iKOdVU5LymNsk5Q/YwoQVNufXZRPzCOrt
	 jFv/vcMMHQYYTY+lGdiDUTzZmjX/BN9vlI3IrIxJeQQNEGVETIrTlWdXGF4V+riB+N
	 KJhenwdoNchiypFE4oBa4FKEOg2akqmz+PJPv6sd/9Sln+PlAuyw4OJb46THXAyHIT
	 jewGFfHdagz82N0wnkBVj+PxUFtSOfGA1G2C4FOx9R9Ejk7q6TgCDCp2nDjzsZCm7k
	 HBM7pAaM0VVlPQcpD0mxfwLzPs4LAVZdAmeDRo5+I4NjuN7J7xo3/f3JI3oU00cqvY
	 xBFLLJWTA+NJw==
Date: Fri, 25 Oct 2024 17:32:11 +0000
To: usrp-users@lists.ettus.com
From: c1337rogers@gmail.com
Message-ID: <DEmvttsYShF0yNyjowsgAXys8vpt5HgUJqx8NE5Lw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 2a533d7c-eb0a-4ab7-ba51-80d3344e7fc6@gmail.com
MIME-Version: 1.0
Message-ID-Hash: XQIYIYFNR6BAC5JDZO2IU7O45KY6F6NA
X-Message-ID-Hash: XQIYIYFNR6BAC5JDZO2IU7O45KY6F6NA
X-MailFrom: c1337rogers@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 - RfnocError: OpTimeout: Control operation timed out waiting for ACK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XQIYIYFNR6BAC5JDZO2IU7O45KY6F6NA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3786170267026317165=="

This is a multi-part message in MIME format.

--===============3786170267026317165==
Content-Type: multipart/alternative;
 boundary="b1_DEmvttsYShF0yNyjowsgAXys8vpt5HgUJqx8NE5Lw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_DEmvttsYShF0yNyjowsgAXys8vpt5HgUJqx8NE5Lw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thank you for the suggestion. Unfortunately, this did not solve the issue=
 I=E2=80=99m seeing. Every command that interfaces with the radio aside f=
rom uhd_find_devices terminates with:

`[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocE=
rror: OpTimeout: Control operation timed out waiting for ACK`

`Error: RuntimeError: Failure to create rfnoc_graph.`

All other communication with the radio seems to be working totally fine=E2=
=80=A6 Could this be a firewall issue? \
\
Thanks,

Chris

--b1_DEmvttsYShF0yNyjowsgAXys8vpt5HgUJqx8NE5Lw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p>Thank you for the suggestion. Unfortunately, this did=
 not solve the issue I=E2=80=99m seeing. Every command that interfaces wi=
th the radio aside from uhd_find_devices terminates with:</p><p><code>[ER=
ROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocError=
: OpTimeout: Control operation timed out waiting for ACK</code></p><p><co=
de>Error: RuntimeError: Failure to create rfnoc_graph.</code></p><p>All o=
ther communication with the radio seems to be working totally fine=E2=80=A6=
 Could this be a firewall issue? <br><br>Thanks,</p><p>Chris</p>


--b1_DEmvttsYShF0yNyjowsgAXys8vpt5HgUJqx8NE5Lw--

--===============3786170267026317165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3786170267026317165==--
