Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7690EAAC9BA
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 17:40:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3192838652F
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 11:40:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746546050; bh=2vPzw9PgSNBlte0VL25VKNev+/Mo5IpmIUbziFy9jks=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Hh4U6oX2U8gJ3SfcWNr6pduw2GT9ueRwowQbG2E5IloEiQqKLQi9pB+HMGxW+Hbcm
	 80I3h/BfJ35aB2R+P5sUNcTm/+By1puw0R3bDuBAVMyKb0nbtRgDD9JGMnEsVT618n
	 lSSLI0cbcQhzkwJu5NTRX8e8uwAdQBInwaeNyP9NsQvv755q53F4obIZA2rXsHFLfJ
	 k3piouNJcSwhAmZDv72vm3r008SiKVKEA/8ugHUJmZdZgxeETin9xpP0Ye51/w3OmD
	 C8g7Kamg9uL9zEln0BhzciDEiFPXh1WJQ9Bz7frutjwCuMTDE/6bZTS5FzaZ78EhCN
	 qTcFQri+AEVuA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A357386219
	for <usrp-users@lists.ettus.com>; Tue,  6 May 2025 11:40:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746546041; bh=EvvYpjPF8yuF1dStq5uaEijjpFN6Cs8GSaKV3qMCSt4=;
	h=Date:To:From:Subject:From;
	b=qVSmHu6OUh2LOvk6bZt1H2lFhn8QoYpxKNol07me7R+y9D0Ccaj7IrZy1NWmCEZn0
	 RZ0ySP6TgHLTO+E7Ud21wWvKikWnCPqnekrT4mhXObrh3nce12UM8Tn9PReGdDDee0
	 Rpa7fiuwx4w2hufzj3D9/gmlxUsqQBQEO8M2Yp4IFiOaETPOl7JKiDbFJdZ+PdKenE
	 Cx0Kl9MoTMZltYD7gxLA8S0MiWqMkd2b5g+4TpoyZByQLO90VfdxK4LbAP53OvSiBo
	 3QtcEF/rNXNLnp6vlc72GoVYhRQEqA7TTp8uOdehwXhWlFm30aqBDW7Kc1MqTnArUT
	 9+HEijYKbEDxQ==
Date: Tue, 6 May 2025 15:40:41 +0000
To: usrp-users@lists.ettus.com
From: whw@appliedradar.com
Message-ID: <S0aRC4mmc6QOy3Rbd28sbEqKRBOJGzPiyl6oVIqO5w@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: STZA5DIDNKCOXHWSPNOSLX2F3UMOYIV5
X-Message-ID-Hash: STZA5DIDNKCOXHWSPNOSLX2F3UMOYIV5
X-MailFrom: whw@appliedradar.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B205mini Discovery Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/STZA5DIDNKCOXHWSPNOSLX2F3UMOYIV5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5159535932094093649=="

This is a multi-part message in MIME format.

--===============5159535932094093649==
Content-Type: multipart/alternative;
 boundary="b1_S0aRC4mmc6QOy3Rbd28sbEqKRBOJGzPiyl6oVIqO5w"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_S0aRC4mmc6QOy3Rbd28sbEqKRBOJGzPiyl6oVIqO5w
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

We have a couple of B205mini boards left over from a previous job, trying=
 to re-purpose. Both acting the same:

1) Plug into USB and get amber power light.=20

2) uhd_find_devices reports =E2=80=9CNo Devices Found=E2=80=9D.

3) =E2=80=9Csudo lsusb=E2=80=9D does not report anything looking like the=
 B205mini.

4) /usr/lib/uhd/utils/b2xx_fx3_utils reports =E2=80=9Ccannot open device=E2=
=80=9D

Is there some initial firmware on the device that is possibly corrupted? =
Do I need to program the device via JTAG? Is there a special programming =
cable for this purpose?

--b1_S0aRC4mmc6QOy3Rbd28sbEqKRBOJGzPiyl6oVIqO5w
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>We have a couple of B205mini boards left over from a previous job, try=
ing to re-purpose. Both acting the same:</p><p>1) Plug into USB and get a=
mber power light. </p><p>2) uhd_find_devices reports =E2=80=9CNo Devices =
Found=E2=80=9D.</p><p>3) =E2=80=9Csudo lsusb=E2=80=9D does not report any=
thing looking like the B205mini.</p><p>4) /usr/lib/uhd/utils/b2xx_fx3_uti=
ls reports =E2=80=9Ccannot open device=E2=80=9D</p><p>Is there some initi=
al firmware on the device that is possibly corrupted? Do I need to progra=
m the device via JTAG? Is there a special programming cable for this purp=
ose?</p>


--b1_S0aRC4mmc6QOy3Rbd28sbEqKRBOJGzPiyl6oVIqO5w--

--===============5159535932094093649==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5159535932094093649==--
