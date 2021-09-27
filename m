Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C4696419E36
	for <lists+usrp-users@lfdr.de>; Mon, 27 Sep 2021 20:26:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 89BF03840A5
	for <lists+usrp-users@lfdr.de>; Mon, 27 Sep 2021 14:26:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="mysXEntV";
	dkim-atps=neutral
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id AA97C380928
	for <usrp-users@lists.ettus.com>; Mon, 27 Sep 2021 14:25:35 -0400 (EDT)
Received: by mail-ed1-f51.google.com with SMTP id o23so918565edt.12
        for <usrp-users@lists.ettus.com>; Mon, 27 Sep 2021 11:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=/i8DIjdy70/XPAZ/l9VjI8adjKpytIFl0AtvDYF4BGo=;
        b=mysXEntV34ItYCLpt3tKYfYNBnADVkKcaBWmWniQbhAu8bYzjMuchAPL2RwYtzFCmS
         +ED2O56Tgdm7v+ObapuFW4ZMnpLI1hYJTludNZkpkSaENDELQu8xDwpoi6KkxMJDDQlr
         IKdO47k7QkZ5D5/vvbEDeOiKCOmZcOJDcxDk8CEm5Eh9t4LuygA+keTb9JPngykGYKre
         jucrtcNf4QjET0YX9VTX8K+sW0Xr6ke5UdhmmTKhJ5CIGx7mLX0qIvx3SbD6lA9W+5JO
         Pw/5CUWlEoCOrWurV0asy0qCbYF7Bqtd2KA2zrpGptvaZl1+T+xy+SpDjrgLOeml2UiS
         VotA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/i8DIjdy70/XPAZ/l9VjI8adjKpytIFl0AtvDYF4BGo=;
        b=Vroa8LyQF0l8EvAyvfED2z//AeLmyJnwe5b2n1kaZUa+9aCn2QtqlMG5FlYK7X9H/6
         PxYdlLt6kqTZ3JLqHjV84krU7h5vULQtiYIVAGnM8KBAQL3uthe84fK1Qvi5GsB8L6Zd
         26PSjtosdL6PEwE1kYrkUUe21gTIOM0S4U1xU8HXvbO0xtBmaNtq4YkkQCCOKAxzHnNA
         owR96V7k8UdBfemltsOutbCVnw46at0jEglge29bcdXpl+iri2U98pU27K41aN93POEr
         ZVib4GfBiXf1ENXcC1qPlrV74oUFEHQOR4v8291S+Dod2h/M5uekMWci5OR+XPWq1LyC
         dyig==
X-Gm-Message-State: AOAM531xRF74lqPTjx4433Vkvv0S+Lr7IIjkplL/7a0wj2NThApMUrM4
	enztFmvcoQIZ1YG+L9XORgIAldE9I7OD2UFQZRQOXMaomgwqCdV8
X-Google-Smtp-Source: ABdhPJzw+TVQ2laymuhjQST4vVV5IO8dmgxcSBKUXWzNnQMslr9TVIhEG1tiHuu5DSaM31R6wVO82ByPFRqZhs0OISk=
X-Received: by 2002:a50:d8ce:: with SMTP id y14mr1858710edj.92.1632767134577;
 Mon, 27 Sep 2021 11:25:34 -0700 (PDT)
MIME-Version: 1.0
From: Aaron Rossetto <aaron.rossetto@ettus.com>
Date: Mon, 27 Sep 2021 13:25:23 -0500
Message-ID: <CAAg5+MwOdjZNwxjrm+K9aTpUdkPj1t1GUD5JQuJeoRA-qazG8Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: JL2IHCCNSL65YI7E67RLTOMJFIBYDHR6
X-Message-ID-Hash: JL2IHCCNSL65YI7E67RLTOMJFIBYDHR6
X-MailFrom: aaron.rossetto@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.1.0.2 and 4.1.0.3 released!
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JL2IHCCNSL65YI7E67RLTOMJFIBYDHR6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0325706522991641824=="

--===============0325706522991641824==
Content-Type: multipart/alternative; boundary="0000000000000ec52405ccfe395c"

--0000000000000ec52405ccfe395c
Content-Type: text/plain; charset="UTF-8"

Hello USRP community,

In all the excitement of attending and presenting at last week's GNU Radio
Conference 2021, I neglected to send out the announcement for these two
releases. These releases have some late-breaking bugfixes for the NI Ettus
USRP X410, USRP B2xx, and a few other friends/issues we met along the way.

UHD 4.1.0.3 Release
 * uhd
   - zbx: Prevent TX antenna config from disrupting RX

UHD 4.1.0.2 Release
 * b200
   - Fix overflow handling
 * fpga
   - Re-order error and data packets
   - Fix sc16 to sc12 converter
 * host
   - Add static_assert to prevent meta_range_t(0,0)
 * mpm
   - x4xx: update mboard_max_rev
 * mpmd
   - Add discoverable feature for trig i/o mode
 * sim
   - Update chdr_16sc_to_sc12 testbench
 * tests
   - Add recv(0) case to rx_streamer_test
 * uhd
   - transport: Avoid exceptions in disconnect_receiver()
   - streamer: Restore original recv(0) semantics
 * x4xx_bist
   - use get_mpm_client in gpio bist

With very best regards,
Aaron

--0000000000000ec52405ccfe395c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,sa=
ns-serif">Hello USRP community,<br><br>In all the excitement of attending a=
nd presenting at last week&#39;s GNU Radio Conference 2021, I neglected to =
send out the announcement for these two releases. These releases have some =
late-breaking bugfixes for the NI Ettus USRP X410, USRP B2xx, and a few oth=
er friends/issues we met along the way.<br><br>UHD 4.1.0.3 Release<br>=C2=
=A0* uhd<br>=C2=A0 =C2=A0- zbx: Prevent TX antenna config from disrupting R=
X<br><br>UHD 4.1.0.2 Release<br>=C2=A0* b200<br>=C2=A0 =C2=A0- Fix overflow=
 handling<br>=C2=A0* fpga<br>=C2=A0 =C2=A0- Re-order error and data packets=
<br>=C2=A0 =C2=A0- Fix sc16 to sc12 converter<br>=C2=A0* host<br>=C2=A0 =C2=
=A0- Add static_assert to prevent meta_range_t(0,0)<br>=C2=A0* mpm<br>=C2=
=A0 =C2=A0- x4xx: update mboard_max_rev<br>=C2=A0* mpmd<br>=C2=A0 =C2=A0- A=
dd discoverable feature for trig i/o mode<br>=C2=A0* sim<br>=C2=A0 =C2=A0- =
Update chdr_16sc_to_sc12 testbench<br>=C2=A0* tests<br>=C2=A0 =C2=A0- Add r=
ecv(0) case to rx_streamer_test<br>=C2=A0* uhd<br>=C2=A0 =C2=A0- transport:=
 Avoid exceptions in disconnect_receiver()<br>=C2=A0 =C2=A0- streamer: Rest=
ore original recv(0) semantics<br>=C2=A0* x4xx_bist<br>=C2=A0 =C2=A0- use g=
et_mpm_client in gpio bist<br><br>With very best regards,<br>Aaron</div></d=
iv>

--0000000000000ec52405ccfe395c--

--===============0325706522991641824==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0325706522991641824==--
