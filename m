Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B38745E7E
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 16:26:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EFCC5383E7C
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 10:26:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688394408; bh=ZcbjMn39ybaWAqyqtNFJCoyG1cgKmoxUwPDil16w+Ww=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=l61KXFvVXvOaVT24SfO7tbUyFHJUyRGUyGUBBKTTrvR0UirxKUF7GwCOSRHWM6sAk
	 q3uMhthCiAQz2rwKaazakihKVrzxKj5jL8WAowC4W41/ighpfxTvh81ktltS/t3Hv9
	 RB7Jh9ko5S2dCpziVN4JpT4/T0bzC//RIA4wzG4+00ge5+uyfpw0HaH7q8BMkL9n3E
	 7gJ1VVv25S1hj+T09yu2+HH3Ym3pgFKUC6kh0S8DY+UCFWQjudP6uqzrOUzKWVMvKc
	 XzIxRvO+aqbKet8A2+dQNtOAjvB1xgxmQmqeHtSEGdgcuzJml3k5K5p6NUbJ56GKe6
	 kMsi/eBbIn5cw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A837E380E39
	for <usrp-users@lists.ettus.com>; Mon,  3 Jul 2023 10:26:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688394385; bh=OqM1PQwX4EM23W6aPjQzuK/rmZNGQHeBmt0mW+2RcAc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Ud37AAn+lLGECN+nelNLcKZ73f3sO/fRMn98H7vxZXu+DcY1Ma182c6s7fL7uBEen
	 /9lRY8xXICwxhgCzMaSzP8GLNv0yGrcPzsVJ86Svl0KnIs7qUP9V8g8fVLUVg0+18Y
	 iwwCp7gDvERCE6BzvNERxkVGQ/fMvCldssBpkjZqBEcgu1oLDyP+UOBzfNbASoiMGB
	 MusMq9SSaphBQ5lLlBpXdkYS976gFhAhRccmSsPgE9qNzHwiUB2hNIy+/xbVAOrFOB
	 HrxStrCDhmoUUa28+tzC/Swf4iC945C9hgxBusAUMODwOF1Cl+mMQhWHCcMxMXktA0
	 SoQ9qPdGSzq4A==
Date: Mon, 3 Jul 2023 14:26:25 +0000
To: usrp-users@lists.ettus.com
From: jnunez@cud.uvigo.es
Message-ID: <kFf4qJoUX2uUXYBbT85GAuuJlcy84bXx4n3aHvBR95w@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 6847d6eb-66f3-565e-75a6-5f7c8b46f443@gmail.com
MIME-Version: 1.0
Message-ID-Hash: YZBSSXCNL2C4AMYXTFT3DFSWHG6BVQ5A
X-Message-ID-Hash: YZBSSXCNL2C4AMYXTFT3DFSWHG6BVQ5A
X-MailFrom: jnunez@cud.uvigo.es
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Understanding time differences in rx_time
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YZBSSXCNL2C4AMYXTFT3DFSWHG6BVQ5A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7478271010104870708=="

This is a multi-part message in MIME format.

--===============7478271010104870708==
Content-Type: multipart/alternative;
 boundary="b1_kFf4qJoUX2uUXYBbT85GAuuJlcy84bXx4n3aHvBR95w"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_kFf4qJoUX2uUXYBbT85GAuuJlcy84bXx4n3aHvBR95w
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks, Marcus.=20

I don=E2=80=99t want the signals to be synchronized as I can align them l=
ater by looking at the delay information from the Tag Debug block. I want=
 only to know what the =E2=80=9C4 seconds=E2=80=9D means in the =E2=80=9C=
Key: rx_time  Value: {4 0.0964052}=E2=80=9D

Regards,

Jose

--b1_kFf4qJoUX2uUXYBbT85GAuuJlcy84bXx4n3aHvBR95w
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thanks, Marcus. </p><p>I don=E2=80=99t want the signals to be synchron=
ized as I can align them later by looking at the delay information from t=
he Tag Debug block. I want only to know what the =E2=80=9C4 seconds=E2=80=
=9D means in the =E2=80=9CKey: rx_time  Value: {4 0.0964052}=E2=80=9D</p>=
<p>Regards,</p><p>Jose</p>


--b1_kFf4qJoUX2uUXYBbT85GAuuJlcy84bXx4n3aHvBR95w--

--===============7478271010104870708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7478271010104870708==--
