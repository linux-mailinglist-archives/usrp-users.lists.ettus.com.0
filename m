Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D45834E65FF
	for <lists+usrp-users@lfdr.de>; Thu, 24 Mar 2022 16:33:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DDE6C384DBC
	for <lists+usrp-users@lfdr.de>; Thu, 24 Mar 2022 11:33:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648136002; bh=eoao4A+EuhRyeakWSxbT52XFeSQ2rmNm5XGbLFDY12o=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=kPXJgyztA8/880CY7yBtr/F2pMEFgrYr/uTbfjfJpSEGoM0iZnt3HmWfbhvdXEEqW
	 1iHSQqeFkmiHapvsxNrZNKVBRC71sGAg1CoerKfqPV2VhM3StoluIs7JXf00IujgUC
	 ezfkQ47V0+bG+30eT+Q46XwYxMhcl5lGC1Lth13zQJiyX2n2mrLWrHUv4DmDNR0kjl
	 PR82u13IAyJkKnSRXMRQb9k8HwyDGUlVE4xjANh5rPQm/+v2bKwyl043J7vmLmY634
	 oyHD/lWBYuvF9liaFUBrGsITfowaDHzqqKvULCkLWOiOkqC8dX7Lz1Pu8XK8ijGRDD
	 aFI5cLH2Nesfw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 83F07384B44
	for <usrp-users@lists.ettus.com>; Thu, 24 Mar 2022 11:32:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648135940; bh=/Yqn4adxd8ne58cKHxjp2SOBZeQjg1WQbydEpQV5P9k=;
	h=Date:To:From:Subject:From;
	b=oH0skTrs6myxQKgutPY18WoKVvwjLv6WBm7/COoYcM1/16okh9SWbfrl9u41b30if
	 uG4fPGjwYdbGhQECcz5uOnt992uiVRlbLUQojkNejMIs7bAcx1jaFn/Jrm/kJKAIsJ
	 7lo837NKOjJa4YkclOTu5nIi5s68tPqMKVq8WrkGnTMzMj9B7gypmsHeFfp63ZD7Ip
	 luxOLF8vmglsiamCo2hTF57uhoM18ShCCuHrdFB20M460eladcEgz6UofyMQoGtU8j
	 WeXfmLNUk0YYgvbPeKj0ampAG9zs4RsH9ZxQcJ1mCUW33c4lDIo668aoTQbjaA/1Y5
	 d3RpFaehTlUpg==
Date: Thu, 24 Mar 2022 15:32:20 +0000
To: usrp-users@lists.ettus.com
Message-ID: <ruiOtOuwiApbAfRki3BowICfk39tSOI5GMHQFAYaQY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: DD27LYXCEPMYI67YMJ3TSFS36Y5FGUXY
X-Message-ID-Hash: DD27LYXCEPMYI67YMJ3TSFS36Y5FGUXY
X-MailFrom: jhb19g@my.fsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] 2 rx antennas + USRP B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DD27LYXCEPMYI67YMJ3TSFS36Y5FGUXY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Jumana  via USRP-users <usrp-users@lists.ettus.com>
Reply-To: jhb19g@my.fsu.edu
Content-Type: multipart/mixed; boundary="===============0992742971682491557=="

This is a multi-part message in MIME format.

--===============0992742971682491557==
Content-Type: multipart/alternative;
 boundary="b1_ruiOtOuwiApbAfRki3BowICfk39tSOI5GMHQFAYaQY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ruiOtOuwiApbAfRki3BowICfk39tSOI5GMHQFAYaQY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

1-I installed radioconda + USB driver

2-to capture LoRa trace using USRP B210, I type =E2=80=9Crx_samples_to_fi=
le --freq 915.0e6 --rate 1e6 --gain 20=C2=A0--duration 10=C2=A0 --file lo=
ra_rx=E2=80=9C=20

3-Now i want to capture Lora trace using 2 antennas that located in port =
TX/RX and RX2

How can i do that?

--b1_ruiOtOuwiApbAfRki3BowICfk39tSOI5GMHQFAYaQY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>1-I installed radioconda + USB driver</p><p>2-to capture LoRa trace us=
ing USRP B210, I type =E2=80=9Crx_samples_to_file --freq 915.0e6 --rate 1=
e6 --gain 20&nbsp;--duration 10&nbsp; --file lora_rx=E2=80=9C </p><p>3-No=
w i want to capture Lora trace using 2 antennas that located in port TX/R=
X and RX2</p><p>How can i do that?</p>


--b1_ruiOtOuwiApbAfRki3BowICfk39tSOI5GMHQFAYaQY--

--===============0992742971682491557==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0992742971682491557==--
