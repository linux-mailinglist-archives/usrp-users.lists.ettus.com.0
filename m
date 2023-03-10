Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F96B6B4667
	for <lists+usrp-users@lfdr.de>; Fri, 10 Mar 2023 15:42:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 080A1384932
	for <lists+usrp-users@lfdr.de>; Fri, 10 Mar 2023 09:42:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678459374; bh=68wf/g3rRMQVtHOd1GYMyqaJ5gVyJB2sS1Gk5iWe47Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=yyMfrVcBsg5/4K7mgM36jSRdjAMbm9Y3H0scZZizAWwzYjksXN8Kg4xLMLv5bZyWh
	 Ku4awVM7scXQ11Rzr5A2hDPtPnpeT66elt3uexvbNq0HL76h/1W4Lq5X48i1huH9jF
	 YEWr/5TuBqiqtZbXB+u0U57PHq3d84ghAhxDu7KPKCdhq7SgfQuYQaRWNFadKDtr5H
	 TSdotEno2zUDC0M5o1dCLZ+qNNPFdwn6iy3jojwT5QsrMOH7Rij79ma+BTk8Ab6knR
	 mo5ive4FhWQZbHuyWLWmz7QTpsy/u13t3qKa0o7SncNO5DEadZMlGJIJYCGZR1NlhP
	 JJ4QxV2oIVCFQ==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id DF0A738492C
	for <usrp-users@lists.ettus.com>; Fri, 10 Mar 2023 09:42:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="b4N+tTeV";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id g9so3712804qvt.8
        for <usrp-users@lists.ettus.com>; Fri, 10 Mar 2023 06:42:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678459323;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x0KYV2IFmtnJaneV6XkGTYWcD8YOPD6+mqb+xtNFuGQ=;
        b=b4N+tTeVI/AScizo/zZnDkY3knz+bauu8r/pwYTCmSBrltw3JpzQ85RX9MYymfMUlc
         9cNW7HYPAR1dy9ChjnUPVfV/Z94rBy8qql9rQZUbOrS+0ai8wiQiC+7Tr2GveHvMaCBc
         j6YbGVbq90X/FHMJiGt7NyRh+DRL/QaVo2/AHLrxV8X4/1HikhJUWbJa9/WRNSul5fge
         sy2iUf44O1tRDaJsJSKKnwdnkmyYJsmTw0hEIpSOEtPsx8DicNhZqf0aBtwp11pd1Kmj
         puNR3iWasKB/ZwfuBLqiP+ceP6UZLf2addmYrp06oSN5eFlWoU7KLX1lhbJra78sqvB0
         dlbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678459323;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=x0KYV2IFmtnJaneV6XkGTYWcD8YOPD6+mqb+xtNFuGQ=;
        b=sdosKamnxKgYHh+r/P+P+0DeuLkVDiXdmILDFhePeC4JUt4tSiRi0gsUacaRW4fgXS
         T6LjzVxiMPDMZMKbqepMr7/7RjaZIkSH7ArT+6DcfzNQAi8TfK+yUxBZ26AaUyhtF7hm
         2kdvykgphijP2ZKXBXtJJFvOfgMk58eqREv6ozMdrG4k1XvO/d7sONns9SHLDOzOpwa2
         qzOxx+2ocQaorJzdn4/4AwoKFy4i0xQSPyf+PoOJ75IhoBsl828taaiI9uO52IBLati0
         +jdC9FqhDEjfUYknoSrAMuYrQXVeZ/q8+FQTRpqRbFwHQGBG+pDine9sUG7+MfX/eJYF
         DK+g==
X-Gm-Message-State: AO0yUKW/VRo4ksW84BEfclUlFsbLKVapmCjHaGTTHRsRGcjhlYc/g3c9
	gi+9ViPNRWiU7DaBeTNM0p7gvWSOTro=
