Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHVkMArmjWms8QAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 12 Feb 2026 15:39:06 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F419712E512
	for <lists+usrp-users@lfdr.de>; Thu, 12 Feb 2026 15:39:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C826F386082
	for <lists+usrp-users@lfdr.de>; Thu, 12 Feb 2026 09:39:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1770907144; bh=9CpnhGB+hwjXBpr1FwsHsbdgCw84xiz5+qJY/QHrdVE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ndoXngHAlmSeB33+xK/8l6JUPErIbWqZAHZcutHChMQsqSx0fUmW68YvQ2Qrw5KxD
	 LpXeojAOSYJ6JYFIzYqui3gt0eNRaIY912bMwL8ColYLLLSkosrXm+L9qkpGnYt7O7
	 1e5o3q6k0ao7ZBIpvjZds1HoBBT9kMh5tJhEry+gQsRLIzonvWby7Rt2RFAb/y4LP8
	 eIdaECQQF0TKPCMKmEPisyfHR8RjMqQEJGfEJLZ3jnYxsEnCPlQ8CX6x8NelRxKnHz
	 0dfFGQFw7eh4SvVkaaXse1mv2lWuKYA4XtTSGshqHnNZkp0qqqL5ZYCNeIuB/qnNka
	 M+o78MYQaoqNQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D1C96385E81
	for <usrp-users@lists.ettus.com>; Thu, 12 Feb 2026 09:38:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1770907118; bh=sSLdlwE1HEZCEV4JfLRgm5KEMXKPXXrwhY7t3RXaCfY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=yxHSkoa/YGp5Sbf2oNiVVLfQBiLpd4aBakQk0TWa7lmMSw3RfhsW/OI5W9pOezQJu
	 HS/KEQXfHJzczcTKvSnEaXaw/MRilXiFXYK2UFDC8EZmdWbjn3aAPivdDxEzLqqeMQ
	 bn9FfaYNfr8nhN2K+Y+VPDV0flmiSCHh/X20rQxhyHdbuCnxfcGuRK60k3fSPnaznV
	 PdiCNWjiNlJ7wricUwGmj7HtOEgDKHpgGqMvmLSaHeANEcr6cDUQ4qKoGCf/WGx78k
	 PPVO7PCjtabdY9+vxDiFdqpAoQjDEAjckL35Mbo/gHggLJnWrLbB/VpeTbgClZNLXM
	 XbWBTJ0SFq7Sw==
Date: Thu, 12 Feb 2026 14:38:38 +0000
To: usrp-users@lists.ettus.com
From: pav.vieira@gmail.com
Message-ID: <YSn8y7eTYgyq8crqs9nIXuZ0hv3C1LumbEhWkP4kw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: PAXP251MB0496A9CD08E45AEC6C8900489360A@PAXP251MB0496.EURP251.PROD.OUTLOOK.COM
MIME-Version: 1.0
Message-ID-Hash: RYQSDFYQ3MFW6CAVLB4GTXANIYRY6TFI
X-Message-ID-Hash: RYQSDFYQ3MFW6CAVLB4GTXANIYRY6TFI
X-MailFrom: pav.vieira@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: NI USRP 2950 FPGA Image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RYQSDFYQ3MFW6CAVLB4GTXANIYRY6TFI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2442686005634669385=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_PHPMAILER_SIG(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	R_DKIM_REJECT(0.00)[emwd.com:s=harmony];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,emwd.com:-];
	R_SPF_NA(0.00)[no SPF record];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[pavvieira@gmail.com,usrp-users-bounces@lists.ettus.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: F419712E512
X-Rspamd-Action: no action

This is a multi-part message in MIME format.

--===============2442686005634669385==
Content-Type: multipart/alternative;
 boundary="b1_YSn8y7eTYgyq8crqs9nIXuZ0hv3C1LumbEhWkP4kw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_YSn8y7eTYgyq8crqs9nIXuZ0hv3C1LumbEhWkP4kw
Content-Type: text/plain; charset=us-ascii

Dear Cornel,\
The NI USRP 2950R devices are the same as the ER-USRP from Ettus, there is a mapping between them:

https://kb.ettus.com/Mapping_Between_ER-USRP_and_NI-USRP_Product_Numbers.

Having discovered which device is equivalent (I believe it's from the x300/x310 family), updates can be made by consulting the knowledge base, starting with:

https://kb.ettus.com/X300/X310

I hope this helps.

Best regards,\
Vieira

--b1_YSn8y7eTYgyq8crqs9nIXuZ0hv3C1LumbEhWkP4kw
Content-Type: text/html; charset=us-ascii

<p>Dear Cornel,<br>The NI USRP 2950R devices are the same as the ER-USRP from Ettus, there is a mapping between them:</p><p>https://kb.ettus.com/Mapping_Between_ER-USRP_and_NI-USRP_Product_Numbers.</p><p>Having discovered which device is equivalent (I believe it's from the x300/x310 family), updates can be made by consulting the knowledge base, starting with:</p><p>https://kb.ettus.com/X300/X310</p><p>I hope this helps.</p><p>Best regards,<br>Vieira</p>


--b1_YSn8y7eTYgyq8crqs9nIXuZ0hv3C1LumbEhWkP4kw--

--===============2442686005634669385==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2442686005634669385==--
