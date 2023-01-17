Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B9566E0D6
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jan 2023 15:35:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EC9193845CA
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jan 2023 09:35:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673966106; bh=DSvT6EZghApzPQOkYCBms2UulBBv/739OsOXpKqQ8hQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=EDiMW803+/afgb53L6hGcbJLxQsXYoQVEGNYIPh3f5mMHWr3IwbrvBERe+5jL6Sr3
	 IOnJgATjK74+AZG5fOs0V64LIW3R4YbcOA17zaasVrZpgJaD4+Shr6OgbEDdtWGb8H
	 JvTzSXJpk45DhCZWuOrHO6UNDFlWZZ+7KjJEGdi507J4xujhr7QkgKGzg7wdSfIa05
	 eJIv8qxRN6ipk8uzg68Y30wqJ1OtrCp5noFNzrCXsGaTzteQuwD+U2/yVZNUFktnqe
	 q3Q9hSecIyKh4kw3zuOWsHHE2zUpvu8j8BIsduGFOz3ZFF0gD2NbgFH2NH/BYOhad3
	 VwLkKWfsGbRmw==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 2FE81383E1B
	for <usrp-users@lists.ettus.com>; Tue, 17 Jan 2023 09:32:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pNfTuJw7";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id e8so6335378qts.1
        for <usrp-users@lists.ettus.com>; Tue, 17 Jan 2023 06:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fWA2eRnGotMMshn8I6Jx5IYzHbnsYk/X1x1aLBuzr5M=;
        b=pNfTuJw7Ue5i5BmajuzQyubbAFwNffpd4y7yHDjzgSXiJMS2to9SlkvCJxBY1b8rza
         F4+AJhmVG2dm1oFjps/8acJGgru98nIMEruFOiAWAk3A4u8fSmHdFIy1Q2p5+w4EEeCJ
         vW77mCeMCZSV0Yzflc3hmMOj1w4a1VkQGH5nB1DKp9m3PQgDwYxLjAHGO+9lawNyqPxR
         qqp+qZTSw7s8NBDoX9yRfBGSmEteXRNbNYJRFg47y3hNsBWWV5TqvGC6ap44b/Vit0dl
         S49JGpshGL9nQ3/MznO6GwEKkylqTphKoyGqib6j0q77Wyj7b16ksqgY+YpYc6ha88Cv
         LdeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fWA2eRnGotMMshn8I6Jx5IYzHbnsYk/X1x1aLBuzr5M=;
        b=w0S59jhDOuwc5/T60SxXioZonkluyyKcnExj2zQpQr2U4hP9XwmzYz7jkOW8hwyd0+
         VMinDXXsCNEbGkn4BDy7pDy7WmXXwWFwapU10c0ahBBKaXv7S0heIGuK/2cgZS54VarF
         dZWjB12wqUXtn+vwMGm2dBj39Jmi9IHUtYF2DgADjz29aDnwvg8fLFdtak6+KSyw8nJV
         BZSN+jtDcbdN96SiZTRFw05m75VFf6S0Qcj3NUKmXYuYywaUtXikNA48Q0M5/3z2nmYN
         jrtkaGpiKl2NxsjpcJFVzrI2ty8ECnonn1Isz9AQY+ogmpoRmEWub4oamsPOw3bUAOj9
         LLuA==
X-Gm-Message-State: AFqh2kpOggC5icQLLJtDcRnUEoI4+8QQxMarJVCpu/ATaEBFZfv3Pzdj
	gRXDI/xOckrbi9F0pdgZtoaM7sAoq1A=
X-Google-Smtp-Source: AMrXdXstlCgRT3rhs5Yy7i4oFpzrxK5RZCIUx6mCywVwJ+MUjq3gfpKWMJrBl5MM9xfN6nh1gzwzQA==
X-Received: by 2002:ac8:70d1:0:b0:3b6:3577:2fe6 with SMTP id g17-20020ac870d1000000b003b635772fe6mr4131150qtp.31.1673965960352;
        Tue, 17 Jan 2023 06:32:40 -0800 (PST)
