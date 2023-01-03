Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFDE65C2D6
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 16:16:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A55B5384120
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 10:16:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672758995; bh=vuHEs3K5b3AvUQSeUiNtQzeFJhgKtAO+WEo4KXSr/oc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=j3b4uC1vCUOkr7MFTj1ggNSOIIOpxUVwCfIYB5Nvi3Az26RJqeihgpyEqXj9ogOvS
	 Or4cNvkXot3XvwV0bTRaDPile27egmQ2jRy1xWtevdNjPys2oq+mXDsJ7PfirueQjA
	 PC0uUb2u6JU5UJyaPjWgc/NSsucDnDrR/Ele9kz07v+yumIQhWnE7F9TFhQ6bLDTST
	 2Vq+GK8cstfaAyPG7a0S+GfBTJ7Kst9YEJzI0ygLVdP15ho6gZqHdSwjezBWQXd0qJ
	 4KVsnihrVGMDRjTSWa+Djz6c66i3oVr4wjI/qzgqRLyE072+IaP0DY/IHDderpycmL
	 dYwxKUZpJMGGA==
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 918EE38408D
	for <usrp-users@lists.ettus.com>; Tue,  3 Jan 2023 10:15:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="dc1tLEQw";
	dkim-atps=neutral
Received: by mail-wm1-f50.google.com with SMTP id m3so14044653wmq.0
        for <usrp-users@lists.ettus.com>; Tue, 03 Jan 2023 07:15:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:references:to:from:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ae/pgUvp6e6wm/jsyzWeOKYXeJ6Uv7Ex6C0EZ3Wtqi8=;
        b=dc1tLEQwZk79aYJifjlNtW1pYlCpYJTzzDSQ3pOS+vLbSzbZta7ZGV1ud2z6eleydW
         LjopecUSlkWkxu26tyzEv3h1TGhEeOBDUuouUf7E703zR3yjn7zpgS09/BaSKbcWdzMI
         RiG5+DI0lSq3z5zCa3aG2Mqcs2HxLjNxn7xq10nfYRm1c9J8ydHCunDiSSZ+QZ/keG6w
         1uD+GYpSVGQvaKSRaPOKdMm+xtyW+LDL1Hq57bIn2qxvVNoZLIagHLgnCeWQYCfXplBE
         pvRbB8MQJ0CVi1GKXf18AEC7yv6eBMgJeioTJCgjaDZ0j0+tlDEqLnytXE6wDTPEVMSQ
         NkWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:to:from:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ae/pgUvp6e6wm/jsyzWeOKYXeJ6Uv7Ex6C0EZ3Wtqi8=;
        b=1b0Psd4MPsEkIp9gdoB9j/X5hMeIsl021zdet8axeA+eE9uw3eDadqsLcOrFBQmxky
         FlQw0goModLXO0krFIv7+VYppbqD8SVYgEwGIvS81wQvoezlBxM/y/t7vMqO0cWeGd3V
         HvKKIEGq9QqznwryVY+Pj5uo3WWFJXCcbQ08IZIilc9abuii/WX5JmfZcsXkGU9kpV5E
         PAxYei6m8sxqRO0s3ehpBhHkVb6iXPFdprYMbWjowQ4E6yy1/2ng8nsVD70gnKqDCbmY
         oVcfoNbGJDR03NtGGxxpZxfZkh4NAcnz2SssD7PlKXz4e/I+6WLqaykz8yb8GnTDd/vb
         6dEg==
X-Gm-Message-State: AFqh2krVI/DOZ+4wBUpwQgGWxs/3y2vxg3RN+R7nHeo/ot1+jtbFC/xj
	ercqQaTKpV5Bv52po3jxB4t+tV2TfrBP88lDnIU=
X-Google-Smtp-Source: AMrXdXt4cT/wFqimY6s0EtxZhjYQlEKIPfLNxr0LAQDz2UXc7s+O+02W+6FRJ6CHTw+MSQealR1SvA==
X-Received: by 2002:a05:600c:1c11:b0:3d1:e583:51a0 with SMTP id j17-20020a05600c1c1100b003d1e58351a0mr32999741wms.25.1672758900339;
        Tue, 03 Jan 2023 07:15:00 -0800 (PST)
