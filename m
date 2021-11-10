Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACB544CC4D
	for <lists+usrp-users@lfdr.de>; Wed, 10 Nov 2021 23:14:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 261723846AE
	for <lists+usrp-users@lfdr.de>; Wed, 10 Nov 2021 17:14:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="I/z+Adzl";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 101E23840C8
	for <usrp-users@lists.ettus.com>; Wed, 10 Nov 2021 17:13:39 -0500 (EST)
Received: by mail-qk1-f169.google.com with SMTP id de30so4049396qkb.0
        for <usrp-users@lists.ettus.com>; Wed, 10 Nov 2021 14:13:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=c1xRaheuOX0eyZXNNwkDJDeg03xtKm79T2B6pSvhOtw=;
        b=I/z+Adzlw8aMpNXIpwouR7wiH1Pjj7CvBV0PQL/9rJ96pBp5f4sVHymKDOqSClGKKL
         DqBKKiVdsyteF5TfFRLw4rR1GcxZHa3zFQo1z+ZlX8uT/KAzt2oG/62BD/+2PI09Us66
         CmspZeDSrKsVIY7Xz53YPwiXfenXgQpXGj6Pt3fWjreGv4yfTpEMVg4WiGRPHElx4+Co
         8yfBjFKtgpsDhKsozPs6GN8M/CxLhhGm0RxSgKpHJNX7i/xm07gE6+DfRTSEZHm/2j9L
         jYSE0FpJbd/fnK1MOpI6TVsWgCUE1/MjmhtrYctRmoHoTbSkx49MHS1Iv2edWRWsdb29
         VydA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=c1xRaheuOX0eyZXNNwkDJDeg03xtKm79T2B6pSvhOtw=;
        b=ulbMMsDqWfuDrJmN//JkhKgsOz/S3h25R79qch1ehrB5jVqneSsISO43fh2jOWknqc
         op0cRjlCqJImtK00LUaK6SON/R0WQf6gECqBMd0ZpSCmJuvbmDoMTJG+gHuVfBdg1P/7
         mza3oeXYcKUbEThFiUrhky+MpfDYRwjeTumqprkxCzp9LFJ8ybXLfxndqkT9Us2g3Ocx
         Z6AJOuxuk7uHnYWPR/bTugAPaZPjDUj8KfXUA6ajXa1qIz53ya7gw0yUvSTyoh56w4z+
         O94PML3oBHJ/x4TqS0c5ylVrt3yRPDTq3k2p+On5+YegwI13tXvIY2HANIXBIc248QP3
         0UyQ==
X-Gm-Message-State: AOAM531PeyCl6FhjomjV21VpiBpsou7teilfrz3lZPA7J5BOqCx45i+k
	Y4+yolvNNkZFHkEQ2YlWCDIVv6sLI+8=
X-Google-Smtp-Source: ABdhPJzalNx3Q55CPPE6jOSM7HSWrHUXEnz+JyFQ26ylvITTcPXbGAwF+ae9OvZ/wuA5i0W33XoJUQ==
X-Received: by 2002:a37:a617:: with SMTP id p23mr2338120qke.466.1636582419242;
        Wed, 10 Nov 2021 14:13:39 -0800 (PST)
Received: from [192.168.2.211] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id d23sm575870qtm.11.2021.11.10.14.13.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Nov 2021 14:13:38 -0800 (PST)
Message-ID: <9469c957-f338-18cb-c335-677da5e9af6e@gmail.com>
Date: Wed, 10 Nov 2021 17:13:37 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <0100017d0b5dbaba-a700b238-8ccb-480e-9586-9edf72ec2f6f-000000@email.amazonses.com>
 <1e9814af-de46-db07-a05e-6ee9905abba6@gmail.com>
 <CAB__hTT8KfjEqoPyfuOK6faTr0e80bZpd=rTs2_RtWeK3hT1Kw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTT8KfjEqoPyfuOK6faTr0e80bZpd=rTs2_RtWeK3hT1Kw@mail.gmail.com>
