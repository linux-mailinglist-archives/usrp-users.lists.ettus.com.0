Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A238344D6A3
	for <lists+usrp-users@lfdr.de>; Thu, 11 Nov 2021 13:28:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 555DD3843B4
	for <lists+usrp-users@lfdr.de>; Thu, 11 Nov 2021 07:28:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ltsnet.net header.i=@ltsnet.net header.b="Nd189/cf";
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=amazonses.com header.i=@amazonses.com header.b="Zc3WOQ/K";
	dkim-atps=neutral
Received: from a48-95.smtp-out.amazonses.com (a48-95.smtp-out.amazonses.com [54.240.48.95])
	by mm2.emwd.com (Postfix) with ESMTPS id 0C380381117
	for <usrp-users@lists.ettus.com>; Thu, 11 Nov 2021 07:17:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=5yiw3lu2bciat6xpj24ncpgudvrinkei; d=ltsnet.net; t=1636633070;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:Content-Type:MIME-Version;
	bh=o77BZ/udQpymm+nWvhVe57xARkF2j9wV/A70OB54N6g=;
	b=Nd189/cfHZGjrdh0jQy0GxiYInBY5WIsCG+rbynNu8k3dhHHNpL0dFppuWXhaZf2
	fVOmcl/KGP7jyHMl16xenC/Ml6JOFrG/xUECwORZ55+fjXvPFUh4vTesxU2kspqfCiS
	Loc+k6C8hN1csNQ+ZXV8fdhUQ3XrYLzdHtYfDtog=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ug7nbtf4gccmlpwj322ax3p6ow6yfsug; d=amazonses.com; t=1636633070;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:Content-Type:MIME-Version:Feedback-ID;
	bh=o77BZ/udQpymm+nWvhVe57xARkF2j9wV/A70OB54N6g=;
	b=Zc3WOQ/KzX33lttY5b4xmZ/6E1vT8qkec0YND06S1TZxoM/yM1GRDjnf+Jfahr+3
	WbCWOg3YrImvgnHSGux1C72o/RNI2Qs/74E2OjH/8cWGm43QHoXheRN3tdWIXyPIRhW
	eRApaeJ93WJDgsdMd2d0SJZkDbKhJkX3YbtYqfYU=
X-ASG-Debug-ID: 1636633069-13da5816dd13390001-5wTQH4
X-Barracuda-Envelope-From: rclancy@ltsnet.net
X-Barracuda-Effective-Source-IP: UNKNOWN[65.127.220.148]
X-Barracuda-Apparent-Source-IP: 65.127.220.148
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, Rob Kossler <rkossler@nd.edu>
Thread-Topic: [USRP-users] Re: Timing discrepencies with X310 vs N320
X-ASG-Orig-Subj: Re: [USRP-users] Re: Timing discrepencies with X310 vs N320
Thread-Index: AQHX1moIBLmtdSyoUke7WQAQSP/Glav9l/YAgAAONgCAAAE8gIAAllbQ
Date: Thu, 11 Nov 2021 12:17:50 +0000
Message-ID: <0100017d0eeecb2d-7eac68c3-d8ac-4ef0-8eff-21818d8c3ef2-000000@email.amazonses.com>
References: <0100017d0b5dbaba-a700b238-8ccb-480e-9586-9edf72ec2f6f-000000@email.amazonses.com>
 <1e9814af-de46-db07-a05e-6ee9905abba6@gmail.com>
 <CAB__hTT8KfjEqoPyfuOK6faTr0e80bZpd=rTs2_RtWeK3hT1Kw@mail.gmail.com>,<9469c957-f338-18cb-c335-677da5e9af6e@gmail.com>
In-Reply-To: <9469c957-f338-18cb-c335-677da5e9af6e@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [96.244.71.70]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[65.127.220.148]
X-Barracuda-Start-Time: 1636633069
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://mx0.ltsnet.net:443/cgi-mod/mark.cgi
X-Barracuda-BRTS-Status: 1
X-Virus-Scanned: by bsmtpd at ltsnet.net
X-Barracuda-Scan-Msg-Size: 19732
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.93886
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Feedback-ID: 1.us-east-1.V/CRDAuSMjsGd/XgcRknIHwtEgjJofZ/T2DY67iFlVQ=:AmazonSES
X-SES-Outgoing: 2021.11.11-54.240.48.95
Message-ID-Hash: IDEQELN2UWWWA5ATE4WDPLFWG76SLDW3
X-Message-ID-Hash: IDEQELN2UWWWA5ATE4WDPLFWG76SLDW3
X-MailFrom: 0100017d0eeecb2d-7eac68c3-d8ac-4ef0-8eff-21818d8c3ef2-000000@mailfrom.ltsnet.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timing discrepencies with X310 vs N320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IDEQELN2UWWWA5ATE4WDPLFWG76SLDW3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Robert Clancy via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robert Clancy <rclancy@ltsnet.net>
Content-Type: multipart/mixed; boundary="===============5225256102199284924=="

