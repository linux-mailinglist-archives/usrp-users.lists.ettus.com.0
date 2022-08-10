Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1ED58F29F
	for <lists+usrp-users@lfdr.de>; Wed, 10 Aug 2022 20:57:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 91828383FB1
	for <lists+usrp-users@lfdr.de>; Wed, 10 Aug 2022 14:57:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660157852; bh=1xRzip5p7WMG3qPXJAIWnCj2xrK30wy7+jSZIAognRs=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=POGayzTpYSFVx7OL3MLGtWYld2QanmiNbfm9wJgZd7WoLn8qKJymX87HeP/e+AeHr
	 0IfT+alNgFPP1uCN0XuAesn1CR2vZj02l+w31edRfDY27fgQZfHxmqFU4p6CE2eWmL
	 8eNJSjsoG7Vr9vQ6qt4tMkKxaSLPz2zghnr96mxyICt3wqaDqlROO/3m5chRfKD9ib
	 2S9XC4lrcoP1eEWubJmG6vZpnNi5SgWUyC8V56dKtNqIWP9sXxX72hWjUkwgadE1IT
	 45SnTwfnzRafiqoSTMAZ7q/NSSCRlmlJSx/j+rpRraGOOHsTET/S+b+/mHUZzfNGBk
	 hDcSXAxSEkNNg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BC39E383AFC
	for <usrp-users@lists.ettus.com>; Wed, 10 Aug 2022 14:56:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660157781; bh=jTEh77WICnUo++AoR17b2D6hqfIvGiqylLYcUMHta3E=;
	h=Date:To:From:Subject:From;
	b=EFWZmtcE+SMywuslqI7aGMwunxxiAue5oai3GGNaV27its2OhwChoqNOpyuxRugtf
	 3ZQfhAGiIQDu2aVmSuDVt3/KvlhEnjcb/QEEFc8H3eREqjc/x1KIXgzqNLQd81pcWI
	 fhIDUOJ5QHKlGZRbZJ0V1wHf5y85g1PUUtvMbTxfgS+HPGg7LBJSW+S0gVccMygToj
	 11ZVliZNafKChHO1+0hzN45zNLE3KiAR0HMAaW+2Hwv9Gmydfz41OaHL2i2pbfhHih
	 KBFhfoORJiv1YHT6+RWvMYkMSfss5N4tinRm3zh82zs3iqV7Jo7zOXbbFdn7TkORZ2
	 p/GLkRUOhN/bw==
Date: Wed, 10 Aug 2022 18:56:21 +0000
To: usrp-users@lists.ettus.com
Message-ID: <12wYRWCywXfMMcKx6Fwi6NjTp3hBNGO5cXWdkuHEg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: SM6MZJBVBFP6K4ZNOJTXEFZAQWZFPLJU
X-Message-ID-Hash: SM6MZJBVBFP6K4ZNOJTXEFZAQWZFPLJU
X-MailFrom: skyung@nrel.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Transmission power for N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SM6MZJBVBFP6K4ZNOJTXEFZAQWZFPLJU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: skyung--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: skyung@nrel.gov
Content-Type: multipart/mixed; boundary="===============0148792145669523813=="

This is a multi-part message in MIME format.

--===============0148792145669523813==
Content-Type: multipart/alternative;
 boundary="b1_12wYRWCywXfMMcKx6Fwi6NjTp3hBNGO5cXWdkuHEg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_12wYRWCywXfMMcKx6Fwi6NjTp3hBNGO5cXWdkuHEg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,

Is it possible for me to set the transmission power of N310 when I image =
the filesystem image or something? or is there any config file that I can=
 use?

I=E2=80=99m trying to deploy OAI 5G RAN using n310 and the specan does no=
t catch anything. I wonder if this is because the transmission power for =
that frequency (3.3GHz) is too low.

I appreciate your answers in advance.

--b1_12wYRWCywXfMMcKx6Fwi6NjTp3hBNGO5cXWdkuHEg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi all,</p><p><br></p><p>Is it possible for me to set the transmission=
 power of N310 when I image the filesystem image or something? or is ther=
e any config file that I can use?</p><p>I=E2=80=99m trying to deploy OAI =
5G RAN using n310 and the specan does not catch anything. I wonder if thi=
s is because the transmission power for that frequency (3.3GHz) is too lo=
w.</p><p><br></p><p>I appreciate your answers in advance.</p>


--b1_12wYRWCywXfMMcKx6Fwi6NjTp3hBNGO5cXWdkuHEg--

--===============0148792145669523813==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0148792145669523813==--
