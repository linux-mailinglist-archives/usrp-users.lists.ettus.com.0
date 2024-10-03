Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E3898E7BB
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 02:25:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3569638598D
	for <lists+usrp-users@lfdr.de>; Wed,  2 Oct 2024 20:25:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727915104; bh=sxRCaiLekSUW/PzOtY7I4ki4DBmQUxDW3HPjJSaf8xw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=m7gTNd2FvpDQqu8z69Qw6TdJdNZUHQ0rlXGrpTp0mie4mJWI8TFwpgy61uo+zzhrF
	 cJwqZHiy9QRcbXhXJ31MNfXsp+KjXdWy0T6i8oKsCi6ICjDm0z6GIO/Ll+Gl8cA1d0
	 9jcW4lYOR07gAh6M3tOc8lwrS1tW3iJ+OmqmgT4Ysq2bMyBSNZeZ0GQE7t8d2CT/MK
	 re4cwEU697ljJrwbHqK8WKbqRgg8AHth1bO3/Ql4dwRFtg8to5cNQ7ydGWcZrpfT4v
	 9aP8RjEB9NXKV01AB9EiC33TAsJed9+IIjOqHYp8XfP9A2PODbeUiUT2R7Jlauye14
	 nyW03OYR8pjgQ==
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id CEE773858A5
	for <usrp-users@lists.ettus.com>; Wed,  2 Oct 2024 20:24:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="i+qtbakO";
	dkim-atps=neutral
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-4582760b79cso1540151cf.2
        for <usrp-users@lists.ettus.com>; Wed, 02 Oct 2024 17:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727915045; x=1728519845; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EOeycenh6Q7jG5QiEMB42LbLhhABDaNU4UTJtxqzIDM=;
        b=i+qtbakOdTCRVhwwVvw2kOhKcHF5miBQ8wUhOrR3XB+HvY8xW3esiyUA8f+o1u3TGZ
         cVcTj57zZbqFi1xrm8UiE6qfyPH35mBo8xp6IKPJbAOy1S9xix3N9lyVFIKnGTGrt1N+
         R4uHhJ2D1GVmqCOoDMLYL3IPh/f5xURonbFcn2GSwz35omVdS3zNXAskugHtQpc37CDS
         I4hIs2AbiycWtU7MQPaB12HGdiIg0SnjUgoZ7cD5ZUTExDNYCz83IRRzFxsMK0uRkMOX
         msto8oEYQ3l313z2rOHBG1bRk+R7fGWoh4INrV0/T+GsEsPUBT73gwQC43IEBjuGqHWA
         Z2cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727915045; x=1728519845;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EOeycenh6Q7jG5QiEMB42LbLhhABDaNU4UTJtxqzIDM=;
        b=or/XChSKZNcwnx0bCIIdwT8Nook/Zge0fK2ITYZqFo807ecY3Awk9DKn7AHAaq4tTJ
         Uz/F1RxBdZsS8pvsLwZrxNfqVGSr4XhabV6XPfXPrX71TsuG3WtBeTwousFUtTbis0Z3
         74XGJjT7MxYw9ri6w2r/C9o+/kfnkl5E24OIC52nzXEKNlU5FBY1qdcxSx4V5II8fsMX
         Ng13mKZuTA/23NsXKOlsbeR/M4YapYo0jpXctCsl7YW50jVP6xium0PlYmolyLvsmKNc
         5n7c95bBirzbXvErtbg9dZjPcIAM4KHyqyRMzGLBIv5ZiNsbK+TqxfENV8NVGbF88vbD
         ij7w==
X-Gm-Message-State: AOJu0YxtvHC0inhvntRZfp8ZibFaZA8Nx4mcOBXYOGlEFq4vf/bkK6Y4
	veXj8pwAqMWSLOon9lRrHdXE8M0r/75hqbTnguxkEjOTuR/NlxiRfGpwKw==
X-Google-Smtp-Source: AGHT+IFI/Ut0xZqoE3dsBNBJESe/JqgxDG4lBLApO2O4lLKxD6k1trkdoVmw/ZGTScwXLHG46rEO4w==
X-Received: by 2002:a05:622a:44b:b0:458:2e48:b5ec with SMTP id d75a77b69052e-45d8054e4d1mr77096761cf.45.1727915044490;
        Wed, 02 Oct 2024 17:24:04 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-45d929da112sm5651cf.30.2024.10.02.17.24.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2024 17:24:04 -0700 (PDT)
Message-ID: <84378632-3145-4ead-a938-d3d8f8e42591@gmail.com>
Date: Wed, 2 Oct 2024 20:24:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <545761728.8224264.1727914628326.ref@mail.yahoo.com>
 <545761728.8224264.1727914628326@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <545761728.8224264.1727914628326@mail.yahoo.com>
Message-ID-Hash: ALAOWPJWRFYMSEE4GKDCJXALGEYM3IAG
X-Message-ID-Hash: ALAOWPJWRFYMSEE4GKDCJXALGEYM3IAG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus USRP X310 with Different Daughterboards
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ALAOWPJWRFYMSEE4GKDCJXALGEYM3IAG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8526215097426505909=="

This is a multi-part message in MIME format.
--===============8526215097426505909==
Content-Type: multipart/alternative;
 boundary="------------ByjEVVhZDJ8DLXIXX9RN3Ycl"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ByjEVVhZDJ8DLXIXX9RN3Ycl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/10/2024 20:17, Q W via USRP-users wrote:
