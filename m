Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9732972B17F
	for <lists+usrp-users@lfdr.de>; Sun, 11 Jun 2023 13:01:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3A6A3383C78
	for <lists+usrp-users@lfdr.de>; Sun, 11 Jun 2023 07:01:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686481304; bh=cylroecvuoM9czux4VNpxU+OYWqUdHbUlK1t/j1shAg=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=X/69+0CiYWmv2g1D+X0b1yUB1GhoXE8Vg7RC0WVrEXEHUDXZnDa+l3ZXqE/TxfHYl
	 XS4ASF2eAaSLzVW5336PzR0DnWyLt/IAmPvhdSDZ6MmZpcfvjkK4C4znE8nt9M5BXq
	 mTSeCSPvpAItS0Nq4eA15Ns18lyaEl5DtrIZFOy5cgh7uv6okfV8qn0fL6R8MggQt9
	 LKX/dlqlTTpUOYbJLXIAOSUBtRPQVxBf8KqgDwsu2ivkXA0cNa7jvs9LCpYb4PmCRM
	 s41mViNmayoM20y1890pf9ULqBmPR4/MqpHz8Fclf/ANVcyodMLPs62TrmQa/8iocm
	 11MtAKYTMsGYQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 61038381924
	for <usrp-users@lists.ettus.com>; Sun, 11 Jun 2023 07:01:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686481281; bh=yjgEg69b/f8+4MkLO7u73UUDBCTtCQVixRgan2gNoSE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Q+GoYLbvqAqPgLerQEuHTLbdXHyzNaef1Vidbm3gPyryRUO2X2YgfcGpBUM2Gqp3+
	 YABOqDm7BzVlv4Wkk1V7l8Uj/u/eaySeXSYKgFEEY7hx59Oybr87BxhJNCbRBmPNdq
	 uZ9z1q4Ef7+qLIL20tvuFMLDiUabHUkDrrqNmfJ0WpsQ+y45rIJpv+uGA3NNizZUc1
	 WFCyUwmjsPxGS/8yc+pZMuQCyIoJIgwxL6+T11vokgcP9RMfaRh0YqocdCLND5OS2j
	 rtD5D2mm2zGvrQTYIYDT66ChNUErSlo/d1H+cwmNxP9YMwx/eCMiILIbThgl4yZFbh
	 tN7Ggcq4fss8A==
Date: Sun, 11 Jun 2023 11:01:21 +0000
To: usrp-users@lists.ettus.com
From: eesa.nikahd@gmail.com
Message-ID: <dnEX28AfQuKO2BN3Jfaj4EhADk99e537XW1D0IwzU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: Gqp8cHlLxk8pfjh6GD1oXyH5KkhHxtvhfZ03xSjKiNI@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: DKQC2MXI5TS4WP52FPK7OXKSNYFXXBY2
X-Message-ID-Hash: DKQC2MXI5TS4WP52FPK7OXKSNYFXXBY2
X-MailFrom: eesa.nikahd@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Creating TX usrp and RX usrp objects using Two different threads using X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DKQC2MXI5TS4WP52FPK7OXKSNYFXXBY2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3439301032013898232=="

This is a multi-part message in MIME format.

--===============3439301032013898232==
Content-Type: multipart/alternative;
 boundary="b1_dnEX28AfQuKO2BN3Jfaj4EhADk99e537XW1D0IwzU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_dnEX28AfQuKO2BN3Jfaj4EhADk99e537XW1D0IwzU
Content-Type: text/plain; charset=us-ascii

Dear Leon Wabeke and Marcus D. Leech, thanks a lot for your answers.

I found the answer of my question as follow:

When we create multiple uhd::usrp::multiusrp objects using the same device arguments, actually they are all shared objects that refer to a same real USRP object. Therefore when we set sub-device by each multiusrp objects, indeed all of them will be done on the real usrp device. 

I think the limitation is that when a stream (TX or RX) is run on a USRP, we can not change its sub-device setting. It seems that for N200, usrp ignores  to set sub-device as there is only one sub-device on it. But for a USRP with multiple sub-devices such as X310, we must be sure that no stream is run on the USRP before we try to change its sub-device.

--b1_dnEX28AfQuKO2BN3Jfaj4EhADk99e537XW1D0IwzU
Content-Type: text/html; charset=us-ascii

<p>Dear Leon Wabeke and Marcus D. Leech, thanks a lot for your answers.</p><p>I found the answer of my question as follow:</p><p>When we create multiple uhd::usrp::multiusrp objects using the same device arguments, actually they are all shared objects that refer to a same real USRP object. Therefore when we set sub-device by each multiusrp objects, indeed all of them will be done on the real usrp device. </p><p>I think the limitation is that when a stream (TX or RX) is run on a USRP, we can not change its sub-device setting. It seems that for N200, usrp ignores  to set sub-device as there is only one sub-device on it. But for a USRP with multiple sub-devices such as X310, we must be sure that no stream is run on the USRP before we try to change its sub-device.</p>


--b1_dnEX28AfQuKO2BN3Jfaj4EhADk99e537XW1D0IwzU--

--===============3439301032013898232==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3439301032013898232==--
