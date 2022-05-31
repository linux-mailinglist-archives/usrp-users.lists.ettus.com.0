Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B519539741
	for <lists+usrp-users@lfdr.de>; Tue, 31 May 2022 21:43:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE317384238
	for <lists+usrp-users@lfdr.de>; Tue, 31 May 2022 15:43:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654026222; bh=CUDKsKvr3nXKJ/RWlTt1AvtUdXB97/Fnkygegs01DkQ=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=TWC+O1VfxYaWMbUkbBnqYYTGMmiWKyzhBSA1074r1qGGzZ7AJzQxGHXFeIGmnpqev
	 kjppF/cry8+nNoTFlSdIG95WZXgnFuC7vW2hiLnE1iVsNJ62ZJUKRTSiZ7ecnUZYdr
	 aPvObx7Rn2wIpX0cUW064yP1Vi787NslszwndRs/wyMmxijNcPYhHDUUeC+c/5CqSW
	 Sb6U2o/QYQua3DgN/7Mnnv4XRfYNUQvX/oimQWA80/g7z9GndIm/2AxU4/bu+qAyCI
	 dW61hC24j3iWCZPHaeiJ5Ah1wVDhjbFZFXIzMQSv9fCVNot2jWqhFYziZPkakRaBUJ
	 mxyvP+Y+t5f+Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4AAAA38415F
	for <usrp-users@lists.ettus.com>; Tue, 31 May 2022 15:42:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654026151; bh=zz4knfMEgCUbeXd1pMsx4TOWn/vR+Pz7CvoOsMkVbjQ=;
	h=Date:To:From:Subject:From;
	b=sBicamT46i+QxptM8inZjnaaZRWlYoDZn533cVqIfHhs9QaK8IEf9nrx5oFZvgaq1
	 fFWuMJ+PIdw3r9XKdEPJLV+gUBzI/dbM1EFqsS8xMZ6oA8SPxQ6jpBNrBUsseUgmx5
	 Yb20SLIr6BBH11oCzdsfbg1RX1uywJilLP5H44Des8yaSQ1i5lcIGwn0NXVPKwURqQ
	 zjrhfFVIOVbfWwipB493uMIX3+PvEawbSM3iry9KEFzaWYAqYUvRPtJMqwYBCAj1Ff
	 +0/Gw92UQmBGumWHQsbI9yutVI2on5Ksdap4+k3ECb10MdU7cn9BemXeiMhsXlFt5U
	 wsxhJBXfKjuJA==
Date: Tue, 31 May 2022 19:42:31 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <m6us55saml4PHsabFluvMUvUKtuVOWQ7VQJbHlFBk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 4EWLUZ5UKA4TQC3LCCXMTUELQRZU5ZQ6
X-Message-ID-Hash: 4EWLUZ5UKA4TQC3LCCXMTUELQRZU5ZQ6
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] DDC and DUC timed command queue depth
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4EWLUZ5UKA4TQC3LCCXMTUELQRZU5ZQ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7361164866410770564=="

This is a multi-part message in MIME format.

--===============7361164866410770564==
Content-Type: multipart/alternative;
 boundary="b1_m6us55saml4PHsabFluvMUvUKtuVOWQ7VQJbHlFBk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_m6us55saml4PHsabFluvMUvUKtuVOWQ7VQJbHlFBk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I=E2=80=99m playing around with frequency hopping on a USRP x310 with  a =
UBX 160 daughterboard. In particular, I want to hop to a few different fr=
equencies that are integer multiples of my master clock rate and well wit=
hin the daughtercard bandwidth rapidly (hopping every \~200 us). I know t=
he hopping schedule well in advance, but as described in the timed comman=
d documentation (https://kb.ettus.com/Synchronizing_USRP_Events_Using_Tim=
ed_Commands_in_UHD) the default command queue depth is only 5 slots per I=
P core. Given that the Linux kernel scheduler uses a \~1ms jiffy, it=E2=80=
=99s rather difficult to send new timed command accurately when a queue s=
lot is available. It would be much easier if I could batch up the tune co=
mmands.=20

Is there a way for me to build a default X310 FPGA image but increase the=
 DDC and DUC queue size? I have access to a Vivado license. Is there an e=
xample tutorial somewhere? Even better, are the DUC/DDC queue depths para=
metrized in the build scripts?

Thanks,

Richard

--b1_m6us55saml4PHsabFluvMUvUKtuVOWQ7VQJbHlFBk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>I=E2=80=99m playing around with frequency hopping on a USRP x3=
10 with  a UBX 160 daughterboard. In particular, I want to hop to a few dif=
ferent frequencies that are integer multiples of my master clock rate and w=
ell within the daughtercard bandwidth rapidly (hopping every ~200 us). I kn=
ow the hopping schedule well in advance, but as described in the timed comm=
and documentation (https://kb.ettus.com/Synchronizing_USRP_Events_Using_Tim=
ed_Commands_in_UHD) the default command queue depth is only 5 slots per IP =
core. Given that the Linux kernel scheduler uses a ~1ms jiffy, it=E2=80=
=99s rather difficult to send new timed command accurately when a queue slo=
t is available. It would be much easier if I could batch up the tune comman=
ds. </p><p>Is there a way for me to build a default X310 FPGA image but inc=
rease the DDC and DUC queue size? I have access to a Vivado license. Is the=
re an example tutorial somewhere? Even better, are the DUC/DDC queue depths=
 parametrized in the build scripts?</p><p>Thanks,</p><p>Richard</p>

--b1_m6us55saml4PHsabFluvMUvUKtuVOWQ7VQJbHlFBk--

--===============7361164866410770564==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7361164866410770564==--
