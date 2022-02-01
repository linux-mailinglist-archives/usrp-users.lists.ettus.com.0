Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F694A64BF
	for <lists+usrp-users@lfdr.de>; Tue,  1 Feb 2022 20:14:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8B7AE3853E6
	for <lists+usrp-users@lfdr.de>; Tue,  1 Feb 2022 14:14:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="X6AED2le";
	dkim-atps=neutral
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id B0A353853E6
	for <usrp-users@lists.ettus.com>; Tue,  1 Feb 2022 14:13:43 -0500 (EST)
Received: by mail-qk1-f181.google.com with SMTP id g145so16055683qke.3
        for <usrp-users@lists.ettus.com>; Tue, 01 Feb 2022 11:13:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=geY1yzlRl9Bk22p7lRLB/kWkbCKTBABtkMsAAAdwE4g=;
        b=X6AED2leEFKJMeuacvDcsjILPByC9uZHb5USP/eP+9EDcWkKU0OTZ63uK8OZ68ZGk6
         S1G+wSVS35/mi9nUXl22vndmRwN3uf1st4/Xdfm50GsCKfe47f3JgXAPx5xoSI9KBaPW
         D3pv3Zua8zzg75mxA3SXA4Z6zREShRM3BH6H3HUkt+hXU68QZWamBk6U0orYDlL2yNur
         5yD/XBWTGeNt9Y0xNHIqV7fv0Ri7cg8bpg+LbnLLFcAIjK4WRDU976bC5Uy8NRU1nLwV
         f7LjEl9p5V0HgjYxx8cG8DmMZu50LOBO/yeRXAPmq0xbYr3R66U6NzLmXFChpJDVYrKX
         wSBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=geY1yzlRl9Bk22p7lRLB/kWkbCKTBABtkMsAAAdwE4g=;
        b=Rfnd5V/qliOVWhk/9NDB2Lb3UBWG4zQxF7JEDyG9dnGOMWD8HrACfvXk2neVy3S5bh
         DU0TQa0Y6AhZakm3orfBdWVEr+OJx8zhdgLmJEP5SzVsVp8I99b0YemlTIl+bXe4Pl4f
         V30P5XNgerSANb5gcosymZNqVhI7Om18qsOKR5/CA5WNaJxGki51hkEff+l0bc6lLxcF
         Y400lTNR93IM5mICFQPozjwl4ried/KWOPVNXtlScEOOZAVxiP1E7Cbe2rNu0aD1VUEA
         Y3zhkbz7/gmOevOo6UdP79nbtwJywy3p9i3kderSvDdpewd1ZzOmJiwXGYTTLG8mRZG9
         0h5A==
X-Gm-Message-State: AOAM531ofY69gNwURAj590u5P2CAkkL9/hkn+kpcTEUv4S3NV5cYyMh0
	roHmbZslWyfpBbHVPslFvpydluLH8kadIg==
X-Google-Smtp-Source: ABdhPJw3dadwshi5GVi+x8jpbQd7KJmh20GvsIotaumvCW9hA+fPXEW1IC/L7OBafvflAMDXQv8xQA==
X-Received: by 2002:a37:a04c:: with SMTP id j73mr18125658qke.65.1643742823181;
        Tue, 01 Feb 2022 11:13:43 -0800 (PST)
Received: from [192.168.2.216] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id t11sm9024080qkp.54.2022.02.01.11.13.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Feb 2022 11:13:42 -0800 (PST)
Message-ID: <4acbc3b9-354e-1a85-5758-fccf65b17835@gmail.com>
Date: Tue, 1 Feb 2022 14:13:41 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Jim Palladino <jim@gardettoengineering.com>,
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <fe43546f-cde5-f442-0d76-1967bc5dfebc@gmail.com>
 <MN2PR12MB33129A29C695F7A0ABC8BB6EB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR12MB33129A29C695F7A0ABC8BB6EB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
Message-ID-Hash: ILL3ZZA45LS5JB5J6SA44MNJBTVZOSUU
X-Message-ID-Hash: ILL3ZZA45LS5JB5J6SA44MNJBTVZOSUU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ILL3ZZA45LS5JB5J6SA44MNJBTVZOSUU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6475669899051881358=="

This is a multi-part message in MIME format.
--===============6475669899051881358==
Content-Type: multipart/alternative;
 boundary="------------xMNkC99SmZPEGv4BwQR47hS0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------xMNkC99SmZPEGv4BwQR47hS0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-01 14:10, Jim Palladino wrote:
> Hi Marcus,
>
> In the app I'm writing, for now I'm just setting the time to '0.0'=20
> after startup, like:
> =C2=A0 =C2=A0usrp->set_time_now(uhd::time_spec_t(0.0));
That may be part of your problem--that may produce two separate=20
transactions for the radio timestamp registers.

Use set_time_unknown_pps() instead, and see if this changes things.

Also, make sure you're setting master_clock_rate=C2=A0 in the device argu=
ments.


