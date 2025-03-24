Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3529BA6E530
	for <lists+usrp-users@lfdr.de>; Mon, 24 Mar 2025 22:11:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E8F8F385882
	for <lists+usrp-users@lfdr.de>; Mon, 24 Mar 2025 17:11:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742850708; bh=s2lkRnbP312CgXJEjl+hKxnNW00cQfWIHWZuB4Y2gug=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=bRjqZhVO3JTfI4v/Nr1l26kcmj5RA9kUtJxCTYHDA7NBfm5lh562ptza2TogwKkuu
	 T7N2EkDfOBp8Kpyqvq5BkZY1nxPhpfgKGP/+ekgWcIBpDOBkWzoQTw2XdSsvdPwWfx
	 FQM5wUuKMLt3J7v6G8gq2YYHwgeBdh72zfe0FtNSvoPhj/eEqnpy9YKfr/q3lqXujD
	 UJMqNrNFFjfeurjL838PxXf0VSjUkuiEJYfezuLbZYMZcsZcNu9cwlbxHGO4phzTfS
	 1VRJi9mS9mdtzv7reiVlCIz9OOe4A/8n2gW+qnkZTtGQSEhAsObqNP6BWuhifb15MW
	 ubPudU0UzqCLw==
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 1B4D13808E9
	for <usrp-users@lists.ettus.com>; Mon, 24 Mar 2025 17:10:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GLhmtmQW";
	dkim-atps=neutral
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-226185948ffso93071095ad.0
        for <usrp-users@lists.ettus.com>; Mon, 24 Mar 2025 14:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742850648; x=1743455448; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rWQqWIpJK/73PtWoOmFGOUxcBUwTOEXpPnvnD1Tcu2I=;
        b=GLhmtmQWfDocb35wFvq8Sw+9ksZpqIxmqR3x16KlCWu/hqw7OrnA4HVb6fc1uMW4k+
         TaHHlsdKwFupGupcR5quP8SDICxSwrJvlOyjvAiFl/+t0ix/RYdguvyKexNhQYNQGCiv
         Cdjq7h/aJfcXtCN6xnRJirI0gu6OZB+72vdLF3Hc/EEil0CqDVTRnBy3K7neZuP96IJd
         KuycYeFW1FP50tiets0/avtn5jlB9p06IJYtz1tbEa+MkAgHPisstClXLEdvL+6DHxhP
         PFLuL9mIe1ga/57p0Y/64d6HpTl1+L5hIE6L/A8Dt9S0/R4gG00oD6HEyMZC+mEBjYdn
         xuHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742850648; x=1743455448;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rWQqWIpJK/73PtWoOmFGOUxcBUwTOEXpPnvnD1Tcu2I=;
        b=cGyqzcbwzTTbk0Z5/aDc7+LiG8mD7HmgyzwOB12L99WvElSb33Cmeguix7+GHr/F75
         pLlk4H+Pg8ExsNuIhdfKQI7FKWim1UK0rU+tjgv+jxcrhk9izdeWES4J0ZJb1Udi0//D
         KlBV8grhd9vdmJfFKctgv8axcwJo6ABn2TsZGrJq4EwZ4xxpI2TuvR3HqnUQBxtFJPZN
         SBum0XQbe1FgHQobk4xlKG7bmxAJA5yvdL1pWfuiRl6/ak1518yOR/GsEc3Ba01yNJEI
         UfyfS731IEoFuCJg37Ts7GUcHhRpOPLlQKrfLAz9j84sYZyuSg2AiZYFW6SyF38RtbLr
         51TQ==
X-Gm-Message-State: AOJu0Yx/+1G5tdpuW5J7pUfyAvyLC30o7y6JoZzygtwwZe5+ubGMliNa
	tiI6nXFfBfu1bIhYGJOvdF9V5kEhvvgFylIgAKik1zmiGafzs65DyW3vce8zCDig4WGemG9spv2
	/sXKA9n4LFI9oejvOQv5+euOKyiJipb6C
X-Gm-Gg: ASbGnctUCm1nWoDGPyCSKV4ID8fxfIbwaZmSdeqCvAP7M2Oapv6wS5q72RTZB67Gyph
	BaQtsvF+l5Bny/+X9hO9SbRcoIyr3g+5PYPdafZ/5OoCsHtkNcw1/EzdTwAC1JSv+/dvVVq/sr/
	VNtlSOHH+nQ50VzSObtwkaQ3zhuYSSQtwoA80=
