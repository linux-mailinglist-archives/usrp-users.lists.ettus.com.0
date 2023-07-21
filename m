Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2853C75D1DF
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jul 2023 20:53:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2CD9338452C
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jul 2023 14:53:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689965626; bh=zDzjp2ta9LWUARwykQrow6YhadNj3aFSjRmHlv7mf3U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Ac0M++XSNdGfarm04NPzkJcg2mT5qiRPVFjUJYs254Ma8hA/CXTbm7WrTMAhxGDvC
	 ZQaj1DseYe4ZLU4FDqqArH3FAqo6fIVtuN/x+7mDwCsGoSQvvhACXL9BTOx4wG619I
	 jQLvVthaiNx0lmlEbVfN9uFWsGKfbRoBDCuAL4Ye56Nkh4EvzGRooOAOCQikRhOkwv
	 NEiK0saIeiDZEEuwtZLeFfhXt+u3gx8ZcYPfobk+gaD9OwZDnU8r4/1Ub/8dwDi1SK
	 bGv6j5hTwhS/uRTLtwDNT65UKJRjMCLCgzqbYeHq8u7sAeVvnmXWJKzbLPD/91nug/
	 Z4UW2clbM1BHQ==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 80B4A384181
	for <usrp-users@lists.ettus.com>; Fri, 21 Jul 2023 14:53:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dNlaqPP1";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-403b3273074so11378611cf.1
        for <usrp-users@lists.ettus.com>; Fri, 21 Jul 2023 11:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689965587; x=1690570387;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pYam9GlqZ80FZcYyDOPcbwlWSpxnrF9KWh4FZBr6It0=;
        b=dNlaqPP1bITFag7ajM3QD//QWgs1Ruknd/Utuwr6cackDXCgYXDKL8pH/erE/gVotA
         3slHKduzIgEN7w5x/6w9vDtQb7bq2xve4AfJzFjFaZtlR1HVuIZJnWtxEbRhGp895zRc
         FZzxxRNiDSJtwzmkyCo9GlgRE6XUzJkAAjSWo9t5qdyjK9JwwqHd5l1QOUfyGNaGBLiK
         GpA2hPaUpns50Fh986nJeAewMENxYG6uRqnHuuKvrdhO+t1HiDeXeLNGz8UKEkiYL88v
         cFNwD0M8mKqEB0dS0vNxDRP7SkIislYNdv6y98nJuYMNIjjGaT53UHXG3Hmo7kICQDpB
         WHSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689965587; x=1690570387;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pYam9GlqZ80FZcYyDOPcbwlWSpxnrF9KWh4FZBr6It0=;
        b=kCweBEQw6xxUWbTfjkRN53Z2sMICzrGQutaKGLx0yq895q4q579QEqrbM5OAbiYdoE
         0J2ZLAv01enhAV66EaQwg1G8+98/zINhu/3/y6r8Hfq2+5OTqHABZeN9+VjnkliGp4YQ
         a/sPLAI6AYczkFHtEdyn3XPc/mYM8KHQ3ox5NYk+OQcxpR5Umk+9BNun0NL1ZOecg8gX
         CyeG7RSKTdeMeTSLbVnI6HdLrSl+/UyJlHou4QAB5cILBzdGYF+8nuvLR1Ejih4/GgPt
         ALZtxuColNRRHnoKCrQYVWoMDao/nVWjG4rwi6cnhVvOUfb8L4bTpkH1lDgEkpN8QC2X
         lgsQ==
X-Gm-Message-State: ABy/qLa/M0P2NCXe1OXxnAuBnTE4g6dRVdRaIRUHK5K3WpGk4FWDH/b0
	H7lfVlinKwVHBxqgGupJRrWXUVCbXmY=
X-Google-Smtp-Source: APBJJlGNcyxJZPSKo0FPseIlNVcmwofEy6Z8ObDxn2bVjLiNYYm9FxXMVu0uRHtXgvcUdOZHqQIjPQ==
X-Received: by 2002:ac8:58cb:0:b0:405:3943:3a2c with SMTP id u11-20020ac858cb000000b0040539433a2cmr890750qta.31.1689965587533;
        Fri, 21 Jul 2023 11:53:07 -0700 (PDT)
Received: from [192.168.2.172] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id t10-20020ac8738a000000b003ff1f891206sm1412666qtp.61.2023.07.21.11.53.07
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Jul 2023 11:53:07 -0700 (PDT)
Message-ID: <4247b471-e988-82cc-a90e-92c57dcda279@gmail.com>
Date: Fri, 21 Jul 2023 14:52:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <DM4PR12MB6302F2051F21AD5C55DF3F0A8C3FA@DM4PR12MB6302.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <DM4PR12MB6302F2051F21AD5C55DF3F0A8C3FA@DM4PR12MB6302.namprd12.prod.outlook.com>
Message-ID-Hash: DN2RBIER3J4YAZDZQ5YTVQ3S5WYP62AA
X-Message-ID-Hash: DN2RBIER3J4YAZDZQ5YTVQ3S5WYP62AA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble Starting Continuous Rx Stream with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DN2RBIER3J4YAZDZQ5YTVQ3S5WYP62AA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6093624323954429639=="

