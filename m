Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFB744CB44
	for <lists+usrp-users@lfdr.de>; Wed, 10 Nov 2021 22:20:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D4F34383FDD
	for <lists+usrp-users@lfdr.de>; Wed, 10 Nov 2021 16:20:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="S9UM02aC";
	dkim-atps=neutral
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 584D5384102
	for <usrp-users@lists.ettus.com>; Wed, 10 Nov 2021 16:18:23 -0500 (EST)
Received: by mail-qv1-f46.google.com with SMTP id j9so2735600qvm.10
        for <usrp-users@lists.ettus.com>; Wed, 10 Nov 2021 13:18:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=f9OzePrsIEl7WT5t2KMXw67M9scmNHAB3jRIhIdGBVg=;
        b=S9UM02aC4gbp2TXdTHWCnlHIc2LITRr+pnY02T85Ob3mGdpHI1vYgcx+fP1MOJUog7
         uA2tV3oGKmV1IE1+37YjwSBAl3+/FgUQzZtHMzI70VaKb3Q75gBxfRp8XB7Nggj0fmE1
         4YwvyEl/rfKQPXKgGPd+0Adh02nq5JG/N2K2mwB5HmaUiefDrrtFYJyP44EBarJPgKAy
         1t5Gxg0qBTmJ7FpnocspFOglYRn23T3/ugOtc1HOGNpljk5WlcpdAkZS7tCkBX9v1ibB
         H6LSGp0sFa1/NAWsWAfR23KWTEuT46BIqUFaSW1EEnMHtcCnOd06OX8ekKzkYsrp29Xw
         zuOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=f9OzePrsIEl7WT5t2KMXw67M9scmNHAB3jRIhIdGBVg=;
        b=ZgIlR4Dp2CRXe4I78tCaLg8TRXx6B9jY+28ikUdHhKNyVXRWAKN4GPpQu3pERCLFie
         Rna4tllCF35Qoq1V3W/Qe5d1LpEjg01rnfqYMkWh00w12Hs5oZxIwF9d0Y/h+MOwde0s
         A8zg4TZ0zOWuFqyb3kMhpfZ6LLPbNLMS1E6szeBPLbzPYAt7yRS9krZY19v/XAtPBjDR
         BogXpHQVQFMnF0/hFR7jVv6/T//0Z44s2jXr5ZxLM5h41gyIb3OrUMcGSut9KxNiNhxU
         knmEOLbsUn5eYLT1UoIoqbphGFQdWzOP7Ip7QN4P/7q0RIyx6oH+QEAQ9V50DGkol2mb
         WGMg==
X-Gm-Message-State: AOAM532a0WonwZYf13uz/PIIcGO5tkSo8OX8TTjHpkDTHcNfWBOHtJzj
	jmbamPIhNtfhcWc/VhxlFWJzF6dTJLQ=
X-Google-Smtp-Source: ABdhPJyXaqUvNc9C6Xuu4F5+RRc6Cgj3dNi1j1Fv7JFjJ0Qa/wre2EEaFcqxqFI40qpel/jiECwWew==
X-Received: by 2002:a05:6214:c42:: with SMTP id r2mr1888246qvj.53.1636579102125;
        Wed, 10 Nov 2021 13:18:22 -0800 (PST)
Received: from [192.168.2.211] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id v19sm610582qtk.6.2021.11.10.13.18.21
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Nov 2021 13:18:21 -0800 (PST)
Message-ID: <1e9814af-de46-db07-a05e-6ee9905abba6@gmail.com>
Date: Wed, 10 Nov 2021 16:18:20 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <0100017d0b5dbaba-a700b238-8ccb-480e-9586-9edf72ec2f6f-000000@email.amazonses.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <0100017d0b5dbaba-a700b238-8ccb-480e-9586-9edf72ec2f6f-000000@email.amazonses.com>
Message-ID-Hash: 2DLRGGQOWF5DODEN6BTJ5KVR3IKLK3A5
X-Message-ID-Hash: 2DLRGGQOWF5DODEN6BTJ5KVR3IKLK3A5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timing discrepencies with X310 vs N320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2DLRGGQOWF5DODEN6BTJ5KVR3IKLK3A5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8885255484451786890=="

