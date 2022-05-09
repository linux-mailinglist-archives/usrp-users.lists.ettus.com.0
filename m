Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C6F5201F2
	for <lists+usrp-users@lfdr.de>; Mon,  9 May 2022 18:06:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 133BE384EC3
	for <lists+usrp-users@lfdr.de>; Mon,  9 May 2022 12:06:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652112366; bh=0FwE5TfXKhpmT8//weuhbx17Abo3pRlx1JNI0PYt1KA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=qjYSq9EYKHTTCFfoiQjqoTRErblfCTzcUKXiF7+/7KfeXUdAflYnX3FIpLyhqUTM9
	 LSvjVArgBZ0ae8h09e395wRJAikuDg6WIQdx06vnhWj42JJX36zuyoj6XnkNdQkAZv
	 +dQ+Qyxr4Vs8BF0QJm1pjUUhvjan09IbJJxrJQFF144ghQmZWCesS4N44TeBD+4uSC
	 Wbiabx8Nv1hqQKIa42TQogydOvrJlnzGUJeyDs9b2Er40IrpZUpLjhP68Hp3f5LMcY
	 FUigrUNHFShsQvYrbqvP+oQBpF3T6fcwJFZsA/7FE7vDmPTet+pfN/4FusjVFAR2FU
	 s4BTD/4yV5nNA==
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 5D8A9384E9D
	for <usrp-users@lists.ettus.com>; Mon,  9 May 2022 12:04:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KKfJEEaM";
	dkim-atps=neutral
Received: by mail-qk1-f174.google.com with SMTP id b20so11153169qkc.6
        for <usrp-users@lists.ettus.com>; Mon, 09 May 2022 09:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=WvT4uwnRl9bTDDcUYC106xFp+8Ii027a5LojsvmacwI=;
        b=KKfJEEaMq5Sy/56Iq9+VcxP8XfW9xy0fz1i8bBvTXBb42tIZnjEd6KE06v8xrWxlf/
         hp/GR1ucg6uhALu8zrZZsP4oYp420jj0v54LSpAJOQxdHdS+fhhL1veXplH8ZzvjvzPb
         uh4q2V3KyKyhjHgquFxsDwd+wp18deIQQVfjhpWTXwcALA5mWyGqFrD6ipdMPES8k6JH
         rjZHOleJvVOXkyJrmucqQ6PTbQwfnB504lQ+DxyzrlXLhvYH7dE54Rq4ziQaEXa+ZT1b
         hOG1vQC5bstFLijFt1RffNMBnk6qQKIDnDd7H0iTm1JSIybR6RfJd/oy1yLg3WnA555R
         ZaxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=WvT4uwnRl9bTDDcUYC106xFp+8Ii027a5LojsvmacwI=;
        b=f7RDJ05AzyD8sswx7bA6LwuNwyoHCv3aCSpul88WN2NOXkD/hy8Lc6DfxMBungd6Y1
         OXTMjiXO3imE3hvyVKVdAVaGj3IMQp1eT9sVOtKl7XXZjMPQaUVmHAhtkcSUM7oHG66/
         4Nj3p0zKib04SLL59okoH2XpKjLTvcBju9HBW1hjj5g+3e2+nZ8nd0K1X49BTXyGPtIM
         9cpJPYwKU01G7Xh7cWCuGJyXzdEVNGv/WkmiA96FG9MUKksTc+6kRSYmOdA4Ml7rsfUy
         0k6QrsShUbxsed+pJQjy8WqalUbadsRtKAXX9SR3miNEzf3v0k9ylwpmP4RBBGJtJq3y
         Sqbg==
X-Gm-Message-State: AOAM5315z8DMknAvKUPm5UBnvL9mYBynpadqifhHxvhDKONO+9oaKYAO
	h5Zlw2Tsm7ZYzqdn9ZWOk8k73rOSTMA=
X-Google-Smtp-Source: ABdhPJzexOUTrrgFfirQumB+AkZX00bA8TEXn9XgpoxgOR582jigJkMg86ajmYiE48Vv9zvnANKF5A==
X-Received: by 2002:a05:620a:b43:b0:6a0:92b9:8199 with SMTP id x3-20020a05620a0b4300b006a092b98199mr3748578qkg.710.1652112286409;
        Mon, 09 May 2022 09:04:46 -0700 (PDT)
