Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A33888D407
	for <lists+usrp-users@lfdr.de>; Wed, 27 Mar 2024 02:54:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1B04A386806
	for <lists+usrp-users@lfdr.de>; Tue, 26 Mar 2024 21:54:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1711504474; bh=Px6G1X20LH3uyJWGIviQBBFNovh6yGVeveTWPYkPKWM=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=CXcnv5h7u7dtfazdDqB4aCAdrEYLM/qgi08MqMzMpS/GAev1XX4GnAJpHCko9E0+H
	 +R88UwuS4ji0rtIk6EZND5CzntLfoCklH8VmmWk0NjCoXPPl+RAo6Uf/JAe08mojXA
	 p32X1GQf4LPdhbj7t0ArQUf6KDqQLYEpY8WJeGX6Nb4q1UMMGF/A0BeXuDMKKQEAFR
	 MrIXcUFSuYeI53Xi50colXPwHVKbAfkQxzTtrdNVUVEvOO8LLInYewtn4yMmbtfDy5
	 bPdAxcRmT71xkIvs3qB3CBNNrXKkJogpdNgk5OrBttD19qNzRwlO2UJILX7MrP8iYN
	 YLOMxvpHXdpgw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F9C33867B6
	for <usrp-users@lists.ettus.com>; Tue, 26 Mar 2024 21:54:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1711504449; bh=Q8RF+RshYc/fDJMd5tFzarUff0W6NtB11zBaQxUpSbQ=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=lAjIU4HElJQxntzvU2yPSMb8ykDw9qO3JFpKDZY3cDddgJCwC8R2nSapLwTh1t80T
	 0YDSwwNZeNk8Vk70yig21OBd2/CjEeWq1BdG28LzL0Dhj7+AvqxFGlpbulM8uePygG
	 N0iqKe+9ns+WecmpYBttcJzFkZ1o0zX3JgGSyH37HbD26ODu72RzjcMEDoT5Y6kTF1
	 QqIZKfCoZ/BgfE2fQkqBKWbf2L2QCs1BkBqLRoyMIvjBVPBKlORGdWB9LfN2d3uqJA
	 dvg9lhG70gLbcItXx/1a27zIT0Vx01Uf5fGbkZQRpM/6brE1oY0SarRwCsVC7Z4b9P
	 n2HQFQwbIF9dw==
Date: Wed, 27 Mar 2024 01:54:09 +0000
To: usrp-users@lists.ettus.com
Message-ID: <6Wg9f0m3WGsyTFzQnMRPh3SyzNWjlInMVKoDSPkoY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=jmRU_XgKFn5S-37xfsn_9PyCmQbOYG1TjBtLgjUnd+og@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 5C66XHEQCX5CDLO5A6CDU36JDFUJJ5GH
X-Message-ID-Hash: 5C66XHEQCX5CDLO5A6CDU36JDFUJJ5GH
X-MailFrom: chris.pineda@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Unable to Simulate RFNoC FFT Module in Questa/Modelsim
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5C66XHEQCX5CDLO5A6CDU36JDFUJJ5GH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "chris.pineda--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: chris.pineda@chaosinc.com
Content-Type: multipart/mixed; boundary="===============4182633662461230502=="

This is a multi-part message in MIME format.

--===============4182633662461230502==
Content-Type: multipart/alternative;
 boundary="b1_6Wg9f0m3WGsyTFzQnMRPh3SyzNWjlInMVKoDSPkoY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_6Wg9f0m3WGsyTFzQnMRPh3SyzNWjlInMVKoDSPkoY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I did follow all those steps, and it still comes up with that error. I al=
so wanted to note that this only happens for the FFT simulation, all othe=
r simulations appear to be working. I have a sneaking suspicion that it=E2=
=80=99s not linking all the files correctly, because I manually imported =
the aforementioned xfft_v9_1_vh_rfs.vhd file, and it gave new but similar=
 errors about not finding other libraries. It also works when I use make =
xsim, which I presume Vivado is handling all file decencies properly.

--b1_6Wg9f0m3WGsyTFzQnMRPh3SyzNWjlInMVKoDSPkoY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I did follow all those steps, and it still comes up with that error. I=
 also wanted to note that this only happens for the FFT simulation, all o=
ther simulations appear to be working. I have a sneaking suspicion that i=
t=E2=80=99s not linking all the files correctly, because I manually impor=
ted the aforementioned xfft_v9_1_vh_rfs.vhd file, and it gave new but sim=
ilar errors about not finding other libraries. It also works when I use m=
ake xsim, which I presume Vivado is handling all file decencies properly.=
 </p>


--b1_6Wg9f0m3WGsyTFzQnMRPh3SyzNWjlInMVKoDSPkoY--

--===============4182633662461230502==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4182633662461230502==--
