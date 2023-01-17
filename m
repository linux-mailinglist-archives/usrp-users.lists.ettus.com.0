Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A951E66E1A7
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jan 2023 16:07:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 875A6384575
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jan 2023 10:07:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673968060; bh=5FWqRvFzkdtAo0qhctwrYX7eJrCuHVvN4WKUk3zK7ts=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=CaCSgcUGLd46m/NAdlWL6iH9D6zE2/LI06EjRaLuIc4XIRQNAhu8Pi4LNmaE+MAMK
	 4Wv69uwrPps6j1xnJdR7CluniuLS8tPoHgvBvbdRKIBN4Su+oNhI8sB8WTp/C/9rE/
	 rG+EC40sKos9AXIx1OT0J/MyzeSvQb8JNeqdHhG0MJsm0m4wuUeehvy4ItTVpJzhCy
	 vSL0JPlIxmHwvdAj+cKSTkpZ9OCrHvfozBF3qce1r/s9XSsv9BED4X4fou9dJtnCU4
	 EHEu04XYAEKhAWOjtyIWEQMeLVLLiTBaUIKqcGF2tJQnZPFWnliOZ4Xh6NCLcsXwEO
	 0hX2fUm2BNqBw==
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 7A0453845B7
	for <usrp-users@lists.ettus.com>; Tue, 17 Jan 2023 10:07:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jsCmJr5Y";
	dkim-atps=neutral
Received: by mail-oo1-f48.google.com with SMTP id z12-20020a4a490c000000b004f21c72be42so1418989ooa.8
        for <usrp-users@lists.ettus.com>; Tue, 17 Jan 2023 07:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZSM4I90zmLKo73HRhMoq3AjevyngOWpcXBIWRab7IUc=;
        b=jsCmJr5YBQpzcZeUUC4yyGbCkCXupqBCg+xDW37R60UiX8GMn93/GUgI90SdyPIFye
         aZsaBbBAOJ6Y6gYDbtaG3KgNZq4owTj4JjczZEK9omfHXicA3x9gSy5TbcR4PaxcI1LM
         W/xZD+vUeXwip6e42/K+vLR8MJK9+8XOF6wYdl9n2AHJFgAWM/s2VruIHWpRVYUdQVVn
         pwKM54G2z76Gs3mNXh7/4YT4F4v5kx4awbL5VHJaqTnnWF9PgysRoHdVqa2eLZ88pb72
         hN0J0JyKWKsJ4W3BUbi5H49l6vjwfcSl7epGsFVz5BtQOB61JfrEob/bvTYLO47qOXqB
         iGkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZSM4I90zmLKo73HRhMoq3AjevyngOWpcXBIWRab7IUc=;
        b=zxrUx9jdrplto8HG2L0epdMRoFPj90fJofg5KwmZ1AfJ+7JcAoVMQZGC2Wu+ouxqch
         ACkBLijgs/jEagSKKA+llnM1ss2Mt2KOfn7KQCl6kGFVnpOFl8eh5X/BjcbwN8P/43OR
         u9kgCM2C8KD5FS3g27rUBcX2OiwqRSznw/TILSS4FI/cEa2vE1UilOiUUHnn1097zjxp
         ziYO103VqO0Lj6FLl68u/+EsaeGq7iK3/0d2W89Vdzm17pY3WQ7UPmIF6mx+1QPR5RRf
         8mq1u/V3MX75YZg36p3yJeU3e+EsiDrEbZzReoH0f2nGwJ1/8YgBJnJALC0F+1uRWZcZ
         9LHw==
X-Gm-Message-State: AFqh2ko6o8PCZY6spytgzwAPcm+Bqwc1Q4gbKIxuZR638y5DhHEcIFUa
	WM14XaRCoXJufLODSGqypCquCk04lws=
X-Google-Smtp-Source: AMrXdXuVODJarCQRASyd53AHkSIDfwbiQa6HwzqgheBbsRW12sdGLCSJ7lbhyeFKneg91pu3NPQg4A==
X-Received: by 2002:a05:6359:c26:b0:ea:5509:4869 with SMTP id gn38-20020a0563590c2600b000ea55094869mr369451rwb.30.1673968020675;
        Tue, 17 Jan 2023 07:07:00 -0800 (PST)
Received: from [192.168.2.174] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id s18-20020a05620a255200b006eeb3165565sm20408492qko.80.2023.01.17.07.07.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 07:07:00 -0800 (PST)
Message-ID: <20f83cf4-3f8a-0729-a5e5-5c07f13e95ca@gmail.com>
Date: Tue, 17 Jan 2023 10:06:59 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: mychk1 1 <mychk2@gmail.com>
References: <CAEygNraa096PUD+3D_EUzKoOW4PnxbmyxZ7O5tNqEUW3zmudfQ@mail.gmail.com>
 <71fccf0a-dc79-2695-7433-42382fb02c2c@gmail.com>
 <CAEygNrYO8Ji0dqY3-TcUsFJ1CVkCLVX7B09hUudnBJ+JY2UK6g@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEygNrYO8Ji0dqY3-TcUsFJ1CVkCLVX7B09hUudnBJ+JY2UK6g@mail.gmail.com>
