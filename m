Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1EA490AB1
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jan 2022 15:48:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 47BCF3853E6
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jan 2022 09:48:16 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Df6FnbK7";
	dkim-atps=neutral
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id D38873850D7
	for <usrp-users@lists.ettus.com>; Mon, 17 Jan 2022 09:47:20 -0500 (EST)
Received: by mail-qt1-f171.google.com with SMTP id y10so19403633qtw.1
        for <usrp-users@lists.ettus.com>; Mon, 17 Jan 2022 06:47:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=exz+wWZCbV+JrMOU7AKwhqugcgXM76RB8rg17eUSfLA=;
        b=Df6FnbK7Wem7btPZAyD/HBaCZFNRqaZYnKJORw6XoPenPDmvGAE6ZphQe+iHEDCmY6
         P8zt4nOThL/q38YskaJUDtTimHHRVjUGW6bHIOOepCkMQbz0awIiP9QpvaUBlU9XMy1I
         nmuNBzaLVqMtpObX9Okth4uAOeLF1E6hISgUFmezWW/CUCK+qydGrHQf2UvvHe/jHo9S
         kunB8zWy9qdKdDPr1tdoPaKdEFZCIJo5LbPMwekNwv5x7ve7rnLFbKC63/mug1Z1sGIO
         CpfF0LK1pIr6OhEJaoZINt0F9pgEpgg2sy656N6UPP63h08aBPCkP6fhy8FaYoTLr42a
         Jr5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=exz+wWZCbV+JrMOU7AKwhqugcgXM76RB8rg17eUSfLA=;
        b=Rwi3yhZSJVlOaLPyIxz7cNkdgJDunIHaQMVCECYHssgOaNq5mxrMp7HmNC865CnAmZ
         Bt0YWiI0B4gft04eMBtmfqE/vFqQTQoUdCU17b6gwvP8zo/2Mocvq0KmXUPor91vsqXz
         T6ACedEQ5UJ75prN1Tca4vJGLubqovK0onG4lSCUVJsbnCUxUbd+JdWFDgBjoIiNe9uO
         EWF8XvxIpG0cmSsugPYGSp+CSjGG5GG6OPUBS74Z7/giHLZYFdl+xnxviJofTf9bo0SE
         XO9pPUHOx/rkLCI3QsfU6YLD3JGYgqAT2OaonBvxyLJc8B1hNvE4/bRs+zSRyLKQ50Jf
         oe5Q==
X-Gm-Message-State: AOAM530xVLQCqYn90Za6ewhxOPYj4I6CcaUmwZqzGB2ENY8CoKeoLmX3
	T+bjM6BJGsAPXP38F8HLowEfkNsMGOV/CA==
X-Google-Smtp-Source: ABdhPJxTXNcVUY6G6wAj2+IFKJjZepXgdgqeSiLJRcj7gobqiuX+YYY8noqyv46ebPz0rOG17l0QRQ==
X-Received: by 2002:ac8:5dc6:: with SMTP id e6mr14094247qtx.343.1642430840229;
        Mon, 17 Jan 2022 06:47:20 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id s9sm9006171qki.99.2022.01.17.06.47.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jan 2022 06:47:19 -0800 (PST)
Message-ID: <2c7b322c-2614-2f05-e755-ab04b5b05756@gmail.com>
Date: Mon, 17 Jan 2022 09:47:19 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Ivan Zahartchuk <adray0001@gmail.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAPRRyxtP9mJYEhQzuwBLffq4R-Q0oouw+mNx0PCFwTT4Raf8fg@mail.gmail.com>
 <CAPRRyxtAZZ1ou7U1A2o3-eEdU_P0_5-04RP_mf45puJAwOQeBA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAPRRyxtAZZ1ou7U1A2o3-eEdU_P0_5-04RP_mf45puJAwOQeBA@mail.gmail.com>
Message-ID-Hash: O57DESDXPPK6TY2EYVGOUSOKREVK7VB4
X-Message-ID-Hash: O57DESDXPPK6TY2EYVGOUSOKREVK7VB4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fwd: Enabling fast lock USRP N210.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O57DESDXPPK6TY2EYVGOUSOKREVK7VB4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1462427608076565546=="

This is a multi-part message in MIME format.
--===============1462427608076565546==
Content-Type: multipart/alternative;
 boundary="------------0JnALpLVx0NiZQhqtJ0AnAhg"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0JnALpLVx0NiZQhqtJ0AnAhg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-17 09:10, Ivan Zahartchuk wrote:
