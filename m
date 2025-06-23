Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 718F0AE37F5
	for <lists+usrp-users@lfdr.de>; Mon, 23 Jun 2025 10:10:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3DB6C3852EA
	for <lists+usrp-users@lfdr.de>; Mon, 23 Jun 2025 04:10:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750666247; bh=SIgMpA/gZUw6vnSegj4EllAR3Qeawaf/VaesMlupv7s=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vuYe9KE7By51AvRXMZ/AXmdquVSAmvPbYwt1gX/Ah9pvA1r18yRvKc9JKf2ynIxLG
	 RMFEGE1X8r3TcfK13FLt1fO4xF/XLH1/e5TxfUnzUmdhIAyO00ToTZXGDJyrQWrLHW
	 zG9rGoI+2AyIK8S0GkVM37raqwbv6iG9k8DW7tvSNtJ3MeoXWsbxsc3Y0EYysIPrMz
	 SHWrWmsb0JDav8LjmUrppwh71KS7FhJylqbJRWeRV5WvZ4WGW9OadkFxD/3Gq69JJi
	 SR9y7fCH/2sg5XmW3Am+QBSYSlmvAHajtV/tQRoTRRuZTHjLdgL9YlgOlWSZcI6cWp
	 Wvt05QZ4fTyjg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 03E31380B46
	for <usrp-users@lists.ettus.com>; Mon, 23 Jun 2025 04:08:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750666113; bh=99OSQUaru+0G69LGn3KyhfupFzH4hK0Gby+2YhgUOv8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ZqCrHU37E2U7RFKuGvwk+AFIPliNXKgjYFKElYK+7phQTtu1eQaJ1wW2f3S4TVYQx
	 lxioWnmRS/GIS/bgFH90i/njDYDzscBuM70yqGetwlrQ7Z5qmfqHACpiVSXcbJMW0l
	 jM9Xke5tKXg0qGWCfIpSjwt8Q0abimY+B1O3ebHhmjlZLNhRWTJhPu4ZshSNC2nrwX
	 zjpjfZf6LpM96jrzZ1Gf2Qg/1mXSnJ1U9qbAgarAyU0NR8AJoWMzncpf7EkNrgBz2X
	 s8kUO6ZjvRDr6WwmomnR/lhNPLhusgiQG+BnYaNxdoRbcOLBqss4NXlhh3SMKUxwfi
	 9X68blhlqV+Sw==
Date: Mon, 23 Jun 2025 08:08:33 +0000
To: usrp-users@lists.ettus.com
From: zhiwen_zhou@seu.edu.cn
Message-ID: <u68VKtOBVkQImuihTybgnC3MZBSi3dQrpCmIHBqrA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAAxXO2FM86H6Apa6E7WzQqrROx2+uhc_V2DSiM1wA-Fbvp2T_Q@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 2MZPCHYJ47HY52FDPWBE3AEVGZ6ABWCM
X-Message-ID-Hash: 2MZPCHYJ47HY52FDPWBE3AEVGZ6ABWCM
X-MailFrom: zhiwen_zhou@seu.edu.cn
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Fosphor: rfnoc rx streamer :warning: Received fractional vector! Expect signal fagmentation.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2MZPCHYJ47HY52FDPWBE3AEVGZ6ABWCM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1630289263794160135=="

This is a multi-part message in MIME format.

--===============1630289263794160135==
Content-Type: multipart/alternative;
 boundary="b1_u68VKtOBVkQImuihTybgnC3MZBSi3dQrpCmIHBqrA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_u68VKtOBVkQImuihTybgnC3MZBSi3dQrpCmIHBqrA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Nikos,\
\
Thank you for responding!\
\
I think it=E2=80=99s just with Fosphor since streaming from DUC works fin=
e.\
How to ensure that at least 1024 complex samples is fed into the Fosphor =
module? I=E2=80=99ve set the FFT size to 1024, and it still does not work=
.\
Does it have something to do with my FFT set up? Since I=E2=80=99ve chang=
ed the old =E2=80=98fft_1x64.yml=E2=80=99 to 'fft.yml', is there any addi=
tional parameters required?\
My current FFT config:\
\
=C2=A0 fft_a:

=C2=A0 =C2=A0 block_desc: 'fft.yml'

=C2=A0 =C2=A0 parameters:

=C2=A0 =C2=A0 =C2=A0 MAX_FFT_SIZE_LOG2: 10

\
=C2=A0 fft_b: =C2=A0 =C2=A0=20

=C2=A0 =C2=A0 block_desc: 'fft.yml'=C2=A0 =C2=A0=20

=C2=A0 =C2=A0 parameters:=C2=A0 =C2=A0 =C2=A0=20

=C2=A0 =C2=A0 =C2=A0 MAX_FFT_SIZE_LOG2: 10\
\
\
Zhouzhiwen

--b1_u68VKtOBVkQImuihTybgnC3MZBSi3dQrpCmIHBqrA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Nikos,<br><br>Thank you for responding!<br><br>I think it=E2=80=99s=
 just with Fosphor since streaming from DUC works fine.<br>How to ensure =
that at least 1024 complex samples is fed into the Fosphor module? I=E2=80=
=99ve set the FFT size to 1024, and it still does not work.<br>Does it ha=
ve something to do with my FFT set up? Since I=E2=80=99ve changed the old=
 =E2=80=98fft_1x64.yml=E2=80=99 to 'fft.yml', is there any additional par=
ameters required?<br>My current FFT config:<br><br>&nbsp; fft_a:</p><p>&n=
bsp; &nbsp; block_desc: 'fft.yml'</p><p>&nbsp; &nbsp; parameters:</p><p>&=
nbsp; &nbsp; &nbsp; MAX_FFT_SIZE_LOG2: 10</p><p><br>&nbsp; fft_b: &nbsp; =
&nbsp; </p><p>&nbsp; &nbsp; block_desc: 'fft.yml'&nbsp; &nbsp; </p><p>&nb=
sp; &nbsp; parameters:&nbsp; &nbsp; &nbsp; </p><p>&nbsp; &nbsp; &nbsp; MA=
X_FFT_SIZE_LOG2: 10<br><br><br>Zhouzhiwen</p>


--b1_u68VKtOBVkQImuihTybgnC3MZBSi3dQrpCmIHBqrA--

--===============1630289263794160135==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1630289263794160135==--
