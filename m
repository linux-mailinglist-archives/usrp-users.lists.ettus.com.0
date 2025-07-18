Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7E0B09A45
	for <lists+usrp-users@lfdr.de>; Fri, 18 Jul 2025 05:49:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE76538662A
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jul 2025 23:49:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752810591; bh=JEoBKQHtamshimoZxIk7ArV1Go6Z1mxZMiHsxdfxm3s=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=v8rAgFRON9uEN0/ZKN7CMpmoDSs4/f3wRtN4c8k4Gr63VbFa8FXkcNbXBETL0CINJ
	 RkUCd9aACjCwNciAGjqewhVCtW5s3697vh1Q1MmVdP3cbijFSUCdpPWY4QFLpAlwdM
	 026nd2uW0ErD7udLb5YZr48w8sC+vHtK99nZE1adqzpaEjHXRx4mWU5dqhopRoIwlL
	 T0OwdnruNA/bJnztdzL7TESATbenompfC+bMn7PtxD0Y2HxUXka62jMG+Sw+X+E29v
	 RPnCog4Kzdgb6hY+dJ+69jxWxfvGKXETVuVlbq6368YRvHhMzZH0yxgCbKSbrKCgsP
	 zWiXnkhXSg7QQ==
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by mm2.emwd.com (Postfix) with ESMTPS id DF623385896
	for <usrp-users@lists.ettus.com>; Thu, 17 Jul 2025 23:49:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NFkWBMi5";
	dkim-atps=neutral
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3b611665b96so883636f8f.2
        for <usrp-users@lists.ettus.com>; Thu, 17 Jul 2025 20:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752810575; x=1753415375; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3+jDqkCx8THgrwjWG8IOxgehoab0iCBn31xJZCd6gwU=;
        b=NFkWBMi5NdKekvxkkODaoHZBZDE7yX5xkZGJ0z6BO8/P55J8mvkqcb5nZMgbgDVxzW
         yMCXIKGX/8W6w2cpuAOM1DvkIYjloyNq+R+4NUo+xSJSN+75WaSlLMI1hHQjzzGP5Fvy
         55Mvnhd3Fe2dB1fWFO5h5zrD+vpctNtgb8j4hS2Za6TQO+LHha8RfKUTNDnd+66+gsb+
         KyfGYLRKF6MQMCT2seeBGvEoSygU2jCx8mCEZsQl99H41oQorGgfUvHJ7VJW+3YlAUHA
         c+rN2GT6OwBW7w1CR0pPyR/jg7L6EsmSFLTOnWgnJX/QYuZKkytnse4cd9/2X/wKfd28
         4N5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752810575; x=1753415375;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3+jDqkCx8THgrwjWG8IOxgehoab0iCBn31xJZCd6gwU=;
        b=JJuDYNUh+fv4LBeRPmCdbfCh/f6pJcgCuV2x088ml9W0jry066M15FuSkV9/jwlK09
         HGmnKVs07FgrtU4RLZqdbIG33uGMcXLg3P5B34h3A7mLcH3Ip5KmHRkX6B8ewBXchnNb
         1QBj96dzkBdijsohXmGG7ZtaSdBjTCURx688kc1eqgiPpXm8hDoJ24avXi6Kxb8aYbDA
         oxeWPrvNu8kxTzOywfD6wGlFIdGD/ZJXnuWUZF9Sc2e4qcekdXvoi+rVrlpmd6P7EdMw
         AsyKvhB70YaSoTbuy+Zr6IvuCsy2e8kjnnQ3Jy3C0qIQpxNQNIPwvyU4eGRycS66Z9cS
         yKLg==
X-Gm-Message-State: AOJu0YzUdc2is94GvRRzZSAITkuym3ech4CS+O9zvqZh/w+T1RB+eTVR
	19TgvjLlLRVl5S1biLlzIZUVg+ilMMjcVPNfEZkuXX5zYJ1bR5U01yDyIBLQxqtmobsZE7pVMwK
	dDTTL4B8TOZedMNed+OtNPeBmwKWYa2St/HJl