Received: from ?IPV6:2001:9e8:3867:8800:998f:ca6a:6065:3212? ([2001:9e8:3867:8800:998f:ca6a:6065:3212])
        by smtp.gmail.com with ESMTPSA id p12-20020a05600c468c00b003cf5ec79bf9sm42017720wmo.40.2023.01.03.07.14.59
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jan 2023 07:15:00 -0800 (PST)
Message-ID: <5c1a56c3-cf76-4ee9-c3ed-40411a5e0f3b@ettus.com>
Date: Tue, 3 Jan 2023 16:14:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
To: usrp-users@lists.ettus.com
References: <CAD_5BALc9Z85RuZ8hiH4Hao2e2UQWQZ=RN2T-zYCxY2nZxbTyw@mail.gmail.com>
 <e55e5607-13e2-d6a9-6819-9a60c17540b5@ettus.com>
In-Reply-To: <e55e5607-13e2-d6a9-6819-9a60c17540b5@ettus.com>
Message-ID-Hash: YQWB3REIDIFFEVNP3HAINUQY63ZXCDZB
X-Message-ID-Hash: YQWB3REIDIFFEVNP3HAINUQY63ZXCDZB
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: SDR environment with USRP & external FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YQWB3REIDIFFEVNP3HAINUQY63ZXCDZB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1994800788213536901=="

This is a multi-part message in MIME format.
--===============1994800788213536901==
Content-Type: multipart/alternative;
 boundary="------------RGp5fhNdsPQguYljefER1ppi"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------RGp5fhNdsPQguYljefER1ppi
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Note that the N310's FPGA might actually be large enough to fit in (parts=
 of) a GNSS=20
receiver, especially if you remove the DUC chain of the TX path, in case =
you don't need=20
that. RFNoC is Ettus' framework for extending the FPGA functionality, esp=
ecially made for=20
such use cases.

Note that even in RFNoC you get a stream of samples from the radio fronte=
nd, which you=20
basically paid NI/Ettus for to design it for you, so that you don't have =
to worry about=20
how to talk to the physical hardware and can care about signal processing=
 :)

Cheers,
Marcus


On 03.01.23 16:11, Marcus M=C3=BCller wrote:
>
> Hi Mr Pereira,
>
> the directest access you get to samples in the N210 is the ethernet con=
nection =E2=80=93 and=20
> that has no downside for GNSS applications, as the VITA49 samples fully=
 represent the RF=20
> signal, thanks to Shannon-Nyquist.
>
> That is, of course, unless you start modifying the FPGA image of the N2=
10, and make it a=20
> completely different product. It's kind of unlikely you want to do that=
.
>
> Greetings,
> Marcus
>
> On 03.01.23 14:25, Pedro Pereira wrote:
>
>> Greetings,
>>
>> I have 2 USRP front-ends - N210 and N310. I want to develop a GNSS Rec=
eiver inside my=20
>> FGPA - xilinx ZCU102 - and use one of the USRP devices only as the fro=
nt-end. The=20
>> receiver is quite large so I need an external board for all the signal=
 processing=20
>> chain. The receiver has two implementations - software-only & hybrid. =
In hybrid mode=20
>> some tasks of the processing chain are accelerated in hardware.
>>
>> The software-only version of the receiver running on my ZCU102 is able=
 to configure the=20
>> N210 and read packets over ethernet correctly. However, with the hybri=
d version of the=20
>> receiver, I want to read the digital IQ samples from the front end dir=
ectly in hardware.
>>
>> For example, I am able to do this with the ZCU102 connected to FMComm2=
/3 using the FMC=20
>> connection on the FPGA. AD provides HDL reference designs to support c=
ommunication=20
>> between multiple front-ends and multiple FPGAs.
>>
>> Is there a similar way to read the digital samples directly in hardwar=
e using the N210?=20
>> The N210 only has the ethernet and a MIMO port.
>>
>> Thanks in advance.
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------RGp5fhNdsPQguYljefER1ppi
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Note that the N310's FPGA might actually be large enough to fit
      in (parts of) a GNSS receiver, especially if you remove the DUC
      chain of the TX path, in case you don't need that. RFNoC is Ettus'
      framework for extending the FPGA functionality, especially made
      for such use cases.</p>
    <p>Note that even in RFNoC you get a stream of samples from the
      radio frontend, which you basically paid NI/Ettus for to design it
      for you, so that you don't have to worry about how to talk to the
      physical hardware and can care about signal processing :)</p>
    <p>Cheers,<br>
      Marcus<br>
    </p>
    <br>
    <div class=3D"moz-cite-prefix">On 03.01.23 16:11, Marcus M=C3=BCller =
wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:e55e5607-13e2-d6a9-6819-9a60c17540b5@ettus.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi Mr Pereira,</p>
      <p>the directest access you get to samples in the N210 is the
        ethernet connection =E2=80=93 and that has no downside for GNSS
        applications, as the VITA49 samples fully represent the RF
        signal, thanks to Shannon-Nyquist.</p>
      <p>That is, of course, unless you start modifying the FPGA image
        of the N210, and make it a completely different product. It's
        kind of unlikely you want to do that.</p>
      <p>Greetings,<br>
        Marcus<br>
      </p>
      <p>On 03.01.23 14:25, Pedro Pereira wrote:</p>
      <blockquote type=3D"cite"
cite=3D"mid:CAD_5BALc9Z85RuZ8hiH4Hao2e2UQWQZ=3DRN2T-zYCxY2nZxbTyw@mail.gm=
ail.com">
        <meta http-equiv=3D"content-type" content=3D"text/html;
          charset=3DUTF-8">
        <div dir=3D"ltr">Greetings,
          <div><br>
          </div>
          <div>I have 2 USRP front-ends - N210 and N310. I want to
            develop a GNSS Receiver inside my FGPA - xilinx ZCU102 - and
            use one of the USRP devices only as the front-end. The
            receiver is quite large so I need an external board for all
            the signal processing chain. The receiver has two
            implementations - software-only &amp; hybrid. In hybrid mode
            some tasks of the processing chain are accelerated in
            hardware.</div>
          <div><br>
          </div>
          <div>The software-only version of the receiver running on my
            ZCU102 is able to configure the N210 and read packets over
            ethernet correctly. However, with the hybrid version of the
            receiver, I want to read the digital IQ samples from the
            front end directly in hardware.=C2=A0</div>
          <div><br>
          </div>
          <div>For example, I am able to do this with the ZCU102
            connected to=C2=A0<span
              style=3D"color:rgb(17,23,26);font-family:Barlow,&quot;Helve=
tica
              Neue&quot;,Helvetica,Arial,&quot;Lucida
              Grande&quot;,sans-serif;font-size:14px">FMComm2/3 using
              the FMC connection on the FPGA. AD provides HDL reference
              designs to support communication between multiple
              front-ends and multiple FPGAs.=C2=A0</span></div>
          <div><span
              style=3D"color:rgb(17,23,26);font-family:Barlow,&quot;Helve=
tica
              Neue&quot;,Helvetica,Arial,&quot;Lucida
              Grande&quot;,sans-serif;font-size:14px"><br>
            </span></div>
          <div><span
              style=3D"color:rgb(17,23,26);font-family:Barlow,&quot;Helve=
tica
              Neue&quot;,Helvetica,Arial,&quot;Lucida
              Grande&quot;,sans-serif;font-size:14px">Is there a similar
              way to read the digital samples directly in hardware using
              the N210? The N210 only has the ethernet and a MIMO port.</=
span></div>
          <div><span
              style=3D"color:rgb(17,23,26);font-family:Barlow,&quot;Helve=
tica
              Neue&quot;,Helvetica,Arial,&quot;Lucida
              Grande&quot;,sans-serif;font-size:14px"><br>
            </span></div>
          <div><font face=3D"Barlow, Helvetica Neue, Helvetica, Arial,
              Lucida Grande, sans-serif" color=3D"#11171a"><span
                style=3D"font-size:14px">Thanks in advance.</span></font>=
</div>
          <div><span
              style=3D"color:rgb(17,23,26);font-family:Barlow,&quot;Helve=
tica
              Neue&quot;,Helvetica,Arial,&quot;Lucida
              Grande&quot;,sans-serif;font-size:14px"><br>
            </span></div>
          <div><span
              style=3D"color:rgb(17,23,26);font-family:Barlow,&quot;Helve=
tica
              Neue&quot;,Helvetica,Arial,&quot;Lucida
              Grande&quot;,sans-serif;font-size:14px"><br>
            </span></div>
        </div>
        <br>
        <fieldset class=3D"moz-mime-attachment-header"></fieldset>
        <pre class=3D"moz-quote-pre" wrap=3D"">__________________________=
_____________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated moz-txt-l=
ink-freetext" href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D=
"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated moz-=
txt-link-freetext" href=3D"mailto:usrp-users-leave@lists.ettus.com" moz-d=
o-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------RGp5fhNdsPQguYljefER1ppi--

--===============1994800788213536901==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1994800788213536901==--
