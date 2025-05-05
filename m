Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BFBAA98A2
	for <lists+usrp-users@lfdr.de>; Mon,  5 May 2025 18:20:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BFFE9386613
	for <lists+usrp-users@lfdr.de>; Mon,  5 May 2025 12:20:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746462027; bh=DM0L5ydK+A15x+aLVcTJyrSpFGyDfNCHWTVykv1uuxw=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Zc5etP1t6Q0PJWKxDVeQOVP0gziLJfPfSTTVRJrYr7v7HLWJmW6Jkpc7xjUumJbti
	 hcTzjy5ZGfdCDZZ+iMiMRCs1XtoguFisUgxNRJxxSQ9EO3LtFPHR2e2/FyG1OdvzJz
	 aTM4MZNvvXopc1nv2fIKCRbuXlY7iK5So4N39wDwWw4oXCRl1plb3A4utaerxjIKrv
	 5dvCsgXgGkVfGqth0d4b/rdVcefN4nUwDoo5jSqMHZxxNrtYzuNTFX+uppREKalYM3
	 KSt4G0nnJjrTl6kXTFAMUZHOp8D7MhcCiFhk1d66hoFC2rBVxuuF4ci3JMhSOV6NeP
	 nN3EZ74B/xE6w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1575438618D
	for <usrp-users@lists.ettus.com>; Mon,  5 May 2025 12:19:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746461976; bh=SZkZUx3tujr+jjOJEDMwBVzxjFUeWy151I6os5GrFrk=;
	h=Date:To:From:Subject:From;
	b=L0czBee7i8CN0AaOzI3QAYW2D71+HRBG3ZqoZbn0oRtjYqSa6Fd/l25JU0d1zwRmR
	 HaAkBLYEKYe0+XZrxSbCM+Ro957XIzOxa5PIHl1zI6UrLHE2lBypq1Ie9nbWlYar10
	 fYbZ33VeLRTxK4TxxIzZk+b+HYEVUNyAjqzHusjioadH8O5I72KGuxhMeo7G9hVo+G
	 4exVbK1h7ZZkkazcggiTczRpCmQXaNOdWZN0AF2lUwBykMpAxWm0mDOVuxKWS25veZ
	 mLHwW4GbcAApA4SxblpW4ibWcvHNOCxkFf6r3qV+mNHrW6Zbb/G1BOt9YT6F3fky3z
	 UwpS2uVeKHhgw==
Date: Mon, 5 May 2025 16:19:36 +0000
To: usrp-users@lists.ettus.com
From: kurz.reido@gmail.com
Message-ID: <6otIcMYMwaPxBhJef0uR8quO6MIZZRlC1CQOwRnwY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: JTKPLD3U5I5JGMA4ZNYP22L3MRK3AOLY
X-Message-ID-Hash: JTKPLD3U5I5JGMA4ZNYP22L3MRK3AOLY
X-MailFrom: kurz.reido@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Missing RFNoC: DMA FIFO Block in GNU Radio 3.10
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JTKPLD3U5I5JGMA4ZNYP22L3MRK3AOLY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5812971973224440661=="

This is a multi-part message in MIME format.

--===============5812971973224440661==
Content-Type: multipart/alternative;
 boundary="b1_6otIcMYMwaPxBhJef0uR8quO6MIZZRlC1CQOwRnwY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_6otIcMYMwaPxBhJef0uR8quO6MIZZRlC1CQOwRnwY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,

I=E2=80=99m spinning my wheels on this and could use a clear cut answer.

I have GNU Radio 3.10.9.2 and get the following when i do =E2=80=9Cuhd_fi=
nd_devices=E2=80=9D command =E2=80=9Clinux; GNU C++ version 13.3.0; Boost=
_108300; UHD_4.8.0.0-266-g50967d13=E2=80=9D

I finally got an FPGA to build with the axi_ram_fifo.yml (i customized it=
 for my **E310**). All the SEP connections look good.

When I went to GNU Radio I could not find DMA FIFO **or any** FIFO block.=
 I seem to have a lot of the other RFNoC blocks (not sure if any others a=
re missing, but I have the vast majority at least).

**QUESTION:** How do I enable or get the block to show in GNU Radio 3.10?=
 I=E2=80=99ve tried using rfnocmodtool, but I=E2=80=99m not sure what I=E2=
=80=99m doing and a lot of OOT RFNoC documents are outdated.

I need this DMA FIFO to stream my vector source into my RFNoC DUC and the=
n to my RFNoC Radio. Without it my vector source to DUC caps out at aroun=
d 5MS/s which is not enough for my purposes. I need to get closer to the =
10 MS/s limit (between arm and fpga).

Additional question: If anyone has a better idea of how to transmit a squ=
are wave pulse that is only 400ns wide I=E2=80=99m all ears.

Any help is greatly appreciated. Thank you in advance.

--b1_6otIcMYMwaPxBhJef0uR8quO6MIZZRlC1CQOwRnwY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello All,</p><p>I=E2=80=99m spinning my wheels on this and could use a =
clear cut answer.</p><p>I have GNU Radio 3.10.9.2 and get the following whe=
n i do =E2=80=9Cuhd_find_devices=E2=80=9D command =E2=80=9Clinux; GNU C++ v=
ersion 13.3.0; Boost_108300; UHD_4.8.0.0-266-g50967d13=E2=80=9D</p><p>I fin=
ally got an FPGA to build with the axi_ram_fifo.yml (i customized it for my=
 <strong>E310</strong>). All the SEP connections look good.</p><p>When I we=
nt to GNU Radio I could not find DMA FIFO <strong>or any</strong> FIFO bloc=
k. I seem to have a lot of the other RFNoC blocks (not sure if any others a=
re missing, but I have the vast majority at least).</p><p><strong>QUESTION:=
</strong> How do I enable or get the block to show in GNU Radio 3.10? I=
=E2=80=99ve tried using rfnocmodtool, but I=E2=80=99m not sure what I=
=E2=80=99m doing and a lot of OOT RFNoC documents are outdated.</p><p>I nee=
d this DMA FIFO to stream my vector source into my RFNoC DUC and then to my=
 RFNoC Radio. Without it my vector source to DUC caps out at around 5MS/s w=
hich is not enough for my purposes. I need to get closer to the 10 MS/s lim=
it (between arm and fpga).</p><p><br></p><p>Additional question: If anyone =
has a better idea of how to transmit a square wave pulse that is only 400ns=
 wide I=E2=80=99m all ears.</p><p>Any help is greatly appreciated. Thank yo=
u in advance. </p><p><br></p>

--b1_6otIcMYMwaPxBhJef0uR8quO6MIZZRlC1CQOwRnwY--

--===============5812971973224440661==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5812971973224440661==--
