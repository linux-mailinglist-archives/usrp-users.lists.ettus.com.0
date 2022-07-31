Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A3A585F99
	for <lists+usrp-users@lfdr.de>; Sun, 31 Jul 2022 17:53:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 25D83383879
	for <lists+usrp-users@lfdr.de>; Sun, 31 Jul 2022 11:53:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659282823; bh=9+DxeyJjiLy44o4WB3rinwLQtpe0x3r73d6TVKcKQiE=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=zBGN/1nvP8WTe/UROge0WOF37H260MHEFYOXWlcNfr+2xJ3KcPTk7UMwCzxOowUkg
	 zPzF42jn95hDTdGA6GOMQDxpu998K9DdfR524Rbgbc60NbZ/ZjWxP3ejnp/T2Z0U+v
	 929VixBYzNBniBfxM5n/U7tMnrx0AUmoMyINTwkFehIhFC02y20f2PRHcmTG5rxtJn
	 nQfEniSF77oengzCTmFznumORzCfBHRZcXfnIL5BnFtAYS7gUr4ShgV7H721V2VnV4
	 g6OtYKPhHUjAOXHwNprY6Jd0nNRlLcjySNQc01MO/PdR5TIGmvGrO5UI5ceNp39kRq
	 xSYGRh/zmDb0Q==
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	by mm2.emwd.com (Postfix) with ESMTPS id E0F3238368C
	for <usrp-users@lists.ettus.com>; Sun, 31 Jul 2022 11:52:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dMFIo7pU";
	dkim-atps=neutral
Received: by mail-yb1-f169.google.com with SMTP id j63so15262115ybb.13
        for <usrp-users@lists.ettus.com>; Sun, 31 Jul 2022 08:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=1sL1ABCql8JwCocB7oeZk5FU1aLwdGo1VF1nAuMuaAM=;
        b=dMFIo7pUcy3L0GSVDhwQaJFBY9QYbTF6D8351lIfaVFc5NYUtuUo++Qf+5jlitkhRa
         aNW3P7KTtSVcG/ZM5FBk7dpHZmv26ZLuFDmhHfk0Ex6LjnHb01WktD1mSYzjoPDfHj39
         9t7tKYhzxPpNDTiUwgYU2kD6AJa45ye6ASFAL6GnWhBEtZmFtxi7pt8+9/kLMERna4D3
         a2AMtDYstZXgnHTwdT0Xrq32x+9HEwe61vyD2Iohh+69/uZhWAchVjSQVl+sph90693l
         sA0AdQcZhy8RucaGrUbDjOqrG84Gv/a79Yijs0Cche0oJoflYtYNv1F9rm2C/HoiaeSq
         fPMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=1sL1ABCql8JwCocB7oeZk5FU1aLwdGo1VF1nAuMuaAM=;
        b=FKr+gmhZByauO6uSKinggp2eh8A3tbIRDSylu5wtB0jsPARmBMWK1Wmxaz5zOF7FXq
         WxNfV8coq0cyoYcv571xWrX9yNqT4UrDK0G4qITPLcWOKRcuTbcoqYc3y4LjgDiKzM/K
         V3aw9+6QpjWHTkqgpjA/7R+GSiiVe/7MVEa83ZSVRYwDOwrxW5fkPUDPa1W63r38p0hO
         gf7GtIeju8ujNiEAT0C6S9+BRP8/5QJztzJTa0ITDLqEYSmXRLgPWHs5Wxyku/1seFyW
         ibj9Hk6LopQiCsVSzXogx3eW6mDwyuQC//kLV5i7CvEUSeB9rfkJxo9nqXWjKx1QqOPW
         afag==
X-Gm-Message-State: ACgBeo32hkdy/Ts4BCdwOUyeLuZqoA05P8lcP63Yuw8cs8Q1EC556nvu
	TC1HUTJaJ1XKHUfqowN5r1CA5GhC4WAwRD8euTCSjttgR8OdFNdTRVw=
X-Google-Smtp-Source: AA6agR4ajB8dx/VnSBtS51UfFp/Y9Q/mFTTKPTgvgPmfZQGVcnb1sKCueu/Zzkt+9nfRtdfwdbCDQRCjOSXGZjWMmMY=
X-Received: by 2002:a25:a41:0:b0:673:746:76ef with SMTP id 62-20020a250a41000000b00673074676efmr9017356ybk.132.1659282754303;
 Sun, 31 Jul 2022 08:52:34 -0700 (PDT)
MIME-Version: 1.0
From: sp <stackprogramer@gmail.com>
Date: Sun, 31 Jul 2022 20:22:23 +0430
Message-ID: <CAA=S3Ps9k5kMVWoh4QTvkJ4+BhDnKoXMBxP0cuQFoj3XdLNZGQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: R7N27SR37EPZKMJLG7K6FR3FKBXOMBNO
X-Message-ID-Hash: R7N27SR37EPZKMJLG7K6FR3FKBXOMBNO
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How can I define a global reg variable in Verilog between RFNOC blocks?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R7N27SR37EPZKMJLG7K6FR3FKBXOMBNO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5980348322869856583=="

--===============5980348322869856583==
Content-Type: multipart/alternative; boundary="00000000000026fbe705e51bdfe6"

--00000000000026fbe705e51bdfe6
Content-Type: text/plain; charset="UTF-8"

How can I define a global reg variable in Verilog between RFNOC blocks?
I developed two RFNOC blocks: RFNOC block A, and RFNOC block B
How can define a reg variable that shares between RFNOC blocks in USRP?
Can anyone guide me?

I study about global reg variable in the Verilog module, see below
link,  but I can not do it for RFNOC blocks...
How can implement this mechanism in RFNOC blocks
https://www.edaboard.com/threads/how-to-define-global-variable-in-verilog.174172/

Thanks in advance

--00000000000026fbe705e51bdfe6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">How can I define a global reg variable in Verilog between =
RFNOC blocks?<br><div>I developed two RFNOC blocks: RFNOC block A, and RFNO=
C block B</div><div>How can define a reg variable=C2=A0that shares between =
RFNOC blocks in USRP?</div><div>Can anyone guide me?</div><div><br></div><d=
iv>I study about global reg variable=C2=A0in the Verilog module, see below =
link,=C2=A0=C2=A0but I can not do it for RFNOC blocks...</div><div>How can =
implement this mechanism in RFNOC blocks</div><div><a href=3D"https://www.e=
daboard.com/threads/how-to-define-global-variable-in-verilog.174172/">https=
://www.edaboard.com/threads/how-to-define-global-variable-in-verilog.174172=
/</a><br></div><div><br></div><div>Thanks in advance</div></div>

--00000000000026fbe705e51bdfe6--

--===============5980348322869856583==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5980348322869856583==--
