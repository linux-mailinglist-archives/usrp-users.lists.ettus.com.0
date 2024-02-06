Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAAA84BFB2
	for <lists+usrp-users@lfdr.de>; Tue,  6 Feb 2024 23:04:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B4620384FB0
	for <lists+usrp-users@lfdr.de>; Tue,  6 Feb 2024 17:04:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707257095; bh=+UvYhAgKNUPhn9wzcU6zQXV1O9VXjurAhrbXZDEZR+Y=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PhA5yZ7p9AtDasHZuqw3zudeYHFwEv0FWgsF7pCWPsU+UuVVuda7jh8+xNGDdj9gv
	 Cn20A4RiGG86R3Srr6t7UsumjJtfX4Ue0y86+pOuCxG9QBCbqTGuFpPgSucCofFgOe
	 UwPk+kb1bDmUu3WP9vMau4xcfOaB9aX/pTRWsQwslmUHNeU7K+TI5Ws9oFRT04ed2Q
	 BRAFDmw/MUDoAbjMpOUu69bKdPRqn6F+hNGxzEkmUlF1YRs6bZxcgYxLgNrmdGBomW
	 viF8MDySd73txINjisZ4E+yzp5S4c5GKcj3RLamkJkk6RaREPdKzs45JxhNpYwor0O
	 j/OxahY99cePw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE24E384EC6
	for <usrp-users@lists.ettus.com>; Tue,  6 Feb 2024 17:04:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707257083; bh=J9B+nvD3qQyAFIruDWwfeK0v5KiBIY+S/dTCHFIVOVE=;
	h=Date:To:From:Subject:From;
	b=UHqhimR3x3dmVkitnpfUSC9PjzQQVrEY10D0MqCIEP1vUxK5SgfKuKBandquKk29b
	 ngxHh4O6QGq65Q3UdGHwOIBvYco0ZFY6FNabZqoZjfIw4rgMEIJjNrptjtevWVBKV1
	 91tLfxq4ThX2j/bYRys0x4MRXKqXFTvQaEZH1j/IEzPNyhBDW/lToJg4XY0SPbQk3q
	 WSxLvIiVkfbTUStJnAvh2z8cQkgmUyC7YNJUWaJwiGGV4UNmWXeYdT8KY1yFIVn9w6
	 ZAgST8sxxKG3NdD14Kn59OHIvmeChmgssB+K3pMA/D1co87THdaaS5cWXk2NvvLwzS
	 AS3R1fJSdeJ7w==
Date: Tue, 6 Feb 2024 22:04:43 +0000
To: usrp-users@lists.ettus.com
From: zackkomo@utexas.edu
Message-ID: <ZRG7rIZIbxYmMjovRpBG6ZTithtckvTqx1zsHut5j8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: LDCZBPBGG3FGXXRAWT57WUC6EZFY3GTN
X-Message-ID-Hash: LDCZBPBGG3FGXXRAWT57WUC6EZFY3GTN
X-MailFrom: zackkomo@utexas.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Align multi-channel captures with different rx_stremers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LDCZBPBGG3FGXXRAWT57WUC6EZFY3GTN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2178976620338955194=="

This is a multi-part message in MIME format.

--===============2178976620338955194==
Content-Type: multipart/alternative;
 boundary="b1_ZRG7rIZIbxYmMjovRpBG6ZTithtckvTqx1zsHut5j8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ZRG7rIZIbxYmMjovRpBG6ZTithtckvTqx1zsHut5j8
Content-Type: text/plain; charset=us-ascii

Hello!

I am trying to do something very similar to the rx_samples_to_file example [here](https://github.com/EttusResearch/uhd/blob/master/host/examples/rx_samples_to_file.cpp). In this script, if multithreading is selected, then a different call to recv_to_file spawns for each channel, which in turn creates a different rx_streamer for each channel.\
\
I modified the code to specify the uhd::time_spec_t that feeds to each stream_cmd.time_spec, outside the loop so that the streaming start time for each channel is identical. 

I have only tried with 2 channels so far. I have a GPS L1 signal connected to each port corresponding to my 2 channels, and I am using a USRP X410. If I capture at the same rate for both channels, I show that they start at an identical time (to the nearest ns). When I change the rate of the second channel, I then have a difference of about 732ns. 

The rates I choose are 9830400 Msps and 20480000 Msps. These correspond to the master clock rate of 245760000 divided by 25 and 12 respectively.

Does anyone have an idea as to how to align the captures?

Thanks!

--b1_ZRG7rIZIbxYmMjovRpBG6ZTithtckvTqx1zsHut5j8
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello!</p><p>I am trying to do something very similar to the rx_samples_=
to_file example <a href=3D"https://github.com/EttusResearch/uhd/blob/master=
/host/examples/rx_samples_to_file.cpp" title=3D"">here</a>. In this script,=
 if multithreading is selected, then a different call to recv_to_file spawn=
s for each channel, which in turn creates a different rx_streamer for each =
channel.<br><br>I modified the code to specify the uhd::time_spec_t that fe=
eds to each stream_cmd.time_spec, outside the loop so that the streaming st=
art time for each channel is identical. </p><p>I have only tried with 2 cha=
nnels so far. I have a GPS L1 signal connected to each port corresponding t=
o my 2 channels, and I am using a USRP X410. If I capture at the same rate =
for both channels, I show that they start at an identical time (to the near=
est ns). When I change the rate of the second channel, I then have a differ=
ence of about 732ns. </p><p>The rates I choose are 9830400 Msps and 2048000=
0 Msps. These correspond to the master clock rate of 245760000 divided by 2=
5 and 12 respectively.</p><p>Does anyone have an idea as to how to align th=
e captures?</p><p>Thanks!</p>

--b1_ZRG7rIZIbxYmMjovRpBG6ZTithtckvTqx1zsHut5j8--

--===============2178976620338955194==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2178976620338955194==--