Received: from [192.168.2.174] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id bz25-20020a05622a1e9900b003a591194221sm834451qtb.7.2023.01.17.06.32.39
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 06:32:40 -0800 (PST)
Message-ID: <71fccf0a-dc79-2695-7433-42382fb02c2c@gmail.com>
Date: Tue, 17 Jan 2023 09:32:39 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAEygNraa096PUD+3D_EUzKoOW4PnxbmyxZ7O5tNqEUW3zmudfQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEygNraa096PUD+3D_EUzKoOW4PnxbmyxZ7O5tNqEUW3zmudfQ@mail.gmail.com>
Message-ID-Hash: N635UIZEAKHFZXOL6ZKDS4OXHGD3SUDW
X-Message-ID-Hash: N635UIZEAKHFZXOL6ZKDS4OXHGD3SUDW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: MPM compat error using USRP N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N635UIZEAKHFZXOL6ZKDS4OXHGD3SUDW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4880993379609530272=="

This is a multi-part message in MIME format.
--===============4880993379609530272==
Content-Type: multipart/alternative;
 boundary="------------z0d0i8jjA2TVPOrvQ8regnNz"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------z0d0i8jjA2TVPOrvQ8regnNz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 17/01/2023 06:28, mychk1 1 wrote:
>
> Hello Community,
>
> I using the USRP N310 with openairinterface5G code.
>
> recently,=C2=A0 I faced an error called updating MPM version. Is there =
a=20
> commend to update MPM version?
>
> [INFO] [MPM.main] Launching USRP/MPM, version: 4.1.0.0-gd21735d5
> [INFO] [MPM.main] Spawning RPC process...
> [INFO] [MPM.PeriphManager] Device serial number: 31FD9DD
> [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
> [INFO] [MPM.PeriphManager] init() called with device args=20
> `clock_source=3Dinternal,time_source=3Dinternal'.
> [INFO] [MPM.RPCServer] RPC server ready!
> [INFO] [MPM.RPCServer] Spawning watchdog task...
> [ERROR] [MPMD] MPM minor compat number mismatch. Expected: 4.2 Actual:=20
> 4.0. Please update the version of MPM on your USRP device.
> terminate called after throwing an instance of 'uhd::runtime_error'
> =C2=A0 what(): =C2=A0RuntimeError: MPM minor compat number mismatch. Ex=
pected:=20
> 4.2 Actual: 4.0. Please update the version of MPM on your USRP device.
> Aborted
>
>
>
> Some useful logs:
> =C2=A0- In the host : uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;=20
> UHD_4.1.0.HEAD-0-gd21735d5
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D10.237.72.103,type=3Dn3xx,product=3Dn310,serial=3D31FD9DD,f=
pga=3DHG,claimed=3DFalse,addr=3D192.168.10.2
> [WARNING] [MPM.RPCServer] A timeout event occured!
> [INFO] [MPM.PeriphManager] init() called with device args=20
> `fpga=3DHG,mgmt_addr=3D10.237.72.103,product=3Dn310,clock_source=3Dinte=
rnal,time_source=3Dinternal'.
> _____________________________________________________
> =C2=A0/
> | =C2=A0 =C2=A0 =C2=A0 Device: N300-Series Device
> | _____________________________________________________
> | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: ni-n3xx-31FD9DD
> | =C2=A0 | =C2=A0 dboard_0_pid: 336
> | =C2=A0 | =C2=A0 dboard_0_serial: 31F6BC8
> | =C2=A0 | =C2=A0 dboard_1_pid: 336
> | =C2=A0 | =C2=A0 dboard_1_serial: 31F6BF2
> | =C2=A0 | =C2=A0 eeprom_version: 3
> | =C2=A0 | =C2=A0 fs_version: 20210630170909
> | =C2=A0 | =C2=A0 mender_artifact: v4.1.0.0_n3xx
> | =C2=A0 | =C2=A0 mpm_sw_version: 4.1.0.0-gd21735d5
> | =C2=A0 | =C2=A0 pid: 16962
> | =C2=A0 | =C2=A0 product: n310
> | =C2=A0 | =C2=A0 rev: 10
> | =C2=A0 | =C2=A0 rpc_connection: remote
> | =C2=A0 | =C2=A0 serial: 31FD9DD
> | =C2=A0 | =C2=A0 type: n3xx
> | =C2=A0 | =C2=A0 MPM Version: 4.0
> | =C2=A0 | =C2=A0 FPGA Version: 8.0
> | =C2=A0 | =C2=A0 FPGA git hash: d5c2750.clean
> | =C2=A0 |
> | =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, gpsdo, sfp0
> | =C2=A0 | =C2=A0 Clock sources: external, internal, gpsdo
> | =C2=A0 | =C2=A0 Sensors: ref_locked, gps_locked, temp, fan, gps_gpgga=
,=20
> gps_sky, gps_time, gps_tpv
> | _____________________________________________________
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
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
To clarify.

You're running OAI on a PC, attached to the N310?

The N310 system image can be easily updated:

https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updat=
ing_the_files_system_by_writing_the_disk_image


--------------z0d0i8jjA2TVPOrvQ8regnNz
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 17/01/2023 06:28, mychk1 1 wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEygNraa096PUD+3D_EUzKoOW4PnxbmyxZ7O5tNqEUW3zmudfQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Hello Community, <br>
          <br>
        </div>
        <div>I using the USRP N310 with openairinterface5G code. <br>
          <br>
        </div>
        <div>recently,=C2=A0 I faced an error called updating MPM version=
. Is
          there a commend to update MPM version? <br>
          <br>
          [INFO] [MPM.main] Launching USRP/MPM, version:
          4.1.0.0-gd21735d5<br>
          [INFO] [MPM.main] Spawning RPC process...<br>
          [INFO] [MPM.PeriphManager] Device serial number: 31FD9DD<br>
          [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).<br>
          [INFO] [MPM.PeriphManager] init() called with device args
          `clock_source=3Dinternal,time_source=3Dinternal'.<br>
          [INFO] [MPM.RPCServer] RPC server ready!<br>
          [INFO] [MPM.RPCServer] Spawning watchdog task...<br>
          <span style=3D"color:rgb(255,0,0)">[ERROR] [MPMD] MPM minor
            compat number mismatch. Expected: 4.2 Actual: 4.0. Please
            update the version of MPM on your USRP device.</span><br>
          terminate called after throwing an instance of
          'uhd::runtime_error'<br>
          =C2=A0 what(): =C2=A0RuntimeError: MPM minor compat number mism=
atch.
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
mgmt_addr=3D10.237.72.103,type=3Dn3xx,product=3Dn310,serial=3D31FD9DD,fpg=
a=3DHG,claimed=3DFalse,addr=3D192.168.10.2<br>
                  [WARNING] [MPM.RPCServer] A timeout event occured!<br>
                  [INFO] [MPM.PeriphManager] init() called with device
                  args
`fpga=3DHG,mgmt_addr=3D10.237.72.103,product=3Dn310,clock_source=3Dintern=
al,time_source=3Dinternal'.<br>
                  =C2=A0
                  _____________________________________________________<b=
r>
                  =C2=A0/<br>
                  | =C2=A0 =C2=A0 =C2=A0 Device: N300-Series Device<br>
                  | =C2=A0 =C2=A0
                  _____________________________________________________<b=
r>
                  | =C2=A0 =C2=A0/<br>
                  | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: ni-n3xx-31FD9DD=
<br>
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
                  | =C2=A0 | =C2=A0 Time sources: =C2=A0internal, externa=
l, gpsdo, sfp0<br>
                  | =C2=A0 | =C2=A0 Clock sources: external, internal, gp=
sdo<br>
                  | =C2=A0 | =C2=A0 Sensors: ref_locked, gps_locked, temp=
, fan,
                  gps_gpgga, gps_sky, gps_time, gps_tpv<br>
                  | =C2=A0 =C2=A0
                  _____________________________________________________</=
div>
                <div><br>
                </div>
                <div><br>
                </div>
                <div><br>
                </div>
                <div>- The UHD version SD-card attached with the USRP <br=
>
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
    To clarify.<br>
    <br>
    You're running OAI on a PC, attached to the N310?<br>
    <br>
    The N310 system image can be easily updated:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_N300=
/N310/N320/N321_Getting_Started_Guide#Updating_the_files_system_by_writin=
g_the_disk_image">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_S=
tarted_Guide#Updating_the_files_system_by_writing_the_disk_image</a><br>
    <br>
    <br>
  </body>
</html>

--------------z0d0i8jjA2TVPOrvQ8regnNz--

--===============4880993379609530272==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4880993379609530272==--
