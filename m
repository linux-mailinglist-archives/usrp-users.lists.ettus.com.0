Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 749207FC6C1
	for <lists+usrp-users@lfdr.de>; Tue, 28 Nov 2023 22:06:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8848F3851E6
	for <lists+usrp-users@lfdr.de>; Tue, 28 Nov 2023 16:06:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701205605; bh=FCHrwWsyfpvjsEHq0nC3/ac5bfOXpsvsIlb/Mv306vs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=jTaRujgfA+K2X3W7BWbPm7VH8BGrxqNAFNOB7RQL9rhyqroT0fzuKPb3AYOeJeV8h
	 YYv5mm+5+q8msa/gHNODbeGnV2uLgi+mgHMHF2hQUvZwrdMEf9C1DQAgY/AlOxmrcd
	 hBR7lXxj2YBm+hFfCr58BQSzy7RNAezjLCyna/kvAbaJp1qdIzXHbhNtgrEMRxBfk+
	 OC1YEIBWRwuiebygBOOxCpM4OhuFi0S0prmms5TYQqqw7nsX4T/EKnAawy7/NfVUfu
	 mX3gwq7ryK6gu3uoD/1DLeIbNRzXKpds7MdRmZQIS92D4F+Nfdv0OuA8x+9/k1Ihbm
	 c2uUZZJ1Ui8wg==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 53BCB385027
	for <usrp-users@lists.ettus.com>; Tue, 28 Nov 2023 16:05:52 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VN8GfRPm";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-41cd8bd5727so31032101cf.3
        for <usrp-users@lists.ettus.com>; Tue, 28 Nov 2023 13:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701205551; x=1701810351; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tkd0SEjBLo+K6tfBKDpLp16NXlr6pfEH6PBOlKbIBaU=;
        b=VN8GfRPm72mp7l2MziIU9l0VcfSNz/ydv7cMruJfIij8gzTZsZybPuwStBizTs0Kbc
         9Xl398+ERq6z6u89WsclEnSVHvRzwmXK7yxntd/yQeXa2a+KjfOJ+ZfHuObv8458cY4x
         N9BlNoreyfIhRUsnm+PhjlgPEpLHuegIrLl3jxGrlj/EgJWBzs8YKrvyuiN41yl7EG8f
         iTvG36+qMH898vP8a+RY+ExRXeIiO7tQgvRx6Tb0szfBPa39Qr+RqYqGb2DFKNLC5Va3
         S8NhcuA5WSkD+Cv9kQCEZ80NwYgeHvS3vr7qczosvKm1TSqhOKP9mHlzYT63mT580rVy
         vXcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701205551; x=1701810351;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Tkd0SEjBLo+K6tfBKDpLp16NXlr6pfEH6PBOlKbIBaU=;
        b=QQm5+HxPnVy/CjudUXQ1lDS4DESg5CaLLdbe3V10AQWhUTNLjF03NAFrqHkMCmI/0d
         VB8U8SceAlcifOhr58Cj8ktvvK1V+0DCojgh0yrr1XRnPe6TZnYPRHDyKmAwlmKGEtwp
         0CN9XOrzevn8vtYgcbzWVi1iUPq5Ex1FH7dc10+V8Qg8DSIEnZofuAfgSVrfDlbj8wAp
         TvQYye5sAfEzHxBveKQkV6+hfzjkTeRZB2W25/6JfDylBYyhNx6CC9bSyCCgsjgRFVnT
         Vbh7QuEG7QrMNd8tMfgPXrit7qWxGYe+1MMnkgLKAEgoHmcjLqGAGqGUgBqcsNMDWfEF
         alYA==
X-Gm-Message-State: AOJu0YwTDJvjUneITiC0FMWnG9QtsmQ7lNC70BPr4skzLscDc6d71to/
	tLNEXGffWIbOR6QZZq805I8/2od4zcE=
