Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A42C5279194
	for <lists+usrp-users@lfdr.de>; Fri, 25 Sep 2020 22:04:45 +0200 (CEST)
Received: from [::1] (port=33524 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kLtxR-0002gU-9Y; Fri, 25 Sep 2020 16:04:41 -0400
Received: from mail-yb1-f172.google.com ([209.85.219.172]:35286)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mchlwntz@gmail.com>) id 1kLtxN-0002cV-6j
 for usrp-users@lists.ettus.com; Fri, 25 Sep 2020 16:04:37 -0400
Received: by mail-yb1-f172.google.com with SMTP id a2so2856546ybj.2
 for <usrp-users@lists.ettus.com>; Fri, 25 Sep 2020 13:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=caKGsDBkf7aVk3wudGYPZZfm9al1dvwL/o5fsaACCsg=;
 b=EcbFZPTcMdv4znUr8V7mHBAwVcliBXEztgF4OM+gomvL/evSVTw+a0GXdvUxypcC8Z
 BrQZHb+I2/gp/PIckOjIXjFDqZB+HaGwoMCAV2pAO0cl1B0mU2ADCw43H9O0woHXUN12
 1XAgomJZA/PQjL9fWyQm1+x+jB4PQZy4Cy4hez6rtgv9Rh/jjslXU2+T4TfVG1Zu5Ptz
 I5tAt7i/rQ9POyb+K0W6WJ9UzE2NOoDdzm4yuUtmZFprWHIZ8tXB7hstrgloLL2fR3OJ
 ZMDw+EG1M7QZg/UXFQ0PoWytoC/W5R33NH1qzisQw0t8xr60oLFrBI0tKYhRpeSqhv82
 Ta0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=caKGsDBkf7aVk3wudGYPZZfm9al1dvwL/o5fsaACCsg=;
 b=DsJm4NA3+U1xWu9pccw17SPNk75w6d1sCRPEJVF2u9cRAz3J71Of000yJq3Mj8mNsy
 dNIkuZjyfPsdRNhueA4HZOz1fiZQXeXt0gI8cDVcXMNQztO+Tc2rk+81TV39JmaYucQE
 5WXQJ4PmSJHr3xY1Egeme1+loc08H6rDDMf0rCJJ6BloYYHn6cKb4BDUM+8fUc4zxUUf
 LF55lku1DtyjoDomoyQJa8LIK/sxQnbg5U+CAsGDS//i+7T8jHdFRtHeZU6PuI4UxNCk
 ycT4yI4s51Kc2w86VQrZOcuhj5C10nYLWh6tBCQb7smLhQjqGyGtSTFIpvrG7BXCQhXk
 Z01w==
X-Gm-Message-State: AOAM532w/OpR5DfR7aS4D5ILVDxD9R67684x/gfdqu71dAm+vzNPzpeP
 +tnfawGd6FB61khuZTvscgtn6grmhh3pgW9eaJQseH+oU9o=
X-Google-Smtp-Source: ABdhPJzYWjD+m3y/VuRWGdQJ/52iP8U6/4J5F/cGd0zdnJW2SPApYufKeylmnxErpJ7dWXu6/Arkm/zjJh4hLE90/8Y=
X-Received: by 2002:a25:ce52:: with SMTP id x79mr1252630ybe.183.1601064236211; 
 Fri, 25 Sep 2020 13:03:56 -0700 (PDT)
MIME-Version: 1.0
References: <ME2P282MB05935F7A5FEE3072C5EE0877E1360@ME2P282MB0593.AUSP282.PROD.OUTLOOK.COM>
 <5F6D3C9C.5090702@gmail.com>
In-Reply-To: <5F6D3C9C.5090702@gmail.com>
Date: Fri, 25 Sep 2020 16:03:45 -0400
Message-ID: <CAFTrPL3+FPD==M9aOKSXVk-x9VVfucxigJLVEH-6Q9j9sXLH=g@mail.gmail.com>
To: usrp-users@lists.ettus.com
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
From: Michael Wentz via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Wentz <mchlwntz@gmail.com>
Content-Type: multipart/mixed; boundary="===============7857053359354882399=="
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

--===============7857053359354882399==
Content-Type: multipart/alternative; boundary="0000000000000fe8dd05b028d165"

--0000000000000fe8dd05b028d165
Content-Type: text/plain; charset="UTF-8"

Hi,

I had a similar issue earlier this year and posted to the list about it,
including a workaround:
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-February/061592.html

