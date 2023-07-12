Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A46EB7508FC
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jul 2023 15:01:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D94D383751
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jul 2023 09:01:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689166890; bh=ve5WdaieKHKgxzdaoJ9ARgzVVVyqGxP/22bveN5V15w=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=DH6YFQ5zUA5WUxbafb/9VxCph4JcdKxg1TLd8Ci0WM4738Gjkdz22wtK1xb9wQRWV
	 R3dV/P4u+KIJH22zy6yWX+dgZi5sSdz04faDGamZ2OT/AkoMBY4oOUCuKKzn537TWh
	 u6LYyl5GQNNGfackQ/GlQXHzifz7VoUNWN3YVSvFXJObbTadwuwsXQ/QnTsZrDwnEt
	 g57Esaeb4P8LdPDAA5MjzOxRwYdSB17kbfLTSE35LcTMiXTfDXXtTKp2xiD94jbyVr
	 j/YpLkzaQFdZYrAKkx9kUfRJSIWmZY1o2T7u4x9jAoOMj/mGBB0eJQxQjWA4ONATtR
	 F2WDNW6y/Bh3A==
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 35FB63808C9
	for <usrp-users@lists.ettus.com>; Wed, 12 Jul 2023 09:01:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hTDgnqYE";
	dkim-atps=neutral
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1b8b4748fe4so35609785ad.1
        for <usrp-users@lists.ettus.com>; Wed, 12 Jul 2023 06:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689166873; x=1691758873;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=b+kAnQ/qYBUrRgqPkrQmnzMiCxx+bI7UzITCAulm+2k=;
        b=hTDgnqYE6/SgJFeeltgJYpt3RQtlBt6kjj6rr8gUiNXATDoQ+qrbISblGFqf3SNbgC
         9gQHMl9IgLfi91svXHf4WjBXSe8jsdU43OGFIjBp4srdtUj1W7O99L9U9U++IH/3WhLK
         8ldYattrv3vUI0WBY5kiN9VKIto/2+zoTt8RGNYsQDFzmUVsOM/xdQMOfoyPjoxC6VNZ
         3TQDGiLN3ks2zvEWI2q5QZxns/ecJvbzHWp7rplQgZS2C5y/Crdco/CZGHDOgChVheTv
         4RXKwJBPwt7ySRfG665Q6hqTX2vPt257ZYBoX4CbrrFuMnoSp6u9VHjQM730/OSoXKiW
         6K8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689166873; x=1691758873;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b+kAnQ/qYBUrRgqPkrQmnzMiCxx+bI7UzITCAulm+2k=;
        b=kTVt0flg2tREvwFS5n18PSG3Ki+H0q/Z+e4Zde+xQpEa2v55pIe8jlaXNP1nWri2uQ
         jaOayYM/O4LXxEqKkI8e1F7ZA441dltO4vCvZWgOQi9UvSh2GTPf6FJSdS1feToGyksQ
         3Vw2G3x4PUyT4DQVnVp6TIL1U6/BvYeOgK3sJR++IMTlW8SDm/lTky1mO/G8CY0NjXCa
         wRMEaKEn95qqBUNdnweEcOOi6U5fM7d1EnBNViu8RFajPbWCXel62E08YR152uqqaXTd
         nrwW0LS8FDxPO8OQi73QenC9Nr0hBnFhPu9aBFgHbcnge3s8cs4PVGwykCOUgtRzctuB
         XmRA==
X-Gm-Message-State: ABy/qLbd7s5/H3H59xTrU7HUkTz89bKBaGbpRs1ETeuGTrSiK9hI99CE
	TEw8KL9/B17dn4k6o91TxV0Jri02HsxHPb7GqN66i0p6MeVV4Q==
X-Google-Smtp-Source: APBJJlFv6R2z7/weHxYT+pYWhz8AIpuDi5a7KiWDQ7qJo8ZRIUl9efHZs9ft17YX8NcgaoVzSXlgeaZdApGNMiZ5huk=
X-Received: by 2002:a17:902:ec88:b0:1b8:1be2:3938 with SMTP id
 x8-20020a170902ec8800b001b81be23938mr17783574plg.5.1689166873410; Wed, 12 Jul
 2023 06:01:13 -0700 (PDT)
