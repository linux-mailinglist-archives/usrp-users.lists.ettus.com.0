Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1E9661F15
	for <lists+usrp-users@lfdr.de>; Mon,  9 Jan 2023 08:20:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CDD27380E39
	for <lists+usrp-users@lfdr.de>; Mon,  9 Jan 2023 02:20:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673248830; bh=QSxs05jNEBuHNSMFzwD2KSzkNPLPyhkcnNSTvNsOzUc=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=G7hXKHRgOQ/fdjHoS6K6arQqdIXpqgEE1AqiHYMzBLiKuNJl5gs/JaMsb5iyPxpGe
	 XB1uGOtzLhHWLGMODTLylJWnX3Gx1PcIeQ9Aaa70p64lRYNYFFQ6ZXIA+/1yzrrcB0
	 8JE1b5ydB3PEkZOoQh3vyHp5xKep8MqYQ1I3f0bxKTgW7VzAsUKiKGfY+fhrknexkp
	 Lzx1409+xcnTW/QV6Kg8pMSyTph7Y/V6PtZ8rcaKTVF6qNOTmjEiTTU5HIQOpzPfKF
	 uZkXQBaIzghTl2Sotr3ffQVL4lzSi2AQ8YVHD42EwPTy/HpCj9TKxcriHXfu8mGnQE
	 yLfHLdtXj22dA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D49263840AC
	for <usrp-users@lists.ettus.com>; Mon,  9 Jan 2023 02:19:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673248781; bh=RGOiMXveZOCSG40z1EGwC5YlMIe7vN8rQNbawu5wKzs=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=lqnzLPDavvxBS8zXQYohTTFj3RF84kBEGQYS/nvmI1Q+4exHLZBlAU5COVyjRCYCX
	 0tdVrxa06fMDP5GblS/eBPxJvdRiw9xbFRLohrVL0w1DWlJbzSyDE4vfJXbxk34LLb
	 tF7YF3ZqZ+e9B/hGCcW3f/tD7L65X7XM30YsykasFJz+vLKVfuuyr6Xs++yG3opm4T
	 E9jSRt4MEbQU0Ygcb3RB5VT8Z7weIviLnwTvEljlzrZ73KhxVm1W457E3Rvdn7cbsm
	 5ajMj4qAWk/o9akFlM8LetAlgn2HWY0i7p0y2luqhZPDKuEyB8HURdytfQMPZzN9v5
	 RR7bgVAPWuwPg==
Date: Mon, 9 Jan 2023 07:19:41 +0000
To: usrp-users@lists.ettus.com
From: henry.powell.xx@gmail.com
Message-ID: <LTCaJgnaSprcXYj9GHoBEVHVIk8ttCpJsNE3YNX8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 07078a09-0298-3589-1a2a-ce901a8c6907@ettus.com
MIME-Version: 1.0
Message-ID-Hash: 5KH6MUY5MSSEPYTE4VJNWR3VXLHOOV7E
X-Message-ID-Hash: 5KH6MUY5MSSEPYTE4VJNWR3VXLHOOV7E
X-MailFrom: henry.powell.xx@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RX Channel out of range
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5KH6MUY5MSSEPYTE4VJNWR3VXLHOOV7E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7418814394402272071=="

This is a multi-part message in MIME format.

--===============7418814394402272071==
Content-Type: multipart/alternative;
 boundary="b1_LTCaJgnaSprcXYj9GHoBEVHVIk8ttCpJsNE3YNX8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_LTCaJgnaSprcXYj9GHoBEVHVIk8ttCpJsNE3YNX8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello, again.

My system is 64bit and I made uhd installation again without anaconda com=
plying with =E2=80=9CBuilding and Installing UHD from source=E2=80=9D fro=
m here: https://files.ettus.com/manual/page_build_guide.html

So, when i try uhd_find_devices, it works no problem.

But when try =E2=80=9Cbenchmark_rate --tx_rate=3D6e6 --rx_rate=3D6e6=E2=80=
=9D, gave me this error: Error: LookupError: IndexError: multi_usrp: RX c=
hannel 1768203151377 out of range for configured RX frontends.

The problem is same.

--b1_LTCaJgnaSprcXYj9GHoBEVHVIk8ttCpJsNE3YNX8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello, again.</p><p>My system is 64bit and I made uhd installation aga=
in without anaconda complying with =E2=80=9CBuilding and Installing UHD f=
rom source=E2=80=9D from here: https://files.ettus.com/manual/page_build_=
guide.html</p><p>So, when i try uhd_find_devices, it works no problem.</p=
><p>But when try =E2=80=9Cbenchmark_rate --tx_rate=3D6e6 --rx_rate=3D6e6=E2=
=80=9D, gave me this error: Error: LookupError: IndexError: multi_usrp: R=
X channel 1768203151377 out of range for configured RX frontends.</p><p>T=
he problem is same.</p>


--b1_LTCaJgnaSprcXYj9GHoBEVHVIk8ttCpJsNE3YNX8--

--===============7418814394402272071==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7418814394402272071==--