X-Google-Smtp-Source: AGHT+IEeqVziHtyIy6s8EttyZHDhSHKDcmvAo02QqppsTJgoNYaXAhtdQP8Ly/yq1OAnQR/ZZmdgrA==
X-Received: by 2002:a05:622a:1aa8:b0:423:93ea:18f1 with SMTP id s40-20020a05622a1aa800b0042393ea18f1mr19944200qtc.66.1701205551402;
        Tue, 28 Nov 2023 13:05:51 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id c20-20020ac85194000000b0041cb8732d57sm4911020qtn.38.2023.11.28.13.05.50
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Nov 2023 13:05:51 -0800 (PST)
Message-ID: <530cb4a9-24e3-47f8-bb1d-032a3a3809da@gmail.com>
Date: Tue, 28 Nov 2023 16:05:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SA0PR19MB460276F5EC169D037C7B1FF3CEBCA@SA0PR19MB4602.namprd19.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SA0PR19MB460276F5EC169D037C7B1FF3CEBCA@SA0PR19MB4602.namprd19.prod.outlook.com>
Message-ID-Hash: N2TBN4RM4GWBSOH2ZJI3QI435IEAOBF3
X-Message-ID-Hash: N2TBN4RM4GWBSOH2ZJI3QI435IEAOBF3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: NPM problem
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N2TBN4RM4GWBSOH2ZJI3QI435IEAOBF3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2976409887995598920=="

