Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E483878DEA8
	for <lists+usrp-users@lfdr.de>; Wed, 30 Aug 2023 21:46:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A47CE384C3E
	for <lists+usrp-users@lfdr.de>; Wed, 30 Aug 2023 15:46:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693424802; bh=CzobroL1woryc3tv5eHvRRc4OYeAlrDW/RF/YQWE2mM=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=lGbkPMEQMRNf3BOceuR1GvYYLNSUMTXGAEt9b7cTn5w+1grjblYj0d2BI3S9RHcpf
	 oWOWkCFJd9NyPETEO6uiIbBh6Ta2L3MN9OTMQRLbU+vttt259RXOh2roKfNf1zKhVx
	 PFBaWSYd8q5xjJ3NoIBvly2ch9gNB7HzSev+Q9zWLd4O+Ecci0LgtBbPHwWQq/0fy7
	 4bIi4Em2aXzz0Mmkj+Auh+XBDZT+gvfch453zrGgG5t7xTgMo0MBICD6hY1dxOhFFR
	 +vy+4dD6qGht6oVYg71780zOJdoaFpquqSeIzpxxsoCEkPjV7+SZArA2NxixGaaBfR
	 KIo3i8iCbmj7A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 59B233849A5
	for <usrp-users@lists.ettus.com>; Wed, 30 Aug 2023 15:45:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693424749; bh=PPD8o7hzHnxSW0w2Qq6q9wsycXAqA2+YnMsEfNu0d1g=;
	h=Date:To:From:Subject:From;
	b=UNqtQDfaU4wcEkmYWR8H7ZpR0H9zksjZnoeOHL3mE8K2B7mbsjOlMxNWvA6ZFQp+w
	 qyNxxMQkz+JijfSOChkWUo1Nm4TiRTE3GoI4f8QgNNgyt9+ChLyJsPH3k6oQFxeair
	 i4x4KHCM6/T9/sDVM4nEnBPL4aGQEK+/+q0ipLre24UOUlldAyQYur1NkxwmzfK/oy
	 DmKgMZ7BCa6w6+k65VcJ3sq5rTeT5Dg6e7cdLbJA2BbgIyE2CUTUZYPOc7pCUfYOk+
	 uC0Ibm6cpZi2vBxnEnTCKrC4HcAYQWS7CjMrQ6vG7XPbf3pQHK5rv6viZqyYDK0g0Q
	 lp6klTqY8+4Sg==
Date: Wed, 30 Aug 2023 19:45:49 +0000
To: usrp-users@lists.ettus.com
From: marcivanmanalac@gmail.com
Message-ID: <f2bpW4ovUAZRhszYyzkqEaoSPb7SMXmZkzBHU3YERVw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: W2URHYT2DSPL2YZWG3SGOOECNDIEJD2N
X-Message-ID-Hash: W2URHYT2DSPL2YZWG3SGOOECNDIEJD2N
X-MailFrom: marcivanmanalac@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] GNU Radio and E310 Network Mode Questions
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W2URHYT2DSPL2YZWG3SGOOECNDIEJD2N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0646420980654153709=="

This is a multi-part message in MIME format.

--===============0646420980654153709==
Content-Type: multipart/alternative;
 boundary="b1_f2bpW4ovUAZRhszYyzkqEaoSPb7SMXmZkzBHU3YERVw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_f2bpW4ovUAZRhszYyzkqEaoSPb7SMXmZkzBHU3YERVw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Host specs: Ubuntu 20.04, UHD v4.4.0, GNU Radio V3.10.7

USRP Specs: E310 f-model, UHD v4.4.0

Hello everyone,=20

I am fairly new to the SDR space and am learning as I go. I am trying to =
run a simple FM RX flowgraph from GNU Radio on my host machine to my USRP=
 E310. I have verified that they are in the same network as I am able to =
access the USRP via SSH, ping both machines on either side, and can ident=
ify one another using *uhd_find_devices =E2=80=94args addr=3D<USRP_IP_ADD=
R>* and *uhd_usrp_probe =E2=80=94args addr=3D<URSP_IP_ADDR>.*

When I generate and run the flowgraph, I get a runtime error stating:\
*in __init__*

*self.uhd_usrp_source_0=3Duhd.usrp_source(\
rpc::timeout:Timeout of 2000ms while calling RPC function =E2=80=98get_nu=
m_xbars=E2=80=99*

uhd_usrp_probe does give me a few warnings:

*\[MPM.PeriphManager\] Skipping Hw/SW compatibility check!*

*\[MPM.PeriphManager\] Found more EEPROM paths than daughterboards. Ignor=
ing some of them.*

*\[UHD\] The buffer could not be resized sufficiently. Target sock buff s=
ize 2500000. Actual sock buff size 1048576.*

I ran *sudo sysctl -w net.core.wmem_max=3D2500000* to increase the buffer=
 size.

My questions are, does this appear to be a problem with my flowgraph, the=
 USRP settings, or host settings? What are somethings I should look into =
to solve this?

--b1_f2bpW4ovUAZRhszYyzkqEaoSPb7SMXmZkzBHU3YERVw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Host specs: Ubuntu 20.04, UHD v4.4.0, GNU Radio V3.10.7</p><p>USRP Specs=
: E310 f-model, UHD v4.4.0</p><p><br></p><p>Hello everyone, </p><p>I am fai=
rly new to the SDR space and am learning as I go. I am trying to run a simp=
le FM RX flowgraph from GNU Radio on my host machine to my USRP E310. I hav=
e verified that they are in the same network as I am able to access the USR=
P via SSH, ping both machines on either side, and can identify one another =
using <em>uhd_find_devices =E2=80=94args addr=3D&lt;USRP_IP_ADDR&gt;</em> a=
nd <em>uhd_usrp_probe =E2=80=94args addr=3D&lt;URSP_IP_ADDR&gt;.</em></p><p=
><br></p><p>When I generate and run the flowgraph, I get a runtime error st=
ating:<br><em>in __init__</em></p><p><em>self.uhd_usrp_source_0=3Duhd.usrp_=
source(<br>rpc::timeout:Timeout of 2000ms while calling RPC function =
=E2=80=98get_num_xbars=E2=80=99</em></p><p><br></p><p>uhd_usrp_probe does g=
ive me a few warnings:</p><p><em>[MPM.PeriphManager] Skipping Hw/SW compati=
bility check!</em></p><p><em>[MPM.PeriphManager] Found more EEPROM paths th=
an daughterboards. Ignoring some of them.</em></p><p><em>[UHD] The buffer c=
ould not be resized sufficiently. Target sock buff size 2500000. Actual soc=
k buff size 1048576.</em></p><p>I ran <em>sudo sysctl -w net.core.wmem_max=
=3D2500000</em> to increase the buffer size.</p><p><br></p><p>My questions =
are, does this appear to be a problem with my flowgraph, the USRP settings,=
 or host settings? What are somethings I should look into to solve this?</p=
><p><br></p>

--b1_f2bpW4ovUAZRhszYyzkqEaoSPb7SMXmZkzBHU3YERVw--

--===============0646420980654153709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0646420980654153709==--
