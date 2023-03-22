Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8776C3F1C
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 01:33:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B2B0638462E
	for <lists+usrp-users@lfdr.de>; Tue, 21 Mar 2023 20:33:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679445180; bh=euH+UnRgQdzSBno1OOBzbmPa4+4NEj5snjsXRBvvl40=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=HRuEZaIZhevHoEshiJqmkj31sLRDxWDt1Nr9nzyU2jFa6DcJDKutzOWshMwiYr72o
	 GuvvS6CKWTDc23dDoAB8KpNZgIwaDPIdzMdJIyfaYatYOqfrkoHXBkICIXBQwJ6c98
	 tGO8Yrmnpzkt83WhvhOU+JlN3vQMYOdwL+/zS7nDnNlY5TSilgYRQe/c019qw0ZnNx
	 BIxMizckCi1ExZiC+FgyUbGtWwX/xOBEdQbAInNEQBM31EyM1I0NWbYdVyJgo8ym+r
	 Uy1rYeZqNl9oV49JVmtSei64I/NQEByZpXBSGajdYyEObuXC3ITtltHPegnAGy6OPv
	 yOISjy1NTzgwA==
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 266A93845EC
	for <usrp-users@lists.ettus.com>; Tue, 21 Mar 2023 20:32:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="p83wd7AA";
	dkim-atps=neutral
Received: by mail-qt1-f172.google.com with SMTP id fg19so4128154qtb.6
        for <usrp-users@lists.ettus.com>; Tue, 21 Mar 2023 17:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679445130;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZtZGw4Y0o0qCZ6cIJVjQ4a5qJHyvCpU9mS5R+qStVjQ=;
        b=p83wd7AAMNEjAoq6nCwHvL61MbWuoUyPbj+vHscik3z1sWYv+jnFBSSh13+agpcb+f
         bfK1CjkXbBBf8Hhz5s2kJqR3kIjppzfpPbGeU9R0bBhLscxnyAdg3z6MxE7d0PEqUUrf
         BL9zNamtYoKGiK10Yq5bemEkS9qJAo5NpFsqudL86pgDyCeZxGos2It0JULd3nyv4zId
         qJN79JEtDB8gBqkGp7yfoik7j8UEYJ5gn1KWfPX07nbVa5onh0LPOpik4r27f41g94Wg
         ZWEQ7vf1aUhgl4UnyxorwtPJjmKNoU8o04gTSZzfHCTeHQaO4kd3ujZhcAnu3WlgO+S7
         Ii7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679445130;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZtZGw4Y0o0qCZ6cIJVjQ4a5qJHyvCpU9mS5R+qStVjQ=;
        b=lyxPtuSABBjhwf13u50WKUXlmQmlRfSuSnTaw8PSNlA66n5EL2tlhFintdCDpb8FTO
         5TuXq3OnGNs38LrtVkIU9hyaVAC3KNQrOQOtNH5OBGw/5OEHdpyhglSSvKlkEtc/9m8k
         cY8gYR6t8mkUQHJZpoD8rBqEDs+ChqpI6AKeMeC2se3AzwRyrjsDX0JI/AUJcWgisO8x
         Yg2iFYPz1hRwnsTlhO11zyMIpjJmmDlWJcVUVSuBDQrxxnSBhKKbD1KoqN0kkCsnZhu4
         cHdMdaK+U7cB8nW/0LBCutOXKpYNGqwC74w+REzt3AwTcO9LEQg4EZnieyxG3X0KLMnE
         uqQQ==
X-Gm-Message-State: AO0yUKXCuGeBJMRwm6wQHFnUX6ceVShGeefBMgETSq0govfVSTdWGb0A
	tFCN//d7EAUQM1dtGFDiPhASgdHmtdU=
X-Google-Smtp-Source: AK7set8hU+qQIF1Tc5Eus6LT4DdNO+Qt7NYTePRkhaHoTrhz2INhx/sE2v6UivY8o3alwEt3MRY9Pg==
X-Received: by 2002:ac8:7d11:0:b0:3e1:c341:f618 with SMTP id g17-20020ac87d11000000b003e1c341f618mr2590655qtb.65.1679445130276;
        Tue, 21 Mar 2023 17:32:10 -0700 (PDT)
Received: from [192.168.2.160] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id o140-20020a374192000000b007343fceee5fsm4246395qka.8.2023.03.21.17.32.09
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Mar 2023 17:32:09 -0700 (PDT)
Message-ID: <d02fc88c-4d69-e774-50c8-27923545099f@gmail.com>
Date: Tue, 21 Mar 2023 20:32:09 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SJ0PR09MB91263A201E869804E985BCD9EC819@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SJ0PR09MB91263A201E869804E985BCD9EC819@SJ0PR09MB9126.namprd09.prod.outlook.com>
Message-ID-Hash: PHX3LEABPPRLOVS4VQ2R6QKJDY4DELS2
X-Message-ID-Hash: PHX3LEABPPRLOVS4VQ2R6QKJDY4DELS2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wideband IQ Daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PHX3LEABPPRLOVS4VQ2R6QKJDY4DELS2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0260321796027710413=="

