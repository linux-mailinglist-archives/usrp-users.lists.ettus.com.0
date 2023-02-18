Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 047ED69B69F
	for <lists+usrp-users@lfdr.de>; Sat, 18 Feb 2023 01:14:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 69173384921
	for <lists+usrp-users@lfdr.de>; Fri, 17 Feb 2023 19:14:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676679255; bh=Dq/l6ZjinfegjX9ZIT/C3v+H2N9LSAw96CQ99+51Tgo=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RLgLGApm4RByFprZKvz4cNFIGsYlHbwNQLOCQMGdY5rVTIUHCbH38NEF9Z6BwSX5/
	 U1fnxhCzTLac77nKiBww94/gr3kKD/TIjicUuxRmPcIVUPrAnJggAOUO5WXNnFEwb7
	 rRvorP2yrtfqBdi1qgbniGnEceQ1BnMCXLsDwwR1kgMp7BsmCQW2TOn7b+h+8sob1F
	 HKa9UXoR6qVyiI+Kikfy1W8d7NuVD71u18MenxD7tVaxIBuwvl7mfMvsGEx/DiLgBP
	 fOGdnx0jnm1hpXEtEaBD3R6eXoJM7+mcYZmxl7iT+cBV5r7XVqKh0UKgGjuSs23xtM
	 G/q0fZ3JPmIIQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 156313848FF
	for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 19:13:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676679211; bh=88ehNxJUaVeBWcO8jWiDYEOX9//ZaoHak6bwoLS2BD4=;
	h=Date:To:From:Subject:From;
	b=cLn2+uH6yiWu4JTyFb/uf/d4T+naGoZIMmKRWmR7aDfEBleF9JlFwAh1FdX+EJvcW
	 s01qoGEm59q5QqEKWJtY6ktKld5C9xBOk1GeFz1lyCQ8+fUoMNlnw9y94cH24Ghrb8
	 kSN4DTpvI6fMHcTJk7/2J2esTVEfYNlgDXxV0lxWJtYhI0YSbkoWw+vNysADHk7SsM
	 8XlrSAm1l2Vj4doj3rhBRlGwDric0zD3qsLRFvCTuZ8mUtUn2A44XCgrO7PKzd3FVA
	 vYiigZGrLBeO82Yzt0dcdat69YBzB8G8oGn7XXSGYVbmKQO125z1teCtkEBCQAlrbK
	 jdZqEOudKW3iQ==
Date: Sat, 18 Feb 2023 00:13:31 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <WK4flaGYGN6Sxx4jsloZhwkFmPZMXMpyqpDhFfOwh8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 5I45XA24RGHS6JDFKNIS2Y4Y5W7ZR4DA
X-Message-ID-Hash: 5I45XA24RGHS6JDFKNIS2Y4Y5W7ZR4DA
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Saving TimeStamps and Metadata
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5I45XA24RGHS6JDFKNIS2Y4Y5W7ZR4DA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2372712636588792766=="

This is a multi-part message in MIME format.

--===============2372712636588792766==
Content-Type: multipart/alternative;
 boundary="b1_WK4flaGYGN6Sxx4jsloZhwkFmPZMXMpyqpDhFfOwh8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_WK4flaGYGN6Sxx4jsloZhwkFmPZMXMpyqpDhFfOwh8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I have an application where I collect I burst of samples from Rx ports, a=
nd stream the samples into my host computer. I would like to also store t=
he timestamps from the packages onto the host computer, as well as store =
from which RX port the signal arrived so I may separate the data in diffe=
rent files.

I am a little lost however how to do with within the API. I see there is =
a call =E2=80=9Cusrp->get_time_now=E2=80=9D in several of the examples, b=
ut it does not appear this takes the timestamp from the bursts themselves=
.

Is there a way within the existing API to retrieve the timestamp from the=
 packets at the beginning of each burst. I also see a =E2=80=9Cget_timest=
amp=E2=80=9D in the API but I am unsure what packet this would get the ti=
mestamp from if the burst has multiple packets.=20

Also, is there a limit on the number of packets there can be in a burst?

Thanks,

Joe

--b1_WK4flaGYGN6Sxx4jsloZhwkFmPZMXMpyqpDhFfOwh8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I have an application where I collect I burst of samples =
from Rx ports, and stream the samples into my host computer. I would like=
 to also store the timestamps from the packages onto the host computer, a=
s well as store from which RX port the signal arrived so I may separate t=
he data in different files.</p><p>I am a little lost however how to do wi=
th within the API. I see there is a call =E2=80=9Cusrp-&gt;get_time_now=E2=
=80=9D in several of the examples, but it does not appear this takes the =
timestamp from the bursts themselves.</p><p>Is there a way within the exi=
sting API to retrieve the timestamp from the packets at the beginning of =
each burst. I also see a =E2=80=9Cget_timestamp=E2=80=9D in the API but I=
 am unsure what packet this would get the timestamp from if the burst has=
 multiple packets. </p><p>Also, is there a limit on the number of packets=
 there can be in a burst?</p><p><br></p><p>Thanks,</p><p>Joe</p>


--b1_WK4flaGYGN6Sxx4jsloZhwkFmPZMXMpyqpDhFfOwh8--

--===============2372712636588792766==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2372712636588792766==--
