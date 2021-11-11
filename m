Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AA444D8CF
	for <lists+usrp-users@lfdr.de>; Thu, 11 Nov 2021 16:01:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 32E08381467
	for <lists+usrp-users@lfdr.de>; Thu, 11 Nov 2021 10:01:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="VWRM8Dk+";
	dkim-atps=neutral
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 59E55383F3E
	for <usrp-users@lists.ettus.com>; Thu, 11 Nov 2021 10:00:58 -0500 (EST)
Received: by mail-oi1-f176.google.com with SMTP id be32so11991742oib.11
        for <usrp-users@lists.ettus.com>; Thu, 11 Nov 2021 07:00:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FK++0STkl3SBwrjU1+TpmMhLNFVJ+pGsisSIZxRjkzo=;
        b=VWRM8Dk+lpTT8LjtaLgzBmWiUO5EyNjW7bW+v8ILnMjivG6Hyx25E8/k6ZTLsWKXqj
         UHpOGBZWdiuiQdzpSFabj6rJhdowF8YYlHEdAZN+/pVU60z64ao29npAb1Ho+pzPeh1Y
         LpRPIyye6Eq1EDrGGHEen3/ULorTXis4k7mYOuwrL/Us9BqAc5x5v0s3S4Pf3SmlVZve
         QZGlKMahAmAGOy1yEaGvfVYuI2azxNLaWlin0PbqhrURn/ILTxm9xLApnInyY/jg1pxN
         Q511goYgFxWp6ovZfSlgv8d7JTu+As+DfSMhTIXrq9+Fr58a7OifuSMmldSSS67+bHVR
         +P9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FK++0STkl3SBwrjU1+TpmMhLNFVJ+pGsisSIZxRjkzo=;
        b=qa6ixc0UhiB7N/cPNot5o4UYCMtQGcevKSEl5UKXSCVidoZS0zg/hRYdltY3Xrtnnu
         zsLSvDwcWyLxcU3ZSN0/8r3YPlqChWLLgDWJq0tYRQRfuVNdwkTZzsOLoBP3vAnxPG24
         0spCQ5N16nCbYhs0DYoaZKI0P7IOC81UJ1Iwx/wvMseQS4JquDQ/zwc1wzucQSZvY/ko
         GwSnCol57Mbrj3QWJFD2EaPXTP18oXEsgp/axKqSL4h4LDQ5rWWB8tNGbvH5sEqL+2gz
         atpeiVMSlFYYhlfbxibai1AvNd1xdtRBft1e5qZFvS1yUZ+187RN5Du8GkVRjswzw1Kr
         QIhw==
X-Gm-Message-State: AOAM532NiUw1l4Aa33dGxotSFG/3awS0TP2UCEHXp4UV8awnGJuu9APv
	8mGFPHp38ujRVyzNmLnIB3fbnRbwh8OdTsC2K7K5/g==
X-Google-Smtp-Source: ABdhPJxdk6c4PGTYA6B9cKgvLJOkFxQQdSsokxTCt3C4v2IzRXoMVme3BWH2XcklSb5S7ii2wmCAfnmD8F2xDeSSwjo=
X-Received: by 2002:aca:2408:: with SMTP id n8mr20283808oic.124.1636642857137;
 Thu, 11 Nov 2021 07:00:57 -0800 (PST)
MIME-Version: 1.0
References: <0100017d0b5dbaba-a700b238-8ccb-480e-9586-9edf72ec2f6f-000000@email.amazonses.com>
 <1e9814af-de46-db07-a05e-6ee9905abba6@gmail.com> <CAB__hTT8KfjEqoPyfuOK6faTr0e80bZpd=rTs2_RtWeK3hT1Kw@mail.gmail.com>
 <9469c957-f338-18cb-c335-677da5e9af6e@gmail.com> <0100017d0eeecb2d-7eac68c3-d8ac-4ef0-8eff-21818d8c3ef2-000000@email.amazonses.com>
