Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3884477496F
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 21:55:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 49642384A81
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 15:55:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691524529; bh=Dm0G3dM+350pcCLzGgR7b1pr+16s3KZMtmotHbeJBNI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=lSywhnkezMTuuJJcYZAX7DDlUJ503z0pQyh+tOtBiY7sYb/WqCX7Sdga2oZg5jImg
	 B8t2XRGpaGXAwDxub0EVPvKZpMrG9xhv33VCimLAYd+aqdVaLBiv+dmZhOvaIYC0wj
	 2+EgkNj0N8Kp2v1PE186XM3LayDWR24vW4ojLPtMTx3NC7m/Rvd5rEEefMCObdRRpN
	 roWQwXTRyfxXw1JPBlC+G8HSKqeXT6f9yCeu/cNyN9HcC20O3Tdf49ScsfHDWjqkWe
	 mQMFuD9LVAHEQLlg/Jjo8bRdguVgw2KpMRKdrRuZmYRPiBKP1fIG3EbPuRQr0TI33n
	 qUHwDpt7kDCtA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C54FE381065
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 15:55:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691524512; bh=eRPD1BzoVyp7rwibbUIi4EJn5EDSkTbKvMjXc788L/s=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=oTx1QGb3IHfkVqCqrym/e4g7L+jXtYJl8kjZQMadrdCwm4Z3bNFMliS04FxRr2iT3
	 MyX6AVDphufA/tLBD7iqqUrZt+VPSEe649+UimEleeYzspAXDcw6DBF/Fpfnmjw76W
	 Nvan7DrIPwbwQXHvzVPtOKTs8FY8fVzFcvEEgk/fn0KoY1DWYHwgRb5NGVfxzI/f84
	 R2f9TbTxd9le7WtQTgf73u+NT1L7YYZ0XzHWE5azXrVD1aM93qsP0iEpnrWM0QjOmU
	 FmONPzReCsoklLrBSwRyEw7TYkW/C5JaCH9tLbmHP2p+ao4l+7WZJe1w1KQrPP0tvp
	 N+ia9rkyqDZNg==
Date: Tue, 8 Aug 2023 19:55:12 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <dQgVLGOkz9gmMFLxRWtzZAEeXkIUYyFu7Y6nV8H7nw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: a171d061-16c9-f4ee-d368-1c7821f48bdd@gmail.com
MIME-Version: 1.0
Message-ID-Hash: AOPDLPR2IUOFF6EJERXZBJRTE2UEPYXW
X-Message-ID-Hash: AOPDLPR2IUOFF6EJERXZBJRTE2UEPYXW
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AOPDLPR2IUOFF6EJERXZBJRTE2UEPYXW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8557838833235751953=="

This is a multi-part message in MIME format.

--===============8557838833235751953==
Content-Type: multipart/alternative;
 boundary="b1_dQgVLGOkz9gmMFLxRWtzZAEeXkIUYyFu7Y6nV8H7nw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_dQgVLGOkz9gmMFLxRWtzZAEeXkIUYyFu7Y6nV8H7nw
Content-Type: text/plain; charset=us-ascii

Most definitely, but I am currently away of my workstation therefore I cannot share that file right now.

I will copy its contents to this thread tomorrow, it will be posted here in 12 hours at the most. Will that be an issue?

Please, excuse me for this one!

Regards,

Eden.

--b1_dQgVLGOkz9gmMFLxRWtzZAEeXkIUYyFu7Y6nV8H7nw
Content-Type: text/html; charset=us-ascii

<p>Most definitely, but I am currently away of my workstation therefore I cannot share that file right now.</p><p>I will copy its contents to this thread tomorrow, it will be posted here in 12 hours at the most. Will that be an issue?</p><p>Please, excuse me for this one!</p><p>Regards,</p><p>Eden.</p>


--b1_dQgVLGOkz9gmMFLxRWtzZAEeXkIUYyFu7Y6nV8H7nw--

--===============8557838833235751953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8557838833235751953==--
