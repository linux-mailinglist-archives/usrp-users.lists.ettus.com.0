Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKHiDJkld2kUcwEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jan 2026 09:28:09 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCDA856D3
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jan 2026 09:28:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2296238AD1B
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jan 2026 03:28:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769416087; bh=+LsdQySwht+g9pffx4wlKgItD8kqrZTbcWQS/w2cvHk=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=gwHZ/9ES0f/TmlVAq4AyRXcXxpuGtoOm5kvcs60+lkqYItFHOrOFQJqan1Sks4UnX
	 51+7MOfE3tA9sAlPCxm+9yeXjr+M3Dmj9638DPzB0kTS63h/EGllzVxJmrkCrVb6Tf
	 l8S/2WcVOKqKTqM69+duDwnUrU+1lSIfgV5d2ZWT2e140VpQSz18D+gzya8tFRoq41
	 Jj6CAhBz0CK8edL/KrMoOJaJ2AikgNRGiGWZ7cCLzSwhKp8YTAKzrV4hjx+aqAXpDo
	 GvxdvDHt4wVGLNFsRgmY7mdNwrAkHFN0uZDntFb5K331aE3DDremuYvF37reYDumLe
	 +cNL9iZz5P40w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 93A1738AD10
	for <usrp-users@lists.ettus.com>; Mon, 26 Jan 2026 03:27:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769416034; bh=AitPVzY/UYbiCI20UgMOPPOE0RuMSjt9nb9Zt6WhHmA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=fWvDrakz7EjlObOh6l7kXDA0o5V6YM2jPfrjof/Gwzj9gho1Vgro54Wat5WRoLIJP
	 fCrTZuD2bRALacJnYvFCMw6vR+Iw2dAEmhthzJPCmuHtoNitxr4W719V2sNr7VFu0T
	 MwJONpygVNylflBW1eHcFtgal+vcsplnJoFe1jweIf+Fu4XLab5OzGtEkarzTxcnEm
	 8Vk4ciQYgTDsdH8iPEbk3PcwwOI4CO8Xx3qjrcE7Tv3+SWTynPoR//w4AIfXBbR25D
	 m/XL8FStwCYubuQvEJv0QwOvRpDw7ROS7eLdHgDFcktxeJmc+X9gntCIiN5emIsG6p
	 Nt7ypmNx1LI1A==
Date: Mon, 26 Jan 2026 08:27:14 +0000
To: usrp-users@lists.ettus.com
From: carmixdev@gmail.com
Message-ID: <dvYs9Hr7Nhk39PmDXQf5NIlzWpzZrmxfYXTlP5tOc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 5a5f21cd-62af-42db-b2da-da58577ebce2@gmail.com
MIME-Version: 1.0
Message-ID-Hash: O5ZBM5SJBLPKSTMDXZ5IH6XS55BP7DWA
X-Message-ID-Hash: O5ZBM5SJBLPKSTMDXZ5IH6XS55BP7DWA
X-MailFrom: carmixdev@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPSDO Lock slow on X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O5ZBM5SJBLPKSTMDXZ5IH6XS55BP7DWA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2494200050877558857=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_PHPMAILER_SIG(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	R_DKIM_REJECT(0.00)[emwd.com:s=harmony];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCPT_COUNT_ONE(0.00)[1];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[carmixdev@gmail.com,usrp-users-bounces@lists.ettus.com];
	DKIM_TRACE(0.00)[emwd.com:+,emwd.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Queue-Id: 6CCDA856D3
X-Rspamd-Action: no action

This is a multi-part message in MIME format.

--===============2494200050877558857==
Content-Type: multipart/alternative;
 boundary="b1_dvYs9Hr7Nhk39PmDXQf5NIlzWpzZrmxfYXTlP5tOc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_dvYs9Hr7Nhk39PmDXQf5NIlzWpzZrmxfYXTlP5tOc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Ok, thank you  for your answer, should i need to start before this time, =
say after five minutes, could I try to sync to the internal PPS even if g=
ps_locked flag is still not true?

I would have to accept less precision, but the system could work in a =E2=
=80=9Cdegraded=E2=80=9D mode until the gps_locked=3Dtrue, do you think it=
 is possible?

--b1_dvYs9Hr7Nhk39PmDXQf5NIlzWpzZrmxfYXTlP5tOc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Ok, thank you  for your answer, should i need to start before this tim=
e, say after five minutes, could I try to sync to the internal PPS even i=
f gps_locked flag is still not true?</p><p>I would have to accept less pr=
ecision, but the system could work in a =E2=80=9Cdegraded=E2=80=9D mode u=
ntil the gps_locked=3Dtrue, do you think it is possible?</p>


--b1_dvYs9Hr7Nhk39PmDXQf5NIlzWpzZrmxfYXTlP5tOc--

--===============2494200050877558857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2494200050877558857==--