Message-ID-Hash: 6MHGMTC23SOFMWQKLKFUDTBTOLW77M7N
X-Message-ID-Hash: 6MHGMTC23SOFMWQKLKFUDTBTOLW77M7N
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: MPM compat error using USRP N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6MHGMTC23SOFMWQKLKFUDTBTOLW77M7N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8852608899792140439=="

This is a multi-part message in MIME format.
--===============8852608899792140439==
Content-Type: multipart/alternative;
 boundary="------------aF3xgAsi8c7pCfpwg0nxSpds"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------aF3xgAsi8c7pCfpwg0nxSpds
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 17/01/2023 09:51, mychk1 1 wrote:
> Yes, I'm running OAI on a workstation.
Run:

uhd_config_info --version

on BOTH your PC and the N310 -- do they match?


>
> I already updated the SDCard using this command:
> >>
> sudo dd if=3D/usr/local/share/uhd/images/usrp_n3xx_fs.sdimg of=3D/dev/s=
db=20
> bs=3D1M
> <<
> and get this output:
> >>
> =C2=A0=C2=A0 15160+0 records in
> =C2=A0 =C2=A015160+0 records out
> =C2=A0 =C2=A015896412160 bytes (16 Gb, 15 GiB) copied, 1160.93 s, 13.7 =
MB/s
> <<
> But the MPM Version still 4 not 4.2.
>
> what do you think?
>
>
> BR,
>
> On Tue, Jan 17, 2023 at 4:35 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 17/01/2023 06:28, mychk1 1 wrote:
>>
>>     Hello Community,
>>
>>     I using the USRP N310 with openairinterface5G code.
>>
>>     recently,=C2=A0 I faced an error called updating MPM version. Is t=
here
>>     a commend to update MPM version?
>>
>>     [INFO] [MPM.main] Launching USRP/MPM, version: 4.1.0.0-gd21735d5
>>     [INFO] [MPM.main] Spawning RPC process...
>>     [INFO] [MPM.PeriphManager] Device serial number: 31FD9DD
>>     [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
>>     [INFO] [MPM.PeriphManager] init() called with device args
>>     `clock_source=3Dinternal,time_source=3Dinternal'.
>>     [INFO] [MPM.RPCServer] RPC server ready!
>>     [INFO] [MPM.RPCServer] Spawning watchdog task...
>>     [ERROR] [MPMD] MPM minor compat number mismatch. Expected: 4.2
>>     Actual: 4.0. Please update the version of MPM on your USRP device.
>>     terminate called after throwing an instance of 'uhd::runtime_error=
'
>>     =C2=A0 what(): =C2=A0RuntimeError: MPM minor compat number mismatc=
h.
>>     Expected: 4.2 Actual: 4.0. Please update the version of MPM on
>>     your USRP device.
>>     Aborted
>>
>>
>>
>>     Some useful logs:
>>     =C2=A0- In the host : uhd_usrp_probe
>>     [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>>     UHD_4.1.0.HEAD-0-gd21735d5
>>     [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>>     mgmt_addr=3D10.237.72.103,type=3Dn3xx,product=3Dn310,serial=3D31FD=
9DD,fpga=3DHG,claimed=3DFalse,addr=3D192.168.10.2
>>     [WARNING] [MPM.RPCServer] A timeout event occured!
>>     [INFO] [MPM.PeriphManager] init() called with device args
>>     `fpga=3DHG,mgmt_addr=3D10.237.72.103,product=3Dn310,clock_source=3D=
internal,time_source=3Dinternal'.
>>     _____________________________________________________
>>     =C2=A0/
>>     | =C2=A0 =C2=A0 =C2=A0 Device: N300-Series Device
>>     | _____________________________________________________
>>     | =C2=A0 =C2=A0/
>>     | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: ni-n3xx-31FD9DD
>>     | =C2=A0 | =C2=A0 dboard_0_pid: 336
>>     | =C2=A0 | =C2=A0 dboard_0_serial: 31F6BC8
>>     | =C2=A0 | =C2=A0 dboard_1_pid: 336
>>     | =C2=A0 | =C2=A0 dboard_1_serial: 31F6BF2
>>     | =C2=A0 | =C2=A0 eeprom_version: 3
>>     | =C2=A0 | =C2=A0 fs_version: 20210630170909
>>     | =C2=A0 | =C2=A0 mender_artifact: v4.1.0.0_n3xx
>>     | =C2=A0 | =C2=A0 mpm_sw_version: 4.1.0.0-gd21735d5
>>     | =C2=A0 | =C2=A0 pid: 16962
>>     | =C2=A0 | =C2=A0 product: n310
>>     | =C2=A0 | =C2=A0 rev: 10
>>     | =C2=A0 | =C2=A0 rpc_connection: remote
>>     | =C2=A0 | =C2=A0 serial: 31FD9DD
>>     | =C2=A0 | =C2=A0 type: n3xx
>>     | =C2=A0 | =C2=A0 MPM Version: 4.0
>>     | =C2=A0 | =C2=A0 FPGA Version: 8.0
>>     | =C2=A0 | =C2=A0 FPGA git hash: d5c2750.clean
>>     | =C2=A0 |
>>     | =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, gpsdo, s=
fp0
>>     | =C2=A0 | =C2=A0 Clock sources: external, internal, gpsdo
>>     | =C2=A0 | =C2=A0 Sensors: ref_locked, gps_locked, temp, fan, gps_=
gpgga,
>>     gps_sky, gps_time, gps_tpv
>>     | _____________________________________________________
>>
>>
>>
>>     - The UHD version SD-card attached with the USRP
>>
>>     root@ni-n3xx-31FD9DD:~# uhd_config_info --version
>>     UHD 4.1.0.0-0-gd21735d5
>>
>>     BR,
>>     Marcin
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>     To clarify.
>
>     You're running OAI on a PC, attached to the N310?
>
>     The N310 system image can be easily updated:
>
>     https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide=
#Updating_the_files_system_by_writing_the_disk_image
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------aF3xgAsi8c7pCfpwg0nxSpds
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 17/01/2023 09:51, mychk1 1 wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEygNrYO8Ji0dqY3-TcUsFJ1CVkCLVX7B09hUudnBJ+JY2UK6g@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>
          <div>
            <div>Yes, I'm running OAI on a workstation. <br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Run:<br>
    <br>
    uhd_config_info --version<br>
    <br>
    on BOTH your PC and the N310 -- do they match?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAEygNrYO8Ji0dqY3-TcUsFJ1CVkCLVX7B09hUudnBJ+JY2UK6g@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div>
          <div>
            <div><br>
            </div>
            I already updated the SDCard using this command: <br>
            &gt;&gt;<br>
            sudo dd if=3D/usr/local/share/uhd/images/usrp_n3xx_fs.sdimg
            of=3D/dev/sdb bs=3D1M<br>
            &lt;&lt;<br>
          </div>
          <div>and get this output: <br>
          </div>
          <div>&gt;&gt;<br>
            =C2=A0=C2=A0 15160+0 records in<br>
            =C2=A0 =C2=A015160+0 records out<br>
            =C2=A0 =C2=A015896412160 bytes (16 Gb, 15 GiB) copied, 1160.9=
3 s, 13.7
            MB/s</div>
          <div>&lt;&lt;<br>
          </div>
          But the MPM Version still 4 not 4.2.<br>
          <br>
        </div>
        <div>what do you think? <br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        BR,<br>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 17, 2023 at 4:3=
5
          PM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 17/01/2023 06:28, mychk1 1 wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div><br>
                </div>
                <div>Hello Community, <br>
                  <br>
                </div>
                <div>I using the USRP N310 with openairinterface5G code.
                  <br>
                  <br>
                </div>
                <div>recently,=C2=A0 I faced an error called updating MPM
                  version. Is there a commend to update MPM version? <br>
                  <br>
                  [INFO] [MPM.main] Launching USRP/MPM, version:
                  4.1.0.0-gd21735d5<br>
                  [INFO] [MPM.main] Spawning RPC process...<br>
                  [INFO] [MPM.PeriphManager] Device serial number:
                  31FD9DD<br>
                  [INFO] [MPM.PeriphManager] Initialized 2
                  daughterboard(s).<br>
                  [INFO] [MPM.PeriphManager] init() called with device
                  args `clock_source=3Dinternal,time_source=3Dinternal'.<=
br>
                  [INFO] [MPM.RPCServer] RPC server ready!<br>
                  [INFO] [MPM.RPCServer] Spawning watchdog task...<br>
                  <span style=3D"color:rgb(255,0,0)">[ERROR] [MPMD] MPM
                    minor compat number mismatch. Expected: 4.2 Actual:
                    4.0. Please update the version of MPM on your USRP
                    device.</span><br>
                  terminate called after throwing an instance of
                  'uhd::runtime_error'<br>
                  =C2=A0 what(): =C2=A0RuntimeError: MPM minor compat num=
ber
                  mismatch. Expected: 4.2 Actual: 4.0. Please update the
                  version of MPM on your USRP device.<br>
                  Aborted<br>
                  <br>
                  <br>
                  <br>
                </div>
                <div>Some useful logs: <br>
                </div>
                <div>=C2=A0- In the host : uhd_usrp_probe <br>
                  <div>
                    <div>
                      <div>
                        <div>[INFO] [UHD] linux; GNU C++ version 7.5.0;
                          Boost_106501; UHD_4.1.0.HEAD-0-gd21735d5<br>
                          [INFO] [MPMD] Initializing 1 device(s) in
                          parallel with args:
mgmt_addr=3D10.237.72.103,type=3Dn3xx,product=3Dn310,serial=3D31FD9DD,fpg=
a=3DHG,claimed=3DFalse,addr=3D192.168.10.2<br>
                          [WARNING] [MPM.RPCServer] A timeout event
                          occured!<br>
                          [INFO] [MPM.PeriphManager] init() called with
                          device args
`fpga=3DHG,mgmt_addr=3D10.237.72.103,product=3Dn310,clock_source=3Dintern=
al,time_source=3Dinternal'.<br>
                          =C2=A0
                          _______________________________________________=
______<br>
                          =C2=A0/<br>
                          | =C2=A0 =C2=A0 =C2=A0 Device: N300-Series Devi=
ce<br>
                          | =C2=A0 =C2=A0
                          _______________________________________________=
______<br>
                          | =C2=A0 =C2=A0/<br>
                          | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: ni-n3xx=
-31FD9DD<br>
                          | =C2=A0 | =C2=A0 dboard_0_pid: 336<br>
                          | =C2=A0 | =C2=A0 dboard_0_serial: 31F6BC8<br>
                          | =C2=A0 | =C2=A0 dboard_1_pid: 336<br>
                          | =C2=A0 | =C2=A0 dboard_1_serial: 31F6BF2<br>
                          | =C2=A0 | =C2=A0 eeprom_version: 3<br>
                          | =C2=A0 | =C2=A0 fs_version: 20210630170909<br=
>
                          | =C2=A0 | =C2=A0 mender_artifact: v4.1.0.0_n3x=
x<br>
                          | =C2=A0 | =C2=A0 mpm_sw_version: 4.1.0.0-gd217=
35d5<br>
                          | =C2=A0 | =C2=A0 pid: 16962<br>
                          | =C2=A0 | =C2=A0 product: n310<br>
                          | =C2=A0 | =C2=A0 rev: 10<br>
                          | =C2=A0 | =C2=A0 rpc_connection: remote<br>
                          | =C2=A0 | =C2=A0 serial: 31FD9DD<br>
                          | =C2=A0 | =C2=A0 type: n3xx<br>
                          | =C2=A0 | =C2=A0 MPM Version: 4.0<br>
                          | =C2=A0 | =C2=A0 FPGA Version: 8.0<br>
                          | =C2=A0 | =C2=A0 FPGA git hash: d5c2750.clean<=
br>
                          | =C2=A0 | =C2=A0 <br>
                          | =C2=A0 | =C2=A0 Time sources: =C2=A0internal,=
 external,
                          gpsdo, sfp0<br>
                          | =C2=A0 | =C2=A0 Clock sources: external, inte=
rnal,
                          gpsdo<br>
                          | =C2=A0 | =C2=A0 Sensors: ref_locked, gps_lock=
ed, temp,
                          fan, gps_gpgga, gps_sky, gps_time, gps_tpv<br>
                          | =C2=A0 =C2=A0
                          _______________________________________________=
______</div>
                        <div><br>
                        </div>
                        <div><br>
                        </div>
                        <div><br>
                        </div>
                        <div>- The UHD version SD-card attached with the
                          USRP <br>
                          <br>
                          root@ni-n3xx-31FD9DD:~# uhd_config_info
                          --version<br>
                          UHD 4.1.0.0-0-gd21735d5</div>
                      </div>
                    </div>
                  </div>
                </div>
                <div><br>
                </div>
                <div>BR,<br>
                </div>
                <div>Marcin <br>
                </div>
              </div>
              <br>
              <fieldset></fieldset>
              <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-li=
nk-freetext">usrp-users-leave@lists.ettus.com</a>
</pre>
            </blockquote>
            To clarify.<br>
            <br>
            You're running OAI on a PC, attached to the N310?<br>
            <br>
            The N310 system image can be easily updated:<br>
            <br>
            <a
href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Gui=
de#Updating_the_files_system_by_writing_the_disk_image"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">https://kb.ettus.com/USRP_N=
300/N310/N320/N321_Getting_Started_Guide#Updating_the_files_system_by_wri=
ting_the_disk_image</a><br>
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

--------------aF3xgAsi8c7pCfpwg0nxSpds--

--===============8852608899792140439==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8852608899792140439==--
