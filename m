Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B34E17DE5E2
	for <lists+usrp-users@lfdr.de>; Wed,  1 Nov 2023 19:12:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BE8C6385A4F
	for <lists+usrp-users@lfdr.de>; Wed,  1 Nov 2023 14:12:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1698862371; bh=uaBFy+s8Nq6JKIphVyQkwtWEyO06K5Tc/ipjlysXnfo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Qia0Z5FP6Ch68fS+rdrPZw9rv+XIFyP06N7tQkL9bSLxD/IQF74fg/T3CD6FW2DyV
	 14LvyfXqGzELKtBlezrBVi8img0SEhdRK4hsQJD60OPSe9jxwxnehU3LQ4r76w/Iu9
	 TQwfsVzsx5aXRpL7uinkI0WgSBAJKhLOiDA73Ndsjx7+yIxzEVtBSHA+gw4vMykBJs
	 fTOaoTE4Tt32fPjdIrlwc97lRHErbMf9iHWhACO3J162YmROTjQDI3whEvrynlFUYe
	 laPt72jNQlnLUWODQPXMHsr5z1G7dzcW2cHUnkgJn8D7GswdvYN8h6Q0KeRFHAyogD
	 nX8cfz73X2QWw==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 03B7E385A03
	for <usrp-users@lists.ettus.com>; Wed,  1 Nov 2023 14:12:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Eelpnqzc";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-41cbd2cf3bbso10065741cf.0
        for <usrp-users@lists.ettus.com>; Wed, 01 Nov 2023 11:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698862338; x=1699467138; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t1jVUeqDiRAHj6+09ey4j/S5Ud0xtz0bdeftU+qi7B4=;
        b=EelpnqzcppWbTjHq8Kbdp4TbdWa1HN4s/w11BToXhw+uHD/S//3JMuuRrXZtZOoKz3
         tF1y9UULQ0PsdG3N14Ryd637I8JfDFuIZvmI8JNpd41H8Jz2rCH4dDmCUeux5JzSzmUI
         1m69mqRzNsdg/ZMYdX2TYNndhbz7xEsE8SOg0YSsRcTxh9JLpTHgzk5Kazf9IECu493z
         gjFWhBJ2ukpY/XJQ0hgm/3akjreQQg/QUVI/jYYoBzyV4ADt+ZvmI1IdWL29Lt/jtSYn
         aHJt1Jdt8rIaUyUwiZASzQBo9zbWQknDs59MYBmsiRxEBhUOX4x2ItazQyzq+qKMSdNL
         nYNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698862338; x=1699467138;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=t1jVUeqDiRAHj6+09ey4j/S5Ud0xtz0bdeftU+qi7B4=;
        b=n3W/uvvjE1rV4HOQ6knQzX55y92dvuuzhr834F7Ehy/l99nb7YjruwTqpbY0k8TiSm
         GpNX1oLM4HzBxn9JbnH83rZnekTpAx54k+oEIRTUWnsW3bYjvEm7ItH2ehdA+V4gRsGe
         jtJ2xW2wUQfFErVtDaGVl7tk5Vp1QK9xruFgMXPA4CQ1xrP7ODm5AjIlF7V1bjw9hySN
         8blOdXYZtM16NydzD2vAOu2sneS2Icu0z1Ohfx0UnGirxhyI58/2UESqr+QevwtbhKmP
         o0cBiIcfnBJh3FxpDZYkHQ2/Gg7EG7b9+ND7Pr0lhJqftE2lhXy3k71ae9RzT7j5uaYs
         5iSg==
X-Gm-Message-State: AOJu0YzyrnAx0CdrkNBBDSMIPjAY5iNYqVnQRW+1UUmv6HGajR8exiJA
	utQFUql3PMHdNwHDWYD5JZcOJ3YRfa8=
X-Google-Smtp-Source: AGHT+IHbYdiYryoLxDLn0K9hKiWpTK/M0L5cvya/TF0ChgUM9RhccE0hvMZhS5O2hvtwn0Bz0vO86w==
X-Received: by 2002:a05:6214:2308:b0:66f:a356:b5dc with SMTP id gc8-20020a056214230800b0066fa356b5dcmr8323996qvb.12.1698862338200;
        Wed, 01 Nov 2023 11:12:18 -0700 (PDT)