MIME-Version: 1.0
From: Dima <dima.domin@gmail.com>
Date: Wed, 12 Jul 2023 16:01:01 +0300
Message-ID: <CAAavwUVQvkZs3+KnO+Wpm8qqhL5KaHNLT7cCn-9CUkGTs4GZhQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: DVVT723S5VZGN7DGOWPSQUPA7YJOXZFV
X-Message-ID-Hash: DVVT723S5VZGN7DGOWPSQUPA7YJOXZFV
X-MailFrom: dima.domin@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] b205mini fpga
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DVVT723S5VZGN7DGOWPSQUPA7YJOXZFV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1272182230332493862=="

--===============1272182230332493862==
Content-Type: multipart/alternative; boundary="00000000000074c20f060049cf7d"

--00000000000074c20f060049cf7d
Content-Type: text/plain; charset="UTF-8"

Hello,

I am building UHD 4.4.0 with the USER_SETTINGS parameter for the
radio_legacy block in  b205_core.v set to 1. After calling API like in
example

>>> import uhd
>>> usrp=uhd.usrp.MultiUSRP("type=b200,enable_user_regs")
[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400;
UHD_4.4.0.0-124-g8a670958
[INFO] [B200] Detected Device: B205mini
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz...
[INFO] [B200] Actually got clock rate 16.000000 MHz.
>>> usrp.set_user_register(0,0)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
RuntimeError: LookupError: Path not found in tree: /mboards/0/user/regs
>>>
can't set user_register. Also in the tree i didn't see in tree path
/mboards/0/user/regs.
My board b205 mini. XILINX ISE 14.7.
How can I change the user register  value by my custom ?
Best regards,
DimI

--00000000000074c20f060049cf7d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I am building UHD 4.4.0 with the=
 USER_SETTINGS parameter for the radio_legacy block in=C2=A0 b205_core.v se=
t to 1. After calling API like in example</div><div><div style=3D"font-vari=
ant-numeric:normal;font-variant-east-asian:normal;font-variant-alternates:n=
ormal;font-kerning:auto;font-feature-settings:normal;font-stretch:normal;fo=
nt-size:13px;line-height:1;font-family:monospace,fixed;min-height:13px;padd=
ing-left:53px;padding-bottom:0px;margin:0px;color:rgb(0,0,0)"><br>&gt;&gt;&=
gt; import uhd<br>&gt;&gt;&gt; usrp=3Duhd.usrp.MultiUSRP(&quot;type=3Db200,=
enable_user_regs&quot;)<br>[INFO] [UHD] linux; GNU C++ version 11.3.0; Boos=
t_107400; UHD_4.4.0.0-124-g8a670958<br>[INFO] [B200] Detected Device: B205m=
ini<br>[INFO] [B200] Operating over USB 3.<br>[INFO] [B200] Initialize CODE=
C control...<br>[INFO] [B200] Initialize Radio control...<br>[INFO] [B200] =
Performing register loopback test... <br>[INFO] [B200] Register loopback te=
st passed<br>[INFO] [B200] Setting master clock rate selection to &#39;auto=
matic&#39;.<br>[INFO] [B200] Asking for clock rate 16.000000 MHz... <br>[IN=
FO] [B200] Actually got clock rate 16.000000 MHz.<br>&gt;&gt;&gt; usrp.set_=
user_register(0,0) <br>Traceback (most recent call last):<br>=C2=A0 File &q=
uot;&lt;stdin&gt;&quot;, line 1, in &lt;module&gt;<br>RuntimeError: LookupE=
rror: Path not found in tree: /mboards/0/user/regs<br>&gt;&gt;&gt; <br></di=
v></div><div>can&#39;t set user_register. Also in the tree i didn&#39;t see=
 in tree path /mboards/0/user/regs.</div><div>My board b205 mini. XILINX IS=
E 14.7.</div><div>How can I change the user register=C2=A0 value by my cust=
om ?<br></div><div>Best regards,</div><div>DimI<br></div></div>

--00000000000074c20f060049cf7d--

--===============1272182230332493862==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1272182230332493862==--
