Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCkFCNJsd2k4gAEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jan 2026 14:32:02 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5664C88DD1
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jan 2026 14:32:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1D499389C05
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jan 2026 08:32:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769434320; bh=1x0jjvOE4lOT1qs4HU5gw1Z/UNlt041xJow9IE+DcHs=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ZYGmvytaDKl+3TFf8+x/paKY6PzKVezA/gTeD1NOgpXBowW0lFVzUt4LaDdpT2V/1
	 653Y3yNtQYbZpl8q/iPmt/E6x5XzINPVOiY0/RkLnnzBXKNZnQliGAhdO+hQA7Mp9M
	 jqpZbcIyTXVCTHy7tiYEF71PI624vGTnZ2YUhj9CN4soJ91+EXaiNXDJ6PuGbTtkol
	 WTXohe3VOItu2MtFk5SGO31VrGmvM4AUSpU5XhdGXcugRgzbiR+hErTsEjoJOBqC+J
	 5HsE+t4R71Z7NPI3WPMfz1zjUodRxyzADA3LVwHvS6N6ECdI9jXqwThTSevNB7FXzE
	 sQNEyiVuxDwWA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 975E1389B52
	for <usrp-users@lists.ettus.com>; Mon, 26 Jan 2026 08:31:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769434266; bh=UTa2PA2XoGcqQa/XhHZcShc2cE/tWEgiSpGAfMM3u2w=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Tdju9OxaTHRTAMxzi3eedxu0dPoMO8OST8aP/J/h2Q6qp10hGyjpUSPkMkG/Isc8O
	 zrYt2JkpnJP2v/iw/mOV4mf4oqaymLPatezpOZCgcwUIyK6dJdUYHGoUG4+hdL+KO/
	 lxIUxVfYEmWyKSXTy028J6vtq1SveTPQ7sWgJedOR3BDkB5Hju2IY1IkFluDja1FJE
	 7dQWdSwZxfutVTOsykB3A7X6YGDW/M3UFWS2XzV3lN470tLnEyTwSKw2/8r0Tna2jl
	 Bf5Go1ftWOGonICzpWEUCl9xuo7vac0eCLRCEpRvrdrleLp2COkJsDIxMM4EYw5y4I
	 17JA0vv7QCj7Q==
Date: Mon, 26 Jan 2026 13:31:06 +0000
To: usrp-users@lists.ettus.com
From: carmixdev@gmail.com
Message-ID: <ld7bTyLeSCFICpJFhEXRRR2OGJLaQ6J7aLfZ8gRvBE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CH0PR10MB5179C574997A68BAD40F1A789993A@CH0PR10MB5179.namprd10.prod.outlook.com
MIME-Version: 1.0
Message-ID-Hash: MNA3MZTXPTZC4JFQMCNCB4OOQUJ5EXSD
X-Message-ID-Hash: MNA3MZTXPTZC4JFQMCNCB4OOQUJ5EXSD
X-MailFrom: carmixdev@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Split x410 rx channels to separate hosts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MNA3MZTXPTZC4JFQMCNCB4OOQUJ5EXSD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7248289666430604680=="
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,mm2.emwd.com:helo,mm2.emwd.com:rdns,lists.ettus.com:mid]
X-Rspamd-Queue-Id: 5664C88DD1
X-Rspamd-Action: no action

This is a multi-part message in MIME format.

--===============7248289666430604680==
Content-Type: multipart/alternative;
 boundary="b1_ld7bTyLeSCFICpJFhEXRRR2OGJLaQ6J7aLfZ8gRvBE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ld7bTyLeSCFICpJFhEXRRR2OGJLaQ6J7aLfZ8gRvBE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you Martin,=20

I=E2=80=99ll try that

C

--b1_ld7bTyLeSCFICpJFhEXRRR2OGJLaQ6J7aLfZ8gRvBE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thank you Martin, </p><p><br></p><p>I=E2=80=99ll try that</p><p><br></=
p><p>C</p>


--b1_ld7bTyLeSCFICpJFhEXRRR2OGJLaQ6J7aLfZ8gRvBE--

--===============7248289666430604680==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7248289666430604680==--
