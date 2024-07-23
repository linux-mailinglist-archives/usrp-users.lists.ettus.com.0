Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A45939F75
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 13:11:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 591E7385839
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 07:11:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721733113; bh=R6Tpl8RSv/i4OKatCIfgmoUQ3DP2t5hh0S/WLWlW5mI=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=B87r4IEuwgTJH8wNeMe5aW59U1AoRbppz8eaxZKduvrzn9rTxQWSyqZrdPb5GAZyO
	 uTliwMluwd17BLWLSZGL2by0l4Q8h8lhIN3LxOf0QXL/2YB8jt5tmSGvQ4jys4Npro
	 l75qeVNYtyWbsPbCsZKbv44dXhhRLbAmTg9ppkbMQPh+iMt1Kl09nel7iCSTzvaYlH
	 UzQwS05YIkHKBEaddJRfbpQEmLC9R9nAGXo0s79+CYFFrTB/URiLUVOy3L7Z3bWxtD
	 C8/gSGU1u3hwvxr+2uzHxmRb6ouvIShKnr9URSRJ+4sLqZi2E85a8kYZ6xUXwUC12n
	 3iccKXMy+EJYg==
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by mm2.emwd.com (Postfix) with ESMTPS id D4FEA3857D6
	for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 07:11:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HrQErAHa";
	dkim-atps=neutral
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e0874f138aeso2545329276.2
        for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 04:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721733091; x=1722337891; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ILvqDyjiYTdkeuCq46mH68E9JWe2J9VrDTe5r3aG1Pg=;
        b=HrQErAHaiA4pQFw8dkeo6SUOy4sivD2Y2PWgErvq12rQ/PHyDEV3U0ubZFuZa9joG2
         wJ2nDIwSOVifwaHyNl2IvXd36Ik3sTC5np9PwnWUeLVzcUEU19XYLS8T/ldB9mGyo+a2
         bur6+yQPv63NaeT0fZGGW+oUNN0hDbNo1HoFsuVPFolZ9D6uAGFKEcgb9+lKXGIFFoGj
         kX/R7GS94zyFMvavDWtLGOvBepSgTkt0M56kt2awAaIFaLS4t2daYLsNWPUMo4BhKsWE
         WeJaycuXOA1OCjHYR/Lf65BZHLd0XJyPH4RC4d9Qly3O+ft8d0rpjeEgFDDUViA9Q30a
         Fcnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721733091; x=1722337891;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ILvqDyjiYTdkeuCq46mH68E9JWe2J9VrDTe5r3aG1Pg=;
        b=fHdbh1kYlRlgYUjc4htvl3zVlc97jFBMq9vtNFwCl/UnOssALO9bu6UDsD+NWh4m9h
         tEMoK130S0i/5OzuLphk3GOrHCqrpj0TV5lQzFMmD7A1VzxjRwyHDrrq8b2b/v12NAMd
         smjEUU841XdCPn8attOFPi+hJRMW1U3pZ/cfaPhNQocsUx8YOcNeqSXeDDQDa00hsWHG
         pM2N+K5BS+ggUyENQXOrPEPsgVIrr5NY1HOGt61EIfQ4qyD97EjsegqX2U+hOqhABp1E
         /raHlxETl6vh0qJpNZMkV0LS9SD6H5lC2QHAf/P2/RfA60XZNR4X66Dikt9dfnpDo2a7
         U2zg==
X-Gm-Message-State: AOJu0YwFqLvKJx4E0LlmC59mCq2u5jESXil6gk/Qo7+lCCIixxSEeXGF
	o9ceOc5Ll4BxGCmfq7IiV+er31FWp8dsND8OgSyYyd+4lKWmzAYFY5WHWg==
X-Google-Smtp-Source: AGHT+IFICQR989IjMKvPq4CH4SsgEh8SUIck/Mt461T6tk7mI8XZPL2VFIDE39M4TipmXzhfOGw34Q==
X-Received: by 2002:a25:ab71:0:b0:e03:aa2b:3a97 with SMTP id 3f1490d57ef6-e08b59cd1demr2950296276.43.1721733090949;
        Tue, 23 Jul 2024 04:11:30 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6b7b29a0364sm43575236d6.119.2024.07.23.04.11.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jul 2024 04:11:30 -0700 (PDT)
Message-ID: <848ee7e8-827c-43db-9497-519cd809cc57@gmail.com>
Date: Tue, 23 Jul 2024 07:11:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Martin Braun <martin.braun@ettus.com>
References: <YVhburlEwqYkoh6RysZwjV88YBZaiZK2feRZmvCSJYo@lists.ettus.com>
 <116ed2b0-3e83-410b-8075-01f1afa25037@gmail.com>
 <CAFOi1A4Z+P_VX5X37=BCg47xCvQh7vOTF72ydOhn8xrUxvTROg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFOi1A4Z+P_VX5X37=BCg47xCvQh7vOTF72ydOhn8xrUxvTROg@mail.gmail.com>