In-Reply-To: <0100017d0eeecb2d-7eac68c3-d8ac-4ef0-8eff-21818d8c3ef2-000000@email.amazonses.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 11 Nov 2021 10:00:46 -0500
Message-ID: <CAB__hTTsJGMUE8o305ywD836Zns-YZjBy+uke-7gtBD8F05nLg@mail.gmail.com>
To: Robert Clancy <rclancy@ltsnet.net>
Message-ID-Hash: XQYTAHOKFMNXT4Q64UDOBSU5HPMTTCA7
X-Message-ID-Hash: XQYTAHOKFMNXT4Q64UDOBSU5HPMTTCA7
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timing discrepencies with X310 vs N320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XQYTAHOKFMNXT4Q64UDOBSU5HPMTTCA7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4175260973928949134=="

--===============4175260973928949134==
Content-Type: multipart/alternative; boundary="0000000000001ff7ca05d0849c13"

--0000000000001ff7ca05d0849c13
Content-Type: text/plain; charset="UTF-8"

Hi Robert,
I'm not sure if you are talking about the delay that Marcus suggested or
the delay that I suggested. These 2 are different. My suggestion was to
intentionally set a different start time for the X310 relative to the N320
so that it would compensate for this strange PPS delay. With this approach,
when you later tell each USRP to stream at a given time, you will see all
of the streaming start simultaneously.  Of course, this does not solve the
riddle of why the problem exists in the first place - it simply compensates
for it.

As a possible explanation of the "riddle", could it be that one of the
USRPs is synchronizing on the PPS leading edge while the other is using the
falling edge (perhaps through an FPGA bug)?  I'm not sure what the pulse
width of the PPS signal is, but it may be to the tune of 100-200 ms.
Rob