Message-ID-Hash: SFSUME5OC3JGGCLJREE4TG35TZBF4MEK
X-Message-ID-Hash: SFSUME5OC3JGGCLJREE4TG35TZBF4MEK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timing discrepencies with X310 vs N320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SFSUME5OC3JGGCLJREE4TG35TZBF4MEK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7903153219512035561=="

This is a multi-part message in MIME format.
--===============7903153219512035561==
Content-Type: multipart/alternative;
 boundary="------------lO4ANZplvAAEHdqekgexQ5Ec"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------lO4ANZplvAAEHdqekgexQ5Ec
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-10 17:09, Rob Kossler wrote:
> I have had a similar issue.=C2=A0 My theory is that there is some delay=
 in=20
> the PPS input circuitry and that it is different between N320 and X310=20
> such that it is effectively analogous to using different length PPS=20
> cables to the X310 devices as compared to the N320 devices. If this is=20
> true, then I expect that the delay is at least constant.=C2=A0 In your=20
> application, is it possible to set the start time in the=20
> set_time_next_pps() command with a relative delay with respect to that=20
> used for the N320?
We're talking 10s-of-ms here.=C2=A0 That's a HUGE discrepancy, and would =
be=20
hard to achieve with "slight differences in analog circuitry" unless it=20
was deliberate (but wrong!).



>
> On Wed, Nov 10, 2021 at 4:20 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 2021-11-10 14:40, Robert Clancy via USRP-users wrote:
>>
>>     TLDR- Setting the time ( set_time_next_pps() ) on (multiple) X310
>>     doesn't result in USRP time being aligned with PPS edge. Works on
>>     N320.
>>
>>
>>     I have two X310's and an N320 as well as an Octoclock. The
>>     Octoclock does have GPS lock. All four devices are on different
>>     computers, each of which has its system time set via NTP. We are
>>     using UHD version UHD_4.1.0.4-0-g25d617ca. I'll include the
>>     find_devices and probe output at the end for reference. We're
>>     running Ubuntu Bionic=C2=A018.04.6 LTS on all machines.
>>
>>
>>     The Octoclock is accessed via a custom network shim that runs on
>>     the machine to which the Octoclock is attached. Machines with
>>     radios ( X's or N's ) can make a request of the custom Octoclock
>>     network service to get Octoclock time. Octoclock time agrees very
>>     well with the NTP top of the second ( typically withing 25ms )
>>     given the inherent uncertainty running python code on different
>>     machines. By "agrees very well" I mean the delta between
>>     Octoclock time and NTP time has a low variance. All that to say,
>>     I do not suspect the Octoclock or software used to access the
>>     Octoclock.
>>
>>
>>     The crux of the issue is that when using external clock
>>     (10MHz)=C2=A0and timing reference (1PPS) ( provided by Octoclock )=
 and
