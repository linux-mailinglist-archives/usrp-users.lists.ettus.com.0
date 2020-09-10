Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C01A82648E8
	for <lists+usrp-users@lfdr.de>; Thu, 10 Sep 2020 17:38:21 +0200 (CEST)
Received: from [::1] (port=44014 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGOeQ-0006lN-SN; Thu, 10 Sep 2020 11:38:18 -0400
Received: from mail-qv1-f44.google.com ([209.85.219.44]:41800)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kGOeM-0006bU-Jk
 for usrp-users@lists.ettus.com; Thu, 10 Sep 2020 11:38:14 -0400
Received: by mail-qv1-f44.google.com with SMTP id ef16so3534718qvb.8
 for <usrp-users@lists.ettus.com>; Thu, 10 Sep 2020 08:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=x6TXh1lA03mkYQwW/8YgXzyn8dkbJ9juCZQZhAl92kc=;
 b=pBgwheK6VdHIoVp/48disIDriENPetDQGMTuNtT0JFYFZEK4Y9AAjX//C/2t9ThsiP
 d6/8hwqPl4Lb4+rzCSWrIuN55ZR3W89kIhjj93+lCWMePN2DlptY1IFnLhExYZUfnLR2
 gyZSVk6uSacfCI+fNQkgc9MEE1IjwTtIeiV/murYk7OItRxJP1YXCv1QKlHaRelrwXve
 wWq0G3HAuKn4XxdtOGpXbn/Qa2GpDQKh83jUq++0PCFsFTfASoMwi38LQAOtz9xevjHU
 fOCZQWp/27l1RUKY9EDDUdf8FtlWmBfMRR5hcW0NxK/l+WmTB6mryUhY5SBiAzp+ILkp
 eyyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=x6TXh1lA03mkYQwW/8YgXzyn8dkbJ9juCZQZhAl92kc=;
 b=jATMNPgJ/swv3U7pRcW/ysi2+YYrdRM2q2Hcr7kav244Qf5pUVvsWtQPvxYfj7rQFX
 VKxC3dWXUYFdWvFZL//222j0Fz5AyaKY0zIcuGz06LH0M0G5Tmtysw5HN4mHmnKTvwtZ
 lZLMb+TgBE39uFFycpcK76GTRspgmw1eLJ1zUjIQRe87pd1Xyoj+o6nd9vUuAS1XjDlo
 hzGL+xysj2oM3dvVB/NTOSaUk/67utpYTfC/TnF/wcuw7ph+r3ud69MqbjC2jdp1JucM
 MEmwhfkQodV8mhab2vgyDQk3dSa1DcjCynIeN+A8/jUUYwhgiu7mZjtMDMbVCmloTiXv
 MCGw==
X-Gm-Message-State: AOAM533LcAbqS0ogGGQGxPMXetTvibd+vEq4LtOt6zH1j2IeT1xDmzO2
 kwix0boGn/WECkFS/GUYT1FVpOvGFU8FAg==
X-Google-Smtp-Source: ABdhPJwCcuYL9Fs89iadjYTrQhZk4tilhJG93+/8PeWpBSpiJ/sI467K9gC7G9bMXNby5dTs/FCnQg==
X-Received: by 2002:ad4:56a4:: with SMTP id bd4mr9243520qvb.45.1599752253802; 
 Thu, 10 Sep 2020 08:37:33 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id n11sm2686512qkk.105.2020.09.10.08.37.33
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Sep 2020 08:37:33 -0700 (PDT)
Message-ID: <5F5A483C.8010506@gmail.com>
Date: Thu, 10 Sep 2020 11:37:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CACryqrHQEgaTdm=ECtc2rAT7Bh8uuhMg9ar1H-km22wzWtiCzA@mail.gmail.com>
In-Reply-To: <CACryqrHQEgaTdm=ECtc2rAT7Bh8uuhMg9ar1H-km22wzWtiCzA@mail.gmail.com>
Subject: Re: [USRP-users] UHD query gpsdo sensor command
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============5999386466317453429=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--===============5999386466317453429==
Content-Type: multipart/alternative;
 boundary="------------070504030509060204050600"

This is a multi-part message in MIME format.
--------------070504030509060204050600
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/10/2020 10:12 AM, Xiang Ma via USRP-users wrote:
> Hi,
>
>    I am using the /usr/local/lib/uhd/utils/query_gpsdo_sensors to get 
> gps information, but it shows: /Waiting for the GPSDO to warm 
> up...........
> No response from GPSDO in 30 seconds/
> /
> /
> This is the whole information:
>
> /hu@hu:~$ /usr/local/lib/uhd/utils/query_gpsdo_sensors
>
> Creating the USRP device with: ...
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; 
> UHD_3.15.0.HEAD-0-gaea0e2de
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 
> 0xF1F0D00000000000)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1304 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
> Using Device: Single USRP:
>   Device: X-Series Device
>   Mboard 0: X310
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: UBX RX
>   RX Channel: 1
>     RX DSP: 0
>     RX Dboard: B
>     RX Subdev: UBX RX
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: UBX TX
>   TX Channel: 1
>     TX DSP: 0
>     TX Dboard: B
>     TX Subdev: UBX TX
>
> Setting the reference clock source to "gpsdo"...
> Clock source is now gpsdo
> Setting the reference clock source to "gpsdo"...
> Time source is now gpsdo
> Waiting for ref_locked...USRP Locked to Reference.
> **************************************Helpful Notes on Clock/PPS 
> Selection**************************************
> As you can see, the default 10 MHz Reference and 1 PPS signals are now 
> from the GPSDO.
> If you would like to use the internal reference(TCXO) in other 
> applications, you must configure that explicitly.
> ****************************************************************************************************************
> Waiting for the GPSDO to warm up...........
> No response from GPSDO in 30 seconds/
> /
> /
> I do plug the GPSDO to the board, and I plug the 5V active GPS antenna 
> in the `GPS ANT` connector at the rear panel. But I am not sure why. I 
> just want to get the location information. (btw, is it because I am in 
> the indoor area?)
>
> Thanks,
>
> Xiang Ma
>
> -- 
> /*Xiang Ma, */Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com <mailto:congshanya@gmail.com>
>
>
I would re-check the GPSDO installation.  You may have bent one of the 
pins when you installed it.

