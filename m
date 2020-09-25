Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBE0277D16
	for <lists+usrp-users@lfdr.de>; Fri, 25 Sep 2020 02:41:47 +0200 (CEST)
Received: from [::1] (port=53232 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kLbo1-0005Cf-Vf; Thu, 24 Sep 2020 20:41:45 -0400
Received: from mail-qt1-f181.google.com ([209.85.160.181]:45698)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kLbnx-00055X-UA
 for usrp-users@lists.ettus.com; Thu, 24 Sep 2020 20:41:41 -0400
Received: by mail-qt1-f181.google.com with SMTP id z2so618437qtv.12
 for <usrp-users@lists.ettus.com>; Thu, 24 Sep 2020 17:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=IgCkmWVfhxWNnyjuCXc9xEAatVd7hGFanQXsr4TtCus=;
 b=fKgOsa0dcUS/jXnpAizjpjXxmIRCnc9MMVjk67Qil9FxNOVkmVWNrjwoNJmJSChoGt
 OiMxDWLjPNZgzXry4oJ7uTRwlg9EdfwQ4IYBWskme+5s99bMk+wBVd2evRwNCd5OiA1x
 nsPM3DMC0QVQYB7UgKCaZXQG7qaI689QpWmkPlo0rZcVi4pGxyjzuO9p+qONOiwTx30W
 juu7d/skBm2yPaBHG0VEZX0x4j4S6xQHPHplo8HWJRpX5VZ1Q3kmUz6kndPGJeYoMM9z
 uxRhzeaf0KFwiF8g97zqeY2MMQ4eaZOmrrb3lrsCBE5qbf9tmeUUq997gqN75gGyKJ0W
 d60Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=IgCkmWVfhxWNnyjuCXc9xEAatVd7hGFanQXsr4TtCus=;
 b=o0TEgT2/DCOOrn/SpC3HZjtqbhJTz9vQ+L7t/efMA3Ol4ApbhRGGRctLF2kZuujK03
 1AFIcLN30SYvlh+OYZX+fcwsqeDtiRUuzcHnDUaCG/oxBi3+YwF/l+znRi6pI4TgBzix
 Kr6WhqlpcOxrKidi5R9vEsTVccWOIJu08ExAVbs2t0XCfq1BFE/cpaYiLlpKCckCgncx
 pSLV+KbjqPHCf+JdXR4ocM2Mko32w1n+B09nhdDdsYQl291DUt8ORDhxsTG0aIBvKftU
 JPcj/TrvLs6lff8o2EFbC1lTzSak4HveCB3zoXxt2tpTcjeCrQsAGDymbX9AGuPQKqkT
 N7Dw==
X-Gm-Message-State: AOAM53149ngk7eDt5mbwcJ285AOlVY+U9oDwkwcYRA9VqwvbCfCBKyvQ
 SG06PKTJMI9MwehD2w4T6fr11udacLbsaw==
X-Google-Smtp-Source: ABdhPJxq+aLWFttRE6bfryawQIgqPNa6/Rve7aefm32RoC9A4GWom/pGFz1wL69EMO1B63YRMMh2cw==
X-Received: by 2002:ac8:5205:: with SMTP id r5mr1872757qtn.371.1600994461166; 
 Thu, 24 Sep 2020 17:41:01 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id q72sm793672qka.22.2020.09.24.17.41.00
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 24 Sep 2020 17:41:00 -0700 (PDT)
Message-ID: <5F6D3C9C.5090702@gmail.com>
Date: Thu, 24 Sep 2020 20:41:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <ME2P282MB05935F7A5FEE3072C5EE0877E1360@ME2P282MB0593.AUSP282.PROD.OUTLOOK.COM>
In-Reply-To: <ME2P282MB05935F7A5FEE3072C5EE0877E1360@ME2P282MB0593.AUSP282.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] B210 PPS SYNC Issue when Both RX Chans
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
Content-Type: multipart/mixed; boundary="===============3235222238476778216=="
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
--===============3235222238476778216==
Content-Type: multipart/alternative;
 boundary="------------010506020907010506030804"

