Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D207280B06B
	for <lists+usrp-users@lfdr.de>; Sat,  9 Dec 2023 00:13:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E23253851DB
	for <lists+usrp-users@lfdr.de>; Fri,  8 Dec 2023 18:13:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702077184; bh=wXMgz/FoZgHMYsFRr2/lDefBPcMHEAKQhhyyRUsOteE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ZUIdoLDhoG1pcHGa1qjXxfspaJ9mwxgDy7iIUynYtCdCHpmpHWd36QEQLtqcjRCQX
	 oIKjlIJLHRzysyX9RISQ1Qbli5VAynC8k4KqfcIQePvlIN+f6nhpM5+tc+I+aCoRxV
	 yQvtyzqHfPeC3F9QsogBCqe9kWRfTVpgqGxJY5vUUw3HLrzcD4wA+5lk17BelaZlo5
	 g70zIl6hQvmjXWNA0D8pV6r6eEcdd6SRsj8hs5qom+9TuBe5sM2EDbHPdYATIHsZyV
	 LlvA/FhS89qtKuhf2RCol2pv46ZjjqnWRJlA3sPvpX4L6owvbL+BdjJhP53Rh0PMR5
	 IRMT5FRdBJxXA==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 9DA3F384E03
	for <usrp-users@lists.ettus.com>; Fri,  8 Dec 2023 18:12:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lYcjlfty";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-77f35b70944so122708485a.0
        for <usrp-users@lists.ettus.com>; Fri, 08 Dec 2023 15:12:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702077160; x=1702681960; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mgYYydUOc5zsSKJv5x2TPmduzZcSXY1kIANYEaPG4F0=;
        b=lYcjlftyzmN2v6Z7nxhISv8iShJbXO0dAzX0eEtujUiMq65IzuI72MNClI5dgzYZmK
         0TTyTk0R7Ktq031FWDTMIFoxK8HTLKKbR2R4qo1dxIXVW2bw8IgtNNp1lb7BG0cru+iU
         SfLtUxt+s+dqtpyKqLkxMu6YZGMsGfSQt6REARno4Umh2RbwiLjdoLQ2Fr4eepfOWU/3
         YhDUy+EeOMam8Hioxl1cgADWB2aUMu2Q3v+7fLRsAXfSq991NSpYSGAcA4Le5h6ppU+M
         27WkkHiG8qh4HXdv/ciioCkfXLCpAyQm5CTU8VnL1VGdh4+Ira5DmsELywIr84i1+qry
         Ooew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702077160; x=1702681960;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mgYYydUOc5zsSKJv5x2TPmduzZcSXY1kIANYEaPG4F0=;
        b=gAZvCnV85aaES4FD4sjhl8Ax2dP/4vUMDSYLIDN/qPN5glnlkO5NDy7nEpn5OBxcgJ
         RV/lnmfw3JyrMofC5wY6JDGnBApBftIgDRV9t1NcdqPTQQRaMj/orucXRanuQ0u2GDD/
         50Y12jjBDaGUFauSx3x8ozpda7of4DqNMuBykDL8FErh0jDm5PB1qrRfQXCl3NUzK7Y8
         Rat1r1zTbPpC8hmqPJ85E+jIt0XqYeNbKq7oKQwtppCKTgRLmHt6EcU31HzE8k8ALLE4
         TttaCJvd4oJ2177UZfZnHvzcAMwnwaMez3HIy7VJiZwLc9aukbzTdjFIEutC4tplK+Zh
         gTpQ==
X-Gm-Message-State: AOJu0YxICjK28erfX7yhW4NWW+5UlemPPd/gZWgXrI3x6u7pwCaoUmtN
	nlovJFCEPHo/RfxLoVo8Cy7FTKDqlSE=
X-Google-Smtp-Source: AGHT+IFoML5kNGDS/44FE/0M4+9krww/c6C+QgEWUYDLelCRf07K0p+AQTwBnbDw5OdF69QaWJFHAQ==
X-Received: by 2002:a05:620a:859:b0:77f:2e08:9095 with SMTP id u25-20020a05620a085900b0077f2e089095mr796814qku.139.1702077159844;
        Fri, 08 Dec 2023 15:12:39 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id a26-20020a05620a439a00b007788bb0ab8esm1027822qkp.19.2023.12.08.15.12.39
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Dec 2023 15:12:39 -0800 (PST)
Message-ID: <a4621494-d7c8-4d1b-a96c-6fe3fe78f17e@gmail.com>
Date: Fri, 8 Dec 2023 18:12:30 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <18c4af1b837.11a45e1bb826208.2104971221830417350@uberasch.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <18c4af1b837.11a45e1bb826208.2104971221830417350@uberasch.com>
Message-ID-Hash: 2VRM7HYJCBVKPLB6LTWEFBJOVP5L2KEL
X-Message-ID-Hash: 2VRM7HYJCBVKPLB6LTWEFBJOVP5L2KEL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Looking for help probing N310 with newer version of UHD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2VRM7HYJCBVKPLB6LTWEFBJOVP5L2KEL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3309394875720270431=="