This is a multi-part message in MIME format.
--===============2976409887995598920==
Content-Type: multipart/alternative;
 boundary="------------ESx4SNc0N4bKkA7ms4CZ9DrC"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ESx4SNc0N4bKkA7ms4CZ9DrC
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 28/11/2023 15:00, Alejandra Medina D=C3=ADaz wrote:
> I'm starting using USRP X440 with a fm receiver I used before with=20
> others USRPs, but when I execute the .grc I got:
>
> Generating: '/home/lab03/Downloads/analizer1.py'
>
> Executing: /usr/bin/python3 -u /home/lab03/Downloads/analizer1.py
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;=20
> UHD_4.2.0.1-0-g321295fb
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D10.182.30.35,type=3Dx4xx,product=3Dx410,serial=3D32B5D9F,fp=
ga=3DX4_200,claimed=3DFalse,addr=3D10.182.30.35
> [ERROR] [MPMD] MPM minor compat number mismatch. Expected: 4.2 Actual:=20
> 4.0. Please update the version of MPM on your USRP device.
> Traceback (most recent call last):
> =C2=A0=C2=A0File "/home/lab03/Downloads/analizer1.py", line 392, in <mo=
dule>
> =C2=A0=C2=A0=C2=A0=C2=A0main()
> =C2=A0=C2=A0File "/home/lab03/Downloads/analizer1.py", line 370, in mai=
n
> =C2=A0=C2=A0=C2=A0=C2=A0tb =3D top_block_cls()
> =C2=A0=C2=A0File "/home/lab03/Downloads/analizer1.py", line 87, in __in=
it__
> =C2=A0=C2=A0=C2=A0=C2=A0self.uhd_usrp_source_0 =3D uhd.usrp_source(
> RuntimeError: RuntimeError: MPM minor compat number mismatch.=20
> Expected: 4.2 Actual: 4.0. Please update the version of MPM on your=20
> USRP device.
>
> I already checked the manual from the oficial web page "USRP Hardware=20
> driver and USRP Manual" and I could do some but not the expected, now=20
> I got Actual:5.3.
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
You're running UHD 4.2--as shown in the startup messages.

The X440 requires a minimum version of UHD 4.5, as stated here:

"The Ettus USRP X440 requires UHD version 4.5.0.0 or later. If you are=20
using a host machine,
 =C2=A0 the versions of UHD on the host machine and device must match."

 From this document here:

https://www.ni.com/docs/en-US/bundle/usrp-x440-getting-started/page/getti=
ng-started.html


I believe I've already mentioned this to you.






--------------ESx4SNc0N4bKkA7ms4CZ9DrC
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 28/11/2023 15:00, Alejandra Medina
      D=C3=ADaz wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SA0PR19MB460276F5EC169D037C7B1FF3CEBCA@SA0PR19MB4602.namprd19=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>
          <div><span class=3D"elementToProof"
              style=3D"text-decoration: none; color: rgb(0, 0, 0);"><span
                data-ogsc=3D"rgb(0, 0, 0)"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; line-height: 1.5; color: rg=
b(0, 0, 0);">I'm
                starting using USRP X440 with a fm receiver I used
                before with others USRPs, but when I execute the .grc I
                got:<span class=3D"Apple-converted-space">=C2=A0</span><b=
r>
              </span></span>
            <div style=3D"text-decoration: none; color: rgb(0, 0, 0);"
              dir=3D"ltr"><span data-ogsc=3D"rgb(0, 0, 0)"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; line-height: 1.5; color: rg=
b(0, 0, 0);"><br>
              </span></div>
            <div style=3D"text-decoration: none; color: rgb(0, 0, 0);"><s=
pan
                data-ogsc=3D"rgb(29, 28, 29)"
                data-ogsb=3D"rgb(255, 255, 255)"
style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;=
 font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-co=
lor: rgb(255, 255, 255);">Generating:
                '/home/lab03/Downloads/analizer1.py'</span></div>
            <div style=3D"text-decoration: none; color: rgb(0, 0, 0);"
              dir=3D"ltr"><span data-ogsc=3D"rgb(29, 28, 29)"
                data-ogsb=3D"rgb(255, 255, 255)"
style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;=
 font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-co=
lor: rgb(255, 255, 255);"><br>
              </span></div>
            <div style=3D"text-decoration: none; color: rgb(0, 0, 0);"><s=
pan
                data-ogsc=3D"rgb(29, 28, 29)"
                data-ogsb=3D"rgb(255, 255, 255)"
style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;=
 font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-co=
lor: rgb(255, 255, 255);">Executing:
                /usr/bin/python3 -u /home/lab03/Downloads/analizer1.py</s=
pan></div>
            <div style=3D"text-decoration: none; color: rgb(0, 0, 0);"><s=
pan
                data-ogsc=3D"rgb(29, 28, 29)"
                data-ogsb=3D"rgb(255, 255, 255)"
style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;=
 font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-co=
lor: rgb(255, 255, 255);">[INFO]
                [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
                UHD_4.2.0.1-0-g321295fb</span><span
                data-ogsc=3D"rgb(0, 0, 0)"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; line-height: 1.5; color: rg=
b(0, 0, 0);"><br>
              </span><span data-ogsc=3D"rgb(29, 28, 29)"
                data-ogsb=3D"rgb(255, 255, 255)"
style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;=
 font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-co=
lor: rgb(255, 255, 255);">[INFO]
                [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=3D10.182.30.35,type=3Dx4xx,product=3Dx410,serial=3D32B5D9F,fpga=
=3DX4_200,claimed=3DFalse,addr=3D10.182.30.35</span><span
                data-ogsc=3D"rgb(0, 0, 0)"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; line-height: 1.5; color: rg=
b(0, 0, 0);"><br>
              </span><span data-ogsc=3D"rgb(29, 28, 29)"
                data-ogsb=3D"rgb(255, 255, 255)"
style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;=
 font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-co=
lor: rgb(255, 255, 255);">[ERROR]
                [MPMD] MPM minor compat number mismatch. Expected: 4.2
                Actual: 4.0. Please update the version of MPM on your
                USRP device.</span><span data-ogsc=3D"rgb(0, 0, 0)"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; line-height: 1.5; color: rg=
b(0, 0, 0);"><br>
              </span><span data-ogsc=3D"rgb(29, 28, 29)"
                data-ogsb=3D"rgb(255, 255, 255)"
style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;=
 font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-co=
lor: rgb(255, 255, 255);">Traceback
                (most recent call last):</span><span
                data-ogsc=3D"rgb(0, 0, 0)"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; line-height: 1.5; color: rg=
b(0, 0, 0);"><br>
              </span><span data-ogsc=3D"rgb(29, 28, 29)"
                data-ogsb=3D"rgb(255, 255, 255)"
style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;=
 font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-co=
lor: rgb(255, 255, 255);">=C2=A0=C2=A0File
                "/home/lab03/Downloads/analizer1.py", line 392, in
                &lt;module&gt;</span><span data-ogsc=3D"rgb(0, 0, 0)"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; line-height: 1.5; color: rg=
b(0, 0, 0);"><br>
              </span><span data-ogsc=3D"rgb(29, 28, 29)"
                data-ogsb=3D"rgb(255, 255, 255)"
style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;=
 font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-co=
lor: rgb(255, 255, 255);">=C2=A0=C2=A0=C2=A0=C2=A0main()</span><span
                data-ogsc=3D"rgb(0, 0, 0)"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; line-height: 1.5; color: rg=
b(0, 0, 0);"><br>
              </span><span data-ogsc=3D"rgb(29, 28, 29)"
                data-ogsb=3D"rgb(255, 255, 255)"
style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;=
 font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-co=
lor: rgb(255, 255, 255);">=C2=A0=C2=A0File
                "/home/lab03/Downloads/analizer1.py", line 370, in main</=
span><span
                data-ogsc=3D"rgb(0, 0, 0)"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; line-height: 1.5; color: rg=
b(0, 0, 0);"><br>
              </span><span data-ogsc=3D"rgb(29, 28, 29)"
                data-ogsb=3D"rgb(255, 255, 255)"
style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;=
 font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-co=
lor: rgb(255, 255, 255);">=C2=A0=C2=A0=C2=A0=C2=A0tb
                =3D top_block_cls()</span><span data-ogsc=3D"rgb(0, 0, 0)=
"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; line-height: 1.5; color: rg=
b(0, 0, 0);"><br>
              </span><span data-ogsc=3D"rgb(29, 28, 29)"
                data-ogsb=3D"rgb(255, 255, 255)"
style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;=
 font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-co=
lor: rgb(255, 255, 255);">=C2=A0=C2=A0File
                "/home/lab03/Downloads/analizer1.py", line 87, in
                __init__</span><span data-ogsc=3D"rgb(0, 0, 0)"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; line-height: 1.5; color: rg=
b(0, 0, 0);"><br>
              </span><span data-ogsc=3D"rgb(29, 28, 29)"
                data-ogsb=3D"rgb(255, 255, 255)"
style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;=
 font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-co=
lor: rgb(255, 255, 255);">=C2=A0=C2=A0=C2=A0=C2=A0self.uhd_usrp_source_0
                =3D uhd.usrp_source(</span></div>
            <div style=3D"text-decoration: none; color: rgb(0, 0, 0);"><s=
pan
                data-ogsc=3D"rgb(29, 28, 29)"
                data-ogsb=3D"rgb(255, 255, 255)"
style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;=
 font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-co=
lor: rgb(255, 255, 255);">RuntimeError:
                RuntimeError: MPM minor compat number mismatch.
                Expected: 4.2 Actual: 4.0. Please update the version of
                MPM on your USRP device.</span></div>
            <div style=3D"text-decoration: none; color: rgb(0, 0, 0);"
              dir=3D"ltr"><span data-ogsc=3D"rgb(29, 28, 29)"
                data-ogsb=3D"rgb(255, 255, 255)"
style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;=
 font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-co=
lor: rgb(255, 255, 255);"><br>
              </span></div>
            <span class=3D"elementToProof"
              style=3D"text-decoration: none; color: rgb(0, 0, 0);"><span
                data-ogsc=3D"rgb(29, 28, 29)"
                data-ogsb=3D"rgb(255, 255, 255)"
style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;=
 font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-co=
lor: rgb(255, 255, 255);">I
                already checked the manual from the oficial web page
                "USRP Hardware driver and USRP Manual"=C2=A0</span><span
                data-ogsc=3D"rgb(29, 28, 29)"
                data-ogsb=3D"rgb(255, 255, 255)"
style=3D"font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif;=
 font-size: 15px; line-height: 1.5; color: rgb(29, 28, 29); background-co=
lor: rgb(255, 255, 255);">and
                I could do some but not the expected, now I got
                Actual:5.3.</span></span><br>
          </div>
          <div id=3D"ms-outlook-mobile-signature" dir=3D"ltr">
            <div><br>
            </div>
            <br>
          </div>
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
    You're running UHD 4.2--as shown in the startup messages.<br>
    <br>
    The X440 requires a minimum version of UHD 4.5, as stated here:<br>
    <br>
    "The Ettus USRP X440 requires UHD version 4.5.0.0 or later. If you
    are using a host machine,<br>
    =C2=A0 the versions of UHD on the host machine and device must match.=
"<br>
    <br>
    From this document here:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://www.ni.com/docs/en-US/=
bundle/usrp-x440-getting-started/page/getting-started.html">https://www.n=
i.com/docs/en-US/bundle/usrp-x440-getting-started/page/getting-started.ht=
ml</a><br>
    <br>
    <br>
    I believe I've already mentioned this to you.<br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------ESx4SNc0N4bKkA7ms4CZ9DrC--

--===============2976409887995598920==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2976409887995598920==--
