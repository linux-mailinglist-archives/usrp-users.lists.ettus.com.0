Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF4271F319
	for <lists+usrp-users@lfdr.de>; Thu,  1 Jun 2023 21:38:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 94B3D3846BA
	for <lists+usrp-users@lfdr.de>; Thu,  1 Jun 2023 15:38:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685648314; bh=B6CHQ/YQp4x1+HTmuFGa0EsCURbMtp99YNQKE4Vh+Zo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ucORwMo51HGnoO4+tTVpriNXkqpm4UcHymkUy6wdmCQQhSfb6rFFBF5pH5jHpuPnz
	 7gNaV6tjNa6V/JoFr9rdGBwQHyRDLGrdER26wkfzDcyjrzebrCdG5a5nWTsdyCVk4H
	 gfRS6fVhiU7YFwTjZuXyqnXTkCof/85SrIl+c2DYBxpI9yzf8Ck9LSTm7blC25g6Re
	 /hdd2xIHnv+gl6VkX3SjvyhI9NySDTGlbQnp1lubzmzDjYFdAJY3O8cFA3u6pxxqVk
	 iovYar4tJjtGc9SwpvAtstE8c0sRVbi3cT3aRMj5y0l+aAR/qQGaDWVISE5UuAVQ5G
	 7rqHt4ucZV41g==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 1049C3808CE
	for <usrp-users@lists.ettus.com>; Thu,  1 Jun 2023 15:37:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NO5TWNoX";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-75b04e897a5so125997285a.2
        for <usrp-users@lists.ettus.com>; Thu, 01 Jun 2023 12:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685648253; x=1688240253;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xv0VslSuZCA7stWaSRs2I18n2J12fK3daGTrpcdTC24=;
        b=NO5TWNoXPom9BbfhBQ7o9IKu8lrNn7ON3EbT8zL5dsy/gH/3NZTVm39E/IxBdBz6ir
         5k7iVrlRiR0Cyx8apZBNYAwJnWtVaNBaQXXAkVsFI1uKcJgyH3jyT7UTuJBI6nWcGwVt
         gWdDjS75NM6ACGMT/UaptQy28EyO2/FDUdAiIjwIsekm88eXsKLmEF5g14YOfqj//Eyr
         RNnDglBgRw6Dq59yqoc+rS+hTEXwI9LhvgiZiPaZtlBMS1ya/HvAABJOHl8bSGv4j2pw
         txv2zsszc8IAMDSEutXAT7AvQqVVyDefxhd/Rzy9KoqQzCjToqO73CMVwJL3AyW0GpfB
         lWjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685648253; x=1688240253;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Xv0VslSuZCA7stWaSRs2I18n2J12fK3daGTrpcdTC24=;
        b=MCM1W4jiZbjsMv9DExXGVFc+Vx7gNks0iy2ULSu2PE5cW+ciEH6ifXPqI7iYWWsAZk
         Z0AXonMCxEC9Madb/AU+uhEAdLDUuUdhp7VpI6JlNRgCAqKrDfjKsVRVT04Sq8buvA3H
         a52IRz3pFeFMG5Te6suxDYEqFYxOcxX+QZSNNqy4YfmH/KJ7EmwTleRLK/mCwj9hQjRn
         G/cK7Sq+l2t2qVo0P/MeLxASavItPLkOtf7vZ47W/KBj1Wv7aMZwToS/+Q+tFggbRdsq
         Hb/r97njLOOfYbs5eeOSb/fXtlLF7vZYfjh7g3zGF34BBGmhmfUXLmTtu0tZNeaOEA9S
         1UfQ==
X-Gm-Message-State: AC+VfDynHfvhZUlY2VaYbTXExT0swbWPfL8eE0DheVBghLwyKYaTcyi9
	+zQQlT0fAPf1WcUy+dRJDlDTUVc3zF3S6w==