This is a multi-part message in MIME format.
--===============6093624323954429639==
Content-Type: multipart/alternative;
 boundary="------------QoMM90K05ZYcExwhtfJMx119"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------QoMM90K05ZYcExwhtfJMx119
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 21/07/2023 14:47, Mark Koenig wrote:
> Hello,
>
> I am trying to start a continuous Rx stream with the X310.=C2=A0 I have=
 it=20
> working fine for the N210 and B200mini, but for some reason the X310=20
> only sends a single shot of samples.=C2=A0 I know this because I am usi=
ng=20
> wireshark to look at the interface. Below is the code I am using.
>
> Thank you.
>
> Mark
>
> =C2=A0receiver.send_command(&StreamCommand {
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 command_type: S=
treamCommandType::StartContinuous,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 time: StreamTim=
e::Now,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 })
>
> pub mod uhd_stream_mode_t {
> =C2=A0 =C2=A0 pub type Type =3D ::std::os::raw::c_uint;
> =C2=A0 =C2=A0 pub const UHD_STREAM_MODE_START_CONTINUOUS: Type =3D 97;
> =C2=A0 =C2=A0 pub const UHD_STREAM_MODE_STOP_CONTINUOUS: Type =3D 111;
> =C2=A0 =C2=A0 pub const UHD_STREAM_MODE_NUM_SAMPS_AND_DONE: Type =3D 10=
0;
> =C2=A0 =C2=A0 pub const UHD_STREAM_MODE_NUM_SAMPS_AND_MORE: Type =3D 10=
9;
> }
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
It might be useful to use the "rx_samples_to_file" example code--just=20
have it write to "/dev/null".=C2=A0=C2=A0 I have an X310 that we've liter=
ally
 =C2=A0 run streaming 24/7 for weeks at a time without issue.


--------------QoMM90K05ZYcExwhtfJMx119
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 21/07/2023 14:47, Mark Koenig wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:DM4PR12MB6302F2051F21AD5C55DF3F0A8C3FA@DM4PR12MB6302.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof" style=3D"font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Hello,</div>
      <div class=3D"elementToProof" style=3D"font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof" style=3D"font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        I am trying to start a continuous Rx stream with the X310.=C2=A0 =
I
        have it working fine for the N210 and B200mini, but for some
        reason the X310 only sends a single shot of samples.=C2=A0 I know
        this because I am using wireshark to look at the interface.=C2=A0
        Below is the code I am using.</div>
      <div class=3D"elementToProof" style=3D"font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof" style=3D"font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Thank you.</div>
      <div class=3D"elementToProof" style=3D"font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof" style=3D"font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Mark</div>
      <div class=3D"elementToProof" style=3D"font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof ContentPasted0" style=3D"font-family:
        Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; color:
        rgb(0, 0, 0);">
        =C2=A0receiver<span style=3D"">.send_command(&amp;StreamCommand {=
</span>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 command_type:
          StreamCommandType::StartContinuous,</div>
        <div class=3D"ContentPasted0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 time:
          StreamTime::Now,</div>
        =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 })<br>
      </div>
      <div class=3D"elementToProof ContentPasted0" style=3D"font-family:
        Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; color:
        rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof ContentPasted0 ContentPasted1"
        style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        pub mod uhd_stream_mode_t {
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 pub type Type =3D
          ::std::os::raw::c_uint;</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 pub const
          UHD_STREAM_MODE_START_CONTINUOUS: Type =3D 97;</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 pub const
          UHD_STREAM_MODE_STOP_CONTINUOUS: Type =3D 111;</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 pub const
          UHD_STREAM_MODE_NUM_SAMPS_AND_DONE: Type =3D 100;</div>
        <div class=3D"ContentPasted1">=C2=A0 =C2=A0 pub const
          UHD_STREAM_MODE_NUM_SAMPS_AND_MORE: Type =3D 109;</div>
        }<br>
      </div>
      <div class=3D"elementToProof" style=3D"font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
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
    It might be useful to use the "rx_samples_to_file" example
    code--just have it write to "/dev/null".=C2=A0=C2=A0 I have an X310 t=
hat we've
    literally<br>
    =C2=A0 run streaming 24/7 for weeks at a time without issue.<br>
    <br>
    <br>
  </body>
</html>

--------------QoMM90K05ZYcExwhtfJMx119--

--===============6093624323954429639==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6093624323954429639==--
