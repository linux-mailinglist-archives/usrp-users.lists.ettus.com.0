Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB11364BEB
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 22:48:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C30A9383F5D
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 16:48:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="CrmnAIqo";
	dkim-atps=neutral
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 5A75B383CB0
	for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 16:47:49 -0400 (EDT)
Received: by mail-pf1-f182.google.com with SMTP id d124so23982452pfa.13
        for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 13:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=NZUeMR4Q29yQ7MIKqz/6+ojVJCsYKY0JcX7ZDRlCLek=;
        b=CrmnAIqoFpBWIKPn3hfvIQI9qFklefMZU04rZFvFJqVUwx/uGLcdLDyWu54olXjrvs
         JmpC1S9fMQZ7wrusHw6mBBmz1sn4cumS80VrdAIBcivc93uEqy6+1Bat7OitS+BCoZ72
         PAP2vFpjQ37noeZE4jeE74YjKheG2VqHg1OxGoEToYUeAV9wMSwN5BBX0nVnV681XaMC
         ZgAJWJFGRscIIMNlMJtD7ImKmG9XuI4FquQ8c385l6fIrmZlEApJUKqzkFwULZAwF0+2
         qgbu0suEg8b93BKCans0d8cSeU2SzyNHqBy++e7IGujWAu6C40K1fbOfJxtanOnYV2Li
         JRog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=NZUeMR4Q29yQ7MIKqz/6+ojVJCsYKY0JcX7ZDRlCLek=;
        b=XD9l7zxFekDqsEg1Rf7qd04CJsvc8wMkQW/9LHC1VC1SelFfoRSdIcGsUXTGOzz6Oq
         rubDJP1TOEnrnH5mBQvKhEVShVnxqlPjNclLhqNn64tlKPfZDise1ijHPRLJdRfHqg3V
         Y4a4bLaL1wKjZ2AgRpT+AAKQOz2VVuB6hH+A5hH8tzH+StFvhyZcy8Rdhhyj88PUbp4s
         yHhC2lyXy3yrZDhCESWhc19U6luAs8QMkjnivmjzGfPE35lNqss/j+LCqbFy5sJVfiXi
         p3LgVsH2VhxFi9rG6cVVgQ5iyyWp0vDuGF5eY2gS9DHhYyG/dCF0xJyWs8vpoOR9tW/O
         aJUQ==
X-Gm-Message-State: AOAM531PzHyOw2v2ex8Xy0E9k8zyCCvQqavJxlQza8qkkLwR0mDbHv7+
	MmwuG1Kiitho2yaxOM42ROR5Iu9/zaF3POy6HyH2v+daV7CFL0Hnqpc=
X-Google-Smtp-Source: ABdhPJwIImQ3vjGpEpnNUJGM6C/+R1tE7Wh3HPbWF0HJGlODASCPHdNPlMHaJLFJW/T7/ZCRmnog3PldTYsOpWfyF6k=
X-Received: by 2002:a63:e30a:: with SMTP id f10mr13496286pgh.167.1618865267867;
 Mon, 19 Apr 2021 13:47:47 -0700 (PDT)
MIME-Version: 1.0
From: LoyCurtis Smith <ljsmith9@ncsu.edu>
Date: Mon, 19 Apr 2021 16:47:37 -0400
Message-ID: <CAKhiL6W-8cDDkQxLP3vDJZAN2VSmGuJP0cO10F_iBd-Qv7gfwg@mail.gmail.com>
To: USRP-users@lists.ettus.com
Message-ID-Hash: SGEBTHCPJQTFEAWYOHRCMZDDCHGIVUH5
X-Message-ID-Hash: SGEBTHCPJQTFEAWYOHRCMZDDCHGIVUH5
X-MailFrom: ljsmith9@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] 6GHz Tests
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SGEBTHCPJQTFEAWYOHRCMZDDCHGIVUH5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5574042376708185567=="

--===============5574042376708185567==
Content-Type: multipart/alternative; boundary="0000000000003b27a005c05971ba"

--0000000000003b27a005c05971ba
Content-Type: text/plain; charset="UTF-8"

Hey,

I am trying to measure within the 6GHz frequency range with a USRP x310
with a CBX-120 daughterboard. I am in need of an omni-directional antenna
that is capable of up to 6 GHz as well.
So far, I have come across the following 6GHz capable antennas:

   - MPDP2.5/3.5/4.5 - manufacturer Hascall-Denke
   - TG.35.8113W - manufacturer Taoglas
   - ANT-W63WS1 - manufacture Linx Technologies

Has anyone tried any of these with a USRP x310? or does anyone have any
recommendations?

V/r

LoyCurtis Smith

--0000000000003b27a005c05971ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey,=C2=A0</div><div><br></div><div>I am trying to me=
asure within the 6GHz frequency range with a USRP x310 with a CBX-120 daugh=
terboard. I am in need of an omni-directional antenna that is capable of up=
 to 6 GHz as well.=C2=A0</div><div>So far, I have come across the following=
 6GHz capable antennas:=C2=A0</div><ul><li>MPDP2.5/3.5/4.5 - manufacturer H=
ascall-Denke</li><li>TG.35.8113W - manufacturer Taoglas</li><li>ANT-W63WS1 =
- manufacture Linx Technologies</li></ul><div>Has anyone tried any of these=
 with a USRP x310? or does anyone have any recommendations?</div><div><div =
dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><d=
iv dir=3D"ltr"><div><div dir=3D"ltr"><font color=3D"#073763"><br></font></d=
iv><div dir=3D"ltr"><font color=3D"#073763">V/r</font><div><span style=3D"b=
ackground-color:rgb(255,255,255)"><font color=3D"#073763"><br></font></span=
></div><div><span style=3D"background-color:rgb(255,255,255)"><font color=
=3D"#073763">LoyCurtis Smith</font></span></div></div></div></div></div></d=
iv></div>

--0000000000003b27a005c05971ba--

--===============5574042376708185567==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5574042376708185567==--