This is a multi-part message in MIME format.
--===============0260321796027710413==
Content-Type: multipart/alternative;
 boundary="------------7ZGAxiT9pmFdanma0F29wkIe"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7ZGAxiT9pmFdanma0F29wkIe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 21/03/2023 18:11, Eugene Grayver wrote:
> Hello,
>
> I want to use an external IQ mixer with an external LO.=C2=A0 My signal=
 is=20
> 160 MHz wide, which fits nicely into the nominal complex 200 MHz=20
> Nyquist of the X310.=C2=A0 Unfortunately the only daughterboards for di=
rect=20
> access to the ADCs are LFRX which maxes out at 30 MHz, and the=20
> Basic-RX with a minimum of 1 MHZ.
>
> I am thinking of spinning a custom daughter board derived from LFRX=20
> with a wideband differential driver such as=20
> https://www.analog.com/media/en/technical-documentation/data-sheets/640=
6fc.pdf=C2=A0or=20
> alternatively just replacing the chip on an LFRX since these appear to=20
> be footprint compatible.
>
> Separately, I was looking at LFTX schematics and the part # for the=20
> amplifier is not specified.=C2=A0 Can somebody at Ettus/NI save me some=
=20
> time and lookup that part #.
>
> Comments?
>
> Eugene.
>
>
I believe that it's an AD8318--which you can see in the schematics if=20
you zoom way in.=C2=A0 It looks like someone typoed on the
 =C2=A0 part-number "back in the day", and it was "corrected" with the=20
insertion of a "3".

Anyway, I THINK the frequency response is set by the output resistor and=20
capacitor in that circuit.=C2=A0=C2=A0=C2=A0 The 8138 itself has
 =C2=A0 good response out to about 100MHz--from the datasheets.=C2=A0=C2=A0=
 So I think=20
the roll-off is implemented with that series R-C on
 =C2=A0 the output.



--------------7ZGAxiT9pmFdanma0F29wkIe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 21/03/2023 18:11, Eugene Grayver
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR09MB91263A201E869804E985BCD9EC819@SJ0PR09MB9126.namprd09=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Hello,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        I want to use an external IQ mixer with an external LO.=C2=A0 My
        signal is 160 MHz wide, which fits nicely into the nominal
        complex 200 MHz Nyquist of the X310.=C2=A0 Unfortunately the only
        daughterboards for direct access to the ADCs are LFRX which
        maxes out at 30 MHz, and the Basic-RX with a minimum of 1 MHZ.</d=
iv>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
        I am thinking of spinning a custom daughter board derived from
        LFRX with a wideband differential driver such as=C2=A0<a
href=3D"https://www.analog.com/media/en/technical-documentation/data-shee=
ts/6406fc.pdf"
          id=3D"LPlnk885883" moz-do-not-send=3D"true"
          class=3D"moz-txt-link-freetext">https://www.analog.com/media/en=
/technical-documentation/data-sheets/6406fc.pdf</a>=C2=A0or
        alternatively just replacing the chip on an LFRX since these
        appear to be footprint compatible.=C2=A0</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
        Separately, I was looking at LFTX schematics and the part # for
        the amplifier is not specified.=C2=A0 Can somebody at Ettus/NI sa=
ve
        me some time and lookup that part #.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
        Comments?</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0 ContentPasted1=
">
        Eugene.</div>
      <div class=3D"elementToProof">
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);">
          <br>
        </div>
        <div id=3D"Signature">
          <div>
            <div id=3D"divtagdefaultwrapper" dir=3D"ltr"
              style=3D"color:rgb(0,0,0);
              font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; background-color:rgb(255,255,255)">
              <p><span style=3D"color:black;
                  font-family:&quot;Arial&quot;,sans-serif;
                  font-size:10pt"><span id=3D"ms-rterangepaste-start"></s=
pan><span
                    style=3D"color:rgb(0,0,0);
                    font-family:Arial,sans-serif; font-size:13.33px"><br>
                  </span></span></p>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    I believe that it's an AD8318--which you can see in the schematics
    if you zoom way in.=C2=A0 It looks like someone typoed on the<br>
    =C2=A0 part-number "back in the day", and it was "corrected" with the
    insertion of a "3".<br>
    <br>
    Anyway, I THINK the frequency response is set by the output resistor
    and capacitor in that circuit.=C2=A0=C2=A0=C2=A0 The 8138 itself has<=
br>
    =C2=A0 good response out to about 100MHz--from the datasheets.=C2=A0=C2=
=A0 So I
    think the roll-off is implemented with that series R-C on<br>
    =C2=A0 the output.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------7ZGAxiT9pmFdanma0F29wkIe--

--===============0260321796027710413==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0260321796027710413==--