Received: from [192.168.2.182] (bras-base-smflon1825w-grc-06-174-88-54-173.dsl.bell.ca. [174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id ek20-20020ad45994000000b0065b0554ae78sm1656675qvb.100.2023.11.01.11.12.17
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Nov 2023 11:12:17 -0700 (PDT)
Message-ID: <6de2ef9b-3783-4a0f-8cb7-28b4e40a720f@gmail.com>
Date: Wed, 1 Nov 2023 14:12:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAPiksU=3anXULG=CWy-D9ELrYNyxArWzQmWbZyH67k0-GcOLnw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAPiksU=3anXULG=CWy-D9ELrYNyxArWzQmWbZyH67k0-GcOLnw@mail.gmail.com>
Message-ID-Hash: YMWJDIYWKSUKTX3WSJVCMXWO4CFPIMWZ
X-Message-ID-Hash: YMWJDIYWKSUKTX3WSJVCMXWO4CFPIMWZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 and N321 IQ calibrations
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YMWJDIYWKSUKTX3WSJVCMXWO4CFPIMWZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1722642633749508241=="

This is a multi-part message in MIME format.
--===============1722642633749508241==
Content-Type: multipart/alternative;
 boundary="------------qF7PpOEpZ2eO6nlXJHUUr5VK"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------qF7PpOEpZ2eO6nlXJHUUr5VK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 01/11/2023 14:04, Bill Dower wrote:
> Hi Dr. Dickens,
>
> Reviewing the=C2=A0IQ calibration procedures, linked below, I came acro=
ss=20
> this section which generated a few questions which are below the copy=20
> and pasted sections.
>
> https://files.ettus.com/manual/page_calibration.html
>
>
>   ---
>
>
>   Frontend Corrections
>
> The calibrations for IQ imbalance and DC offset compensation rely on=20
> frontend correction logic that is located in the FPGA.
>
> Note that USRP E310, E320, N320, and B200-Series use a dedicated RFIC=20
> which does its own calibration. For those, any calibrations are very=20
> device-specific and are not covered in this section.
>
>
>   ---
>
I think the reference above to N320 is a typo.=C2=A0 The N*310* uses a=20
dedicated RFIC (AD9371 AFAIR).=C2=A0=C2=A0 The N320/321 use a more
 =C2=A0 "conventional" RF PLL/MIXER design.

>
> First I would assume this statement is true for the N321 if it is true=20
> for the N320.=C2=A0 Is that correct?=C2=A0 Or is this incorrectly state=
d about=20
> the N320 because the schematic does not appear to have an RFIC?
>
> If the first question is true for the N320 and N321, then:
>
> Where do I find more information about the N320 and N321's dedicated=20
> RFIC IQ calibrations and DC offset?
>
> If I ran the calibrations mentioned in the linked page for the N320=20
> and N321 what would be the effect on the SDR if they were applied?=C2=A0=
=20
> Would these SDR's ignore the calibration file?
>
> Thank=C2=A0you,
>
> Bill
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------qF7PpOEpZ2eO6nlXJHUUr5VK
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 01/11/2023 14:04, Bill Dower wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAPiksU=3D3anXULG=3DCWy-D9ELrYNyxArWzQmWbZyH67k0-GcOLnw@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi Dr. Dickens,<br>
        <br>
        Reviewing the=C2=A0IQ calibration procedures, linked below, I cam=
e
        across this section which generated a few questions which are
        below the copy and pasted sections.=C2=A0
        <div><br>
        </div>
        <div><a
            href=3D"https://files.ettus.com/manual/page_calibration.html"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://files.ettus.com/manual/page_calibration.html</a></div>
        <div>
          <h1
style=3D"margin-right:15px;color:rgb(0,0,0);font-family:Roboto,sans-serif=
">---</h1>
          <h1
style=3D"margin-right:15px;color:rgb(0,0,0);font-family:Roboto,sans-serif=
">Frontend
            Corrections</h1>
          <p
style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font-=
variant-alternates:normal;font-kerning:auto;font-feature-settings:normal;=
font-stretch:normal;font-size:14px;line-height:22px;font-family:Roboto,sa=
ns-serif;color:rgb(0,0,0)">The
            calibrations for IQ imbalance and DC offset compensation
            rely on frontend correction logic that is located in the
            FPGA.</p>
          <p
style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font-=
variant-alternates:normal;font-kerning:auto;font-feature-settings:normal;=
font-stretch:normal;font-size:14px;line-height:22px;font-family:Roboto,sa=
ns-serif;color:rgb(0,0,0)">Note
            that USRP E310, E320, N320, and B200-Series use a dedicated
            RFIC which does its own calibration. For those, any
            calibrations are very device-specific and are not covered in
            this section.</p>
          <h1
style=3D"margin-right:15px;color:rgb(0,0,0);font-family:Roboto,sans-serif=
">---</h1>
        </div>
      </div>
    </blockquote>
    I think the reference above to N320 is a typo.=C2=A0 The N*310* uses =
a
    dedicated RFIC (AD9371 AFAIR).=C2=A0=C2=A0 The N320/321 use a more<br=
>
    =C2=A0 "conventional" RF PLL/MIXER design.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAPiksU=3D3anXULG=3DCWy-D9ELrYNyxArWzQmWbZyH67k0-GcOLnw@mail.=
gmail.com">
      <div dir=3D"ltr">
        <div>
          <div><br>
          </div>
          <div>First I would assume this statement is true for the N321
            if it is true for the N320.=C2=A0 Is that correct?=C2=A0 Or i=
s this
            incorrectly stated about the N320 because the schematic does
            not appear to have an RFIC?</div>
          <div><br>
          </div>
          <div>If the first question is true for the N320 and N321,
            then:</div>
          <div><br>
          </div>
          <div>Where do I find more information about the N320 and
            N321's dedicated RFIC IQ calibrations and DC offset?</div>
          <div><br>
          </div>
          <div>If I ran the calibrations mentioned in the linked page
            for the N320 and N321 what would be the effect on the SDR if
            they were applied?=C2=A0 Would these SDR's ignore the calibra=
tion
            file?</div>
          <div><br>
          </div>
          <div>Thank=C2=A0you,<br>
            <br>
            Bill</div>
          <p
style=3D"font-variant-numeric:normal;font-variant-east-asian:normal;font-=
variant-alternates:normal;font-kerning:auto;font-feature-settings:normal;=
font-stretch:normal;font-size:14px;line-height:22px;font-family:Roboto,sa=
ns-serif;color:rgb(0,0,0)"><br>
          </p>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------qF7PpOEpZ2eO6nlXJHUUr5VK--

--===============1722642633749508241==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1722642633749508241==--
