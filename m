Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFAC6E18DC
	for <lists+usrp-users@lfdr.de>; Fri, 14 Apr 2023 02:13:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5899F38408E
	for <lists+usrp-users@lfdr.de>; Thu, 13 Apr 2023 20:13:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681431226; bh=xtdmwYGpNx2zeoawIlAPs8znNBrBSVl0kJ7pLMFhVkY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=CWHH9Q5xkVwKC1iTmRRUKBjPsTEzHuaE5FsXp/DSK6dOgAHiO+CbowLiJtW4j0gb2
	 P5HEQoZzFlCIMLDZduJSCFoBaeop09GXTRzvPWxG0SVEMJ1efHaRyA6VgKAiDnv1XR
	 ucL3C+t0NW9kpf1iCxKzkPOHDbXt31VHRVMsVm31ZD1MIkRVqp2cf5yeP29rsmZnJW
	 qY3q7bP82TWQ/ZztgMTPtYaWtpBhmpha/LrhOIfvHCrlK4gshaL3zH6eRit1xserIo
	 vgJsBTdjpi23bhnK1L45nz5uc3YshViE/J8PFK0radbP7jdgddQIKvwob42aNJBjBw
	 jpXi7Z/FnUELw==
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id D1855383F00
	for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 20:13:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LFGKQUsK";
	dkim-atps=neutral
Received: by mail-qt1-f175.google.com with SMTP id bn8so14981760qtb.2
        for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 17:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681431181; x=1684023181;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zGDZ1rSEmcU8+eDkKg1kYdUMppJNmckq8T1K9pYj5C0=;
        b=LFGKQUsKm4Ll0RnVoJBQXKUkNVum3ZJuoGDAQMih+PUn3aDq2RBcm6L8IPMDGsQgkK
         JChkpjRldXIMTdE4qV3qxhCW6jdhZjQ5ta7/Zj7x6EQjojoMl+mCDCHc0EheMVmJmrPk
         UQ5zG9fEupQEFKfiSkoPwlVg6Nql/MLunnnFxCB1TklqMi8T8ZFQysnuI2i0et5/Hi54
         yc/kQHOVucvMIBsmVtLAjUXU7cV0+4rrVPPaawUiN3WgT/GqvF7uerNk6sfIzJgNb5uH
         iuRyN9Oi/KIy0ZkzELFln3FzurI449ijq7Vf+ZQbri3+R0/kOjr6VGyzXzMt8ebonCN6
         W+bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681431181; x=1684023181;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zGDZ1rSEmcU8+eDkKg1kYdUMppJNmckq8T1K9pYj5C0=;
        b=fimXLSgYaSUMguNsgH40/nEx9rUYRGWZDzJVrkQAAAvA6P6Nsg7l/F3K88puSNPwHS
         V/J6pQTIGktVSV4xB+6Z2n0ouJhbMXm4ke/AavaqMqyp2IlhNjUuN8ZHVne//p1E1Q01
         ryOm+a1BFoW9lKkiUtFUCKs0Nb8+fg2CR7t+ohFCWVeEcOa3L61mtbCsyX6uUsR19Jff
         6bN/22CxwS8STGGUYoFnfNU72k+2JkogjJbN0Do4aDYAUYgAvCLqo6EtXTkRNfzE1gQX
         Qp+N5FNTkJc1fP+b0Z1pLIyPe32Rj/GXB9TY8a73yTHfSnZtX3U0Ex67wW8HtdBB2eMm
         Csqg==
X-Gm-Message-State: AAQBX9eYeBIHoMLiYJRdjNzWW9s6DBLmUD6KsrHQpIX+qlSKThwI9O/C
	oWViM0YfJZ3ZO5ByP7GlmToPTQjo6Bo=
X-Google-Smtp-Source: AKy350a7SFUxc0/Jq824srUptxH5w7RfftZE3k/RyKyggWKpifsp9WS4dIGCw8U/X+D8KsH3f98mrg==
X-Received: by 2002:ac8:5bd5:0:b0:3d3:95fd:9085 with SMTP id b21-20020ac85bd5000000b003d395fd9085mr6597027qtb.42.1681431181167;
        Thu, 13 Apr 2023 17:13:01 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id e20-20020ac84b54000000b003e37e0a3d89sm858652qts.42.2023.04.13.17.13.00
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Apr 2023 17:13:00 -0700 (PDT)
Message-ID: <151bb74b-8db8-095d-c514-31adc8c710e1@gmail.com>
Date: Thu, 13 Apr 2023 20:13:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MW5PR22MB35334DE2B04FC917DEB90DF6CF989@MW5PR22MB3533.namprd22.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MW5PR22MB35334DE2B04FC917DEB90DF6CF989@MW5PR22MB3533.namprd22.prod.outlook.com>
Message-ID-Hash: CUUSKI6TPX4AA7DOKXA6CGEO5YU22TSX
X-Message-ID-Hash: CUUSKI6TPX4AA7DOKXA6CGEO5YU22TSX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP Daughterboard Calibration - Need to remove/replace bulkhead cables?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CUUSKI6TPX4AA7DOKXA6CGEO5YU22TSX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2260078505512018592=="

This is a multi-part message in MIME format.
--===============2260078505512018592==
Content-Type: multipart/alternative;
 boundary="------------594QLUsWlKlfwhrbdqosGxn3"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------594QLUsWlKlfwhrbdqosGxn3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 13/04/2023 20:07, Greene,David J wrote:
> Hi folks,
>
> I've had a set of N200 and N210 radios with SBX daughterboards for a=20
> number of years now. It has become quite common that I need to either=20
> remove the bulkhead cable (at the daughterboard) when using the=20
> daughterboard calibration scripts or replace the bulkhead cable all=20
> together; otherwise, there is residual IQ imbalance (sometimes as much=20
> as 30%) and DC offset. I perform calibrations about every week.
>
> I understand the calibration scripts utilize the internal leakage in=20
> the daughterboard, but what's going on here, are the cables aging?=20
> I've noticed, over time, that metallic dust becomes embedded around=20
> the insulator at the end of the cable. I've started to routinely clean=20
> the female ends of the bulkhead connectors with compressed air to=20
> remove the dust.
>
> Is there any other maintenance I should be aware of - any ancient RF=20
> wisdom someone would be willing to pass down? It's much appreciated.
>
>
> All the best,
>
>
> David Greene
>
> University of Florida
>
>
Conventional wisdom in calibration labs and places like radio=20
observatories is that each part of an SMA connector gets cleaned with
 =C2=A0 an alcohol wipe and allowed to dry before connecting.=C2=A0 I've =
never=20
done that :)

SMA connectors also aren't generally rated for a lot of=20
connect/disconnect cycles, so when I expect to have to do this, I usually
 =C2=A0 have a "sacrificial" intermediate connector that can take all the=
=20
abuse and only require replacement once in a while, reducing
 =C2=A0 the number of cycles on the main connector.

I'm surprised that you need to re-cal the I/Q balance that often, but if=20
you are operating under different temperature conditions,
 =C2=A0 I can see that being a requirement.


--------------594QLUsWlKlfwhrbdqosGxn3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 13/04/2023 20:07, Greene,David J
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MW5PR22MB35334DE2B04FC917DEB90DF6CF989@MW5PR22MB3533.namprd22=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Hi folks,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        I've had a set of N200 and N210 radios with SBX daughterboards
        for a number of years now.=C2=A0<span style=3D"font-family: Calib=
ri,
          Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
          0, 0);">It has become quite common that I need to either r</spa=
n><span
          style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);">emove the bulkhead
          cable (at the daughterboard) when using the daughterboard
          calibration scripts or r</span><span style=3D"font-family:
          Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; color:
          rgb(0, 0, 0);">eplace the bulkhead cable all together;
          otherwise, there is residual IQ imbalance (sometimes as much
          as 30%) and DC offset. I perform calibrations about every
          week.</span></div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif=
;
          font-size: 12pt; color: rgb(0, 0, 0);"><br>
        </span></div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif=
;
          font-size: 12pt; color: rgb(0, 0, 0);">I understand the
          calibration scripts utilize the internal leakage in the
          daughterboard, but what's going on here, are the cables aging?
          I've noticed,=C2=A0<span style=3D"display: inline !important;
            background-color: rgb(255, 255, 255);"
            class=3D"ContentPasted0">over time, that metallic dust become=
s
            embedded around the insulator at the end of the cable.=C2=A0<=
/span>I've
          started to routinely clean the female ends of the bulkhead
          connectors with compressed air to remove the dust.</span></div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif=
;
          font-size: 12pt; color: rgb(0, 0, 0);"><br>
        </span></div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif=
;
          font-size: 12pt; color: rgb(0, 0, 0);">Is there any other
          maintenance I should be aware of - any ancient RF wisdom
          someone would be willing to pass down? It's much appreciated.</=
span></div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div class=3D"elementToProof">
        <div id=3D"Signature">
          <div>
            <div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt;
              font-family: Calibri, Arial, Helvetica, sans-serif; color:
              rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
              <p><br>
              </p>
              <p
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,'=
Apple
                Color Emoji','Segoe UI Emoji',NotoColorEmoji,'Segoe UI
                Symbol','Android Emoji',EmojiSymbols">
                All the best,</p>
              <p
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,'=
Apple
                Color Emoji','Segoe UI Emoji',NotoColorEmoji,'Segoe UI
                Symbol','Android Emoji',EmojiSymbols">
                <br>
              </p>
              <p
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,'=
Apple
                Color Emoji','Segoe UI Emoji',NotoColorEmoji,'Segoe UI
                Symbol','Android Emoji',EmojiSymbols">
                David Greene</p>
              <p
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,'=
Apple
                Color Emoji','Segoe UI Emoji',NotoColorEmoji,'Segoe UI
                Symbol','Android Emoji',EmojiSymbols">
              </p>
              <p
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,'=
Apple
                Color Emoji','Segoe UI Emoji',NotoColorEmoji,'Segoe UI
                Symbol','Android Emoji',EmojiSymbols">
                University of Florida</p>
              <p
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,'=
Apple
                Color Emoji','Segoe UI Emoji',NotoColorEmoji,'Segoe UI
                Symbol','Android Emoji',EmojiSymbols">
                <span style=3D"font-size:12pt"></span></p>
            </div>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    Conventional wisdom in calibration labs and places like radio
    observatories is that each part of an SMA connector gets cleaned
    with<br>
    =C2=A0 an alcohol wipe and allowed to dry before connecting.=C2=A0 I'=
ve never
    done that :)<br>
    <br>
    SMA connectors also aren't generally rated for a lot of
    connect/disconnect cycles, so when I expect to have to do this, I
    usually<br>
    =C2=A0 have a "sacrificial" intermediate connector that can take all =
the
    abuse and only require replacement once in a while, reducing<br>
    =C2=A0 the number of cycles on the main connector.<br>
    <br>
    I'm surprised that you need to re-cal the I/Q balance that often,
    but if you are operating under different temperature conditions,<br>
    =C2=A0 I can see that being a requirement.<br>
    <br>
    <br>
  </body>
</html>

--------------594QLUsWlKlfwhrbdqosGxn3--

--===============2260078505512018592==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2260078505512018592==--