--===============5225256102199284924==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_84c395fa284d4d05aa756250dc5cc624ltsnetnet_"

--_000_84c395fa284d4d05aa756250dc5cc624ltsnetnet_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I can certainly try to insert a delay between the set_time_unknown_pps() an=
d the actual set_time_next_pps() call. However, in my usage of the octocloc=
k--- without verifying this in any documentation-- the underlying uhd call =
to an octoclock to get time blocks until the next top of the second when it=
 returns. I have guessed this is a feature and not a bug effectively giving=
 you the time at the top of a second. Also there is a call to check ref loc=
k and a print inbetween as well. I'll add more delay between the two calls =
and see if that makes a difference though.


Robert

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Wednesday, November 10, 2021 5:13:37 PM
To: Rob Kossler
Cc: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: Timing discrepencies with X310 vs N320

On 2021-11-10 17:09, Rob Kossler wrote:
I have had a similar issue.  My theory is that there is some delay in the P=
PS input circuitry and that it is different between N320 and X310 such that=
 it is effectively analogous to using different length PPS cables to the X3=
10 devices as compared to the N320 devices. If this is true, then I expect =
that the delay is at least constant.  In your application, is it possible t=
o set the start time in the set_time_next_pps() command with a relative del=
ay with respect to that used for the N320?
We're talking 10s-of-ms here.  That's a HUGE discrepancy, and would be hard=
 to achieve with "slight differences in analog circuitry" unless it was del=
iberate (but wrong!).




On Wed, Nov 10, 2021 at 4:20 PM Marcus D. Leech <patchvonbraun@gmail.com<ma=
ilto:patchvonbraun@gmail.com>> wrote:
On 2021-11-10 14:40, Robert Clancy via USRP-users wrote:

TLDR- Setting the time ( set_time_next_pps() ) on (multiple) X310 doesn't r=
esult in USRP time being aligned with PPS edge. Works on N320.


I have two X310's and an N320 as well as an Octoclock. The Octoclock does h=
ave GPS lock. All four devices are on different computers, each of which ha=
s its system time set via NTP. We are using UHD version UHD_4.1.0.4-0-g25d6=
17ca. I'll include the find_devices and probe output at the end for referen=
ce. We're running Ubuntu Bionic 18.04.6 LTS on all machines.


The Octoclock is accessed via a custom network shim that runs on the machin=
e to which the Octoclock is attached. Machines with radios ( X's or N's ) c=
an make a request of the custom Octoclock network service to get Octoclock =
time. Octoclock time agrees very well with the NTP top of the second ( typi=
cally withing 25ms ) given the inherent uncertainty running python code on =
different machines. By "agrees very well" I mean the delta between Octocloc=
k time and NTP time has a low variance. All that to say, I do not suspect t=
he Octoclock or software used to access the Octoclock.


The crux of the issue is that when using external clock (10MHz) and timing =
reference (1PPS) ( provided by Octoclock ) and setting an X310 time ( set_t=
ime_next_pps ), I am seeing about a 200ms (or 800ms depending on how you ar=
e measuring ) difference in when the X310 reports it is at the top of a sec=
ond versus either time.time() or the octoclock time. I do not see this disc=
repancy with the N320 radio.


The net effect of this is that if an X and N are set to transmit at the ver=
y same time, we can see that the X transmits 800ish ms early relative to th=
e N using a spectrum analyzer ( real hardware ). The N transmits at the cor=
rect time eyeballing wall clock/computer time.


