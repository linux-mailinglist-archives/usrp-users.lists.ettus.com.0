Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0704266E149
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jan 2023 15:50:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 452983840F4
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jan 2023 09:50:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673967033; bh=hggfn51ccJ3wc3Eo/IUKeLga2VGZaun0Dke/nK4CyA4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=wuQyeaSs+DRZSjISPufVGf0HqF+UOhaNyLMx65aGMm3H5EuHngolobJ0eXZGh65nI
	 MPQ+0LooLp63mfsw/bLKglm54P37lIs9/my+pHCfYBWa2gmZ3/9eCMwfwWkSYOGUJ5
	 Ok+1YY2nOv3wdm5ds0wBBHraiMdAvUm3UFa5CBGH6flY1PvKR3NnO5EdIIJ3Jbfibe
	 Wyu90EUD/s1H3REOLJtjLtSs3Oa7Ri+4SUmJE8AOjPwRfTLKNBIpZi24p2evSFK/q+
	 Qd9iEhx0I7K6lAJsPmCFToW9i/LSrv0rTETPkU3TiGsQTqQecwhHZCeWuZpe3U6nX8
	 rA/56B371Kb2g==
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 6AD3C383D1D
	for <usrp-users@lists.ettus.com>; Tue, 17 Jan 2023 09:50:26 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jubrp+Sr";
	dkim-atps=neutral
Received: by mail-lj1-f173.google.com with SMTP id q2so33382731ljp.6
        for <usrp-users@lists.ettus.com>; Tue, 17 Jan 2023 06:50:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KL27aHsv+pqUB9nc9NwCC7POBFBN+47tW4VkE1oQJzs=;
        b=jubrp+SrxJ7bO9XrJRl7FjmIhtuANgzV5cJT7oMqB6khGS0kfv413ZWmUuWsArNlwu
         ftWCODYXD88gJWBsOePGEHaT0FLmi7iVqMsazLUN15YCIr78Q9kPMDbPR8EDlEziR7VA
         ATtVACy7a51bSPZgwJLZmYIWj9Bz+oqS24aVRfEWFcZTbeoelobFYqGNGBa+1I0ANYsr
         avnLV649tRl1OM9hceybKaQw5mCZF2s8qa5htLpvHdDYKuhHmNZckFVup2CoioO4/bp/
         6tdw+D1ORAX8UnJXQKrnugOEeHVTD1nbIEIkVL1TNjFmcXhbPl/lkHVMATnj6fy/BxbC
         eFdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KL27aHsv+pqUB9nc9NwCC7POBFBN+47tW4VkE1oQJzs=;
        b=WsCIea4q0PnfxIy7ix8unmt7eaWAkoDZYMzm1bTqvlEr9bfZ75v+c/plozgmRdCZkp
         ruMpit1eJphkzG8PgNBye6IKBF79EIhC8sM7nmZSJIwewhzXaYmYSsMlMsZGeQ0a6Pej
         xn1r8VuqOh31GR4o2thCtu5eAb088BOPl2j1DhphH5t67tDNDaGUbDESNfv/Fwj0D7mE
         oGUIhQjNYr7vOts4Zi5bvbRYmwBMYFoEqDuoCmxGjUhGVWOy9lj5T/NfzuOnYux5TvK5
         yXp736lGQKU/y9V5aUPwLnCEwR1gJyVvgzATMeJqyezKszoZXhp5bsozkB/64DNv7VVw
         O6vw==
X-Gm-Message-State: AFqh2kpQVv14hShx6nSq75YjUdtBVrcNuM6R5QvVzNYFUc3Ppg1/kKU0
	jyx521gcrViuXsu0Jjgow5Sg4FJcj5sHpyJQH4k=
X-Google-Smtp-Source: AMrXdXvjUYbWRt0HM5wDK/S85vQrdV/JSfMgEVx2TEBjAkNXA1ijr2U0nQ51hpVWGKwQDS8AERklZa18c06W3CFIa/g=
X-Received: by 2002:a2e:908e:0:b0:284:cbb:1bc7 with SMTP id
 l14-20020a2e908e000000b002840cbb1bc7mr363118ljg.89.1673967024929; Tue, 17 Jan
 2023 06:50:24 -0800 (PST)
MIME-Version: 1.0
References: <CAEygNraa096PUD+3D_EUzKoOW4PnxbmyxZ7O5tNqEUW3zmudfQ@mail.gmail.com>
 <71fccf0a-dc79-2695-7433-42382fb02c2c@gmail.com>
In-Reply-To: <71fccf0a-dc79-2695-7433-42382fb02c2c@gmail.com>
From: mychk1 1 <mychk2@gmail.com>
Date: Tue, 17 Jan 2023 16:51:54 +0200
Message-ID: <CAEygNrYO8Ji0dqY3-TcUsFJ1CVkCLVX7B09hUudnBJ+JY2UK6g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: YVJBAWJEGMKSLEVTL2JQOUXCVRNGIEPI
X-Message-ID-Hash: YVJBAWJEGMKSLEVTL2JQOUXCVRNGIEPI
X-MailFrom: mychk2@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: MPM compat error using USRP N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YVJBAWJEGMKSLEVTL2JQOUXCVRNGIEPI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6530283731730901917=="

