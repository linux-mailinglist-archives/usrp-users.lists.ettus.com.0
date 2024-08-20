Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 438D695884C
	for <lists+usrp-users@lfdr.de>; Tue, 20 Aug 2024 15:52:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DCA33385213
	for <lists+usrp-users@lfdr.de>; Tue, 20 Aug 2024 09:52:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724161955; bh=qPq35JtiqoFspZZTcuGQPxS+3SKDhtrLSF7/T1mrZSg=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=I9EIJ+MMNNBos3lhwr1Ez+NJjx1/ocElVUP9mzYcNJprT7491X4cC84EbNxZhqxlU
	 gG/MrFGGmJGawALwqlsjD2XmGWUsEY8Z69pUbBNQ1imLBthHK+SE+yeMSQVUNoK4Q8
	 vNCxPet6ud/AHdu2abxSf9UVA7hSMGUA/6i9VBlRuPw3vRTSyAZKFvVYHPz1I6YE+6
	 VRt6nCMS1yTAx+CCKytX/ZBEraDIn8hEBe0RNmJUeOlSKp8vWxFGwquCFcSyyXUPFl
	 fNmhOFqy/4XTsfuXynFB40PzVC+UdRfXezmAFeXHu2RjBzGjfYmevqNy2QPMLBYKIf
	 FqwADi6A4ua7g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C437C384CF2
	for <usrp-users@lists.ettus.com>; Tue, 20 Aug 2024 09:52:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724161937; bh=ZEMgMrDtL9Q+R4uEIU9iR3sGnyDOQ2oalRJz4ijKwag=;
	h=Date:To:From:Subject:From;
	b=ahQuOFZeaUmi/Yubcup50jC9arJn5rWnO7kZFgXykBbrBKNheAnwi7wB//94Tq/pR
	 HQHeiwEKdW+mnZTHdOsQ9I+R1917q9QUVDI11yNy2J6GU3tkSJvk0YohI63uten0yt
	 32iUN3MzRJuCyPEodDLxWVlG+Qd2RV6lFBbLTf0lmSAMk6dvYzrdY0xbJ5dGkOhvrX
	 xIQV6/2mkTGucMHXnPfm/tkOkLVVv3VBCoRdxqV0CUCnXJwwAGd8w8b4vnrXZ7Gi9R
	 5G56QHsAfA3TWOjdUPMr0ghP/jL+0fF58Uzk2iLlFUZZG1IKHttP9icJPgnWXl6H7w
	 s819MT5fQEI9g==
Date: Tue, 20 Aug 2024 13:52:17 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <kCQnwKOUagJhO9COaSTVDYGSVe5KZsLuIKR9SVQ1IA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: HYNCEQ3GGZVZU5NASK7L6CXLHWRZQGAS
X-Message-ID-Hash: HYNCEQ3GGZVZU5NASK7L6CXLHWRZQGAS
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Synchronizing_B210=27s_with_external_PPS=E2=80=99s_but_without_ref?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HYNCEQ3GGZVZU5NASK7L6CXLHWRZQGAS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3340437051196671372=="

This is a multi-part message in MIME format.

--===============3340437051196671372==
Content-Type: multipart/alternative;
 boundary="b1_kCQnwKOUagJhO9COaSTVDYGSVe5KZsLuIKR9SVQ1IA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_kCQnwKOUagJhO9COaSTVDYGSVe5KZsLuIKR9SVQ1IA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

hi,\
\
I was wondering if anyone has tried out synchronizing multiple B210=E2=80=
=99s driving their external PPS=E2=80=99s but without the external refere=
nce feeds? if so, what was the phase coherence performance (we know we sh=
ouldn=E2=80=99t expect any good results) and did it raise any timing conc=
erns since the 10 MHz supposedly drive the radio, fpga clocks etc. especi=
ally with accurate timestamping? we have a small project in mind and woul=
d love to know in advance.\
\
thanks,\
eden.

--b1_kCQnwKOUagJhO9COaSTVDYGSVe5KZsLuIKR9SVQ1IA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>hi,<br><br>I was wondering if anyone has tried out synchronizing multi=
ple B210=E2=80=99s driving their external PPS=E2=80=99s but without the e=
xternal reference feeds? if so, what was the phase coherence performance =
(we know we shouldn=E2=80=99t expect any good results) and did it raise a=
ny timing concerns since the 10 MHz supposedly drive the radio, fpga cloc=
ks etc. especially with accurate timestamping? we have a small project in=
 mind and would love to know in advance.<br><br>thanks,<br>eden.</p>


--b1_kCQnwKOUagJhO9COaSTVDYGSVe5KZsLuIKR9SVQ1IA--

--===============3340437051196671372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3340437051196671372==--