>
> For the "test_timed_commands.cpp" test app, I'm just executing what is=20
> here:
> https://github.com/EttusResearch/uhd/blob/UHD-4.1/host/examples/test_ti=
med_commands.cpp
>
> It doesn't appear to matter, but my E320 is setup to use an internal=20
> reference, the N320 is external.
>
> Thanks,
> Jim
>
>
> -----------------------------------------------------------------------=
-
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Tuesday, February 1, 2022 1:59 PM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: Timed Commands Not Working
> On 2022-02-01 13:55, Jim Palladino wrote:
>> Hello,
>>
>> I've been trying to get an app working with timed commands for an=20
>> E320 or N320 using UHD 4.1. It seems that all commands are processed=20
>> immediately, not at the time I tell them to. Setting the time to=20
>> start RX streaming does seem to work fine, but that is a time_spec=20
>> passed to the streaming function -- not a "timed command".
>>
>> If, on the other hand, I use timed commands to set a series of RX=20
>> frequency tunes in the future -- to retune says every 100ms -- that=20
>> isn't working. All retunes get processed immediately, one after=20
>> another, with no 100ms gap in between. I would post the code I'm=20
>> using here, but I went ahead and ran the UHD-included=20
>> "test_timed_commands" example on both the E320 and N320. The example=20
>> application does not seem to work right on either device and exhibits=20
>> the same behaviour I'm seeing with my code. You can see from the=20
>> results below, that instead of a 100ms gap between get_time_now()=20
>> calls, as the example app is setup to do, the calls to get_time_now()=20
>> return immediately.
>>
>> Here is the output of "test_timed_commands" on the N320. The code is=20
>> unmodified from the provided example source:
>> --------------------------------
>> $ ./test_timed_commands
>>
>> Creating the usrp device with: ...
>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;=20
>> UHD_4.1.0.4-0-g25d617ca
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
>> mgmt_addr=3D192.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,f=
pga=3DXG,claimed=3DFalse,addr=3D192.168.40.2
>> [INFO] [MPM.PeriphManager] init() called with device args=20
>> `fpga=3DXG,mgmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dexte=
rnal,time_source=3Dexternal'.
>> [INFO] [MPM.Rhodium-0] init() called with args=20
>> `fpga=3DXG,mgmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dexte=
rnal,time_source=3Dexternal'
>> [INFO] [MPM.Rhodium-1] init() called with args=20
>> `fpga=3DXG,mgmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dexte=
rnal,time_source=3Dexternal'
>> Using Device: Single USRP:
>> =C2=A0 Device: N300-Series Device
>> =C2=A0 Mboard 0: n320
>> =C2=A0 RX Channel: 0
>> =C2=A0 =C2=A0 RX DSP: 0
>> =C2=A0 =C2=A0 RX Dboard: A
>> =C2=A0 =C2=A0 RX Subdev: Rhodium
>> =C2=A0 RX Channel: 1
>> =C2=A0 =C2=A0 RX DSP: 1
>> =C2=A0 =C2=A0 RX Dboard: B
>> =C2=A0 =C2=A0 RX Subdev: Rhodium
>> =C2=A0 TX Channel: 0
>> =C2=A0 =C2=A0 TX DSP: 0
>> =C2=A0 =C2=A0 TX Dboard: A
>> =C2=A0 =C2=A0 TX Subdev: Rhodium
>> =C2=A0 TX Channel: 1
>> =C2=A0 =C2=A0 TX DSP: 1
>> =C2=A0 =C2=A0 TX Dboard: B
>> =C2=A0 =C2=A0 TX Subdev: Rhodium
>>
>>
>> Testing support for timed commands on this hardware... pass
>>
>> Perform fast readback of registers:
>> =C2=A0Difference between paired reads: 2016.288086 us
>>
>> Testing control timed command:
>> =C2=A0Span =C2=A0 =C2=A0 =C2=A0: 100000.000000 us
>> =C2=A0Now =C2=A0 =C2=A0 =C2=A0 : 416299.532064 us
>> =C2=A0Response 1: 418303.910319 us
>> =C2=A0Response 2: 420352.290853 us
>> =C2=A0Difference of response time 1: -97995.621745 us
>> =C2=A0Difference of response time 2: -195947.241211 us
>> =C2=A0Difference between actual and expected time delta: -97951.619466=
 us
>>
>> About to start streaming using timed command:
>> =C2=A0Received packet: 100 samples, 0 full secs, 0.524535 frac secs
>> =C2=A0Stream time was: 0 full secs, 0.524535 frac secs
>> =C2=A0Difference between stream time and first packet: 0.000000 us
>>
>> Done!
>> ---------------------------------------------------
>>
>> Any thoughts on this would be appreciated, as timed commands are=20
>> important to the application we are developing.
>>
>> Thanks,
>> Jim
>>
>>
>>
> How are you setting device time at startup?
>
>

--------------xMNkC99SmZPEGv4BwQR47hS0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-01 14:10, Jim Palladino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB33129A29C695F7A0ABC8BB6EB8269@MN2PR12MB3312.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hi Marcus,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        In the app I'm writing, for now I'm just setting the time to
        '0.0' after startup, like:</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        =C2=A0 =C2=A0usrp-&gt;set_time_now(uhd::time_spec_t(0.0));<br>
      </div>
    </blockquote>
    That may be part of your problem--that may produce two separate
    transactions for the radio timestamp registers.<br>
    <br>
    Use set_time_unknown_pps() instead, and see if this changes things.<b=
r>
    <br>
    Also, make sure you're setting master_clock_rate=C2=A0 in the device
    arguments.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB33129A29C695F7A0ABC8BB6EB8269@MN2PR12MB3312.namprd12=
.prod.outlook.com">
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        For the "test_timed_commands.cpp" test app, I'm just executing
        what is here:</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <a
href=3D"https://github.com/EttusResearch/uhd/blob/UHD-4.1/host/examples/t=
est_timed_commands.cpp"
          id=3D"LPNoLPOWALinkPreview" moz-do-not-send=3D"true"
          class=3D"moz-txt-link-freetext">https://github.com/EttusResearc=
h/uhd/blob/UHD-4.1/host/examples/test_timed_commands.cpp</a><br>
        <br>
        It doesn't appear to matter, but my E320 is setup to use an
        internal reference, the N320 is external.</div>
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
        <br>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Mar=
cus
          D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patc=
hvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Tuesday, February 1, 2022 1:59 PM<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> [USRP-users] Re: Timed Commands Not Working</fo=
nt>
        <div>=C2=A0</div>
      </div>
      <div>
        <div class=3D"x_moz-cite-prefix">On 2022-02-01 13:55, Jim
          Palladino wrote:<br>
        </div>
        <blockquote type=3D"cite">
          <style type=3D"text/css" style=3D"display:none">p
	{margin-top:0;
	margin-bottom:0}</style>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Hello,</div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            I've been trying to get an app working with timed commands
            for an E320 or N320 using UHD 4.1. It seems that all
            commands are processed immediately, not at the time I tell
            them to. Setting the time to start RX streaming does seem to
            work fine, but that is a time_spec passed to the streaming
            function -- not a "timed command".=C2=A0</div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            If, on the other hand, I use timed commands to set a series
            of RX frequency tunes in the future -- to retune says every
            100ms -- that isn't working. All retunes get processed
            immediately, one after another, with no 100ms gap in
            between. I would post the code I'm using here, but I went
            ahead and ran the UHD-included "test_timed_commands" example
            on both the E320 and N320. The example application does not
            seem to work right on either device and exhibits the same
            behaviour I'm seeing with my code. You can see from the
            results below, that instead of a 100ms gap between
            get_time_now() calls, as the example app is setup to do, the
            calls to get_time_now() return immediately.</div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Here is the output of "test_timed_commands" on the N320. The
            code is unmodified from the provided example source:<br>
            --------------------------------</div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
          </div>
          $ ./test_timed_commands
          <div><br>
          </div>
          <div>Creating the usrp device with: ...</div>
          <div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
            UHD_4.1.0.4-0-g25d617ca</div>
          <div>[INFO] [MPMD] Initializing 1 device(s) in parallel with
            args:
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
          <div>Testing support for timed commands on this hardware...
            pass</div>
          <div><br>
          </div>
          <div>Perform fast readback of registers:</div>
          <div>=C2=A0Difference between paired reads: 2016.288086 us</div=
>
          <div><br>
          </div>
          <div>Testing control timed command:</div>
          <div>=C2=A0Span =C2=A0 =C2=A0 =C2=A0: 100000.000000 us</div>
          <div>=C2=A0Now =C2=A0 =C2=A0 =C2=A0 : 416299.532064 us</div>
          <div>=C2=A0Response 1: 418303.910319 us</div>
          <div>=C2=A0Response 2: 420352.290853 us</div>
          <div>=C2=A0Difference of response time 1: -97995.621745 us</div=
>
          <div>=C2=A0Difference of response time 2: -195947.241211 us</di=
v>
          <div>=C2=A0Difference between actual and expected time delta:
            -97951.619466 us</div>
          <div><br>
          </div>
          <div>About to start streaming using timed command:</div>
          <div>=C2=A0Received packet: 100 samples, 0 full secs, 0.524535 =
frac
            secs</div>
          <div>=C2=A0Stream time was: 0 full secs, 0.524535 frac secs</di=
v>
          <div>=C2=A0Difference between stream time and first packet:
            0.000000 us</div>
          <div><br>
          </div>
          <div><span>Done!</span></div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <span>---------------------------------------------------</sp=
an></div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <span><br>
            </span></div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
          </div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Any thoughts on this would be appreciated, as timed commands
            are important to the application we are developing.</div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Thanks,</div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            Jim</div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <br>
        </blockquote>
        How are you setting device time at startup?<br>
        <br>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------xMNkC99SmZPEGv4BwQR47hS0--

--===============6475669899051881358==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6475669899051881358==--