Received: from [192.168.2.183] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id b10-20020a05620a270a00b0069fc13ce202sm6979774qkp.51.2022.05.09.09.04.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 May 2022 09:04:45 -0700 (PDT)
Message-ID: <7e208111-f0c0-6713-fe95-c4a6ea38d060@gmail.com>
Date: Mon, 9 May 2022 12:04:44 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MN2PR12MB33120210FE804565B1B42888B8C19@MN2PR12MB3312.namprd12.prod.outlook.com>
 <MN2PR12MB331244B919FBB63ECE92630FB8C69@MN2PR12MB3312.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR12MB331244B919FBB63ECE92630FB8C69@MN2PR12MB3312.namprd12.prod.outlook.com>
Message-ID-Hash: FA2YL5O4A42ATIR7FGFZ44OAKKVIFL35
X-Message-ID-Hash: FA2YL5O4A42ATIR7FGFZ44OAKKVIFL35
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 TDC measurement errors
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FA2YL5O4A42ATIR7FGFZ44OAKKVIFL35/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0337448299365871088=="

This is a multi-part message in MIME format.
--===============0337448299365871088==
Content-Type: multipart/alternative;
 boundary="------------r4Rvuh9CMSj7VCcq7BnuOMQX"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------r4Rvuh9CMSj7VCcq7BnuOMQX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-05-09 11:32, Jim Palladino wrote:
> Sorry to bring it up again, but this is really becoming an issue for=20
> us, in that we can't seem to use our N320 radios reliably with this=20
> TDC measurement error issue. When the TDC error occurs, our program or=20
> even uhd_usrp_probe immediately errors out and exits. If anyone has=20
> seen this or has any thoughts on why this might be happening or how to=20
> fix it, that would=C2=A0be=C2=A0greatly appreciated.
>
> Thanks,
> Jim
Jim:

I'm sorry this is happening to your N320s.=C2=A0=C2=A0 Can you confirm th=
at it=20
DOES NOT happen on previous releases?=C2=A0 I don't have an N320 here to =
test=20
with.

I've rattled some internal Ettus/NI cages, but I cannot offer a concrete=20
response time.


