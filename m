Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D64CD570D2D
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jul 2022 00:07:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E6501383CE4
	for <lists+usrp-users@lfdr.de>; Mon, 11 Jul 2022 18:07:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657577258; bh=6HGzH9QdYwtkPo9O3dtv86L9NajutYILa8zGF8tsZIo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Hc7vgTzvqW1WSz0EELFkfVvJE7IPiRTgUnnaqFgkbJToBDCWYquyRYAgigulIaLdO
	 MCohNDZE+b7S64BfhFaXXobgARu0WF4Bh2jq4Fq0q1iPfmxy9w/FLxdzm6vrtpusYv
	 aSfVel1YhwUBcuTyMZyvgefNu2Dqsd4TTie8I+3mrcfcyxQSa8ZNlP2d1CHG+qm3NV
	 Y16gAAwKu6YRn12QC45rQEtqXyN8mt/9mCtsXqjuDQG4BqEeNLHAjYD73b0jQY1YPU
	 BT+7Sr7S6pBvXU0YxXzuA6n2DoCheZBbxo1VTIXvZGNf/RU85CkbkP+A533lLlGFDt
	 dpN8TuShWQSIQ==
Received: from resqmta-a1p-077724.sys.comcast.net (resqmta-a1p-077724.sys.comcast.net [96.103.146.53])
	by mm2.emwd.com (Postfix) with ESMTPS id A2D16383B27
	for <usrp-users@lists.ettus.com>; Mon, 11 Jul 2022 18:05:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=comcast.net header.i=@comcast.net header.b="rWypzJSC";
	dkim-atps=neutral
Received: from resomta-a1p-077060.sys.comcast.net ([96.103.145.238])
	by resqmta-a1p-077724.sys.comcast.net with ESMTP
	id AyfMoDWJvjgwtB1WXoO5E4; Mon, 11 Jul 2022 22:05:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1657577101;
	bh=NTw+gNVuo7v4Za7u4Y8+GgNRJ0nh5DIhL2NKwLVIlOc=;
	h=Received:Received:Message-ID:Date:MIME-Version:Subject:To:From:
	 Content-Type;
	b=rWypzJSC4rlSFT4kuhU1JH7dmmFNB1MCAzROrzC45LnXYfRF5G2G31fgEPjU1Dh2R
	 Gm1RRpQuqbKQRY0uvrw/cqUQu4w6nkbjk+Gt0ntX38Q+CpSb9DHy+PmKvL0GvQ2+Xs
	 gsH+ERRlQTGUn6TNFaWa3FId91wpuLfSASn+V2ECE7hSW1LLoY1Lg2qkeuf85muwrQ
	 IU8rshFhScEZ6JoLaig3sUp2YN5XIwNDo+llm6MpLhkLm97GMesduR+7d60er3qlB3
	 wCv50T/WF8AvNwyV33I5nMZDysTFyl+BkbNVIq5SXG20FQopncEiOvakIs8Eq/xk28
	 owBPkz9AhV3jA==
Received: from [IPV6:2601:647:4700:284:a4c3:8e0b:403e:4792]
 ([IPv6:2601:647:4700:284:a4c3:8e0b:403e:4792])
	by resomta-a1p-077060.sys.comcast.net with ESMTPSA
	id B1WAogvrbjo4OB1WBoY8sf; Mon, 11 Jul 2022 22:04:39 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
Message-ID: <ccfd0530-18e6-244a-8817-6ac9e0db5c9a@comcast.net>
Date: Mon, 11 Jul 2022 15:04:37 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <m5FQ7PJuZCFN5wwWxMDd8xvXsySCyh5kHX53asf2A@lists.ettus.com>
From: Ron Economos <w6rz@comcast.net>
In-Reply-To: <m5FQ7PJuZCFN5wwWxMDd8xvXsySCyh5kHX53asf2A@lists.ettus.com>
Message-ID-Hash: FONS5HFX66VGYD3DZIVHIYOMXDP274H7
X-Message-ID-Hash: FONS5HFX66VGYD3DZIVHIYOMXDP274H7
X-MailFrom: w6rz@comcast.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem installing UHD dependencies
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FONS5HFX66VGYD3DZIVHIYOMXDP274H7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

It's not needed. Just delete it from the command.

Ron

On 7/11/22 14:44, k1barrett--- via USRP-users wrote:
>
> I am running ubuntu 22.04. I am trying to build UHD from source using 
> this guide here.
>
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux
>
> However, when I run the following command:
>
> sudo apt-get -y install autoconf automake build-essential ccache cmake 
> cpufrequtils doxygen ethtool fort77 g++ gir1.2-gtk-3.0 git 
> gobject-introspection gpsd gpsd-clients inetutils-tools libasound2-dev 
> libboost-all-dev libcomedi-dev libcppunit-dev libfftw3-bin 
> libfftw3-dev libfftw3-doc libfontconfig1-dev libgmp-dev libgps-dev 
> libgsl-dev liblog4cpp5-dev libncurses5 libncurses5-dev libpulse-dev 
> libqt5opengl5-dev libqwt-qt5-dev libsdl1.2-dev libtool libudev-dev 
> libusb-1.0-0 libusb-1.0-0-dev libusb-dev libxi-dev libxrender-dev 
> libzmq3-dev libzmq5 ncurses-bin python3-cheetah python3-click 
> python3-click-plugins python3-click-threading python3-dev 
> python3-docutils python3-gi python3-gi-cairo python3-gps python3-lxml 
> python3-mako python3-numpy python3-numpy-dbg python3-opengl 
> python3-pyqt5 python3-requests python3-scipy python3-setuptools 
> python3-six python3-sphinx python3-yaml python3-zmq 
> python3-ruamel.yaml swig wget
>
> I get the error E: Unable to locate package python3-numpy-dbg
>
> Any help would be appreciated.
>
>
> Thanks
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