> Sorry to insist, but it is very important for me to know the answer to=20
> the question.
>
>
Ivan:

I did NOT see this message on the list when you first posted it, I=20
apologize.

You mention N210, but NOT the daughtercard involved.

The N210 has had very little new work done on it in the last several=20
years, and is in "maintenance" mode, so updating to a new UHD version
 =C2=A0 is unlikely to change any of its inherent properties.

With 8-bit samples over ethernet on N210 you can support 50Msps, which=20
is half of the total bandwidth you need.=C2=A0 My *guess* is that you wil=
l=20
have a very
 =C2=A0 hard time doing what you need to do with the N210 hardware,=20
regardless of the daughtercard.=C2=A0 The PLL synthesizers just don't loc=
k=20
that fast.

> ---------- Forwarded message ---------
> =D0=9E=D1=82: *Ivan Zahartchuk* <adray0001@gmail.com>
> Date: =D0=BF=D1=82, 14 =D1=8F=D0=BD=D0=B2. 2022 =D0=B3. =D0=B2 18:03
> Subject: Enabling fast lock USRP N210.
> To: usrp-users <usrp-users@lists.ettus.com>
>
>
> Hello. I need to simulate a heavy RF environment. It is necessary to=20
> generate a chirp signal in a 100 MHz band with a total speed of one=20
> run of about 300 =C2=B5s. But I only have USRP N210. In this regard, I =
have=20
> several questions.
> =C2=A01. Is it possible to enable fast lock using uhd 4 drivers?
> 2. Is it possible to generate such a structure with such time?
> =C2=A0I have a bad relationship with FPGA....

--------------0JnALpLVx0NiZQhqtJ0AnAhg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-17 09:10, Ivan Zahartchuk
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAPRRyxtAZZ1ou7U1A2o3-eEdU_P0_5-04RP_mf45puJAwOQeBA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <pre class=3D"gmail-tw-data-text gmail-tw-text-large gmail-tw-ta"=
 id=3D"gmail-tw-target-text" style=3D"text-align:left" dir=3D"ltr"><span =
class=3D"gmail-Y2IQFc" lang=3D"en">Sorry to insist, but it is very import=
ant for me to know the answer to the question.</span></pre>
        <br>
        <br>
      </div>
    </blockquote>
    Ivan:<br>
    <br>
    I did NOT see this message on the list when you first posted it, I
    apologize.<br>
    <br>
    You mention N210, but NOT the daughtercard involved.<br>
    <br>
    The N210 has had very little new work done on it in the last several
    years, and is in "maintenance" mode, so updating to a new UHD
    version<br>
    =C2=A0 is unlikely to change any of its inherent properties.<br>
    <br>
    With 8-bit samples over ethernet on N210 you can support 50Msps,
    which is half of the total bandwidth you need.=C2=A0 My *guess* is th=
at
    you will have a very<br>
    =C2=A0 hard time doing what you need to do with the N210 hardware,
    regardless of the daughtercard.=C2=A0 The PLL synthesizers just don't
    lock that fast.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAPRRyxtAZZ1ou7U1A2o3-eEdU_P0_5-04RP_mf45puJAwOQeBA@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">---------- Forwarded mess=
age
            ---------<br>
            =D0=9E=D1=82: <b class=3D"gmail_sendername" dir=3D"auto">Ivan=
 Zahartchuk</b>
            <span dir=3D"auto">&lt;<a href=3D"mailto:adray0001@gmail.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
adray0001@gmail.com</a>&gt;</span><br>
            Date: =D0=BF=D1=82, 14 =D1=8F=D0=BD=D0=B2. 2022 =D0=B3. =D0=B2=
 18:03<br>
            Subject: Enabling fast lock USRP N210.<br>
            To: usrp-users &lt;<a
              href=3D"mailto:usrp-users@lists.ettus.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">us=
rp-users@lists.ettus.com</a>&gt;<br>
          </div>
          <br>
          <br>
          <div dir=3D"ltr">Hello. I need to simulate a heavy RF
            environment. It is necessary to generate a chirp signal in a
            100 MHz band with a total speed of one run of about 300 =C2=B5=
s.
            But I only have USRP N210. In this regard, I have several
            questions.<br>
            =C2=A01. Is it possible to enable fast lock using uhd 4 drive=
rs?
            <br>
            2. Is it possible to generate such a structure with such
            time?<br>
            =C2=A0I have a bad relationship with FPGA....</div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>
--------------0JnALpLVx0NiZQhqtJ0AnAhg--

--===============1462427608076565546==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1462427608076565546==--