This is a multi-part message in MIME format.
--===============8885255484451786890==
Content-Type: multipart/alternative;
 boundary="------------nTpCj4zl3JEzLG4Tqk0EvBTz"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------nTpCj4zl3JEzLG4Tqk0EvBTz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-10 14:40, Robert Clancy via USRP-users wrote:
>
> TLDR- Setting the time ( set_time_next_pps() ) on (multiple) X310=20
> doesn't result in USRP time being aligned with PPS edge. Works on N320.
>
>
> I have two X310's and an N320 as well as an Octoclock. The Octoclock=20
> does have GPS lock. All four devices are on different computers, each=20
> of which has its system time set via NTP. We are using UHD version=20
> UHD_4.1.0.4-0-g25d617ca. I'll include the find_devices and probe=20
> output at the end for reference. We're running Ubuntu Bionic=C2=A018.04=
.6=20
> LTS on all machines.
>
>
> The Octoclock is accessed via a custom network shim that runs on the=20
> machine to which the Octoclock is attached. Machines with radios ( X's=20
> or N's ) can make a request of the custom Octoclock network service to=20
> get Octoclock time. Octoclock time agrees very well with the NTP top=20
> of the second ( typically withing 25ms ) given the inherent=20
> uncertainty running python code on different machines. By "agrees very=20
> well" I mean the delta between Octoclock time and NTP time has a low=20
> variance. All that to say, I do not suspect the Octoclock or software=20
> used to access the Octoclock.
>
>
> The crux of the issue is that when using external clock (10MHz)=C2=A0an=
d=20
> timing reference (1PPS) ( provided by Octoclock ) and setting an X310=20
> time ( set_time_next_pps ), I am seeing about a 200ms (or 800ms=20
> depending on how you are measuring ) difference in when the X310=20
> reports it is at the top of a second versus either time.time() or the=20
> octoclock time. I do not see this discrepancy with the N320 radio.
>
>
> The net effect of this is that if an X and N are set to transmit at=20
> the very same time, we can see that the X transmits 800ish ms early=20
> relative to the N using a spectrum analyzer ( real hardware ). The N=20
> transmits at the correct time eyeballing wall clock/computer time.
>
>
> Here is some of our test code that we've been using to investigate this=
:
>
>
> =C2=A0 =C2=A0 usrp =3D uhd.usrp_sink( ",".join((options.address, "")),=20
> uhd.stream_args( cpu_format=3D"fc32", args=3D'',=20
> channels=3Dlist(range(0,1)), ),'', )
> usrp.set_time_source('external', 0)
> usrp.set_clock_source('external', 0)
> usrp.set_time_unknown_pps(uhd.time_spec())
>
> =C2=A0 =C2=A0 reflock =3D str(usrp.get_mboard_sensor("ref_locked", 0)).=
split(": ")[1]
> =C2=A0 =C2=A0 if=C2=A0 reflock !=3D 'locked':
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 print('reference not locked')
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 print('exiting')
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 exit()
> =C2=A0 =C2=A0 else:
> print('referenced locked')
>
> =C2=A0 =C2=A0 =C2=A0# the get_octo_time () call is a call to our networ=
ked octoclock.=20
> Just imagine this line as querying the octoclock for time
> next_pps =3D get_octo_time() + 1
>
> =C2=A0usrp.set_time_next_pps(uhd.time_spec_t(next_pps))
>
> =C2=A0 =C2=A0 # sleep for a few seconds
> =C2=A0 =C2=A0 time.sleep(2.0)
>
> oc_time=3Dget_octo_time()
> =C2=A0 =C2=A0 usrp_time =3D usrp.get_time_now()
> =C2=A0 =C2=A0 usrp_time_last_pps =3D usrp.get_time_last_pps()
> =C2=A0 =C2=A0 system_time =3D time.time()
>
> =C2=A0 =C2=A0 usrp_time_source =3D usrp.get_time_source(0)
> =C2=A0 =C2=A0 usrp_time_sources =3D usrp.get_time_sources(0)
> =C2=A0 =C2=A0 print(f"TRANSMIT:: OC time is {oc_time} \n" \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f"TRANSMIT:: usrp_time_last_pps is=20
> {usrp_time_last_pps.get_full_secs()} \n" \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f"TRANSMIT:: usrp_time_last_pps_frac=
 is=20
> {usrp_time_last_pps.get_frac_secs()} \n" \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f"TRANSMIT:: usrp_time is {usrp_time=
.get_full_secs()} \n" \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f"TRANSMIT:: usrp_time_frac is {usrp=
_time.get_frac_secs()} \n" \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f"TRANSMIT:: system time is {system_=
time} \n" \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f"TRANSMIT:: usrp_time_source is {us=
rp_time_source} \n" \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f"TRANSMIT:: usrp_time_sources are {=
usrp_time_sources}")
>
> And here is some output from an X310:
>
> TRANSMIT:: OC time is 1636568870
> TRANSMIT:: usrp_time_last_pps is 1636568869
> TRANSMIT:: usrp_time_last_pps_frac is 0.0
> TRANSMIT:: usrp_time is 1636568869
> TRANSMIT:: usrp_time_frac is0.82498684
> TRANSMIT:: system time is 1636568870.0275745
> TRANSMIT:: usrp_time_source is external
> TRANSMIT:: usrp_time_sources are ('internal', 'external', 'gpsdo')
>
> So the problem here is that the fractional time (usrp_time_frac) is=20
> 800ish ms when it should be more like 25ish ms ( like=C2=A0time.time() =
i.e.=20
> system time ).
>
> Here is the result of running the same code on a host with an N320:
>
> TRANSMIT:: OC time is 1636570841
> TRANSMIT:: usrp_time_last_pps is 1636570841
> TRANSMIT:: usrp_time_last_pps_frac is 0.0
> TRANSMIT:: usrp_time is 1636570841
> TRANSMIT:: usrp_time_frac is 0.025938016764322915
> TRANSMIT:: system time is 1636570841.0290515
> TRANSMIT:: usrp_time_source is external
> TRANSMIT:: usrp_time_sources are ('internal', 'external', 'gpsdo', 'sfp=
0')
>
> /=C2=A0 =C2=A0 product: n320/
> /=C2=A0 =C2=A0 type: n3xx/
> /
> /
>
I have a wild guess.

You:

set_time_unknown_pps()
do a wee bit of stuff
set_time_next_pps(), and it's possibly that those two "set_time.*pps()"=20
calls are too close together for the X310 hardware, and it's getting the=20
wrong notion of time?

If you insert a, let's say, 50ms sleep just before the=20
set_time_next_pps(), how does this change things?



--------------nTpCj4zl3JEzLG4Tqk0EvBTz
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-10 14:40, Robert Clancy via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:0100017d0b5dbaba-a700b238-8ccb-480e-9586-9edf72ec2f6f-000000@=
email.amazonses.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12=
pt;
        color: rgb(0, 0, 0); font-family: Calibri, Helvetica,
        sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;,
        &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI
        Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
        <p>TLDR- Setting the time ( set_time_next_pps() ) on (multiple)
          X310 doesn't result in USRP time being aligned with PPS edge.
          Works on N320.</p>
        <p><br>
        </p>
        <p>I have two X310's and an N320 as well as an Octoclock. The
          Octoclock does have GPS lock. All four devices are on
          different computers, each of which has its system time set via
          NTP. We are using UHD version=C2=A0<span>UHD_4.1.0.4-0-g25d617c=
a.
            I'll include the find_devices and probe output at the end
            for reference. We're running Ubuntu Bionic=C2=A018.04.6 LTS o=
n
            all machines.</span></p>
        <p><span><br>
          </span></p>
        <p>The Octoclock is accessed via a custom network shim that runs
          on the machine to which the Octoclock is attached. Machines
          with radios ( X's or N's ) can make a request of the custom
          Octoclock network service to get Octoclock time. Octoclock
          time agrees very well with the NTP top of the second (
          typically withing 25ms ) given the inherent uncertainty
          running python code on different machines. By "agrees very
          well" I mean the delta between Octoclock time and NTP time has
          a low variance. All that to say, I do not suspect the
          Octoclock or software used to access the Octoclock.</p>
        <p><br>
        </p>
        <p>The crux of the issue is that when using external clock
          (10MHz)=C2=A0and timing reference (1PPS) ( provided by Octocloc=
k )
          and setting an X310 time ( set_time_next_pps ), I am seeing
          about a 200ms (or 800ms depending on how you are measuring )
          difference in when the X310 reports it is at the top of a
          second versus either time.time() or the octoclock time. I do
          not see this discrepancy with the N320 radio.</p>
        <p><br>
        </p>
        <p>The net effect of this is that if an X and N are set to
          transmit at the very same time, we can see that the X
          transmits 800ish ms early relative to the N using a spectrum
          analyzer ( real hardware ). The N transmits at the correct
          time eyeballing wall clock/computer time.</p>
        <p><br>
        </p>
        <p>Here is some of our test code that we've been using to
          investigate this:</p>
        <div><br>
        </div>
        <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 usrp =3D
            uhd.usrp_sink( ",".join((options.address, "")),
            uhd.stream_args( cpu_format=3D"fc32", args=3D'',
            channels=3Dlist(range(0,1)), ),'', )</span></div>
        <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0
            usrp.set_time_source('external', 0)</span></div>
        <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0
            usrp.set_clock_source('external', 0)</span></div>
        <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0
            usrp.set_time_unknown_pps(uhd.time_spec())</span></div>
        <div><br>
        </div>
        <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 reflock =3D
            str(usrp.get_mboard_sensor("ref_locked", 0)).split(": ")[1]</=
span></div>
        <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 if=C2=A0 =
reflock !=3D
            'locked':</span></div>
        <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 print('reference
            not locked')</span></div>
        <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 print('exiting')</span></div>
        <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 exit()</span></div>
        <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 else:</sp=
an></div>
        <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0
            print('referenced locked')</span></div>
        <div><span style=3D"color:rgb(0,111,201)"><br>
          </span></div>
        <div><span style=3D"color:rgb(0,111,201)"><span style=3D"color:
              rgb(0, 111, 201); font-family: Calibri, Helvetica,
              sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;,
              &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI
              Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;
              font-size: 16px;">=C2=A0 =C2=A0 =C2=A0# the get_octo_time (=
) call is a
              call to our networked octoclock. Just imagine this line as
              querying the octoclock for time</span><br>
          </span></div>
        <div><span style=3D"color:rgb(0,111,201)"><span><span
                style=3D"font-family:Calibri,Helvetica,sans-serif">=C2=A0=
 =C2=A0=C2=A0</span>next_pps
              =3D get_octo_time() + 1=C2=A0 =C2=A0 =C2=A0</span><br>
          </span></div>
        <div><span style=3D"color:rgb(0,111,201)"><span><br>
            </span></span></div>
        <div><span style=3D"color:rgb(0,111,201)"><span>=C2=A0 =C2=A0
              =C2=A0usrp.set_time_next_pps(uhd.time_spec_t(next_pps))</sp=
an><br>
          </span></div>
        <div><br>
        </div>
        <div>
          <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 # sleep=
 for a few
              seconds</span></div>
          <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 time.sl=
eep(2.0)</span></div>
          <div><span style=3D"color:rgb(0,111,201); font-size:12pt">=C2=A0=
 =C2=A0=C2=A0</span><br>
          </div>
          <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0
              oc_time=3Dget_octo_time()</span></div>
          <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 usrp_ti=
me =3D
              usrp.get_time_now()</span></div>
          <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 usrp_ti=
me_last_pps
              =3D usrp.get_time_last_pps()</span></div>
          <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 system_=
time =3D
              time.time()</span></div>
          <div><br>
          </div>
          <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 usrp_ti=
me_source =3D
              usrp.get_time_source(0)</span></div>
          <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 usrp_ti=
me_sources
              =3D usrp.get_time_sources(0)</span></div>
          <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 print(f=
"TRANSMIT::
              OC time is {oc_time} \n" \</span></div>
          <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 f"TRANSMIT::
              usrp_time_last_pps is {usrp_time_last_pps.get_full_secs()}
              \n" \</span></div>
          <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 f"TRANSMIT::
              usrp_time_last_pps_frac is
              {usrp_time_last_pps.get_frac_secs()} \n" \</span></div>
          <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 f"TRANSMIT::
              usrp_time is {usrp_time.get_full_secs()} \n" \</span></div>
          <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 f"TRANSMIT::
              usrp_time_frac is {usrp_time.get_frac_secs()} \n" \</span><=
/div>
          <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 f"TRANSMIT::
              system time is {system_time} \n" \</span></div>
          <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 f"TRANSMIT::
              usrp_time_source is {usrp_time_source} \n" \</span></div>
          <div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 f"TRANSMIT::
              usrp_time_sources are {usrp_time_sources}")</span></div>
          <div><br>
          </div>
          And here is some output from an X310:</div>
        <div><br>
        </div>
        <div>
          <div><span style=3D"font-family:Consolas,Courier,monospace">TRA=
NSMIT::
              OC time is 1636568870=C2=A0</span></div>
          <div><span style=3D"font-family:Consolas,Courier,monospace">TRA=
NSMIT::
              usrp_time_last_pps is 1636568869=C2=A0</span></div>
          <div><span style=3D"font-family:Consolas,Courier,monospace">TRA=
NSMIT::
              usrp_time_last_pps_frac is 0.0=C2=A0</span></div>
          <div><span style=3D"font-family:Consolas,Courier,monospace">TRA=
NSMIT::
              usrp_time is 1636568869=C2=A0</span></div>
          <div><span style=3D"font-family:Consolas,Courier,monospace">TRA=
NSMIT::
              usrp_time_frac is<span
                style=3D"background-color:rgb(255,0,0)"> 0.82498684=C2=A0=
</span></span></div>
          <div><span style=3D"font-family:Consolas,Courier,monospace">TRA=
NSMIT::
              system time is 1636568870.<span style=3D"background-color:
                rgb(0, 255, 0);">0275745=C2=A0</span></span></div>
          <div><span style=3D"font-family:Consolas,Courier,monospace">TRA=
NSMIT::
              usrp_time_source is external=C2=A0</span></div>
          <div><span style=3D"font-family:Consolas,Courier,monospace">TRA=
NSMIT::
              usrp_time_sources are ('internal', 'external', 'gpsdo')</sp=
an></div>
          <div><br>
          </div>
          <span style=3D"font-family:Arial,Helvetica,sans-serif">So the
            problem here is that the fractional time (usrp_time_frac) is
            800ish ms when it should be more like 25ish ms (=C2=A0
            like=C2=A0time.time() i.e. system time ).</span></div>
        <div><span style=3D"font-family:Arial,Helvetica,sans-serif"><br>
          </span></div>
        <div><span style=3D"font-family:Arial,Helvetica,sans-serif">Here
            is the result of running the same code on a host with an
            N320:</span></div>
        <div><span style=3D"font-family:Arial,Helvetica,sans-serif"><br>
          </span></div>
        <div><span style=3D"font-family:Arial,Helvetica,sans-serif">
            <div>TRANSMIT:: OC time is 1636570841=C2=A0</div>
            <div>TRANSMIT:: usrp_time_last_pps is 1636570841=C2=A0</div>
            <div>TRANSMIT:: usrp_time_last_pps_frac is 0.0=C2=A0</div>
            <div>TRANSMIT:: usrp_time is 1636570841=C2=A0</div>
            <div>TRANSMIT:: usrp_time_frac is <span
                style=3D"background-color:rgb(0,255,255)">0.0259380167643=
22915</span><span
                style=3D"background-color:rgb(0,255,255)">=C2=A0</span></=
div>
            <div>TRANSMIT:: system time is 1636570841.<span
                style=3D"background-color: rgb(0, 255, 0);">0290515=C2=A0=
</span></div>
            <div>TRANSMIT:: usrp_time_source is external=C2=A0</div>
            <div>TRANSMIT:: usrp_time_sources are ('internal',
              'external', 'gpsdo', 'sfp0')</div>
            <div><br>
            </div>
          </span><span style=3D"font-family:Arial,Helvetica,sans-serif">
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
  </body>
</html>
--------------nTpCj4zl3JEzLG4Tqk0EvBTz--

--===============8885255484451786890==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8885255484451786890==--
