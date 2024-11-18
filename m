Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 482AF9D1465
	for <lists+usrp-users@lfdr.de>; Mon, 18 Nov 2024 16:24:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BDA58386105
	for <lists+usrp-users@lfdr.de>; Mon, 18 Nov 2024 10:24:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731943468; bh=yxvt0V3tKj5wmjCvE/lO+kjiZ+ZjabbX9MAoAaJsIoU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=KHe4BlbmACcTT8ITlCb6nc/9Gu30Cqi0tz7PzkbEGHcpT7qGvKABkmxZ5YOLLaea+
	 S6QylXh2XZC+mgnoorLE/SthRMs0tVM3g4TVxkUJTp7f899Csq796ejpAEB1Fxfmzm
	 qV8JS3x4CS/PB0sfx/q6JAsr5HUpeohcleQaOxeRsi3mfsxO9DMVgooQx3gav+4bs7
	 3tzr2R6Iv8q3VGpsWFVeT4RScj5zyQWrd4bDsErvSH81E7Etz9ny/b6YDWqB0T94Dc
	 /+IYJDex8tjW6R7hNVG5N8xuwcZsTMx/URkZ7/VuIRZoBIVrJ+Ilj/64VH9dWtFufg
	 JEJhVhFd/FkIQ==
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 151DD3860C2
	for <usrp-users@lists.ettus.com>; Mon, 18 Nov 2024 10:24:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UY4Qagzt";
	dkim-atps=neutral
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7b152a23e9aso280504285a.0
        for <usrp-users@lists.ettus.com>; Mon, 18 Nov 2024 07:24:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731943449; x=1732548249; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XutIyuhk8s6fRsoVKAtJI+Cz7Wso7jbGSMgefPxwg+k=;
        b=UY4Qagzt7Cnrj7gEcVdEP1Cg4jIoCjefVv2wDlfVDY6UXDiH1yejoQ6aVlx48xwdvc
         CgFCARvLm3v9ZTwolgfmBhXktexB7Paogj9RIKcfCzXXacGui4kvEnF3ENRbLuE2iie9
         NEbARIcoA+eizcqmQQhHnighuvSfAg8PhBoWETkIpRk2D9VyE2BZF9YBDsgEAYV2falq
         iRPajUkFbPvnyGCg5dpgmYYDyW7Ag9/r0ONHz6OKaIGD2IQtGeGAoSdisfnschDM4hFf
         ZokoGyK9Fr5ATaZMPEMRy7T0gFWliNzrHlmsEDrJWuTFt5KcVu0tp48dpqZoeCTswYzD
         q7aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731943449; x=1732548249;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XutIyuhk8s6fRsoVKAtJI+Cz7Wso7jbGSMgefPxwg+k=;
        b=b5z1sigf6Vikoubi4Xn/oDWvgNd3rxVgUpWPt9p2oAmNfrQ5GWClrd1Jza3AqmEOo/
         PJ+vfzLQVladEXrwJq6zq45L0jcHbFb0Xd88WDNIEF/TVx392+ISbJvmeijNAx2wBn/h
         8MqoSYu24ik/wjSpV9qu2scbr4soffMK0qCkp/ZEXZU04ha+T3t9729t9Fq1lDUPgL3T
         J/tYqhJ42K9BBC2MpFlgFo1nZuj+yaoK2BuX+0n9sqfOlOZMQ9xCZ4bfmAdM0kExta2e
         JTW0eAHcyqRvyDWhD3ImnhHvLMVkWmH7SiakwHSi2DB/6vy6OW8YIyC2mGFqRFVsBC85
         cVdA==
X-Gm-Message-State: AOJu0YxqwzE1uxZjOR4LYfS/YlzXa6gLUmBnksh3m487wUB+jDuId/oa
	V8i4eXKP2Q3ywEDtZLxKFC2XhBBv4AzQPHZfZmH3gGGb+epCu0ltZtgCaA==
