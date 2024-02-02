Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E7D846586
	for <lists+usrp-users@lfdr.de>; Fri,  2 Feb 2024 02:47:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E94E938505C
	for <lists+usrp-users@lfdr.de>; Thu,  1 Feb 2024 20:47:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706838433; bh=I0v3Jp12zfR4qkDM+VnaS4eM7IiCb/LyDzCeCIt1bLE=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=cTYHJPwvgB+tlrzMLaNnd+RMoq2ZpGtdP8dzs7xMFP0quDIJpdPT1FXf0xnsZleYE
	 2l7RhZnDpfm/+AYpGQmTcPOXuewanlIMoAr2F+jfpu1WCKHsl2hLa4qXWY0EZorbVa
	 yt4AtxlN6WQlyRnFezNLrgEIUTGPqO/V3OKQxx9zwAcTPSVvdgmb3g0kC6dV1oRbc6
	 9qHazFgazN4tRqGk/+P4xuG5Mymh0pL39lSITDZWIdKcDHy46z8j2lo3yMb9aA7T5v
	 +gGqsCOjhc5zr328qRtYa99qgqz6+p0lkuM8e0Gf3FRw9n9FkfYJXghgpcbyXzmCqJ
	 HzTJo+0HVt8Dg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 394D2384C0B
	for <usrp-users@lists.ettus.com>; Thu,  1 Feb 2024 20:46:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706838406; bh=nQWtfiGgT5wou1SAySag9K3yEyCsN9PNQ7XvvtoKknE=;
	h=Date:To:From:Subject:From;
	b=OJcJbARtcOnWjjiFAxGQOG42VP/jHEzBWEBSywI+lfd82EJKyifn4Is74KAoyRcq3
	 V5Q3cdHxcaKzuJ7dayV/GjZHzsj+1hZHGwVOD3NAOpLqecnMxT10fn5E8DSe4ZgyIy
	 445zPbG9vquPjviibf+zY2/OqbC5ytc8eAkLzscTHBh5ukbQNK/vMatI4qWKRHBG1u
	 D+YSiFB4uVqH3TamXCIFeZFNBtXi8/uIFMLfDtDgoNLORu79BZ8fkVrIbFAXPxgBZS
	 NCWsabQ3hwWba81aq8fhD18P7KFMasoyc0+E4RAVPnNgfWY0sNCn+p6GRTrI3IsFkH
	 hi0095VPzqRBQ==
Date: Fri, 2 Feb 2024 01:46:46 +0000
To: usrp-users@lists.ettus.com
From: zackkomo@utexas.edu
Message-ID: <Gqn8vZj0HvRmmC8Ag1hxct6SdyoaTNEqDkk2fDCckI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: HCJKMZAQLERWCZ5XJ2PBDSKKRY2GCGXJ
X-Message-ID-Hash: HCJKMZAQLERWCZ5XJ2PBDSKKRY2GCGXJ
X-MailFrom: zackkomo@utexas.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Access underlying uhd device object from Gnuradio in C++
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HCJKMZAQLERWCZ5XJ2PBDSKKRY2GCGXJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0222478112151320328=="

This is a multi-part message in MIME format.

--===============0222478112151320328==
Content-Type: multipart/alternative;
 boundary="b1_Gqn8vZj0HvRmmC8Ag1hxct6SdyoaTNEqDkk2fDCckI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Gqn8vZj0HvRmmC8Ag1hxct6SdyoaTNEqDkk2fDCckI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello!

I have a script in C++ that uses GNURadio for a GUI. I also already have =
some scripts written using UHD=E2=80=99s C++ API. When prompted in the GU=
I, I want to call on some of my methods that use UHD=E2=80=99s API. To do=
 this, I =C2=A0first run "stop()" on the usrp_source and the top block fr=
om GNURadio, then use the get_device() method to get a uhd::usrp::multi_u=
srp::sptr. This seemingly works well since I can successfully change the =
sampling rate, center frequency etc, but when I call "get_rx_stream(strea=
m_args)"=C2=A0I get the following:

\[INFO\] \[RFNOC::GRAPH::DETAIL\] Ignoring repeated call to connect 0/Rad=
io#0:0 -> 0/DDC#0:0\
\[ERROR\] \[RFNOC::GRAPH::DETAIL\] Attempting to reconnect output port 0/=
DDC#0:0\
terminate reached from thread id: 7f5011955980Got std::runtime_error\
RfnocError: Attempting to reconnect output port!

Any advice on what exactly is going on and how I can fix it?

Thanks!

--b1_Gqn8vZj0HvRmmC8Ag1hxct6SdyoaTNEqDkk2fDCckI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello!</p><p>I have a script in C++ that uses GNURadio for a GUI. I al=
so already have some scripts written using UHD=E2=80=99s C++ API. When pr=
ompted in the GUI, I want to call on some of my methods that use UHD=E2=80=
=99s API. To do this, I &nbsp;first run "stop()" on the usrp_source and t=
he top block from GNURadio, then use the get_device() method to get a uhd=
::usrp::multi_usrp::sptr. This seemingly works well since I can successfu=
lly change the sampling rate, center frequency etc, but when I call "get_=
rx_stream(stream_args)"&nbsp;I get the following:</p><p>[INFO] [RFNOC::GR=
APH::DETAIL] Ignoring repeated call to connect 0/Radio#0:0 -&gt; 0/DDC#0:=
0<br>[ERROR] [RFNOC::GRAPH::DETAIL] Attempting to reconnect output port 0=
/DDC#0:0<br>terminate reached from thread id: 7f5011955980Got std::runtim=
e_error<br>RfnocError: Attempting to reconnect output port!</p><p><br></p=
><p>Any advice on what exactly is going on and how I can fix it?</p><p><b=
r></p><p>Thanks!</p>


--b1_Gqn8vZj0HvRmmC8Ag1hxct6SdyoaTNEqDkk2fDCckI--

--===============0222478112151320328==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0222478112151320328==--
