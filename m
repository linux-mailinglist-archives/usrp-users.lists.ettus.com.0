Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 544A7527F72
	for <lists+usrp-users@lfdr.de>; Mon, 16 May 2022 10:19:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4C930384ABF
	for <lists+usrp-users@lfdr.de>; Mon, 16 May 2022 04:19:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652689173; bh=jqC55LYTiCDApjnTBEj7GNaRn66B6aPzvAdr3nW3f+Q=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MGfCg9jp9GarwBFRV4428JqXAv9HZc3ja3ZGeBbP0wf9z3YHfmPX04mxsp6RVXZrr
	 obUr66jc96F9ID8Dp2L8kNKfaaiyQ6ISU/NDJ8Bcwgb3ME0X1rZaPhwqkUHr8Pk61K
	 MrF9GPJWeC1FhgNCbqb/Ni546eJJLfPat8eucsvuFu5uwxIIK5Q+VJt1y3VHX436/f
	 1xFkwQZsym0bWqgKueNWMexQ+MlH6F9Cb7PO+9wpG3s/5lSZkAO4zxtB/oW4Qi1pCj
	 LV++qsjAVGp9NTeaH1TEp5zthR01gga6MVg3kXQwrIQ9q/d6Of3nMLZ4jLdLWKuMgT
	 jDpbfukbAfAvg==
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com [209.85.219.198])
	by mm2.emwd.com (Postfix) with ESMTPS id D35DB384957
	for <usrp-users@lists.ettus.com>; Mon, 16 May 2022 04:18:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=dolphinsystem-jp.20210112.gappssmtp.com header.i=@dolphinsystem-jp.20210112.gappssmtp.com header.b="YjPnNFc3";
	dkim-atps=neutral
Received: by mail-yb1-f198.google.com with SMTP id z39-20020a25a12a000000b0064dbcd526ffso1081890ybh.15
        for <usrp-users@lists.ettus.com>; Mon, 16 May 2022 01:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dolphinsystem-jp.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=fIVNTesEQupGVCz6vh8QiWWFvdg6zW9qSeZl9szooAY=;
        b=YjPnNFc3OTg+ggCyfRL8Di5Y4G9dbAWaQqWP69ofVRWOACFlNkzjhYHxl0Y+huzePC
         ICMrWzRAnAPEi3j1kOmxQK+vjy2wxVZGKqhDEUrvjmr7d0HeYoWsksH7EtEjTwHyonGO
         9QrYTsOlr8Wfiw1ZvCr77MaN8FbIffMdyy009FvgQZjzsVaj28WxPyNUhhYfcjmDujqD
         O9iGZicMZeWi767IlXRz5/V2Q4Wcawha1lejxoH0GpedDreLguyYdSWfoSXIQWqvknSR
         8fj0vzaNDl559XkyG/SiPgJ9cLZkQ5v0GnEbtZ5yBsNis5BydThl+4M81ForNh5mboGt
         hcMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=fIVNTesEQupGVCz6vh8QiWWFvdg6zW9qSeZl9szooAY=;
        b=dRHLyRWX+40EGmkZj3zJZv+nRJHBwflECnjuyJ6jgIdcK8fPOT5MRU7G7aP2IQE54h
         TVmCpamcdm6Pe0y8UoVNDq5cWKu2zGPWyXqrqLoSB53WPYUi6qJ38eg7LF2C7zTz7irf
         eB8sbIxWtSshUjK3ACQkH4VmD1kmwLKJG0ZCt1Gt2IA4TWu+41tZYBActBxPbstGTj7O
         syYJ1iq2dyj8gLaUieBUOydI9ZWEAEckNB/a+gflJE3jsXci5Ko9Mw6Q0rT7i5WinQrj
         Q2cqObawYmXUb9Q4LG7yBEK+5YJKYyVC3NT3qQ4uRZoGiNv5GmvkqFbtPlgfDUKi/TcO
         CRxw==
X-Gm-Message-State: AOAM532T7yG7hnfDgZEicFaam+5bZPrflC7UFF3Ei0kgpcBjKPqUP+GC
	AiSsPEMlDxbH+rnqbFl9dC8oQd19/6hut9g6SKQ36HfFmNk6sQ==
X-Google-Smtp-Source: ABdhPJxdAmK4uiD8GmoBAsi8DNiegfM0CEL6ZXLaKGibly3VtpUveA7cJ3KO6ql02zSRbkpIIToHuecElz7pYMBWgPE=
X-Received: by 2002:a81:2684:0:b0:2f8:46f4:7c6d with SMTP id
 m126-20020a812684000000b002f846f47c6dmr19239426ywm.444.1652689102959; Mon, 16
 May 2022 01:18:22 -0700 (PDT)
MIME-Version: 1.0
From: Mikio Fukushima <mikio@dolphinsystem.jp>
Date: Mon, 16 May 2022 17:17:47 +0900
Message-ID: <CABfZwceh1KzO9770-48_wod=D-aAqCuvA5HO+L4shJnbebdnOQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: NUI6PDIGVV2HJND4BI5Y6OBCMU4W42KW
X-Message-ID-Hash: NUI6PDIGVV2HJND4BI5Y6OBCMU4W42KW
X-MailFrom: mikio@dolphinsystem.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Does X410 support phase-aligned and phase-corent?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NUI6PDIGVV2HJND4BI5Y6OBCMU4W42KW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2568400642356045414=="

--===============2568400642356045414==
Content-Type: multipart/alternative; boundary="000000000000e81f3605df1caa5c"

--000000000000e81f3605df1caa5c
Content-Type: text/plain; charset="UTF-8"

Hi all,
I'm considering to purchase a USRP X410 for one of research projects. the
objective of this project is MIMO operation, I have some questions.

Q1.
Does each channel on X410 support phase-aligned and phase-corent operation?

Q2.
Does each channel on multi X410s support phase-aligned and phase-corent
operation?

Q3.
What is "Limited performance"?

[3] Limited performance four-channel phase-coherent operation within a
single radio is under investigation

https://www.ettus.com/all-products/usrp-x410/

--000000000000e81f3605df1caa5c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,=C2=A0<div><div>I&#39;m considering to purchase a U=
SRP X410 for one of research projects. the objective of this project is MIM=
O operation, I have some questions.<br><br>Q1. <br>Does each channel on X41=
0 support phase-aligned and phase-corent operation?<br><br>Q2. <br>Does eac=
h channel on multi X410s support phase-aligned and phase-corent operation?<=
br><br>Q3.<br>What is &quot;Limited performance&quot;?<br><br>[3] Limited p=
erformance four-channel phase-coherent operation within a single radio is u=
nder investigation<br><br><a href=3D"https://www.ettus.com/all-products/usr=
p-x410/">https://www.ettus.com/all-products/usrp-x410/</a><br></div></div><=
/div>

--000000000000e81f3605df1caa5c--

--===============2568400642356045414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2568400642356045414==--