This is a multi-part message in MIME format.
--------------010506020907010506030804
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/24/2020 08:21 PM, David Merit via USRP-users wrote:
> Hi, This seems to be a bug in Capturing timed samples.. Can anyone 
> suggest ways around this?
> Im thinking of adding another 'set-time' before subsequent stream_cmds 
> , or maybe theres something else I can put in a stream cmd? can the 
> meta-data structure sent to recv() do anything useful to resolve?
> Ive already tried different buffer sizes, rates. its really unusual.
> Read below for the details.. THanks for any thoughts!. Dave M.
You should only EVER need to do 1 "set_time_unknown_pps()" call at the 
beginning of your code.  Constantly resetting the TOD register
   on the USRP may have unintended consequences.

Since my host computer is synced to NTP, I typically use that as the 
time I set in the "set_time_unknown_pps()" call, and I do it once
   per session.




>
> Since my project code is similar, To explain the BUG, Ive modified 
> ETTUS example code "rx_timed_samples", to
> - SYnc with an external 1PPS
> - retrieve and display the USRP time at start and during capture, from 
> both time-now and time_last_pps functions
>
> Setup: SIngle B210, Ubuntu 18.04, UHD_4.0.0.0-804-gb2527716
> , PPS via extern SMA port.( NOTE this is NOT the  GPSDO, which is not 
> populated )
>
> Outcome:
> - GOOD: With only one B210 channel capturing, the USRP stays aligned 
> with 1PPS
> - BAD:  With both B210 channels capturing, the USRP always time-shifts 
> from 1PPS after first buffer-fill
> ________________________________
>
> The essential additions to example code outputs are
>      t_now=usrp->get_time_now();
>      t_tmp=usrp->get_time_last_pps();
>      printf("Actual time:now %8.5f 
> :AtPPS:%8.5f\n",t_now.get_real_secs(),t_tmp.get_real_secs());
>
> Here's my code output..capture at 5MSPS, 10 secs into future.
>
> WORKS WITH ONE CHANNEL (9.99999 is same at 10.0)
> ./rx_timed_samples --channels "0" --nsamps 20000 --rate 5000000 --secs 
> 10 --sync pps
> Begin streaming 20000 samples, 10.000000 seconds in the future...
> Actual time:now  1.00254 :AtPPS: 1.00000. Commence wait.
> Actual time:now 10.00083 :AtPPS: 9.99999
> Received packet: 2040 samples, 10 full secs, 0.000008 frac secs
> Actual time:now 10.00130 :AtPPS: 9.99999
>
> FAILS WITH TWO CHANNELS
> ./rx_timed_samples --channels "0,1" --nsamps 20000 --rate 5000000 
> --secs 10 --sync pps
> Begin streaming 20000 samples, 10.000000 seconds in the future...
> Actual time:now  2.74539 :AtPPS: 2.00000. Commence wait.
> Actual time:now 10.00092 :AtPPS: 9.27090
> Received packet: 2040 samples, 10 full secs, 0.000010 frac secs
> Actual time:now 10.00166 :AtPPS: 9.27090
> Received packet: 2040 samples, 10 full secs, 0.000418 frac secs
> Actual time:now 10.00202 :AtPPS: 9.27090
>
> Heres the full output...
>
> someone@breakfast:~/uhd/host/build/examples$ ./rx_timed_samples 
> --channels "0" --nsamps 20000 --rate 5000000 --secs 10 --sync pps
> Creating the usrp device with: ...
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; 
> UHD_4.0.0.0-804-gb2527716
>
> <...snip initialization stuff...>
> Setting RX Rate: 5.000000 Msps...
> [INFO] [B200] Asking for clock rate 40.000000 MHz...
> [INFO] [B200] Actually got clock rate 40.000000 MHz.
> Actual RX Rate: 5.000000 Msps...
>
> Setting device timestamp to 0...
> [INFO] [MULTI_USRP]     1) catch time transition at pps edge
> [INFO] [MULTI_USRP]     2) set times next pps (synchronously)
>
> Begin streaming 20000 samples, 10.000000 seconds in the future...
> Actual time:now  1.00254 :AtPPS: 1.00000. Commence wait.
> Actual time:now 10.00083 :AtPPS: 9.99999
> Received packet: 2040 samples, 10 full secs, 0.000008 frac secs
> Actual time:now 10.00130 :AtPPS: 9.99999
> Received packet: 2040 samples, 10 full secs, 0.000416 frac secs
> Actual time:now 10.00164 :AtPPS: 9.99999
> Received packet: 2040 samples, 10 full secs, 0.000824 frac secs
> Actual time:now 10.00198 :AtPPS: 9.99999
> Received packet: 2040 samples, 10 full secs, 0.001232 frac secs
> Actual time:now 10.00231 :AtPPS: 9.99999
> Received packet: 2040 samples, 10 full secs, 0.001640 frac secs
> Actual time:now 10.00269 :AtPPS: 9.99999
> Received packet: 2040 samples, 10 full secs, 0.002048 frac secs
> Actual time:now 10.00308 :AtPPS: 9.99999
> Received packet: 2040 samples, 10 full secs, 0.002456 frac secs
> Actual time:now 10.00349 :AtPPS: 9.99999
> Received packet: 2040 samples, 10 full secs, 0.002864 frac secs
> Actual time:now 10.00391 :AtPPS: 9.99999
> Received packet: 2040 samples, 10 full secs, 0.003272 frac secs
> Actual time:now 10.00425 :AtPPS: 9.99999
> Received packet: 1640 samples, 10 full secs, 0.003680 frac secs
>
> Done!
>
> ______________________________________
> BAD:
> someone@breakfast:~/uhd/host/build/examples$ ./rx_timed_samples 
> --channels "0,1" --nsamps 20000 --rate 5000000 --secs 10 --sync pps
> <...snip initialization stuff...>
> Setting RX Rate: 5.000000 Msps...
> [INFO] [B200] Asking for clock rate 40.000000 MHz...
> [INFO] [B200] Actually got clock rate 40.000000 MHz.
> Actual RX Rate: 5.000000 Msps...
>
> Setting device timestamp to 0...
> [INFO] [MULTI_USRP]     1) catch time transition at pps edge
> [INFO] [MULTI_USRP]     2) set times next pps (synchronously)
> [INFO] [B200] Asking for clock rate 20.000000 MHz...
> [INFO] [B200] Actually got clock rate 20.000000 MHz.
>
> Begin streaming 20000 samples, 10.000000 seconds in the future...
> Actual time:now  2.74539 :AtPPS: 2.00000. Commence wait.
> Actual time:now 10.00092 :AtPPS: 9.27090 <<<<<<<<<<<<< THIS SHOULD BE 
> 10.0 !!!!
> Received packet: 2040 samples, 10 full secs, 0.000010 frac secs
> Actual time:now 10.00166 :AtPPS: 9.27090
> Received packet: 2040 samples, 10 full secs, 0.000418 frac secs
> Actual time:now 10.00202 :AtPPS: 9.27090
> Received packet: 2040 samples, 10 full secs, 0.000826 frac secs
> Actual time:now 10.00236 :AtPPS: 9.27090
> Received packet: 2040 samples, 10 full secs, 0.001234 frac secs
> Actual time:now 10.00269 :AtPPS: 9.27090
> Received packet: 2040 samples, 10 full secs, 0.001642 frac secs
> Actual time:now 10.00301 :AtPPS: 9.27090
> Received packet: 2040 samples, 10 full secs, 0.002050 frac secs
> Actual time:now 10.00331 :AtPPS: 9.27090
> Received packet: 2040 samples, 10 full secs, 0.002458 frac secs
> Actual time:now 10.00365 :AtPPS: 9.27090
> Received packet: 2040 samples, 10 full secs, 0.002866 frac secs
> Actual time:now 10.00398 :AtPPS: 9.27090
> Received packet: 2040 samples, 10 full secs, 0.003274 frac secs
> Actual time:now 10.00430 :AtPPS: 9.27090
> Received packet: 1640 samples, 10 full secs, 0.003682 frac secs
>
> Done!
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------010506020907010506030804
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/24/2020 08:21 PM, David Merit via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:ME2P282MB05935F7A5FEE3072C5EE0877E1360@ME2P282MB0593.AUSP282.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <div>Hi, This seems to be a bug in Capturing timed samples.. Can
          anyone suggest ways around this?</div>
        <div>Im thinking of adding another 'set-time' before subsequent
          stream_cmds , or maybe theres something else I can put in a
          stream cmd? can the meta-data structure sent to recv() do
          anything useful to resolve?</div>
        <div>Ive already tried different buffer sizes, rates. its really
          unusual.</div>
        <div>Read below for the details.. THanks for any thoughts!. Dave
          M.</div>
      </div>
    </blockquote>
    You should only EVER need to do 1 "set_time_unknown_pps()" call at
    the beginning of your code.  Constantly resetting the TOD register<br>
      on the USRP may have unintended consequences.<br>
    <br>
    Since my host computer is synced to NTP, I typically use that as the
    time I set in the "set_time_unknown_pps()" call, and I do it once<br>
      per session.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote
cite="mid:ME2P282MB05935F7A5FEE3072C5EE0877E1360@ME2P282MB0593.AUSP282.PROD.OUTLOOK.COM"
      type="cite">
      <div style="font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <div><br>
        </div>
        <div>Since my project code is similar, To explain the BUG, Ive
          modified ETTUS example code "rx_timed_samples", to
        </div>
        <div>- SYnc with an external 1PPS </div>
        <div>- retrieve and display the USRP time at start and during
          capture, from both time-now and time_last_pps functions</div>
        <div><br>
        </div>
        <div>Setup: SIngle B210, Ubuntu 18.04, UHD_4.0.0.0-804-gb2527716</div>
        <div>, PPS via extern SMA port.( NOTE this is NOT the  GPSDO,
          which is not populated )</div>
        <div><br>
        </div>
        <div>Outcome:</div>
        <div>- GOOD: With only one B210 channel capturing, the USRP
          stays aligned with 1PPS
        </div>
        <div>- BAD:  With both B210 channels capturing, the USRP always
          time-shifts from 1PPS after first buffer-fill</div>
        <div>________________________________</div>
        <div><br>
        </div>
        <div>The essential additions to example code outputs are</div>
        <div>     t_now=usrp-&gt;get_time_now();
          <div>     t_tmp=usrp-&gt;get_time_last_pps();</div>
          <div>     printf("Actual time:now %8.5f
            :AtPPS:%8.5f\n",t_now.get_real_secs(),t_tmp.get_real_secs());<br>
          </div>
        </div>
        <div><br>
        </div>
        <div>Here's my code output..capture at 5MSPS, 10 secs into
          future.</div>
        <div><br>
        </div>
        <div>WORKS WITH ONE CHANNEL (9.99999 is same at 10.0)</div>
        <div>./rx_timed_samples --channels "0" --nsamps 20000 --rate
          5000000 --secs 10 --sync pps</div>
        <div>Begin streaming 20000 samples, 10.000000 seconds in the
          future...</div>
        <div>Actual time:now  1.00254 :AtPPS: 1.00000. Commence wait.</div>
        <div>Actual time:now 10.00083 :AtPPS: 9.99999</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.000008 frac
          secs</div>
        <div>Actual time:now 10.00130 :AtPPS: 9.99999</div>
        <div><br>
        </div>
        <div>FAILS WITH TWO CHANNELS</div>
        <div>./rx_timed_samples --channels "0,1" --nsamps 20000 --rate
          5000000 --secs 10 --sync pps</div>
        <div>Begin streaming 20000 samples, 10.000000 seconds in the
          future...</div>
        <div>Actual time:now  2.74539 :AtPPS: 2.00000. Commence wait.</div>
        <div>Actual time:now 10.00092 :AtPPS: 9.27090</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.000010 frac
          secs</div>
        <div>Actual time:now 10.00166 :AtPPS: 9.27090</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.000418 frac
          secs</div>
        <div>Actual time:now 10.00202 :AtPPS: 9.27090</div>
        <div><br>
        </div>
        <div>Heres the full output...<br>
        </div>
        <div><br>
        </div>
        <div>someone@breakfast:~/uhd/host/build/examples$
          ./rx_timed_samples --channels "0" --nsamps 20000 --rate
          5000000 --secs 10 --sync pps</div>
        <div>Creating the usrp device with: ...</div>
        <div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
          UHD_4.0.0.0-804-gb2527716</div>
        <div><br>
        </div>
        <div>&lt;...snip initialization stuff...&gt;</div>
        <div>Setting RX Rate: 5.000000 Msps...</div>
        <div>[INFO] [B200] Asking for clock rate 40.000000 MHz... </div>
        <div>[INFO] [B200] Actually got clock rate 40.000000 MHz.</div>
        <div>Actual RX Rate: 5.000000 Msps...</div>
        <div><br>
        </div>
        <div>Setting device timestamp to 0...</div>
        <div>[INFO] [MULTI_USRP]     1) catch time transition at pps
          edge</div>
        <div>[INFO] [MULTI_USRP]     2) set times next pps
          (synchronously)</div>
        <div><br>
        </div>
        <div>Begin streaming 20000 samples, 10.000000 seconds in the
          future...</div>
        <div>Actual time:now  1.00254 :AtPPS: 1.00000. Commence wait.</div>
        <div>Actual time:now 10.00083 :AtPPS: 9.99999</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.000008 frac
          secs</div>
        <div>Actual time:now 10.00130 :AtPPS: 9.99999</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.000416 frac
          secs</div>
        <div>Actual time:now 10.00164 :AtPPS: 9.99999</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.000824 frac
          secs</div>
        <div>Actual time:now 10.00198 :AtPPS: 9.99999</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.001232 frac
          secs</div>
        <div>Actual time:now 10.00231 :AtPPS: 9.99999</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.001640 frac
          secs</div>
        <div>Actual time:now 10.00269 :AtPPS: 9.99999</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.002048 frac
          secs</div>
        <div>Actual time:now 10.00308 :AtPPS: 9.99999</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.002456 frac
          secs</div>
        <div>Actual time:now 10.00349 :AtPPS: 9.99999</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.002864 frac
          secs</div>
        <div>Actual time:now 10.00391 :AtPPS: 9.99999</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.003272 frac
          secs</div>
        <div>Actual time:now 10.00425 :AtPPS: 9.99999</div>
        <div>Received packet: 1640 samples, 10 full secs, 0.003680 frac
          secs</div>
        <div><br>
        </div>
        <div>Done!</div>
        <div><br>
        </div>
        <div>______________________________________</div>
        <div>BAD:<br>
        </div>
        <div>someone@breakfast:~/uhd/host/build/examples$
          ./rx_timed_samples --channels "0,1" --nsamps 20000 --rate
          5000000 --secs 10 --sync pps</div>
        <div>&lt;...snip initialization stuff...&gt;</div>
        <div>Setting RX Rate: 5.000000 Msps...</div>
        <div>[INFO] [B200] Asking for clock rate 40.000000 MHz... </div>
        <div>[INFO] [B200] Actually got clock rate 40.000000 MHz.</div>
        <div>Actual RX Rate: 5.000000 Msps...</div>
        <div><br>
        </div>
        <div>Setting device timestamp to 0...</div>
        <div>[INFO] [MULTI_USRP]     1) catch time transition at pps
          edge</div>
        <div>[INFO] [MULTI_USRP]     2) set times next pps
          (synchronously)</div>
        <div>[INFO] [B200] Asking for clock rate 20.000000 MHz... </div>
        <div>[INFO] [B200] Actually got clock rate 20.000000 MHz.</div>
        <div><br>
        </div>
        <div>Begin streaming 20000 samples, 10.000000 seconds in the
          future...</div>
        <div>Actual time:now  2.74539 :AtPPS: 2.00000. Commence wait.</div>
        <div>Actual time:now 10.00092 :AtPPS: 9.27090
          &lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt; THIS
          SHOULD BE 10.0 !!!!<br>
        </div>
        <div>Received packet: 2040 samples, 10 full secs, 0.000010 frac
          secs</div>
        <div>Actual time:now 10.00166 :AtPPS: 9.27090</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.000418 frac
          secs</div>
        <div>Actual time:now 10.00202 :AtPPS: 9.27090</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.000826 frac
          secs</div>
        <div>Actual time:now 10.00236 :AtPPS: 9.27090</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.001234 frac
          secs</div>
        <div>Actual time:now 10.00269 :AtPPS: 9.27090</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.001642 frac
          secs</div>
        <div>Actual time:now 10.00301 :AtPPS: 9.27090</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.002050 frac
          secs</div>
        <div>Actual time:now 10.00331 :AtPPS: 9.27090</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.002458 frac
          secs</div>
        <div>Actual time:now 10.00365 :AtPPS: 9.27090</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.002866 frac
          secs</div>
        <div>Actual time:now 10.00398 :AtPPS: 9.27090</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.003274 frac
          secs</div>
        <div>Actual time:now 10.00430 :AtPPS: 9.27090</div>
        <div>Received packet: 1640 samples, 10 full secs, 0.003682 frac
          secs</div>
        <div><br>
        </div>
        <div>Done!</div>
        <br>
        <br>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------010506020907010506030804--


--===============3235222238476778216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3235222238476778216==--