This is a multi-part message in MIME format.
--===============3309394875720270431==
Content-Type: multipart/alternative;
 boundary="------------DuVWPjtLuvMB0V8vYqW8ldEE"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------DuVWPjtLuvMB0V8vYqW8ldEE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/12/2023 14:40, Jack Gallegos wrote:
> I am trying to figure out why I cannot initialize an N310 from my host=20
> (UHD 4.6, Ubuntu 20.04). I get the following when I try to run=20
> uhd_usrp probe:
>
> $ uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;=20
> UHD_4.6.0.0-0ubuntu1~jammy1
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D192.168.4.2,type=3Dn3xx,product=3Dn310,serial=3Dxxxxxxx,cla=
imed=3DFalse,addr=3D192.168.4.2
> [WARNING] [MPM.RPCServer] A timeout event occured!
> Error: rpc::timeout: Timeout of 2000ms while calling RPC function=20
> 'set_device_id'
>
> If it helps, the mgmt IP is 192.168.1.217 (which the host has access=20
> to on another interface). I am able to ssh into the mgmt interface per=20
> the UHD manual and run this command successfully (although looks like=20
> internally the device is using UHD 3.15)
>
> Jack Gallegos
>
>
Are you able to ping 192.168.4.2 ?=C2=A0=C2=A0 That's an unusual address =
for an=20
N210 with factory-default settings.

You'll absolutely, positively, need to update the N310 system image to=20
4.6 -- the host side and device side *have* to match.

https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updat=
ing_the_files_system_by_writing_the_disk_image

https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Setti=
ng_Up_a_Streaming_Connection




--------------DuVWPjtLuvMB0V8vYqW8ldEE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 08/12/2023 14:40, Jack Gallegos
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:18c4af1b837.11a45e1bb826208.2104971221830417350@uberasch.com"=
>
      <meta content=3D"text/html; charset=3DUTF-8" http-equiv=3D"Content-=
Type">
      <div
style=3D"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 1=
0pt;">
        <div>I am trying to figure out why I cannot initialize an N310
          from my host (UHD 4.6, Ubuntu 20.04). I get the following when
          I try to run uhd_usrp probe:<br>
          <br>
          $ uhd_usrp_probe<br>
        </div>
        <div>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
          UHD_4.6.0.0-0ubuntu1~jammy1<br>
        </div>
        <div>[INFO] [MPMD] Initializing 1 device(s) in parallel with
          args:
mgmt_addr=3D192.168.4.2,type=3Dn3xx,product=3Dn310,serial=3Dxxxxxxx,claim=
ed=3DFalse,addr=3D192.168.4.2<br>
        </div>
        <div>[WARNING] [MPM.RPCServer] A timeout event occured!<br>
        </div>
        <div>Error: rpc::timeout: Timeout of 2000ms while calling RPC
          function 'set_device_id'<br>
        </div>
        <div><br>
        </div>
        <div>If it helps, the mgmt IP is 192.168.1.217 (which the host
          has access to on another interface). I am able to ssh into the
          mgmt interface per the UHD manual and run this command
          successfully (although looks like internally the device is
          using UHD 3.15)<br>
        </div>
        <div><br>
        </div>
        <div class=3D"zmail_signature_below">
          <div id=3D"" data-zbluepencil-ignore=3D"true"
            data-sigid=3D"4269381000000033001">
            <div>Jack Gallegos<br>
            </div>
          </div>
        </div>
        <div><br>
        </div>
      </div>
      <br>
    </blockquote>
    Are you able to ping 192.168.4.2 ?=C2=A0=C2=A0 That's an unusual addr=
ess for
    an N210 with factory-default settings.<br>
    <br>
    You'll absolutely, positively, need to update the N310 system image
    to 4.6 -- the host side and device side *have* to match.<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_N300=
/N310/N320/N321_Getting_Started_Guide#Updating_the_files_system_by_writin=
g_the_disk_image">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_S=
tarted_Guide#Updating_the_files_system_by_writing_the_disk_image</a><br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_N300=
/N310/N320/N321_Getting_Started_Guide#Setting_Up_a_Streaming_Connection">=
https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Setti=
ng_Up_a_Streaming_Connection</a><br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------DuVWPjtLuvMB0V8vYqW8ldEE--

--===============3309394875720270431==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3309394875720270431==--
