Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7509F51436F
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 09:51:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5B3BF38483B
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 03:51:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651218691; bh=sAaIh7vg5Qkqd5SnPYDKQKCMOv1EghP8/lTr+FfMHzI=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=nt5EfUdIW+LnQyIHB5nH95bQrwGWECH2RWBGGf2IKjr6qnA+UYtrMtPQaf9PK7Rlf
	 ZwwXS3G2M+dqvoNKALceQY0OqQRgDW7e3wb96xYOeFAaMZ8b4WFegkNhMgYl8y7PkP
	 L4LcZMmSxS8iQTpIpkaZBG/TPoVFukNlAKHRuebOGftBpAbYi9dimBI8aERPf73fsA
	 z+y4Qm0xgrcUKaJUe6ceb3ASyoSOho1W98nDYPhogKyD2wmRGMLVo+iqxc0Fa0st+4
	 yCmWBi7Qef9cDYxx8VYk6ywTrOq6VFQNza99fur/Dz8l+Q9X1mttmVcMznGcIn9q8L
	 t6HH8pJVw3T3Q==
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 9485F384401
	for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 03:50:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DUcYRSct";
	dkim-atps=neutral
Received: by mail-wm1-f50.google.com with SMTP id r11-20020a05600c35cb00b0039409c1111bso3318218wmq.3
        for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 00:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=6CgrOb7vhg/nRj7JSu68dW6TBu9lMVhEe0V2tROuz7U=;
        b=DUcYRSctAxq44l3U9px+UPqesxSEeBaNFEyrk1ZQGSEM0tR+IqXzdcKguN3ky/ewRb
         k4FBdGr9r0Y+AyDxAimKlZ3YgtLWnwjvMs1mQsfefqVmM3ValDhi22w1XUaOuCPG1apM
         S4JRq52SFN1M4LOwL3l7ikcmFyNP+KiNBE7KMRAwh+lV8ihEXcqsITeVBP4lS8MkcsKr
         2z+IY2TvdUv0lbfLlOFh1dvyUWSRDEkGH9KjSRVov9JtpegE1+F9n2hj7abTfdfoEHDp
         jevGbrprmnbEwnUhumrBpPdMziDtV2HoZwzytVjfkInBBi9kyuRBSEwsjfH3FRi8E8RT
         e3wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6CgrOb7vhg/nRj7JSu68dW6TBu9lMVhEe0V2tROuz7U=;
        b=se1KjTWiOGk3n9B1Za+yZ8z1QTI08JAenbnVso9k+nX8BUwnehRGgbfVcGlO8b50xD
         Ul+mGh/wJozSO/Z49hirg72wUI1c13qKzq5tKzvHb+tCvf083POHyoRgQSk4/+Q0l2kR
         9WdqU0B2WuwkGagy/uSj9SkFx8TZFrf8vorxr6U4BCBLb+bWTeAY5xHAogtqUm5SllcU
         KKrJS5Nw0Jm6ELfJRDhSxoqW6GzIaN1N0wTEUvoC0OL9eMAYTgPVUv86fYhhUhXfXF7B
         rTfMfw5H+SO7YIb5hu70MLE5+7nKYKWkkMQxD157wWa6WX0/FV3jFfQyiAEyWddlgmha
         mfgg==
X-Gm-Message-State: AOAM533UQL6L4myfmlfArxECWos7lbOYnfC+O7yIfMU9ZNQJeLnOO3LK
	KWBFHA7c6Kbnu4oRTHo+1UW78jfMlT/ELKIGOz72cwY4
X-Google-Smtp-Source: ABdhPJyC0cFMnXqQjLfybPQpn3UAcXSNMYP7IhZ81OQaEDirZ0MHNFV8piZGKist414vKKaLe7GE2DWfb5F4bPF/6bI=
X-Received: by 2002:a05:600c:240a:b0:394:18b:d722 with SMTP id
 10-20020a05600c240a00b00394018bd722mr2009222wmp.177.1651218621534; Fri, 29
 Apr 2022 00:50:21 -0700 (PDT)
MIME-Version: 1.0
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 29 Apr 2022 10:50:10 +0300
Message-ID: <CAAxXO2GOytYDEsqbSZXCaM-OXRpUco7SDxeKBkq7e5Z3RHOYPA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: RVZGUZ5KHINPQ3S2K7H4FZODFTPRBFUO
X-Message-ID-Hash: RVZGUZ5KHINPQ3S2K7H4FZODFTPRBFUO
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Transport properties
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RVZGUZ5KHINPQ3S2K7H4FZODFTPRBFUO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

uhd_usrp_probe reports that I should raise my send_frame_size &
recv_frame_size arguments.
USRP Manual, transport notes, report to change them in device or
stream arguments.
Anyone knows how to change these settings in the NIC?
I have a 10 Gb MLNX NIC and just upgraded my Ubuntu from 14.04 to
20.04. I am pretty sure I had some of these optimizations in the NIC
using ethtool? Anyone remembers what these optimizations were?

TIA
Nikos
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
