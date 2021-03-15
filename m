Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD1A33C9AE
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 00:06:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 537F33832A8
	for <lists+usrp-users@lfdr.de>; Mon, 15 Mar 2021 19:06:50 -0400 (EDT)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id AE52438329D
	for <usrp-users@lists.ettus.com>; Mon, 15 Mar 2021 19:05:42 -0400 (EDT)
Received: by mail-ed1-f52.google.com with SMTP id dm8so19315783edb.2
        for <usrp-users@lists.ettus.com>; Mon, 15 Mar 2021 16:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=2pKdEGj91EaRxvpRIB+GPb7d8oQhEuT/DZ3fBqoDUL8=;
        b=TQNgdOM0exaBb3wUXF9FygOM9YjiSv1U6jw/Wj3+LBzPoVnKQsLnhyjL58jfwGWXTt
         cMgpA1PxuwDYlfyFab1TZ+uvNcuIHMoYNZ6V75DOTxbga1rnpa6ZCnVsM1djUzyMKXtb
         zkCnrUoJsO5NZhu6u15jVS8W30ukNSa1hzLCQJSM9AlMC+OAG2y4GAmQIJ95O7f6369L
         XsSPSPTHNqNx8Ca9WG+jw0I+lOEvtMAJm+cSfCpO4R8ReRpTn82Vn4uJX/4mVlFUqwyg
         XJroeHDMuKuubyW0R4gCoocXiHII66Ze4LR+k7n+ctFUgan5dApz8yvSLTOKR2a3Z31T
         g7fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=2pKdEGj91EaRxvpRIB+GPb7d8oQhEuT/DZ3fBqoDUL8=;
        b=V2uye7QUDnQcNsu4U3JDMS/o/R74DJvoUhcJ1VmKvGaddxfHZG2CPO48QqO6Od5bDW
         IFrFA+iyB0nDhynOz70uW7sUrBpJFSL9Z6Clj8OE0tQgeoaUEORZd54UpDfqjXeZ3bIZ
         pLTgdAxy+Yjveh0m4JeyQ8Oy2gVeaSYhmpHBKldB/5q0Z+ARJSyibVZ1FHfPd6iYgQYX
         X/KELQqYY8gJfvi/S413Kd6D6t2PvuUt25yqu4GrXAO4HuV1x0ks+V42R9MaAqn3X4hx
         gtxh12Tp6btKRVFB9UI020w4s7AieeF9gQRhUN/rZ+w1ODtFfEWsN0dHQyAY6XUO1xk4
         USpg==
X-Gm-Message-State: AOAM53285Q4zHtwaATgGrXVTAfLk289qiOYpDnZkqxtJYgqJAhaPuYgV
	BPzSj1CWaOsC8mRNODwotd/jnfUhPxKMABkXn4fYhKDtOLoC4A==
X-Google-Smtp-Source: ABdhPJxqMK4EaCN/uLvHOF9T/FQG8bbyBr4wi/dy7znzjc/RCJ84Tlvc3LjnDcLQGG89y9LZ+uroZxo/4lutHGHyVwE=
X-Received: by 2002:aa7:c403:: with SMTP id j3mr32628828edq.137.1615849541395;
 Mon, 15 Mar 2021 16:05:41 -0700 (PDT)
MIME-Version: 1.0
From: Sunny Sam <sunny04sam@gmail.com>
Date: Mon, 15 Mar 2021 19:05:30 -0400
Message-ID: <CAGu8PGw-Cx7RfdQ8b7hDp6F2bhV0ASYACsL9qGa2DY0z6nrCmA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: YA4ZCOZMEF2LIA6KL34ZQLV2HKYSQ25T
X-Message-ID-Hash: YA4ZCOZMEF2LIA6KL34ZQLV2HKYSQ25T
X-MailFrom: sunny04sam@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC 3 tutorial rfnoc_gain_example.cpp file
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YA4ZCOZMEF2LIA6KL34ZQLV2HKYSQ25T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3762168240560001444=="

--===============3762168240560001444==
Content-Type: multipart/alternative; boundary="000000000000ece89d05bd9b4933"

--000000000000ece89d05bd9b4933
Content-Type: text/plain; charset="UTF-8"

I would like to use the *rfnoc_gain_example.cpp* file to test the gain
block I created following the RFNoC 4 workshop tutorial. It was provided
with the RFNoC 3 tutorial in  /rfnoc-workshop/src/gain-app-example/  but I
can seem to be able to find it.

The file is referenced in the
https://kb.ettus.com/images/f/f6/rfnoc3_workshop_slides_202008_part_2.pdf
page 105.

Any help would be greatly appreciated.

Thanks,
Sunny

--000000000000ece89d05bd9b4933
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I would like to use the <b>rfnoc_gain_example.cpp</b>=
 file to test the gain block I created following the RFNoC 4 workshop tutor=
ial. It was provided with the RFNoC 3 tutorial in=C2=A0

/rfnoc-workshop/src/gain-app-example/=C2=A0

 but I can seem to be able to find it.=C2=A0 =C2=A0=C2=A0</div><div><div></=
div></div><div>=C2=A0=C2=A0<br></div>The file is referenced in the=C2=A0<a =
href=3D"https://kb.ettus.com/images/f/f6/rfnoc3_workshop_slides_202008_part=
_2.pdf">https://kb.ettus.com/images/f/f6/rfnoc3_workshop_slides_202008_part=
_2.pdf</a> page 105.<div><div><br></div><div>Any help=C2=A0would be greatly=
 appreciated.=C2=A0</div><div><br></div><div> </div><div>Thanks,<br></div><=
div>Sunny=C2=A0</div><div><br></div><div><br></div></div></div>

--000000000000ece89d05bd9b4933--

--===============3762168240560001444==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3762168240560001444==--
