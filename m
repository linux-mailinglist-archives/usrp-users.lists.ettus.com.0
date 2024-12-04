Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A65A9E44E0
	for <lists+usrp-users@lfdr.de>; Wed,  4 Dec 2024 20:40:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 53D143800B7
	for <lists+usrp-users@lfdr.de>; Wed,  4 Dec 2024 14:40:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733341223; bh=XehYDPI7Qpnj2o7bIs6TF15O3WQ1OOLWqyyWWMjFhrY=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=NaB2eVyx8hFavsiuxZiRDQt0JRcmnUGbcOkcYU0BGnWhPFUq3MILjGj6gr1rvVFF4
	 FHtvYpqPE7FYqkAHDPYSA12yPCJBPjHBQZDGGo59QszaMsZaV32r8JK10Ec4G0szEI
	 SlyH9ydWYVltu0ve1YKUSYFn0zDOx4WVH9vPv1DodLfpb65RVyIHQhh7bFtCcLfjR+
	 /EJJM/W+29JRms6kppKiixQ8Fru6ZPayq/vfVsbTx4QDN1ow4Gi5NKIO74OziSnlLe
	 h2eINAxMtTLV559mi3aFoPOUXRnrEzhpw5nIEcy9WYAzH9eMqBr9u7AcHHKz/jx97H
	 kjjvx0ByBVIUA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 50543383891
	for <usrp-users@lists.ettus.com>; Wed,  4 Dec 2024 14:39:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733341175; bh=5jTbXUKhiAFmJXTdNR8LHF5Ivx5p6lHXs8QZyzNskEA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=I/UQ1nQxorOBV+bA9rfXHhkmAXXJYZjrtzGtYEnmF4aSP6OVFFa8c6OQY+CFuvM51
	 nO7+9sFC+xIyOvwEPxxuLtgffGmBxrihRw3FxQDtymNAoue9UEyVdHTuMSu9y0I3Ul
	 1lSl79J+lvOulkGlYpKGRF5hmY5rGWNYH7u3dNLas9cuLTxCeWPT21vSQqq0Ea7o+n
	 ZlT5pIiZC+yq3X+c3HV4y/BN5cLDBBX9P/asPo/GHDvRLShTDhp6mZYxCkQ1FdNYv/
	 sQTjEEogj2d2M6iF24dVGgAcVVvw2JIf1n8aGF5rPNhxcGVYqiUiZtVM93ZR4M47zY
	 i1CnYBIA7lbkQ==
Date: Wed, 4 Dec 2024 19:39:35 +0000
To: usrp-users@lists.ettus.com
From: c1337rogers@gmail.com
Message-ID: <B2TfT30zSHmFWAY2am7TZUK5aazc7p3B2H8ZApt3s@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CY1P111MB1638A8A5D7CAB591306CACBFC481A@CY1P111MB1638.NAMP111.PROD.OUTLOOK.COM
MIME-Version: 1.0
Message-ID-Hash: GBSRRC7XTRXRRRBZCKDSQXWRNK3PE4RI
X-Message-ID-Hash: GBSRRC7XTRXRRRBZCKDSQXWRNK3PE4RI
X-MailFrom: c1337rogers@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E810 and DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GBSRRC7XTRXRRRBZCKDSQXWRNK3PE4RI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3919589443819284515=="

This is a multi-part message in MIME format.

--===============3919589443819284515==
Content-Type: multipart/alternative;
 boundary="b1_B2TfT30zSHmFWAY2am7TZUK5aazc7p3B2H8ZApt3s"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_B2TfT30zSHmFWAY2am7TZUK5aazc7p3B2H8ZApt3s
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I just recently got DPDK working with an E810-CQDA2 and an X440 on Ubuntu=
 22.04. I didnt really do anything special, just installed dpdk and dpdk-=
dev with apt and followed the =E2=80=9Cgetting started with DPDK and UHD =
4.0=E2=80=9D guide. A while back I did run into issues when I had an OFED=
 driver alongside the ICE driver=E2=80=A6 I=E2=80=99d try maybe uninstall=
ing all of the OFED stuff and see if that helps

--b1_B2TfT30zSHmFWAY2am7TZUK5aazc7p3B2H8ZApt3s
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I just recently got DPDK working with an E810-CQDA2 and an X440 on Ubu=
ntu 22.04. I didnt really do anything special, just installed dpdk and dp=
dk-dev with apt and followed the =E2=80=9Cgetting started with DPDK and U=
HD 4.0=E2=80=9D guide. A while back I did run into issues when I had an O=
FED driver alongside the ICE driver=E2=80=A6 I=E2=80=99d try maybe uninst=
alling all of the OFED stuff and see if that helps</p>


--b1_B2TfT30zSHmFWAY2am7TZUK5aazc7p3B2H8ZApt3s--

--===============3919589443819284515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3919589443819284515==--
