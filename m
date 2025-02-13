Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF26A338A2
	for <lists+usrp-users@lfdr.de>; Thu, 13 Feb 2025 08:17:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BC094385C5B
	for <lists+usrp-users@lfdr.de>; Thu, 13 Feb 2025 02:17:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739431035; bh=tYF7649hMPdMY+qZ+XrxU3ZTSeHa59A6oCnxPgb0U+g=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=l/DmtpzB2s20jE9FRXlZNgszrbPyOV3doumGjgpNnD5OPAOprnP4D57o2wEmQFsMw
	 jeKuslGnXCll6wLfgXAJXG2KVm8pRAECLAYk0uAFHsCj6CW596BZEPWlrMSmNfQNqE
	 IGifbIJi/5xRj9nOwEBZmI6isOTRYhyzdH6vrM98xh1OYECaCTqQMUzz1qLzv7ofj7
	 pgTRV2n6WiJOm7YvqfNzTTI/XO3rhFbgM1lyWW+qDqbTeT24FFN2G1aJXWe7+OSKWt
	 9agSHxLerSWepNCt7h76w0Z+RmhKeIB9z5EMeBSl58TjpxXh9O1UPq9L8ooGkddgKP
	 9WN8/KzNyKPfQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F816385AB1
	for <usrp-users@lists.ettus.com>; Thu, 13 Feb 2025 02:16:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739430989; bh=SdO9qJf5Penq2+GzEQsyAsY8i8tBPKJye1eHPkoH1ks=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=IhqGeHJEGJROmshn37u4QQLPCHr5wqZg4ksHn3GF9Pk/DthyHg4p7EFYW6FN25ez2
	 xIU+FoqBrKOfENG1MOvTrau4rM977y0J0i/fMfaEWt1o/D+dbbCBt7/dteZ28OVVJE
	 Ez33jFJ36Xbkwz5x7x23oZwtve5WDQcCESGfnu++B6ep3Nmc4GTdWJmy9cgiHKZsDI
	 +PYpHdpTulL77tOj/iW6RYfww2+ubK1A/P1hH+jBxypUyXo8+npO9fWvBNPrk0PyQM
	 AeWuzWlLW5If9uDQGXjsOtGU239aAsndbf02J6DaK7HcoclFCLly30iUDh9/ICTZjV
	 iewthmdmwPapw==
Date: Thu, 13 Feb 2025 07:16:29 +0000
To: usrp-users@lists.ettus.com
Message-ID: <d2eZcwxcAynWrQ9mqE0j6G7NNDCqHn18ElPGqsyoNTU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: nMRcbMVQgpcHUmIhdTR1fX1bGQ2Pp98cXXV9ylsDYok@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 3ZRSDUIY42FRTA7S7TRIVWPLZVHBNPLE
X-Message-ID-Hash: 3ZRSDUIY42FRTA7S7TRIVWPLZVHBNPLE
X-MailFrom: joerg.hofrichter@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Build custom fpga image for x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3ZRSDUIY42FRTA7S7TRIVWPLZVHBNPLE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "joerg.hofrichter--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: joerg.hofrichter@emerson.com
Content-Type: multipart/mixed; boundary="===============6962502892265578685=="

This is a multi-part message in MIME format.

--===============6962502892265578685==
Content-Type: multipart/alternative;
 boundary="b1_d2eZcwxcAynWrQ9mqE0j6G7NNDCqHn18ElPGqsyoNTU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_d2eZcwxcAynWrQ9mqE0j6G7NNDCqHn18ElPGqsyoNTU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

the rfnoc_image_builder has probably generated the bitfile but in a folde=
r which you do not expect.

Until UHD 4.7 (which you are using), the build folder is generated in the=
 same folder as the x410_CG_400_rfnoc_image_core.yml file (fpga/usrp3/top=
/x400) per default.

Starting with UHD 4.8, the =E2=80=9Cbuild=E2=80=9D folder which contains =
the resulting .bit is generated in the current folder where run the =E2=80=
=9Crfnoc_image_builder=E2=80=9D command.\
This change was introduced with commit 8e780be0, and described as follows=
:

```
image builder: create build(...) directories in the current directory
Introduce a new parameter --base-dir BASE_DIR.

If the parameters --build-dir BUILD_DIR / --build-ip-dir BUILD_IP_DIR
/ --build-output-dir BUILD_OUTPUT_DIR are not set explicitly, they will
be set to these values per default:

- BUILD_DIR=3D<BASE_DIR>/build-<IMAGE_CORE_NAME>
- BUILD_IP_DIR=3D<BASE_DIR>/build-ip
- BUILD_OUTPUT_DIR=3D<BASE_DIR>/build

BASE_DIR defaults to the current directory if the parameter --base-dir
is not set. This means that per default, the build(...) directories
are generated in the current directory.
```

--b1_d2eZcwxcAynWrQ9mqE0j6G7NNDCqHn18ElPGqsyoNTU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>the rfnoc_image_builder has probably generated the bitfile b=
ut in a folder which you do not expect.</p><p>Until UHD 4.7 (which you ar=
e using), the build folder is generated in the same folder as the x410_CG=
_400_rfnoc_image_core.yml file (fpga/usrp3/top/x400) per default.</p><p>S=
tarting with UHD 4.8, the =E2=80=9Cbuild=E2=80=9D folder which contains t=
he resulting .bit is generated in the current folder where run the =E2=80=
=9Crfnoc_image_builder=E2=80=9D command.<br>This change was introduced wi=
th commit 8e780be0, and described as follows:</p><pre><code>image builder=
: create build(...) directories in the current directory
Introduce a new parameter --base-dir BASE_DIR.

If the parameters --build-dir BUILD_DIR / --build-ip-dir BUILD_IP_DIR
/ --build-output-dir BUILD_OUTPUT_DIR are not set explicitly, they will
be set to these values per default:

- BUILD_DIR=3D&lt;BASE_DIR&gt;/build-&lt;IMAGE_CORE_NAME&gt;
- BUILD_IP_DIR=3D&lt;BASE_DIR&gt;/build-ip
- BUILD_OUTPUT_DIR=3D&lt;BASE_DIR&gt;/build

BASE_DIR defaults to the current directory if the parameter --base-dir
is not set. This means that per default, the build(...) directories
are generated in the current directory.</code></pre>


--b1_d2eZcwxcAynWrQ9mqE0j6G7NNDCqHn18ElPGqsyoNTU--

--===============6962502892265578685==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6962502892265578685==--
