Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB9AA1D55D
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2025 12:32:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4748C385CC2
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2025 06:32:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737977573; bh=yKKHQ+iLLpZz1eA+JjQ9s6qaWLY9d0HMpB3VgNv4cL8=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=tnwsEMXxcGIBXNTVB6tzwzwzQxnrw6q1IKMIa5zC2QOBqSAFHo/1Nz/i33yGHjpDK
	 FlW5I2csCucneNNyAW7CB9zbtabbk62eYac1FfUdjFFx+Vz0xzEoFAPYrSiDPGshEt
	 2b7cI2mROwbcg8kDX92lNlRz1FcCdC3U4diNu+mt44a3DW4dpprF0fhu3fZciVpnQJ
	 LoHnXxZpcSYyYYo8vO8at9Td+Mur87fV1MwfrojtzUp4/1HLRULzzLkgNe0ug4QNe6
	 Kik742wB58rO8pTjJRgdZaYfv21bB/Iwr1hjKM6vvRDr0qWFlYJAkJeBWbHWXoXkH0
	 M/40nXqCyzYGg==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 335F3385C21
	for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2025 06:32:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XHuTvAFp";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7b6ef047e9bso417067085a.1
        for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2025 03:32:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737977536; x=1738582336; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XUSXqk/eOKqr4QDrzkymbBp4tAAmew5ddeAsYQMsN+c=;
        b=XHuTvAFp8UhAw3XbMIovJ6ym1nVstBRYtI/iEEDWn/F1jWMWxcpimp01bDSHXK11T8
         UXbWT7SJJ07ARc4XZVmEnHYItCEVQewsC2fzhDVec8DGJcSizkLPtycTE6WlEh/chD3t
         zTX6Km0B/UahB49E4Gg3ZTDh/1tm0zjTmALZvA8BNtD/zMzBvZ+6K4uY+ty5NTb0Cn+2
         cBSu08xNDLrZ8wrcX8yDUH1eTCn2ZSIuQv3vw+VJ1BZ+yY/9K8mU3ITf6+s502abjbfM
         3lG5Xi9YlrlTF9NdI30hZGYDnwHC3WojVGEQucX84Hkt3HCbrdb05cOLnZ4EZwduWkBl
         D3ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737977536; x=1738582336;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XUSXqk/eOKqr4QDrzkymbBp4tAAmew5ddeAsYQMsN+c=;
        b=SJtthLE+oSWGTJ4Nn0S67Ja/wnYFvihdc0Seezq8mDne3qctURSwr6jn2UCidVqYkm
         Bc+Qojt6JEH/iH6AhP/r/pe1jCuSyAnAPfvSSeuKAqljDvlRn+xu/K9d9AKuTGM+zNfv
         vmSQNAUtU/ixjuCcxh+Th21K8x+fdVvFNLH8hyRk6vD4H7vrt+d+Kq+mHWG3rZyQPCpb
         lUzpzbScq0WgttkKGSI7MuouZ40xw6whfULVesy8h0iv6ocByeu9ttp4iHocqUfUYA1g
         oxEd6hXykCGk26wqL3cPbQY3VE3JdyTHPI2UzY7FiPEuruLby5D8OiGZVoCqMShvXrpI
         /QcA==
X-Gm-Message-State: AOJu0Yzuc1VCYaZZTufsUbMTck37KNMCbkWlecJFgvbiSjBcMKDuBS6d
	hIDyscHLExthH9n4Lk4pq22WgSbdGMgr1w+jhATDls38SF6Ip6oF
