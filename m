Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 092546EFDAB
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 00:54:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2984F38403C
	for <lists+usrp-users@lfdr.de>; Wed, 26 Apr 2023 18:54:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682549697; bh=bKcKn5LaiHW8epy4lXGM+Rja9YU3Ec+Nn2sjGSmGbvc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=dwn+Nke4pov8QledxfVzg1hTdiXx2BqAxls5s8+y0uDwnEk4nyLUV19Mk8vQ1TJwW
	 tqw9DpER/PvgS2LpsMFlMJmVOY6afiT50Q3P3rKtE164xUWVo3UnEeJKGZxyr0aFiZ
	 aRM+lWqxAU2nJ91RgKPsgzVF6AJoYAFFr2rGU5FxfXPK4WdZScY1OgiwF3ze4fmy2w
	 IVyEHKtbVxz6QMhNYbHo/c/Hh+aQcdWX0KXK5/tJmIEbALeh5vU0yeHVKOlOK2MCqh
	 9Vz9PltJmF6PVlaORJ/9pYg6GMzuCbkURmvKKOcBtfD86wCmfClefBx4ezzOr5CrA/
	 Cxiw+7XonLuuA==
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 7DB1A384157
	for <usrp-users@lists.ettus.com>; Wed, 26 Apr 2023 18:53:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aHz1+aYn";
	dkim-atps=neutral
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-5f95cedb135so34616176d6.1
        for <usrp-users@lists.ettus.com>; Wed, 26 Apr 2023 15:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682549582; x=1685141582;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1yd7aPORcBtugLCiWk1qaYI+hhEH+/SvlPnfqaMo6Uo=;
        b=aHz1+aYnO8eNvALf+8HBldaOoGtBgJIMAsbAZhbjLeIr9TZCI2SUCji2XPZgPMOVkJ
         hEjYk2S4TlNHNlJd+FIwBf8EkC0t1M0A/V/mElJXlm3pKApNldTiNkwt8wJL3KL/Rjnk
         ezEtGvTcOz5igXdffx2VdaHAzY61fbAZN/gns13xmo4+Pb6RRDjEt/JnRZq+I50mE6Hz
         LtLOQ+f6RAFd8mX05SkTLAycDcVslyaUogRZ6cqySoiUtLG2NrSuUSpEtB2GRjLI+Ehy
         xyf2aNs1RSASsoxaPTFLCABdF7EQY9z0RmBPkCh0bcYuxQnXblOSTl5xEcOiYAaBk3Lb
         kM8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682549582; x=1685141582;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1yd7aPORcBtugLCiWk1qaYI+hhEH+/SvlPnfqaMo6Uo=;
        b=HcapbdPQXAZ0zEfX/y+FrLmJkUO5xZWGGdtCYlx2q+36NYBcoq4nvGmrDj0cWy3IEV
         g05QtBXjz1MfrEok9+kAyTEhRJoFfEr9UHaZZrqbTAyE2f33kfGHoZksusRQjmK6QdIh
         2jHmStTQOiZ2hRDOYmL4JR2EyWn2CIXKzWORKLEwGI95EOIxbo1ZO7woHP7YRgcjjOi0
         yHRaDhG5CM0mvD1IDkNX1N4pOGBM2G1TQYckQg8LQUtG2rH7z7OdegYFDty/FVEupfZ9
         l5kr+x9JtauYKKQJ6RRbFlyFNkDMvPyE3ro6azbJjXMTRXQlyCyjGOnJRsKnKnc8UY5F
         Nt6w==
X-Gm-Message-State: AAQBX9dbZ9vDm2V6QNVv07AtKZikGkCS5MqPCm17ujwjNqfE+1YB8ucG
	22X+jumgsrVZ1S5bAKoT8mV7H2630wI=
X-Google-Smtp-Source: AKy350YqfuThMljUeHNDooFEoucEn0VW3g9LAwHF3OEjF+ggPeTY91vfG3P3M6Fw0BLyYdYWorXBfw==
X-Received: by 2002:a05:6214:1c43:b0:5e0:ad80:6846 with SMTP id if3-20020a0562141c4300b005e0ad806846mr44417820qvb.0.1682549581657;
        Wed, 26 Apr 2023 15:53:01 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id 83-20020a370a56000000b00746b2ca65edsm5488992qkk.75.2023.04.26.15.53.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Apr 2023 15:53:01 -0700 (PDT)
