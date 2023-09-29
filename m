Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E557B3BAC
	for <lists+usrp-users@lfdr.de>; Fri, 29 Sep 2023 22:58:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 09D333850ED
	for <lists+usrp-users@lfdr.de>; Fri, 29 Sep 2023 16:58:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696021097; bh=Et5QKvSyIzKgY1fW6Nh+PHanqoFFlKVLR06BW8FDMvU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Apkz3lD5q1Zfjhrs+jHYT941awKQYyyhjqkf0QaSePFeev+rdV/zJ9dPHzA7/7Avu
	 jVh4UyDYcxZ29VyPKtKPVy4rXTaJLc633l0hJB9N8HCBEe1tIUunW0XnkP9dMqX+tG
	 1EWJoJvOGM9a0d8yu9mOZt8X6GHtpIQeQxPuDtcAK+587/jof0gZ/UH+EiQMd560kb
	 rfkvCIRW3r9xgQ2wQUm5LREhfd1UrjqMiRv7SrkeLyVCoBPR2ev8WejDtT+opbuTP4
	 3Ridm/Si7zSn6zH/6AApdcMsUQCB+/edKh6r8vHIWcNrz2pQqY13Y4X17n1gTk/jiM
	 wFZ6GI7cVYzAQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C03A33850DC
	for <usrp-users@lists.ettus.com>; Fri, 29 Sep 2023 16:58:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696021092; bh=7Ew4hhxpkUoStr6PKcDBBUUeDHBNVW1WtLBAXWFtUVU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=h8WffEck9HXUQ3Nu2RFzFPgHHr/t586fhhJ4S8iZZhnu9Znh0nsQqGhRncvXANsNx
	 DrzChFEdS6X4HtpQX4GoE2BKrmMNnouk3qYam60H3yhwVQss4OCeV6h0pn/FWF03WE
	 Qm+9JwXg2IzZKE+e4qsvotJJqbpnYi/P0LUMCR2pCIAehwZdd+33bTjK+5IThLGEtC
	 nOqwi9WVhyIFSf7xtRUIWPCNhvgRd7ywI5bcXYmxgyyGb+X02PCU2qHR88iNi2j8Xh
	 V1LqE4anwvjGad0S2R9IfOBAMR9rfw8OPZQMYlzftzMRbsW4zXK/zrJiRrgbRA2rPw
	 MOMO3HyBNc1Kw==
Date: Fri, 29 Sep 2023 20:58:12 +0000
To: usrp-users@lists.ettus.com
From: shaneflandermeyer@gmail.com
Message-ID: <cpwAx5ymNAEAVPW8YLqUkZsxKDhv4jbQj8PlHRPYw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 3f383729-6ea3-8a01-5979-d0d4758a7105@gmail.com
MIME-Version: 1.0
Message-ID-Hash: OKUHLY5TKB57KEYJNPEJM3K7NUHCNVAY
X-Message-ID-Hash: OKUHLY5TKB57KEYJNPEJM3K7NUHCNVAY
X-MailFrom: shaneflandermeyer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK with X310 and Intel X520-DA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OKUHLY5TKB57KEYJNPEJM3K7NUHCNVAY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7983795542287382940=="

This is a multi-part message in MIME format.

--===============7983795542287382940==
Content-Type: multipart/alternative;
 boundary="b1_cpwAx5ymNAEAVPW8YLqUkZsxKDhv4jbQj8PlHRPYw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_cpwAx5ymNAEAVPW8YLqUkZsxKDhv4jbQj8PlHRPYw
Content-Type: text/plain; charset=us-ascii

The XG image.

--b1_cpwAx5ymNAEAVPW8YLqUkZsxKDhv4jbQj8PlHRPYw
Content-Type: text/html; charset=us-ascii

<p>The XG image.</p>


--b1_cpwAx5ymNAEAVPW8YLqUkZsxKDhv4jbQj8PlHRPYw--

--===============7983795542287382940==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7983795542287382940==--
