Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD545B2DC2A
	for <lists+usrp-users@lfdr.de>; Wed, 20 Aug 2025 14:12:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 99FC7386332
	for <lists+usrp-users@lfdr.de>; Wed, 20 Aug 2025 08:12:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755691938; bh=L4VVJG5gSvn8SZNbLM1LRYbocZuy/okW9uwT5OsJ1vM=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=l1zNAUFUwTqQu1E4Ar/iDJty9neZ1+9QTpA7t7qBLRVG2fC79PX+8aB08toYfCWDT
	 mFo1FsHAJFCfVHfCPnuapg+Fe7jk+Z/1q1+WrYeUq1SbP6zPRRyuNCkbIVV1bRYOVM
	 96CcvGyQ7nKX6DS0U0YSMeyi6zvKXKb+ShVREBXF74LvxeTbph1JPa32RZi/RYhi9n
	 he8/xcFfGTkv+5mxhjc5vsmyB1fZmjs9GKZgoMOvBS98NaU6ez89LWQk6tRzJoJGl7
	 1PyKDvLbY0ePuWlwdllIwDiJmildeLuE7oJk1Ebdma2KsMJ/2vFijuX8R/cMx3t22g
	 y+2Re7eX+fBhA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 65F3C3862F4
	for <usrp-users@lists.ettus.com>; Wed, 20 Aug 2025 08:11:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755691888; bh=+Rsabm6OD+ASwYB3bqrei/y8TM3Bck2EeOU5VCt84FA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=I70EINjG5GhV7sTfHALGMlyppWH5uEJVz4r93DsNPYY99YTFpUTK245RRXfq0KGtv
	 AHFMjsReEjuxW/TfXyoD3K3zbfYbKRriK8KXhbNaNL3vH2bxTzkhwgB1J6wnXkW1eW
	 /HycRgo8nRCyNGHCtKAzEt/2KAcIhgb5qRD3fL8VcPs/tcax9tM20XpW/0INQ84JO2
	 itQVeAKjiK+ThVR7lU9LpqbeLuyTEkOfevXJkKRj6wx+j0FX0E7zQAY8ysb+Qd2ixz
	 JyPDdiN1rIpltrmUkpxj55RsAHvj4OyV6Me2MCP2qxlZXX8ZxZTq3WhjXS4wkhKTFU
	 XFKJDt7XWtYwA==
Date: Wed, 20 Aug 2025 12:11:28 +0000
To: usrp-users@lists.ettus.com
Message-ID: <7papa8MzR2rYkon0ITRGxdnWiwRfwadw1z0qvBvZqk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAAxXO2Huh-aq5eUqZFaAVhpSNVfJdrHTZffu4PqF3vJpj4Z1AQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: XBQNHBAHT67ODWQXGJQFZR7V6FESVAC3
X-Message-ID-Hash: XBQNHBAHT67ODWQXGJQFZR7V6FESVAC3
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflow rx_streamer issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XBQNHBAHT67ODWQXGJQFZR7V6FESVAC3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============6327780539950845468=="

This is a multi-part message in MIME format.

--===============6327780539950845468==
Content-Type: multipart/alternative;
 boundary="b1_7papa8MzR2rYkon0ITRGxdnWiwRfwadw1z0qvBvZqk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_7papa8MzR2rYkon0ITRGxdnWiwRfwadw1z0qvBvZqk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hey Nikos,\
\
Sorry to here that you were not successful.\
\
Just for your information, I did just recently(this week) fix a bug that =
might be related to your issue, that should be part of the upcoming UHD r=
elease 4.9.\
\
The bug that was fixed is related to a scenario, where if you use the \`N=
UM_SAMPS_AND_DONE\` mode for RX streaming, if you are slow in receiving t=
he data on the host, and there is an Overrun(the =E2=80=9CO=E2=80=9D) on =
the FPGA side, after the overrun has occured if you try to recv() the res=
t of the data, the remaining data would have been lost.\
\
This sounds very similar to the problem you are facing, at least if you a=
re using one of the standard bitfiles that includes the DDC block in your=
 RX datapath.\
\
The fix should be available on the UHD master branch soon, probably end o=
f the week or next week, or you can wait either for UHD  version 4.9 RC2 =
for testing if this fixes your issues,  or wait until the regular version=
 4.9 release occurs.\
\
The fix is on the FPGA side, so if you can not wait, and want to add the =
potential fix to build your own bitfile let me know, and I can provide yo=
u with more details.\
\
Regards,\
Niels

--b1_7papa8MzR2rYkon0ITRGxdnWiwRfwadw1z0qvBvZqk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hey Nikos,<br><br>Sorry to here that you were not successful.<br><br>Jus=
t for your information, I did just recently(this week) fix a bug that might=
 be related to your issue, that should be part of the upcoming UHD release =
4.9.<br><br>The bug that was fixed is related to a scenario, where if you u=
se the `NUM_SAMPS_AND_DONE` mode for RX streaming, if you are slow in recei=
ving the data on the host, and there is an Overrun(the =E2=80=9CO=E2=80=
=9D) on the FPGA side, after the overrun has occured if you try to recv() t=
he rest of the data, the remaining data would have been lost.<br><br>This s=
ounds very similar to the problem you are facing, at least if you are using=
 one of the standard bitfiles that includes the DDC block in your RX datapa=
th.<br><br>The fix should be available on the UHD master branch soon, proba=
bly end of the week or next week, or you can wait either for UHD  version 4=
.9 RC2 for testing if this fixes your issues,  or wait until the regular ve=
rsion 4.9 release occurs.<br><br>The fix is on the FPGA side, so if you can=
 not wait, and want to add the potential fix to build your own bitfile let =
me know, and I can provide you with more details.<br><br>Regards,<br>Niels<=
/p>

--b1_7papa8MzR2rYkon0ITRGxdnWiwRfwadw1z0qvBvZqk--

--===============6327780539950845468==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6327780539950845468==--