X-Google-Smtp-Source: AGHT+IEO9iTP99VzAbg1PVNMwSz9quCVzHVaLtoeckdY/bkrdetw7OUbGsfDJGsomhn8/TRiLC+zcw==
X-Received: by 2002:a05:620a:4542:b0:7b1:171a:5abf with SMTP id af79cd13be357-7b362313b03mr1548204985a.45.1731943449161;
        Mon, 18 Nov 2024 07:24:09 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b35c99f0b9sm491521985a.45.2024.11.18.07.24.08
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Nov 2024 07:24:08 -0800 (PST)
Message-ID: <3350bb26-30e9-4fa0-904b-9def3ad4602c@gmail.com>
Date: Mon, 18 Nov 2024 10:23:57 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <1874812005.12389586.1731914341699.JavaMail.zimbra@tubitak.gov.tr>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1874812005.12389586.1731914341699.JavaMail.zimbra@tubitak.gov.tr>
Message-ID-Hash: LC4DJKV7UJY3UZ45UG4RGAAWSXHYDVIC
X-Message-ID-Hash: LC4DJKV7UJY3UZ45UG4RGAAWSXHYDVIC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Runtime error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LC4DJKV7UJY3UZ45UG4RGAAWSXHYDVIC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8788731549851000509=="

This is a multi-part message in MIME format.
--===============8788731549851000509==
Content-Type: multipart/alternative;
 boundary="------------OQBYZcDVhO0PEuiBtwuEayBj"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------OQBYZcDVhO0PEuiBtwuEayBj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 18/11/2024 02:19, Hamd=C3=BCsena B=C4=B0LG=C4=B0 (B=C4=B0LGEM) via USR=
