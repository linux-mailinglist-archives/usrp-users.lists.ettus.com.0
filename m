Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 930E76AABBB
	for <lists+usrp-users@lfdr.de>; Sat,  4 Mar 2023 18:56:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C29A93845E1
	for <lists+usrp-users@lfdr.de>; Sat,  4 Mar 2023 12:56:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677952590; bh=K6e4G46vWr7D8JEWz3JE+82RBRnrqETeINJhOUUSjN0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=hdDy5o/FO8ZEsqXwJxaX38vXA+Amrky+YGTeOwsljC9LID7L7kOxwRAlzn3xKd0Uf
	 eVy8jkhjCZQNMaLbgHcsLudL5Rj6KgATa/GMLwa+PyQ0jegjPXnKExiEIIZraATYX8
	 vwPxjdNCsonVNa8Eb4j3dIBjoG+O+JEl0WebQ8P/WesAc4QSTukuhVqqoZxpfwEmRQ
	 zQQCpVq7NYCn7hK/IGhFU9GqMbqluYIJZMq8HwtRxOnvv/q+aPnS21W3RhcXBULOPH
	 7+ZBZaOdA4F0NUyMYRixRnejpAVl0Nst8LI/Hfqegy6gUe0HoHFgvR3JiMwkrYNuog
	 G3BOwhnwyK6QQ==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 94DF23845E1
	for <usrp-users@lists.ettus.com>; Sat,  4 Mar 2023 12:56:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PhTNWJHs";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id ev13so3918552qvb.10
        for <usrp-users@lists.ettus.com>; Sat, 04 Mar 2023 09:56:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T+Vsn6ODskNhbs3FkX7YknMBc4TtH3ZaNS8FJ+n+8o4=;
        b=PhTNWJHsqSPbSMT5K/0HHnF/nZ0fsXCT5s7WlvlmM7rIhVp+eesohFFQREPYSesFDS
         SjvpfLeUMAIwqCyLOr8bZuLGKwByg+fjmvhTD8EzdpZMjVEaCScfBd3dSMRCfUnKD3ml
         FbJZyQAuxXjtZjTe4FciIBfmgBVywTHX/UdnGnUqXqVydtuVzWgxWSvJSV9BnUsugw66
         fREKWy20u/rH9wzNNWokYgnOmfCDJa8JPXfWIAyONWasShprNvq9C2PqEpvvb/7I4Yim
         pRo04HWrlWiqM6o9AmQan4gQy+SZdfLIa2jCOogOiPdaeJjYjBV6LjRtiNlZFtl4QUd0
         UUsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=T+Vsn6ODskNhbs3FkX7YknMBc4TtH3ZaNS8FJ+n+8o4=;
        b=ZpCfy2c0nE91kbMECZQFNwzaNRK7JgfMD1Sw7Ji9P+PSZ9IG0JWcYzQMeWulhWcW2B
         wc9tnXbSh/b+q2/0hCKo/KL6ZB2WJQgmOpJsbGMn7EUe1iCEztVORP1/9GRb2N95RDD2
         Y2gfk49Nu+9PAarKKEduWujdtVTDi85Xvv03q0x8nXbYO361e3BojGAdSzkK3EzsabU7
         aIubTRB/qY+elOYtdycw9fKGeySCTMAdzkKAumOUVTz2Uwr1aC9P3jVBRZrFf5iKKhb+
         t0qhbWrcOmz+KevR0Hu/tOdFkcXns7VkvHMtRUpuafsEVJsLTohQ+JY0Zw1b1yKdi00M
         MMfQ==
X-Gm-Message-State: AO0yUKU+Et2vtjXUdj7duviKAornuja91QSbw95Tn6icsr5creKY2f1s
	7owuCNc+Zl7JfgqbStDP3pM986rex+Q=
X-Google-Smtp-Source: AK7set+ZjL1d/0W+OSyUZ8jTCqPzIqQOUwOb8utfhoRlk3cvmw8MwGGuQwa5W0fMSp5vD8CqQkE5PQ==
X-Received: by 2002:ad4:5749:0:b0:56e:a4d1:2b90 with SMTP id q9-20020ad45749000000b0056ea4d12b90mr10423375qvx.48.1677952584942;
        Sat, 04 Mar 2023 09:56:24 -0800 (PST)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id 14-20020a37030e000000b00729a26e836esm4097130qkd.84.2023.03.04.09.56.24
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Mar 2023 09:56:24 -0800 (PST)
Message-ID: <9d0647bc-b671-3350-a9f0-e5b11106b44a@gmail.com>
Date: Sat, 4 Mar 2023 12:56:23 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SJ0PR04MB832815197030088DB1468B6CEBB09@SJ0PR04MB8328.namprd04.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SJ0PR04MB832815197030088DB1468B6CEBB09@SJ0PR04MB8328.namprd04.prod.outlook.com>
Message-ID-Hash: JCAE6UNV7MBDV5ZR4SP4YC6MQWJLTVJG
X-Message-ID-Hash: JCAE6UNV7MBDV5ZR4SP4YC6MQWJLTVJG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error updating fpga image on n320
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JCAE6UNV7MBDV5ZR4SP4YC6MQWJLTVJG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4281593810946433581=="

