Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF874A6470
	for <lists+usrp-users@lfdr.de>; Tue,  1 Feb 2022 20:01:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E0105384E2E
	for <lists+usrp-users@lfdr.de>; Tue,  1 Feb 2022 14:01:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VZg7IEc7";
	dkim-atps=neutral
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id C6F7B3852B1
	for <usrp-users@lists.ettus.com>; Tue,  1 Feb 2022 13:59:55 -0500 (EST)
Received: by mail-qk1-f171.google.com with SMTP id m25so15066808qka.9
        for <usrp-users@lists.ettus.com>; Tue, 01 Feb 2022 10:59:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=4h+Yamxq42Ioz89BlBW33uTVMHO91PkGYt4j2EAQZOg=;
        b=VZg7IEc7PqILFwWuGqIpq7ZFaim0bJmbyzkfRXWlQCMvyRhanZjiiy8CpPZrLUOBAc
         J3zPlkxi19k8WH/mytjknDwqb7BaY/EsvAglsGziqhNsvQacJYGbOIFuaziTnQjCAxcZ
         P9qMuyZ4BygiM1nizXoYEfvaKElYCKByKXDpcoBZpZ22aZtI3AbO2+0VV4OddA19lCYH
         5hy4iaC1Q7ixQzHDnYfqHVfWUeie+tAF1voiE/mt0gyy/be8u0C+iSjcl+zZO2JLuhfV
         iugm4MhrPdkkCKzJve2qDP+G4Hj3HhZVC6cCRAnypNrrCZzC4bhb8Xn686ToaUzvjTYB
         H1Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=4h+Yamxq42Ioz89BlBW33uTVMHO91PkGYt4j2EAQZOg=;
        b=yLe7QEVzm1SDJoJwnuWSkeCK7Gh5frnv1lfIfbKA/gB5uETlLljtW7BrX228J3JfBs
         KTZ3xFv/p/WLQTkkQP5YgO47ry8shLqJBVo9FS1oztpuNQp8f6SbBNDn10LgYH8tP30C
         Ad8EbjDmqsX7nihf1/x5S/QJkHOaAAoU4Lro8zIgXsugY743hQrqmLhKb8ooMPMYZqu9
         2vE9ar9Bdv5gadejruGrQLVH1eA8DZlb1sQI/xBcAUN3rvouQzr7FKg+PKUXFjHfi+cA
         f541CaBkybMI1aEZo6urthC5YYCfk2QZkqph4uJBymNhfvNY5hYc4zxqn1nn/CxfSyq4
         ICQg==
X-Gm-Message-State: AOAM53283OQBrof1CK7l4J8YbzA9NbWEUxoqrJldbnVPdgZi4yiBbhyA
	H+3CJKM9RBql6740N2XJcwpi0kBLzW35xw==
X-Google-Smtp-Source: ABdhPJyJCOh+AxnQppzYRKdYBfipYyEA7pUQqUlkEF/dDak7ZMqITQBbplFi8oNOit/m9yixk3lm2A==
X-Received: by 2002:ae9:e50d:: with SMTP id w13mr17433424qkf.404.1643741995008;
        Tue, 01 Feb 2022 10:59:55 -0800 (PST)
Received: from [192.168.2.216] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id w3sm11044016qta.13.2022.02.01.10.59.54
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Feb 2022 10:59:54 -0800 (PST)
Message-ID: <fe43546f-cde5-f442-0d76-1967bc5dfebc@gmail.com>
Date: Tue, 1 Feb 2022 13:59:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
Message-ID-Hash: 7SWA5BJK2TEXUR3QLESPLAZ5VVVWWLJK
X-Message-ID-Hash: 7SWA5BJK2TEXUR3QLESPLAZ5VVVWWLJK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7SWA5BJK2TEXUR3QLESPLAZ5VVVWWLJK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4419011872794633527=="

