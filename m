Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 47ECD5A5ED3
	for <lists+usrp-users@lfdr.de>; Tue, 30 Aug 2022 11:02:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8E1043880F9
	for <lists+usrp-users@lfdr.de>; Tue, 30 Aug 2022 05:02:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1661850137; bh=H7IU4H+8z60KEFx9t1/2OQVQjcZPQD8KMl1p/Cfe4rk=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VGnI1Vx1HH7ZEyWR/13ZkImXqHJQpSzxCMvM5lGs1cGgt4l/zTmwcNXJ4XtQDE+N8
	 IzOJeQ79rQqLPD0kgXpEUwn1WWOf/u4RuQDfcr4dNZRi7FkZnazqkCdOvV5HxMwmcT
	 KQaHOFa2OxKiGVC2AZTL/Tl5eQUSO7EIqui6CXg109tMbxr3chellfaPNNcRtcYoh4
	 0yj2bF8S7tZLM91ng4FJMplQjlul44jJx9CkPCZ3MEDo7GvxnP4jJiDtfsDcNrMw78
	 5ReUmJvzd2KQJbm30NcTt2FtEU+mqr1JBlBqqpiEZkmmE1f2LWLJv9KVI8B0nMMGAO
	 AKKHLtulkK0kQ==
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mm2.emwd.com (Postfix) with ESMTPS id A2308387FF4
	for <usrp-users@lists.ettus.com>; Tue, 30 Aug 2022 05:00:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="L+edjO3/";
	dkim-atps=neutral
Received: by mail-ed1-f44.google.com with SMTP id z41so5877005ede.0
        for <usrp-users@lists.ettus.com>; Tue, 30 Aug 2022 02:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=+Yh/1ZrbLZow+YYYHiprbBbXx5AUnWXb7MYJts5XlYg=;
        b=L+edjO3/byJpMoY/3z+Je70VD63NkO1dbpORfUZILwrDmLH/RdUYoP4EMz7znfHt5O
         xYIK+qVkCRL4oflK50n1LTWPb/nk6z3SXWP8Qc3LX2CovITaLGUvTerSZYgZ4xaeJvos
         GR28WIQ26mujqQqJtu5yiI5abHAI+rTslPn10DvYDQZsr7XXCXd2S11k7+u3azN+8fID
         ZvSy6O/0wXOBO/+43jmnCUKj/K6HdyZx7yVeK9IPZA2Jipg7Qi2dKeIk0V++dBUH7JyK
         yCpVEH93xwyGeufmeaN4oYEkh6W/r89b4t3fbfnRy38nx77gvwpb3NwJxZUkx9mU4J/q
         df6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=+Yh/1ZrbLZow+YYYHiprbBbXx5AUnWXb7MYJts5XlYg=;
        b=gM14Mhw32gmPbmuTXIGy3QON7f4DGhm4Es65vfxlUCXG6BjAcAkPkBcRmty8AfkDoo
         C9hAqDuddehTUUJWRAuTLUBXq0XlwBLehZVAeS6CAeKMdXHg2WBqwpQN+axIaAawV2/T
         qK0Z94bREBQQz7d+T3Z+8zC2RzhR7OhjJllcf8WhVqp3uBhO98YxWJaH68iBVFi7dVNy
         5dNnAI8LNMaMCG7aXor7nTdI8TWNMaFoScfzz7gdL7bL0DzNQZVTIfShzgt+jk5rfteG
         cvwLx56VTaZOWmRMHHgCRerxSordjvlyjGif7PLEYbxWqVtFi4Kf/OACKhbGcCq0/+RP
         ZnUg==
X-Gm-Message-State: ACgBeo1LGvQU58kBjF9vMh0U9JdOg+TcZTwFMzamMhWolT0Y9NKqJMRc
	zQgua6b560qIDqQDitGRIXkiahyDCPgXFAHoICMC4aK5shw=
X-Google-Smtp-Source: AA6agR7I+wn+nV7ZNa73glrXQeZymFLKALD1dVY6gdrVWI5SUII4Tu5L9Fecoh20/5GSvTyswut5XQwrsLUWxZsHS6Q=
X-Received: by 2002:aa7:c70f:0:b0:447:cf74:9d2f with SMTP id
 i15-20020aa7c70f000000b00447cf749d2fmr16895504edq.229.1661850007250; Tue, 30
 Aug 2022 02:00:07 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Tue, 30 Aug 2022 10:59:55 +0200
Message-ID: <CAG16vQVW+wbwHyHy=dOxB_7x5DhcQb-dTh0WWrjM=KY49OpReA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: D234CGYZPGVVOGNOKIC3CQKGKO7HBEZ2
X-Message-ID-Hash: D234CGYZPGVVOGNOKIC3CQKGKO7HBEZ2
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Bitstream encryption
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D234CGYZPGVVOGNOKIC3CQKGKO7HBEZ2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2210777427993529789=="

--===============2210777427993529789==
Content-Type: multipart/alternative; boundary="0000000000005a332905e7719bb9"

--0000000000005a332905e7719bb9
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am using USRP E320. I was wondering if the RFNoC framework allows some
kind of bitstream protection/authentication like the bitstream encryption
option that offers vivado (
https://docs.xilinx.com/v/u/en-US/xapp1239-fpga-bitstream-encryption).
In that case, how can I load the encrypted bitstream using the framework
tools?

Kind Regards,

Maria

--0000000000005a332905e7719bb9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I am using USRP E320. I was won=
dering if the RFNoC framework allows some kind of bitstream protection/auth=
entication like the bitstream encryption option that offers vivado (<a href=
=3D"https://docs.xilinx.com/v/u/en-US/xapp1239-fpga-bitstream-encryption">h=
ttps://docs.xilinx.com/v/u/en-US/xapp1239-fpga-bitstream-encryption</a>).=
=C2=A0</div><div>In that case, how can I load the encrypted bitstream using=
 the framework tools?</div><div><br></div><div>Kind Regards,</div><div><br>=
</div><div>Maria</div></div>

--0000000000005a332905e7719bb9--

--===============2210777427993529789==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2210777427993529789==--
