Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E3D80D019
	for <lists+usrp-users@lfdr.de>; Mon, 11 Dec 2023 16:52:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 44D7A385039
	for <lists+usrp-users@lfdr.de>; Mon, 11 Dec 2023 10:52:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702309976; bh=qAO3xlC/uoE0g4p7CleE2T+HYxEM4dqcLEPZTTgTPtM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=eDysmkM1p8ZtZqrysc5fEG1Xhg6Zr+d4aiL3Hc5DfhnLd9aobQJb5WKh5a+VOdBRp
	 pHqAe86ZjItspSGnAQqoxWIDldijYRPjJDTJNqLqbsmPdDIvf+tFVudqjLha5wwd3i
	 JPv+IrtqXf7ieDDOz6Boz8FTblpovxvtEhUtEkYITsNJk0NZ2eM7c9Q2N6jhKotES+
	 2412SDdaqpW602ERt4P9t1g+jKLFR+oWuL7d3GIglQtv/9HUT3ZFBaRUpgAWn+xgjM
	 tf4Zc8v8T7WXl6GQ2nLHhhPuBd+XB+LqH6z1cmHXE82UWulniOIumJLfgTbgQBPoqt
	 3dfI+Q+ieOyIw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D0318384C0B
	for <usrp-users@lists.ettus.com>; Mon, 11 Dec 2023 10:52:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702309922; bh=HlH6QPt+4OdQTEUQUxB0z4JdirP5owTInYg0hOP6SYc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=NpMIOIWiS/O4dimmu3ZBWrAbtRJrdi5u76v9mAIqSZNkBlelD/r2DsPoxRXqMvAGc
	 dtNbsT5GD28/ltGWOdNw4FepUH+lBb3e3tLsZMhKF8GqV2QD5Zc0x9RgRJYOIecR3s
	 2fB4A/383bQI60Dbt9o+++cMZAihi9Cvwtqd2Xm4NJHqljFrTFfaBvyLS2NqcVrWVm
	 EMI3aBFszqOn+pp+QOSExSxostv+3utP8p9EJVoVjUVT8xI074aBJ45+I1EmU64TO4
	 bNJJR7mW/onTqr6Zgc+HF6vg+paNAwb4yabitaMF5hJKOUrffk/nX35thZ86k4odKN
	 i+OSH3idZmhnw==
Date: Mon, 11 Dec 2023 15:52:02 +0000
To: usrp-users@lists.ettus.com
From: purva.joshi@phd.unipi.it
Message-ID: <vm1xdcnyWXJrTZZNIqeHWXe1bKjQrJrryvLEFqLsmo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: N2zNVM0ueX39BRyzcqtCiSOmJcUkzu1w7oj2MGGgXLM@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: F5IU2XRERUUVGZMU25XUCYZ75YPYQRMW
X-Message-ID-Hash: F5IU2XRERUUVGZMU25XUCYZ75YPYQRMW
X-MailFrom: purva.joshi@phd.unipi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F5IU2XRERUUVGZMU25XUCYZ75YPYQRMW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0378506226656473118=="

This is a multi-part message in MIME format.

--===============0378506226656473118==
Content-Type: multipart/alternative;
 boundary="b1_vm1xdcnyWXJrTZZNIqeHWXe1bKjQrJrryvLEFqLsmo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_vm1xdcnyWXJrTZZNIqeHWXe1bKjQrJrryvLEFqLsmo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Kindly check here.=20

<<<< lsblk

NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT

loop0    7:0    0     4K  1 loop /snap/bare/5

loop1    7:1    0  63,3M  1 loop /snap/core20/1828

loop2    7:2    0    46M  1 loop /snap/snap-store/638

loop3    7:3    0  49,9M  1 loop /snap/snapd/18357

loop4    7:4    0 346,3M  1 loop /snap/gnome-3-38-2004/119

loop5    7:5    0  91,7M  1 loop /snap/gtk-common-themes/1535

loop6    7:6    0  40,9M  1 loop /snap/snapd/20290

loop7    7:7    0  74,1M  1 loop /snap/core22/1033

loop8    7:8    0  12,3M  1 loop /snap/snap-store/959

loop9    7:9    0 349,7M  1 loop /snap/gnome-3-38-2004/143

loop10   7:10   0   497M  1 loop /snap/gnome-42-2204/141

sda      8:0    0 931,5G  0 disk=20

=E2=94=94=E2=94=80sda1   8:1    0 465,7G  0 part /

--b1_vm1xdcnyWXJrTZZNIqeHWXe1bKjQrJrryvLEFqLsmo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p>Kindly check here. </p><p>&lt;&lt;&lt;&lt; lsblk</p><=
p>NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT</p><p>loop0    7:0    0    =
 4K  1 loop /snap/bare/5</p><p>loop1    7:1    0  63,3M  1 loop /snap/cor=
e20/1828</p><p>loop2    7:2    0    46M  1 loop /snap/snap-store/638</p><=
p>loop3    7:3    0  49,9M  1 loop /snap/snapd/18357</p><p>loop4    7:4  =
  0 346,3M  1 loop /snap/gnome-3-38-2004/119</p><p>loop5    7:5    0  91,=
7M  1 loop /snap/gtk-common-themes/1535</p><p>loop6    7:6    0  40,9M  1=
 loop /snap/snapd/20290</p><p>loop7    7:7    0  74,1M  1 loop /snap/core=
22/1033</p><p>loop8    7:8    0  12,3M  1 loop /snap/snap-store/959</p><p=
>loop9    7:9    0 349,7M  1 loop /snap/gnome-3-38-2004/143</p><p>loop10 =
  7:10   0   497M  1 loop /snap/gnome-42-2204/141</p><p>sda      8:0    0=
 931,5G  0 disk </p><p>=E2=94=94=E2=94=80sda1   8:1    0 465,7G  0 part /=
</p>


--b1_vm1xdcnyWXJrTZZNIqeHWXe1bKjQrJrryvLEFqLsmo--

--===============0378506226656473118==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0378506226656473118==--
