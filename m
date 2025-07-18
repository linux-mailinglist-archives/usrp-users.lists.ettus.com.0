Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC534B09FA5
	for <lists+usrp-users@lfdr.de>; Fri, 18 Jul 2025 11:30:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BFD9E3864DB
	for <lists+usrp-users@lfdr.de>; Fri, 18 Jul 2025 05:30:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752831012; bh=ziDlEtcu1w5BRWbEbvscMXtL40XJ1MhUc1bnXix9mNg=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=RFJjbeRXXagMLkZWDTOMe4V24Ym2U0fQUw6tYvnSlXCgjPlQauFKQW/gecVOLCbTJ
	 SrYKSWXeCNBugLmer7XhHSq6P9jQQkBtuJqkaytj0QBmE6KIT1V9aA82CT373gEbX5
	 VWqLh/xEiLpcOF+wr3W61TWSDKNH2DQSpBgIwBx9FPqnnCo/D0y29fhQEtimF+IAfc
	 tvNjD7n39CSZWi1qDslvoOyRnLwTrD3wJlTWleckb/5nZMSqRpzWeTd/VW+Ar7XL6/
	 FIz/R8rmY1HlJ1tu1fjgw5lfxK5PgWals2HL0dwqdTwzMtUZxcUl73aMbk9dlQHozH
	 GKA+AN/NgDU4Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D7FD53864AA
	for <usrp-users@lists.ettus.com>; Fri, 18 Jul 2025 05:29:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752830997; bh=dprUa3KDc6BoMBApxPRtWsg4EubeTf4WvotLHuj8HU4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=MEtPHShzL81iICR3Hf4IvT0GUlsHZ2VN8oICyzyz7aoVAQvUiY4wGSrMp6ZRLp5Wm
	 Gne3tZl9lHgrmyCs55v7cVxv5UX1UXE/CgYU58yK4F9POHu5zTuCHsd/Z1Uz8Obyz3
	 QmJwuQoEw7ke0ZSAdUCUnKfI1KNRTBdUPaEdXeLMrGAuLD2jnKwb8bi6cgI1byNz+Z
	 g4Aza7/BSuQDTwmn7flATThmeY3aPHq4LO2jRBo8mABcNAtjCHzkNpVnBP1MsK6IYI
	 /9uML7xSIqekqxfY0eJq3C9KgPDqGe8uly4C62wS+00mSDZwWnjkhKa/+R3fkNgOzX
	 RIV3SxPS+McNw==
Date: Fri, 18 Jul 2025 09:29:57 +0000
To: usrp-users@lists.ettus.com
Message-ID: <BmuYwlXNGkHsyskcYyvsIBLPp8IQNFgM2poLmNbGVE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A4wpfmWvTRwMf4SSFF9Q9d8aMmS4nZk=XLCwcvU3-UWuQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: BSSJEUIKDBS33U2IYH4GHJYISMBUYJTE
X-Message-ID-Hash: BSSJEUIKDBS33U2IYH4GHJYISMBUYJTE
X-MailFrom: joerg.hofrichter@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: installing python3-uhd API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BSSJEUIKDBS33U2IYH4GHJYISMBUYJTE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "joerg.hofrichter--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: joerg.hofrichter@emerson.com
Content-Type: multipart/mixed; boundary="===============4032022706345748953=="

This is a multi-part message in MIME format.

--===============4032022706345748953==
Content-Type: multipart/alternative;
 boundary="b1_BmuYwlXNGkHsyskcYyvsIBLPp8IQNFgM2poLmNbGVE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_BmuYwlXNGkHsyskcYyvsIBLPp8IQNFgM2poLmNbGVE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

one addition: you need to add the EttusResearch PPA (https://launchpad.ne=
t/\~ettusresearch/+archive/ubuntu/uhd) to your system before you can inst=
all UHD and the associated python bindings in the latest version (current=
ly UHD 4.8):

```
sudo add-apt-repository ppa:ettusresearch/uhd
sudo apt update
sudo apt install uhd-host python3-uhd
```

Kind regards,\
J=C3=B6rg

--b1_BmuYwlXNGkHsyskcYyvsIBLPp8IQNFgM2poLmNbGVE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>one addition: you need to add the EttusResearch PPA (https:/=
/launchpad.net/~ettusresearch/+archive/ubuntu/uhd) to your system before =
you can install UHD and the associated python bindings in the latest vers=
ion (currently UHD 4.8):</p><pre><code>sudo add-apt-repository ppa:ettusr=
esearch/uhd
sudo apt update
sudo apt install uhd-host python3-uhd</code></pre><p>Kind regards,<br>J=C3=
=B6rg</p>


--b1_BmuYwlXNGkHsyskcYyvsIBLPp8IQNFgM2poLmNbGVE--

--===============4032022706345748953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4032022706345748953==--