If you're not already doing this, you may want to try putting the code that
latches the time after the RX stream is created. For some reason creating
the RX stream with 2 channels on the B210 was changing the device time.

-Michael

On Thu, Sep 24, 2020 at 8:41 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 09/24/2020 08:21 PM, David Merit via USRP-users wrote:
>
> Hi, This seems to be a bug in Capturing timed samples.. Can anyone suggest
> ways around this?
> Im thinking of adding another 'set-time' before subsequent stream_cmds ,
> or maybe theres something else I can put in a stream cmd? can the meta-data
> structure sent to recv() do anything useful to resolve?
> Ive already tried different buffer sizes, rates. its really unusual.
> Read below for the details.. THanks for any thoughts!. Dave M.
>
> You should only EVER need to do 1 "set_time_unknown_pps()" call at the
> beginning of your code.  Constantly resetting the TOD register
>   on the USRP may have unintended consequences.
>
> Since my host computer is synced to NTP, I typically use that as the time
> I set in the "set_time_unknown_pps()" call, and I do it once
>   per session.
>
>
>
>
>
> Since my project code is similar, To explain the BUG, Ive modified ETTUS
> example code "rx_timed_samples", to
> - SYnc with an external 1PPS
> - retrieve and display the USRP time at start and during capture, from
> both time-now and time_last_pps functions
>
> Setup: SIngle B210, Ubuntu 18.04, UHD_4.0.0.0-804-gb2527716
> , PPS via extern SMA port.( NOTE this is NOT the  GPSDO, which is not
> populated )
>
> Outcome:
> - GOOD: With only one B210 channel capturing, the USRP stays aligned with
> 1PPS
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
> ./rx_timed_samples --channels "0" --nsamps 20000 --rate 5000000 --secs 10
> --sync pps
> Begin streaming 20000 samples, 10.000000 seconds in the future...
> Actual time:now  1.00254 :AtPPS: 1.00000. Commence wait.
> Actual time:now 10.00083 :AtPPS: 9.99999
> Received packet: 2040 samples, 10 full secs, 0.000008 frac secs
> Actual time:now 10.00130 :AtPPS: 9.99999
>
> FAILS WITH TWO CHANNELS
> ./rx_timed_samples --channels "0,1" --nsamps 20000 --rate 5000000 --secs
> 10 --sync pps
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
> Actual time:now 10.00092 :AtPPS: 9.27090 <<<<<<<<<<<<< THIS SHOULD BE 10.0
> !!!!
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
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000000fe8dd05b028d165
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I had a similar issue ea=
rlier this year and posted to the list about it, including a workaround: <a=
 href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-F=
ebruary/061592.html">http://lists.ettus.com/pipermail/usrp-users_lists.ettu=
s.com/2020-February/061592.html</a></div><div><br></div><div>If you&#39;re =
not already doing this, you may want to try putting the code that latches t=
he time after the RX stream is created. For some reason creating the RX str=
eam with 2 channels on the B210 was changing the device time.</div><div><br=
></div><div>-Michael</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Thu, Sep 24, 2020 at 8:41 PM Marcus D. Leech v=
ia USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 09/24/2020 08:21 PM, David Merit via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
      <div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
        <div>Hi, This seems to be a bug in Capturing timed samples.. Can
          anyone suggest ways around this?</div>
        <div>Im thinking of adding another &#39;set-time&#39; before subseq=
uent
          stream_cmds , or maybe theres something else I can put in a
          stream cmd? can the meta-data structure sent to recv() do
          anything useful to resolve?</div>
        <div>Ive already tried different buffer sizes, rates. its really
          unusual.</div>
        <div>Read below for the details.. THanks for any thoughts!. Dave
          M.</div>
      </div>
    </blockquote>
    You should only EVER need to do 1 &quot;set_time_unknown_pps()&quot; ca=
ll at
    the beginning of your code.=C2=A0 Constantly resetting the TOD register=
<br>
    =C2=A0 on the USRP may have unintended consequences.<br>
    <br>
    Since my host computer is synced to NTP, I typically use that as the
    time I set in the &quot;set_time_unknown_pps()&quot; call, and I do it =
once<br>
    =C2=A0 per session.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
        <div><br>
        </div>
        <div>Since my project code is similar, To explain the BUG, Ive
          modified ETTUS example code &quot;rx_timed_samples&quot;, to
        </div>
        <div>- SYnc with an external 1PPS </div>
        <div>- retrieve and display the USRP time at start and during
          capture, from both time-now and time_last_pps functions</div>
        <div><br>
        </div>
        <div>Setup: SIngle B210, Ubuntu 18.04, UHD_4.0.0.0-804-gb2527716</d=
