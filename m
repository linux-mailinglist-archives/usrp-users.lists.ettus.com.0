Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B252B59486
	for <lists+usrp-users@lfdr.de>; Tue, 16 Sep 2025 13:00:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 278BF383B85
	for <lists+usrp-users@lfdr.de>; Tue, 16 Sep 2025 07:00:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758020403; bh=cd7LnQNLv2Ita/In9stfO6g3GDEWXNsrKwPXB8lXApw=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=a0kZdOdmV9p/vt5xMuh7Cijp5E7502adnbvIPBCRRNlieMR+PiqoAteQZaCJKzA0f
	 9ZXf0aryRtOBP0OKGiCDgcaQKRsexMpZ5rmcdiS7bOdHnQ6n6hkbMkW7B8FJVgQZNi
	 z+BzqwFl+Q2zC9FB3N1qE7W3lNTE2XRStcqflgm/09DTkxSQ+ObKAEv/qmUbW0IDDI
	 o1jloD3C01a7SANl7lTcqu9PeljxntRch7yK7Hw/oBp48vhG3HnuRc43kequM+ekVj
	 4oSUwGzjvmiZZoEFcNpXyxLBB1DroFpA0+7/92N0d+3Sfj0gxV1KQHdpNke4F8LAs5
	 4lxlQldvyFjIg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AF2BF3860F6
	for <usrp-users@lists.ettus.com>; Tue, 16 Sep 2025 06:59:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758020345; bh=VGdOfN37ddxwz0bianzkNr06XlDDggj+lnP42IAvl3k=;
	h=Date:To:From:Subject:From;
	b=zhXV3Vx8hQta+upK0nY1GylYKthDFuw1945BZkuq5LlfIoI1UL+f5AM3+LhzYp21+
	 zfpvn4F6UDzyfLk+vRVhdju+j/1rzgo84888kSYXGjaNp7rItdOPF2S2t8SG+NBQLr
	 2U2CR3dWUH8PQvpVB3igvWf+Cqceel6EtlwG4dI2X6lsfL4pwRtxVfBvWe0kOYEuPh
	 cvKXHE2bbmqIigignW+nYeYHrpfhdRqdIH4fbkxXyQK+ZCKqmECgmR0reZ+Qp2SYvh
	 I+HUL5KtKUj5+OJG3Pc6xdGHfYM6IHD2F5t5HX16uI8k9cL8gfrh8ivyuUXjelYrRY
	 36w1ArFM8+QDQ==
Date: Tue, 16 Sep 2025 10:59:05 +0000
To: usrp-users@lists.ettus.com
From: ardelgado@gradiant.org
Message-ID: <wstv9FLXUY85WlqO0ARNaIcQbFBIcmKosQhviD0oA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: C4YXODCS64CJM6ZGCNOPEMFOO7A7EP6O
X-Message-ID-Hash: C4YXODCS64CJM6ZGCNOPEMFOO7A7EP6O
X-MailFrom: ardelgado@gradiant.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to pin a specific UHD version across machines/devcontainers?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C4YXODCS64CJM6ZGCNOPEMFOO7A7EP6O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4623308812889295983=="

This is a multi-part message in MIME format.

--===============4623308812889295983==
Content-Type: multipart/alternative;
 boundary="b1_wstv9FLXUY85WlqO0ARNaIcQbFBIcmKosQhviD0oA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_wstv9FLXUY85WlqO0ARNaIcQbFBIcmKosQhviD0oA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

For a long time, i used the default UHD installation that ships with Ubun=
tu which is version 4.1.0.5.3 and I wanted to upgrade it (e.g. 4.9.0.0). =
It seems that the best option is using the next commands:\
\
sudo add-apt-repository ppa:ettusresearch/uhd\
sudo apt-get update\
sudo apt-get install libuhd-dev uhd-host

While this is very convenient, I=E2=80=99d like to install the exact same=
 UHD version across differents devices and even in a devcontainer. The pr=
oblem is that **PPA builds for Jammy and other versions change quickly** =
(e.g. \~jammy1, \~jammy2, \~jammy3), so I=E2=80=99m worried this could br=
eak reproducibility over time. I need to match my N310 and X410 images wi=
th a stable UHD version.

I also tried=C2=A0**building from source**, which works:\
\
git clone <https://github.com/EttusResearch/uhd.git>

cd uhd

git checkout v4.9.0.0

cd host

mkdir build && cd build

cmake ..

make -j$(nproc)

sudo make install

sudo ldconfig

However, this approach feels too heavy to repeat frequently, and I additi=
onally needed the Python API.=20

After installing, **import uhd**=C2=A0initially failed:\
\
>>> import uhd

Traceback (most recent call last):

  File "<stdin>", line 1, in <module>

ModuleNotFoundError: No module named 'uhd'

Could you recommend any other way to achieve this goal? I=E2=80=99m fine =
with using a version other than 4.9.0.0, but I=E2=80=99d like to test the=
 improvements you introduced=C2=A0over my current version, especially reg=
arding RFNoC.

Best Regards,

=C3=81lvaro

--b1_wstv9FLXUY85WlqO0ARNaIcQbFBIcmKosQhviD0oA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi!</p><p>For a long time, i used the default UHD installation that ship=
s with Ubuntu which is version 4.1.0.5.3 and I wanted to upgrade it (e.g. 4=
.9.0.0). It seems that the best option is using the next commands:<br><br>s=
udo add-apt-repository ppa:ettusresearch/uhd<br>sudo apt-get update<br>sudo=
 apt-get install libuhd-dev uhd-host</p><p>While this is very convenient, I=
=E2=80=99d like to install the exact same UHD version across differents dev=
ices and even in a devcontainer. The problem is that <strong>PPA builds for=
 Jammy and other versions change quickly</strong> (e.g. ~jammy1, ~jammy2, ~=
jammy3), so I=E2=80=99m worried this could break reproducibility over time.=
 I need to match my N310 and X410 images with a stable UHD version.</p><p>I=
 also tried&nbsp;<strong>building from source</strong>, which works:<br><br=
>git clone <a href=3D"https://github.com/EttusResearch/uhd.git">https://git=
hub.com/EttusResearch/uhd.git</a></p><p>cd uhd</p><p>git checkout v4.9.0.0<=
/p><p>cd host</p><p>mkdir build &amp;&amp; cd build</p><p>cmake ..</p><p>ma=
ke -j$(nproc)</p><p>sudo make install</p><p>sudo ldconfig</p><p>However, th=
is approach feels too heavy to repeat frequently, and I additionally needed=
 the Python API. </p><p>After installing, <strong>import uhd</strong>&nbsp;=
initially failed:<br><br>&gt;&gt;&gt; import uhd</p><p>Traceback (most rece=
nt call last):</p><p>  File "&lt;stdin&gt;", line 1, in &lt;module&gt;</p><=
p>ModuleNotFoundError: No module named 'uhd'</p><p><br></p><p>Could you rec=
ommend any other way to achieve this goal? I=E2=80=99m fine with using a ve=
rsion other than 4.9.0.0, but I=E2=80=99d like to test the improvements you=
 introduced&nbsp;over my current version, especially regarding RFNoC.</p><p=
>Best Regards,</p><p>=C3=81lvaro</p>

--b1_wstv9FLXUY85WlqO0ARNaIcQbFBIcmKosQhviD0oA--

--===============4623308812889295983==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4623308812889295983==--
