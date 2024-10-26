Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A45869B19B5
	for <lists+usrp-users@lfdr.de>; Sat, 26 Oct 2024 18:17:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F21E5385DD1
	for <lists+usrp-users@lfdr.de>; Sat, 26 Oct 2024 12:17:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729959429; bh=UcUKShH5hilc80EzaWw3fqG1XnJLnc+oH6To6zvg3LQ=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=iFk5mlewlLL/5nqqYO4lm/8JhUA/gMzKWKk9bEzEkvNTYOMM5hGe38bJ2nMYROAMv
	 2I0c5Iac8JD6sMWHO+MTMzfpKCEMSNXwNK+OfHdiJo0/I9gagnanYfuBPjoOLSuB+O
	 RswbBqujdoeBedrjKKHyg6FSubIWgW/QC2Kq+LfePB9PO7tz958GP8KGyVm8g930Tp
	 Fr54ttLqe8PqpoZ8v+Rpmzr8DX4jmbWtWmOEDk62GXzyVF5chAm11ZXzcf/kIop47q
	 5HgxI0updKn4TV9RjB92tVCLZX00WbEwl6TfpuGNPwstnbrzdLhhKaIMtOlArD8/ex
	 Yv36izAAvRDlw==
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	by mm2.emwd.com (Postfix) with ESMTPS id AF959385D90
	for <usrp-users@lists.ettus.com>; Sat, 26 Oct 2024 12:16:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kgpPUaE9";
	dkim-atps=neutral
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2fb584a8f81so28231781fa.3
        for <usrp-users@lists.ettus.com>; Sat, 26 Oct 2024 09:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729959370; x=1730564170; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fWx/kueuB4hD7nTyrH8Qb1GYHwsIgwFVId1Pfw6gyhU=;
        b=kgpPUaE9wwkQi8tmDF9xD1ptd8C5ys4kHjyeE6y9i4EfJBpTG5RK4bVjr7nXlF4i8G
         DpQbjWOAwFnkfMFOWkhuzsbq6uLchQa+bC4klBT67qjXmyctEFMAt8ipHPvPIfoo+RRk
         mEd6aZbQhUBCA7LpeB0ixdRP86+UNd2W4PiM1vIB5NGpRCWyQcZFaGECqLmmGptq2H7c
         M3qv9b3y5ZVSmSwVf8blZvdZ/EKkbrkfGLsujDCHQXrf77oDDVrsb8BDO0whhIoaVRtZ
         NG6ajurhAu+NxQWTNUR+Rfnc8yHoWC5sxKyxvv6rg651vsKiH2CFOAv0IRFD4/HLWg9J
         qpYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729959370; x=1730564170;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fWx/kueuB4hD7nTyrH8Qb1GYHwsIgwFVId1Pfw6gyhU=;
        b=uVU5Ruy/RWX7zl27Azx0T6ecpiwfg8rzCdOHnxI0RaOgpuwbnGlLREiYR5Wrjiyy0F
         0ggwV1Por3ISqWdy6ZID3TBS0nyZiafQ7KuKSUDp21R81EYwz6wXBP9F7ZTMt9nC4QWP
         Y4nC3I2xIdH6bEo4vUf7e5vdnAdG4li7h23LOERRFEUF9efZznjZXMvs+yH4Y6XHDMTZ
         VXJ0OXbgpk0XqL0o+XuNxTct05hk8ceQy/6St1fXPXcEDXsqIB5arAE2Hsb2vgHxlC6D
         RCA/+vq4UPPQtk1h910Ijt75w0tGnloO5HW9a94EWackph35IzSGXmYjPHdE+DV5bHFY
         N2Qw==
X-Gm-Message-State: AOJu0YxumO7EPbinme1Hx2kbK9ahJfLs3Aj3DRmwfqwWXgTAiTaX9MMZ
	rXn6EN1ocw0QbyUvX18cmEPn8wI6lHa9rlBDhDverhySEGg1l19OgF/ItUPSfWsDodlJR3UITbd
	zsXOQHtpedvacg0Ku1ysa0mV7Gpw+2Vt01vOgxA==
X-Google-Smtp-Source: AGHT+IHXguzxx0wVUD4mMC2qPDKa9oFWBect9/8ex5BFIWWM5Kx1ym+MPL+Q2mvH6o/UENzYdoPO90DXL6EPvwSCKz4=
X-Received: by 2002:a2e:a543:0:b0:2fa:cc50:41b with SMTP id
 38308e7fff4ca-2fcbdf5fa9amr11243881fa.5.1729959369964; Sat, 26 Oct 2024
 09:16:09 -0700 (PDT)
MIME-Version: 1.0
From: Mehran Memarnejad <memarnejadm74@gmail.com>
Date: Sat, 26 Oct 2024 19:45:53 +0330
Message-ID: <CAER1B8KWDxq2Yzq2Cr_RvT_woWMO7DL4q0Oi9yRO-7FJ2=pHmw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 2IAUDPNHKVYXJYZQN26KWBXBCWB4F5NW
X-Message-ID-Hash: 2IAUDPNHKVYXJYZQN26KWBXBCWB4F5NW
X-MailFrom: memarnejadm74@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD with DPDK minimum requirement
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2IAUDPNHKVYXJYZQN26KWBXBCWB4F5NW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6432078075884500693=="

--===============6432078075884500693==
Content-Type: multipart/alternative; boundary="000000000000b906010625638d0b"

--000000000000b906010625638d0b
Content-Type: text/plain; charset="UTF-8"

Hi,
Following the instructions on this link
<https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD>, I want to get the
UHD work with DPDK so that I can transfer samples from E320 to Host.

Question 1: The PC has an Intel Core i7 CPU and I don't know whether it can
handle a 10G NIC with DPDK or not? Does DPDK support Intel Core i Series?

Question 2: I have an Intel Core i7 CPU with Mellanox Connect-X 3 NIC. The
OS is Ubuntu 18.04 and the UHD version is 4.4.0. Is this setup Ok for 10G
NIC?

Thanks in advance for your help

--000000000000b906010625638d0b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>Following the instructions on this <a h=
ref=3D"https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD">link</a>, I =
want to get the UHD work with DPDK so that I can transfer samples from E320=
 to Host.<br></div><div><br></div><div>Question 1: The PC has an Intel Core=
 i7 CPU and I don&#39;t know whether it can handle a 10G NIC with DPDK or n=
ot? Does DPDK support Intel Core i Series?</div><div><br></div><div>Questio=
n 2: I have an Intel Core i7 CPU with <span class=3D"gmail-test-id__field-v=
alue gmail-slds-form-element__static gmail-slds-grow gmail-is-read-only">Me=
llanox Connect-X 3 NIC. The OS is Ubuntu 18.04 and the UHD version is 4.4.0=
. Is this setup Ok for 10G NIC?<br></span></div><div><span class=3D"gmail-t=
est-id__field-value gmail-slds-form-element__static gmail-slds-grow gmail-i=
s-read-only"><br></span></div><div><span class=3D"gmail-test-id__field-valu=
e gmail-slds-form-element__static gmail-slds-grow gmail-is-read-only">Thank=
s in advance for your help<br></span></div></div>

--000000000000b906010625638d0b--

--===============6432078075884500693==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6432078075884500693==--