Message-ID-Hash: 4ELMAONDPIMEMWFUQPKQ3ITCZAGXGWLM
X-Message-ID-Hash: 4ELMAONDPIMEMWFUQPKQ3ITCZAGXGWLM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Buffers - 200Msps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4ELMAONDPIMEMWFUQPKQ3ITCZAGXGWLM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2759917893927898889=="

This is a multi-part message in MIME format.
--===============2759917893927898889==
Content-Type: multipart/alternative;
 boundary="------------uy6kSaSNvYCvwdvBx8lfeJ17"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------uy6kSaSNvYCvwdvBx8lfeJ17
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 23/07/2024 05:48, Martin Braun wrote:
> Check this out:=20
> https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-ex=
ample/icores/x310_rfnoc_image_core.yml#L16-L35
>
> Unit is bytes. You can try and increase it but you might have to=20
> remove stuff from the design.
>
> Note that I think of them as "tx buffers" (because streamer -> SEP ->=20
> TX radio is where they get used) but I'm a radio guy, not an FPGA guy.
>
> --M
Thanks, Martin.

I will opine that increasing the buffers on the radio may not help with=20
"U" problems, since said problem is about
 =C2=A0 the host being unable to deliver samples in time.=C2=A0 Not clear=
 that=20
making the buffers bigger on the *radio*
 =C2=A0 will help with that.


>
> On Tue, Jul 23, 2024 at 12:44=E2=80=AFAM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 22/07/2024 18:39, cjohnson@serranosystems.com wrote:
>>
>>     Hi Marcus,
>>
>>     Thanks for the answer in 2).
>>
>>     What about 1) *FPGA Rx Buffer Size:*
>>
>>      *
>>
>>         What is the FPGA Rx buffer size on the X310?
>>
>>
>     I honestly don't know, and I'm not an FPGA guy, so diving into the
>     FPGA code likely won't enlighten either of us.
>
>     Martin likely knows, but he only dips into this forum occasionally.
>
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------uy6kSaSNvYCvwdvBx8lfeJ17
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 23/07/2024 05:48, Martin Braun
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFOi1A4Z+P_VX5X37=3DBCg47xCvQh7vOTF72ydOhn8xrUxvTROg@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Check this out: <a
href=3D"https://github.com/EttusResearch/uhd/blob/master/host/examples/rf=
noc-example/icores/x310_rfnoc_image_core.yml#L16-L35"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-example/=
icores/x310_rfnoc_image_core.yml#L16-L35</a></div>
        <div><br>
        </div>
        <div>Unit is bytes. You can try and increase it but you might
          have to remove stuff from the design.</div>
        <div><br>
        </div>
        <div>Note that I think of them as "tx buffers" (because streamer
          -&gt; SEP -&gt; TX radio is where they get used) but I'm a
          radio guy, not an FPGA guy.</div>
        <div><br>
        </div>
        <div>--M<br>
        </div>
      </div>
    </blockquote>
    Thanks, Martin.<br>
    <br>
    I will opine that increasing the buffers on the radio may not help
    with "U" problems, since said problem is about<br>
    =C2=A0 the host being unable to deliver samples in time.=C2=A0 Not cl=
ear that
    making the buffers bigger on the *radio*<br>
    =C2=A0 will help with that.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAFOi1A4Z+P_VX5X37=3DBCg47xCvQh7vOTF72ydOhn8xrUxvTROg@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 23, 2024 at
          12:44=E2=80=AFAM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div>
            <div>On 22/07/2024 18:39, <a
                href=3D"mailto:cjohnson@serranosystems.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">cjohnson@serranosystems.c=
om</a>
              wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <p>Hi Marcus,</p>
              <p>Thanks for the answer in 2).</p>
              <p>What about 1)=C2=A0<strong>FPGA Rx Buffer Size:</strong>=
</p>
              <ul>
                <li>
                  <p>What is the FPGA Rx buffer size on the X310?</p>
                </li>
              </ul>
              <br>
            </blockquote>
            I honestly don't know, and I'm not an FPGA guy, so diving
            into the FPGA code likely won't enlighten either of us.<br>
            <br>
            Martin likely knows, but he only dips into this forum
            occasionally.<br>
            <br>
            <br>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------uy6kSaSNvYCvwdvBx8lfeJ17--

--===============2759917893927898889==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2759917893927898889==--
