Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC5962A11B
	for <lists+usrp-users@lfdr.de>; Tue, 15 Nov 2022 19:09:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5DC30380953
	for <lists+usrp-users@lfdr.de>; Tue, 15 Nov 2022 13:09:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668535793; bh=i4tC4Lj9sqZBzizWEj+TRyS7bAYiobwqDwWRK20Vbzk=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Ern1uENUryZE9xr93+xqkwI2wjrobUvmAVeoKsJha1seVpXIAOpzTrTS8EfpmQGqi
	 79j4QmCdqNW0zHf+f4N2RJTHL3M4vxkI/I1WQI2DN4L0v1apoWtBnCOJMm6pyjANyP
	 oE8ZR45xAubIlzQR3Z0M/nTGehvsYXsmH6UjPaQA5OEx2Dd1w+Snxl2hSm+8t/4qYw
	 OCO6rmV+IU8dNNI8o6KHFBdW++OylYgBSx1IWNpDHVfF5LufqRxnnDU4qsl5MOiyCB
	 PtM5rgemfT6joJLDhpM4bMs6Mf7XoEpKCnAQw25V1QC1CABpF0HO4MTwws1E0X/O7u
	 aLAhQKO51TieA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 98C25380937
	for <usrp-users@lists.ettus.com>; Tue, 15 Nov 2022 13:08:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668535707; bh=UqkkIV/LgouAoADP2I8eiCNJ77upQgEYFlDUUh2FbPw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=O5ho8VHs0XxCyf3wnaOFZUc2gl19MKXZtTUUERyzV/3gUCe42itjhbFQCx3dQ8v3k
	 lU/if1XH2lfCKKXgikWUION5iYTPqfX+YtGEM0RC5oc59gnfRLlBcL8Oqeu+d6Iss7
	 sOF4jONuSPesnrHOfc/5c+WLdDMS0K73hGzWO1usnh4OTj535trnHlFBIvT3gEJUSp
	 ANl8aC8Ach5OPWN5TDSiK+pCxLcvveCQdHxsi24Ti2KsraVqVKWuZel/qaLW40AJSB
	 aX6T/c6o0lwpVyukUmfptDkCjCPenbML6q/9wKOKp+VLU4p9T7gfNi3ffi9+QddaZj
	 uXRbZjcUKkSbA==
Date: Tue, 15 Nov 2022 18:08:27 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <CMQh8Lh7tEzsD2usvLZ3XHx2LvtqXKWR16GiFIlE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 80b48728-8029-e93f-23f1-34da9e042c6e@gmail.com
MIME-Version: 1.0
Message-ID-Hash: UBO7SYJAN5SX726KOPONN7GQ2RLKMSPO
X-Message-ID-Hash: UBO7SYJAN5SX726KOPONN7GQ2RLKMSPO
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Accessing DDC block control in mutli_usrp application
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UBO7SYJAN5SX726KOPONN7GQ2RLKMSPO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5520275247956355957=="

This is a multi-part message in MIME format.

--===============5520275247956355957==
Content-Type: multipart/alternative;
 boundary="b1_CMQh8Lh7tEzsD2usvLZ3XHx2LvtqXKWR16GiFIlE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_CMQh8Lh7tEzsD2usvLZ3XHx2LvtqXKWR16GiFIlE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

> Having the exact exception details would be very helpful to share--just=
 \
> like in any other discipline involving computers.=C2=A0 This can help t=
he community help you.

I forgot to copy down the exception info last time I encountered it. Unfo=
rtunately (or fortunately depending on your perspective) it=E2=80=99s int=
ermittent, and sometimes only occurs after a couple hours of running. Nex=
t time I encounter it I=E2=80=99ll certainly save more information.

--b1_CMQh8Lh7tEzsD2usvLZ3XHx2LvtqXKWR16GiFIlE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<blockquote><p>Having the exact exception details would be very helpful t=
o share--just <br>like in any other discipline involving computers.&nbsp;=
 This can help the community help you.</p></blockquote><p>I forgot to cop=
y down the exception info last time I encountered it. Unfortunately (or f=
ortunately depending on your perspective) it=E2=80=99s intermittent, and =
sometimes only occurs after a couple hours of running. Next time I encoun=
ter it I=E2=80=99ll certainly save more information. </p>


--b1_CMQh8Lh7tEzsD2usvLZ3XHx2LvtqXKWR16GiFIlE--

--===============5520275247956355957==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5520275247956355957==--
