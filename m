Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA3A878408
	for <lists+usrp-users@lfdr.de>; Mon, 11 Mar 2024 16:42:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F40FC385033
	for <lists+usrp-users@lfdr.de>; Mon, 11 Mar 2024 11:42:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710171757; bh=FW4wIjToRmALh1JXtouZCzYID231PAO4OPGPPHlZm6A=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=WiFmcLotrjT1YpaOdFOU4EAV07llBHE1kJzuiOYI3b3tijCYyi4EezYDLeuOCQBRp
	 b7djllQ1fZS2IUiaIVOTdpQcpy6nLkeqC8STteq6w2eGJShjySoHGnvG1fGfDvd6n5
	 qfQbEGLxENPZi4eBnAPbzXfZdHvEuCMbjQbGYaFIYBL9pR0xoCeqyyKURPN5ldi/x5
	 Ol14nDD4I10QHBE1ft1iOyqnPeAYFjt7zTFPUcf4JNHzFTNSnZ9TPuPZ025dXAYukl
	 leQyVtvZs5tTavUAIIkoW/H3Meux9/q9TBSSnv3Gl5W6iiGnaPxGwa9Z0CEN8jBc+j
	 9INqTJJahmtSQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A14CD385355
	for <usrp-users@lists.ettus.com>; Mon, 11 Mar 2024 11:42:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710171721; bh=cBb5S1uSJHGkDrexIspxCzbCaNttIB4VYWbUptKFY2A=;
	h=Date:To:From:Subject:From;
	b=IARB73ZR8Aq/+WYd2Re81DWDAhrVRbDpOLkeUsTRJq3iDGVt1aPMZlNktWRRz5AWO
	 IWeGDEzvj4b3wnra6MSKthqZASCs4/GhaBl6BUTRv7CUP5ttRH90CFFAEvTPYUvcu6
	 qcR3nvqvthzghjTK/llAKZuPBQXTPxa/DSi6XPgOZkBftaG9axkJGYlqXK4h9wAm8D
	 xPyA8WMS2XEfPOQ2K/vo7seIyHKRempIGbOfGLfBdrvvu1fewOhS0fTc7lk8hakgP/
	 H+h7AKjC2hrwZXQHbGxw5aOxO5tn8JcqXJc9MYkHkFpCOOZGR0bpYHzrW4d96ewqgm
	 rWlG4cThIQZEA==
Date: Mon, 11 Mar 2024 15:42:01 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <i4YK3LcfmM4ImG5JVhHgBbgs8ipREMNff81XucLqg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: GD6JE7NLNOWEKWOJSQSXOH6HRMTJQIAC
X-Message-ID-Hash: GD6JE7NLNOWEKWOJSQSXOH6HRMTJQIAC
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Non-Unique Device MAC Address's After Mender F.S. Update
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GD6JE7NLNOWEKWOJSQSXOH6HRMTJQIAC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6037342031308842160=="

This is a multi-part message in MIME format.

--===============6037342031308842160==
Content-Type: multipart/alternative;
 boundary="b1_i4YK3LcfmM4ImG5JVhHgBbgs8ipREMNff81XucLqg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_i4YK3LcfmM4ImG5JVhHgBbgs8ipREMNff81XucLqg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

We had a need for a multiple device - single subnet setup. After updating=
 multiple E320=E2=80=99s to a newer UHD version, me and my colleague, we =
realized that all of the devices share a common MAC address. This results=
 in unstable connections within the network. As for in [this thread](http=
s://lists.ettus.com/empathy/thread/POYUYNB4RH5MFPADPFYTSLLKVAWT64M6?hash=3D=
POYUYNB4RH5MFPADPFYTSLLKVAWT64M6#POYUYNB4RH5MFPADPFYTSLLKVAWT64M6 "E310: =
Change MAC Address? ") is there a non-third party, Ettus supported, homeg=
rown way of restoring/updating the MAC address of a network device, speci=
fically E320?

Thanks.

--b1_i4YK3LcfmM4ImG5JVhHgBbgs8ipREMNff81XucLqg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p class=3D"">We had a need for a multiple device - single subn=
et setup. After updating multiple E320=E2=80=99s to a newer UHD version, =
me and my colleague, we realized that all of the devices share a common M=
AC address. This results in unstable connections within the network. As f=
or in <a href=3D"https://lists.ettus.com/empathy/thread/POYUYNB4RH5MFPADP=
FYTSLLKVAWT64M6?hash=3DPOYUYNB4RH5MFPADPFYTSLLKVAWT64M6#POYUYNB4RH5MFPADP=
FYTSLLKVAWT64M6" title=3D"E310: Change MAC Address? ">this thread</a> is =
there a non-third party, Ettus supported, homegrown way of restoring/upda=
ting the MAC address of a network device, specifically E320?</p><p>Thanks=
.</p>


--b1_i4YK3LcfmM4ImG5JVhHgBbgs8ipREMNff81XucLqg--

--===============6037342031308842160==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6037342031308842160==--
