Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C11FA773A80
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 15:36:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D6F9A384A21
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 09:36:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691501796; bh=ICz1czEsmk5kpGqdMnD+vxoNsjjQXxpDggkuTF9VUdA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=kcAuJM0BugoVSnd168lYkMe/xXjw/tfjyV5JuL3iE+Iu4++RTnoainWbo45j23Wri
	 tvmCGBYjqHGZCiiNIqHjwH+YHUV44vB807GLre3IehFNX79b0nlB3GqQMIZ0z3eabU
	 kBWXYsIayDgsLydzF4hLtdXMLy7O2iF58xL3IM/DBU8Vxs2xdVgWKZgomTCKR7jJMq
	 KOHhTjYM9eB9MN5Xk094YS7FEb2K8LWwnyT9VK4ruw6MvdTydXHN7Z2cWGg4oAgx0N
	 Y6H8MXC8mrp9wKefMY2rz3inCkTpSiOgSYIFzVSYE3vVo2dk7Fg3JFgSV7eNlwYwDq
	 rZAWcaok0EY6w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E1904380BEA
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 09:36:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691501782; bh=8K131bDYZmZ+aSGjKuhJIV+PATITWVCHPx9XLbCBt3A=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=qMUGgIZ+2wdiStxEG73Z4TgwIwqL2phau6By4WTKAdkVmIGc0xC+iMx2V4CkJ+6mC
	 lDcklC0I9MeAC07oX5+dJvcd2D186OLj7FS7suwHpjTSF6XbgakgvXJmX0FRUnyP+k
	 o5u3p83bnnOBhGEBUaT8qN5L96cnPJpsVo2GbpPFtxHfmZY+nQocV5Cf8TpJc4EgtQ
	 pz9bsB3zhHQDdflM3V9EGHMW8KUXiuN89Qd/MZg2kmwS5FrtaSm//EgS1ZnP5pJodd
	 1xtdv58ayKEohYH8Bz2Rylj9Vj3cjy1Kk0jKG/hanycjB3lysNcmj2IUtmqC499yWM
	 oKPevQbvrMvuw==
Date: Tue, 8 Aug 2023 13:36:22 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <D3Mmg3UeSIg7UDt2elqtWQJj6Ycgp6RSbQQIWZ0k@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: d9b5f24d-d20b-6701-c828-0744b9690f37@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 4SN76C25RS6HX5RTPR6NOECOHGXCRVFN
X-Message-ID-Hash: 4SN76C25RS6HX5RTPR6NOECOHGXCRVFN
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4SN76C25RS6HX5RTPR6NOECOHGXCRVFN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8745559251968413666=="

This is a multi-part message in MIME format.

--===============8745559251968413666==
Content-Type: multipart/alternative;
 boundary="b1_D3Mmg3UeSIg7UDt2elqtWQJj6Ycgp6RSbQQIWZ0k"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_D3Mmg3UeSIg7UDt2elqtWQJj6Ycgp6RSbQQIWZ0k
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear Marcus,

When I type that, it prints the same run-time error:

`./usrp_burn_mb_eeprom =E2=80=94read-all`

**Creating USRP device from address:**=20

**\[INFO\] \[UHD\] linux; GNU C++ version 11.3.0; Boost_107400; DPDK_21.1=
1; UHD_4.3.0.0-release**

**Error: RuntimeError: B200 unknown product code: 0x3120**

What=E2=80=99s interesting is the device firmware can be loaded with powe=
r cycle but the same error persists throughout the UHD utilities and usrp=
 related code.

I think the desired output should be similar to the following as provided=
 on [About the Motherboard and Daughtercard EEPROM on USRP Devices](https=
://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on_USRP_Dev=
ices "https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_=
on_USRP_Devices") under B200/210 and B200mini EEPROM:

Fetching current settings from EEPROM...
	EEPROM \["revision"\] is "4"
    	EEPROM \["product"\] is "2"
    	EEPROM \["serial"\] is "30AD2D4"
    	EEPROM \["name"\] is "MyB210"

Regards,

Eden.

--b1_D3Mmg3UeSIg7UDt2elqtWQJj6Ycgp6RSbQQIWZ0k
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Dear Marcus,</p><p>When I type that, it prints the same run-time error=
:</p><p><br></p><p><code>./usrp_burn_mb_eeprom =E2=80=94read-all</code></=
p><p><strong>Creating USRP device from address: </strong></p><p><strong>[=
INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; DPDK_21.11; UHD_=
4.3.0.0-release</strong></p><p><strong>Error: RuntimeError: B200 unknown =
product code: 0x3120</strong></p><p><br></p><p>What=E2=80=99s interesting=
 is the device firmware can be loaded with power cycle but the same error=
 persists throughout the UHD utilities and usrp related code.</p><p>I thi=
nk the desired output should be similar to the following as provided on <=
a href=3D"https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEP=
ROM_on_USRP_Devices" title=3D"https://kb.ettus.com/About_the_Motherboard_=
and_Daughtercard_EEPROM_on_USRP_Devices">About the Motherboard and Daught=
ercard EEPROM on USRP Devices</a> under B200/210 and B200mini EEPROM:</p>=
<p>Fetching current settings from EEPROM...
	EEPROM ["revision"] is "4"
    	EEPROM ["product"] is "2"
    	EEPROM ["serial"] is "30AD2D4"
    	EEPROM ["name"] is "MyB210"</p><p><br></p><p>Regards,</p><p>Eden.</p=
>


--b1_D3Mmg3UeSIg7UDt2elqtWQJj6Ycgp6RSbQQIWZ0k--

--===============8745559251968413666==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8745559251968413666==--
