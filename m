Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6A4A116F1
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jan 2025 02:57:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BB9D1386394
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jan 2025 20:57:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736906236; bh=h269o/MNDDrGOgFj20bYT0mHtPHh1Lsegda0AEdg+LQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=FLcj3VvgHndvHZ9i0YoyhP7SRenGWs8sKDWy3NpAYYEVem0fMCtIi9XeS+2P6Y6is
	 QPbJs+P3R41nOpu9XuRPAL0GfVPoT5JK0UYeIFCY5wmpNnoIiS8ErXB8u9tcJ/95ho
	 j5rb28TTmD08tIAugmSb9t886TtTaWGrWhqttekvTzkr+KG45K02SSol+5gTpPwOkS
	 cDtem4l8gfUYdzXdiByCwHoDVl2tLu5y53QMdICxhZtYiupqDy71hc4MN0QunNQYZt
	 674GoUvthFkrSwzPTbAk2k/nWgUOFzlLOwRzsxdFoutCWBYdyIR96CGWZyQYxx5jUT
	 PI4UeamYBxftQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9D1B43862B2
	for <usrp-users@lists.ettus.com>; Tue, 14 Jan 2025 20:56:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736906181; bh=+pTT0H/jEVdtq7nKjKzZ/pnzidukSYebCegSa56FfRk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=AmwjRFdVMyRYw6Co0Y5JynTjeE0cNoopgwShK9pxpvfUWeOFdYvFZYS8AonFvRaD/
	 CmUTok8Ki61NP+tTywKrAcU6/SkPRPqiWWPrOQnvSUPc06ZgL4aBy4BqP7+lO8ZQPu
	 C/PPQJjrXntDLcxVengyssE1tYxqPM0nr5p5fioLhUTNrLcOOpXzH76IHEpjQuAUdl
	 +p7YO7ydMzW+cgpmKSbsz9OuccWj33NClUGsi0mpFbJKTLNVmmi0w66DjQNqui+sLV
	 6yRxrEq0rWopigs66nHg4nM9d8WEPYHtra7thDj+PE+YXmAqKC4Kwp9T2Wo5qj5gLo
	 1fo/iPiANag6Q==
Date: Wed, 15 Jan 2025 01:56:21 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <aunHd7FAYFHs44YJjxWxZ8I1eT2MMIxBnxvOhiRE5S8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A7Zua2ij2-_DyzakkiAX-ZsxqQ=D6tTxB+wENS7W63F=A@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: XSIC3DIV4DJAGEF4ELWHJGNLYJ52RPEG
X-Message-ID-Hash: XSIC3DIV4DJAGEF4ELWHJGNLYJ52RPEG
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Bursts/Buffering with Timestamp data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XSIC3DIV4DJAGEF4ELWHJGNLYJ52RPEG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4476071646796844138=="

This is a multi-part message in MIME format.

--===============4476071646796844138==
Content-Type: multipart/alternative;
 boundary="b1_aunHd7FAYFHs44YJjxWxZ8I1eT2MMIxBnxvOhiRE5S8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_aunHd7FAYFHs44YJjxWxZ8I1eT2MMIxBnxvOhiRE5S8
Content-Type: text/plain; charset=us-ascii

Thank you both!

\
This allows me to buffer \~100 packets of 1996 samples instead of 65. \
\
For others:\
stream_args.args\["streamer"\] = "replay_buffered"; // Add more "elasticity" on Tx using the Replay block as FIFO in USRP

--b1_aunHd7FAYFHs44YJjxWxZ8I1eT2MMIxBnxvOhiRE5S8
Content-Type: text/html; charset=us-ascii

<p>Thank you both!</p><p><br>This allows me to buffer ~100 packets of 1996 samples instead of 65. <br><br>For others:<br>stream_args.args["streamer"] = "replay_buffered"; // Add more "elasticity" on Tx using the Replay block as FIFO in USRP</p><p><br></p>


--b1_aunHd7FAYFHs44YJjxWxZ8I1eT2MMIxBnxvOhiRE5S8--

--===============4476071646796844138==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4476071646796844138==--
