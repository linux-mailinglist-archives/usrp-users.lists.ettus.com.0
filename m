Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B584520E41
	for <lists+usrp-users@lfdr.de>; Tue, 10 May 2022 09:04:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 71265385043
	for <lists+usrp-users@lfdr.de>; Tue, 10 May 2022 03:04:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652166247; bh=XQsciZu94hsQpsdZAAaBdX96nvPRAdeDYwp7XXcAVFw=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=HD10HFGtpFP85bBz1QYaDYLz+IGNLxmIDU56p/JOTZazuxslGbR87dub6jfiICq7b
	 5QRLuFiZCv3mWb0pw0itZbOgs7MMAdhGL/LXTaaMGISMAJsz2Kb+6wB6vayN11xW97
	 7BocGFDLoTs21Qme57Q+5iOm55k2qz/QYHRkhq+cpszXBUJu+Jeysv6QOlxPBGx243
	 rQZmdGo+l0yQof0JTtESVv3A2nq6KTnq941c/MPqFZsZC2b09I45f1cjcqIApiDtZD
	 nAtZM3RfGx42NL2TxKqagbqKSDfY6xZtHnHS4Z/mGZ5Ur4wCaTtW0/ueLKFC9iCVmH
	 GPtnZ0jjWJ68g==
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 21BF9384FE6
	for <usrp-users@lists.ettus.com>; Tue, 10 May 2022 03:02:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OsxNIfo1";
	dkim-atps=neutral
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-2ebf4b91212so169001647b3.8
        for <usrp-users@lists.ettus.com>; Tue, 10 May 2022 00:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=np9KWU1Y13pdym7thN+GhI8lA25O37FhulD3V9KW9bQ=;
        b=OsxNIfo1IKDz42Gme6BQozm37ZGqmmFrCajBnWeJiDkVZXDZuZce9dYtcfbyubN3z0
         Juqn8S4L4jLyFaFMgv2ZI+KSDQswZCXaO86Go/PeLTyECApt+C3oc+rLptY+JBxChrPD
         1N1mYXsazOk1RrwbWDkkjtkLpzRgh9iJIR7pzENXYK1NAThs8E/rFHSvD78JZGK0DGPs
         oNklnOdkbX1Mi4O8T6tubuRBKa/Ea8rwj2WKhwKyihIu+9UetVlk4Aj1UgIAbVQo0f+H
         YW3lgpfsscv+HT5UmY4lCsauOM8VeL7F92Mgr0wb6DpcYsrKf9OwQQwORPNbvHvnUZAU
         Uwng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=np9KWU1Y13pdym7thN+GhI8lA25O37FhulD3V9KW9bQ=;
        b=ORefUFetimIFZPBUg7WiuMc7OX2iEAM0V5HG914raCHpaiw/Q8eS7Nl9tEIq0drLGH
         TfA/S0bFoil88Ety57Zo8CX1Un6hgsPf7e7n029iZU2bl2OmY63oDWUHsU/y4iz2We0Z
         X3vIkF3CQH2EQ6tqHWMekXqVBfYNqM71z/yTWWacBr22yHt24lfkRFyzibBnG7Vb2JL9
         kJyCxm4B5XGD/96sFjh58iAWrqdHQJhqdI0IAHWkwKagOoAm/0w9AO2PA9hxUvdS/MWu
         6MhE42t8zxOwX97QaCDxH92oOgA42XK1XyGYpWk83BAC9SvUzZneSBXbkPqo8M/aF35I
         a7PA==
X-Gm-Message-State: AOAM530TcuySs54mlI5FHpNGGbG8mkUtVrNXJD8LE9wK17s2p61NIXCY
	zhnjFapFhu+KrUJ7un/krEqBVhPnKe/Rci6XDgFqqNEbO7VgCnYstco=
X-Google-Smtp-Source: ABdhPJySSTLPbm0dzYe8MRR0SYLHZshNHHwoGAel+1vbS3TeXqWWEaP1eJxhzZkIZRzWU57VlsXvr8bLfZG05EWkpoU=
X-Received: by 2002:a81:8c6:0:b0:2f4:d476:b46f with SMTP id
 189-20020a8108c6000000b002f4d476b46fmr17698007ywi.363.1652166175551; Tue, 10
 May 2022 00:02:55 -0700 (PDT)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Tue, 10 May 2022 11:32:44 +0430
Message-ID: <CAA=S3PtnO2+d7Xb6m-3QEQ100s60xk7Vri5yp5t7tBjXmdUttQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: QQTVOBPETJ5OTRZTYCSLTR2RFGWYMUIM
X-Message-ID-Hash: QQTVOBPETJ5OTRZTYCSLTR2RFGWYMUIM
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] ValueError: Bad CHDR header or invalid packet length
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QQTVOBPETJ5OTRZTYCSLTR2RFGWYMUIM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5933875711802673229=="

--===============5933875711802673229==
Content-Type: multipart/alternative; boundary="00000000000000f58b05dea2ea90"

--00000000000000f58b05dea2ea90
Content-Type: text/plain; charset="UTF-8"

I developed an RFNOC block for USRP x300, When I want to test it in
Gnuradio, the block does not work and I am faced with the below errors ...
How can solve my problem? I  mention that it has a critical warning in
synthesis ...This warning is below link:
https://lists.ettus.com/empathy/thread/7HN6JMAO2SWWRUNE2YK7URWXUVMURP3Z


[ERROR] [STREAMER] The receive transport caught a value exception.
ValueError: Bad CHDR header or invalid packet length.
gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received error
ERROR_CODE_BAD_PACKET (Code: 0xf)

--00000000000000f58b05dea2ea90
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I developed an RFNOC block for USRP x300, When I want=
 to test it in Gnuradio, the=C2=A0block does not work and I am faced with t=
he below errors ...</div><div>How can solve my problem? I=C2=A0 mention tha=
t it has a critical warning in synthesis ...This warning is below link:</di=
v><div><a href=3D"https://lists.ettus.com/empathy/thread/7HN6JMAO2SWWRUNE2Y=
K7URWXUVMURP3Z">https://lists.ettus.com/empathy/thread/7HN6JMAO2SWWRUNE2YK7=
URWXUVMURP3Z</a><br></div><div><br></div><div><br></div>[ERROR] [STREAMER] =
The receive transport caught a value exception.<br>ValueError: Bad CHDR hea=
der or invalid packet length.<br>gr::log :WARN: rfnoc_rx_streamer0 - RFNoC =
Streamer block received error ERROR_CODE_BAD_PACKET (Code: 0xf)<br></div>

--00000000000000f58b05dea2ea90--

--===============5933875711802673229==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5933875711802673229==--