This is a multi-part message in MIME format.
--===============4419011872794633527==
Content-Type: multipart/alternative;
 boundary="------------c3DTD0HLWfm170AxvihhM00U"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------c3DTD0HLWfm170AxvihhM00U
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-01 13:55, Jim Palladino wrote:
> Hello,
>
> I've been trying to get an app working with timed commands for an E320=20
> or N320 using UHD 4.1. It seems that all commands are processed=20
> immediately, not at the time I tell them to. Setting the time to start=20
> RX streaming does seem to work fine, but that is a time_spec passed to=20
> the streaming function -- not a "timed command".
>
> If, on the other hand, I use timed commands to set a series of RX=20
> frequency tunes in the future -- to retune says every 100ms -- that=20
> isn't working. All retunes get processed immediately, one after=20
> another, with no 100ms gap in between. I would post the code I'm using=20
> here, but I went ahead and ran the UHD-included "test_timed_commands"=20
> example on both the E320 and N320. The example application does not=20
> seem to work right on either device and exhibits the same behaviour=20
> I'm seeing with my code. You can see from the results below, that=20
> instead of a 100ms gap between get_time_now() calls, as the example=20
> app is setup to do, the calls to get_time_now() return immediately.
>
> Here is the output of "test_timed_commands" on the N320. The code is=20
> unmodified from the provided example source:
> --------------------------------
> $ ./test_timed_commands
>
> Creating the usrp device with: ...
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;=20
> UHD_4.1.0.4-0-g25d617ca
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D192.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,fp=
ga=3DXG,claimed=3DFalse,addr=3D192.168.40.2
> [INFO] [MPM.PeriphManager] init() called with device args=20
> `fpga=3DXG,mgmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dexter=
nal,time_source=3Dexternal'.
> [INFO] [MPM.Rhodium-0] init() called with args=20
> `fpga=3DXG,mgmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dexter=
nal,time_source=3Dexternal'
> [INFO] [MPM.Rhodium-1] init() called with args=20
> `fpga=3DXG,mgmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dexter=
nal,time_source=3Dexternal'
> Using Device: Single USRP:
> =C2=A0 Device: N300-Series Device
> =C2=A0 Mboard 0: n320
> =C2=A0 RX Channel: 0
> =C2=A0 =C2=A0 RX DSP: 0
> =C2=A0 =C2=A0 RX Dboard: A
> =C2=A0 =C2=A0 RX Subdev: Rhodium
> =C2=A0 RX Channel: 1
> =C2=A0 =C2=A0 RX DSP: 1
> =C2=A0 =C2=A0 RX Dboard: B
> =C2=A0 =C2=A0 RX Subdev: Rhodium
> =C2=A0 TX Channel: 0
> =C2=A0 =C2=A0 TX DSP: 0
> =C2=A0 =C2=A0 TX Dboard: A
> =C2=A0 =C2=A0 TX Subdev: Rhodium
> =C2=A0 TX Channel: 1
> =C2=A0 =C2=A0 TX DSP: 1
> =C2=A0 =C2=A0 TX Dboard: B
> =C2=A0 =C2=A0 TX Subdev: Rhodium
>
>
> Testing support for timed commands on this hardware... pass
>
> Perform fast readback of registers:
> =C2=A0Difference between paired reads: 2016.288086 us
>
> Testing control timed command:
> =C2=A0Span =C2=A0 =C2=A0 =C2=A0: 100000.000000 us
> =C2=A0Now =C2=A0 =C2=A0 =C2=A0 : 416299.532064 us
> =C2=A0Response 1: 418303.910319 us
> =C2=A0Response 2: 420352.290853 us
> =C2=A0Difference of response time 1: -97995.621745 us
> =C2=A0Difference of response time 2: -195947.241211 us
> =C2=A0Difference between actual and expected time delta: -97951.619466 =
us
>
> About to start streaming using timed command:
> =C2=A0Received packet: 100 samples, 0 full secs, 0.524535 frac secs
> =C2=A0Stream time was: 0 full secs, 0.524535 frac secs
> =C2=A0Difference between stream time and first packet: 0.000000 us
>
> Done!
> ---------------------------------------------------
>
> Any thoughts on this would be appreciated, as timed commands are=20
> important to the application we are developing.
>
> Thanks,
> Jim
>
>
>
How are you setting device time at startup?


--------------c3DTD0HLWfm170AxvihhM00U
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-01 13:55, Jim Palladino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hello,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I've been trying to get an app working with timed commands for
        an E320 or N320 using UHD 4.1. It seems that all commands are
        processed immediately, not at the time I tell them to. Setting
        the time to start RX streaming does seem to work fine, but that
        is a time_spec passed to the streaming function -- not a "timed
        command".=C2=A0</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        If, on the other hand, I use timed commands to set a series of
        RX frequency tunes in the future -- to retune says every 100ms
        -- that isn't working. All retunes get processed immediately,
        one after another, with no 100ms gap in between. I would post
        the code I'm using here, but I went ahead and ran the
        UHD-included "test_timed_commands" example on both the E320 and
        N320. The example application does not seem to work right on
        either device and exhibits the same behaviour I'm seeing with my
        code. You can see from the results below, that instead of a
        100ms gap between get_time_now() calls, as the example app is
        setup to do, the calls to get_time_now() return immediately.</div=
>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Here is the output of "test_timed_commands" on the N320. The
        code is unmodified from the provided example source:<br>
        --------------------------------</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
      </div>
      $ ./test_timed_commands
      <div><br>
      </div>
      <div>Creating the usrp device with: ...</div>
      <div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
        UHD_4.1.0.4-0-g25d617ca</div>
      <div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=3D192.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,fpga=
=3DXG,claimed=3DFalse,addr=3D192.168.40.2</div>
      <div>[INFO] [MPM.PeriphManager] init() called with device args
`fpga=3DXG,mgmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dexterna=
l,time_source=3Dexternal'.</div>
      <div>[INFO] [MPM.Rhodium-0] init() called with args
