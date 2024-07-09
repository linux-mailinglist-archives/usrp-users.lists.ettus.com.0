Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C55B92AFD2
	for <lists+usrp-users@lfdr.de>; Tue,  9 Jul 2024 08:10:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 51ED038097A
	for <lists+usrp-users@lfdr.de>; Tue,  9 Jul 2024 02:10:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1720505443; bh=gyk3kd/Uh+S1r62zJOcE91CArzhLnXh6mYSKn5slDZQ=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=ojieU9Rx6AmAeEYfCPz9Fr5gWOwNuNb4OzYhysdhrXxNY06lyzkZNtb4Ezv9+IOXJ
	 LS8oBnFt+iptLUxcvSCPoX08z+plMJtlKAAtTN+FkjEF+oRr2Y1kDMogiQq40Xfdga
	 Ang4cHRiXPIGSotn0c6UgkoIhg4sDvlXhJ9+HeEhPn5p5XO2EOAxgriWTm0nj7dINd
	 e2Hul1MYmqXntTnpx/026ddpIoHiW5AdqkQ2A83V9ZJlq2qWIE799uOOqCXuFLez9h
	 85jGkjQnwQI4p/2xS2Z6yR1ljta2LHeubIe3pOqxbmVSbRsefxQ2G3V1BWUNOYHf3L
	 23p3qBLhO9vHw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B433438097A
	for <usrp-users@lists.ettus.com>; Tue,  9 Jul 2024 02:09:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1720505382; bh=dN5WXs7whhBXZmxxXy4g5c7do+DSC2cxcxa22YrhyJU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=T209qsAwLPYtXw61bstjfEL2yk1ezrHyvpnCe/ouJIfj6IYP9CTHI/kmzjktlkfVg
	 jbMNAWYvzkkYlpGF5jBktgEQOyLGVNhBTk/VttRHUE5mR1qZQE+oj/orFs45UXjley
	 QE5ZWIqGGjo+Y+8yUiBGYxLiuGdq+/YM65OtjzXMHBflFV3RLQnAGk+Oon0s6evvhc
	 49e/JOMTe/YpetThVW6ohC3tIfQh4vQDCyo8yxeG8Yz0attNjjdw8HN6hnIZEG23EY
	 VZaCpXjP2ovyD57ir+hHM7B+sUFqgec+ajliuIqoDApmkb1GJKmP5hJQ94uHGDx6t2
	 WX6RPHdqlh0WA==
Date: Tue, 9 Jul 2024 06:09:42 +0000
To: usrp-users@lists.ettus.com
Message-ID: <oeBUwV4h4iPyoMxQjo5N1bz5phDS5NidvhYleu6iJHA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CABfZwcf2rL6=N_=eVtAwrSRXYLg0D28bn+KUpvzhftxxr_Kohw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: E7EYVPLXQPRSA3MS2H45RQ5K7GNMRSQ5
X-Message-ID-Hash: E7EYVPLXQPRSA3MS2H45RQ5K7GNMRSQ5
X-MailFrom: hiroki_iwata@ieee.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: device tree and GPIO pin for x4xx
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E7EYVPLXQPRSA3MS2H45RQ5K7GNMRSQ5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: hiroki_iwata--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: hiroki_iwata@ieee.org
Content-Type: multipart/mixed; boundary="===============5684164940864649108=="

This is a multi-part message in MIME format.

--===============5684164940864649108==
Content-Type: multipart/alternative;
 boundary="b1_oeBUwV4h4iPyoMxQjo5N1bz5phDS5NidvhYleu6iJHA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_oeBUwV4h4iPyoMxQjo5N1bz5phDS5NidvhYleu6iJHA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear Mikio,

Thank you so much for your reply.

Unfortunately, I dont have usrp x410 at hand, which means i cannot confir=
m the property tree as you introduce.

I need the source file to set the property tree for x410 (especially =E2=80=
=9CRFDC_POWERD=E2=80=9C GPIO pin) since i cannot idetify where the proper=
 tree is set from the sources.

If you have infromation about it, please let me know.=20

Thanks advance.

BR,

Hiroki

--b1_oeBUwV4h4iPyoMxQjo5N1bz5phDS5NidvhYleu6iJHA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Dear Mikio,</p><p><br></p><p>Thank you so much for your reply.</p><p>U=
nfortunately, I dont have usrp x410 at hand, which means i cannot confirm=
 the property tree as you introduce.</p><p>I need the source file to set =
the property tree for x410 (especially =E2=80=9CRFDC_POWERD=E2=80=9C GPIO=
 pin) since i cannot idetify where the proper tree is set from the source=
s.</p><p>If you have infromation about it, please let me know. </p><p>Tha=
nks advance.</p><p><br></p><p>BR,</p><p>Hiroki </p>


--b1_oeBUwV4h4iPyoMxQjo5N1bz5phDS5NidvhYleu6iJHA--

--===============5684164940864649108==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5684164940864649108==--
