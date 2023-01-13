Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 379BD66A2AA
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jan 2023 20:06:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 33BF8384233
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jan 2023 14:06:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673636813; bh=GC0szcdclJI6XXGcX4zgMl9cvvBuVbNYddQgk6zXrTw=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=iiGxN0+W00jYjOkhgEBeCQ9u9f4rzOoNCrvPdR8gRpg+7TU5J3Fij2G2I8H23PHc4
	 298XEOV0YCHrmx/fMAqogbqoKCUydK2OtoXspUrWbzdbglG85gMr46O0AgbZofneMH
	 zM7UqlAY2TG/55ygSEZDwQV21bw1ZEZkIIXZuElO3ofY6W/hoQNHMB7uKoUp+srm90
	 RZ+LNjuMpXs0U+yp3jztW42nPwOaPoLWp2mJDf6cP9O56z11rPIPTlENKxs2/goz+z
	 tsY9cUmFVLCRS6yFb3ShIAbJeb1hWwIHDsYkIpYcB8lKVbuHumoWI3dCJZViWUYIJU
	 dBsc41jX7kxGA==
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	by mm2.emwd.com (Postfix) with ESMTPS id DED2338418D
	for <usrp-users@lists.ettus.com>; Fri, 13 Jan 2023 14:06:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NTz6asco";
	dkim-atps=neutral
Received: by mail-oi1-f180.google.com with SMTP id d127so18390768oif.12
        for <usrp-users@lists.ettus.com>; Fri, 13 Jan 2023 11:06:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PnInp5K0w8kwNrrx4Sqro6GElqcHQhvUIW+r/1KfaIg=;
        b=NTz6ascohwbyaWV9V1D0QGEnLEU7WeGi62+ezegewjs0+NdLZtBJIlcoIJGdcwSmpb
         mdNR5PxApzRNLBgNjf14MZWf+f+3NylqgyJtLo6CURMKwq2op9cvPXa44qCuIt2IL9ym
         J2Y+pBoq9k6DlfHkDAyDA+Lr1Sr4EAuN3Mfh6CnaavDBY63VRy2ZZmn7FbzhKhFxEz39
         5yaEMvF0a3dGfIccKClctQwn/Spk+X78V2sF2jOB4kkiyJiO42JFelG2iOY0CAPKNtFo
         SVxjZzLzyJQ0+rHufxyJ6yFkWgZF+MKdppXL1B4RqWvQzwS5Vo2x90Y1v9bm0/GqGQLr
         4r0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PnInp5K0w8kwNrrx4Sqro6GElqcHQhvUIW+r/1KfaIg=;
        b=lxo3Kb37XzCA9lTcUl4VbGYNiUZULTskdIcJZGiNL5vkoXOFCYDyc0zOumfrj+2Ipn
         YYmFjIAJgSBoJ86nPflgBojyyE9ZENDyX+1snbD/cuGmO9hX6X3j11zFMu+3e9GSeygH
         mS4v7svDNj04L/VVPQEgb0cLhx6ByQSrKDunq2EbSI3K9JcW2kQqrM44bP0DdXWM6O71
         5mwiMcodK0cUtq8+AVd3FqBKOcE3wK2sQ1cDblwBcJaVJTgB5btGkeuehrNmvt4+XpP2
         8zZcPDXqayw+J7fR2SRDik3UXMekmU4x+O0KCT3TXwLPHyJzgZhYrqq9keVMAnML9G5O
         /rXA==
X-Gm-Message-State: AFqh2kp4N4ydcRzsKxynJP6HOlhOBadX6yl9meRk/aFS3NR/doFjhbMJ
	DVzDcuqVDTp42XHdrRoSxNByrJ8fT8pzLQGx1RuRNNDp
X-Google-Smtp-Source: AMrXdXug8G/ZtR5i47spSAS6W1UnyCk8cLAR9tbB3mXOhsX8aO9T1Iq9nU3VO3QpM8pvs8XcZe1XuFaZ21Vyn/2/fEA=
X-Received: by 2002:a05:6808:697:b0:35b:c6c4:7a33 with SMTP id
 k23-20020a056808069700b0035bc6c47a33mr5261707oig.266.1673636765028; Fri, 13
 Jan 2023 11:06:05 -0800 (PST)
MIME-Version: 1.0
From: ali siddig <alisiddig12@gmail.com>
Date: Fri, 13 Jan 2023 23:05:54 +0400
Message-ID: <CAKacFE=XTX6s0WraWSByBCJte_Gv1=xfVHikv3=4dMMbY8qxhA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: FNHVM7PFX3LEYIUCUZFKB4R76YCLPA3S
X-Message-ID-Hash: FNHVM7PFX3LEYIUCUZFKB4R76YCLPA3S
X-MailFrom: alisiddig12@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] TDD ofdm communications
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FNHVM7PFX3LEYIUCUZFKB4R76YCLPA3S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0347960441885229034=="

--===============0347960441885229034==
Content-Type: multipart/alternative; boundary="000000000000dcd4e805f229ecc8"

--000000000000dcd4e805f229ecc8
Content-Type: text/plain; charset="UTF-8"

Dear,
I  would like to build a time division duplexing (TDD)-based ofdm
communication transceiver using B200 mini. I have already built  ofdm
communication transmitter and receiver. Any suggestion on how to built, for
instance 1 m second TDD system on gnuradio.  Any information or similar
projects will be very helpful

BEST REGARDS

--000000000000dcd4e805f229ecc8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Dear,<div dir=3D"auto">I=C2=A0 would like to build a time=
 division duplexing (TDD)-based ofdm communication transceiver using B200 m=
ini. I have already built=C2=A0 ofdm communication transmitter and receiver=
. Any suggestion on how to built, for instance 1 m second TDD system on gnu=
radio.=C2=A0 Any information or similar projects will be very helpful</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">BEST REGARDS=C2=A0<br><div di=
r=3D"auto"><br></div></div></div>

--000000000000dcd4e805f229ecc8--

--===============0347960441885229034==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0347960441885229034==--