Also, it won't be able to get a "fix" unless the antenna can "see" the 
sky.  Most buildings are not that transparent at 1575MHz.




--------------070504030509060204050600
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/10/2020 10:12 AM, Xiang Ma via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CACryqrHQEgaTdm=ECtc2rAT7Bh8uuhMg9ar1H-km22wzWtiCzA@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi,
        <div><br>
        </div>
        <div>   I am using the
          /usr/local/lib/uhd/utils/query_gpsdo_sensors to get gps
          information, but it shows: <i>Waiting for the GPSDO to warm
            up...........<br>
            No response from GPSDO in 30 seconds</i></div>
        <div><i><br>
          </i></div>
        <div>This is the whole information:</div>
        <div><br>
        </div>
        <div>
          <div><i>hu@hu:~$ /usr/local/lib/uhd/utils/query_gpsdo_sensors<br>
              <br>
              Creating the USRP device with: ...<br>
              [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
              UHD_3.15.0.HEAD-0-gaea0e2de<br>
              [INFO] [X300] X300 initialization sequence...<br>
              [INFO] [X300] Maximum frame size: 1472 bytes.<br>
              [INFO] [X300] Radio 1x clock: 200 MHz<br>
              [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev
              0.929b<br>
              [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
              0xF1F0D00000000000)<br>
              [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1304 MB/s)<br>
              [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)<br>
              [INFO] [0/Radio_0] Initializing block control (NOC ID:
              0x12AD100000000001)<br>
              [INFO] [0/Radio_1] Initializing block control (NOC ID:
              0x12AD100000000001)<br>
              [INFO] [0/DDC_0] Initializing block control (NOC ID:
              0xDDC0000000000000)<br>
              [INFO] [0/DDC_1] Initializing block control (NOC ID:
              0xDDC0000000000000)<br>
              [INFO] [0/DUC_0] Initializing block control (NOC ID:
              0xD0C0000000000000)<br>
              [INFO] [0/DUC_1] Initializing block control (NOC ID:
              0xD0C0000000000000)<br>
              Using Device: Single USRP:<br>
                Device: X-Series Device<br>
                Mboard 0: X310<br>
                RX Channel: 0<br>
                  RX DSP: 0<br>
                  RX Dboard: A<br>
                  RX Subdev: UBX RX<br>
                RX Channel: 1<br>
                  RX DSP: 0<br>
                  RX Dboard: B<br>
                  RX Subdev: UBX RX<br>
                TX Channel: 0<br>
                  TX DSP: 0<br>
                  TX Dboard: A<br>
                  TX Subdev: UBX TX<br>
                TX Channel: 1<br>
                  TX DSP: 0<br>
                  TX Dboard: B<br>
                  TX Subdev: UBX TX<br>
              <br>
              Setting the reference clock source to "gpsdo"...<br>
              Clock source is now gpsdo<br>
              Setting the reference clock source to "gpsdo"...<br>
              Time source is now gpsdo<br>
              Waiting for ref_locked...USRP Locked to Reference.<br>
              **************************************Helpful Notes on
              Clock/PPS Selection**************************************<br>
              As you can see, the default 10 MHz Reference and 1 PPS
              signals are now from the GPSDO.<br>
              If you would like to use the internal reference(TCXO) in
              other applications, you must configure that explicitly.<br>
****************************************************************************************************************<br>
              Waiting for the GPSDO to warm up...........<br>
              No response from GPSDO in 30 seconds</i></div>
          <div><i><br>
            </i></div>
          <div>I do plug the GPSDO to the board, and I plug the 5V
            active GPS antenna in the `GPS ANT` connector at the rear
            panel. But I am not sure why. I just want to get the
            location information. (btw, is it because I am in the indoor
            area?)</div>
          <div><br>
          </div>
          <div>Thanks,</div>
          <div><br>
          </div>
          <div>Xiang Ma</div>
        </div>
        <div><br>
        </div>
        -- <br>
        <div dir="ltr" class="gmail_signature"
          data-smartmail="gmail_signature">
          <div dir="ltr"><font style="color:rgb(136,136,136)"
              face="times new roman, serif" size="4"><i><b>Xiang Ma, </b></i></font><span
              style="color:rgb(136,136,136)">Ph.D. Student</span>
            <div>
              <div style="color:rgb(136,136,136)"><font color="#444444">College
                  of Engineering</font></div>
              <div><font color="#444444">Utah State University</font></div>
              <div style="color:rgb(136,136,136)"><font color="#444444">E-mail:<a
                    moz-do-not-send="true"
                    href="mailto:congshanya@gmail.com"
                    style="color:rgb(17,85,204)" target="_blank">marxwolfs@gmail.com</a></font></div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <br>
    </blockquote>
    I would re-check the GPSDO installation.  You may have bent one of
    the pins when you installed it.<br>
    <br>
    Also, it won't be able to get a "fix" unless the antenna can "see"
    the sky.  Most buildings are not that transparent at 1575MHz.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------070504030509060204050600--


--===============5999386466317453429==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5999386466317453429==--

