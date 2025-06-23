Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBEDAE37E3
	for <lists+usrp-users@lfdr.de>; Mon, 23 Jun 2025 10:09:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 476A53850F6
	for <lists+usrp-users@lfdr.de>; Mon, 23 Jun 2025 04:09:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750666182; bh=ZaET1nWBgVxaYbjcAmhBlh7FQi/yKlC8xlW1i3/Ui6o=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VKa3RxyqyAAdAyWqOrKFpORjGyKLGOv+2T8UmZqsoMsFBbAdfwqTt3EP++vOGLUqZ
	 /JYq1U/gGwZoV89SnRDcpFb32ySRMOAJlHTGZNrpExwYyGbBqFeFuNHAh6fIJ9hqzj
	 FeZ1Ebv7+j3ukBqj/pYcCSNovx5/gkTkBcwUz3Iit1kVFgVv+8xTBskU/b8OSHAsuD
	 zM3tI4BlEQu8wulVDil4dfxHE2t07B1aAEloviU3cNFwRpNyaPAw78dzRq07fhA8h3
	 pyq3klC6CwvaF/JcxK0ctvUIqll0NHM/aRyrF9RUJypN0LgrXTYWogRtC8NrldrNku
	 74+6PSzBEKR+Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B5E4F3809A5
	for <usrp-users@lists.ettus.com>; Mon, 23 Jun 2025 04:08:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750666112; bh=YtOEiDkVRPXTl6jN0negjLcP2qtG4Zj1yCL48bXVkas=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=0JJo8fBop0NXWlkRQfG3BpSxEvpUBT9wEWTMsPdvMfhMxEDSuq5hRLr4UiyBcwDth
	 ukGC+VH4gE0+6Bzy61jm89taGUnO+vSkL4+kVwGqwhE6lIKum/+fNnIzdQ+fxoo18G
	 AXJyVZtje2Me6R51QsNYTvaSVmIrPz/fCCwMyr5Z1BtbmLbCXMlPGPbUhQQ6YNxl+t
	 vuKMPLqeOFucNDRbwbonqq2Pw6zDKtTBQ/rt260Dd+wnNEjo4h0bJPQCQoOgSETnLU
	 yk4CGHqh4d74OMqVaGIjztJhbOIAa1JYh5rrcOA9ZdCgkHdrIzyNKn1ectC/wB7gl5
	 c23avUYIthOvA==
Date: Mon, 23 Jun 2025 08:08:32 +0000
To: usrp-users@lists.ettus.com
From: zhiwen_zhou@seu.edu.cn
Message-ID: <NZ7YP408TNM1IFfA2sez8blyq4YXkFD8AMbwS0Yt6Q@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAAxXO2FM86H6Apa6E7WzQqrROx2+uhc_V2DSiM1wA-Fbvp2T_Q@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: C5ECRFYOR5ZVZRX5ANIXERX5YRGQTCK3
X-Message-ID-Hash: C5ECRFYOR5ZVZRX5ANIXERX5YRGQTCK3
X-MailFrom: zhiwen_zhou@seu.edu.cn
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Fosphor: rfnoc rx streamer :warning: Received fractional vector! Expect signal fagmentation.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C5ECRFYOR5ZVZRX5ANIXERX5YRGQTCK3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4102311114985310258=="

This is a multi-part message in MIME format.

--===============4102311114985310258==
Content-Type: multipart/alternative;
 boundary="b1_NZ7YP408TNM1IFfA2sez8blyq4YXkFD8AMbwS0Yt6Q"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_NZ7YP408TNM1IFfA2sez8blyq4YXkFD8AMbwS0Yt6Q
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

--b1_NZ7YP408TNM1IFfA2sez8blyq4YXkFD8AMbwS0Yt6Q
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


--b1_NZ7YP408TNM1IFfA2sez8blyq4YXkFD8AMbwS0Yt6Q--

--===============4102311114985310258==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4102311114985310258==--
