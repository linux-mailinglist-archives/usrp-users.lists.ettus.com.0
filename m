Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id LJ/nK42QdGkH7QAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Sat, 24 Jan 2026 10:27:41 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EC57D18F
	for <lists+usrp-users@lfdr.de>; Sat, 24 Jan 2026 10:27:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AD15638BD84
	for <lists+usrp-users@lfdr.de>; Sat, 24 Jan 2026 04:27:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769246859; bh=yt2jjYoxa70XYbyAnXySN/7FCgT/AWrGFu/jzLrVIjg=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vtlPXQfwxNmLgax3ibS3PF2rQknBR6BbyV6GV6AvK1Ql3gFJ5RIN2Sr5SUZluvuEk
	 gSbgODaBSEPsgve/rctyNbuvLLyO440hbWwNxsyd5t0sWKCPVUqP2IdmqgktKaC4+T
	 7SXqPSRQWGzSy/gkNLNIJVdAmpmbBaEasaM2dnTBJ6j1vCvBQDyGRWpXto7Z31X8OQ
	 kPwKx+YJP+pYWScf6Mt0kYuH8DgZBO0VGnHT3YFtURfFURmJfuygla8yNFuHFqsCFm
	 8zXpreZ6iDPoCSWtpqt47gpR2UehFZDzaSfe8VCk+VtAvlHcXx/1n8fg3cXieucQCF
	 Cfsqcijzwb5IA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 094E538BB67
	for <usrp-users@lists.ettus.com>; Sat, 24 Jan 2026 04:26:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769246793; bh=Oscp+A+eB0lF4zNvt/VMb3Ye5W7ODHGs7PluhzF30Xs=;
	h=Date:To:From:Subject:From;
	b=XAPGTivbxMRRquXQeHGlCV/cMqVHCa9hS6VbfxFfcf/Tx0sFwkLZl4bIX5mrsjOLW
	 3ke+ks0EGBezp/zRqFnKPEaLDZE6XKmqCdkU8snRrb3b1EHWGtIBGR2frZWcdtzpeB
	 I1p3VfLT5YiJY1d/I7K41Epa1ATf7DxjpUS7mE5Tsua4wsDXrZzIsjQ4jYqmXLR4vP
	 OboiX/gvyU0Nufu2kQ7qo5lXeE+CD+rjkeangVqsGP2lgLsF+y0i+V1wV8TFn3SRIn
	 s863zVi3G8WbycciTpHtzj2VLZKafV5vohG/pNST4Ap9eRLuI6t4UyUgb2vFZ6Zq/0
	 /HTfifmuZNEmg==
Date: Sat, 24 Jan 2026 09:26:33 +0000
To: usrp-users@lists.ettus.com
From: carmixdev@gmail.com
Message-ID: <z8sAV3W3o2GBEAngc2xwL2TDBhJ5OSeVTUFOJL9Ws@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 63JOTOQU6EPN63YOOHOOUHUTWHCQZ4VZ
X-Message-ID-Hash: 63JOTOQU6EPN63YOOHOOUHUTWHCQZ4VZ
X-MailFrom: carmixdev@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] GPSDO Lock slow on X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/63JOTOQU6EPN63YOOHOOUHUTWHCQZ4VZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5667388186600057920=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
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
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim]
X-Rspamd-Queue-Id: 03EC57D18F
X-Rspamd-Action: no action

This is a multi-part message in MIME format.

--===============5667388186600057920==
Content-Type: multipart/alternative;
 boundary="b1_z8sAV3W3o2GBEAngc2xwL2TDBhJ5OSeVTUFOJL9Ws"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_z8sAV3W3o2GBEAngc2xwL2TDBhJ5OSeVTUFOJL9Ws
Content-Type: text/plain; charset=us-ascii

Hi,

I have a problem with X310 and GPSDO lock. I noticed that on power on the time to get GPSDO locking on GPS signal is about 11 minutes, even with good antenna and good signal. Other receivers with the same antenna in the same position (e.g. U-blox M8) get a fix and PPS output after a lot less time (1-2 minutes).

By the way if I simply disconnect GPS antenna and reconnect it after a while the radio gets the lock in less than a minute.

It seems to me like the GPSDO does a cold start whenever I power cycle the SDR, anyway 11 minutes is way to slow even for a cold start.

Why do the GPSDO on X310 is so slow? in my application i need to have the radio full operative and time aligned in at most 5 minutes since power on, is it possible to achieve that with X310 and its GPSDO?

--b1_z8sAV3W3o2GBEAngc2xwL2TDBhJ5OSeVTUFOJL9Ws
Content-Type: text/html; charset=us-ascii

<p>Hi,</p><p>I have a problem with X310 and GPSDO lock. I noticed that on power on the time to get GPSDO locking on GPS signal is about 11 minutes, even with good antenna and good signal. Other receivers with the same antenna in the same position (e.g. U-blox M8) get a fix and PPS output after a lot less time (1-2 minutes).</p><p>By the way if I simply disconnect GPS antenna and reconnect it after a while the radio gets the lock in less than a minute.</p><p>It seems to me like the GPSDO does a cold start whenever I power cycle the SDR, anyway 11 minutes is way to slow even for a cold start.</p><p>Why do the GPSDO on X310 is so slow? in my application i need to have the radio full operative and time aligned in at most 5 minutes since power on, is it possible to achieve that with X310 and its GPSDO? </p>


--b1_z8sAV3W3o2GBEAngc2xwL2TDBhJ5OSeVTUFOJL9Ws--

--===============5667388186600057920==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5667388186600057920==--
