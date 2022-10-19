Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 59170603830
	for <lists+usrp-users@lfdr.de>; Wed, 19 Oct 2022 04:43:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B6133812BC
	for <lists+usrp-users@lfdr.de>; Tue, 18 Oct 2022 22:43:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666147438; bh=LcJ0jsudzkWqBWKueJgMBolyDFCxYT9azI2fqPIP7FI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=xv6XceBNT3gOxDZpV4pgwR77FRNQv5Fkq05Y0j9WWfCMXdlOjMhRErZUsX8veuVFm
	 pxYjIxInaIxWv/RyGusJDO//Bexol+AuTWijX4JPGcoAhGTvJwYD0Wml2ZyhObQKu9
	 EQOVe9dhReG42nJhqIOFlusWVjEo5zl3D2rGGlRDwAQ3SS/K4Krjd3JTOBd/iSGGEp
	 Y57w4PHQPBfJX6IGIc+W75Esmb94g7GsnCjAAkC4KYBCov/vhBwnblNKfL78lunc7g
	 nhboadnLmtdDjZfqyN5zfz5efXkKtKq7gytBPYQWcw8Rqaub3PnYhpFvg4ccbMdDKq
	 rORLPaGN1pcEw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1B6453809CA
	for <usrp-users@lists.ettus.com>; Tue, 18 Oct 2022 22:43:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666147387; bh=y5atwETTvJOdWcn7XkYi5I3G8aTTZYtD0nkMNUAnk7k=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=CbETLGow+uWXY/4c+Viv3IOdcA74OCViJrKI6TEQpKuMDDZfE5iwDkcI1Rrg8geVW
	 tehJfbN3991TJzgb/6Dan3hjw+A9LjZcg8dnXInqEEJD49i/p2w5iVYYTn2XFLGr9e
	 Qg/FAxkNApZ+Ilyqenviq4YACaNfHnoN6/+OM14EovNIkPhL1PYxlwTa2I8p5QDOku
	 LyXgOMlaJu7GO7d7DSAwz41FtjIKab1WhZYmn4V3b2G7BsovKSHDoWfGn7e0/73JpN
	 i/r1Zu5lwbmOGMlaj2T7A/XcDYuolOD8je14DQn7JyxkO62iZQsBuYaordENvPHjXy
	 pj6AKp6BD0/cQ==
Date: Wed, 19 Oct 2022 02:43:07 +0000
To: usrp-users@lists.ettus.com
From: paul@haleytech.com
Message-ID: <rZiEySXywiyNnVKI0FUQjzk0UMFynHph7bILViKQQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: ea51f4b6-7e5b-c7b2-e29b-3ebefe0e023b@gmail.com
MIME-Version: 1.0
Message-ID-Hash: N3XNM4MXZ2GDHWR4AUO5TRIAKOID56BY
X-Message-ID-Hash: N3XNM4MXZ2GDHWR4AUO5TRIAKOID56BY
X-MailFrom: paul@haleytech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B205mini-i issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N3XNM4MXZ2GDHWR4AUO5TRIAKOID56BY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7309800312529986928=="

This is a multi-part message in MIME format.

--===============7309800312529986928==
Content-Type: multipart/alternative;
 boundary="b1_rZiEySXywiyNnVKI0FUQjzk0UMFynHph7bILViKQQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_rZiEySXywiyNnVKI0FUQjzk0UMFynHph7bILViKQQ
Content-Type: text/plain; charset=us-ascii

How to solve this problem? Another USRP B205 without this error.

--b1_rZiEySXywiyNnVKI0FUQjzk0UMFynHph7bILViKQQ
Content-Type: text/html; charset=us-ascii

<p>How to solve this problem? Another USRP B205 without this error.</p>


--b1_rZiEySXywiyNnVKI0FUQjzk0UMFynHph7bILViKQQ--

--===============7309800312529986928==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7309800312529986928==--