iv>
        <div>, PPS via extern SMA port.( NOTE this is NOT the =C2=A0GPSDO,
          which is not populated )</div>
        <div><br>
        </div>
        <div>Outcome:</div>
        <div>- GOOD: With only one B210 channel capturing, the USRP
          stays aligned with 1PPS
        </div>
        <div>- BAD: =C2=A0With both B210 channels capturing, the USRP alway=
s
          time-shifts from 1PPS after first buffer-fill</div>
        <div>________________________________</div>
        <div><br>
        </div>
        <div>The essential additions to example code outputs are</div>
        <div>=C2=A0=C2=A0=C2=A0=C2=A0 t_now=3Dusrp-&gt;get_time_now();
          <div>=C2=A0=C2=A0=C2=A0=C2=A0 t_tmp=3Dusrp-&gt;get_time_last_pps(=
);</div>
          <div>=C2=A0=C2=A0=C2=A0=C2=A0 printf(&quot;Actual time:now %8.5f
            :AtPPS:%8.5f\n&quot;,t_now.get_real_secs(),t_tmp.get_real_secs(=
));<br>
          </div>
        </div>
        <div><br>
        </div>
        <div>Here&#39;s my code output..capture at 5MSPS, 10 secs into
          future.</div>
        <div><br>
        </div>
        <div>WORKS WITH ONE CHANNEL (9.99999 is same at 10.0)</div>
        <div>./rx_timed_samples --channels &quot;0&quot; --nsamps 20000 --r=
ate
          5000000 --secs 10 --sync pps</div>
        <div>Begin streaming 20000 samples, 10.000000 seconds in the
          future...</div>
        <div>Actual time:now =C2=A01.00254 :AtPPS: 1.00000. Commence wait.<=
/div>
        <div>Actual time:now 10.00083 :AtPPS: 9.99999</div>
        <div>Received packet: 2040 samples, 10 full secs, 0.000008 frac
          secs</div>
        <div>Actual time:now 10.00130 :AtPPS: 9.99999</div>
        <div><br>
        </div>
        <div>FAILS WITH TWO CHANNELS</div>
        <div>./rx_timed_samples --channels &quot;0,1&quot; --nsamps 20000 -=
-rate
          5000000 --secs 10 --sync pps</div>
        <div>Begin streaming 20000 samples, 10.000000 seconds in the
          future...</div>
        <div>Actual time:now =C2=A02.74539 :AtPPS: 2.00000. Commence wait.<=
/div>
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
          ./rx_timed_samples --channels &quot;0&quot; --nsamps 20000 --rate
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
        <div>[INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch time transition at =
pps
          edge</div>
        <div>[INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set times next pps
          (synchronously)</div>
        <div><br>
        </div>
        <div>Begin streaming 20000 samples, 10.000000 seconds in the
          future...</div>
        <div>Actual time:now =C2=A01.00254 :AtPPS: 1.00000. Commence wait.<=
/div>
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
          ./rx_timed_samples --channels &quot;0,1&quot; --nsamps 20000 --ra=
te
          5000000 --secs 10 --sync pps</div>
        <div>&lt;...snip initialization stuff...&gt;</div>
        <div>Setting RX Rate: 5.000000 Msps...</div>
        <div>[INFO] [B200] Asking for clock rate 40.000000 MHz... </div>
        <div>[INFO] [B200] Actually got clock rate 40.000000 MHz.</div>
        <div>Actual RX Rate: 5.000000 Msps...</div>
        <div><br>
        </div>
        <div>Setting device timestamp to 0...</div>
        <div>[INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch time transition at =
pps
          edge</div>
        <div>[INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set times next pps
          (synchronously)</div>
        <div>[INFO] [B200] Asking for clock rate 20.000000 MHz... </div>
        <div>[INFO] [B200] Actually got clock rate 20.000000 MHz.</div>
        <div><br>
        </div>
        <div>Begin streaming 20000 samples, 10.000000 seconds in the
          future...</div>
        <div>Actual time:now =C2=A02.74539 :AtPPS: 2.00000. Commence wait.<=
/div>
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
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000000fe8dd05b028d165--


--===============7857053359354882399==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7857053359354882399==--

