Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3D79BCA62
	for <lists+usrp-users@lfdr.de>; Tue,  5 Nov 2024 11:23:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EC5A8385A24
	for <lists+usrp-users@lfdr.de>; Tue,  5 Nov 2024 05:23:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730802222; bh=9PZsBi1RaeFKM6dFUFA7RXTWsBf+JdTS2+PUZu8bL/c=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=wiyynTdsIsfPc5ACMEiXWoB0cT07c/sQlCXp8/r0oVQ8yvjgoUVPinAos/llgzwq2
	 /IPQO3Q8lQqrjnnqSYyNtRJekg91ruQZWYC82nQC3qjBAsCHFgUFpzawfFDmFKturC
	 zUCezT9K7mkV3IZkntvblNkISXSj/TFytMrQ2cKKprJNfTPD+2tqj96cS5wpfkc8pG
	 6HQwRgFbUP8iEG+uI+cpbdHJSk85BPBGvM+GzLr7RTsEmNfRlNYsrZb7Dn2tyJWZpg
	 T4SkNESWrFpFQs2OHcPXn/frmrNN6jEaJwXAKwQP8nzjoCwlPeGd8t3G+YeQePQ1bA
	 flGyuCqSEZSNQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 933A13859A1
	for <usrp-users@lists.ettus.com>; Tue,  5 Nov 2024 05:23:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730802197; bh=fjVYKiemSC76hi/9XvhW/pU809zjfSFJ1HOOMvjgJP4=;
	h=Date:To:From:Subject:From;
	b=i1pp4Q+dabLUXevGV5NAJWFEJT3faX3gNv4lhiyRh3vZIQ5jkQQV2NyLhsj1/QieD
	 ThhMFlEX1j4ndFY8jHsyEDcEkJWCddvBMm46K8uQba9/GNNhHisVFip6R11moHU8U2
	 iUTxseX67sq3WMsaA99rp51vP69p7fAlYU59LP/PAdRbLXGBeHmPANMwCNBJJogeNk
	 dihfh+l6PMxCxfP32kyN9pByqfNDzzGk28n+iDYgxqthW3zNrNNZDUcI4hN3XNKCr6
	 Yu7PyjLGjqK01mHfIqybm3VmtDUEuk/u4qu0SNlF1Baa3tEWSBwuVEDym/fK1lUrnQ
	 E7AVZj0jS5G4Q==
Date: Tue, 5 Nov 2024 10:23:17 +0000
To: usrp-users@lists.ettus.com
Message-ID: <e17p6ROK7fe6rWTzJF81Y8fT8S1fPy5WNQIKoXaoUo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: O4PNC2WKQAQKU3KXTSW2BOX32C5UQKOI
X-Message-ID-Hash: O4PNC2WKQAQKU3KXTSW2BOX32C5UQKOI
X-MailFrom: rubenthill@ymail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP X410 with fft_cp FPGA image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O4PNC2WKQAQKU3KXTSW2BOX32C5UQKOI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: rubenthill--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: rubenthill@ymail.com
Content-Type: multipart/mixed; boundary="===============2588464501789835866=="

This is a multi-part message in MIME format.

--===============2588464501789835866==
Content-Type: multipart/alternative;
 boundary="b1_e17p6ROK7fe6rWTzJF81Y8fT8S1fPy5WNQIKoXaoUo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_e17p6ROK7fe6rWTzJF81Y8fT8S1fPy5WNQIKoXaoUo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello together,

hi build UHD version 4.6 on the fft_cp_preview2 branch, I don=E2=80=99t k=
now if this is (already) supported. And With the YAML files there I build=
 the FPGA Image (x410_x4_200_fft_ddc_duc_rfnoc_image_core.yml) just at it=
 was an flashed it to the USRP. All of this just worked fine. I Also can =
Use the fft blocks with the cyclic prefix.=20

Just two questions came up to me while tinkering with the ofdm_loopback.p=
y example script. As far as I understand using the -l flag I avoid using =
the analog frontend and with the -d flag set to for instance 50 I can set=
 a digital delay. All this also works=E2=80=A6 Now the question if I use =
the analog frontend (not setting these flags) and attaching cables the de=
lay I measure is way longer. I=E2=80=99ve seen there is a delay of 188 sa=
mples set between the Tx and the Rx in the example script, is this due to=
 the FPGA setup? Is there a way to make the Rx and Tx in time-sync? I=E2=80=
=99ve seen a timed command is used there and the delays between Tx and Rx=
 are constant, but constantly to big. I can correct for this time error, =
is the the following correction right 188 / tick_rate? Or is there more t=
o compensate for?\
I tried to set the same time_offset in the transmit_and_receive function =
but still seen the same delay, so I guess that is a delay which can=E2=80=
=99t be removed?=20

The other thing I have noticed is that if I set channels just to 0, away =
from the default which is 0,1 I don=E2=80=99t receive any samples. Seems =
like the flow graph hangs after sending, this happens regardless of using=
 the loopback (-l) or not.. \
\
Other than that I realy like this feature in UHD and am looking forward t=
o the official release, great work keep it up!

--b1_e17p6ROK7fe6rWTzJF81Y8fT8S1fPy5WNQIKoXaoUo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello together,</p><p>hi build UHD version 4.6 on the fft_cp_preview2 br=
anch, I don=E2=80=99t know if this is (already) supported. And With the YAM=
L files there I build the FPGA Image (x410_x4_200_fft_ddc_duc_rfnoc_image_c=
ore.yml) just at it was an flashed it to the USRP. All of this just worked =
fine. I Also can Use the fft blocks with the cyclic prefix. </p><p>Just two=
 questions came up to me while tinkering with the ofdm_loopback.py example =
script. As far as I understand using the -l flag I avoid using the analog f=
rontend and with the -d flag set to for instance 50 I can set a digital del=
ay. All this also works=E2=80=A6 Now the question if I use the analog front=
end (not setting these flags) and attaching cables the delay I measure is w=
ay longer. I=E2=80=99ve seen there is a delay of 188 samples set between th=
e Tx and the Rx in the example script, is this due to the FPGA setup? Is th=
ere a way to make the Rx and Tx in time-sync? I=E2=80=99ve seen a timed com=
mand is used there and the delays between Tx and Rx are constant, but const=
antly to big. I can correct for this time error, is the the following corre=
ction right 188 / tick_rate? Or is there more to compensate for?<br>I tried=
 to set the same time_offset in the transmit_and_receive function but still=
 seen the same delay, so I guess that is a delay which can=E2=80=99t be rem=
oved? </p><p>The other thing I have noticed is that if I set channels just =
to 0, away from the default which is 0,1 I don=E2=80=99t receive any sample=
s. Seems like the flow graph hangs after sending, this happens regardless o=
f using the loopback (-l) or not.. <br><br>Other than that I realy like thi=
s feature in UHD and am looking forward to the official release, great work=
 keep it up!</p>

--b1_e17p6ROK7fe6rWTzJF81Y8fT8S1fPy5WNQIKoXaoUo--

--===============2588464501789835866==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2588464501789835866==--
