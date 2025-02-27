Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B69EA48048
	for <lists+usrp-users@lfdr.de>; Thu, 27 Feb 2025 15:02:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2E8CF385F77
	for <lists+usrp-users@lfdr.de>; Thu, 27 Feb 2025 09:02:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740664953; bh=qsxPqd1JW5TRB5YEXFVPzLp+2t900KBjjcMUbCx92Eg=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=d28tqvyz7mm/2qOCb5jGXddy48i0PwoFcT+buXrzHc1x9aZXV5omcH9MIX5MU9EDn
	 SWrhbXQrHDAgSs4Eix9zkmZSaWyMOLjpNbYgUdkfIes724ph7rm4DBAW3C85gn4fe7
	 pgXKPgb58bJYJ1GCd0AQ08yyVGjbQTcuDRXx06bSDni+3Hgi2hGLx6VCi+ADBbzPWA
	 KtpyBXaf0hdJRltzko62Nmen/k5QvkmZrqI3f19gCh4pniyoWCfsNzykvr88UP+Fa5
	 hYo+Mk9gOipgdXhwpZ9KsOBNqPBXZLhY+ESm/qTq44NGOflTyw1oo8IewemenqachO
	 IwU7N16+fF10w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C07E5385446
	for <usrp-users@lists.ettus.com>; Thu, 27 Feb 2025 09:01:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740664892; bh=wzSorS2dqFIYlaC+Om6jYFhsVCkIGAK7kdTxIMKfHQs=;
	h=Date:To:From:Subject:From;
	b=Vf0OboiPB3Bo1umGVLPNsBATo6SIYxntGKr8qMO4QnCejWEoqGL+xW1ZCul5u2A5Z
	 Dk0gs2/zzyJxw2js/5hpGAHrYNeJoMjbHbrId6GlChjieP4zVn8J0JZlEZPrnnGJFf
	 XoN3RuQX9zko2L2OGCqUWX/xp23FtQ5F9lFPn1KYBTcLBtUCK/jpEBj30NTY13poNN
	 pG5OjsCCr/9PvEAJcxnb5za6yG/HRMoSg6bjXoaK7eU03lqNLYQhBNvRt1vSEXcEX3
	 YPW78ZSGFXuydGsXGjVGHM/479yGvxfxNLSWkNY60fSdJEAK1lElQLiB5NkguFP37w
	 mdYT1Y5r6dKAw==
Date: Thu, 27 Feb 2025 14:01:32 +0000
To: usrp-users@lists.ettus.com
From: michalgorny01@gmail.com
Message-ID: <Kp022C4qnJHvbCBmnUrUWW3YmFZrg8vF4YRu5RuT7zA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 7IF4ITMMF7DD6O23NCQ5QMEZJB7IAEYO
X-Message-ID-Hash: 7IF4ITMMF7DD6O23NCQ5QMEZJB7IAEYO
X-MailFrom: michalgorny01@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] strange behavior related to gain
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7IF4ITMMF7DD6O23NCQ5QMEZJB7IAEYO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7713444910077515379=="

This is a multi-part message in MIME format.

--===============7713444910077515379==
Content-Type: multipart/alternative;
 boundary="b1_Kp022C4qnJHvbCBmnUrUWW3YmFZrg8vF4YRu5RuT7zA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Kp022C4qnJHvbCBmnUrUWW3YmFZrg8vF4YRu5RuT7zA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am working with a USRP E320. my main goal is to try to create a two-cha=
nnel FMCW radar. I have noticed a significant leakage of the transmitted =
signal in the receive channel. the only gain level that does not cause le=
akage is about 20 (the allowed max is 80) while it is insufficient to reg=
ister a reflection in my configuration. Is there any way to mitigate this=
 leakage?

double gainTX =C2=A0=3D 20; =C2=A0 =C2=A0=20

double gainRX =C2=A0=3D 20; =C2=A0 =C2=A0

radio_ctrl->set_rx_gain(gainRX, radio_chanRX);

radio_ctrl->set_tx_gain(gainTX, radio_chanTX);

--b1_Kp022C4qnJHvbCBmnUrUWW3YmFZrg8vF4YRu5RuT7zA
Content-Type: text/html; charset=us-ascii

<p>Hello,</p><p>I am working with a USRP E320. my main goal is to try to create a two-channel FMCW radar. I have noticed a significant leakage of the transmitted signal in the receive channel. the only gain level that does not cause leakage is about 20 (the allowed max is 80) while it is insufficient to register a reflection in my configuration. Is there any way to mitigate this leakage?</p><p>double gainTX &nbsp;= 20; &nbsp; &nbsp; </p><p>double gainRX &nbsp;= 20; &nbsp; &nbsp;</p><p>radio_ctrl-&gt;set_rx_gain(gainRX, radio_chanRX);</p><p>radio_ctrl-&gt;set_tx_gain(gainTX, radio_chanTX); </p>


--b1_Kp022C4qnJHvbCBmnUrUWW3YmFZrg8vF4YRu5RuT7zA--

--===============7713444910077515379==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7713444910077515379==--