Here is some of our test code that we've been using to investigate this:

    usrp =3D uhd.usrp_sink( ",".join((options.address, "")), uhd.stream_arg=
s( cpu_format=3D"fc32", args=3D'', channels=3Dlist(range(0,1)), ),'', )
    usrp.set_time_source('external', 0)
    usrp.set_clock_source('external', 0)
    usrp.set_time_unknown_pps(uhd.time_spec())

    reflock =3D str(usrp.get_mboard_sensor("ref_locked", 0)).split(": ")[1]
    if  reflock !=3D 'locked':
        print('reference not locked')
        print('exiting')
        exit()
    else:
        print('referenced locked')

     # the get_octo_time () call is a call to our networked octoclock. Just=
 imagine this line as querying the octoclock for time
    next_pps =3D get_octo_time() + 1

     usrp.set_time_next_pps(uhd.time_spec_t(next_pps))

    # sleep for a few seconds
    time.sleep(2.0)

    oc_time=3Dget_octo_time()
    usrp_time =3D usrp.get_time_now()
    usrp_time_last_pps =3D usrp.get_time_last_pps()
    system_time =3D time.time()

    usrp_time_source =3D usrp.get_time_source(0)
    usrp_time_sources =3D usrp.get_time_sources(0)
    print(f"TRANSMIT:: OC time is {oc_time} \n" \
          f"TRANSMIT:: usrp_time_last_pps is {usrp_time_last_pps.get_full_s=
ecs()} \n" \
          f"TRANSMIT:: usrp_time_last_pps_frac is {usrp_time_last_pps.get_f=
rac_secs()} \n" \
          f"TRANSMIT:: usrp_time is {usrp_time.get_full_secs()} \n" \
          f"TRANSMIT:: usrp_time_frac is {usrp_time.get_frac_secs()} \n" \
          f"TRANSMIT:: system time is {system_time} \n" \
          f"TRANSMIT:: usrp_time_source is {usrp_time_source} \n" \
          f"TRANSMIT:: usrp_time_sources are {usrp_time_sources}")

And here is some output from an X310:

TRANSMIT:: OC time is 1636568870
TRANSMIT:: usrp_time_last_pps is 1636568869
TRANSMIT:: usrp_time_last_pps_frac is 0.0
TRANSMIT:: usrp_time is 1636568869
TRANSMIT:: usrp_time_frac is 0.82498684
TRANSMIT:: system time is 1636568870.0275745
TRANSMIT:: usrp_time_source is external
TRANSMIT:: usrp_time_sources are ('internal', 'external', 'gpsdo')

So the problem here is that the fractional time (usrp_time_frac) is 800ish =
ms when it should be more like 25ish ms (  like time.time() i.e. system tim=
e ).

Here is the result of running the same code on a host with an N320:

TRANSMIT:: OC time is 1636570841
TRANSMIT:: usrp_time_last_pps is 1636570841
TRANSMIT:: usrp_time_last_pps_frac is 0.0
TRANSMIT:: usrp_time is 1636570841
TRANSMIT:: usrp_time_frac is 0.025938016764322915
TRANSMIT:: system time is 1636570841.0290515
TRANSMIT:: usrp_time_source is external
TRANSMIT:: usrp_time_sources are ('internal', 'external', 'gpsdo', 'sfp0')

    product: n320
    type: n3xx


I have a wild guess.

You:

set_time_unknown_pps()
do a wee bit of stuff
set_time_next_pps(), and it's possibly that those two "set_time.*pps()" cal=
ls are too close together for the X310 hardware, and it's getting the wrong=
 notion of time?

If you insert a, let's say, 50ms sleep just before the set_time_next_pps(),=
 how does this change things?



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>


--_000_84c395fa284d4d05aa756250dc5cc624ltsnetnet_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>I can certainly try to insert a delay between the set_time_unknown_pps()=
 and the actual set_time_next_pps() call. However, in my usage of the octoc=
lock--- without verifying this in any documentation-- the underlying uhd ca=
ll to an octoclock to get time blocks
 until the next top of the second when it returns. I have guessed this is a=
 feature and not a bug effectively giving you the time at the top of a seco=
nd. Also there is a call to check ref lock and a print inbetween as well. I=
'll add more delay between the two
 calls and see if that makes a difference though.</p>
<p><br>
</p>
<p>Robert</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, November 10, 2021 5:13:37 PM<br>
<b>To:</b> Rob Kossler<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Re: Timing discrepencies with X310 vs N320</fo=
nt>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"moz-cite-prefix">On 2021-11-10 17:09, Rob Kossler wrote:<br>
</div>
<blockquote type=3D"cite" cite=3D"mid:CAB__hTT8KfjEqoPyfuOK6faTr0e80bZpd=3D=
rTs2_RtWeK3hT1Kw@mail.gmail.com">
<div dir=3D"ltr">I have had a similar issue.&nbsp; My theory is that there =
is some delay in the PPS input circuitry and that it is different between N=
320 and X310 such that it is effectively analogous to using different lengt=
h PPS cables to the X310 devices as compared
 to the N320 devices. If this is true, then I expect that the delay is at l=
