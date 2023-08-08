Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB317746C1
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 21:01:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 043DF383E3B
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 15:01:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691521287; bh=8Q6kRDLd8R5k8S3gA74m3qZkPFlk3WoCRB0rtoD+AEU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=WCj6qDopbHG8zXswYzgFlZUCfAOAH5pGlgjKOmGJmfaXuwr5NWepl0Uk32dkF4HIa
	 QS5wmqfPEmxDd9ccDmO0fnkL1amMEZzrbCN1Gg/vN+976eK2k2tMUnHxKBBvvjIlaf
	 IhUlP2TsKOh3Enir8rrkWstK/Swkcv1Pe4vbVEFIKHH0VHFDVA2qebQKAvyKJSvn4b
	 wiliTqQSn/RB9yLqF2v67gF2TknfdGY7v5JRzBVs7bXySy17LtwuPg5gNfykEZGoQl
	 c2uHHpQHcFhqS4vxoPS8QWCQJz3GHbOsdnNQqQ0Xwm2as68DM+W2cG8+h8DbNCqWnm
	 kCSMVw5uu2oPg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 07E8E3844F8
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 15:00:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691521248; bh=kj+oFpffMwucifQrIwPXjCkYI8cBan26p9yP2mKa5Pw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=sBW0wtfMZ+uJuRMoVyEhWjQK81pMSn8aMNW4rVfe4XRMyktckyLoIUQHbrj2nvc0x
	 x8m3aKs8XiTj67/GNsg54YJQRJ+tJ16ojCz4fJjmKJTTaNLKB43w1kPUZ7B4VPsgpu
	 AUg5rQbxFJCBEGy/O+5tBkMYj2GvOsJrJvFWMzNW2MOZjRtxIZqKjtpgevLgFznfyM
	 JNaaoCSsq0MOY1UN77JxXltZe9t+9vAiLbjbcnLZHX1eiD4oYezaS1IU3j1RsWQjnq
	 BXrXOFGT5IKA90HVpTlNTSrE3RUbFdx85y0GjJQTHaMqmk+5MXhkvznnURDkL7Hb7l
	 pTkNnctFNGLeA==
Date: Tue, 8 Aug 2023 19:00:48 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <VEqy8TGiPIurGHwSiX8YcxzYVN1vmZYxxoEbLTzFBAY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 897053c7-c680-183f-c94f-78d7fff8e0f3@gmail.com
MIME-Version: 1.0
Message-ID-Hash: U2DWGB3EBPC5BKW3SAYYML6UYVUJF5OK
X-Message-ID-Hash: U2DWGB3EBPC5BKW3SAYYML6UYVUJF5OK
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U2DWGB3EBPC5BKW3SAYYML6UYVUJF5OK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7699847649905772313=="

This is a multi-part message in MIME format.

--===============7699847649905772313==
Content-Type: multipart/alternative;
 boundary="b1_VEqy8TGiPIurGHwSiX8YcxzYVN1vmZYxxoEbLTzFBAY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_VEqy8TGiPIurGHwSiX8YcxzYVN1vmZYxxoEbLTzFBAY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi again Marcus,

I see, so, I am guessing I better contact the Ettus and ask them to send =
me a new image or the device need a whole EEPROM replacement? What action=
 would you recommend me to take?

Sorry if I am sounding foolish, but this exceeds my experience about SDR=E2=
=80=99s. Thank you in advance and so far for the answers!

Best Regards,

Eden.

--b1_VEqy8TGiPIurGHwSiX8YcxzYVN1vmZYxxoEbLTzFBAY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi again Marcus,</p><p>I see, so, I am guessing I better contact the E=
ttus and ask them to send me a new image or the device need a whole EEPRO=
M replacement? What action would you recommend me to take?</p><p>Sorry if=
 I am sounding foolish, but this exceeds my experience about SDR=E2=80=99=
s. Thank you in advance and so far for the answers!</p><p>Best Regards,</=
p><p>Eden.</p><p><br></p>


--b1_VEqy8TGiPIurGHwSiX8YcxzYVN1vmZYxxoEbLTzFBAY--

--===============7699847649905772313==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7699847649905772313==--