>
> -----------------------------------------------------------------------=
-
> *From:* Jim Palladino <jim@gardettoengineering.com>
> *Sent:* Monday, May 2, 2022 12:59 PM
> *To:* USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] N320 TDC measurement errors
> Hello,
>
> Ever since updating to UHD 4.1.0.5 (including updating the filesystem=20
> and FPGA image on our six N320 USRPs), we occasionally get TDC=20
> measurement errors when trying to interact with the radio via UHD. It=20
> isn't easily reproducible, but it does happen on different radios=20
> maybe once a day or so. I've seen it when using either external time=20
> and clock sources or internal (doesn't seem to matter which).
>
> Here is an example of the output of a uhd_usrp_probe when this occurs.
> ----------------------
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;=20
> UHD_4.1.0.HEAD-0-g6bd0be9c
> [DEBUG] [MPMD] Discovering MPM devices on port 49600
> [DEBUG] [MPMD] Discovering MPM devices on port 49600
> [DEBUG] [MPMD] Discovering MPM devices on port 49600
> [DEBUG] [MPMD] Discovering MPM devices on port 49600
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D192.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,fp=
ga=3DXG,claimed=3DFalse,addr=3D192.168.40.2
> [DEBUG] [MPMD] Claiming mboard 0
> [DEBUG] [MPMD] Device args:=20
> `mgmt_addr=3D192.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,f=
pga=3DXG,claimed=3DFalse,addr=3D192.168.40.2'.=20
> RPC address: 192.168.40.2
> [DEBUG] [MPMD] MPM reports device info:=20
> addr=3D192.168.30.2,claimed=3DTrue,connection=3Dremote,dboard_0_pid=3D3=
38,dboard_0_serial=3D31EBB6F,dboard_1_pid=3D338,dboard_1_serial=3D31EBB94=
,description=3DN300-Series=20
> Device,eeprom_version=3D3,fpga=3DXG,fpga_version=3D8.0,fpga_version_has=
h=3D6bd0be9.clean,fs_version=3D20211215135436,mender_artifact=3Dv4.1.0.5_=
n3xx,mpm_sw_version=3D4.1.0.5-g6bd0be9c,mpm_version=3D4.0,name=3Dni-n3xx-=
31EDED4,pid=3D16962,product=3Dn320,rev=3D10,rpc_connection=3Dremote,secon=
d_addr=3D192.168.40.2,serial=3D31EDED4,type=3Dn3xx
> [DEBUG] [MPMD] Found 8 motherboard sensors.
> [DEBUG] [MPMD] Initializing mboard 0
> [INFO] [MPM.PeriphManager] init() called with device args=20
> `fpga=3DXG,mgmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dinter=
nal,time_source=3Dinternal'.
> [INFO] [MPM.Rhodium-0] init() called with args=20
> `fpga=3DXG,mgmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dinter=
nal,time_source=3Dinternal'
> [INFO] [MPM.Rhodium-1] init() called with args=20
> `fpga=3DXG,mgmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dinter=
nal,time_source=3Dinternal'
> [INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
> [ERROR] [MPM.Sync-0] TDC measurements show a wide range of values!=20
> Check your clock rates for incompatibilities.
> [INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
> [ERROR] [RPC] TDC measurement out of expected range!
> [INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
> [INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
> [INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training=20
> Complete
> [ERROR] [MPM.RPCServer] init() failed with error: TDC measurement out=20
> of expected range!
> Error: RuntimeError: Error during RPC call to `init'. Error message:=20
> TDC measurement out of expected range!
> ----------------------
>
> If I run uhd_usrp_probe again immediately, it always seems to work=20
> fine. I don't think this is specific to any of the 3 valid master=20
> clock rates, but I've seen this happen after a fresh reboot of an N320=20
> with a uhd_usrp_probe -- so it should have been set to default=20
> parameters. I also feel like it happens after a radio hasn't been in=20
> use for a while, but I'm not sure if that is always the case.
>
> Does anyone have any idea what might cause this?
>
> Thanks,
> Jim
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------r4Rvuh9CMSj7VCcq7BnuOMQX
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-05-09 11:32, Jim Palladino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB331244B919FBB63ECE92630FB8C69@MN2PR12MB3312.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Sorry to bring it up again, but this is really becoming an issue
        for us, in that we can't seem to use our N320 radios reliably
        with this TDC measurement error issue. When the TDC error
        occurs, our program or even uhd_usrp_probe immediately errors
        out and exits. If anyone has seen this or has any thoughts on
        why this might be happening or how to fix it, that
        would=C2=A0be=C2=A0greatly appreciated.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Jim</div>
    </blockquote>
    Jim:<br>
    <br>
    I'm sorry this is happening to your N320s.=C2=A0=C2=A0 Can you confir=
m that it
    DOES NOT happen on previous releases?=C2=A0 I don't have an N320 here=
 to
    test with.<br>
    <br>
    I've rattled some internal Ettus/NI cages, but I cannot offer a
    concrete response time.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB331244B919FBB63ECE92630FB8C69@MN2PR12MB3312.namprd12=
.prod.outlook.com">
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Jim
          Palladino <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:jim=
@gardettoengineering.com">&lt;jim@gardettoengineering.com&gt;</a><br>
          <b>Sent:</b> Monday, May 2, 2022 12:59 PM<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> [USRP-users] N320 TDC measurement errors</font>
        <div>=C2=A0</div>
      </div>
      <style type=3D"text/css" style=3D"display:none">p
	{margin-top:0;
	margin-bottom:0}</style>
      <div dir=3D"ltr">
        <div class=3D"x_elementToProof"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          Hello,</div>
        <div class=3D"x_elementToProof"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          <br>
        </div>
        <div class=3D"x_elementToProof"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          Ever since updating to UHD 4.1.0.5 (including updating the
          filesystem and FPGA image on our six N320 USRPs), we
          occasionally get TDC measurement errors when trying to
          interact with the radio via UHD. It isn't easily reproducible,
          but it does happen on different radios maybe once a day or so.
          I've seen it when using either external time and clock sources
          or internal (doesn't seem to matter which).</div>
        <div class=3D"x_elementToProof"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          <br>
        </div>
        <div class=3D"x_elementToProof"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          Here is an example of the output of a uhd_usrp_probe when this
          occurs.</div>
        <div class=3D"x_elementToProof"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          ----------------------</div>
        <div class=3D"x_elementToProof"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
          UHD_4.1.0.HEAD-0-g6bd0be9c
          <div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
          <div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
          <div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
          <div>[DEBUG] [MPMD] Discovering MPM devices on port 49600</div>
          <div>[INFO] [MPMD] Initializing 1 device(s) in parallel with
            args:
mgmt_addr=3D192.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,fpga=
=3DXG,claimed=3DFalse,addr=3D192.168.40.2</div>
          <div>[DEBUG] [MPMD] Claiming mboard 0</div>
          <div>[DEBUG] [MPMD] Device args:
`mgmt_addr=3D192.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,fpg=
a=3DXG,claimed=3DFalse,addr=3D192.168.40.2'.
            RPC address: 192.168.40.2</div>
          <div>[DEBUG] [MPMD] MPM reports device info:
addr=3D192.168.30.2,claimed=3DTrue,connection=3Dremote,dboard_0_pid=3D338=
,dboard_0_serial=3D31EBB6F,dboard_1_pid=3D338,dboard_1_serial=3D31EBB94,d=
escription=3DN300-Series
Device,eeprom_version=3D3,fpga=3DXG,fpga_version=3D8.0,fpga_version_hash=3D=
6bd0be9.clean,fs_version=3D20211215135436,mender_artifact=3Dv4.1.0.5_n3xx=
,mpm_sw_version=3D4.1.0.5-g6bd0be9c,mpm_version=3D4.0,name=3Dni-n3xx-31ED=
ED4,pid=3D16962,product=3Dn320,rev=3D10,rpc_connection=3Dremote,second_ad=
dr=3D192.168.40.2,serial=3D31EDED4,type=3Dn3xx</div>
          <div>[DEBUG] [MPMD] Found 8 motherboard sensors.</div>
          <div>[DEBUG] [MPMD] Initializing mboard 0</div>
          <div>[INFO] [MPM.PeriphManager] init() called with device args
`fpga=3DXG,mgmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dinterna=
l,time_source=3Dinternal'.</div>
          <div>[INFO] [MPM.Rhodium-0] init() called with args
`fpga=3DXG,mgmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dinterna=
l,time_source=3Dinternal'</div>
          <div>[INFO] [MPM.Rhodium-1] init() called with args
`fpga=3DXG,mgmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dinterna=
l,time_source=3Dinternal'</div>
          <div>[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and
            locked!</div>
          <div>[ERROR] [MPM.Sync-0] TDC measurements show a wide range
            of values! Check your clock rates for incompatibilities.</div=
>
          <div>[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and
            locked!</div>
          <div>[ERROR] [RPC] TDC measurement out of expected range!</div>
          <div>[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!</div>
          <div>[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!</div>
          <div>[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization
            &amp; Training Complete</div>
          <div>[ERROR] [MPM.RPCServer] init() failed with error: TDC
            measurement out of expected range!</div>
        </div>
        <div class=3D"x_elementToProof"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          <span>Error: RuntimeError: Error during RPC call to `init'.
            Error message: TDC measurement out of expected range!</span><=
br>
        </div>
        <div class=3D"x_elementToProof"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          <span><span style=3D"background-color:rgb(255,255,255);
              display:inline!important">----------------------</span><br>
          </span></div>
        <div class=3D"x_elementToProof"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          <span><span style=3D"background-color:rgb(255,255,255);
              display:inline!important"><br>
            </span></span></div>
        <div class=3D"x_elementToProof"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          <span><span style=3D"background-color:rgb(255,255,255);
              display:inline!important">If I run uhd_usrp_probe again
              immediately, it always seems to work fine. I don't think
              this is specific to any of the 3 valid master clock rates,
              but I've seen this happen after a fresh reboot of an N320
              with a uhd_usrp_probe -- so it should have been set to
              default parameters. I also feel like it happens after a
              radio hasn't been in use for a while, but I'm not sure if
              that is always the case.=C2=A0</span></span></div>
        <div class=3D"x_elementToProof"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          <span><span style=3D"background-color:rgb(255,255,255);
              display:inline!important"><br>
            </span></span></div>
        <div class=3D"x_elementToProof"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          <span><span style=3D"background-color:rgb(255,255,255);
              display:inline!important"><span
                style=3D"background-color:rgb(255,255,255);
                display:inline!important">Does anyone have any idea what
                might cause this?</span><br>
            </span></span></div>
        <div class=3D"x_elementToProof"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          <span><span style=3D"background-color:rgb(255,255,255);
              display:inline!important"><br>
            </span></span></div>
        <div class=3D"x_elementToProof"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          <span><span style=3D"background-color:rgb(255,255,255);
              display:inline!important">Thanks,</span></span></div>
        <div class=3D"x_elementToProof"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          <span><span style=3D"background-color:rgb(255,255,255);
              display:inline!important">Jim</span></span></div>
        <div class=3D"x_elementToProof"
          style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          <span><span style=3D"background-color:rgb(255,255,255);
              display:inline!important"><br>
            </span></span></div>
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
    <br>
  </body>
</html>

--------------r4Rvuh9CMSj7VCcq7BnuOMQX--

--===============0337448299365871088==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0337448299365871088==--