X-Google-Smtp-Source: ACHHUZ5R1dXCd4v+U/koEpAQtpENvTAmL/sL81h/BQDN7saO9RYD3AO9bZOq5sP+z4Ayfs2cmsFSaQ==
X-Received: by 2002:a37:6404:0:b0:75b:23a1:361a with SMTP id y4-20020a376404000000b0075b23a1361amr10259086qkb.43.1685648253174;
        Thu, 01 Jun 2023 12:37:33 -0700 (PDT)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id q9-20020ae9e409000000b0075c985e387fsm7029767qkc.20.2023.06.01.12.37.32
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 12:37:32 -0700 (PDT)
Message-ID: <7fc5f64e-dd59-bd01-a640-db3df59ec3b3@gmail.com>
Date: Thu, 1 Jun 2023 15:37:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SJ0PR09MB9126585283051825C55DFA30EC499@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SJ0PR09MB9126585283051825C55DFA30EC499@SJ0PR09MB9126.namprd09.prod.outlook.com>
Message-ID-Hash: NV6RV6NZRXYJZDZRB32WRWM4NNSOYPUW
X-Message-ID-Hash: NV6RV6NZRXYJZDZRB32WRWM4NNSOYPUW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: octoclock specs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NV6RV6NZRXYJZDZRB32WRWM4NNSOYPUW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0491854310569949231=="

This is a multi-part message in MIME format.
--===============0491854310569949231==
Content-Type: multipart/alternative;
 boundary="------------9f2cOiE8G870CxVsnNSa69nA"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9f2cOiE8G870CxVsnNSa69nA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 01/06/2023 15:16, Eugene Grayver wrote:
> Hello,
>
> I am building a high-end testbed and trying to decide on a 10 MHz=20
> distribution option.=C2=A0 I've used octoclock for other systems and it=
=20
> 'works.'=C2=A0 However the datasheet is pretty sparse.=C2=A0 Does anyon=
e have=20
> detailed specs (that you measured or from Ettus).=C2=A0 I am interested=
 in=20
> the non-GPSDO version since my 10 MHz comes from outside the system
>
>   * port-to-port delay variation
>   * phase noise increase if any (assuming external source)
>
> My other option is=20
> https://endruntechnologies.com/products/distribution/10-MHz-low-phase-n=
oise,=20
> which is about 5x more expensive.
>
> Thanks.
>
>
Clock is distributed via a CDCE18005 chip, made by TI.=C2=A0=C2=A0 This c=
hip is=20
specifically designed for low-phase-noise clock
 =C2=A0 distribution, and the trace layout on the board was designed to=20
minimize delay variation.

The 1PPS is buffered with a pair of 7404-type hex inverters, with one=20
inverter per package acting to invert the input,
 =C2=A0 prior to it being inverted again on each output channel.

I don't know that actual measured specs have been published for it.

Schematics are here:

https://files.ettus.com/schematics/octoclock/octoclock.pdf


--------------9f2cOiE8G870CxVsnNSa69nA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 01/06/2023 15:16, Eugene Grayver
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR09MB9126585283051825C55DFA30EC499@SJ0PR09MB9126.namprd09=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Hello,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I am building a high-end testbed and trying to decide on a 10
        MHz distribution option.=C2=A0 I've used octoclock for other syst=
ems
        and it 'works.'=C2=A0 However the datasheet is pretty sparse.=C2=A0=
 Does
        anyone have detailed specs (that you measured or from Ettus).=C2=A0=
 I
        am interested in the non-GPSDO version since my 10 MHz comes
        from outside the system</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <ul>
          <li><span>port-to-port delay variation</span></li>
          <li><span>phase noise increase if any (assuming external
              source)</span></li>
        </ul>
        <div><span class=3D"ContentPasted0">My other option is=C2=A0<a
href=3D"https://endruntechnologies.com/products/distribution/10-MHz-low-p=
hase-noise"
              id=3D"LPNoLPOWALinkPreview" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">https://endruntechnologies.=
com/products/distribution/10-MHz-low-phase-noise</a>,
            which is about 5x more expensive.</span></div>
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Thanks.</div>
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
    Clock is distributed via a CDCE18005 chip, made by TI.=C2=A0=C2=A0 Th=
is chip
    is specifically designed for low-phase-noise clock<br>
    =C2=A0 distribution, and the trace layout on the board was designed t=
o
    minimize delay variation.<br>
    <br>
    The 1PPS is buffered with a pair of 7404-type hex inverters, with
    one inverter per package acting to invert the input,<br>
    =C2=A0 prior to it being inverted again on each output channel.<br>
    <br>
    I don't know that actual measured specs have been published for it.<b=
r>
    <br>
    Schematics are here:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/sc=
hematics/octoclock/octoclock.pdf">https://files.ettus.com/schematics/octo=
clock/octoclock.pdf</a><br>
    <br>
    <br>
  </body>
</html>

--------------9f2cOiE8G870CxVsnNSa69nA--

--===============0491854310569949231==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0491854310569949231==--