P-users wrote:
> Hello dear usrp users,
>
> After a succesfull uhd_usrp_probe when trying to run the Ettus E320 on=20
> Gnu Radio I get the following error message:
>
> QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-ro=
ot'
>
> Qt GUI: Could not restore geometry: restoreGeometry(self,=20
> Union[QByteArray, bytes, bytearray]): argument 1 has unexpected type=20
> 'NoneType'
>
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;=20
> UHD_3.15.0.0-release
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D192.168.10.2,type=3De3xx,product=3De320,serial=3D33CB10C,na=
me=3Dni-e320-33CB10C,fpga=3D1G,claimed=3DFalse,addr=3D192.168.10.2
>
> Traceback (most recent call last):
>
> File "/home/user/calismalar/uhd_deneme.py", line 190, in <module>
>
> main()
>
> File "/home/user/calismalar/uhd_deneme.py", line 168, in main
>
> tb =3D top_block_cls()
>
> File "/home/user/calismalar/uhd_deneme.py", line 85, in __init__
>
> self.uhd_usrp_source_0 =3D uhd.usrp_source(
>
> RuntimeError: rpc::timeout: Timeout of 2000ms while calling RPC=20
> function 'get_num_xbars'
>
>
>
> I updated GNU Radio from 3.8 to 3.10. The versions on the device are:
>
>
> gnuradio-config-info -v
>
> 3.10.7.0
>
> ----------------------------------------
>
> uhd_config_info --version
>
> UHD 4.7.0.0-0-ga5ed1872
>
> ----------------------------------------
>
> uhd_find_devices
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;=20
> UHD_4.7.0.0-0-ga5ed1872
>
> --------------------------------------------------
>
> -- UHD Device 0
>
> --------------------------------------------------
>
> Device Address:
>
> serial: 33CB10C
>
> addr: 192.168.10.2
>
> claimed: False
>
> fpga: 1G
>
> mgmt_addr: 192.168.10.2
>
> name: ni-e320-33CB10C
>
> product: e320
>
> type: e3xx
>
> ----------------------------------------
>
> python3 --version
>
> Python 3.8.10
>
> ----------------------------------------
>
> g++ --version
>
> g++ (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0
>
>
>
>
> While GNU Radio is running, it detects the UHD version as=20
> |UHD_3.15.0.0-release|. What could be the reason for this, and how can=20
> I resolve it?
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
This is because you have a "mixed version" system on your Ubuntu=20
system.=C2=A0 How did you upgrade Gnu Radio from
 =C2=A0the version packaged by Ubuntu 20.04?

It's likely that what happened was that you did a source build of Gnu=20
Radio, and it found the packaged UHD library
 =C2=A0 on your system (3.15), and used that.


--------------OQBYZcDVhO0PEuiBtwuEayBj
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 18/11/2024 02:19, Hamd=C3=BCsena B=C4=
=B0LG=C4=B0
      (B=C4=B0LGEM) via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:1874812005.12389586.1731914341699.JavaMail.zimbra@tubitak.gov=
.tr">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div
style=3D"font-family: arial, helvetica, sans-serif; font-size: 12pt; colo=
r: #000000">
        <style type=3D"text/css" scoped=3D"">p { margin-bottom: 0.25cm; l=
ine-height: 115%; background: transparent }</style>
        <style type=3D"text/css" scoped=3D"">p { margin-bottom: 0.25cm; l=
ine-height: 115%; background: transparent }</style>
        <div><span
style=3D"color: #000000; font-family: aptos, aptos_embeddedfont, aptos_ms=
fontservice, calibri, helvetica, sans-serif; font-size: 16px; font-style:=
 normal; font-variant-ligatures: normal; font-variant-caps: normal; font-=
weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-=
indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; white-space: normal; background-color: #fdfdfd; t=
ext-decoration-thickness: initial; text-decoration-style: initial; text-d=
ecoration-color: initial; display: inline !important; float: none;"
data-mce-style=3D"color: #000000; font-family: aptos, aptos_embeddedfont,=
 aptos_msfontservice, calibri, helvetica, sans-serif; font-size: 16px; fo=
nt-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: sta=
rt; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px;=
 -webkit-text-stroke-width: 0px; white-space: normal; background-color: #=
fdfdfd; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial; display: inline !important; float: non=
e;">Hello
            dear usrp users,</span></div>
        <div style=3D"clear: both;" data-mce-style=3D"clear: both;"><br
            data-mce-bogus=3D"1">
        </div>
        <div style=3D"clear: both;" data-mce-style=3D"clear: both;">After=
 a
          succesfull uhd_usrp_probe when trying to run the Ettus E320 on
          Gnu Radio I get the following error message:</div>
        <div style=3D"clear: both;" data-mce-style=3D"clear: both;"><br
            data-mce-bogus=3D"1">
        </div>
        <div style=3D"clear: both;" data-mce-style=3D"clear: both;">
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">QStandardP=
aths:
            XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-root'</p=
>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">Qt GUI:
            Could not restore geometry: restoreGeometry(self,
            Union[QByteArray, bytes, bytearray]): argument 1 has
            unexpected type 'NoneType'</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">[INFO]
            [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
            UHD_3.15.0.0-release</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">[INFO]
            [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=3D192.168.10.2,type=3De3xx,product=3De320,serial=3D33CB10C,name=
=3Dni-e320-33CB10C,fpga=3D1G,claimed=3DFalse,addr=3D192.168.10.2</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">Traceback
            (most recent call last):</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">File
            "/home/user/calismalar/uhd_deneme.py", line 190, in
            &lt;module&gt;</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">main()</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">File
            "/home/user/calismalar/uhd_deneme.py", line 168, in main</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">tb =3D
            top_block_cls()</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">File
            "/home/user/calismalar/uhd_deneme.py", line 85, in __init__</=
p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">self.uhd_u=
srp_source_0
            =3D uhd.usrp_source(</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">RuntimeErr=
or:
            rpc::timeout: Timeout of 2000ms while calling RPC function
            'get_num_xbars'</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;"><br>
          </p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;"><br>
          </p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">I updated
            GNU Radio from 3.8 to 3.10. The versions on the device are:</=
p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;"><br>
          </p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">gnuradio-c=
onfig-info
            -v</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">3.10.7.0</=
p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">----------=
------------------------------</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">uhd_config=
_info
            --version</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">UHD
            4.7.0.0-0-ga5ed1872</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;"><span
style=3D"color: #000000; font-family: arial, helvetica, sans-serif; font-=
size: 16px; font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; t=
ext-align: start; text-indent: 0px; text-transform: none; widows: 2; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backg=
round-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial; display: inline !importa=
nt; float: none;"
data-mce-style=3D"color: #000000; font-family: arial, helvetica, sans-ser=
if; font-size: 16px; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; widows=
: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: norm=
al; background-color: #ffffff; text-decoration-thickness: initial; text-d=
ecoration-style: initial; text-decoration-color: initial; display: inline=
 !important; float: none;">----------------------------------------</span=
></p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">uhd_find_d=
evices</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">[INFO]
            [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
            UHD_4.7.0.0-0-ga5ed1872</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">----------=
----------------------------------------</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">-- UHD
            Device 0</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">----------=
----------------------------------------</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">Device
            Address:</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">serial:
            33CB10C</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">addr:
            192.168.10.2</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">claimed:
            False</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">fpga: 1G</=
p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">mgmt_addr:
            192.168.10.2</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">name:
            ni-e320-33CB10C</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">product:
            e320</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">type: e3xx=
</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;"><span
style=3D"color: #000000; font-family: arial, helvetica, sans-serif; font-=
size: 16px; font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; t=
ext-align: start; text-indent: 0px; text-transform: none; widows: 2; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backg=
round-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial; display: inline !importa=
nt; float: none;"
data-mce-style=3D"color: #000000; font-family: arial, helvetica, sans-ser=
if; font-size: 16px; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; widows=
: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: norm=
al; background-color: #ffffff; text-decoration-thickness: initial; text-d=
ecoration-style: initial; text-decoration-color: initial; display: inline=
 !important; float: none;">----------------------------------------</span=
></p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">python3
            --version</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">Python
            3.8.10</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;"><span
style=3D"color: #000000; font-family: arial, helvetica, sans-serif; font-=
size: 16px; font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; t=
ext-align: start; text-indent: 0px; text-transform: none; widows: 2; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backg=
round-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial; display: inline !importa=
nt; float: none;"
data-mce-style=3D"color: #000000; font-family: arial, helvetica, sans-ser=
if; font-size: 16px; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; widows=
: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: norm=
al; background-color: #ffffff; text-decoration-thickness: initial; text-d=
ecoration-style: initial; text-decoration-color: initial; display: inline=
 !important; float: none;">----------------------------------------</span=
></p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">g++
            --version</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">g++ (Ubunt=
u
            9.4.0-1ubuntu1~20.04.2) 9.4.0</p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;"><br>
          </p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;"><br>
          </p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;"><br>
          </p>
          <p style=3D"margin: 0px; line-height: 100%;"
            data-mce-style=3D"margin: 0px; line-height: 100%;">While GNU
            Radio is running, it detects the UHD version as <code>UHD_3.1=
5.0.0-release</code>.
            What could be the reason for this, and how can I resolve it?<=
/p>
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
    This is because you have a "mixed version" system on your Ubuntu
    system.=C2=A0 How did you upgrade Gnu Radio from<br>
    =C2=A0the version packaged by Ubuntu 20.04?<br>
    <br>
    It's likely that what happened was that you did a source build of
    Gnu Radio, and it found the packaged UHD library<br>
    =C2=A0 on your system (3.15), and used that.<br>
    <br>
    <br>
  </body>
</html>

--------------OQBYZcDVhO0PEuiBtwuEayBj--

--===============8788731549851000509==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8788731549851000509==--
