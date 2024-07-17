Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CE785933CB4
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2024 13:58:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BE68938513A
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2024 07:58:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721217506; bh=eCroJq+gd5AdxKvGKrq+u3VJOIRatJhK1aFmLReCdnk=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=el6ym6hwVMp0Ik2/G5zFKVAhEArUhia/f8kx6+2ah2Cn5gE9OQ0PwPdvOJ1eoN8kC
	 qkPR0IT9HwXh3kzyGdLJCeKjOseM8Gj3w3bExq4jE1bjHfPt/vly+F+lWRRW+WyAaB
	 FwUvz1cnlv+wCDMltvbCDJGuSllGrCq9W+S78rwcXH3lGuSNpOXkSC6b6a32w118+D
	 W3ix9UYrhHlaT62CvuCGh6od7kjXXEB/NU/pHz5f+d/cXloe5Pp8tq5x7zHDX3Sljm
	 8pbGMGMdbt+cIPEmosQJcAQq33bUMmJJ0adQkt/LW8nufByUWLVI8UsC7lMV4Zm0zy
	 VMXbxESs2IUIw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C3C7F38498D
	for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2024 07:57:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721217449; bh=g04Yd3euxcOc5wrZREjLQiz9aFdcUo7YW9ojKASvhFI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=yx9yzKu/20u35DBQCDl3GMP/cjP0s8BnJGBtLA/RPfeaRcH24RGPmT7+6fstEp8AG
	 VoHSusjV9wRpOgO00e+eXj+7dhE8U2PWWd0qdZNoBrdF570rpjOhWjnGo3gFNLkBvx
	 TbYEzrx0PFsFNZeiRghKuknfKzXjEbyE9MzugyhlDCXWQ3P9ca9C/bsBpvS6TqBj9o
	 WXkfMrLn+EGNrGpMDKSoL5KPgF0hT7wdyNhaSsUtFlIUgPzU7gCRWsUyVJH441EERH
	 Rke37yPdrwl2z6v1Q2IHtNjXJV5p1PMrX++li8JTMFl6TtKQJ6UMZuCvN2F1J0DJL7
	 tFGkZp1auq9fg==
Date: Wed, 17 Jul 2024 11:57:29 +0000
To: usrp-users@lists.ettus.com
From: mamuki92@gmail.com
Message-ID: <33pxXbIwssyKWwY5GnkflFSwNzaVvJvtXkkVotK5l8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A4mOcwzMmOX-r_WbHibH5wVN8TeKCu6JEE=WDFLNQ0gEQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: QQXH4OJBY76I7KDW4EFN3ZSYENKBXTID
X-Message-ID-Hash: QQXH4OJBY76I7KDW4EFN3ZSYENKBXTID
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Synthesize an OOT block with rfnoc and UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QQXH4OJBY76I7KDW4EFN3ZSYENKBXTID/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6055574342671382226=="

This is a multi-part message in MIME format.

--===============6055574342671382226==
Content-Type: multipart/alternative;
 boundary="b1_33pxXbIwssyKWwY5GnkflFSwNzaVvJvtXkkVotK5l8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_33pxXbIwssyKWwY5GnkflFSwNzaVvJvtXkkVotK5l8
Content-Type: text/plain; charset=us-ascii

That works, thank you!

--b1_33pxXbIwssyKWwY5GnkflFSwNzaVvJvtXkkVotK5l8
Content-Type: text/html; charset=us-ascii

<p>That works, thank you!</p>


--b1_33pxXbIwssyKWwY5GnkflFSwNzaVvJvtXkkVotK5l8--

--===============6055574342671382226==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6055574342671382226==--