>>     setting an X310 time ( set_time_next_pps ), I am seeing about a
>>     200ms (or 800ms depending on how you are measuring ) difference
>>     in when the X310 reports it is at the top of a second versus
>>     either time.time() or the octoclock time. I do not see this
>>     discrepancy with the N320 radio.
>>
>>
>>     The net effect of this is that if an X and N are set to transmit
>>     at the very same time, we can see that the X transmits 800ish ms
>>     early relative to the N using a spectrum analyzer ( real hardware
>>     ). The N transmits at the correct time eyeballing wall
>>     clock/computer time.
>>
>>
>>     Here is some of our test code that we've been using to
>>     investigate this:
>>
>>
>>     =C2=A0 =C2=A0 usrp =3D uhd.usrp_sink( ",".join((options.address, "=
")),
>>     uhd.stream_args( cpu_format=3D"fc32", args=3D'',
>>     channels=3Dlist(range(0,1)), ),'', )
>>     usrp.set_time_source('external', 0)
>>     usrp.set_clock_source('external', 0)
>>     usrp.set_time_unknown_pps(uhd.time_spec())
>>
>>     =C2=A0 =C2=A0 reflock =3D str(usrp.get_mboard_sensor("ref_locked",
>>     0)).split(": ")[1]
>>     =C2=A0 =C2=A0 if=C2=A0 reflock !=3D 'locked':
>>     print('reference not locked')
>>     print('exiting')
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 exit()
>>     =C2=A0 =C2=A0 else:
>>     print('referenced locked')
>>
>>     =C2=A0 =C2=A0 =C2=A0# the get_octo_time () call is a call to our n=
etworked
>>     octoclock. Just imagine this line as querying the octoclock for ti=
me
>>     next_pps =3D get_octo_time() + 1
>>
>>     =C2=A0usrp.set_time_next_pps(uhd.time_spec_t(next_pps))
>>
>>     =C2=A0 =C2=A0 # sleep for a few seconds
>>     time.sleep(2.0)
>>
>>     oc_time=3Dget_octo_time()
>>     =C2=A0 =C2=A0 usrp_time =3D usrp.get_time_now()
>>     usrp_time_last_pps =3D usrp.get_time_last_pps()
>>     system_time =3D time.time()
>>
>>     usrp_time_source =3D usrp.get_time_source(0)
>>     usrp_time_sources =3D usrp.get_time_sources(0)
>>     print(f"TRANSMIT:: OC time is {oc_time} \n" \
>>     f"TRANSMIT:: usrp_time_last_pps is
>>     {usrp_time_last_pps.get_full_secs()} \n" \
>>     f"TRANSMIT:: usrp_time_last_pps_frac is
>>     {usrp_time_last_pps.get_frac_secs()} \n" \
>>     f"TRANSMIT:: usrp_time is {usrp_time.get_full_secs()} \n" \
>>     f"TRANSMIT:: usrp_time_frac is {usrp_time.get_frac_secs()} \n" \
>>     f"TRANSMIT:: system time is {system_time} \n" \
>>     f"TRANSMIT:: usrp_time_source is {usrp_time_source} \n" \
>>     f"TRANSMIT:: usrp_time_sources are {usrp_time_sources}")
>>
>>     And here is some output from an X310:
>>
>>     TRANSMIT:: OC time is 1636568870
>>     TRANSMIT:: usrp_time_last_pps is 1636568869
>>     TRANSMIT:: usrp_time_last_pps_frac is 0.0
>>     TRANSMIT:: usrp_time is 1636568869
>>     TRANSMIT:: usrp_time_frac is0.82498684
>>     TRANSMIT:: system time is 1636568870.0275745
>>     TRANSMIT:: usrp_time_source is external
>>     TRANSMIT:: usrp_time_sources are ('internal', 'external', 'gpsdo')
>>
>>     So the problem here is that the fractional time (usrp_time_frac)
>>     is 800ish ms when it should be more like 25ish ms (=C2=A0
>>     like=C2=A0time.time() i.e. system time ).
>>
>>     Here is the result of running the same code on a host with an N320=
:
>>
>>     TRANSMIT:: OC time is 1636570841
>>     TRANSMIT:: usrp_time_last_pps is 1636570841
>>     TRANSMIT:: usrp_time_last_pps_frac is 0.0
>>     TRANSMIT:: usrp_time is 1636570841
>>     TRANSMIT:: usrp_time_frac is 0.025938016764322915
>>     TRANSMIT:: system time is 1636570841.0290515
>>     TRANSMIT:: usrp_time_source is external
>>     TRANSMIT:: usrp_time_sources are ('internal', 'external',
>>     'gpsdo', 'sfp0')
>>
>>     /=C2=A0 =C2=A0 product: n320/
>>     /=C2=A0 =C2=A0 type: n3xx/
>>     /
>>     /
>>
>     I have a wild guess.
>
>     You:
>
>     set_time_unknown_pps()
>     do a wee bit of stuff
>     set_time_next_pps(), and it's possibly that those two
>     "set_time.*pps()" calls are too close together for the X310
>     hardware, and it's getting the wrong notion of time?
>
>     If you insert a, let's say, 50ms sleep just before the
>     set_time_next_pps(), how does this change things?
>
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------lO4ANZplvAAEHdqekgexQ5Ec
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-10 17:09, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTT8KfjEqoPyfuOK6faTr0e80bZpd=3DrTs2_RtWeK3hT1Kw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">I have had a similar issue.=C2=A0 My theory is tha=
t
        there is some delay in the PPS input circuitry and that it is
        different between N320 and X310 such that it is effectively
        analogous to using different length PPS cables to the X310
        devices as compared to the N320 devices. If this is true, then I
        expect that the delay is at least constant.=C2=A0 In your
        application, is it possible to set the start time in the
        set_time_next_pps() command with a relative delay with respect
        to that used for the N320?</div>
    </blockquote>
    We're talking 10s-of-ms here.=C2=A0 That's a HUGE discrepancy, and wo=
uld
    be hard to achieve with "slight differences in analog circuitry"
    unless it was deliberate (but wrong!).<br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTT8KfjEqoPyfuOK6faTr0e80bZpd=3DrTs2_RtWeK3hT1Kw@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 10, 2021 at 4:2=
0
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
            <div>On 2021-11-10 14:40, Robert Clancy via USRP-users
              wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div id=3D"gmail-m_5596797367432940650divtagdefaultwrapper"
                dir=3D"ltr">
                <p>TLDR- Setting the time ( set_time_next_pps() ) on
                  (multiple) X310 doesn't result in USRP time being
                  aligned with PPS edge. Works on N320.</p>
                <p><br>
                </p>
                <p>I have two X310's and an N320 as well as an
                  Octoclock. The Octoclock does have GPS lock. All four
                  devices are on different computers, each of which has
                  its system time set via NTP. We are using UHD version=C2=
=A0<span>UHD_4.1.0.4-0-g25d617ca.
                    I'll include the find_devices and probe output at
                    the end for reference. We're running Ubuntu
                    Bionic=C2=A018.04.6 LTS on all machines.</span></p>
                <p><span><br>
                  </span></p>
                <p>The Octoclock is accessed via a custom network shim
                  that runs on the machine to which the Octoclock is
                  attached. Machines with radios ( X's or N's ) can make
                  a request of the custom Octoclock network service to
                  get Octoclock time. Octoclock time agrees very well
                  with the NTP top of the second ( typically withing
                  25ms ) given the inherent uncertainty running python
                  code on different machines. By "agrees very well" I
                  mean the delta between Octoclock time and NTP time has
                  a low variance. All that to say, I do not suspect the
                  Octoclock or software used to access the Octoclock.</p>
                <p><br>
                </p>
                <p>The crux of the issue is that when using external
                  clock (10MHz)=C2=A0and timing reference (1PPS) ( provid=
ed
                  by Octoclock ) and setting an X310 time (
                  set_time_next_pps ), I am seeing about a 200ms (or
                  800ms depending on how you are measuring ) difference
                  in when the X310 reports it is at the top of a second
                  versus either time.time() or the octoclock time. I do
                  not see this discrepancy with the N320 radio.</p>
                <p><br>
                </p>
                <p>The net effect of this is that if an X and N are set
                  to transmit at the very same time, we can see that the
                  X transmits 800ish ms early relative to the N using a
                  spectrum analyzer ( real hardware ). The N transmits
                  at the correct time eyeballing wall clock/computer
                  time.</p>
                <p><br>
                </p>
                <p>Here is some of our test code that we've been using
                  to investigate this:</p>
                <div><br>
                </div>
                <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 u=
srp =3D
                    uhd.usrp_sink( ",".join((options.address, "")),
                    uhd.stream_args( cpu_format=3D"fc32", args=3D'',
                    channels=3Dlist(range(0,1)), ),'', )</span></div>
                <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0
                    usrp.set_time_source('external', 0)</span></div>
                <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0
                    usrp.set_clock_source('external', 0)</span></div>
                <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0
                    usrp.set_time_unknown_pps(uhd.time_spec())</span></di=
v>
                <div><br>
                </div>
                <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 r=
eflock =3D
                    str(usrp.get_mboard_sensor("ref_locked",
                    0)).split(": ")[1]</span></div>
                <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 i=
f=C2=A0 reflock
                    !=3D 'locked':</span></div>
                <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0
                    print('reference not locked')</span></div>
                <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0
                    print('exiting')</span></div>
                <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 exit()</span></div>
                <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 e=
lse:</span></div>
                <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0
                    print('referenced locked')</span></div>
                <div><span style=3D"color:rgb(0,111,201)"><br>
                  </span></div>
                <div><span style=3D"color:rgb(0,111,201)"><span>=C2=A0 =C2=
=A0 =C2=A0# the
                      get_octo_time () call is a call to our networked
                      octoclock. Just imagine this line as querying the
                      octoclock for time</span><br>
                  </span></div>
                <div><span style=3D"color:rgb(0,111,201)"><span><span
                        style=3D"font-family:Calibri,Helvetica,sans-serif=
">=C2=A0
                        =C2=A0=C2=A0</span>next_pps =3D get_octo_time() +=
 1=C2=A0 =C2=A0 =C2=A0</span><br>
                  </span></div>
                <div><span style=3D"color:rgb(0,111,201)"><span><br>
                    </span></span></div>
                <div><span style=3D"color:rgb(0,111,201)"><span>=C2=A0 =C2=
=A0
                      =C2=A0usrp.set_time_next_pps(uhd.time_spec_t(next_p=
ps))</span><br>
                  </span></div>
                <div><br>
                </div>
                <div>
                  <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0=
 # sleep
                      for a few seconds</span></div>
                  <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0
                      time.sleep(2.0)</span></div>
                  <div><span style=3D"color:rgb(0,111,201);font-size:12pt=
">=C2=A0
                      =C2=A0=C2=A0</span><br>
                  </div>
                  <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0
                      oc_time=3Dget_octo_time()</span></div>
                  <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0=
 usrp_time
                      =3D usrp.get_time_now()</span></div>
                  <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0
                      usrp_time_last_pps =3D usrp.get_time_last_pps()</sp=
an></div>
                  <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0
                      system_time =3D time.time()</span></div>
                  <div><br>
                  </div>
                  <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0
                      usrp_time_source =3D usrp.get_time_source(0)</span>=
</div>
                  <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0
                      usrp_time_sources =3D usrp.get_time_sources(0)</spa=
n></div>
                  <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0
                      print(f"TRANSMIT:: OC time is {oc_time} \n" \</span=
></div>
                  <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0
                      f"TRANSMIT:: usrp_time_last_pps is
                      {usrp_time_last_pps.get_full_secs()} \n" \</span></=
div>
                  <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0
                      f"TRANSMIT:: usrp_time_last_pps_frac is
                      {usrp_time_last_pps.get_frac_secs()} \n" \</span></=
div>
                  <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0
                      f"TRANSMIT:: usrp_time is
                      {usrp_time.get_full_secs()} \n" \</span></div>
                  <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0
                      f"TRANSMIT:: usrp_time_frac is
                      {usrp_time.get_frac_secs()} \n" \</span></div>
                  <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0
                      f"TRANSMIT:: system time is {system_time} \n" \</sp=
an></div>
                  <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0
                      f"TRANSMIT:: usrp_time_source is
                      {usrp_time_source} \n" \</span></div>
                  <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0
                      f"TRANSMIT:: usrp_time_sources are
                      {usrp_time_sources}")</span></div>
                  <div><br>
                  </div>
                  And here is some output from an X310:</div>
                <div><br>
                </div>
                <div>
                  <div><span
                      style=3D"font-family:Consolas,Courier,monospace">TR=
ANSMIT::
                      OC time is 1636568870=C2=A0</span></div>
                  <div><span
                      style=3D"font-family:Consolas,Courier,monospace">TR=
ANSMIT::
                      usrp_time_last_pps is 1636568869=C2=A0</span></div>
                  <div><span
                      style=3D"font-family:Consolas,Courier,monospace">TR=
ANSMIT::
                      usrp_time_last_pps_frac is 0.0=C2=A0</span></div>
                  <div><span
                      style=3D"font-family:Consolas,Courier,monospace">TR=
ANSMIT::
                      usrp_time is 1636568869=C2=A0</span></div>
                  <div><span
                      style=3D"font-family:Consolas,Courier,monospace">TR=
ANSMIT::
                      usrp_time_frac is<span
                        style=3D"background-color:rgb(255,0,0)">
                        0.82498684=C2=A0</span></span></div>
                  <div><span
                      style=3D"font-family:Consolas,Courier,monospace">TR=
ANSMIT::
                      system time is 1636568870.<span
                        style=3D"background-color:rgb(0,255,0)">0275745=C2=
=A0</span></span></div>
                  <div><span
                      style=3D"font-family:Consolas,Courier,monospace">TR=
ANSMIT::
                      usrp_time_source is external=C2=A0</span></div>
                  <div><span
                      style=3D"font-family:Consolas,Courier,monospace">TR=
ANSMIT::
                      usrp_time_sources are ('internal', 'external',
                      'gpsdo')</span></div>
                  <div><br>
                  </div>
                  <span style=3D"font-family:Arial,Helvetica,sans-serif">=
So
                    the problem here is that the fractional time
                    (usrp_time_frac) is 800ish ms when it should be more
                    like 25ish ms (=C2=A0 like=C2=A0time.time() i.e. syst=
em time
                    ).</span></div>
                <div><span
                    style=3D"font-family:Arial,Helvetica,sans-serif"><br>
                  </span></div>
                <div><span
                    style=3D"font-family:Arial,Helvetica,sans-serif">Here
                    is the result of running the same code on a host
                    with an N320:</span></div>
                <div><span
                    style=3D"font-family:Arial,Helvetica,sans-serif"><br>
                  </span></div>
                <div><span
                    style=3D"font-family:Arial,Helvetica,sans-serif">
                    <div>TRANSMIT:: OC time is 1636570841=C2=A0</div>
                    <div>TRANSMIT:: usrp_time_last_pps is 1636570841=C2=A0=
</div>
                    <div>TRANSMIT:: usrp_time_last_pps_frac is 0.0=C2=A0<=
/div>
                    <div>TRANSMIT:: usrp_time is 1636570841=C2=A0</div>
                    <div>TRANSMIT:: usrp_time_frac is <span
                        style=3D"background-color:rgb(0,255,255)">0.02593=
8016764322915</span><span
                        style=3D"background-color:rgb(0,255,255)">=C2=A0<=
/span></div>
                    <div>TRANSMIT:: system time is 1636570841.<span
                        style=3D"background-color:rgb(0,255,0)">0290515=C2=
=A0</span></div>
                    <div>TRANSMIT:: usrp_time_source is external=C2=A0</d=
iv>
                    <div>TRANSMIT:: usrp_time_sources are ('internal',
                      'external', 'gpsdo', 'sfp0')</div>
                    <div><br>
                    </div>
                  </span><span
                    style=3D"font-family:Arial,Helvetica,sans-serif">
                    <div>
                      <div><i>=C2=A0 =C2=A0 product: n320</i></div>
                      <div><i>=C2=A0 =C2=A0 type: n3xx</i></div>
                      <div><i><br>
                        </i></div>
                      <br>
                    </div>
                  </span></div>
              </div>
            </blockquote>
            I have a wild guess.<br>
            <br>
            You:<br>
            <br>
            set_time_unknown_pps()<br>
            do a wee bit of stuff<br>
            set_time_next_pps(), and it's possibly that those two
            "set_time.*pps()" calls are too close together for the X310
            hardware, and it's getting the wrong notion of time?<br>
            <br>
            If you insert a, let's say, 50ms sleep just before the
            set_time_next_pps(), how does this change things?<br>
            <br>
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
--------------lO4ANZplvAAEHdqekgexQ5Ec--

--===============7903153219512035561==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7903153219512035561==--