--===============6530283731730901917==
Content-Type: multipart/alternative; boundary="000000000000e2fd5d05f276d1e8"

--000000000000e2fd5d05f276d1e8
Content-Type: text/plain; charset="UTF-8"

Yes, I'm running OAI on a workstation.

I already updated the SDCard using this command:
>>
sudo dd if=/usr/local/share/uhd/images/usrp_n3xx_fs.sdimg of=/dev/sdb bs=1M
<<
and get this output:
>>
   15160+0 records in
   15160+0 records out
   15896412160 bytes (16 Gb, 15 GiB) copied, 1160.93 s, 13.7 MB/s
<<
But the MPM Version still 4 not 4.2.

what do you think?


BR,

On Tue, Jan 17, 2023 at 4:35 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 17/01/2023 06:28, mychk1 1 wrote:
>
>
> Hello Community,
>
> I using the USRP N310 with openairinterface5G code.
>
> recently,  I faced an error called updating MPM version. Is there a
> commend to update MPM version?
>
> [INFO] [MPM.main] Launching USRP/MPM, version: 4.1.0.0-gd21735d5
> [INFO] [MPM.main] Spawning RPC process...
> [INFO] [MPM.PeriphManager] Device serial number: 31FD9DD
> [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
> [INFO] [MPM.PeriphManager] init() called with device args
> `clock_source=internal,time_source=internal'.
> [INFO] [MPM.RPCServer] RPC server ready!
> [INFO] [MPM.RPCServer] Spawning watchdog task...
> [ERROR] [MPMD] MPM minor compat number mismatch. Expected: 4.2 Actual:
> 4.0. Please update the version of MPM on your USRP device.
> terminate called after throwing an instance of 'uhd::runtime_error'
>   what():  RuntimeError: MPM minor compat number mismatch. Expected: 4.2
> Actual: 4.0. Please update the version of MPM on your USRP device.
> Aborted
>
>
>
> Some useful logs:
>  - In the host : uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
> UHD_4.1.0.HEAD-0-gd21735d5
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=10.237.72.103,type=n3xx,product=n310,serial=31FD9DD,fpga=HG,claimed=False,addr=192.168.10.2
> [WARNING] [MPM.RPCServer] A timeout event occured!
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=HG,mgmt_addr=10.237.72.103,product=n310,clock_source=internal,time_source=internal'.
>   _____________________________________________________
>  /
> |       Device: N300-Series Device
> |     _____________________________________________________
> |    /
> |   |       Mboard: ni-n3xx-31FD9DD
> |   |   dboard_0_pid: 336
> |   |   dboard_0_serial: 31F6BC8
> |   |   dboard_1_pid: 336
> |   |   dboard_1_serial: 31F6BF2
> |   |   eeprom_version: 3
> |   |   fs_version: 20210630170909
> |   |   mender_artifact: v4.1.0.0_n3xx
> |   |   mpm_sw_version: 4.1.0.0-gd21735d5
> |   |   pid: 16962
> |   |   product: n310
> |   |   rev: 10
> |   |   rpc_connection: remote
> |   |   serial: 31FD9DD
> |   |   type: n3xx
> |   |   MPM Version: 4.0
> |   |   FPGA Version: 8.0
> |   |   FPGA git hash: d5c2750.clean
> |   |
> |   |   Time sources:  internal, external, gpsdo, sfp0
> |   |   Clock sources: external, internal, gpsdo
> |   |   Sensors: ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky,
> gps_time, gps_tpv
> |     _____________________________________________________
>
>
>
> - The UHD version SD-card attached with the USRP
>
> root@ni-n3xx-31FD9DD:~# uhd_config_info --version
> UHD 4.1.0.0-0-gd21735d5
>
> BR,
> Marcin
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> To clarify.
>
> You're running OAI on a PC, attached to the N310?
>
> The N310 system image can be easily updated:
>
>
> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updating_the_files_system_by_writing_the_disk_image
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e2fd5d05f276d1e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Yes, I&#39;m running OAI on a workstation. =
<br><br></div>I already updated the SDCard using this command: <br>&gt;&gt;=
<br>sudo dd if=3D/usr/local/share/uhd/images/usrp_n3xx_fs.sdimg of=3D/dev/s=
db bs=3D1M<br>&lt;&lt;<br></div><div>and get this output: <br></div><div>&g=
t;&gt;<br>=C2=A0=C2=A0 15160+0 records in<br>=C2=A0 =C2=A015160+0 records o=
ut<br>=C2=A0 =C2=A015896412160 bytes (16 Gb, 15 GiB) copied, 1160.93 s, 13.=
7 MB/s</div><div>&lt;&lt;<br></div>But the MPM Version still 4 not 4.2.<br>=
<br></div><div>what do you think? <br></div><div><br></div><div><br></div>B=
R,<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Tue, Jan 17, 2023 at 4:35 PM Marcus D. Leech &lt;<a href=3D"mailto=
:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 17/01/2023 06:28, mychk1 1 wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Hello Community, <br>
          <br>
        </div>
        <div>I using the USRP N310 with openairinterface5G code. <br>
          <br>
        </div>
        <div>recently,=C2=A0 I faced an error called updating MPM version. =
Is
          there a commend to update MPM version? <br>
          <br>
          [INFO] [MPM.main] Launching USRP/MPM, version:
          4.1.0.0-gd21735d5<br>
          [INFO] [MPM.main] Spawning RPC process...<br>
          [INFO] [MPM.PeriphManager] Device serial number: 31FD9DD<br>
          [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).<br>
          [INFO] [MPM.PeriphManager] init() called with device args
          `clock_source=3Dinternal,time_source=3Dinternal&#39;.<br>
          [INFO] [MPM.RPCServer] RPC server ready!<br>
          [INFO] [MPM.RPCServer] Spawning watchdog task...<br>
          <span style=3D"color:rgb(255,0,0)">[ERROR] [MPMD] MPM minor
            compat number mismatch. Expected: 4.2 Actual: 4.0. Please
            update the version of MPM on your USRP device.</span><br>
          terminate called after throwing an instance of
          &#39;uhd::runtime_error&#39;<br>
          =C2=A0 what(): =C2=A0RuntimeError: MPM minor compat number mismat=
ch.
          Expected: 4.2 Actual: 4.0. Please update the version of MPM on
          your USRP device.<br>
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
                  [INFO] [MPMD] Initializing 1 device(s) in parallel
                  with args:
mgmt_addr=3D10.237.72.103,type=3Dn3xx,product=3Dn310,serial=3D31FD9DD,fpga=
=3DHG,claimed=3DFalse,addr=3D192.168.10.2<br>
                  [WARNING] [MPM.RPCServer] A timeout event occured!<br>
                  [INFO] [MPM.PeriphManager] init() called with device
                  args
`fpga=3DHG,mgmt_addr=3D10.237.72.103,product=3Dn310,clock_source=3Dinternal=
,time_source=3Dinternal&#39;.<br>
                  =C2=A0
                  _____________________________________________________<br>
                  =C2=A0/<br>
                  | =C2=A0 =C2=A0 =C2=A0 Device: N300-Series Device<br>
                  | =C2=A0 =C2=A0
                  _____________________________________________________<br>
                  | =C2=A0 =C2=A0/<br>
                  | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: ni-n3xx-31FD9DD<b=
r>
                  | =C2=A0 | =C2=A0 dboard_0_pid: 336<br>
                  | =C2=A0 | =C2=A0 dboard_0_serial: 31F6BC8<br>
                  | =C2=A0 | =C2=A0 dboard_1_pid: 336<br>
                  | =C2=A0 | =C2=A0 dboard_1_serial: 31F6BF2<br>
                  | =C2=A0 | =C2=A0 eeprom_version: 3<br>
                  | =C2=A0 | =C2=A0 fs_version: 20210630170909<br>
                  | =C2=A0 | =C2=A0 mender_artifact: v4.1.0.0_n3xx<br>
                  | =C2=A0 | =C2=A0 mpm_sw_version: 4.1.0.0-gd21735d5<br>
                  | =C2=A0 | =C2=A0 pid: 16962<br>
                  | =C2=A0 | =C2=A0 product: n310<br>
                  | =C2=A0 | =C2=A0 rev: 10<br>
                  | =C2=A0 | =C2=A0 rpc_connection: remote<br>
                  | =C2=A0 | =C2=A0 serial: 31FD9DD<br>
                  | =C2=A0 | =C2=A0 type: n3xx<br>
                  | =C2=A0 | =C2=A0 MPM Version: 4.0<br>
                  | =C2=A0 | =C2=A0 FPGA Version: 8.0<br>
                  | =C2=A0 | =C2=A0 FPGA git hash: d5c2750.clean<br>
                  | =C2=A0 | =C2=A0 <br>
                  | =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external,=
 gpsdo, sfp0<br>
                  | =C2=A0 | =C2=A0 Clock sources: external, internal, gpsd=
o<br>
                  | =C2=A0 | =C2=A0 Sensors: ref_locked, gps_locked, temp, =
fan,
                  gps_gpgga, gps_sky, gps_time, gps_tpv<br>
                  | =C2=A0 =C2=A0
                  _____________________________________________________</di=
v>
                <div><br>
                </div>
                <div><br>
                </div>
                <div><br>
                </div>
                <div>- The UHD version SD-card attached with the USRP <br>
                  <br>
                  root@ni-n3xx-31FD9DD:~# uhd_config_info --version<br>
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
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    To clarify.<br>
    <br>
    You&#39;re running OAI on a PC, attached to the N310?<br>
    <br>
    The N310 system image can be easily updated:<br>
    <br>
<a href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Gu=
ide#Updating_the_files_system_by_writing_the_disk_image" target=3D"_blank">=
https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updatin=
g_the_files_system_by_writing_the_disk_image</a><br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e2fd5d05f276d1e8--

--===============6530283731730901917==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6530283731730901917==--
