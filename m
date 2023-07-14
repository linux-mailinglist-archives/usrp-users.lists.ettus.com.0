Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 576B1754025
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jul 2023 19:10:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 43819384A97
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jul 2023 13:10:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689354635; bh=kI+v7Pr0rqUgnEZp2ZrmgvQTBX2pw6jh8Qt0p6JUBD4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Sm04D+kaUA0Z5nHsQujVTzFsNiNyPbIsAcIWwHfGjQbR3l1YaG99g7oWcmglV1gTN
	 ry/vYt5TbxysVx0zFMXBKrc38Vv7Y0GNTkX4YJ6xxwfdj4Dm0Zg1pPdjMXWiRDJ2x2
	 guhVgFMUoxV2xCdZl9RUrbVMjUleKGcZoFEaicspG7YcQMvUmKT2xndJo5kXFUQCKy
	 zMNb9NjpmId279rSN/jleNguHHx5EjD/nZmznhmgwgyAwB1/UuPy/rhHojAQOLTu7G
	 qBMmutPOd7HjydlcyzMjAp5YFDRoXVQVHWaQBYS/pZmOMNopmbw7rm6qbiaQrGg8/D
	 kdxDVE+luH3FA==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id C44BD384590
	for <usrp-users@lists.ettus.com>; Fri, 14 Jul 2023 13:09:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KZsauBro";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-763a2e39b88so206413785a.1
        for <usrp-users@lists.ettus.com>; Fri, 14 Jul 2023 10:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689354598; x=1691946598;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HHbKY0q79VG3ol8s4Y8xO6aykl+t0ydzeo4q2lYzoRc=;
        b=KZsauBro9NHs9WCIWtZAF24mRA31/+6XWWdbXqgTyqo51c1RtzXHkMIP/RBSNGIJti
         ryyc+lge/EzdWVkGxr8A7KFGuoIZH5R9igZzncZKUXWCX9XfM/lx0tVr8CcnTgLQr0Aq
         CIBPGsZ4DGeBBt5YaLfPux/g81v+woyKLOw0no4By2T9t9+Q2Dj8lGxHg6uVhftD0Fno
         IIQqozSPxNiXNanpCJ62S98lZ4JsDrnKg2CEC/wwbvMMw7VlGCz9x5DnU4cMdIa8jDa5
         7m/GtR0mk6ANvYzHbhB45gfQ2HbDXzJRZMkXQ3rfxk7zCsdp2r5P2DUZ428rkFNr/lsC
         Hl5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689354598; x=1691946598;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HHbKY0q79VG3ol8s4Y8xO6aykl+t0ydzeo4q2lYzoRc=;
        b=CSL8Gt0fLamleE+EK+tigLVkleQM/aS6fvP4Tf9XMN0lLpTUI4eNgdsBai5lQxT0v6
         131XheGvpEpYwg/ie/gUNH1XzO1Zts9XPZZ71YEf+jH9ay27vLGZ792c6If9YU9HXZRG
         pfSZQqKu96EKtJgwur2ZJdJ9aigw6ICvrNeiNHXK2a+mjYZnrVJz49CDIobtRwWim87g
         yDjl2TnfSaLQzM+gmrgXolrDTXE3Wnps4ylDMA/tcUJeQ8e85A1y/dNbEVrtgYRgtMo7
         8br62O67jxLXmckFfju0upH4TpPe3zzKyX1H02s3I+lv8VHRPKpzWEZvOVAHIsbZx0lB
         LHwQ==
X-Gm-Message-State: ABy/qLYQ99deEQ6IrS6ROl39eilBf4HQ5qEYuXVGF8to9SIP5mP7fXRY
	sBEJXu6ccqMTO4oA11MaQv5VwgEz2S0=
X-Google-Smtp-Source: APBJJlFbSYN6KqhDyb3nfJuZGAfYWOVtYmMHR/9Quu3K3aB9UUQrqAnYAjTBAxJgVjSGKpTF828XDw==
X-Received: by 2002:a05:620a:4547:b0:767:a4b7:e59b with SMTP id u7-20020a05620a454700b00767a4b7e59bmr7335167qkp.46.1689354597852;
        Fri, 14 Jul 2023 10:09:57 -0700 (PDT)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id o4-20020a05620a110400b0076719d9baeesm3921893qkk.113.2023.07.14.10.09.57
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jul 2023 10:09:57 -0700 (PDT)
Message-ID: <7457b0e1-d10f-c90a-1af7-28be35eba57e@gmail.com>
Date: Fri, 14 Jul 2023 13:09:55 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <18952f3c350.b3f8b5c9203231.324478805634366465@uberasch.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <18952f3c350.b3f8b5c9203231.324478805634366465@uberasch.com>
Message-ID-Hash: VYLQGXZWBRBGE64T4SC7QSHFBWORWAMD
X-Message-ID-Hash: VYLQGXZWBRBGE64T4SC7QSHFBWORWAMD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: sc8 OTW Format supported on X310?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VYLQGXZWBRBGE64T4SC7QSHFBWORWAMD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3226718992627919723=="

This is a multi-part message in MIME format.
--===============3226718992627919723==
Content-Type: multipart/alternative;
 boundary="------------EfF20lK0n680VjVJkBl6VVLR"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------EfF20lK0n680VjVJkBl6VVLR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 14/07/2023 01:50, Jack Gallegos wrote:
> I am trying to understand the OTW formats available on the X310. Does=20
> it support signed complex 8-bit sampling (sc8 wire format) for a=20
> receive stream? I am reading forum/listserv posts from ~2018 saying=20
> X310 does not support it on account of the 10Gig link being enough to=20
> stream at 200Msps @ 16 bit sampling, thus 8 bit sampling to get a=20
> higher sample rate being irrelevant, but I wonder if that has changed=20
> since then.
>
> Jack Gallegos
>
That statement is still true.=C2=A0 10G "plumbing" (host NICs, etc) is qu=
ite=20
affordable these days, so there's little incentive to take
 =C2=A0 up room in the FPGA for doing the 8-bit scaling to double the=20
supported sample rates over 1GBE.



--------------EfF20lK0n680VjVJkBl6VVLR
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 14/07/2023 01:50, Jack Gallegos
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:18952f3c350.b3f8b5c9203231.324478805634366465@uberasch.=
com">
      <meta content=3D"text/html; charset=3DUTF-8" http-equiv=3D"Content-=
Type">
      <div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif;
        font-size: 10pt;">
        <div>
          <div style=3D"font-family : Verdana, Arial, Helvetica,
            sans-serif; font-size : 10pt;">
            <div>I am trying to understand the OTW formats available on
              the X310. Does it support signed complex 8-bit sampling
              (sc8 wire format) for a receive stream? I am reading
              forum/listserv posts from ~2018 saying X310 does not
              support it on account of the 10Gig link being enough to
              stream at 200Msps @ 16 bit sampling, thus 8 bit sampling
              to get a higher sample rate being irrelevant, but I wonder
              if that has changed since then. <br>
            </div>
            <div><br>
            </div>
            <div class=3D"x_1509065667zmail_signature_below">
              <div id=3D"x_1509065667">
                <div>Jack Gallegos<br>
                </div>
                <br>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    That statement is still true.=C2=A0 10G "plumbing" (host NICs, etc) i=
s
    quite affordable these days, so there's little incentive to take<br>
    =C2=A0 up room in the FPGA for doing the 8-bit scaling to double the
    supported sample rates over 1GBE.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------EfF20lK0n680VjVJkBl6VVLR--

--===============3226718992627919723==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3226718992627919723==--
