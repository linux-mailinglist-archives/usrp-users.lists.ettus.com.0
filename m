Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB480793279
	for <lists+usrp-users@lfdr.de>; Wed,  6 Sep 2023 01:23:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C82D0384DBD
	for <lists+usrp-users@lfdr.de>; Tue,  5 Sep 2023 19:23:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693956213; bh=hP4ejnlM9G4xYqDLAXDP0oGfg0WBiYPLDYFsHqscbYM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MkZ1X8r1X7xoWoW7eJetmg1JaTYSM16m/UWYKRlNk9HO6xUfRvId72EbCmLVaPs7S
	 KAacfz/pmSGm8nHpfQyo51k2gn+cyxVxwgRjAknCGJx34XSCY+sQ93BO0h0zC/h8TJ
	 z5k8JAnhCC21gQ+ceFZ+ajic5jqcbXYgmC31QvK4xVwsd70nC14TNan1YWGPEfXJ2g
	 /+Iunzx3WgWwZiI8JdBEW6CC9kTioIYKYlGHMWVqYkalziMDYOR9KrBrFZQbID8mkQ
	 96z0XCdaCZUFwS7UZx0HTZGa1+g3Dbjr41vzW8jhoULF33e4PuKU7BMdX4vcGvkSRr
	 SX3Gjgauhj8MQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A7A21384C6C
	for <usrp-users@lists.ettus.com>; Tue,  5 Sep 2023 19:22:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693956154; bh=GNWB9C/xtbFyHMf8aPd/hm8Q91ilN1sLwExS5+cgCZ4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Tmsz99nvIP+a4+HKfNT7ajKmWZdgM0W5XO6aQM+2OnDSysmU3QGJ78zvJqThvUS3V
	 LhFqE9yOSGsIg+3jGM11E/+hydkzRXHi/Y1ikZ80t2kJB7AB+Nz2xc26zv3/gnrLsG
	 zM/VbzikcszgRqC/GG4p/AEsGIS1ZeoYtkKEjsWmFGpa6CpnY5NTGVur6vJko8vJZm
	 4qTo//1AP7B609umDkZ+6YXlXhcgeCUKHmH9/xlwluxF7fF3taT3GAsA7PXWWPXEoH
	 0Yj1fF0Zr0hTV0tsgJpO5YlaU0eVWJpQlc8kDoMffz1IpakVIzdhkpUyWF2TLyEtP6
	 Gw2nbtWf56iJw==
Date: Tue, 5 Sep 2023 23:22:34 +0000
To: usrp-users@lists.ettus.com
From: blakebaldwin@uvic.ca
Message-ID: <Y0CWTyNWUl1wkvP41EdGFCEjCP3CwUkrnlclzbf3g@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: e08adabd-3701-41dc-8dba-636da554e890@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 5TCWYECRHV5V33IN5X3VNPNNYQU5D7GU
X-Message-ID-Hash: 5TCWYECRHV5V33IN5X3VNPNNYQU5D7GU
X-MailFrom: blakebaldwin@uvic.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 Channel B control for GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5TCWYECRHV5V33IN5X3VNPNNYQU5D7GU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6535148048533469351=="

This is a multi-part message in MIME format.

--===============6535148048533469351==
Content-Type: multipart/alternative;
 boundary="b1_Y0CWTyNWUl1wkvP41EdGFCEjCP3CwUkrnlclzbf3g"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Y0CWTyNWUl1wkvP41EdGFCEjCP3CwUkrnlclzbf3g
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I see, thank you for your help all the same. I=E2=80=99ll keep at it and =
perhaps someone else can lend some insight in the meantime.

--b1_Y0CWTyNWUl1wkvP41EdGFCEjCP3CwUkrnlclzbf3g
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I see, thank you for your help all the same. I=E2=80=99ll keep at it a=
nd perhaps someone else can lend some insight in the meantime.</p>


--b1_Y0CWTyNWUl1wkvP41EdGFCEjCP3CwUkrnlclzbf3g--

--===============6535148048533469351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6535148048533469351==--
