Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E2365AAE63C
	for <lists+usrp-users@lfdr.de>; Wed,  7 May 2025 18:14:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A4411386376
	for <lists+usrp-users@lfdr.de>; Wed,  7 May 2025 12:14:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746634471; bh=T9PHIkD7QIFwUAJQjqV9+aSzDYDgvm0r874RsjaZRZY=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=QmYAY/9bVvILY9J5rSRR0AbiFj6M/4bQIysQIKgHA422tZFI8L/8LH/crYrIEEklF
	 Vrm/hY20/3IULcG5Q7u6XClDynB025w1pyGWGpTWCbhRg3NezgxzHbpuL1FN/ZOytG
	 qLQIkV1JIYEwSwIiUMrhlIxGw7vFm6hbk1XogSHJ8qDPTrD0q4Uld7a9POVpFBkY/w
	 zKtk+UnzQLNQt0fOC1gc0+VD1+NC0LOV06ZnzIsBvOkon7zyysScSSYsTL1+jrXBT6
	 QIh9iz1lDqHLDOYrKltt+OcBgbygcIdP4yHiDLQHmv329me4x7XzioR2SY8qwtoHrJ
	 vNTQZeNPyXomg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B30F7383B6F
	for <usrp-users@lists.ettus.com>; Wed,  7 May 2025 12:13:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746634421; bh=F7dWlRcTgG/tfEbcdrlgWG1/ree1Wuz1RRyztSdfnv8=;
	h=Date:To:From:Subject:From;
	b=yxqlh2cMP0mxn3QAX6j7FzlDGkl5th+4u+A3Xw8bHrY9QMe2BmSc9PqFLiYJvc2IY
	 N2Yd9uHAtxahJGuc8dj5E5oTRw6EtuqnxYdfuld8mHy14Io/hv/NW3fgu0tEuixoPQ
	 I9rSbEGVz9IYqdm8zKEgomMegSfJSzPEvqDA/Jv93RH52P1mEANOz6i4HgT2MvnxsL
	 bex0GMwp0gmYJjBgm6go/7eUmehNZJqyKa+T3Dk3njaWEvltxDXgquehpXNMSgy8zH
	 ZdXgm88AyWq2f65ICioyFVs8io58uwOlR7zGhr7O5QnC28Cx7oBC6LmhleUXB9O8hJ
	 of9wcii7w6fcQ==
Date: Wed, 7 May 2025 16:13:41 +0000
To: usrp-users@lists.ettus.com
From: carmixdev@gmail.com
Message-ID: <HeIThGn7kcFceMRyBMIOFWd5wRASttzcsLWm9xYNVs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: FWX7PA6PEMXKZ5B3IP5EOIDAMCCPB56C
X-Message-ID-Hash: FWX7PA6PEMXKZ5B3IP5EOIDAMCCPB56C
X-MailFrom: carmixdev@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Signal quality using RFNoC DUC blocks
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FWX7PA6PEMXKZ5B3IP5EOIDAMCCPB56C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1827045299820026899=="

This is a multi-part message in MIME format.

--===============1827045299820026899==
Content-Type: multipart/alternative;
 boundary="b1_HeIThGn7kcFceMRyBMIOFWd5wRASttzcsLWm9xYNVs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_HeIThGn7kcFceMRyBMIOFWd5wRASttzcsLWm9xYNVs
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi, I=E2=80=99m developing a transmitter for a spread spectrum signal tha=
t has a bandwidth of 2MHz sampled at 6.26Msps on a X310+UBX160, I=E2=80=99=
ve tried to transmit it using standard method uhd.usrp.MultiUSRP(=E2=80=A6=
) and it worked OK, the signal is received correctly and the receivers lo=
cks steadily to the signal.

Then I tried to do the same using RFNoCs  with the sequence:   SEP->DUC->=
RADIO.

The DUC is set for an input rate of 6.25MHz and an output rate of 200MHz.

The signal is transmitted, however in this second implementation the rece=
iver doesn=E2=80=99t lock correctly on it. It seems like that the signal =
quality gets compromised.

Am I missing something?

--b1_HeIThGn7kcFceMRyBMIOFWd5wRASttzcsLWm9xYNVs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi, I=E2=80=99m developing a transmitter for a spread spectrum signal =
that has a bandwidth of 2MHz sampled at 6.26Msps on a X310+UBX160, I=E2=80=
=99ve tried to transmit it using standard method uhd.usrp.MultiUSRP(=E2=80=
=A6) and it worked OK, the signal is received correctly and the receivers=
 locks steadily to the signal.</p><p>Then I tried to do the same using RF=
NoCs  with the sequence:   SEP-&gt;DUC-&gt;RADIO.</p><p>The DUC is set fo=
r an input rate of 6.25MHz and an output rate of 200MHz.</p><p><br></p><p=
>The signal is transmitted, however in this second implementation the rec=
eiver doesn=E2=80=99t lock correctly on it. It seems like that the signal=
 quality gets compromised.</p><p>Am I missing something?</p>


--b1_HeIThGn7kcFceMRyBMIOFWd5wRASttzcsLWm9xYNVs--

--===============1827045299820026899==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1827045299820026899==--