On Thu, Nov 11, 2021 at 7:27 AM Robert Clancy via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I can certainly try to insert a delay between the set_time_unknown_pps()
> and the actual set_time_next_pps() call. However, in my usage of the
> octoclock--- without verifying this in any documentation-- the underlying
> uhd call to an octoclock to get time blocks until the next top of the
> second when it returns. I have guessed this is a feature and not a bug
> effectively giving you the time at the top of a second. Also there is a
> call to check ref lock and a print inbetween as well. I'll add more delay
> between the two calls and see if that makes a difference though.
>
>
> Robert
> ------------------------------
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Wednesday, November 10, 2021 5:13:37 PM
> *To:* Rob Kossler
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: Timing discrepencies with X310 vs N320
>
> On 2021-11-10 17:09, Rob Kossler wrote:
>
> I have had a similar issue.  My theory is that there is some delay in the
> PPS input circuitry and that it is different between N320 and X310 such
> that it is effectively analogous to using different length PPS cables to
> the X310 devices as compared to the N320 devices. If this is true, then I
> expect that the delay is at least constant.  In your application, is it
> possible to set the start time in the set_time_next_pps() command with a
> relative delay with respect to that used for the N320?
>
> We're talking 10s-of-ms here.  That's a HUGE discrepancy, and would be
> hard to achieve with "slight differences in analog circuitry" unless it was
> deliberate (but wrong!).
>
>
>
>
> On Wed, Nov 10, 2021 at 4:20 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 2021-11-10 14:40, Robert Clancy via USRP-users wrote:
>>
>> TLDR- Setting the time ( set_time_next_pps() ) on (multiple) X310 doesn't
>> result in USRP time being aligned with PPS edge. Works on N320.
>>
>>
>> I have two X310's and an N320 as well as an Octoclock. The Octoclock does
>> have GPS lock. All four devices are on different computers, each of which
>> has its system time set via NTP. We are using UHD version UHD_4.1.0.4-0-g25d617ca.
>> I'll include the find_devices and probe output at the end for reference.
>> We're running Ubuntu Bionic 18.04.6 LTS on all machines.
>>
>>
>> The Octoclock is accessed via a custom network shim that runs on the
>> machine to which the Octoclock is attached. Machines with radios ( X's or
>> N's ) can make a request of the custom Octoclock network service to get
>> Octoclock time. Octoclock time agrees very well with the NTP top of the
>> second ( typically withing 25ms ) given the inherent uncertainty running
>> python code on different machines. By "agrees very well" I mean the delta
>> between Octoclock time and NTP time has a low variance. All that to say, I
>> do not suspect the Octoclock or software used to access the Octoclock.
>>
>>
>> The crux of the issue is that when using external clock (10MHz) and
>> timing reference (1PPS) ( provided by Octoclock ) and setting an X310 time
>> ( set_time_next_pps ), I am seeing about a 200ms (or 800ms depending on how
>> you are measuring ) difference in when the X310 reports it is at the top of
>> a second versus either time.time() or the octoclock time. I do not see this
>> discrepancy with the N320 radio.
>>
>>
>> The net effect of this is that if an X and N are set to transmit at the
>> very same time, we can see that the X transmits 800ish ms early relative to
>> the N using a spectrum analyzer ( real hardware ). The N transmits at the
>> correct time eyeballing wall clock/computer time.
>>
>>
>> Here is some of our test code that we've been using to investigate this:
>>
>>     usrp = uhd.usrp_sink( ",".join((options.address, "")),
>> uhd.stream_args( cpu_format="fc32", args='', channels=list(range(0,1)),
>> ),'', )
>>     usrp.set_time_source('external', 0)
>>     usrp.set_clock_source('external', 0)
>>     usrp.set_time_unknown_pps(uhd.time_spec())
>>
>>     reflock = str(usrp.get_mboard_sensor("ref_locked", 0)).split(": ")[1]
>>     if  reflock != 'locked':
>>         print('reference not locked')
>>         print('exiting')
>>         exit()
>>     else:
>>         print('referenced locked')
>>
>>      # the get_octo_time () call is a call to our networked octoclock.
>> Just imagine this line as querying the octoclock for time
>>     next_pps = get_octo_time() + 1
>>
>>      usrp.set_time_next_pps(uhd.time_spec_t(next_pps))
>>
>>     # sleep for a few seconds
>>     time.sleep(2.0)
>>
>>     oc_time=get_octo_time()
>>     usrp_time = usrp.get_time_now()
>>     usrp_time_last_pps = usrp.get_time_last_pps()
>>     system_time = time.time()
>>
>>     usrp_time_source = usrp.get_time_source(0)
>>     usrp_time_sources = usrp.get_time_sources(0)
>>     print(f"TRANSMIT:: OC time is {oc_time} \n" \
>>           f"TRANSMIT:: usrp_time_last_pps is
>> {usrp_time_last_pps.get_full_secs()} \n" \
>>           f"TRANSMIT:: usrp_time_last_pps_frac is
>> {usrp_time_last_pps.get_frac_secs()} \n" \
>>           f"TRANSMIT:: usrp_time is {usrp_time.get_full_secs()} \n" \
>>           f"TRANSMIT:: usrp_time_frac is {usrp_time.get_frac_secs()} \n" \
>>           f"TRANSMIT:: system time is {system_time} \n" \
>>           f"TRANSMIT:: usrp_time_source is {usrp_time_source} \n" \
>>           f"TRANSMIT:: usrp_time_sources are {usrp_time_sources}")
>>
>> And here is some output from an X310:
>>
>> TRANSMIT:: OC time is 1636568870
>> TRANSMIT:: usrp_time_last_pps is 1636568869
>> TRANSMIT:: usrp_time_last_pps_frac is 0.0
>> TRANSMIT:: usrp_time is 1636568869
>> TRANSMIT:: usrp_time_frac is 0.82498684
>> TRANSMIT:: system time is 1636568870.0275745
>> TRANSMIT:: usrp_time_source is external
>> TRANSMIT:: usrp_time_sources are ('internal', 'external', 'gpsdo')
>>
>> So the problem here is that the fractional time (usrp_time_frac) is
>> 800ish ms when it should be more like 25ish ms (  like time.time() i.e.
>> system time ).
>>
>> Here is the result of running the same code on a host with an N320:
>>
>> TRANSMIT:: OC time is 1636570841
>> TRANSMIT:: usrp_time_last_pps is 1636570841
>> TRANSMIT:: usrp_time_last_pps_frac is 0.0
>> TRANSMIT:: usrp_time is 1636570841
>> TRANSMIT:: usrp_time_frac is 0.025938016764322915
>> TRANSMIT:: system time is 1636570841.0290515
>> TRANSMIT:: usrp_time_source is external
>> TRANSMIT:: usrp_time_sources are ('internal', 'external', 'gpsdo', 'sfp0')
>>
>> *    product: n320*
>> *    type: n3xx*
>>
>>
>> I have a wild guess.
>>
>> You:
>>
>> set_time_unknown_pps()
>> do a wee bit of stuff
>> set_time_next_pps(), and it's possibly that those two "set_time.*pps()"
>> calls are too close together for the X310 hardware, and it's getting the
>> wrong notion of time?
>>
>> If you insert a, let's say, 50ms sleep just before the
>> set_time_next_pps(), how does this change things?
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001ff7ca05d0849c13
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Robert,<div>I&#39;m not sure if you ar=
e talking about the delay that Marcus suggested or the delay that I suggest=
ed. These 2 are different. My suggestion was to intentionally set a differe=
nt start time for the X310 relative to the N320 so that it would compensate=
 for this strange PPS delay. With this approach, when you later tell each U=
SRP to stream at a given time, you will see all of the streaming start simu=
ltaneously.=C2=A0 Of course, this does not solve the riddle of why the prob=
lem exists in the first place - it simply compensates for it.</div><div><br=
></div><div>As a possible explanation of the &quot;riddle&quot;, could it b=
e that one of the USRPs is synchronizing on the PPS leading edge while the =
other is using the falling edge (perhaps through an FPGA bug)?=C2=A0 I&#39;=
m not sure what the pulse width of the PPS signal is, but it may be to the =
tune of 100-200 ms.</div><div>Rob</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 11, 2021 at 7:27 AM Robe=
rt Clancy via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">



<div>

<div id=3D"gmail-m_-1885766894897008177divtagdefaultwrapper" style=3D"font-=
size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D=
"ltr">
<p>I can certainly try to insert a delay between the set_time_unknown_pps()=
 and the actual set_time_next_pps() call. However, in my usage of the octoc=
lock--- without verifying this in any documentation-- the underlying uhd ca=
ll to an octoclock to get time blocks
 until the next top of the second when it returns. I have guessed this is a=
 feature and not a bug effectively giving you the time at the top of a seco=
nd. Also there is a call to check ref lock and a print inbetween as well. I=
&#39;ll add more delay between the two
 calls and see if that makes a difference though.</p>
<p><br>
</p>
<p>Robert</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-1885766894897008177divRplyFwdMsg" dir=3D"ltr"><font fac=
e=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>Fro=
m:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" targe=
t=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, November 10, 2021 5:13:37 PM<br>
<b>To:</b> Rob Kossler<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] Re: Timing discrepencies with X310 vs N320</fo=
nt>
<div>=C2=A0</div>
</div>
<div>
<div>On 2021-11-10 17:09, Rob Kossler wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">I have had a similar issue.=C2=A0 My theory is that there =
is some delay in the PPS input circuitry and that it is different between N=
320 and X310 such that it is effectively analogous to using different lengt=
h PPS cables to the X310 devices as compared
 to the N320 devices. If this is true, then I expect that the delay is at l=
east constant.=C2=A0 In your application, is it possible to set the start t=
ime in the set_time_next_pps() command with a relative delay with respect t=
o that used for the N320?</div>
</blockquote>
We&#39;re talking 10s-of-ms here.=C2=A0 That&#39;s a HUGE discrepancy, and =
would be hard to achieve with &quot;slight differences in analog circuitry&=
quot; unless it was deliberate (but wrong!).<br>
<br>
<br>
<br>
<blockquote type=3D"cite">
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 10, 2021 at 4:20 PM Marcu=
s D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"=
>patchvonbraun@gmail.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div>
<div>On 2021-11-10 14:40, Robert Clancy via USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div id=3D"gmail-m_-1885766894897008177gmail-m_5596797367432940650divtagdef=
aultwrapper" dir=3D"ltr">
<p>TLDR- Setting the time ( set_time_next_pps() ) on (multiple) X310 doesn&=
#39;t result in USRP time being aligned with PPS edge. Works on N320.</p>
<p><br>
</p>
<p>I have two X310&#39;s and an N320 as well as an Octoclock. The Octoclock=
 does have GPS lock. All four devices are on different computers, each of w=
hich has its system time set via NTP. We are using UHD version=C2=A0<span>U=
HD_4.1.0.4-0-g25d617ca. I&#39;ll include the
 find_devices and probe output at the end for reference. We&#39;re running =
Ubuntu Bionic=C2=A018.04.6 LTS on all machines.</span></p>
<p><span><br>
</span></p>
<p>The Octoclock is accessed via a custom network shim that runs on the mac=
hine to which the Octoclock is attached. Machines with radios ( X&#39;s or =
N&#39;s ) can make a request of the custom Octoclock network service to get=
 Octoclock time. Octoclock time agrees very
 well with the NTP top of the second ( typically withing 25ms ) given the i=
nherent uncertainty running python code on different machines. By &quot;agr=
ees very well&quot; I mean the delta between Octoclock time and NTP time ha=
s a low variance. All that to say, I do not
 suspect the Octoclock or software used to access the Octoclock.</p>
<p><br>
</p>
<p>The crux of the issue is that when using external clock (10MHz)=C2=A0and=
 timing reference (1PPS) ( provided by Octoclock ) and setting an X310 time=
 ( set_time_next_pps ), I am seeing about a 200ms (or 800ms depending on ho=
w you are measuring ) difference in when
 the X310 reports it is at the top of a second versus either time.time() or=
 the octoclock time. I do not see this discrepancy with the N320 radio.</p>
<p><br>
</p>
<p>The net effect of this is that if an X and N are set to transmit at the =
very same time, we can see that the X transmits 800ish ms early relative to=
 the N using a spectrum analyzer ( real hardware ). The N transmits at the =
correct time eyeballing wall clock/computer
 time.</p>
<p><br>
</p>
<p>Here is some of our test code that we&#39;ve been using to investigate t=
his:</p>
<div><br>
</div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 usrp =3D uhd.usrp_s=
ink( &quot;,&quot;.join((options.address, &quot;&quot;)), uhd.stream_args( =
cpu_format=3D&quot;fc32&quot;, args=3D&#39;&#39;, channels=3Dlist(range(0,1=
)), ),&#39;&#39;, )</span></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 usrp.set_time_sourc=
e(&#39;external&#39;, 0)</span></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 usrp.set_clock_sour=
ce(&#39;external&#39;, 0)</span></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 usrp.set_time_unkno=
wn_pps(uhd.time_spec())</span></div>
<div><br>
</div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 reflock =3D str(usr=
p.get_mboard_sensor(&quot;ref_locked&quot;, 0)).split(&quot;: &quot;)[1]</s=
pan></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 if=C2=A0 reflock !=
=3D &#39;locked&#39;:</span></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 print=
(&#39;reference not locked&#39;)</span></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 print=
(&#39;exiting&#39;)</span></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 exit(=
)</span></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 else:</span></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 print=
(&#39;referenced locked&#39;)</span></div>
<div><span style=3D"color:rgb(0,111,201)"><br>
</span></div>
<div><span style=3D"color:rgb(0,111,201)"><span>=C2=A0 =C2=A0 =C2=A0# the g=
et_octo_time () call is a call to our networked octoclock. Just imagine thi=
s line as querying the octoclock for time</span><br>
</span></div>
<div><span style=3D"color:rgb(0,111,201)"><span><span style=3D"font-family:=
Calibri,Helvetica,sans-serif">=C2=A0 =C2=A0=C2=A0</span>next_pps =3D get_oc=
to_time() + 1=C2=A0 =C2=A0 =C2=A0</span><br>
</span></div>
<div><span style=3D"color:rgb(0,111,201)"><span><br>
</span></span></div>
<div><span style=3D"color:rgb(0,111,201)"><span>=C2=A0 =C2=A0 =C2=A0usrp.se=
t_time_next_pps(uhd.time_spec_t(next_pps))</span><br>
</span></div>
<div><br>
</div>
<div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 # sleep for a few s=
econds</span></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 time.sleep(2.0)</sp=
an></div>
<div><span style=3D"color:rgb(0,111,201);font-size:12pt">=C2=A0 =C2=A0=C2=
=A0</span><br>
</div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 oc_time=3Dget_octo_=
time()</span></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 usrp_time =3D usrp.=
get_time_now()</span></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 usrp_time_last_pps =
=3D usrp.get_time_last_pps()</span></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 system_time =3D tim=
e.time()</span></div>
<div><br>
</div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 usrp_time_source =
=3D usrp.get_time_source(0)</span></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 usrp_time_sources =
=3D usrp.get_time_sources(0)</span></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 print(f&quot;TRANSM=
IT:: OC time is {oc_time} \n&quot; \</span></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 f&quot;TRANSMIT:: usrp_time_last_pps is {usrp_time_last_pps.get_full_se=
cs()} \n&quot; \</span></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 f&quot;TRANSMIT:: usrp_time_last_pps_frac is {usrp_time_last_pps.get_fr=
ac_secs()} \n&quot; \</span></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 f&quot;TRANSMIT:: usrp_time is {usrp_time.get_full_secs()} \n&quot; \</=
span></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 f&quot;TRANSMIT:: usrp_time_frac is {usrp_time.get_frac_secs()} \n&quot=
; \</span></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 f&quot;TRANSMIT:: system time is {system_time} \n&quot; \</span></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 f&quot;TRANSMIT:: usrp_time_source is {usrp_time_source} \n&quot; \</sp=
an></div>
<div><span style=3D"color:rgb(0,111,201)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 f&quot;TRANSMIT:: usrp_time_sources are {usrp_time_sources}&quot;)</spa=
n></div>
<div><br>
</div>
And here is some output from an X310:</div>
<div><br>
</div>
<div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: OC t=
ime is 1636568870=C2=A0</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time_last_pps is 1636568869=C2=A0</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time_last_pps_frac is 0.0=C2=A0</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time is 1636568869=C2=A0</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time_frac is<span style=3D"background-color:rgb(255,0,0)"> 0.82498684=C2=
=A0</span></span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: syst=
em time is 1636568870.<span style=3D"background-color:rgb(0,255,0)">0275745=
=C2=A0</span></span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time_source is external=C2=A0</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time_sources are (&#39;internal&#39;, &#39;external&#39;, &#39;gpsdo&#39;)=
</span></div>
<div><br>
</div>
<span style=3D"font-family:Arial,Helvetica,sans-serif">So the problem here =
is that the fractional time (usrp_time_frac) is 800ish ms when it should be=
 more like 25ish ms (=C2=A0 like=C2=A0time.time() i.e. system time ).</span=
></div>
<div><span style=3D"font-family:Arial,Helvetica,sans-serif"><br>
</span></div>
<div><span style=3D"font-family:Arial,Helvetica,sans-serif">Here is the res=
ult of running the same code on a host with an N320:</span></div>
<div><span style=3D"font-family:Arial,Helvetica,sans-serif"><br>
</span></div>
<div><span style=3D"font-family:Arial,Helvetica,sans-serif">
<div>TRANSMIT:: OC time is 1636570841=C2=A0</div>
<div>TRANSMIT:: usrp_time_last_pps is 1636570841=C2=A0</div>
<div>TRANSMIT:: usrp_time_last_pps_frac is 0.0=C2=A0</div>
<div>TRANSMIT:: usrp_time is 1636570841=C2=A0</div>
<div>TRANSMIT:: usrp_time_frac is <span style=3D"background-color:rgb(0,255=
,255)">0.025938016764322915</span><span style=3D"background-color:rgb(0,255=
,255)">=C2=A0</span></div>
<div>TRANSMIT:: system time is 1636570841.<span style=3D"background-color:r=
gb(0,255,0)">0290515=C2=A0</span></div>
<div>TRANSMIT:: usrp_time_source is external=C2=A0</div>
<div>TRANSMIT:: usrp_time_sources are (&#39;internal&#39;, &#39;external&#3=
9;, &#39;gpsdo&#39;, &#39;sfp0&#39;)</div>
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
set_time_next_pps(), and it&#39;s possibly that those two &quot;set_time.*p=
ps()&quot; calls are too close together for the X310 hardware, and it&#39;s=
 getting the wrong notion of time?<br>
<br>
If you insert a, let&#39;s say, 50ms sleep just before the set_time_next_pp=
s(), how does this change things?<br>
<br>
<br>
<br>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</blockquote>
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000001ff7ca05d0849c13--

--===============4175260973928949134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4175260973928949134==--
