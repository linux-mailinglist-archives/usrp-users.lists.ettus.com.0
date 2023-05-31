Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9915C718716
	for <lists+usrp-users@lfdr.de>; Wed, 31 May 2023 18:12:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A553C384898
	for <lists+usrp-users@lfdr.de>; Wed, 31 May 2023 12:12:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685549540; bh=r6LcxvCBdhgfJhhBQ6DsEQu4P2sly0ZYqTFMt1qam+U=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=a6UGJhodesYcV5KEtUIr4hk4wHs2invoZqJKtsvKzMnkKIsVyZCywfhOZcJLO26Yd
	 DvOTU9HklxBiGeB6oIHiz7/71VR/TYCsjkPK+NwVKGy3XHyb3IhIbPKike0Z7CUPQS
	 kvVxS/Vzhx5CRiQttwuxqz6Z+g0c+RK5R9oz1l6AX43U1F5JrT28jt7fpTexYyLI6N
	 CdrdB9d/jNPJRqbGCOxmimv3ANkyOMSnAjpaytJytRZlg9Oq2ON7r1l7svSYid13Db
	 FTLzymjUWknOZ/FDBbVGs7kRBObm3GX1fcgGOWJnpiiUYUFmECNlm+sl6fX7NZSDLH
	 uq35Kk8GVWRNg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E1B5F3846C3
	for <usrp-users@lists.ettus.com>; Wed, 31 May 2023 12:11:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685549480; bh=HZGMq2kNoyyOMy2z68wqGKVFRxfbzIrkoaywWi05730=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=H97KBTgJ5/ROLZPcRqCaqiahFRa0IWkjYWHXzSgUHtf0H2AplLCrGvkM3DHXvr7xR
	 9Rbz3fL9eLxjRGGL/EDkJy76NM8pqCWudtkOOfxJYMs5lUWnkEfRZ7y2uDm/tAgfC/
	 ndQHV3yVPUjaNUgMsBg/wfTyGvGGefNd46YyiTODINICc7u2DYEfDoyvT1tJbnmU3H
	 H7FEbXaDPvyP1b0/mfbNuYgQeQ6zAlSUFPWFac18Nlf8/2x9etr8d6BFMuZrbbg8S6
	 nW0gF/fsqibDMjvG/9edqzrvj6gny81imuCUAcPZPWJDr7UCIVHeJ1jQSqLAAAlBuN
	 o73aw1VPM49rA==
Date: Wed, 31 May 2023 16:11:20 +0000
To: usrp-users@lists.ettus.com
From: pistachio6981@gmail.com
Message-ID: <jIb8ffaQXdQ3PZuEoSiaTaoC3wdHqhW0I6Xfmkh6BM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 8c36be07-11f6-61b1-f14e-51965b4a76d1@gmail.com
MIME-Version: 1.0
Message-ID-Hash: ZMS2DUOXKTUTCYIN4IIQQFYKXPM7H6VA
X-Message-ID-Hash: ZMS2DUOXKTUTCYIN4IIQQFYKXPM7H6VA
X-MailFrom: pistachio6981@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 help
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZMS2DUOXKTUTCYIN4IIQQFYKXPM7H6VA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6443233144832365716=="

This is a multi-part message in MIME format.

--===============6443233144832365716==
Content-Type: multipart/alternative;
 boundary="b1_jIb8ffaQXdQ3PZuEoSiaTaoC3wdHqhW0I6Xfmkh6BM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_jIb8ffaQXdQ3PZuEoSiaTaoC3wdHqhW0I6Xfmkh6BM
Content-Type: text/plain; charset=us-ascii

Yes it does sadly.\
\
/usr/local/lib/uhd/examples$ uhd_usrp_probe --args "addr=192.168.10.2,type=x4xx"

\[INFO\] \[UHD\] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.4.0.HEAD-0-g5fac246b

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.10.2,type=x4xx,product=x410,serial=326B6ED,name=ni-x4xx-326B6ED,fpga=X4_200,claimed=False,addr=192.168.10.2

\[INFO\] \[MPM.PeriphManager\] init() called with device args \`fpga=X4_200,mgmt_addr=192.168.10.2,name=ni-x4xx-326B6ED,product=x410,clock_source=internal,time_source=internal'.

\[ERROR\] \[RFNOC::MGMT\] EnvironmentError: IOError: recv error on socket: Connection refused

\[ERROR\] \[RFNOC::GRAPH\] IO Error during GSM initialization. EnvironmentError: IOError: recv error on socket: Connection refused

\[ERROR\] \[RFNOC::GRAPH\] Caught exception while initializing graph: EnvironmentError: IOError: recv error on socket: Connection refused

Error: RuntimeError: Failure to create rfnoc_graph.

--b1_jIb8ffaQXdQ3PZuEoSiaTaoC3wdHqhW0I6Xfmkh6BM
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Yes it does sadly.<br><br>/usr/local/lib/uhd/examples$ uhd_usrp_probe --=
args "addr=3D192.168.10.2,type=3Dx4xx"</p><p>[INFO] [UHD] linux; GNU C++ ve=
rsion 11.3.0; Boost_107400; UHD_4.4.0.HEAD-0-g5fac246b</p><p>[INFO] [MPMD] =
Initializing 1 device(s) in parallel with args: mgmt_addr=3D192.168.10.2,ty=
pe=3Dx4xx,product=3Dx410,serial=3D326B6ED,name=3Dni-x4xx-326B6ED,fpga=3DX4_=
200,claimed=3DFalse,addr=3D192.168.10.2</p><p>[INFO] [MPM.PeriphManager] in=
it() called with device args `fpga=3DX4_200,mgmt_addr=3D192.168.10.2,name=
=3Dni-x4xx-326B6ED,product=3Dx410,clock_source=3Dinternal,time_source=3Dint=
ernal'.</p><p>[ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error o=
n socket: Connection refused</p><p>[ERROR] [RFNOC::GRAPH] IO Error during G=
SM initialization. EnvironmentError: IOError: recv error on socket: Connect=
ion refused</p><p>[ERROR] [RFNOC::GRAPH] Caught exception while initializin=
g graph: EnvironmentError: IOError: recv error on socket: Connection refuse=
d</p><p>Error: RuntimeError: Failure to create rfnoc_graph.</p>

--b1_jIb8ffaQXdQ3PZuEoSiaTaoC3wdHqhW0I6Xfmkh6BM--

--===============6443233144832365716==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6443233144832365716==--