> Hello,
>
> I just started using USRP for a project. I have a Ettus X310 with a 
> UBX160, a LFTX and a LFRX installed on the motherboard. The X310 
> motherboard is quite old purchased in 2016/2017. Labview is used as 
> the software platform.
>
> After connecting X310 with PC via 1G Ethernet cable, I was required to 
> upgrade the firmware. Then I had a warning (see the screenshot below) 
> when trying to upgrade. I didn't proceed. I contacted NI and was 
> advised that in order to turn an Ettus USRP to an NI USRP, the 
> daughterboards installed must be the same. Also Labview doesn't 
> support the configuration with two different daughterboards. However, 
> due to the requirement of the project, I will have to use these 
> daughterboards to cover all the frequence bands I am interested in. I 
> couldn't afford to buy a second motherboard either.
>
> Inline image
>
> I would like to know if it's possible to use the X310 and the 
> daughterboards available to me at the moment. If NI and Labview have 
> restrictions on the daughterboards, can I use other software tools 
> such as UHD and Gnuradio?
>
> Kind regards,
> Tom
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Your configuration should be supportable in a UHD+Gnu Radio environment.


--------------ByjEVVhZDJ8DLXIXX9RN3Ycl
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 02/10/2024 20:17, Q W via USRP-user=
s
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:545761728.8224264.1727914628326@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp4a59f1cdyahoo-style-wrap"
style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-si=
ze:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hello,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">I just started using USRP =
for
          a project. I have a Ettus X310 with a UBX160, a LFTX and a
          LFRX installed on the motherboard. The X310 motherboard is
          quite old purchased in 2016/2017. Labview is used as the
          software platform.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">After connecting X310 with=
 PC
          via 1G Ethernet cable, I was required to upgrade the firmware.
          Then I had a warning (see the screenshot below) when trying to
          upgrade. I didn't proceed. I contacted NI and was advised that
          in order to turn an Ettus USRP to an NI USRP, the
          daughterboards installed must be the same. Also Labview
          doesn't support the configuration with two different
          daughterboards. However, due to the requirement of the
          project, I will have to use these daughterboards to cover all
          the frequence bands I am interested in. I couldn't afford to
          buy a second motherboard either.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><img title=3D"Inline image=
"
            alt=3D"Inline image"
            src=3D"cid:6544896f-4000-3a11-94ac-f120ad0b4dcd@yahoo.com"
            class=3D"yahoo-inline-image yahoo-loading" draggable=3D"false=
"
            style=3D"max-width: 800px;"
            data-inlineimagemanipulating=3D"true"
data-id=3D"&lt;6544896f-4000-3a11-94ac-f120ad0b4dcd@yahoo.com&gt;"
            moz-do-not-send=3D"true"><br>
          <span></span><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span
style=3D"font-size:11.0pt;font-family:Aptos,sans-serif;mso-fareast-font-f=
amily:Aptos;mso-fareast-theme-font:minor-latin;mso-bidi-font-family:Aptos=
;color:black;mso-ansi-language:EN-AU;mso-fareast-language:EN-AU;mso-bidi-=
language:AR-SA"><!--[if gte vml 1]><v:shapetype id=3D"_x0000_t75"
 coordsize=3D"21600,21600" o:spt=3D"75" o:preferrelative=3D"t" path=3D"m@=
4@5l@4@11@9@11@9@5xe"
 filled=3D"f" stroked=3D"f">
 <v:stroke joinstyle=3D"miter"/>
 <v:formulas>
  <v:f eqn=3D"if lineDrawn pixelLineWidth 0"/>
  <v:f eqn=3D"sum @0 1 0"/>
  <v:f eqn=3D"sum 0 0 @1"/>
  <v:f eqn=3D"prod @2 1 2"/>
  <v:f eqn=3D"prod @3 21600 pixelWidth"/>
  <v:f eqn=3D"prod @3 21600 pixelHeight"/>
  <v:f eqn=3D"sum @0 0 1"/>
  <v:f eqn=3D"prod @6 1 2"/>
  <v:f eqn=3D"prod @7 21600 pixelWidth"/>
  <v:f eqn=3D"sum @8 21600 0"/>
  <v:f eqn=3D"prod @7 21600 pixelHeight"/>
  <v:f eqn=3D"sum @10 21600 0"/>
 </v:formulas>
 <v:path o:extrusionok=3D"f" gradientshapeok=3D"t" o:connecttype=3D"rect"=
/>
 <o:lock v:ext=3D"edit" aspectratio=3D"t"/>
</v:shapetype><v:shape id=3D"x_x_x_Picture_x0020_1" o:spid=3D"_x0000_i102=
5" type=3D"#_x0000_t75"
 alt=3D"" style=3D'width:553.5pt;height:308.25pt'>
 <v:imagedata src=3D"file:///C:/Users/z3546710/AppData/Local/Temp/msohtml=
clip1/01/clip_image001.png"
  o:href=3D"cid:image009.png@01DB1576.2E220FB0"/>
</v:shape><![endif]--><!--[if !vml]--><img
                style=3D"width: 738px; max-width: 0px;"
                data-inlineimagemanipulating=3D"true"
                moz-do-not-send=3D"true" border=3D"0"></span></span></div=
>
        <div dir=3D"ltr" data-setdir=3D"false">I would like to know if it=
's
          possible to use the X310 and the daughterboards available to
          me at the moment. If NI and Labview have restrictions on the
          daughterboards, can I use other software tools such as UHD and
          Gnuradio?</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Kind regards,</div>
        <div dir=3D"ltr" data-setdir=3D"false">Tom=C2=A0</div>
        <div dir=3D"ltr" data-setdir=3D"false">=C2=A0</div>
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
    Your configuration should be supportable in a UHD+Gnu Radio
    environment.<br>
    <br>
    <br>
  </body>
</html>

--------------ByjEVVhZDJ8DLXIXX9RN3Ycl--

--===============8526215097426505909==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8526215097426505909==--
