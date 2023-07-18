Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D5C75826B
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jul 2023 18:50:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 339E8384CD3
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jul 2023 12:50:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689699000; bh=PmNLebAIr7t3cwD5PChqk5cbxaMfO0dqxv4xT7TNRuQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=nRJMaHzM5D7aG1KOCpeL1F7h4xEjmcxyKHAaKNFa6i9XVc29xXI0Yk0SW7y6S/vE/
	 nCUJOiBt9m09DMdCXYKgjF9A5Y98lNwzztmaG940GpkZVIYqRHyjkfilI1+EPr5er8
	 b2oAVEvyDNgHeih3Uj3SmuQWnuK5CgyuT1i59w01xsodkQxv8zFNUVPPn81VzAVxok
	 1q+LfTXuUX9l7LtfuSUXqyc4F8SI40hVrWO4K2yKyL51G8LZjo1p6b6Ogf2rHoYo3B
	 JnDMnamNF+h1lf3OyrOclQ0A2F9G1LgNTqo3tO6w50HpVzvaARgRXvQVROPkJVnBoU
	 b2sE1GDZIfH8g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 96BAA384BC7
	for <usrp-users@lists.ettus.com>; Tue, 18 Jul 2023 12:49:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689698984; bh=wasAIVHSFl+7a33YRpUQRGSbZ0UJKzEP43dpqqgFoZE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=GF5I9opkcpHZ3KmNC3L1C9UuAyiAWVDoaNsXzDhq8ZzAmYB9Qklrf5VtOCl2p4bfr
	 Ek/SE5iBHr2nPpzoCsNMagDAWeNtPnN8edOyUphF6LYhtzvKweDlDISARDpzZM5rB6
	 hr9HTN4crohFlESFHlVus0o4EQnHdmFHqjsk/bglvh9QFj5IKOcPmK7WpwpQMGc9x2
	 +BF3yscsxzden6Gc8wUF9VBGThqntCUKy+wOEYYEHtp7iDVl4i/2EQtBfoZ92mbxyo
	 uVP9zjge9hpw5g4wuLuH14PHimHDvsDeFjWFeMGVmW7Ah7iQJ0RcXDQTuQXzvcoBqb
	 uJDKHVk7EENaw==
Date: Tue, 18 Jul 2023 16:49:44 +0000
To: usrp-users@lists.ettus.com
From: david.fernandes@viveris.fr
Message-ID: <gs0AMF99lya01tqSAAW6bnkSCmMuWG5tG6ViECHHU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: eca156f5-d124-73bd-e47c-a5abed3b5fba@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 3J3PQHYY3E77OOORC4YR2J75XCZMHZGF
X-Message-ID-Hash: 3J3PQHYY3E77OOORC4YR2J75XCZMHZGF
X-MailFrom: david.fernandes@viveris.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: num_recv_frames
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3J3PQHYY3E77OOORC4YR2J75XCZMHZGF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4682716282090050085=="

This is a multi-part message in MIME format.

--===============4682716282090050085==
Content-Type: multipart/alternative;
 boundary="b1_gs0AMF99lya01tqSAAW6bnkSCmMuWG5tG6ViECHHU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_gs0AMF99lya01tqSAAW6bnkSCmMuWG5tG6ViECHHU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thank you very much for your quick response.

I=E2=80=99m still having troubles to understand the results of my test : =
I call recv() once, I sleep during 10 minutes, I call recv once again. Wh=
en I merge the samples received in both '=E2=80=9Crecv=E2=80=9D calls, I =
see no discontinuity in the received signal. As well, I don=E2=80=99t see=
 the RAM of my host being filled up during the =E2=80=9Csleep=E2=80=9D ph=
ase, so the samples don=E2=80=99t seem to be buffered in the host=E2=80=99=
s buffer. So I assume the samples are being buffered in the radio during =
the =E2=80=9Csleep=E2=80=9D phase, but I doubt it has enough capacity to =
buffer  4Msps\*10Minutes =3D 2400 Msamples.

Thanks again for your support.

Regards,

David

--b1_gs0AMF99lya01tqSAAW6bnkSCmMuWG5tG6ViECHHU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p>Thank you very much for your quick response.</p><p>I=E2=
=80=99m still having troubles to understand the results of my test : I ca=
ll recv() once, I sleep during 10 minutes, I call recv once again. When I=
 merge the samples received in both '=E2=80=9Crecv=E2=80=9D calls, I see =
no discontinuity in the received signal. As well, I don=E2=80=99t see the=
 RAM of my host being filled up during the =E2=80=9Csleep=E2=80=9D phase,=
 so the samples don=E2=80=99t seem to be buffered in the host=E2=80=99s b=
uffer. So I assume the samples are being buffered in the radio during the=
 =E2=80=9Csleep=E2=80=9D phase, but I doubt it has enough capacity to buf=
fer  4Msps*10Minutes =3D 2400 Msamples.</p><p>Thanks again for your suppo=
rt.</p><p>Regards,</p><p>David</p>


--b1_gs0AMF99lya01tqSAAW6bnkSCmMuWG5tG6ViECHHU--

--===============4682716282090050085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4682716282090050085==--