X-Google-Smtp-Source: AGHT+IGTvc3Ck3aWwOxGqgXuEYK4ODaP7zv3aQp6xFcLC4QmjjvvdvMVedRGlEsRlGMH0L6MdEXC2T5IxiIt++t+fFU=
X-Received: by 2002:a17:90b:3d07:b0:2ee:8430:b831 with SMTP id
 98e67ed59e1d1-3030fe72766mr24520069a91.2.1742850647873; Mon, 24 Mar 2025
 14:10:47 -0700 (PDT)
MIME-Version: 1.0
From: Chris Gorman <chrisjohgorman@gmail.com>
Date: Mon, 24 Mar 2025 17:10:37 -0400
X-Gm-Features: AQ5f1JpXqoWBGaXf8WNhJfuiMhuPUneyWOuDvimVuK3bdNF38Y6Ovfm-lG-o8e4
Message-ID: <CAHVeOW8ERSy+JO1xHRWJ+1fYcjTY36d=qoPz2ZE5BDzWBaOAnQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: VVKUIDULV326GPFW45XM3YCDG7P6DLYL
X-Message-ID-Hash: VVKUIDULV326GPFW45XM3YCDG7P6DLYL
X-MailFrom: chrisjohgorman@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [UHD] 4.8.0.0 build concerns msys2/mingw64
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VVKUIDULV326GPFW45XM3YCDG7P6DLYL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello USRP users,

I am packaging uhd 4.8.0.0 for msys/mingw and have run into a question
about the build process.  I have a build process that runs now but I
am concerned about how I manage to get python3.12/site-packages/uhd
installed.

I have made the following changes.  I install python-poetry as a
dependency, so I don't have to install it via pip.

diff --git a/host/python/CMakeLists.txt b/host/python/CMakeLists.txt
index df2353758..037f1475c 100644
--- a/host/python/CMakeLists.txt
+++ b/host/python/CMakeLists.txt
@@ -244,7 +244,6 @@ if (WIN32)
                DEPENDS ${PYUHD_FILES} pyuhd_library)
        add_custom_command(
                TARGET pyuhd_wheel
-               COMMAND ${PYTHON_EXECUTABLE} -m pip install poetry
                COMMAND ${PYTHON_EXECUTABLE} -m poetry build
        )
 endif(WIN32)

And I manage the dependencies in pyproject.toml via pacman
dependencies, so I have removed them.

diff --git a/host/python/pyproject.toml.in b/host/python/pyproject.toml.in
index 66227c633..942e9cd15 100644
--- a/host/python/pyproject.toml.in
+++ b/host/python/pyproject.toml.in
@@ -18,10 +18,10 @@ exclude = [
 ]

 [tool.poetry.dependencies]
-python = ">=3.10,<3.13"
-numpy = "^@UHD_NUMPY_MIN_VERSION@"
-mako = ">=@UHD_PY_MAKO_MIN_VERSION@"
-ruamel-yaml = ">=@UHD_RUAMEL_YAML_MIN_VERSION@"
+#python = ">=3.10,<3.13"
+#numpy = ">=@UHD_NUMPY_MIN_VERSION@"
+#mako = ">=@UHD_PY_MAKO_MIN_VERSION@"
+#ruamel-yaml = ">=@UHD_RUAMEL_YAML_MIN_VERSION@"

 [tool.poetry.build]
 # Poetry should build a platform specific wheel, because the binding lib

These two changes allow me to install the
python-3.12/site-packages/uhd dir via a call to pip.  This is the call
I make in the build script.

pip install --ignore-installed --prefix="${pkgdir}"/"${MINGW_PREFIX}"
dist/uhd*.whl

My problem is I would prefer not to use python-pip to install the
uhd*.whl file.  It caught me a few times by deleting the installed uhd
directory before I wised up and passed the --ignore-installed switch.
I could proceed with it, but I was hoping someone might be able to
help me to change the correct part of the host/python/CMakeLists.txt
so I don't use poetry to build the whl file and simply copy the uhd
directory as is done with the usrp_mpm folder.

Any pointers or starters on how to accomplish this would be appreciated.

Thanks in advance,

Chris
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
