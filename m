Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DD594B21C
	for <lists+usrp-users@lfdr.de>; Wed,  7 Aug 2024 23:25:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8CC253854BD
	for <lists+usrp-users@lfdr.de>; Wed,  7 Aug 2024 17:25:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723065919; bh=tlX8Tply6HQpNsTFxogp3H6VcxFTzpvXQrdXbNuSXzs=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ALgPzZ+uqDaihYTFe+xfoqTAl0XEJbDRANF24hVQUgVByc9aHtvNdguVcrWrEAJy5
	 SGKXZy8vHxrVyRgUP22vRBwEhWRNFql4kQTxtRGc0reR8s68tOVpBjxVEGjBVH5AUC
	 NGBM/qzKW+OE5Lc6Pvsv2P3UqPYglNlYNyBTSLJSnpJPgtZqj/KOUQCFM8Pe/VJukD
	 evOz3xhVfx/Ez4Vrd8Ul4K35QNkmDUqpemKYmWddQNc2ShC15bDb1I2IqB5mHpjiui
	 6R3lKAwS8jtOzJZkuew2O+uprzpGBzDLF9GQZfObSGGXDU+3h5QfYmd7adpErqCtpv
	 xQr/mmMRg5leA==
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 932C3383748
	for <usrp-users@lists.ettus.com>; Wed,  7 Aug 2024 17:25:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dINCJJFv";
	dkim-atps=neutral
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-26808290f43so806447fac.0
        for <usrp-users@lists.ettus.com>; Wed, 07 Aug 2024 14:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723065912; x=1723670712; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BRxOEeK9tHg3mR4Ks4lNweFTIvx3EeheJ183s2HPfJI=;
        b=dINCJJFvoDqof8dbovyrGq6L761O6H/9VYVhPgeqq9F9HcMi4njI4J1KG5Cn+h71UI
         eXN4sRcHxYpSGjdLTkuDSlEU7PZrh2eux3FDh2uFAzleRK6TVzoq61rOQdJz+sotuudP
         Cj1xtYzGU7vhKjl82g+hHDCRTHvO+w0DylD2JMNWg/jZgl6qUmegISnDUxnZ+N4MzFBD
         VLCgoK9yFWJDPjSb9mMq3LLdtiXFRq3Ku7GSrRIZ2pxSi1tCTYwxm9bj4awYClpdQ94Y
         u4I/wUlXxR5lSHMXIHarWjyJgPuM58ECzyKQ27X4l7MtU+gwPOxZYjxJ8hHYf06hWqUt
         UFiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723065912; x=1723670712;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BRxOEeK9tHg3mR4Ks4lNweFTIvx3EeheJ183s2HPfJI=;
        b=p5rNqlbzqNj4Is/cylqznYJaZa03dHxKCxHS9AUmEDOtExdO9foWvvXxDdqbR5O54R
         OkDqHNRhn+tuJ7lXf3x64vXnQKTPV0e6BsFg6eNVk2n1GKY4Xz5xy7tKjwrNbuYjCprO
         3WiRrwE4KunneSubPNfMKyL6dqFgdE7z6ZXBHak20i2fBxQ14EorZWx72a4LFCtpCLZR
         7psh77TxVI6sJ02VwoGJjsOqVteV6jVq074pqbxhuwnYSmrPRYFXnBGOETBpe0tQVpZO
         q6huev7I2T4+uc1dvM+pOIzphz3qNDAlBx9BNTqVLlNkydBvxFdJQxs+RFMcpax03ev5
         9Xgw==
X-Gm-Message-State: AOJu0Ywwx9bXqoGnqf9+6olZRVatmeqnZq2x+xXe3HFpBmSQEbRfb+jm
	0WaKmah1YVDsjl9ZZl32HlzNJ+3zhQZrjvjOzc+6dOOxIyG8aeRTS1KyFnUrSp+nLpQv17tb7+N
	IBYkTfEpVuT/cJHztZMIwBkM+8xSM9w==
X-Google-Smtp-Source: AGHT+IEU/HEvOWaH9rY8CGBME+QNq8AavY+z7gpFcMKj0dcBqHr6glNUTrcAo7E6igEjV1r9qPLFL518lHoH8MYY3fw=
X-Received: by 2002:a05:6871:b10:b0:267:af82:431b with SMTP id
 586e51a60fabf-269115f7cb1mr1427854fac.21.1723065912505; Wed, 07 Aug 2024
 14:25:12 -0700 (PDT)
MIME-Version: 1.0
From: Saulo Queiroz <ssaulojorge@gmail.com>
Date: Wed, 7 Aug 2024 22:25:01 +0100
Message-ID: <CABeHafhVriLL+5=japNP41bjj9T7p4n7H8zRCTB=HzhjrtUeHg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: THMTHM5PDGKHAZZ32IG3443CQENKCS3W
X-Message-ID-Hash: THMTHM5PDGKHAZZ32IG3443CQENKCS3W
X-MailFrom: ssaulojorge@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Version of functional RFNoC OFDM receiver
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/THMTHM5PDGKHAZZ32IG3443CQENKCS3W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2344819740530106790=="

--===============2344819740530106790==
Content-Type: multipart/alternative; boundary="000000000000a3c248061f1e8bb8"

--000000000000a3c248061f1e8bb8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Could anyone please indicate a version of UHD, RFNoC, and Xilinx, based on
which a X310 fpga image containing all blocks of an OFDM receiver (as in
[1]) can be successfully generated?

Thank you in advance,

Best regards.

[1] Jonathon Pendlum, Martin Braun. Building an OFDM Received with RFNoC.
GNU R=C3=A1dio Conf. 2015.

--000000000000a3c248061f1e8bb8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto"><br></div><div dir=3D"auto">Could=
 anyone please indicate a version of UHD, RFNoC, and Xilinx, based on which=
 a X310 fpga image containing all blocks of an OFDM receiver (as in [1]) ca=
n be successfully generated?</div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">Thank you in advance,</div><div dir=3D"auto"><br></div><div dir=3D"aut=
o">Best regards.</div><div dir=3D"auto"><br></div><div dir=3D"auto">[1] Jon=
athon Pendlum, Martin Braun. Building an OFDM Received with RFNoC. GNU R=C3=
=A1dio Conf. 2015.</div></div>

--000000000000a3c248061f1e8bb8--

--===============2344819740530106790==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2344819740530106790==--