X-Google-Smtp-Source: AK7set+0KnozMKbDc3spCqUgq9l/EyotkJSIhRTla5X4c0Vx9Hjb3PhUTWMXttbQP4Y+DFmoqkCL+Q==
X-Received: by 2002:a05:6214:124e:b0:56e:f9a2:1aff with SMTP id r14-20020a056214124e00b0056ef9a21affmr51479198qvv.35.1678459323048;
        Fri, 10 Mar 2023 06:42:03 -0800 (PST)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id q23-20020a37f717000000b0073b399700adsm1456647qkj.3.2023.03.10.06.42.02
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Mar 2023 06:42:02 -0800 (PST)
Message-ID: <df50cf00-b19e-ccfa-003f-9ddf854047ca@gmail.com>
Date: Fri, 10 Mar 2023 09:42:02 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <LO2P265MB3056F063CD252FBD41138A22BABA9@LO2P265MB3056.GBRP265.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <LO2P265MB3056F063CD252FBD41138A22BABA9@LO2P265MB3056.GBRP265.PROD.OUTLOOK.COM>
Message-ID-Hash: KUI3WLGKXJMOGPZUNW36XOLP23BJHAN6
X-Message-ID-Hash: KUI3WLGKXJMOGPZUNW36XOLP23BJHAN6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: FM Antennas
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KUI3WLGKXJMOGPZUNW36XOLP23BJHAN6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6623249586182191881=="

This is a multi-part message in MIME format.
--===============6623249586182191881==
Content-Type: multipart/alternative;
 boundary="------------Wj0FOxzt2MlFN2r1lcF7jCmu"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Wj0FOxzt2MlFN2r1lcF7jCmu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 10/03/2023 07:01, Ali Mahbas (Staff) wrote:
> Dear all,
>
> We are interested in doing simple examples like FM radio=C2=A0transceiv=
er=20
> examples. We need some antennas supporting this frequency band. Any=20
> recommendations?
> Thank you in advance.
> *Kind regards,*
> *Ali*
>
>
You mean the commercial FM broadcast band from 88-108MHz (in most places)=
??

Easy enough to make a 1/4-wave groundplane antenna.

Also, it won't be legal for you to transmit in that band without a licens=
e.

https://m0ukd.com/calculators/quarter-wave-ground-plane-antenna-calculato=
r/

But for something commercial:

https://www.amazon.ca/Tram-1411-Discone-Scanner-Antenna/dp/B00QVNI1V0/ref=
=3Dasc_df_B00QVNI1V0/?tag=3Dgoogleshopc0c-20&linkCode=3Ddf0&hvadid=3D2929=
55587396&hvpos=3D&hvnetw=3Dg&hvrand=3D11855203266946619458&hvpone=3D&hvpt=
wo=3D&hvqmt=3D&hvdev=3Dc&hvdvcmdl=3D&hvlocint=3D&hvlocphy=3D9000707&hvtar=
gid=3Dpla-572007758537&psc=3D1

https://www.amazon.ca/Stellar-Labs-30-2435-Outdoor-Omnidirectional/dp/B00=
DHHOZBI/ref=3Dasc_df_B00DHHOZBI/?tag=3Dgoogleshopc0c-20&linkCode=3Ddf0&hv=
adid=3D292964606872&hvpos=3D&hvnetw=3Dg&hvrand=3D5397782765281033887&hvpo=
ne=3D&hvptwo=3D&hvqmt=3D&hvdev=3Dc&hvdvcmdl=3D&hvlocint=3D&hvlocphy=3D900=
0707&hvtargid=3Dpla-307958061289&psc=3D1



--------------Wj0FOxzt2MlFN2r1lcF7jCmu
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 10/03/2023 07:01, Ali Mahbas (Staff=
)
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:LO2P265MB3056F063CD252FBD41138A22BABA9@LO2P265MB3056.GBRP265.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Dear all,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        We are interested in doing simple examples like FM
        radio=C2=A0transceiver examples. We need some antennas supporting
        this frequency band. Any recommendations?</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        Thank you in advance.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        =C2=A0</div>
      <div class=3D"elementToProof">
        <div id=3D"Signature">
          <div style=3D"font-family: Calibri, Arial, Helvetica,
            sans-serif; font-size: 12pt;">
            <div style=3D"font-size: 14.6667px; font-family: Calibri;
              margin: 0px; text-align: start; background-color: rgb(255,
              255, 255);">
              <span style=3D"margin: 0px;"><font color=3D"#201f1e"><b>Kin=
