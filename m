Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B006E802DA0
	for <lists+usrp-users@lfdr.de>; Mon,  4 Dec 2023 09:53:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4DD04384C69
	for <lists+usrp-users@lfdr.de>; Mon,  4 Dec 2023 03:53:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701680026; bh=Q3HUdGnGVLvfHG/QDPMiJ3qYIt1/7frlLZTa/KNOlDo=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Y0cZLjQel0EkWOoRzt+Xd0fnuPT+OeHTxS+SJeaNAtXgKsWOYyxP6h+0Xeot4k09y
	 Zeso2vD/C7qWbuG1ZjWEVwePKbe9Ck0bmziU50LDwc0HGogGNkoDZNe2JuXQ7XMR2P
	 EViX3DUaugc494Zu/hrk5h/RglW2bF88cSInIexGGsrM4zn6tByA2I2wbYVe2pAtmO
	 W5MSGa8U3/bg/h+NPbCY2fdPMH9F5PFqHq8KLHmcDihXWmBb180zEaBZdfIcx6VB6R
	 kdPO5+ZprDK1hnPcLpbHyNH2MXCmy6o9bAYQV720E3QviW/1Oe59W+uup5rEH7H3Ne
	 6Loaf0mvOeBcA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C3F7A38456E
	for <usrp-users@lists.ettus.com>; Mon,  4 Dec 2023 03:52:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701679975; bh=x2RaPwTuthrsdImQJsdRM5cYbBNk6lFq38Rv/sbMcpY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Rw938v+KfSfh4P5qt95vqDJC70I1OG2G+sGK4eF4R/6Tw7AwqDrEso+hkp8IV7RS/
	 V1WIEg0x0y8UOsrMxetz7E7YD8SKE5I0PHbQTuYySBNyIPv7L7AHgaaFstIwYc0+2+
	 fwEz4eeRHGnbO4hmkssogXdzcwanPN10mH9+wcThlDsTo3zFDfG39e96lb1qs8suc7
	 2nh7Ryf2Utc2ChhzuyGbINCnXukwVKWbY68WHOxkcZGQMIrXLJsovz13pwiASnB1Ev
	 a8Kiw2d4iElhcFvW6ujWJQxk+wPoeEhuROCxv9hUKmtdUZYLw2wAwXF2M8MQn6i0Wj
	 VnNTbdHmO1f7Q==
Date: Mon, 4 Dec 2023 08:52:55 +0000
To: usrp-users@lists.ettus.com
From: purva.joshi@phd.unipi.it
Message-ID: <6ViSPAl8QcFRgCF2NKuNSFEm7c2yLU9h6QECYKPgI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 2ea210ca-e947-4a44-8520-7d3db0a019ef@gmail.com
MIME-Version: 1.0
Message-ID-Hash: UWKX53JFRXKKSNNQNLQLF2IBPEM74BOW
X-Message-ID-Hash: UWKX53JFRXKKSNNQNLQLF2IBPEM74BOW
X-MailFrom: purva.joshi@phd.unipi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UWKX53JFRXKKSNNQNLQLF2IBPEM74BOW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1409154944138406797=="

This is a multi-part message in MIME format.

--===============1409154944138406797==
Content-Type: multipart/alternative;
 boundary="b1_6ViSPAl8QcFRgCF2NKuNSFEm7c2yLU9h6QECYKPgI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_6ViSPAl8QcFRgCF2NKuNSFEm7c2yLU9h6QECYKPgI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear Marcus,

Sorry for late reply. I have connected USRP through SFP0 port using 10Gig=
a Ethernet card. For pinging, I have set the IP address by manually, whic=
h is as per guidelines of ETTUS =E2=80=9CGetting started Guidelines=E2=80=
=9D. It is new device, but my professor used this device before in Ubuntu=
 16.04 in same desktop, but now it is disconnected. Hope to hear from you=
 soon. Thanks.

--b1_6ViSPAl8QcFRgCF2NKuNSFEm7c2yLU9h6QECYKPgI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Dear Marcus,</p><p>Sorry for late reply. I have connected USRP through=
 SFP0 port using 10Giga Ethernet card. For pinging, I have set the IP add=
ress by manually, which is as per guidelines of ETTUS =E2=80=9CGetting st=
arted Guidelines=E2=80=9D. It is new device, but my professor used this d=
evice before in Ubuntu 16.04 in same desktop, but now it is disconnected.=
 Hope to hear from you soon. Thanks. </p>


--b1_6ViSPAl8QcFRgCF2NKuNSFEm7c2yLU9h6QECYKPgI--

--===============1409154944138406797==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1409154944138406797==--