east constant.&nbsp; In your application, is it possible to set the start t=
ime in the set_time_next_pps() command with a relative delay with respect t=
o that used for the N320?</div>
</blockquote>
We're talking 10s-of-ms here.&nbsp; That's a HUGE discrepancy, and would be=
 hard to achieve with &quot;slight differences in analog circuitry&quot; un=
less it was deliberate (but wrong!).<br>
<br>
<br>
<br>
<blockquote type=3D"cite" cite=3D"mid:CAB__hTT8KfjEqoPyfuOK6faTr0e80bZpd=3D=
rTs2_RtWeK3hT1Kw@mail.gmail.com">
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 10, 2021 at 4:20 PM Marcu=
s D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=
=3D"true" class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&gt; w=
rote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<div>
<div>On 2021-11-10 14:40, Robert Clancy via USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div id=3D"gmail-m_5596797367432940650divtagdefaultwrapper" dir=3D"ltr">
<p>TLDR- Setting the time ( set_time_next_pps() ) on (multiple) X310 doesn'=
t result in USRP time being aligned with PPS edge. Works on N320.</p>
<p><br>
</p>
<p>I have two X310's and an N320 as well as an Octoclock. The Octoclock doe=
s have GPS lock. All four devices are on different computers, each of which=
 has its system time set via NTP. We are using UHD version&nbsp;<span>UHD_4=
.1.0.4-0-g25d617ca. I'll include the
 find_devices and probe output at the end for reference. We're running Ubun=
tu Bionic&nbsp;18.04.6 LTS on all machines.</span></p>
<p><span><br>
</span></p>
<p>The Octoclock is accessed via a custom network shim that runs on the mac=
hine to which the Octoclock is attached. Machines with radios ( X's or N's =
) can make a request of the custom Octoclock network service to get Octoclo=
ck time. Octoclock time agrees very
 well with the NTP top of the second ( typically withing 25ms ) given the i=
nherent uncertainty running python code on different machines. By &quot;agr=
ees very well&quot; I mean the delta between Octoclock time and NTP time ha=
s a low variance. All that to say, I do not
 suspect the Octoclock or software used to access the Octoclock.</p>
