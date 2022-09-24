Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2835E8AB1
	for <lists+usrp-users@lfdr.de>; Sat, 24 Sep 2022 11:22:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 475F6383DD0
	for <lists+usrp-users@lfdr.de>; Sat, 24 Sep 2022 05:22:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1664011362; bh=hwHGQXZTwMIgVH58JXLRLasnnmyORmEQMFhjup7CgKA=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=gGphlrTAr9aR4A555uzdNuBI5/QWyp7J4HOkNdv9+Bb0V1kBkMkzTy26ZT2huuKqy
	 n4Td+JNh4TSnG1WDHe1uT9UoAQfPc4nz0eCeb/XRGkVlyItLzyUgu9qsdvo2RWnloQ
	 QgEzITcN7FBLIQNgc23AkxuaFVZ4Y73caYrx2PtygL/QtfR2FMgv5HVqj7MJS+Dr6J
	 h17ZpaF0T5g35PvTlqYGGjv42TFx8IJ8/fXVJbliOSgXsJz0jOwODcuo7rcsNdMgT1
	 A5pAouhpIFpIGvsTPSX1hp+cKMdK0L6UuGRcg8jgTzoERaQrvIwGRYbLTY1VYBAK94
	 njixvx0NrIzug==
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 5065A383BA6
	for <usrp-users@lists.ettus.com>; Sat, 24 Sep 2022 05:21:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JYIVVFdM";
	dkim-atps=neutral
Received: by mail-pf1-f171.google.com with SMTP id v186so2208020pfv.11
        for <usrp-users@lists.ettus.com>; Sat, 24 Sep 2022 02:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=zJTozeMuOpv8h8JIaNVZ0SZQBrNwKug1/1rWa41g9/4=;
        b=JYIVVFdMUEfQu3iffg3tuRAVyb6BtLZYw4W5RIGVEImPn/L4sKggzlGU8vhuN84CZE
         4HqSMLTqdm2PkXEgYXRWLseSJfBuG+q/oWzYw4OsaGOvaFRx9lJOfofsQ+NC+TKLff6p
         d1JeVKNTxnrHvoN5KF0rkceoXGozuUoxIiP1XvMT5wsRXihROvVvk7IAGFLly1U/PWYg
         yisnUS/KmfUKYPBYSI4fGLvzTyHipUn0YuuU0T8sr8jP4c84If57A0+Pa75RkrfnEnTP
         Rwi9+ZP94li0tp2TJ0395IZHjdTVxCG5YHl2ump1gKiG44ujqvdMqKA2x2ekxoNmEtCR
         pOPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=zJTozeMuOpv8h8JIaNVZ0SZQBrNwKug1/1rWa41g9/4=;
        b=BvyYu5YGuzplwkiD1tdXlEst9f2n6Z0wE3ZUJMfcksGB4iHlzqA8idX0Igswu3HQx7
         zhedqWcZkFlwsIX9SUL+Z0y3kYQs3L2/OdXmPJpeeDtR9bgNmtxZP0GCCCBgHNCErFHr
         vvAfsD78vmWCgLmb+FKJ12OxL3JVkWZGZsS09zVOq8GVe7vIGEmlNJ2n4VtNkEC81CHR
         +DmZIdaMCx7le6IZxdMo3AszxuKdNxJcTUf4hTxMIRNGC8TxkWg96287HeK0FJkTnTrN
         VqcYbMZ1VX1CZHn8SBdwSmFDs4nxMBqH9tAsbZ/PXpbvsZc2g4gsi3cHQ2ed2z0Tqh49
         /2PA==
X-Gm-Message-State: ACrzQf0NXDmDiYDYkGQxSsnpzMUyKKrtwsr1zBuCxYto2cqeF5JG9tZP
	K4BjC/f1tG4QbPx7kUso2oW5EGBS8m2LZtmDOS2zpjE=
X-Google-Smtp-Source: AMsMyM6DksHalWhb6yB7v9NrAhTysXB4+YLtdeRKWpxCSsd3uLDl8LUIXULBfK9dYoH/GgqGtKDD+EyJHPSH3TG0kHw=
X-Received: by 2002:a63:86c8:0:b0:43b:63ae:dc8a with SMTP id
 x191-20020a6386c8000000b0043b63aedc8amr11338220pgd.578.1664011312831; Sat, 24
 Sep 2022 02:21:52 -0700 (PDT)
MIME-Version: 1.0
From: John Hodgins <johnyhodgins@gmail.com>
Date: Sat, 24 Sep 2022 12:21:41 +0300
Message-ID: <CAGM_aqw7VmAS4Wy4HH-TT8bb_YDykK2kQq2H2iFiZOU8_AQeUg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: I2E2HOXMCWPDDR4A5QY5J7Q3GG3Y26KC
X-Message-ID-Hash: I2E2HOXMCWPDDR4A5QY5J7Q3GG3Y26KC
X-MailFrom: johnyhodgins@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] GrCon2022 workshop
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I2E2HOXMCWPDDR4A5QY5J7Q3GG3Y26KC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0894348516346651360=="

--===============0894348516346651360==
Content-Type: multipart/alternative; boundary="000000000000341f8705e968d3bc"

--000000000000341f8705e968d3bc
Content-Type: text/plain; charset="UTF-8"

Hi list,

Ettus workshops in some of the previous GrCon's are not available on
YouTube. Since not all of us can attend the conference in person I was
wondering whether Ettus is planning to record and share this year's
workshop.

Best regards

--000000000000341f8705e968d3bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi list,<div><br></div><div>Ettus workshops in some of the=
 previous GrCon&#39;s are not available on YouTube. Since not all of us can=
 attend the conference in person I was wondering whether Ettus is planning =
to record and share this year&#39;s workshop.</div><div><br></div><div>Best=
 regards</div><div><br></div><div><br></div></div>

--000000000000341f8705e968d3bc--

--===============0894348516346651360==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0894348516346651360==--
