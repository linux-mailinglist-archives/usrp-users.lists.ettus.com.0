Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hISjMb2OMmpR2AUAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jun 2026 14:10:37 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B64F6998C8
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jun 2026 14:10:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=XS5EghUo;
	dkim=fail ("body hash did not verify") header.d=emwd.com header.s=harmony header.b=cpuD+Gwj;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=none
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0E8B23869DF
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jun 2026 08:10:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1781698236; bh=KPpKbiRDjJeur47OyeQfvnkWBkckvHfXeHMKKtg+mxA=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=XS5EghUooZsfMqFY6e2O9jrwAMPoI1y/Nbvu1YEkKgIo8uNLi0fV3Po0OzN1e/YCv
	 +d11ox0Yu+lronAUlkUJBQlZLIt3BoKlxFUnJa1ZqvBrjmsikD5UcQnAuKdUPReWAu
	 0g3YmRtMvk9++TsXaIn9EdXcR6U7q+rv97QEs0bX2aBdre8UpIp53y3WpvE9klDkEy
	 7DQDq1iiz3BKJYp74lcwRp4yJ0U8uK8mj7SDt4PBr8oMCRvfDdhHtZuvasmvIABtvH
	 z1SIJk3IHZK1kcZgJ49mNMvJwkW0wWR0TqaVJWPLibLW4O5dX/0Ta7FSn2pC1J3FvY
	 I1EGlbBmJ24hA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 58455386517
	for <usrp-users@lists.ettus.com>; Wed, 17 Jun 2026 08:10:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1781698231; bh=UGjg6Te3pQEru/xBgPjmeyxPn+nTwQEpwNI/4Y8OIzo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=cpuD+GwjARRqRfioYVDP4VKxqiU6Q+1WjQayHNrGqfltMyFEtKB8w4Sfnpnbb48Xb
	 ysY3KBCX0g/aYbuj9OkLhNPuAwLsONBG4IDN1Ywxwfi9MUYmlwqKSPyiYEZCWoM+Bo
	 3YEvrlaxPW9BLf3dFpatXYaniBtJ7aPf3wB+o5PNrPy2LrvV/KwRYIYaBzv4AqGicm
	 KMmVDhSHlQR0VtUlhHBlGFymYZvF3QHvKr2QrZV6oQiRhhtfdd7OLAhUp25lIi8ZRb
	 32YinSSoRnyT43dkPcRqx1RVxrsX3UX8DChRlADmUAooZHu3RDC1JE0Nu12+k4bZCs
	 h7lfe+r/EmQ2w==