<p><br>
</p>
<p>The crux of the issue is that when using external clock (10MHz)&nbsp;and=
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
<p>Here is some of our test code that we've been using to investigate this:=
</p>
<div><br>
</div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp =3D uhd.usrp_s=
ink( &quot;,&quot;.join((options.address, &quot;&quot;)), uhd.stream_args( =
cpu_format=3D&quot;fc32&quot;, args=3D'', channels=3Dlist(range(0,1)), ),''=
, )</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp.set_time_sourc=
e('external', 0)</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp.set_clock_sour=
ce('external', 0)</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp.set_time_unkno=
wn_pps(uhd.time_spec())</span></div>
<div><br>
</div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; reflock =3D str(usr=
p.get_mboard_sensor(&quot;ref_locked&quot;, 0)).split(&quot;: &quot;)[1]</s=
pan></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; if&nbsp; reflock !=
=3D 'locked':</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; print=
('reference not locked')</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; print=
('exiting')</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; exit(=
)</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; else:</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; print=
('referenced locked')</span></div>
<div><span style=3D"color:rgb(0,111,201)"><br>
</span></div>
<div><span style=3D"color:rgb(0,111,201)"><span>&nbsp; &nbsp; &nbsp;# the g=
et_octo_time () call is a call to our networked octoclock. Just imagine thi=
s line as querying the octoclock for time</span><br>
</span></div>
<div><span style=3D"color:rgb(0,111,201)"><span><span style=3D"font-family:=
Calibri,Helvetica,sans-serif">&nbsp; &nbsp;&nbsp;</span>next_pps =3D get_oc=
to_time() &#43; 1&nbsp; &nbsp; &nbsp;</span><br>
</span></div>
<div><span style=3D"color:rgb(0,111,201)"><span><br>
</span></span></div>
<div><span style=3D"color:rgb(0,111,201)"><span>&nbsp; &nbsp; &nbsp;usrp.se=
t_time_next_pps(uhd.time_spec_t(next_pps))</span><br>
</span></div>
<div><br>
</div>
<div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; # sleep for a few s=
econds</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; time.sleep(2.0)</sp=
an></div>
<div><span style=3D"color:rgb(0,111,201);font-size:12pt">&nbsp; &nbsp;&nbsp=
;</span><br>
</div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; oc_time=3Dget_octo_=
time()</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp_time =3D usrp.=
get_time_now()</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp_time_last_pps =
=3D usrp.get_time_last_pps()</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; system_time =3D tim=
e.time()</span></div>
<div><br>
</div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp_time_source =
=3D usrp.get_time_source(0)</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp_time_sources =
=3D usrp.get_time_sources(0)</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; print(f&quot;TRANSM=
IT:: OC time is {oc_time} \n&quot; \</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: usrp_time_last_pps is {usrp_time_last_pps.get_full_secs=
()} \n&quot; \</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: usrp_time_last_pps_frac is {usrp_time_last_pps.get_frac=
_secs()} \n&quot; \</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: usrp_time is {usrp_time.get_full_secs()} \n&quot; \</sp=
an></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: usrp_time_frac is {usrp_time.get_frac_secs()} \n&quot; =
\</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: system time is {system_time} \n&quot; \</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: usrp_time_source is {usrp_time_source} \n&quot; \</span=
></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: usrp_time_sources are {usrp_time_sources}&quot;)</span>=
</div>
<div><br>
</div>
And here is some output from an X310:</div>
<div><br>
</div>
<div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: OC t=
ime is 1636568870&nbsp;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time_last_pps is 1636568869&nbsp;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time_last_pps_frac is 0.0&nbsp;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time is 1636568869&nbsp;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time_frac is<span style=3D"background-color:rgb(255,0,0)"> 0.82498684&nbsp=
;</span></span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: syst=
em time is 1636568870.<span style=3D"background-color:rgb(0,255,0)">0275745=
&nbsp;</span></span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time_source is external&nbsp;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time_sources are ('internal', 'external', 'gpsdo')</span></div>
<div><br>
</div>
<span style=3D"font-family:Arial,Helvetica,sans-serif">So the problem here =
is that the fractional time (usrp_time_frac) is 800ish ms when it should be=
 more like 25ish ms (&nbsp; like&nbsp;time.time() i.e. system time ).</span=
></div>
<div><span style=3D"font-family:Arial,Helvetica,sans-serif"><br>
</span></div>
<div><span style=3D"font-family:Arial,Helvetica,sans-serif">Here is the res=
ult of running the same code on a host with an N320:</span></div>
<div><span style=3D"font-family:Arial,Helvetica,sans-serif"><br>
</span></div>
<div><span style=3D"font-family:Arial,Helvetica,sans-serif">
<div>TRANSMIT:: OC time is 1636570841&nbsp;</div>
<div>TRANSMIT:: usrp_time_last_pps is 1636570841&nbsp;</div>
<div>TRANSMIT:: usrp_time_last_pps_frac is 0.0&nbsp;</div>
<div>TRANSMIT:: usrp_time is 1636570841&nbsp;</div>
<div>TRANSMIT:: usrp_time_frac is <span style=3D"background-color:rgb(0,255=
,255)">0.025938016764322915</span><span style=3D"background-color:rgb(0,255=
,255)">&nbsp;</span></div>
<div>TRANSMIT:: system time is 1636570841.<span style=3D"background-color:r=
gb(0,255,0)">0290515&nbsp;</span></div>
<div>TRANSMIT:: usrp_time_source is external&nbsp;</div>
<div>TRANSMIT:: usrp_time_sources are ('internal', 'external', 'gpsdo', 'sf=
p0')</div>
<div><br>
</div>
</span><span style=3D"font-family:Arial,Helvetica,sans-serif">
<div>
<div><i>&nbsp; &nbsp; product: n320</i></div>
<div><i>&nbsp; &nbsp; type: n3xx</i></div>
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
set_time_next_pps(), and it's possibly that those two &quot;set_time.*pps()=
&quot; calls are too close together for the X310 hardware, and it's getting=
 the wrong notion of time?<br>
<br>
If you insert a, let's say, 50ms sleep just before the set_time_next_pps(),=
 how does this change things?<br>
<br>
<br>
<br>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-f=
reetext">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</blockquote>
<br>
</div>
</body>
</html>

--_000_84c395fa284d4d05aa756250dc5cc624ltsnetnet_--

--===============5225256102199284924==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5225256102199284924==--
