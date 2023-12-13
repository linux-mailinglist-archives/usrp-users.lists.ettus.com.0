Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 83EB4811914
	for <lists+usrp-users@lfdr.de>; Wed, 13 Dec 2023 17:20:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D54DE38520F
	for <lists+usrp-users@lfdr.de>; Wed, 13 Dec 2023 11:20:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702484408; bh=Z5f/bhSrljBh/shIU8sipXCFy6jDgdLUMcDNc8sUx4A=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0BuPYVC110YlGoYH3yuCT4umJSHEInDnhfqccqdK4MrpAr3mJE88dD8tW55KE0qKO
	 dubraunR4dSh8t0HlHYLoLj90zmoOn2U80iwhI9bYky+BW+xsbCqR1ijTIdLOlnY23
	 2M30J5oPFB8irm3/JcOSlBDLCLQYKI4K9yvTgapM5/Dbab6igAOSl1dhMTRzo9+Kbb
	 JJTO+ZaIGhv9HwGbgDqJb3pMaBTeiAThbUD/88ySLGTejbVijBpUEVT5D0bn/e/tV1
	 cxz5scfUc9hHJXsIg6Ol54WBqL4Y4er7oUBqmjEddZNGeOJnJImQYJP+K3OT3Z6PKH
	 +YkBKMEZDGQpA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 001673850FE
	for <usrp-users@lists.ettus.com>; Wed, 13 Dec 2023 11:17:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702484275; bh=dajlOvtst4+6WCi5USf+JnShlBLZ/NtK7WDFSEbwE9g=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=oZdYC+639MJNst5HRzcdvq08GgBekDR0oDE09RmfnlJp+8PaolfQy7zNtUxfDY1JN
	 GxZ4wl7iZOapfZnh3zbZVxDT2YBII/IZktvvou1QK10EdMbFrfBDnhUXO5Qd/gn2x0
	 eE3fTVqAstwaIFom2svX88aH7ZrClJzvQZ2yiJNJK0Nf+v4cwAesXpCvKo/DGfx+GA
	 oX1eBz6WRasbLpswkzftGEZ1ZW3P7PANTa2PgR85zW0WrckbxKl+zu68k2TYxd84yK
	 vV0DK/FWc+EXBZko7QUCL93BABjtaW7PTzPqbVsxT6OgU+R998tq3CbSPKu8TY7BDU
	 NKa4NoMssFwow==
Date: Wed, 13 Dec 2023 16:17:54 +0000
To: usrp-users@lists.ettus.com
From: purva.joshi@phd.unipi.it
Message-ID: <VQOAKsNb1xUQuszGP28AOipzigdjHnRwtzQxZ58VxdA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: kqtmE1sIKX7BTG90w2D1Rr3PhEJ8tBa5mLAGfYJo4@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 7KZBFSEZ3CRJ3543NUQT45SO2Z7AOC5D
X-Message-ID-Hash: 7KZBFSEZ3CRJ3543NUQT45SO2Z7AOC5D
X-MailFrom: purva.joshi@phd.unipi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7KZBFSEZ3CRJ3543NUQT45SO2Z7AOC5D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8185881446916851685=="

This is a multi-part message in MIME format.

--===============8185881446916851685==
Content-Type: multipart/alternative;
 boundary="b1_VQOAKsNb1xUQuszGP28AOipzigdjHnRwtzQxZ58VxdA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_VQOAKsNb1xUQuszGP28AOipzigdjHnRwtzQxZ58VxdA
Content-Type: text/plain; charset=us-ascii

Dear All,

After solving the FPGA image, I am facing another problem with MPM mismatch. Here is the output:

uhd_usrp_probe

\[INFO\] \[UHD\] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.0.0.0-240-gb38c9d83

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.20.2,type=n3xx,product=n310,serial=3198227,name=ni-n3xx-3198227,fpga=HG,claimed=False,addr=192.168.20.2

\[ERROR\] \[MPMD\] MPM major compat number mismatch. Expected: 3.0 Actual: 5.3. Please update the version of MPM on your USRP device.

Error: RuntimeError: MPM major compat number mismatch. Expected: 3.0 Actual: 5.3. Please update the version of MPM on your USRP device.

Kindly help me with this issue. Thanks in advance.

--b1_VQOAKsNb1xUQuszGP28AOipzigdjHnRwtzQxZ58VxdA
Content-Type: text/html; charset=us-ascii

<p>Dear All,</p><p>After solving the FPGA image, I am facing another problem with MPM mismatch. Here is the output:</p><p>uhd_usrp_probe</p><p>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.0.0.0-240-gb38c9d83</p><p>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.20.2,type=n3xx,product=n310,serial=3198227,name=ni-n3xx-3198227,fpga=HG,claimed=False,addr=192.168.20.2</p><p>[ERROR] [MPMD] MPM major compat number mismatch. Expected: 3.0 Actual: 5.3. Please update the version of MPM on your USRP device.</p><p>Error: RuntimeError: MPM major compat number mismatch. Expected: 3.0 Actual: 5.3. Please update the version of MPM on your USRP device.</p><p><br></p><p>Kindly help me with this issue. Thanks in advance.</p>


--b1_VQOAKsNb1xUQuszGP28AOipzigdjHnRwtzQxZ58VxdA--

--===============8185881446916851685==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8185881446916851685==--
