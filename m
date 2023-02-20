Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 894C169D212
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 18:21:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8AD56380AC9
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 12:21:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676913679; bh=OqCY96E4SDm1UQUFFXx4FWRRTW41d70V5jwN5lJA8qo=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=N3zHzpRHJX/zPzh1ZHyNegQZJTk8TMPtQMKyG4bi0cHkkRAUAc3jVPodMgwRV8Kd/
	 hTYc4exaNmptssqpFZI05WwXhsgo6MSxs5DYJ40/JM8OSBAl8I7LJ+FBN66YT3aRyG
	 SBg53FfWu0J4pbn44YFrNK2LonkPB2AuyTqAUGga5sk67Ca3OOaBkimiE2bk85ZAH/
	 1GGhMC7ZNfv8TfhtQ6WzYMxFx4agm9SFdN3fz+22EXiMDr5vXcTDfRJSANTvCDUyP5
	 nok/Up+nQQNeddaNyo1qAW7ePVFoj/THjpfU4MKfnKOhW0JG8dSWjNicEVRnYFUUsI
	 +Bh6h8tFs0g9A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B0CD380AC9
	for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 12:21:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676913673; bh=EJ0poiPkZAZ62E9PPJreTL9lPEH3bbv/O+cPOIlKq7w=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=p1BDUyQKbeH6zcL9CK6KnpSpR6Y2hpt6bl4IqONVAsTe44nY7TPCHhFTESlmIAG27
	 BuNh96jFLc6i4epjDU6gKXBKaah7VOpOQ8ZSZisGVIIDC4rKfIToKqAMey+Vi0WX4S
	 2LpzlH76i31ottPQaphEB53kOHI1+8imEwKhjxJY0yjvpyw2TxYiaiw9yYcFbFYuw2
	 d3qoYkUhDfp9qMkfcRQaxXi1l6mRtkJy0Yip28SPnaw7rsG4dW0kEDZV3S4x+GdTU0
	 1jryCQjhA9byc2wuEKY48766TYlcRtbTZlIe3vNhiP6L7WF+nJNg+w7XtEZBfvM7Q0
	 IJ7HyE2wgAy7A==
Date: Mon, 20 Feb 2023 17:21:13 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <Spy7SIbLhdw2EocmklWA2SIv0wikcO8zWp5fYRWGAE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: c5813fab-ef1e-2b8e-fdc0-da7a6755cabd@gmail.com
MIME-Version: 1.0
Message-ID-Hash: HU7CWJA4HIIOUHUZGGORMOLXDWQ2FQ3B
X-Message-ID-Hash: HU7CWJA4HIIOUHUZGGORMOLXDWQ2FQ3B
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: benchmark_rate throws error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HU7CWJA4HIIOUHUZGGORMOLXDWQ2FQ3B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1956869767655119735=="

This is a multi-part message in MIME format.

--===============1956869767655119735==
Content-Type: multipart/alternative;
 boundary="b1_Spy7SIbLhdw2EocmklWA2SIv0wikcO8zWp5fYRWGAE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Spy7SIbLhdw2EocmklWA2SIv0wikcO8zWp5fYRWGAE
Content-Type: text/plain; charset=us-ascii

I believe so. When I use uhd_usrp_probe, I get

`[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.3.0.HEAD-0-g1f8fd345`

`[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.1.151,type=n3xx,product=n320,serial=3255102,name=ni-n3xx-3255102,fpga=XG,claimed=False,addr=192.168.1.151`

I am currently using the default XG image, and not my own. I can recieve samples, however, it seems to be at a limited rate. When I use rx_samples_to_file with a high rate, i will get an overflow with a seemingly lower rate than what the board should be capable of.

`Press Ctrl + C to stop streaming...`

`OGot an overflow indication. Please consider the following:`

`  Your write medium must sustain a rate of 39.321600MB/s.`

`  Dropped samples will not be written to the file.`

`  Please modify this example for your purposes.`

`  This message will not appear again.`

`OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO^C`

`Done!`

--b1_Spy7SIbLhdw2EocmklWA2SIv0wikcO8zWp5fYRWGAE
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>I believe so. When I use uhd_usrp_probe, I get</p><p><code>[INFO] [UHD] =
linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.3.0.HEAD-0-g1f8fd345</cod=
e></p><p><code>[INFO] [MPMD] Initializing 1 device(s) in parallel with args=
: mgmt_addr=3D192.168.1.151,type=3Dn3xx,product=3Dn320,serial=3D3255102,nam=
e=3Dni-n3xx-3255102,fpga=3DXG,claimed=3DFalse,addr=3D192.168.1.151</code></=
p><p>I am currently using the default XG image, and not my own. I can recie=
ve samples, however, it seems to be at a limited rate. When I use rx_sample=
s_to_file with a high rate, i will get an overflow with a seemingly lower r=
ate than what the board should be capable of.</p><p><code>Press Ctrl + C to=
 stop streaming...</code></p><p><code>OGot an overflow indication. Please c=
onsider the following:</code></p><p><code>  Your write medium must sustain =
a rate of 39.321600MB/s.</code></p><p><code>  Dropped samples will not be w=
ritten to the file.</code></p><p><code>  Please modify this example for you=
r purposes.</code></p><p><code>  This message will not appear again.</code>=
</p><p><code>OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO^C</code></p><p><code>=
Done!</code></p>

--b1_Spy7SIbLhdw2EocmklWA2SIv0wikcO8zWp5fYRWGAE--

--===============1956869767655119735==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1956869767655119735==--