Message-ID: <60122539-5cca-1168-53a1-6b877f45421c@gmail.com>
Date: Wed, 26 Apr 2023 18:53:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SJ0PR09MB91268F4BF0C27FE2E41A1846EC659@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SJ0PR09MB91268F4BF0C27FE2E41A1846EC659@SJ0PR09MB9126.namprd09.prod.outlook.com>
Message-ID-Hash: VPWHC2CWZA72FSM5LTIZCAUI7OKOBK2I
X-Message-ID-Hash: VPWHC2CWZA72FSM5LTIZCAUI7OKOBK2I
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Split USRP (X310, N231) between two PCs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VPWHC2CWZA72FSM5LTIZCAUI7OKOBK2I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7077082386687137322=="

This is a multi-part message in MIME format.
--===============7077082386687137322==
Content-Type: multipart/alternative;
 boundary="------------TokyuSkrBOQ7yJnrfaVRVCFz"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------TokyuSkrBOQ7yJnrfaVRVCFz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/04/2023 18:31, Eugene Grayver wrote:
> How much would work would it take to allow two different PCs to each=20
> control one of the channels on the X310?=C2=A0 Would the work be mostly=
 on=20
> the host (software) side, or will some FPGA work be required?=C2=A0 =C2=
=A0There=20
> is no issue on the RX side (with the recent UHD updates to support=20
> streaming to arbitrary IP).=C2=A0 The issue is with control (e.g. set=20
> sample rate) and with TX flow control. One use case would be two=20
> independent modems each processing the full 200 Msps from the separate=20
> 10 GbE ports.=C2=A0 I guess one could always just buy another USRP but =
it=20
> seems wasteful/inelegant.
>
>
There's a fair amount of shared "housekeeping" between the FPGA and the=20
UHD multi_usrp instance in the host
 =C2=A0 computer.=C2=A0 Making that work in a "distributed" way while sti=
ll=20
providing "sanity" guarantees would be, I'm guessing,
 =C2=A0 quite a bit of work.=C2=A0 Not impossible, but "quite a bit", and=
 the=20
standard FPGA image would swell considerably I
 =C2=A0 would imagine.


--------------TokyuSkrBOQ7yJnrfaVRVCFz
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/04/2023 18:31, Eugene Grayver
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR09MB91268F4BF0C27FE2E41A1846EC659@SJ0PR09MB9126.namprd09=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        How much would work would it take to allow two different PCs to
        each control one of the channels on the X310?=C2=A0 Would the wor=
k be
        mostly on the host (software) side, or will some FPGA work be
        required?=C2=A0 =C2=A0There is no issue on the RX side (with the =
recent
        UHD updates to support streaming to arbitrary IP).=C2=A0 The issu=
e is
        with control (e.g. set sample rate) and with TX flow control.=C2=A0
        One use case would be two independent modems each processing the
        full 200 Msps from the separate 10 GbE ports.=C2=A0 I guess one c=
ould
        always just buy another USRP but it seems wasteful/inelegant.</di=
v>
      <div class=3D"elementToProof">
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);">
          <br>
        </div>
        <div id=3D"Signature">
          <div>
            <div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-fa=
mily:
              Calibri, Arial, Helvetica, sans-serif; font-size: 12pt;
              color: rgb(0, 0, 0); background-color: rgb(255, 255,
              255);">
              <p><span style=3D"font-family: Arial, sans-serif; font-size=
:
                  10pt; color: black;"><span id=3D"ms-rterangepaste-start=
"></span><span
                    style=3D"font-family: Arial, sans-serif; font-size:
                    13.33px; color: rgb(0, 0, 0);"></span></span><br>
              </p>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    There's a fair amount of shared "housekeeping" between the FPGA and
    the UHD multi_usrp instance in the host<br>
    =C2=A0 computer.=C2=A0 Making that work in a "distributed" way while =
still
    providing "sanity" guarantees would be, I'm guessing,<br>
    =C2=A0 quite a bit of work.=C2=A0 Not impossible, but "quite a bit", =
and the
    standard FPGA image would swell considerably I<br>
    =C2=A0 would imagine.<br>
    <br>
    <br>
  </body>
</html>

--------------TokyuSkrBOQ7yJnrfaVRVCFz--

--===============7077082386687137322==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7077082386687137322==--