X-Gm-Gg: ASbGncv69tbJOp953VwWGzY7zJqXfNpsyh4JtALqDwW1djVx8BT5zih0vqcjFvPfg3R
	s0Iv8RJlkLwugC1lR5fo+HyQtkWFg0i1V+SFcIG7N8mAmc4WBqZXttu636vENp+n5Pd8V7TITwX
	s5vDbCVe1CRvpLZR79TPJFaGfGsKe58ObJzC6+QEM+tDnCK0gdxCu/cOhlTEEw16NCQD7c2rz8Q
	Tm0LXjWIa0SZZnl8Xh0XGRf+CbRq79L/iklxlERyQIED8LeeFqdibi4cxhhbTTIVR7eG857x6DN
	JlPM5cVCKrlpp9E++K75Rc/PTXS79K5FSTQQU6KeIOVtqZcCUaE1POvhdQ8Jj6+AJmVGZEbavGZ
	kjPQ=
X-Google-Smtp-Source: AGHT+IFD9gFy3fuYCCb9+a6C0Ru8YvZl9sg+rAJDdiQ4k++3tttrged/c+FokSuoEMqidDMS6TZ4qg==
X-Received: by 2002:a05:620a:2b91:b0:7b6:d710:22ad with SMTP id af79cd13be357-7be931ff673mr2682645385a.27.1737977536356;
        Mon, 27 Jan 2025 03:32:16 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7be9af0d2f0sm378187285a.103.2025.01.27.03.32.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 03:32:15 -0800 (PST)
Message-ID: <9c486a6d-d53d-49a1-a6f6-ebcc5a5e025c@gmail.com>
Date: Mon, 27 Jan 2025 06:32:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Heinz, Dominik" <dominik.heinz@h-da.de>,
 Martin Braun <martin.braun@ettus.com>
References: <a2248846c3ab40e9b6f0c270dd50563e@h-da.de>
 <39a63f67-3244-45b4-a318-6df2b30abebc@gmail.com>
 <a82baa39532e4545a88e3eb828100f8e@h-da.de>
 <CAFOi1A5K0wHVMRoeO3B7RL5DgoOsmw_96C7y_L8zz+RBo1SDpA@mail.gmail.com>
 <800ca492ec564e52a9cb1f4f238513f3@h-da.de>
 <014bb7ee02bd4da889078fb810a83284@h-da.de>
 <1b4c4d5ab84449c6a8aca889a6c264d8@h-da.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1b4c4d5ab84449c6a8aca889a6c264d8@h-da.de>
Message-ID-Hash: UJQBWIBEF4SIOEAAHRB63GIJZET5EDGH
X-Message-ID-Hash: UJQBWIBEF4SIOEAAHRB63GIJZET5EDGH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERN] Re: [EXTERN] Re: [EXTERN] Re: Re: [EXTERN] Re: X310 RIO Session Initialization Failure (Error code -63150)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UJQBWIBEF4SIOEAAHRB63GIJZET5EDGH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2589184580624410684=="

This is a multi-part message in MIME format.
--===============2589184580624410684==
Content-Type: multipart/alternative;
 boundary="------------obZ50PFpxb8sSR0J1BPXtfpG"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------obZ50PFpxb8sSR0J1BPXtfpG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/01/2025 05:29, Heinz, Dominik wrote:
>
> Okay, seems like I had to manually set the IP addresses for the=20
> interfaces. Now I can interact perfectly with the device.
>
> Tho, I don't know how to configure it to use both Links=20
> simultaneously, like you suggested (to do 2x200 Msps streaming).
>
>
> Any advice on that would be appreciated :)
>
Use the second_addr argument:

https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_usage

So, assuming the XG image, your device arguments would include:

addr=3D192.168.30.2,second_addr=3D192.168.40.2