This is a multi-part message in MIME format.
--===============4281593810946433581==
Content-Type: multipart/alternative;
 boundary="------------71FQ4K5609uHODMZjuFoxOVz"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------71FQ4K5609uHODMZjuFoxOVz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/03/2023 12:52, Abhay Samant wrote:
> Hi,
> I am trying to update fpga image on my n320 on an Ubuntu 20.04 machine=20
> and I get the following error
>
> $ uhd_image_loader --args "type=3Dn3xx,addr=3D192.168.10.1,fpga=3DHG"
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11;=20
> UHD_4.2.0.1-0-g321295fb
> No applicable UHD devices found
> [ERROR] [MPMD IMAGE LOADER] mpmd_image_loader only supports a single=20
> device.
>
> I have downloaded all the images using uhd_image_downloader command.
>
> Has anyone else run into the loader only supports a single device error=
.
>
>
> Abhay Samant, PhD
>
> Chief Software Engineer =E2=80=93 Aerospace/Defense/Government Business
>
> NI
> abhay.samant@ni.com
>
>
Your IP address is almost certainly incorrect -- try=C2=A0=C2=A0 192.168.=
10.2


> INTERNAL - NI CONFIDENTIAL
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------71FQ4K5609uHODMZjuFoxOVz
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 04/03/2023 12:52, Abhay Samant
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR04MB832815197030088DB1468B6CEBB09@SJ0PR04MB8328.namprd04=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        Hi,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        I am trying to update fpga image on my n320 on an Ubuntu 20.04
        machine and I get the following error<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        $ uhd_image_loader --args "type=3Dn3xx,addr=3D192.168.10.1,fpga=3D=
HG"</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        <div class=3D"ContentPasted0">[INFO] [UHD] linux; GNU C++ version
          9.4.0; Boost_107100; DPDK_19.11; UHD_4.2.0.1-0-g321295fb</div>
        <div class=3D"ContentPasted0">No applicable UHD devices found</di=
v>
        <div class=3D"ContentPasted0">[ERROR] [MPMD IMAGE LOADER]
          mpmd_image_loader only supports a single device.</div>
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        I have downloaded all the images using uhd_image_downloader
        command.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Has anyone else run into the loader only supports a single
        device error.<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div class=3D"elementToProof">
        <div id=3D"Signature">
          <div>
            <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
              font-size:12pt; color:rgb(0,0,0)">
              <p style=3D"margin:0in 0in 0.0001pt; font-size:11pt;
                font-family:Calibri,sans-serif; color:rgb(32,31,30);
                text-align:start; background-color:rgb(255,255,255)">
                Abhay Samant, PhD</p>
              <p style=3D"margin:0in 0in 0.0001pt; font-size:11pt;
                font-family:Calibri,sans-serif; color:rgb(32,31,30);
                text-align:start; background-color:rgb(255,255,255)">
                Chief Software Engineer =E2=80=93 Aerospace/Defense/Gover=
nment
                Business</p>
              <p style=3D"margin:0in 0in 0.0001pt; font-size:11pt;
                font-family:Calibri,sans-serif; color:rgb(32,31,30);
                text-align:start; background-color:rgb(255,255,255)">
                NI<br>
                <span style=3D"margin:0px; color:blue;
                  text-decoration:underline"><a class=3D"moz-txt-link-abb=
reviated" href=3D"mailto:abhay.samant@ni.com">abhay.samant@ni.com</a></sp=
an></p>
              <br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Your IP address is almost certainly incorrect -- try=C2=A0=C2=A0 192.=
168.10.2<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR04MB832815197030088DB1468B6CEBB09@SJ0PR04MB8328.namprd04=
.prod.outlook.com">
      <p
        style=3D"font-family:Calibri;font-size:10pt;color:#000000;margin:=
5pt;"
        align=3D"Right">
        INTERNAL - NI CONFIDENTIAL<br>
      </p>
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

--------------71FQ4K5609uHODMZjuFoxOVz--

--===============4281593810946433581==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4281593810946433581==--