Date: Wed, 17 Jun 2026 12:10:31 +0000
To: usrp-users@lists.ettus.com
Message-ID: <6CR3LSI5J3IXgsusk0fxgnjNAGGkUiWPIPSp9tw3Aw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: e390a651499a4b30a308130124c50226@hhi.fraunhofer.de
MIME-Version: 1.0
Message-ID-Hash: 677CZ6M4IDN2RFBC57VOCUXUDT7EXD5O
X-Message-ID-Hash: 677CZ6M4IDN2RFBC57VOCUXUDT7EXD5O
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 timed commands for tuning
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/677CZ6M4IDN2RFBC57VOCUXUDT7EXD5O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============0808664741600918106=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	HAS_PHPMAILER_SIG(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	TO_EQ_FROM(0.00)[];
	R_DKIM_REJECT(0.00)[emwd.com:s=harmony];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORGED_SENDER(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[niels.steffen.garibaldi@emerson.com];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	DKIM_TRACE(0.00)[emwd.com:+,emwd.com:-];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aero.org:email,ettus.com:email,mm2.emwd.com:rdns,mm2.emwd.com:helo,emerson.com:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1B64F6998C8

This is a multi-part message in MIME format.

--===============0808664741600918106==
Content-Type: multipart/alternative;
 boundary="b1_6CR3LSI5J3IXgsusk0fxgnjNAGGkUiWPIPSp9tw3Aw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_6CR3LSI5J3IXgsusk0fxgnjNAGGkUiWPIPSp9tw3Aw
Content-Type: text/plain; charset=us-ascii

Hey Eugene,\
\
Slight correction to what Dennis wrote earlier today.\
\
While most timed commands in general should work on the X440, there are some specific Hardware limitations regarding the way the RFSoC is reset during frequency tuning that result in the X440 not supporting timed frequency tuning.

\
I think the issue is that there are multiple internal components which need to be reset at the same time and not all of those components support timed resets.\
\
See the manual here: <https://uhd.readthedocs.io/en/latest/page_usrp_x4xx.html#x4xx_usage_timedcmds>\
\
I am not familiar with the details regarding which internal components are at fault, but maybe someone else can fill in the gaps, I just wanted to clarify that while most timed commands should work, at least timed tuning is not officially supported.\
\
Regards,\
Niels

---

Jurk, Dennis wrote:

> Hello Eugene,
>
> timed commands are supported on the X440. Set the command time with set_command_time and then send the commands (set_rx_freq or set_tx_freq for freq tuning).
>
> Best regards
> Dennis Jurk
>
> Von: Eugene Grayver [eugene.grayver@aero.org](mailto:eugene.grayver@aero.org)
> Gesendet: Dienstag, 16. Juni 2026 22:56
> An: usrp-users [usrp-users@lists.ettus.com](mailto:usrp-users@lists.ettus.com)
> Betreff: \[USRP-users\] X440 timed commands for tuning
>
> Why are timed commands (specifically freq tuning) not supported on the X440?  The RFSoC definitely allows using FPGA (PL) logic to trigger cross-tile configurations.
>
> Eugene Grayver, Ph.D.
> Principal Engineer
> 310-336-1274

--b1_6CR3LSI5J3IXgsusk0fxgnjNAGGkUiWPIPSp9tw3Aw
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p class=3D"">Hey Eugene,<br><br>Slight correction to what Dennis wrote ear=
lier today.<br><br>While most timed commands in general should work on the =
X440, there are some specific Hardware limitations regarding the way the RF=
SoC is reset during frequency tuning that result in the X440 not supporting=
 timed frequency tuning.</p><p><br>I think the issue is that there are mult=
iple internal components which need to be reset at the same time and not al=
l of those components support timed resets.<br><br>See the manual here: <a =
href=3D"https://uhd.readthedocs.io/en/latest/page_usrp_x4xx.html#x4xx_usage=
_timedcmds" title=3D"">https://uhd.readthedocs.io/en/latest/page_usrp_x4xx.=
html#x4xx_usage_timedcmds</a><br><br>I am not familiar with the details reg=
arding which internal components are at fault, but maybe someone else can f=
ill in the gaps, I just wanted to clarify that while most timed commands sh=
ould work, at least timed tuning is not officially supported.<br><br>Regard=
s,<br>Niels<br><br></p><div contenteditable=3D"false" class=3D""><hr></div>=
<p>Jurk, Dennis wrote:</p><blockquote><p>Hello Eugene,</p><p>timed commands=
 are supported on the X440. Set the command time with set_command_time and =
then send the commands (set_rx_freq or set_tx_freq for freq tuning).</p><p>=
Best regards
Dennis Jurk</p><p>Von: Eugene Grayver <a href=3D"mailto:eugene.grayver@aero=
.org">eugene.grayver@aero.org</a>
Gesendet: Dienstag, 16. Juni 2026 22:56
An: usrp-users <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lis=
ts.ettus.com</a>
Betreff: [USRP-users] X440 timed commands for tuning</p><p>Why are timed co=
mmands (specifically freq tuning) not supported on the X440?  The RFSoC def=
initely allows using FPGA (PL) logic to trigger cross-tile configurations.<=
/p><p>Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274</p></blockquote><p><br></p>

--b1_6CR3LSI5J3IXgsusk0fxgnjNAGGkUiWPIPSp9tw3Aw--

--===============0808664741600918106==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0808664741600918106==--