> -----------------------------------------------------------------------=
-
> *From:* Heinz, Dominik <dominik.heinz@h-da.de>
> *Sent:* Monday, January 27, 2025 10:32:27 AM
> *To:* Martin Braun
> *Cc:* Marcus D. Leech; usrp-users@lists.ettus.com
> *Subject:* [EXTERN] [USRP-users] Re: [EXTERN] Re: [EXTERN] Re: Re:=20
> [EXTERN] Re: X310 RIO Session Initialization Failure (Error code -63150=
)
>
> When I run the image loader without the IP address parameter it seems=20
> to be flashing the correctly.
>
>
> uhd_image_loader --args=3D"type=3Dx300"
>
>
> However, I don't see how I can configure the IP address to be able to=20
> interact via the 10GbE links (?)
>
> -----------------------------------------------------------------------=
-
> *From:* Heinz, Dominik <dominik.heinz@h-da.de>
> *Sent:* Monday, January 27, 2025 10:18:41 AM
> *To:* Martin Braun
> *Cc:* Marcus D. Leech; usrp-users@lists.ettus.com
> *Subject:* [EXTERN] [USRP-users] Re: [EXTERN] Re: Re: [EXTERN] Re:=20
> X310 RIO Session Initialization Failure (Error code -63150)
> Hello Martin,
> Hello Marcus,
>
> The X310 does not show up as a RIO device, but rather like this:
>
> 4a:00.0 Signal processing controller: National Instruments PXIe/PCIe=20
> Device (rev ff) (prog-if ff)
> =C2=A0=C2=A0=C2=A0 !!! Unknown header type 7f
> =C2=A0=C2=A0=C2=A0 Kernel driver in use: niusrpriok
> =C2=A0=C2=A0=C2=A0 Kernel modules: niusrpriok
>
> This seems already problematic (?)
>
> The nisrpriorpc server seems to be running fine:
>
> gnb@xgoss-host:~$ sudo systemctl status niusrpriorpc
> =E2=97=8F niusrpriorpc.service - LSB: National Instruments USRP RIO Ser=
vice
> =C2=A0=C2=A0=C2=A0=C2=A0 Loaded: loaded (/etc/init.d/niusrpriorpc; gene=
rated)
> =C2=A0=C2=A0=C2=A0=C2=A0 Active: active (running) since Mon 2025-01-27 =
09:37:21 CET; 23min ago
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Docs: man:systemd-sysv-generator(8=
)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Tasks: 4 (limit: 153252)
> =C2=A0=C2=A0=C2=A0=C2=A0 Memory: 98.6M
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 CPU: 13.872s
> =C2=A0=C2=A0=C2=A0=C2=A0 CGroup: /system.slice/niusrpriorpc.service
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =E2=94=94=E2=94=801631 /usr/sbin/niusrpriorpc --daemon
>
> Jan 27 09:37:21 xgoss-host systemd[1]: Starting LSB: National=20
> Instruments USRP RIO Service...
> Jan 27 09:37:21 xgoss-host systemd[1]: Started LSB: National=20
> Instruments USRP RIO Service.
>
> You also mentioned that the X310 needs to be powered on before the=20
> host system.
> I have of course done this - since to my knowledge hot plugging is not=20
> possible in the case of PCIe.
>
> Running uhd_usrp_probe as root doesn't change anything.
>
> I am okay with trying out the 10GbE instead, but I am not able to=20
> interact with the device that way.
> I can't seem to specify an IP or load a firmware image this way. I trie=
d:
>
> gnb@xgoss-host:~$ uhd_image_loader=20
> --args=3D"type=3Dx300,addr=3D192.168.10.2,fpga=3DHG"
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;=20
> UHD_4.7.0.0-0ubuntu1~jammy1
> No applicable UHD devices found
>
> Any idea how to proceed? Can't seem to get the device running via=20
> PCIe, and via 10GbE I can't interact with the device either.
> I will provide the details in the Github issue shortly.
>
>
> -----------------------------------------------------------------------=
-
> *From:* Martin Braun <martin.braun@ettus.com>
> *Sent:* Friday, January 24, 2025 12:19:00 PM
> *To:* Heinz, Dominik
> *Cc:* Marcus D. Leech; usrp-users@lists.ettus.com
> *Subject:* [EXTERN] Re: [USRP-users] Re: [EXTERN] Re: X310 RIO Session=20
> Initialization Failure (Error code -63150)
> Dominik,
>
> can you provide as much info as you can here:=20
> https://github.com/EttusResearch/uhd/issues/818?
>
> Like Marcus said, the PCIe interface is not used a lot (except by=20
> LabView users), so if you can use 10 GbE instead I recommend doing=20
> that (that also allows you to do 2x200 Msps streaming, if you have two=20
> ports).
>
> --M
>
> On Wed, Jan 22, 2025 at 2:58=E2=80=AFPM Heinz, Dominik <dominik.heinz@h=
-da.de>=20
> wrote:
>
>     I followed the steps in the guide you linked, - however, I still
>     have the issue.
>
>     The uhd drivers are installed, and the niuspriorpc service is
>     running. However, I still the the RIO session initialization failur=
e.
>
>
>     Anything else I could try? I still don't understand what is the
>     cause for this.
>
>     -------------------------------------------------------------------=
-----
>     *From:* Marcus D. Leech <patchvonbraun@gmail.com>
>     *Sent:* Tuesday, January 21, 2025 8:32:39 PM
>     *To:* usrp-users@lists.ettus.com
>     *Subject:* [EXTERN] [USRP-users] Re: X310 RIO Session
>     Initialization Failure (Error code -63150)
>     On 21/01/2025 09:26, Heinz, Dominik wrote:
>>
>>     I'm experiencing an initialization issue with my Ettus X310 USRP
>>     device.
>>
>>     My setup consists of an Ettus X310 connected through a PCIe Card
>>     using a Molex cable to my Linux machine.
>>
>>     I'm running Ubuntu with kernel version 6.8.0-51-generic and have
>>     installed all the necessary UHD packages on the system.
>>
>>
>>     The X310 is properly detected when running |uhd_find_devices|,
>>     but attempting to probe the device with |uhd_usrp_probe| results
>>     in a RIO session initialization error.
>>     I attached the error output below.
>>     What is causing this RIO session initialization failure and how
>>     can it be resolved?
>>
>>     gnb@xgoss-host:~/srsRAN_Project/build4ac5300/apps/gnb$
>>     uhd_find_devices
>>     [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
>>     UHD_4.7.0.0-0ubuntu1~jammy1
>>     --------------------------------------------------
>>     -- UHD Device 0
>>     --------------------------------------------------
>>     Device Address:
>>     =C2=A0=C2=A0=C2=A0 serial:
>>     =C2=A0=C2=A0=C2=A0 fpga: HG
>>     =C2=A0=C2=A0=C2=A0 name:
>>     =C2=A0=C2=A0=C2=A0 product: X310
>>     =C2=A0=C2=A0=C2=A0 resource: RIO0
>>     =C2=A0=C2=A0=C2=A0 type: x300
>>
>>     gnb@xgoss-host:~/srsRAN_Project/build4ac5300/apps/gnb$
>>     uhd_usrp_probe
>>     [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
>>     UHD_4.7.0.0-0ubuntu1~jammy1
>>     [INFO] [X300] X300 initialization sequence...
>>     [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
>>     [INFO] [X300] Using LVBITX bitfile
>>     /usr/share/uhd/images/usrp_x310_fpga_HG.lvbitx
>>     Error: RuntimeError: x300_impl: Could not initialize RIO session.
>>     Unknown error. (Error code -63150)
>>
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>     The procedures for making this work are here:
>
>     https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_pcie
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------obZ50PFpxb8sSR0J1BPXtfpG
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/01/2025 05:29, Heinz, Dominik
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1b4c4d5ab84449c6a8aca889a6c264d8@h-da.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
        dir=3D"ltr">
        <p>Okay, seems like I had to manually set the IP addresses for
          the interfaces. Now I can interact perfectly with the device.</=
p>
        <p>Tho, I don't know how to configure it to use both Links
          simultaneously, like you suggested (to do
          <span>2x200 Msps streaming</span>).<br>
        </p>
        <p><br>
        </p>
        <p>Any advice on that would be appreciated :)<br>
        </p>
      </div>
    </blockquote>
    Use the second_addr argument:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_usrp_x3x0.html#x3x0_usage">https://files.ettus.com/manual/page_=
usrp_x3x0.html#x3x0_usage</a><br>
    <br>
    So, assuming the XG image, your device arguments would include:<br>
    <br>
    addr=3D192.168.30.2,second_addr=3D192.168.40.2<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:1b4c4d5ab84449c6a8aca889a6c264d8@h-da.de">
      <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
        dir=3D"ltr">
        <p>
        </p>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Hei=
nz,
          Dominik <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:domin=
ik.heinz@h-da.de">&lt;dominik.heinz@h-da.de&gt;</a><br>
          <b>Sent:</b> Monday, January 27, 2025 10:32:27 AM<br>
          <b>To:</b> Martin Braun<br>
          <b>Cc:</b> Marcus D. Leech; <a class=3D"moz-txt-link-abbreviate=
d" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com<=
/a><br>
          <b>Subject:</b> [EXTERN] [USRP-users] Re: [EXTERN] Re:
          [EXTERN] Re: Re: [EXTERN] Re: X310 RIO Session Initialization
          Failure (Error code -63150)</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;=
margin-bottom:0;}</style>
        <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
          dir=3D"ltr">
          <p>When I run the image loader without the IP address
            parameter it seems to be flashing the correctly.</p>
          <p><br>
          </p>
          <p><font
style=3D"font-family: Calibri, Helvetica, sans-serif, serif, &quot;EmojiF=
ont&quot;;"
              size=3D"3" face=3D"Calibri,Helvetica,sans-serif" color=3D"b=
lack"><span
                style=3D"font-size:12pt;" dir=3D"ltr"
                id=3D"divtagdefaultwrapper">uhd_image_loader
                --args=3D"type=3Dx300"</span></font></p>
          <p><font
style=3D"font-family: Calibri, Helvetica, sans-serif, serif, &quot;EmojiF=
ont&quot;;"
              size=3D"3" face=3D"Calibri,Helvetica,sans-serif" color=3D"b=
lack"><span
                style=3D"font-size:12pt;" dir=3D"ltr"
                id=3D"divtagdefaultwrapper"><br>
              </span></font></p>
          <p><font
style=3D"font-family: Calibri, Helvetica, sans-serif, serif, &quot;EmojiF=
ont&quot;;"
              size=3D"3" face=3D"Calibri,Helvetica,sans-serif" color=3D"b=
lack"><span
                style=3D"font-size:12pt;" dir=3D"ltr"
                id=3D"divtagdefaultwrapper">However, I don't see how I ca=
n
                configure the IP address to be able to interact via the
                10GbE links (?)<br>
              </span></font></p>
        </div>
        <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
        <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11=
pt"
            face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b>
            Heinz, Dominik <a class=3D"moz-txt-link-rfc2396E" href=3D"mai=
lto:dominik.heinz@h-da.de">&lt;dominik.heinz@h-da.de&gt;</a><br>
            <b>Sent:</b> Monday, January 27, 2025 10:18:41 AM<br>
            <b>To:</b> Martin Braun<br>
            <b>Cc:</b> Marcus D. Leech; <a class=3D"moz-txt-link-abbrevia=
ted" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.co=
m</a><br>
            <b>Subject:</b> [EXTERN] [USRP-users] Re: [EXTERN] Re: Re:
            [EXTERN] Re: X310 RIO Session Initialization Failure (Error
            code -63150)</font>
          <div>=C2=A0</div>
        </div>
        <div>
          <style type=3D"text/css" style=3D"display:none;">P {margin-top:=
0;margin-bottom:0;}</style>
          <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
            dir=3D"ltr">
            <div>Hello Martin,<br>
              Hello Marcus,<br>
              <br>
              The X310 does not show up as a RIO device, but rather like
              this:<br>
              <br>
              4a:00.0 Signal processing controller: National Instruments
              PXIe/PCIe Device (rev ff) (prog-if ff)<br>
              =C2=A0=C2=A0=C2=A0 !!! Unknown header type 7f<br>
              =C2=A0=C2=A0=C2=A0 Kernel driver in use: niusrpriok<br>
              =C2=A0=C2=A0=C2=A0 Kernel modules: niusrpriok<br>
              <br>
              This seems already problematic (?)<br>
              <br>
              The nisrpriorpc server seems to be running fine:<br>
              <br>
              gnb@xgoss-host:~$ sudo systemctl status niusrpriorpc<br>
              =E2=97=8F niusrpriorpc.service - LSB: National Instruments =
USRP
              RIO Service<br>
              =C2=A0=C2=A0=C2=A0=C2=A0 Loaded: loaded (/etc/init.d/niusrp=
riorpc; generated)<br>
              =C2=A0=C2=A0=C2=A0=C2=A0 Active: active (running) since Mon=
 2025-01-27
              09:37:21 CET; 23min ago<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Docs: <a class=3D"moz-=
txt-link-freetext" href=3D"man:systemd-sysv-generator(8)">man:systemd-sys=
v-generator(8)</a><br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Tasks: 4 (limit: 153252)<br>
              =C2=A0=C2=A0=C2=A0=C2=A0 Memory: 98.6M<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 CPU: 13.872s<br>
              =C2=A0=C2=A0=C2=A0=C2=A0 CGroup: /system.slice/niusrpriorpc=
.service<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =E2=94=94=E2=94=801631 /usr/sbin/niusrpriorpc --daemon<br>
              <br>
              Jan 27 09:37:21 xgoss-host systemd[1]: Starting LSB:
              National Instruments USRP RIO Service...<br>
              Jan 27 09:37:21 xgoss-host systemd[1]: Started LSB:
              National Instruments USRP RIO Service.<br>
              <br>
              You also mentioned that the X310 needs to be powered on
              before the host system.<br>
              I have of course done this - since to my knowledge hot
              plugging is not possible in the case of PCIe.<br>
              <br>
              Running uhd_usrp_probe as root doesn't change anything.<br>
              <br>
              I am okay with trying out the 10GbE instead, but I am not
              able to interact with the device that way.<br>
              I can't seem to specify an IP or load a firmware image
              this way. I tried:<br>
              <br>
              gnb@xgoss-host:~$ uhd_image_loader
              --args=3D"type=3Dx300,addr=3D192.168.10.2,fpga=3DHG"<br>
              [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
              UHD_4.7.0.0-0ubuntu1~jammy1<br>
              No applicable UHD devices found<br>
              <br>
              Any idea how to proceed? Can't seem to get the device
              running via PCIe, and via 10GbE I can't interact with the
              device either.<br>
              I will provide the details in the Github issue shortly.<br>
              <br>
            </div>
            <br>
          </div>
          <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
          <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:=
11pt"
              face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b>
              Martin Braun <a class=3D"moz-txt-link-rfc2396E" href=3D"mai=
lto:martin.braun@ettus.com">&lt;martin.braun@ettus.com&gt;</a><br>
              <b>Sent:</b> Friday, January 24, 2025 12:19:00 PM<br>
              <b>To:</b> Heinz, Dominik<br>
              <b>Cc:</b> Marcus D. Leech; <a class=3D"moz-txt-link-abbrev=
iated" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a><br>
              <b>Subject:</b> [EXTERN] Re: [USRP-users] Re: [EXTERN] Re:
              X310 RIO Session Initialization Failure (Error code
              -63150)</font>
            <div>=C2=A0</div>
          </div>
          <div>
            <div dir=3D"ltr">
              <div>Dominik,</div>
              <div><br>
              </div>
              <div>can you provide as much info as you can here: <a
                  href=3D"https://github.com/EttusResearch/uhd/issues/818=
"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">
                  https://github.com/EttusResearch/uhd/issues/818</a>?</d=
iv>
              <div><br>
              </div>
              <div>Like Marcus said, the PCIe interface is not used a
                lot (except by LabView users), so if you can use 10 GbE
                instead I recommend doing that (that also allows you to
                do 2x200 Msps streaming, if you have two ports).</div>
              <div><br>
              </div>
              <div>--M<br>
              </div>
            </div>
            <br>
            <div class=3D"gmail_quote gmail_quote_container">
              <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 22, 2025 =
at
                2:58=E2=80=AFPM Heinz, Dominik &lt;<a
                  href=3D"mailto:dominik.heinz@h-da.de"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">dominik.heinz@h-da.de</a>&gt;
                wrote:<br>
              </div>
              <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                <div>
                  <div id=3D"m_-810124041727098465divtagdefaultwrapper"
style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sa=
ns-serif"
                    dir=3D"ltr">
                    <p>I followed the steps in the guide you linked, -
                      however, I still have the issue.</p>
                    <p>The uhd drivers are installed, and the
                      niuspriorpc service is running. However, I still
                      the the RIO session initialization failure.</p>
                    <p><br>
                    </p>
                    <p>Anything else I could try? I still don't
                      understand what is the cause for this.<br>
                    </p>
                  </div>
                  <hr style=3D"display:inline-block;width:98%">
                  <div id=3D"m_-810124041727098465divRplyFwdMsg" dir=3D"l=
tr"><font
                      style=3D"font-size:11pt" face=3D"Calibri, sans-seri=
f"
                      color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;=
<a
                        href=3D"mailto:patchvonbraun@gmail.com"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">patchvonbraun@gma=
il.com</a>&gt;<br>
                      <b>Sent:</b> Tuesday, January 21, 2025 8:32:39 PM<b=
r>
                      <b>To:</b> <a
                        href=3D"mailto:usrp-users@lists.ettus.com"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">usrp-users@lists.=
ettus.com</a><br>
                      <b>Subject:</b> [EXTERN] [USRP-users] Re: X310 RIO
                      Session Initialization Failure (Error code -63150)<=
/font>
                    <div>=C2=A0</div>
                  </div>
                  <div>
                    <div>On 21/01/2025 09:26, Heinz, Dominik wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div
                        id=3D"m_-810124041727098465divtagdefaultwrapper"
style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sa=
ns-serif"
                        dir=3D"ltr">
                        <p><span>I'm experiencing an initialization
                            issue with my Ettus X310 USRP device.</span><=
/p>
                        <p><span><span>My setup consists of an Ettus
                              X310 connected through a PCIe Card using a
                              Molex cable to my Linux machine.
                              <br>
                            </span></span></p>
                        <p><span><span>I'm running Ubuntu with kernel
                              version 6.8.0-51-generic and have
                              installed all the necessary UHD packages
                              on the system.</span></span></p>
                        <p><span><span><br>
                            </span></span></p>
                        <p><span><span></span></span></p>
                        <div>The X310 is properly detected when running
                          <code>uhd_find_devices</code>, but attempting
                          to probe the device with
                          <code>uhd_usrp_probe</code> results in a RIO
                          session initialization error.</div>
                        <div>I attached the error output below.</div>
                        <div>What is causing this RIO session
                          initialization failure and how can it be
                          resolved?</div>
                        <div><br>
                        </div>
                        <div>
                          <div><span
style=3D"font-family:Consolas,Courier,monospace">gnb@xgoss-host:~/srsRAN_=
Project/build4ac5300/apps/gnb$
                              uhd_find_devices
                            </span><br>
                            <span
style=3D"font-family:Consolas,Courier,monospace">[INFO] [UHD] linux; GNU
                              C++ version 11.4.0; Boost_107400;
                              UHD_4.7.0.0-0ubuntu1~jammy1</span><br>
                            <span
style=3D"font-family:Consolas,Courier,monospace">------------------------=
--------------------------</span><br>
                            <span
style=3D"font-family:Consolas,Courier,monospace">-- UHD Device 0</span><b=
r>
                            <span
style=3D"font-family:Consolas,Courier,monospace">------------------------=
--------------------------</span><br>
                            <span
style=3D"font-family:Consolas,Courier,monospace">Device Address:</span><b=
r>
                            <span
style=3D"font-family:Consolas,Courier,monospace">=C2=A0=C2=A0=C2=A0 seria=
l: </span><br>
                            <span
style=3D"font-family:Consolas,Courier,monospace">=C2=A0=C2=A0=C2=A0 fpga:=
 HG</span><br>
                            <span
style=3D"font-family:Consolas,Courier,monospace">=C2=A0=C2=A0=C2=A0 name:=
 </span><br>
                            <span
style=3D"font-family:Consolas,Courier,monospace">=C2=A0=C2=A0=C2=A0 produ=
ct: X310</span><br>
                            <span
style=3D"font-family:Consolas,Courier,monospace">=C2=A0=C2=A0=C2=A0 resou=
rce: RIO0</span><br>
                            <span
style=3D"font-family:Consolas,Courier,monospace">=C2=A0=C2=A0=C2=A0 type:=
 x300</span></div>
                          <div><br>
                            <span
style=3D"font-family:Consolas,Courier,monospace">gnb@xgoss-host:~/srsRAN_=
Project/build4ac5300/apps/gnb$
                              uhd_usrp_probe
                            </span><br>
                            <span
style=3D"font-family:Consolas,Courier,monospace">[INFO] [UHD] linux; GNU
                              C++ version 11.4.0; Boost_107400;
                              UHD_4.7.0.0-0ubuntu1~jammy1</span><br>
                            <span
style=3D"font-family:Consolas,Courier,monospace">[INFO] [X300] X300
                              initialization sequence...</span><br>
                            <span
style=3D"font-family:Consolas,Courier,monospace">[INFO] [X300] Connecting
                              to niusrpriorpc at localhost:5444...</span>=
<br>
                            <span
style=3D"font-family:Consolas,Courier,monospace">[INFO] [X300] Using
                              LVBITX bitfile
                              /usr/share/uhd/images/usrp_x310_fpga_HG.lvb=
itx</span><br>
                            <span
style=3D"font-family:Consolas,Courier,monospace">Error: RuntimeError:
                              x300_impl: Could not initialize RIO
                              session. Unknown error. (Error code
                              -63150)</span></div>
                          <br>
                        </div>
                        <br>
                      </div>
                      <br>
                      <fieldset></fieldset>
                      <pre>______________________________________________=
_
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">usrp-users@lists.et=
tus.com</a>
To unsubscribe send an email to <a
                      href=3D"mailto:usrp-users-leave@lists.ettus.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">usrp-users-leave@li=
sts.ettus.com</a>
</pre>
                    </blockquote>
                    The procedures for making this work are here:<br>
                    <br>
                    <a
href=3D"https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_pcie"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">https://files.ettus=
.com/manual/page_usrp_x3x0.html#x3x0_hw_pcie</a><br>
                    <br>
                    <br>
                  </div>
                </div>
                _______________________________________________<br>
                USRP-users mailing list -- <a
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">
                  usrp-users@lists.ettus.com</a><br>
                To unsubscribe send an email to <a
                  href=3D"mailto:usrp-users-leave@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">
                  usrp-users-leave@lists.ettus.com</a><br>
              </blockquote>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------obZ50PFpxb8sSR0J1BPXtfpG--

--===============2589184580624410684==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2589184580624410684==--
