Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MAdKtAod2lzcwEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jan 2026 09:41:52 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB238590D
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jan 2026 09:41:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1127D38B922
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jan 2026 03:41:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769416911; bh=zLgNtyYVRcpO8zcnNKCdN6FSX6PTho+WCW+SNP6S5eM=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=KuhSky9GdHu21/feGP19lv/pXjfEIeTCLAXhFSEiN1oOIafjWmj4xP4G63tFyvsi6
	 XS4sWCdnE2aUQajmTONbo2xkIGZoci9dVT0xYDPUWCD2bjsIKILak6tTWLZeFC1ZvE
	 p4nbC/jgtUrJpouUf0aqzic9/4TW5+7zQzePKNmCYq9+z8QQ3clZT9dPyrvpbZ5Cth
	 7GQtcaF457iLYLVSgbc+knd2JfHX7xZwm/9b50tBytpdY7OUsQ+D3xXppv1QsqYTdN
	 bwZ/n2MUb6MOLyVA1sl/cP27EW7hSb9YBU/UeR+W3qhBJhaLpMCLRYL5HSUIlvZAwp
	 GkvaHloPssMvg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9A82B38AD75
	for <usrp-users@lists.ettus.com>; Mon, 26 Jan 2026 03:40:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769416845; bh=4YNOXNflf1sFb7IbnLodXP5igsz16L+JWKN/lvpXAuU=;
	h=Date:To:From:Subject:From;
	b=VH3lQ/NoFkuYHKzleCTs/injSHaJa23bVguhMqDOiGzqta0uGtUSY0IrXON0T2pnH
	 +piRUZclUDh6mJV6M6G45TUdvFJZMT29I1Jul00Uf5pFksCDpVwtVxb5Yov94cHCRW
	 KNE1Osvc4+ZSS5zaZ6zV5rdGoM3NzRdzBNSJGr0ULbeooO4vUrrCLp8lumLoGgQsUv
	 41+LZTUgMiZ7lj+E12Yk3ih25DoW64auGvJxt5XkqWgmKBEus77uReS+Vb9aIkNvpb
	 v8i95B4V4J1J5J9gasP6Jan9AtF+622YrPJJF6qLnfS09qL83787TgLLDc8iZ0pzAu
	 RinRl7mYGqVFg==
Date: Mon, 26 Jan 2026 08:40:45 +0000
To: usrp-users@lists.ettus.com
From: carmixdev@gmail.com
Message-ID: <iFqBuZkwzIss6S9QNjVi7yDphzfphf2jvmKE7P28g@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 2RXA5NXPDOWO7RN3UFIDINZTFW7NELQN
X-Message-ID-Hash: 2RXA5NXPDOWO7RN3UFIDINZTFW7NELQN
X-MailFrom: carmixdev@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Split x410 rx channels to separate hosts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2RXA5NXPDOWO7RN3UFIDINZTFW7NELQN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7903985230826177187=="
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,mm2.emwd.com:helo,mm2.emwd.com:rdns,ettus.com:email]
X-Rspamd-Queue-Id: 1FB238590D
X-Rspamd-Action: no action

This is a multi-part message in MIME format.

--===============7903985230826177187==
Content-Type: multipart/alternative;
 boundary="b1_iFqBuZkwzIss6S9QNjVi7yDphzfphf2jvmKE7P28g"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_iFqBuZkwzIss6S9QNjVi7yDphzfphf2jvmKE7P28g
Content-Type: text/plain; charset=us-ascii

Hi, I would like to know if is it possible on X410 using for example the X4_200 firmware(splitting to 4 SFP+) to send separate RX channel traffic on separate hosts.

I need to process each channel on a separate workstation in order to improve the system performance

--b1_iFqBuZkwzIss6S9QNjVi7yDphzfphf2jvmKE7P28g
Content-Type: text/html; charset=us-ascii

<p>Hi, I would like to know if is it possible on X410 using for example the X4_200 firmware(splitting to 4 SFP+) to send separate RX channel traffic on separate hosts.</p><p>I need to process each channel on a separate workstation in order to improve the system performance</p>


--b1_iFqBuZkwzIss6S9QNjVi7yDphzfphf2jvmKE7P28g--

--===============7903985230826177187==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7903985230826177187==--
