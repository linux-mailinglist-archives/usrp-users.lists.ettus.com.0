Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yENRNJTHwWlUWgQAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 24 Mar 2026 00:07:00 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF4B2FEBF7
	for <lists+usrp-users@lfdr.de>; Tue, 24 Mar 2026 00:06:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7EEF33861FD
	for <lists+usrp-users@lfdr.de>; Mon, 23 Mar 2026 19:06:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1774307218; bh=pwtDhBzIT1D5CgpwS6H2WinEd24IJJwPrZCElZwMIN4=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=uhXXgrP7o1NbxLvyx2xIdhvLKureFFmWpcHm2UX393Dhay57BVUnMjDqBDtDZVsy9
	 vpbjPe9mXGk2y5kvD80GXlaxDP0dqe729aOI7j3GLNQKUYzGKyOr/tG135Ofjz/RON
	 peiSpfdHkvdNTVaX4sMcl9GhX5uvGnfFBsn5MInhLkIe6fdujWTDR7m3IiLtrdS87r
	 +Dv6EdGEvaCNfUGA33badLoSd40enI/nIyeNxKnOJlWuBvy2bwezlpl8rnt/Zi99GJ
	 tD2WQOxLt6GB817j9+fcZ7+ItW1wGUa4y4HGdxAXbUg+rdgXV6NBxF4SfEIcZpjrGO
	 SvQIbVwF0Suhw==
Received: from stacey.r0tty.org (stacey.r0tty.org [135.181.93.38])
	by mm2.emwd.com (Postfix) with ESMTPS id 3FDA8385D6D
	for <usrp-users@lists.ettus.com>; Mon, 23 Mar 2026 19:06:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=xx.vu header.i=@xx.vu header.b="lAcY/uOr";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xx.vu; s=20200309;
	t=1774307178;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=pikoDOKgu+8YwwvHWVxNASz+tFBnNBVSByeiI+N+yns=;
	b=lAcY/uOrbsJvVXNc9PcgrAbelpymkQAVNyS4QibW8tkFE5SEkbHaRpTk5TWyfxLvShllYJ
	CiwBjN+AW/tkV2i+HP0iT3TxfPoWPWEY/o/d0zskOycOOSitCh76Nc1y2Aks0aNf1yz/mm
	S5bv4EKZkIZeKhzWXpGHpepIcQ55Fec=
Received: from stacey.r0tty.org (localhost [127.0.0.1])
	by stacey.r0tty.org (OpenSMTPD) with SMTP id 40090215
	for <usrp-users@lists.ettus.com>;
	Mon, 23 Mar 2026 23:06:17 +0000 (UTC)
Date: Mon, 23 Mar 2026 23:06:17 +0000
To: usrp users mailing list <usrp-users@lists.ettus.com>
Message-ID: <k6s7gi3rzof2jtvmn4ygkebhwcnimthsa2rwnwtf3i6zluvslb@3mkudjoa6ac7>
Mail-Followup-To: usrp users mailing list <usrp-users@lists.ettus.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-ID-Hash: Z44R5LQ74OZLC76NZI7ZMBMFLRZ6BFDF
X-Message-ID-Hash: Z44R5LQ74OZLC76NZI7ZMBMFLRZ6BFDF
X-MailFrom: vai1oivahk6l@xx.vu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] WTB MGA-61563 (LNA on WBX grand-daughter-board)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z44R5LQ74OZLC76NZI7ZMBMFLRZ6BFDF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Alexander Huemer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alexander Huemer <vai1oivahk6l@xx.vu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.21 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	TO_EQ_FROM(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[vai1oivahk6l@xx.vu];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[xx.vu:s=20200309];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,xx.vu:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,ettus.com:url]
X-Rspamd-Queue-Id: EDF4B2FEBF7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

I have a WBX with a broken LNA on the grad-daughter-board, U6 at [1].
If you have that IC in your inventory, please let me know.

Thanks,
-Alex

[1] https://files.ettus.com/schematics/wbx/wbx_fe.pdf
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