d
                    regards,</b></font></span></div>
            <div style=3D"font-size: 14.6667px; font-family: Calibri;
              margin: 0px; text-align: start; background-color: rgb(255,
              255, 255);">
              <span style=3D"margin: 0px;"><font color=3D"#201f1e"><b>Ali=
</b></font></span></div>
            <div style=3D"font-size: 14.6667px; font-family: Calibri;
              margin: 0px; text-align: start; background-color: rgb(255,
              255, 255);">
              <br>
            </div>
            <br>
          </div>
        </div>
      </div>
    </blockquote>
    You mean the commercial FM broadcast band from 88-108MHz (in most
    places)??<br>
    <br>
    Easy enough to make a 1/4-wave groundplane antenna.<br>
    <br>
    Also, it won't be legal for you to transmit in that band without a
    license.<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://m0ukd.com/calculators/=
quarter-wave-ground-plane-antenna-calculator/">https://m0ukd.com/calculat=
ors/quarter-wave-ground-plane-antenna-calculator/</a><br>
    <br>
    But for something commercial:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://www.amazon.ca/Tram-141=
1-Discone-Scanner-Antenna/dp/B00QVNI1V0/ref=3Dasc_df_B00QVNI1V0/?tag=3Dgo=
ogleshopc0c-20&amp;linkCode=3Ddf0&amp;hvadid=3D292955587396&amp;hvpos=3D&=
amp;hvnetw=3Dg&amp;hvrand=3D11855203266946619458&amp;hvpone=3D&amp;hvptwo=
=3D&amp;hvqmt=3D&amp;hvdev=3Dc&amp;hvdvcmdl=3D&amp;hvlocint=3D&amp;hvlocp=
hy=3D9000707&amp;hvtargid=3Dpla-572007758537&amp;psc=3D1">https://www.ama=
zon.ca/Tram-1411-Discone-Scanner-Antenna/dp/B00QVNI1V0/ref=3Dasc_df_B00QV=
NI1V0/?tag=3Dgoogleshopc0c-20&amp;linkCode=3Ddf0&amp;hvadid=3D29295558739=
6&amp;hvpos=3D&amp;hvnetw=3Dg&amp;hvrand=3D11855203266946619458&amp;hvpon=
e=3D&amp;hvptwo=3D&amp;hvqmt=3D&amp;hvdev=3Dc&amp;hvdvcmdl=3D&amp;hvlocin=
t=3D&amp;hvlocphy=3D9000707&amp;hvtargid=3Dpla-572007758537&amp;psc=3D1</=
a><br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://www.amazon.ca/Stellar-=
Labs-30-2435-Outdoor-Omnidirectional/dp/B00DHHOZBI/ref=3Dasc_df_B00DHHOZB=
I/?tag=3Dgoogleshopc0c-20&amp;linkCode=3Ddf0&amp;hvadid=3D292964606872&am=
p;hvpos=3D&amp;hvnetw=3Dg&amp;hvrand=3D5397782765281033887&amp;hvpone=3D&=
amp;hvptwo=3D&amp;hvqmt=3D&amp;hvdev=3Dc&amp;hvdvcmdl=3D&amp;hvlocint=3D&=
amp;hvlocphy=3D9000707&amp;hvtargid=3Dpla-307958061289&amp;psc=3D1">https=
://www.amazon.ca/Stellar-Labs-30-2435-Outdoor-Omnidirectional/dp/B00DHHOZ=
BI/ref=3Dasc_df_B00DHHOZBI/?tag=3Dgoogleshopc0c-20&amp;linkCode=3Ddf0&amp=
;hvadid=3D292964606872&amp;hvpos=3D&amp;hvnetw=3Dg&amp;hvrand=3D539778276=
5281033887&amp;hvpone=3D&amp;hvptwo=3D&amp;hvqmt=3D&amp;hvdev=3Dc&amp;hvd=
vcmdl=3D&amp;hvlocint=3D&amp;hvlocphy=3D9000707&amp;hvtargid=3Dpla-307958=
061289&amp;psc=3D1</a><br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------Wj0FOxzt2MlFN2r1lcF7jCmu--

--===============6623249586182191881==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6623249586182191881==--