`fpga=3DXG,mgmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dexterna=
l,time_source=3Dexternal'</div>
      <div>[INFO] [MPM.Rhodium-1] init() called with args
`fpga=3DXG,mgmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dexterna=
l,time_source=3Dexternal'</div>
      <div>Using Device: Single USRP:</div>
      <div>=C2=A0 Device: N300-Series Device</div>
      <div>=C2=A0 Mboard 0: n320</div>
      <div>=C2=A0 RX Channel: 0</div>
      <div>=C2=A0 =C2=A0 RX DSP: 0</div>
      <div>=C2=A0 =C2=A0 RX Dboard: A</div>
      <div>=C2=A0 =C2=A0 RX Subdev: Rhodium</div>
      <div>=C2=A0 RX Channel: 1</div>
      <div>=C2=A0 =C2=A0 RX DSP: 1</div>
      <div>=C2=A0 =C2=A0 RX Dboard: B</div>
      <div>=C2=A0 =C2=A0 RX Subdev: Rhodium</div>
      <div>=C2=A0 TX Channel: 0</div>
      <div>=C2=A0 =C2=A0 TX DSP: 0</div>
      <div>=C2=A0 =C2=A0 TX Dboard: A</div>
      <div>=C2=A0 =C2=A0 TX Subdev: Rhodium</div>
      <div>=C2=A0 TX Channel: 1</div>
      <div>=C2=A0 =C2=A0 TX DSP: 1</div>
      <div>=C2=A0 =C2=A0 TX Dboard: B</div>
      <div>=C2=A0 =C2=A0 TX Subdev: Rhodium</div>
      <div><br>
      </div>
      <div><br>
      </div>
      <div>Testing support for timed commands on this hardware... pass</d=
iv>
      <div><br>
      </div>
      <div>Perform fast readback of registers:</div>
      <div>=C2=A0Difference between paired reads: 2016.288086 us</div>
      <div><br>
      </div>
      <div>Testing control timed command:</div>
      <div>=C2=A0Span =C2=A0 =C2=A0 =C2=A0: 100000.000000 us</div>
      <div>=C2=A0Now =C2=A0 =C2=A0 =C2=A0 : 416299.532064 us</div>
      <div>=C2=A0Response 1: 418303.910319 us</div>
      <div>=C2=A0Response 2: 420352.290853 us</div>
      <div>=C2=A0Difference of response time 1: -97995.621745 us</div>
      <div>=C2=A0Difference of response time 2: -195947.241211 us</div>
      <div>=C2=A0Difference between actual and expected time delta:
        -97951.619466 us</div>
      <div><br>
      </div>
      <div>About to start streaming using timed command:</div>
      <div>=C2=A0Received packet: 100 samples, 0 full secs, 0.524535 frac
        secs</div>
      <div>=C2=A0Stream time was: 0 full secs, 0.524535 frac secs</div>
      <div>=C2=A0Difference between stream time and first packet: 0.00000=
0 us</div>
      <div><br>
      </div>
      <div><span>Done!</span></div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <span>---------------------------------------------------</span><=
/div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <span><br>
        </span></div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Any thoughts on this would be appreciated, as timed commands are
        important to the application we are developing.</div>
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
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <br>
    </blockquote>
    How are you setting device time at startup?<br>
    <br>
    <br>
  </body>
</html>

--------------c3DTD0HLWfm170AxvihhM00U--

--===============4419011872794633527==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4419011872794633527==--