X-Gm-Gg: ASbGncuJPIluwsxaGsnTvmLZHn15Ny5zvC15xbh0PzTuOShj4hWAY8OODOZuYeO8jWD
	PEktdYoWk3X4FaxLlbubx0E9N2DxY7QL2kq/JzDFo4ikeyR+DRzFinQ9vsgxibh6vikuiL+pO2s
	Id0zq8ZmjqChSJSxe455r4cU91jao0+7+Vr/0x6TnPLGY2FdVL9VYR9gO2S/anOXSfml6jsAybg
	lEc89aQNGO7YBroEg==
X-Google-Smtp-Source: AGHT+IErtt1AMXYw8qKRtcSIIIVZ1VkWfA+Upun2zNfZV8p3vAz/S1xVpdHaBR1GaH+lNyxZYbNVzEJ325746i2dGd0=
X-Received: by 2002:a05:6000:2892:b0:3b3:bd27:f2b0 with SMTP id
 ffacd0b85a97d-3b60e51b916mr6939714f8f.43.1752810575388; Thu, 17 Jul 2025
 20:49:35 -0700 (PDT)
MIME-Version: 1.0
From: David <vitishlsfan21@gmail.com>
Date: Thu, 17 Jul 2025 20:49:24 -0700
X-Gm-Features: Ac12FXzSIX2BnKAD-x1RbkfWLakLYd4zuOYogFak4bp9y7JFMhKeiZrMlmxG5Uc
Message-ID: <CAE=q3UNNo4mr9RU5daZGzWKJV9ZH9ry6p3aTq8DpEojqw-XVyA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: VYBG5PTNK3GMIGKXZ2YRAHZNEQYF2ENR
X-Message-ID-Hash: VYBG5PTNK3GMIGKXZ2YRAHZNEQYF2ENR
X-MailFrom: vitishlsfan21@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Making Custom Block pymodule_library
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VYBG5PTNK3GMIGKXZ2YRAHZNEQYF2ENR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5341438333665223383=="

--===============5341438333665223383==
Content-Type: multipart/alternative; boundary="000000000000b46771063a2c03df"

--000000000000b46771063a2c03df
Content-Type: text/plain; charset="UTF-8"

Hello all,

I upgraded to UHD 4.8 and the new features have been great. Still exploring
a lot. I ran into an issue when trying to run make target
"pymodule_library". It errors with:

"/usr/bin/ld: cannot find -luhd: No such file or directory"

I traced this using remake to the build directory file
python/CMakeFiles/rfnoc_testmod_python.dir/link.text. The single line file
uses "-L/opt/uhd/lib/libuhd.so", and when I corrected it to
"-L/opt/uhd/lib/", the linker was able to find uhd and the make command
completed.

Any suggestions on fixing this issue? I have seen it in my test block above
and another custom block I ported to UHD 4.8.

Thanks,

David

--000000000000b46771063a2c03df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div><br></div><div>I upgraded to UHD=
 4.8 and the new features have been great. Still exploring a lot. I ran int=
o an issue when trying to run make target &quot;pymodule_library&quot;. It =
errors with:</div><div><br></div><div>&quot;/usr/bin/ld: cannot find -luhd:=
 No such file or directory&quot;</div><div><br></div><div>I traced this usi=
ng remake to the build directory file python/CMakeFiles/rfnoc_testmod_pytho=
n.dir/link.text. The single line file uses &quot;-L/opt/uhd/lib/libuhd.so&q=
uot;, and when I corrected it to &quot;-L/opt/uhd/lib/&quot;, the linker wa=
s able to find uhd and the make command completed.</div><div><br></div><div=
>Any suggestions on fixing this issue? I have seen it in my test block abov=
e and another custom block I ported to UHD 4.8.</div><div><br></div><div>Th=
anks,</div><div><br></div><div>David</div></div>

--000000000000b46771063a2c03df--

--===============5341438333665223383==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5341438333665223383==--
