Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F01FDB597DB
	for <lists+usrp-users@lfdr.de>; Tue, 16 Sep 2025 15:38:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 525DB38617C
	for <lists+usrp-users@lfdr.de>; Tue, 16 Sep 2025 09:38:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758029920; bh=8ihfhKpvLjO6RJ1/cZE7++qw3QIsAT0ivWqatMN3G8k=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=FalAU5JIi3yfLgsNcdqk2lhShC8kvD8apTZbh2A3ICN61aZFB1Uq/swul6NJW/MqX
	 gGrgW4QANa3HOfOlrdgG4a2GAViVOSzbNVqygP413maW8fwX9KgL0YHL2B5GXP72K8
	 x+MEd8UTsQobM4/TSsfORy54tZXwcAF97t8bXwe74XiWMd+FOW1wqkHNt5n25pMbqD
	 u6GYngyhiIiePxmU5iqc5FHi6ktccZFtKDYLNrOoJE88yJGtdn6OWCSrH4iG24NmMC
	 /dWW3C/fDB2BtrD8RZS7VReL+GerzFHd1CeSWeCxXE3lgtGqtjVOb7GapkGpmhVc7g
	 fY7MgalmDjh0g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 55435385E7F
	for <usrp-users@lists.ettus.com>; Tue, 16 Sep 2025 09:37:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758029864; bh=DF5f8HsB42VXKlKiVS83NRQ4SFcmKXlYyMqMFD5vhHM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=QlmdMOis36rUXttXFG84vTFRzvJ/53ias+Ijugl6+Cw+itbdwgIxIvYAtml1l6r/U
	 ut1DnRnUxpANzk7qgsBoQmTaGuQ4jPQtbZ/YFFpQVrY3i88sDA0tZJsDnqRmYmuw8z
	 srysN7WUwrTRE4XHeP5i5l5xy9LCiS4A77uzo4kAvdjAvYlzzkM8PfYMWHJHpLqN8W
	 6Je2VHa66Zl/ZXlC01ms8sn74QGOrjhGWpIv4VQZ3LDj+pzrc17Cjtz19QmYlj044b
	 iFn1yiWXt8rj3DxRwmDSDdsItOXYReQOlGGZE4mEyAwMrV25zYHcIFaVNI4CPo3qfa
	 Voudv9eu71rDA==
Date: Tue, 16 Sep 2025 13:37:44 +0000
To: usrp-users@lists.ettus.com
From: ardelgado@gradiant.org
Message-ID: <IEsLn0z4QHmyAnyWpVt61nYpQfrngGczXoWgThOkY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 4MuNprC2TcBF9IhoUmLzIiQichT1jQc8m0099sMgQB8@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 76D5IID465KCLS2JA45ONPA5PSIX2YB3
X-Message-ID-Hash: 76D5IID465KCLS2JA45ONPA5PSIX2YB3
X-MailFrom: ardelgado@gradiant.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to pin a specific UHD version across machines/devcontainers?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/76D5IID465KCLS2JA45ONPA5PSIX2YB3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2269972246782720616=="

This is a multi-part message in MIME format.

--===============2269972246782720616==
Content-Type: multipart/alternative;
 boundary="b1_IEsLn0z4QHmyAnyWpVt61nYpQfrngGczXoWgThOkY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_IEsLn0z4QHmyAnyWpVt61nYpQfrngGczXoWgThOkY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi J=C3=B6rg,

Many thanks for your quick reply.

I=E2=80=99m to preceed with the PPA installation. I just have one questio=
n regarding reproducibility: will it remain possible to install=C2=A0**th=
e exact same UHD version**=C2=A0from the PPA in the future (e.g., pinning=
 a specific \~jammy3=C2=A0build) or are older revisions typically replace=
d/removed over time? Knowing this will help me plan consistent setups for=
 avoiding version mismatches.

Thank you again for your fast support and for all your work on this tool.

Best regards,

=C3=81lvaro

--b1_IEsLn0z4QHmyAnyWpVt61nYpQfrngGczXoWgThOkY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi J=C3=B6rg,</p><p>Many thanks for your quick reply.</p><p>I=E2=80=99=
m to preceed with the PPA installation. I just have one question regardin=
g reproducibility: will it remain possible to install&nbsp;<strong>the ex=
act same UHD version</strong>&nbsp;from the PPA in the future (e.g., pinn=
ing a specific ~jammy3&nbsp;build) or are older revisions typically repla=
ced/removed over time? Knowing this will help me plan consistent setups f=
or avoiding version mismatches.</p><p>Thank you again for your fast suppo=
rt and for all your work on this tool.</p><p>Best regards,</p><p>=C3=81lv=
aro</p>


--b1_IEsLn0z4QHmyAnyWpVt61nYpQfrngGczXoWgThOkY--

--===============2269972246782720616==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2269972246782720616==--
