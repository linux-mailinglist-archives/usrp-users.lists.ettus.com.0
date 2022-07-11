Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A9911570D09
	for <lists+usrp-users@lfdr.de>; Mon, 11 Jul 2022 23:55:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1EB1F383682
	for <lists+usrp-users@lfdr.de>; Mon, 11 Jul 2022 17:55:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657576503; bh=DhShiOXDTBV9eCzzwS3p6iAKvf+wYfhRJyDiOteLKts=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=N+O6/QmcWBjIN8vOZXwXU32k//Hbc46Q9VAybzYZL0t+5NDFkkA7fOmUBik7CF1CB
	 nZ5wOFNt/XVo6Zjeb3xN9rO/y7I2it9X9WO2MKfJVDducHhsbgav1N7qC98sGywYFc
	 akeSoWLdZm2jVwgkvhG9EObjlqg2TjvWlSKm09ytoTTjTdPMSWJXxIm9wB3XFAIOdp
	 cCF9dZn0vO5Ez8x7h9m4npL+DC7aW/nonWLnoyb8CpaAKrzGtMzoA28uFMpAxtLCPR
	 AG4f8E1VxtNlwFJDJIODLw5//zNcf0i9SP6XBC+22PnfjEQJc7z0cOdRXSMH07RQSg
	 Yv1/CUiG9/N9A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5EA783839AF
	for <usrp-users@lists.ettus.com>; Mon, 11 Jul 2022 17:44:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657575849; bh=BTEHB2hhRkilcjYoEYl4nf51jDvbNTHIylcHJCm8n3E=;
	h=Date:To:From:Subject:From;
	b=xlszr6B1JWbl6pywA9LD6gvPEUB/t8G9Q0L4ti4SvHHFubayrx/4znvAhTYYs/B6U
	 rWnV2HYJlsojCXmrP51jRhmMa6CzobWNp2hGbeCwm0UmGZuKDk1xh+dMosyspQ9B/C
	 ReWdZw8odtqbzs2WVpHACvPlBJwS4eJslDwxj38qJLtKdalcuGIaktYWMYmE2VQ1DR
	 Dxsqo3oFsVEoEk6XEYtM/9AEQilhi1bmRyL83N0MfayhqyOmjjPsaT0LlxcVq9CfMa
	 w1FvWiHbBwUVTptauH0tTmtvYgYt9EW0sJYvXgmfbX9vYsDhfT7VI4vIbk5x28etf0
	 5U0fWaP3wpduQ==
Date: Mon, 11 Jul 2022 21:44:09 +0000
To: usrp-users@lists.ettus.com
Message-ID: <m5FQ7PJuZCFN5wwWxMDd8xvXsySCyh5kHX53asf2A@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: KNUYO25RQQTLN7RNRQJ5I6BN5MNWI4II
X-Message-ID-Hash: KNUYO25RQQTLN7RNRQJ5I6BN5MNWI4II
X-MailFrom: k1barrett@ucsd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Problem installing UHD dependencies
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KNUYO25RQQTLN7RNRQJ5I6BN5MNWI4II/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: k1barrett--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: k1barrett@ucsd.edu
Content-Type: multipart/mixed; boundary="===============4273168279382886869=="

This is a multi-part message in MIME format.

--===============4273168279382886869==
Content-Type: multipart/alternative;
 boundary="b1_m5FQ7PJuZCFN5wwWxMDd8xvXsySCyh5kHX53asf2A"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_m5FQ7PJuZCFN5wwWxMDd8xvXsySCyh5kHX53asf2A
Content-Type: text/plain; charset=us-ascii

I am running ubuntu 22.04. I am trying to build UHD from source using this guide here.

 https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux

However, when I run the following command:

 sudo apt-get -y install autoconf automake build-essential ccache cmake cpufrequtils doxygen ethtool fort77 g++ gir1.2-gtk-3.0 git gobject-introspection gpsd gpsd-clients inetutils-tools libasound2-dev libboost-all-dev libcomedi-dev libcppunit-dev libfftw3-bin libfftw3-dev libfftw3-doc libfontconfig1-dev libgmp-dev libgps-dev libgsl-dev liblog4cpp5-dev libncurses5 libncurses5-dev libpulse-dev libqt5opengl5-dev libqwt-qt5-dev libsdl1.2-dev libtool libudev-dev libusb-1.0-0 libusb-1.0-0-dev libusb-dev libxi-dev libxrender-dev libzmq3-dev libzmq5 ncurses-bin python3-cheetah python3-click python3-click-plugins python3-click-threading python3-dev python3-docutils python3-gi python3-gi-cairo python3-gps python3-lxml python3-mako python3-numpy python3-numpy-dbg python3-opengl python3-pyqt5 python3-requests python3-scipy python3-setuptools python3-six python3-sphinx python3-yaml python3-zmq python3-ruamel.yaml swig wget

I get the error E: Unable to locate package python3-numpy-dbg

Any help would be appreciated.

Thanks

--b1_m5FQ7PJuZCFN5wwWxMDd8xvXsySCyh5kHX53asf2A
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>I am running ubuntu 22.04. I am trying to build UHD from source using th=
is guide here.</p><p> https://kb.ettus.com/Building_and_Installing_the_USRP=
_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux</p><p>However, when I r=
un the following command:</p><p> sudo apt-get -y install autoconf automake =
build-essential ccache cmake cpufrequtils doxygen ethtool fort77 g++ gir1.2=
-gtk-3.0 git gobject-introspection gpsd gpsd-clients inetutils-tools libaso=
und2-dev libboost-all-dev libcomedi-dev libcppunit-dev libfftw3-bin libfftw=
3-dev libfftw3-doc libfontconfig1-dev libgmp-dev libgps-dev libgsl-dev libl=
og4cpp5-dev libncurses5 libncurses5-dev libpulse-dev libqt5opengl5-dev libq=
wt-qt5-dev libsdl1.2-dev libtool libudev-dev libusb-1.0-0 libusb-1.0-0-dev =
libusb-dev libxi-dev libxrender-dev libzmq3-dev libzmq5 ncurses-bin python3=
-cheetah python3-click python3-click-plugins python3-click-threading python=
3-dev python3-docutils python3-gi python3-gi-cairo python3-gps python3-lxml=
 python3-mako python3-numpy python3-numpy-dbg python3-opengl python3-pyqt5 =
python3-requests python3-scipy python3-setuptools python3-six python3-sphin=
x python3-yaml python3-zmq python3-ruamel.yaml swig wget</p><p>I get the er=
ror E: Unable to locate package python3-numpy-dbg</p><p>Any help would be a=
ppreciated.</p><p><br></p><p>Thanks</p>

--b1_m5FQ7PJuZCFN5wwWxMDd8xvXsySCyh5kHX53asf2A--

--===============4273168279382886869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4273168279382886869==--
