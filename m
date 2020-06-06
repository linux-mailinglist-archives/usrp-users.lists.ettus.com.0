Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A001F069A
	for <lists+usrp-users@lfdr.de>; Sat,  6 Jun 2020 14:55:45 +0200 (CEST)
Received: from [::1] (port=39952 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jhYMQ-0007m6-7S; Sat, 06 Jun 2020 08:55:42 -0400
Received: from mail-lj1-f177.google.com ([209.85.208.177]:46618)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <siddsubra@gmail.com>) id 1jhYML-0007Zt-CH
 for usrp-users@lists.ettus.com; Sat, 06 Jun 2020 08:55:37 -0400
Received: by mail-lj1-f177.google.com with SMTP id z9so15016256ljh.13
 for <usrp-users@lists.ettus.com>; Sat, 06 Jun 2020 05:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rm8bjiQopriQ3VdVURDAbGAcVf1w1BDPNXBYDBpCVcU=;
 b=GPFUSQCs5RH05/Wk4Kq8M0nCIyqq5V/aE1Kmq8uaf0KBi28tPB3gD/K0vSs1CUkGcv
 MqkvJLTR044Ymv8syDXtMVzLqfeeWwViDCo/75foe5Np9+7hsUQ8gOvQC/T0FFZt0VYZ
 WRlfUyoSDywn8W2P1q2IwLhQw7dUE56c7drdQjeW2dCqqXOXlYw3uDExg0Q9WHN+Xfd+
 nAmtGpY4+xt6YrMOwPq8oGpFpdeyYyxDWcw+GGnMD8Tgc3XIZer7tfSyGf/P3IjsDCQr
 JPAvMk2v7sWIvVZ2/MdNCWkBhBkfCqJdTtx1FQriRcB9u5cOHV/z24BjOLEqgFHDsfla
 Y+5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rm8bjiQopriQ3VdVURDAbGAcVf1w1BDPNXBYDBpCVcU=;
 b=UmPS1m2hqXcn3luHdWN1elG6Rll1dlEE67VhggJBjfnzZl7x5JHs5uvjL1DQmhrD3i
 5FvGgZOoun0wHK4P1w8YjjCsr/0oregK6aVxsHori5kj0OBBMI03hgJMhDNYfcYTFL94
 NR4IrYISHPTtKYNLdmDPk+ub+tbKFIkETzGABGr0qcaRfI1+a6MaeWERaI+EsQiufPd3
 al77cfmwc6Mz7ruWh9hLd3eL5GWvNFh60EGMDKLhzhPxVOY0Rv1/mx0s0hCJUpANCNR3
 wsp1K7vpnBC1/EK2+Fm21DOGQRnPmsgnUopXG/9gzDpC7OhjrgI9LwMbhcpdkNE2irQD
 jdbQ==
X-Gm-Message-State: AOAM532PKMyEY/xzjWYqkAdKiWJLAwx5NZ536YGOi6PW5pH+khTcFhDW
 j0SEc9jjxr1DaeRPOFdBmq0kw9+yErsgIGnK8cw=
X-Google-Smtp-Source: ABdhPJzk/aA+nxIaEXTsp7S45mVUxGBTs6sotJn5TfQaW/pXOVOexotYtRfmxjwMiOs6MD8CnjyeDv1s71k65GQWBZ0=
X-Received: by 2002:a05:651c:1208:: with SMTP id
 i8mr7210724lja.103.1591448095873; 
 Sat, 06 Jun 2020 05:54:55 -0700 (PDT)
MIME-Version: 1.0
References: <985418C5-CF43-4F69-A441-6233A1D0ACBB@gmail.com>
 <5EDB01A5.9050306@gmail.com>
In-Reply-To: <5EDB01A5.9050306@gmail.com>
Date: Sat, 6 Jun 2020 08:54:44 -0400
Message-ID: <CADVsdEFd1QJO4vC=fPR7cXJC-WERK8QTYS_1OMsjWAubxe7UNw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="0000000000006f5ab405a769e208"
Subject: Re: [USRP-users] Clock Bias from board mounted GPSDO
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sidd Subramanyam via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sidd Subramanyam <siddsubra@gmail.com>
Cc: usrp-users@lists.ettus.com
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

--0000000000006f5ab405a769e208
Content-Type: multipart/alternative; boundary="0000000000006f5ab305a769e206"

--0000000000006f5ab305a769e206
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for this clarification regarding the 10 MHz drift and the 1 PPS
pulse. When you mention that the 10 MHz outputs will not precisely track
each other in the short run but better in the long run, could you provide
an estimate for the duration at which the behavior will track better? My
previous email had stated how in a 1 second interval I was experiencing
around a ~300 nanosecond drift. However, in other samples I had taken
spanning upto 30 seconds, this drift seemed to worsen upto ~15-17
microseconds. From your email regarding how much the 10 MHz deviates during
the short run as well as its long term behavior I=E2=80=99m very sure I mus=
t be
doing something wrong in my code setup.

I have provided some code sections of how I am attempting to synchronize
the time. I start this script at roughly the same time (within about a
couple of seconds) on both USRPs, and they begin to initialize settings
such as bandwidth and center frequency. I then have them wait to start
collection at the nearest rounded up 10 second time multiple of GPS time in
seconds, since the initialization can take varying time for both USRPs to
initialize. I also attached the full code to this email.

*1. Setting Center Frequency *

	//set the center frequency
	usrp->clear_command_time();

	usrp->set_command_time(usrp->get_time_now() + uhd::time_spec_t(0.1));
//set cmd time for .1s in the future

	uhd::tune_request_t tune_request(freq);
	usrp->set_rx_freq(tune_request);
	boost::this_thread::sleep(boost::posix_time::milliseconds(1100));
//sleep 110ms (~10ms after retune occurs) to allow LO to lock

	usrp->clear_command_time();


*2. Set to GPSDO time*

	//Set references to GPSDO
	usrp->set_clock_source("gpsdo", 0);
	usrp->set_time_source("gpsdo", 0);


*3. Check for 10 MHz =E2=80=9Cref_locked=E2=80=9D and for ** GPS =E2=80=9Cg=
ps_locked=E2=80=9D From
Motherboard sensors*

*4. Set internal time to GPS time at the next PPS*

	//Set to GPS time
	uhd::time_spec_t gps_time =3D
uhd::time_spec_t(time_t(usrp->get_mboard_sensor("gps_time",
0).to_int()));
	usrp->set_time_next_pps(gps_time + 1.0, 0);

	//Wait 2 seconds. Known issue
	boost::this_thread::sleep(boost::posix_time::seconds(2));

	//Check times
	gps_time =3D uhd::time_spec_t(time_t(usrp->get_mboard_sensor("gps_time",
0).to_int()));
	uhd::time_spec_t time_last_pps =3D usrp->get_time_last_pps(0);
	//std::cout << "USRP time: " << (boost::format("%0.9f") %
usrp->get_time_last_pps(0).get_real_secs()) << std::endl;
	//std::cout << "GPSDO time: " << (boost::format("%0.9f") %
gps_time.get_real_secs()) << std::endl;
	if (gps_time.get_real_secs() =3D=3D time_last_pps.get_real_secs())
		std::cout << "USRP time synchronized to GPS time" << std::endl
							<< std::endl;
	else
		std::cerr << "Failed to synchronize USRP time to GPS time" << std::endl
							<< std::endl;

*5. Command Stream to start at 10 second GPS multiple*

	cmd.stream_now =3D (buff_ptrs.size() =3D=3D 1);
	cmd.stream_mode =3D uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS;
	cmd.stream_now =3D false;

	//Calculate next 10 second GPS time to start
	double timeNow =3D usrp->get_time_now().get_real_secs();
	cmd.time_spec =3D uhd::time_spec_t(ceil(timeNow / 10.0) * 10.0);

        rx_stream->issue_stream_cmd(cmd);

-Sidd

On Fri, Jun 5, 2020 at 10:38 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 06/05/2020 04:35 PM, Sidd Subramanyam wrote:
>
> =EF=BB=BF By clock bias I am referring to the difference between true GPS=
 time and
> the USRP time.
>
> For example, in my application I am running 2 Separate B210 USRPs each
> side by side with a split signal coming from a single S band antenna.
> However, they are both disciplined using separate GPSDOs with separate
> antennas to simulate being 2 independent devices. They are being
> synchronized as described in method 2 in this article (
> https://files.ettus.com/manual/page_sync.html) and then the data
> collection is being commanded to start at the same GPS time for both
> devices.
>
> My goal is to try to create as phase coherent of an operation as possible
> between the 2 USRPs.
> When I cross correlate the 2 split S band signals to calculate difference
> in phase between the 2 signals, there is a significant drift over time.
> This phase difference converted is about 300 nanoseconds over the course =
of
> 1 second (300 PPB).Because of this, I wished to see if I could use the
> calculated clock bias that I described above to compensate for this drift
> in phase.
>
> However, now that you have mentioned that I should in fact be getting 1
> PPB accuracy when synchronized to GPS time, I am questioning if I am doin=
g
> the time synchronization process wrong altogether Since I seem to be
> getting drift around 300 PB after following the instructions in the link
> above.
>
> Sidd
>
>
> It would be useful to see the parts of your source-code that set up your
> devices--including clock synch, etc.
>
> Further, I'll note that two randomly chosen GPSDO units, even connected t=
o
> the same antenna, will be producing a 1PPS pulse up to several
>   (possibly 10s) of nanoseconds different from one another--which is the
> typical spec on the 1PPS pulse.
>
> In *addition* to this, two (or more) GPSDOs will not produce a 10MHz
> output that precisely track each other, even when connected to the
>   same antenna.  Their long-term behavior is good, but short-term, they
> can disagree with one another, in my experience, so building a
>   perfectly-coherent system from two separate GPSDO units doesn't work
> nearly as well as you might hope, particularly not a lower-cost
>   unit such as is used in the B2xx (where "lower cost" is kind of a
> relative term--the high-end GPSDOs that use a local Rb oscillator are
>   considerably pricey, but not easily packaged into something like the
> USRP B210).
>
>
>

--0000000000006f5ab305a769e206
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div style=3D"font-family:Helvetica;font-=
size:12px"><font color=3D"#000000">Thank you for this clarification regardi=
ng the 10 MHz drift and the 1 PPS pulse. When you mention that the 10 MHz o=
utputs will not precisely track each other in the short run but better in t=
he long run, could you provide an estimate for the duration at which the be=
havior will track better? My previous email had stated how in a 1 second in=
terval I was experiencing around a ~300 nanosecond drift. However, in other=
 samples I had taken spanning upto 30 seconds, this drift seemed to worsen =
upto ~15-17 microseconds. From your email regarding how much the 10 MHz dev=
iates during the short run as well as its long term behavior I=E2=80=99m ve=
ry sure I must be doing something wrong in my code setup.</font></div><div =
style=3D"font-family:Helvetica;font-size:12px"><font color=3D"#000000"><br>=
</font></div><div style=3D"font-family:Helvetica;font-size:12px"><font colo=
r=3D"#000000">I have provided some code sections of how I am attempting to =
synchronize the time. I start this script at roughly the same time (within =
about a couple of seconds) on both USRPs, and they begin to initialize sett=
ings such as bandwidth and center frequency. I then have them wait to start=
 collection at the nearest rounded up 10 second time multiple of GPS time i=
n seconds, since the initialization can take varying time for both USRPs to=
 initialize. I also attached the full code to this email.</font></div><div =
style=3D"font-family:Helvetica;font-size:12px"><font color=3D"#000000"><br>=
</font></div><b style=3D"font-family:Helvetica;font-size:12px"><font color=
=3D"#000000">1. Setting Center Frequency=C2=A0</font></b><div style=3D"font=
-family:Helvetica;font-size:12px"><pre style=3D"white-space:pre-wrap;color:=
rgb(0,0,0)"><font size=3D"2">	<span style=3D"color:rgb(105,105,105)">//set =
the center frequency</span>
	usrp<span style=3D"color:rgb(128,128,48)">-</span><span style=3D"color:rgb=
(128,128,48)">&gt;</span>clear_command_time<span style=3D"color:rgb(128,128=
,48)">(</span><span style=3D"color:rgb(128,128,48)">)</span><span style=3D"=
color:rgb(128,0,128)">;</span>

	usrp<span style=3D"color:rgb(128,128,48)">-</span><span style=3D"color:rgb=
(128,128,48)">&gt;</span>set_command_time<span style=3D"color:rgb(128,128,4=
8)">(</span>usrp<span style=3D"color:rgb(128,128,48)">-</span><span style=
=3D"color:rgb(128,128,48)">&gt;</span>get_time_now<span style=3D"color:rgb(=
128,128,48)">(</span><span style=3D"color:rgb(128,128,48)">)</span> <span s=
tyle=3D"color:rgb(128,128,48)">+</span> uhd<span style=3D"color:rgb(128,0,1=
28)">::</span>time_spec_t<span style=3D"color:rgb(128,128,48)">(</span><spa=
n style=3D"color:rgb(0,128,0)">0.1</span><span style=3D"color:rgb(128,128,4=
8)">)</span><span style=3D"color:rgb(128,128,48)">)</span><span style=3D"co=
lor:rgb(128,0,128)">;</span> <span style=3D"color:rgb(105,105,105)">//set c=
md time for .1s in the future</span>

	uhd<span style=3D"color:rgb(128,0,128)">::</span>tune_request_t tune_reque=
st<span style=3D"color:rgb(128,128,48)">(</span>freq<span style=3D"color:rg=
b(128,128,48)">)</span><span style=3D"color:rgb(128,0,128)">;</span>
	usrp<span style=3D"color:rgb(128,128,48)">-</span><span style=3D"color:rgb=
(128,128,48)">&gt;</span>set_rx_freq<span style=3D"color:rgb(128,128,48)">(=
</span>tune_request<span style=3D"color:rgb(128,128,48)">)</span><span styl=
e=3D"color:rgb(128,0,128)">;</span>
	boost<span style=3D"color:rgb(128,0,128)">::</span>this_thread<span style=
=3D"color:rgb(128,0,128)">::</span>sleep<span style=3D"color:rgb(128,128,48=
)">(</span>boost<span style=3D"color:rgb(128,0,128)">::</span>posix_time<sp=
an style=3D"color:rgb(128,0,128)">::</span>milliseconds<span style=3D"color=
:rgb(128,128,48)">(</span><span style=3D"color:rgb(0,140,0)">1100</span><sp=
an style=3D"color:rgb(128,128,48)">)</span><span style=3D"color:rgb(128,128=
,48)">)</span><span style=3D"color:rgb(128,0,128)">;</span> <span style=3D"=
color:rgb(105,105,105)">//sleep 110ms (~10ms after retune occurs) to allow =
LO to lock</span>

	usrp<span style=3D"color:rgb(128,128,48)">-</span><span style=3D"color:rgb=
(128,128,48)">&gt;</span>clear_command_time<span style=3D"color:rgb(128,128=
,48)">(</span><span style=3D"color:rgb(128,128,48)">)</span><span style=3D"=
color:rgb(128,0,128)">;</span>
</font></pre><div><font color=3D"#000000"><br></font></div></div><div style=
=3D"font-family:Helvetica;font-size:12px"><b><font color=3D"#000000">2. Set=
 to GPSDO time</font></b></div><div style=3D"font-family:Helvetica;font-siz=
e:12px"><div id=3D"gmail-m_2643581594107070350gmail-htmlCode" style=3D"font=
-family:sans-serif;overflow:scroll;width:666.5px"><pre style=3D"white-space=
:pre-wrap"><font size=3D"2">	<span style=3D"color:rgb(105,105,105)">//Set r=
eferences to GPSDO</span>
	usrp<span style=3D"color:rgb(128,128,48)">-</span><span style=3D"color:rgb=
(128,128,48)">&gt;</span>set_clock_source<span style=3D"color:rgb(128,128,4=
8)">(</span><span style=3D"color:rgb(128,0,0)">&quot;</span><span style=3D"=
color:rgb(0,0,230)">gpsdo</span><span style=3D"color:rgb(128,0,0)">&quot;</=
span><span style=3D"color:rgb(128,128,48)">,</span> <span style=3D"color:rg=
b(0,140,0)">0</span><span style=3D"color:rgb(128,128,48)">)</span><span sty=
le=3D"color:rgb(128,0,128)">;</span>
	usrp<span style=3D"color:rgb(128,128,48)">-</span><span style=3D"color:rgb=
(128,128,48)">&gt;</span>set_time_source<span style=3D"color:rgb(128,128,48=
)">(</span><span style=3D"color:rgb(128,0,0)">&quot;</span><span style=3D"c=
olor:rgb(0,0,230)">gpsdo</span><span style=3D"color:rgb(128,0,0)">&quot;</s=
pan><span style=3D"color:rgb(128,128,48)">,</span> <span style=3D"color:rgb=
(0,140,0)">0</span><span style=3D"color:rgb(128,128,48)">)</span><span styl=
e=3D"color:rgb(128,0,128)">;</span></font></pre></div></div><div style=3D"f=
ont-family:Helvetica;font-size:12px"><font color=3D"#000000"><br></font></d=
iv><div style=3D"font-family:Helvetica;font-size:12px"><font color=3D"#0000=
00"><b>3. Check for 10 MHz =E2=80=9Cref_locked=E2=80=9D and for=C2=A0</b><b=
>=C2=A0GPS =E2=80=9Cgps_locked=E2=80=9D From Motherboard sensors</b></font>=
</div><div style=3D"font-family:Helvetica;font-size:12px"><b><font color=3D=
"#000000"><br></font></b></div><div style=3D"font-family:Helvetica;font-siz=
e:12px"><b><font color=3D"#000000">4. Set internal time to GPS time at the =
next PPS</font></b></div><div style=3D"color:rgb(255,255,255);font-family:H=
elvetica;font-size:12px"><pre style=3D"white-space:pre-wrap;color:rgb(0,0,0=
)"><font size=3D"2">	<span style=3D"color:rgb(105,105,105)">//Set to GPS ti=
me</span>
	uhd<span style=3D"color:rgb(128,0,128)">::</span>time_spec_t gps_time <spa=
n style=3D"color:rgb(128,128,48)">=3D</span> uhd<span style=3D"color:rgb(12=
8,0,128)">::</span>time_spec_t<span style=3D"color:rgb(128,128,48)">(</span=
><span style=3D"color:rgb(96,48,0)">time_t</span><span style=3D"color:rgb(1=
28,128,48)">(</span>usrp<span style=3D"color:rgb(128,128,48)">-</span><span=
 style=3D"color:rgb(128,128,48)">&gt;</span>get_mboard_sensor<span style=3D=
"color:rgb(128,128,48)">(</span><span style=3D"color:rgb(128,0,0)">&quot;</=
span><span style=3D"color:rgb(0,0,230)">gps_time</span><span style=3D"color=
:rgb(128,0,0)">&quot;</span><span style=3D"color:rgb(128,128,48)">,</span> =
<span style=3D"color:rgb(0,140,0)">0</span><span style=3D"color:rgb(128,128=
,48)">)</span><span style=3D"color:rgb(128,128,48)">.</span>to_int<span sty=
le=3D"color:rgb(128,128,48)">(</span><span style=3D"color:rgb(128,128,48)">=
)</span><span style=3D"color:rgb(128,128,48)">)</span><span style=3D"color:=
rgb(128,128,48)">)</span><span style=3D"color:rgb(128,0,128)">;</span>
	usrp<span style=3D"color:rgb(128,128,48)">-</span><span style=3D"color:rgb=
(128,128,48)">&gt;</span>set_time_next_pps<span style=3D"color:rgb(128,128,=
48)">(</span>gps_time <span style=3D"color:rgb(128,128,48)">+</span> <span =
style=3D"color:rgb(0,128,0)">1.0</span><span style=3D"color:rgb(128,128,48)=
">,</span> <span style=3D"color:rgb(0,140,0)">0</span><span style=3D"color:=
rgb(128,128,48)">)</span><span style=3D"color:rgb(128,0,128)">;</span>

	<span style=3D"color:rgb(105,105,105)">//Wait 2 seconds. Known issue</span=
>
	boost<span style=3D"color:rgb(128,0,128)">::</span>this_thread<span style=
=3D"color:rgb(128,0,128)">::</span>sleep<span style=3D"color:rgb(128,128,48=
)">(</span>boost<span style=3D"color:rgb(128,0,128)">::</span>posix_time<sp=
an style=3D"color:rgb(128,0,128)">::</span>seconds<span style=3D"color:rgb(=
128,128,48)">(</span><span style=3D"color:rgb(0,140,0)">2</span><span style=
=3D"color:rgb(128,128,48)">)</span><span style=3D"color:rgb(128,128,48)">)<=
/span><span style=3D"color:rgb(128,0,128)">;</span>

	<span style=3D"color:rgb(105,105,105)">//Check times</span>
	gps_time <span style=3D"color:rgb(128,128,48)">=3D</span> uhd<span style=
=3D"color:rgb(128,0,128)">::</span>time_spec_t<span style=3D"color:rgb(128,=
128,48)">(</span><span style=3D"color:rgb(96,48,0)">time_t</span><span styl=
e=3D"color:rgb(128,128,48)">(</span>usrp<span style=3D"color:rgb(128,128,48=
)">-</span><span style=3D"color:rgb(128,128,48)">&gt;</span>get_mboard_sens=
or<span style=3D"color:rgb(128,128,48)">(</span><span style=3D"color:rgb(12=
8,0,0)">&quot;</span><span style=3D"color:rgb(0,0,230)">gps_time</span><spa=
n style=3D"color:rgb(128,0,0)">&quot;</span><span style=3D"color:rgb(128,12=
8,48)">,</span> <span style=3D"color:rgb(0,140,0)">0</span><span style=3D"c=
olor:rgb(128,128,48)">)</span><span style=3D"color:rgb(128,128,48)">.</span=
>to_int<span style=3D"color:rgb(128,128,48)">(</span><span style=3D"color:r=
gb(128,128,48)">)</span><span style=3D"color:rgb(128,128,48)">)</span><span=
 style=3D"color:rgb(128,128,48)">)</span><span style=3D"color:rgb(128,0,128=
)">;</span>
	uhd<span style=3D"color:rgb(128,0,128)">::</span>time_spec_t time_last_pps=
 <span style=3D"color:rgb(128,128,48)">=3D</span> usrp<span style=3D"color:=
rgb(128,128,48)">-</span><span style=3D"color:rgb(128,128,48)">&gt;</span>g=
et_time_last_pps<span style=3D"color:rgb(128,128,48)">(</span><span style=
=3D"color:rgb(0,140,0)">0</span><span style=3D"color:rgb(128,128,48)">)</sp=
an><span style=3D"color:rgb(128,0,128)">;</span>
	<span style=3D"color:rgb(105,105,105)">//std::cout &lt;&lt; &quot;USRP tim=
e: &quot; &lt;&lt; (boost::format(&quot;%0.9f&quot;) % usrp-&gt;get_time_la=
st_pps(0).get_real_secs()) &lt;&lt; std::endl;</span>
	<span style=3D"color:rgb(105,105,105)">//std::cout &lt;&lt; &quot;GPSDO ti=
me: &quot; &lt;&lt; (boost::format(&quot;%0.9f&quot;) % gps_time.get_real_s=
ecs()) &lt;&lt; std::endl;</span>
	<span style=3D"color:rgb(128,0,0);font-weight:bold">if</span> <span style=
=3D"color:rgb(128,128,48)">(</span>gps_time<span style=3D"color:rgb(128,128=
,48)">.</span>get_real_secs<span style=3D"color:rgb(128,128,48)">(</span><s=
pan style=3D"color:rgb(128,128,48)">)</span> <span style=3D"color:rgb(128,1=
28,48)">=3D</span><span style=3D"color:rgb(128,128,48)">=3D</span> time_las=
t_pps<span style=3D"color:rgb(128,128,48)">.</span>get_real_secs<span style=
=3D"color:rgb(128,128,48)">(</span><span style=3D"color:rgb(128,128,48)">)<=
/span><span style=3D"color:rgb(128,128,48)">)</span>
		<span style=3D"color:rgb(102,102,22)">std</span><span style=3D"color:rgb(=
128,0,128)">::</span><span style=3D"color:rgb(96,48,0)">cout</span> <span s=
tyle=3D"color:rgb(128,128,48)">&lt;</span><span style=3D"color:rgb(128,128,=
48)">&lt;</span> <span style=3D"color:rgb(128,0,0)">&quot;</span><span styl=
e=3D"color:rgb(0,0,230)">USRP time synchronized to GPS time</span><span sty=
le=3D"color:rgb(128,0,0)">&quot;</span> <span style=3D"color:rgb(128,128,48=
)">&lt;</span><span style=3D"color:rgb(128,128,48)">&lt;</span> <span style=
=3D"color:rgb(102,102,22)">std</span><span style=3D"color:rgb(128,0,128)">:=
:</span><span style=3D"color:rgb(96,48,0)">endl</span>
							<span style=3D"color:rgb(128,128,48)">&lt;</span><span style=3D"colo=
r:rgb(128,128,48)">&lt;</span> <span style=3D"color:rgb(102,102,22)">std</s=
pan><span style=3D"color:rgb(128,0,128)">::</span><span style=3D"color:rgb(=
96,48,0)">endl</span><span style=3D"color:rgb(128,0,128)">;</span>
	<span style=3D"color:rgb(128,0,0);font-weight:bold">else</span>
		<span style=3D"color:rgb(102,102,22)">std</span><span style=3D"color:rgb(=
128,0,128)">::</span><span style=3D"color:rgb(96,48,0)">cerr</span> <span s=
tyle=3D"color:rgb(128,128,48)">&lt;</span><span style=3D"color:rgb(128,128,=
48)">&lt;</span> <span style=3D"color:rgb(128,0,0)">&quot;</span><span styl=
e=3D"color:rgb(0,0,230)">Failed to synchronize USRP time to GPS time</span>=
<span style=3D"color:rgb(128,0,0)">&quot;</span> <span style=3D"color:rgb(1=
28,128,48)">&lt;</span><span style=3D"color:rgb(128,128,48)">&lt;</span> <s=
pan style=3D"color:rgb(102,102,22)">std</span><span style=3D"color:rgb(128,=
0,128)">::</span><span style=3D"color:rgb(96,48,0)">endl</span>
							<span style=3D"color:rgb(128,128,48)">&lt;</span><span style=3D"colo=
r:rgb(128,128,48)">&lt;</span> <span style=3D"color:rgb(102,102,22)">std</s=
pan><span style=3D"color:rgb(128,0,128)">::</span><span style=3D"color:rgb(=
96,48,0)">endl</span><span style=3D"color:rgb(128,0,128)">;</span></font></=
pre></div><div style=3D"font-family:Helvetica;font-size:12px"><b><font colo=
r=3D"#000000">5. Command Stream to start at 10 second GPS multiple</font></=
b></div><div style=3D"font-family:Helvetica"><div id=3D"gmail-m_26435815941=
07070350gmail-htmlCode" style=3D"font-family:sans-serif;overflow:scroll;wid=
th:666.5px"><pre style=3D"color:rgb(0,0,0);font-size:12px;white-space:pre-w=
rap"><font size=3D"2">	cmd<span style=3D"color:rgb(128,128,48)">.</span>str=
eam_now <span style=3D"color:rgb(128,128,48)">=3D</span> <span style=3D"col=
or:rgb(128,128,48)">(</span>buff_ptrs<span style=3D"color:rgb(128,128,48)">=
.</span>size<span style=3D"color:rgb(128,128,48)">(</span><span style=3D"co=
lor:rgb(128,128,48)">)</span> <span style=3D"color:rgb(128,128,48)">=3D</sp=
an><span style=3D"color:rgb(128,128,48)">=3D</span> <span style=3D"color:rg=
b(0,140,0)">1</span><span style=3D"color:rgb(128,128,48)">)</span><span sty=
le=3D"color:rgb(128,0,128)">;</span>
	cmd<span style=3D"color:rgb(128,128,48)">.</span>stream_mode <span style=
=3D"color:rgb(128,128,48)">=3D</span> uhd<span style=3D"color:rgb(128,0,128=
)">::</span>stream_cmd_t<span style=3D"color:rgb(128,0,128)">::</span>STREA=
M_MODE_START_CONTINUOUS<span style=3D"color:rgb(128,0,128)">;</span>
	cmd<span style=3D"color:rgb(128,128,48)">.</span>stream_now <span style=3D=
"color:rgb(128,128,48)">=3D</span> <span style=3D"color:rgb(128,0,0);font-w=
eight:bold">false</span><span style=3D"color:rgb(128,0,128)">;</span>

	<span style=3D"color:rgb(105,105,105)">//Calculate next 10 second GPS time=
 to start</span>
	<span style=3D"color:rgb(128,0,0);font-weight:bold">double</span> timeNow =
<span style=3D"color:rgb(128,128,48)">=3D</span> usrp<span style=3D"color:r=
gb(128,128,48)">-</span><span style=3D"color:rgb(128,128,48)">&gt;</span>ge=
t_time_now<span style=3D"color:rgb(128,128,48)">(</span><span style=3D"colo=
r:rgb(128,128,48)">)</span><span style=3D"color:rgb(128,128,48)">.</span>ge=
t_real_secs<span style=3D"color:rgb(128,128,48)">(</span><span style=3D"col=
or:rgb(128,128,48)">)</span><span style=3D"color:rgb(128,0,128)">;</span>
	cmd<span style=3D"color:rgb(128,128,48)">.</span>time_spec <span style=3D"=
color:rgb(128,128,48)">=3D</span> uhd<span style=3D"color:rgb(128,0,128)">:=
:</span>time_spec_t<span style=3D"color:rgb(128,128,48)">(</span><span styl=
e=3D"color:rgb(96,48,0)">ceil</span><span style=3D"color:rgb(128,128,48)">(=
</span>timeNow <span style=3D"color:rgb(128,128,48)">/</span> <span style=
=3D"color:rgb(0,128,0)">10.0</span><span style=3D"color:rgb(128,128,48)">)<=
/span> <span style=3D"color:rgb(128,128,48)">*</span> <span style=3D"color:=
rgb(0,128,0)">10.0</span><span style=3D"color:rgb(128,128,48)">)</span><spa=
n style=3D"color:rgb(128,0,128)">;</span>

        rx_stream<span style=3D"color:rgb(128,128,48)">-</span><span style=
=3D"color:rgb(128,128,48)">&gt;</span>issue_stream_cmd<span style=3D"color:=
rgb(128,128,48)">(</span>cmd<span style=3D"color:rgb(128,128,48)">)</span><=
span style=3D"color:rgb(128,0,128)">;</span>
</font></pre><div><font color=3D"#000000">-Sidd</font></div></div></div></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Fri, Jun 5, 2020 at 10:38 PM Marcus D. Leech &lt;<a href=3D"mailto:pa=
tchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);paddi=
ng-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 06/05/2020 04:35 PM, Sidd
      Subramanyam wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">
         =20
          <div dir=3D"ltr">=EF=BB=BF
           =20
            By clock bias I am referring to the difference between true
            GPS time and the USRP time.</div>
          <div dir=3D"ltr"><br>
            <div>For example, in my application I am running 2 Separate
              B210 USRPs each side by side with a split signal coming
              from a single S band antenna. However, they are both
              disciplined using separate GPSDOs with separate antennas
              to simulate being 2 independent devices. They are being
              synchronized as described in method 2 in this article (<a hre=
f=3D"https://files.ettus.com/manual/page_sync.html" target=3D"_blank">https=
://files.ettus.com/manual/page_sync.html</a>)
              and then the data collection is being commanded to start
              at the same GPS time for both devices.=C2=A0</div>
            <div><br>
            </div>
            <div>My goal is to try to create as phase coherent of an
              operation as possible between the 2 USRPs.</div>
            <div>When I cross correlate the 2 split S band signals to
              calculate difference in phase between the 2 signals, there
              is a significant drift over time. This phase difference
              converted is about 300 nanoseconds over the course of 1
              second (300 PPB).Because of this, I wished to see if I
              could use the calculated clock bias that I described above
              to compensate for this drift in phase.=C2=A0</div>
            <div><br>
            </div>
            <div>However, now that you have mentioned that I should in
              fact be getting 1 PPB accuracy when synchronized to GPS
              time, I am questioning if I am doing the time
              synchronization process wrong altogether Since I seem to
              be getting drift around 300 PB after following the
              instructions in the link above.</div>
            <div><br>
            </div>
            <div>Sidd</div>
            <div>=C2=A0</div>
            <br>
          </div>
        </div>
      </div>
    </blockquote>
    It would be useful to see the parts of your source-code that set up
    your devices--including clock synch, etc.<br>
    <br>
    Further, I&#39;ll note that two randomly chosen GPSDO units, even
    connected to the same antenna, will be producing a 1PPS pulse up to
    several<br>
    =C2=A0 (possibly 10s) of nanoseconds different from one another--which =
is
    the typical spec on the 1PPS pulse.<br>
    <br>
    In *addition* to this, two (or more) GPSDOs will not produce a 10MHz
    output that precisely track each other, even when connected to the<br>
    =C2=A0 same antenna.=C2=A0 Their long-term behavior is good, but short-=
term,
    they can disagree with one another, in my experience, so building a<br>
    =C2=A0 perfectly-coherent system from two separate GPSDO units doesn&#3=
9;t
    work nearly as well as you might hope, particularly not a lower-cost<br=
>
    =C2=A0 unit such as is used in the B2xx (where &quot;lower cost&quot; i=
s kind of a
    relative term--the high-end GPSDOs that use a local Rb oscillator
    are<br>
    =C2=A0 considerably pricey, but not easily packaged into something like
    the USRP B210).<br>
    <br>
    <br>
  </div>

</blockquote></div>

--0000000000006f5ab305a769e206--
--0000000000006f5ab405a769e208
Content-Type: application/octet-stream; name="gpssync.cpp"
Content-Disposition: attachment; filename="gpssync.cpp"
Content-Transfer-Encoding: base64
Content-ID: <f_kb3my9op0>
X-Attachment-Id: f_kb3my9op0

I2luY2x1ZGUgPHVoZC90eXBlcy90dW5lX3JlcXVlc3QuaHBwPgojaW5jbHVkZSA8dWhkL3V0aWxz
L3RocmVhZC5ocHA+CiNpbmNsdWRlIDx1aGQvdXRpbHMvc2FmZV9tYWluLmhwcD4KI2luY2x1ZGUg
PHVoZC91c3JwL211bHRpX3VzcnAuaHBwPgojaW5jbHVkZSA8dWhkL2V4Y2VwdGlvbi5ocHA+CiNp
bmNsdWRlIDxib29zdC9wcm9ncmFtX29wdGlvbnMuaHBwPgojaW5jbHVkZSA8Ym9vc3QvZm9ybWF0
LmhwcD4KI2luY2x1ZGUgPGJvb3N0L3RocmVhZC5ocHA+CiNpbmNsdWRlIDxib29zdC9hbGdvcml0
aG0vc3RyaW5nLmhwcD4KI2luY2x1ZGUgPGlvc3RyZWFtPgojaW5jbHVkZSA8ZnN0cmVhbT4KI2lu
Y2x1ZGUgPGNzaWduYWw+CiNpbmNsdWRlIDxjb21wbGV4PgojaW5jbHVkZSA8bWF0aC5oPgoKLy8g
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQojaW5jbHVkZSA8dWhkL2NvbnZl
cnQuaHBwPgojaW5jbHVkZSA8Ym9vc3QvbGV4aWNhbF9jYXN0LmhwcD4KI2luY2x1ZGUgPGJvb3N0
L2FsZ29yaXRobS9zdHJpbmcuaHBwPgojaW5jbHVkZSA8dWhkL3V0aWxzL3BhdGhzLmhwcD4KI2lu
Y2x1ZGUgPHVoZC90cmFuc3BvcnQvdXNiX2NvbnRyb2wuaHBwPgojaW5jbHVkZSA8dWhkL3RyYW5z
cG9ydC91c2JfZGV2aWNlX2hhbmRsZS5ocHA+CiNpbmNsdWRlIDx1aGQvY29uZmlnLmhwcD4KI2lu
Y2x1ZGUgPGJvb3N0L2Z1bmN0aW9uYWwvaGFzaC5ocHA+Ci8vI2luY2x1ZGUgPGIyMDBfaWZhY2Uu
aHBwPgovLyA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpuYW1lc3BhY2Ug
cG8gPSBib29zdDo6cHJvZ3JhbV9vcHRpb25zOwoKaW50IFVIRF9TQUZFX01BSU4oaW50IGFyZ2Ms
IGNoYXIgKmFyZ3ZbXSkKewoJLy91aGQ6OnNldF90aHJlYWRfcHJpb3JpdHlfc2FmZSgpOwoKCS8v
dmFyaWFibGVzIHRvIGJlIHNldCBieSBwbwoJc3RkOjpzdHJpbmcgYXJncywgZmlsZSwgcmZpbGUs
IHR5cGUsIGFudCwgc3ViZGV2LCByZWYsIHdpcmVmbXQsIGNwdWZtdCwgc2lnbmFsOwoJc2l6ZV90
IHRvdGFsX251bV9zYW1wcywgc3BiLCBzdGltZSwgZGlyZWN0X2NvbGxlY3Rpb25fZmxhZzsKCWRv
dWJsZSByYXRlLCBmcmVxLCBnYWluLCBidywgdG90YWxfdGltZSwgc2V0dXBfdGltZSwgaW50ZWdy
YXRpb25fdGltZTsKCXN0ZDo6b2ZzdHJlYW0gbG9nZmlsZTsKCXRpbWVfdCByYXd0aW1lOwoJLy8g
PT09PT09PT09PT09PT09CglzdGQ6OnN0cmluZyBjaGFubmVsX2xpc3Q7CgkvLyA9PT09PT09PT09
PT09PT0KCgkvL3NldHVwIHRoZSBwcm9ncmFtIG9wdGlvbnMKCXBvOjpvcHRpb25zX2Rlc2NyaXB0
aW9uIGRlc2MoIkFsbG93ZWQgb3B0aW9ucyIpOwoJZGVzYy5hZGRfb3B0aW9ucygpKCJoZWxwIiwg
ImhlbHAgbWVzc2FnZSIpKCJhcmdzIiwgcG86OnZhbHVlPHN0ZDo6c3RyaW5nPigmYXJncyktPmRl
ZmF1bHRfdmFsdWUoIiIpLCAibXVsdGkgdWhkIGRldmljZSBhZGRyZXNzIGFyZ3MiKSgiZmlsZSIs
IHBvOjp2YWx1ZTxzdGQ6OnN0cmluZz4oJmZpbGUpLT5kZWZhdWx0X3ZhbHVlKCJ1c3JwX3NhbXBs
ZXMuZGF0IiksICJuYW1lIG9mIHRoZSBmaWxlIHRvIHdyaXRlIGJpbmFyeSBzYW1wbGVzIHRvIiko
InJmaWxlIiwgcG86OnZhbHVlPHN0ZDo6c3RyaW5nPigmcmZpbGUpLT5kZWZhdWx0X3ZhbHVlKCJ1
c3JwX2NvbGxlY3Rpb25fbG9nLnR4dCIpLCAibmFtZSBvZiB0aGUgZmlsZSB0byB3cml0ZSBjb2xs
ZWN0aW9uIHN0YXRlIHRvIikoInR5cGUiLCBwbzo6dmFsdWU8c3RkOjpzdHJpbmc+KCZ0eXBlKS0+
ZGVmYXVsdF92YWx1ZSgic2hvcnQiKSwgInNhbXBsZSB0eXBlOiBkb3VibGUsIGZsb2F0LCBvciBz
aG9ydCIpKCJydGltZSIsIHBvOjp2YWx1ZTxkb3VibGU+KCZ0b3RhbF90aW1lKSwgIihERVBSRUNB
VEVEKSB3aWxsIGdvIGF3YXkgc29vbiEgVXNlIC0tZHVyYXRpb24gaW5zdGVhZCIpKCJzcGIiLCBw
bzo6dmFsdWU8c2l6ZV90Pigmc3BiKS0+ZGVmYXVsdF92YWx1ZSgxMDAwMCksICJzYW1wbGVzIHBl
ciBidWZmZXIiKSgicmF0ZSIsIHBvOjp2YWx1ZTxkb3VibGU+KCZyYXRlKS0+ZGVmYXVsdF92YWx1
ZSgxZTYpLCAicmF0ZSBvZiBpbmNvbWluZyBzYW1wbGVzIikoImZyZXEiLCBwbzo6dmFsdWU8ZG91
YmxlPigmZnJlcSktPmRlZmF1bHRfdmFsdWUoMC4wKSwgIlJGIGNlbnRlciBmcmVxdWVuY3kgaW4g
SHoiKSgiZ2FpbiIsIHBvOjp2YWx1ZTxkb3VibGU+KCZnYWluKS0+ZGVmYXVsdF92YWx1ZSgwLjAp
LCAiZ2FpbiBmb3IgdGhlIFJGIGNoYWluIikoInNpZ25hbCIsIHBvOjp2YWx1ZTxzdGQ6OnN0cmlu
Zz4oJnNpZ25hbCktPmRlZmF1bHRfdmFsdWUoIlhNIiksICJzaWduYWwiKSgibm92ZXIiLCBwbzo6
dmFsdWU8c2l6ZV90PigmZGlyZWN0X2NvbGxlY3Rpb25fZmxhZyktPmRlZmF1bHRfdmFsdWUoMCks
ICJEaXJlY3QgY29sbGVjdGlvbj8iKSgic3ViZGV2IiwgcG86OnZhbHVlPHN0ZDo6c3RyaW5nPigm
c3ViZGV2KSwgImRhdWdodGVyYm9hcmQgc3ViZGV2aWNlIHNwZWNpZmljYXRpb24iKSgiYnciLCBw
bzo6dmFsdWU8ZG91YmxlPigmYncpLT5kZWZhdWx0X3ZhbHVlKDAuMCksICJhbmFsb2cgZnJvbnRl
bmQgZmlsdGVyIGJhbmR3aWR0aCBpbiBIeiIpKCJyZWYiLCBwbzo6dmFsdWU8c3RkOjpzdHJpbmc+
KCZyZWYpLT5kZWZhdWx0X3ZhbHVlKCJpbnRlcm5hbCIpLCAicmVmZXJlbmNlIHNvdXJjZSAoaW50
ZXJuYWwsIGV4dGVybmFsLCBtaW1vKSIpKCJ3aXJlZm10IiwgcG86OnZhbHVlPHN0ZDo6c3RyaW5n
Pigmd2lyZWZtdCktPmRlZmF1bHRfdmFsdWUoInNjOCIpLCAid2lyZSBmb3JtYXQgKHNjOCBvciBz
YzE2KSIpKCJjcHVmbXQiLCBwbzo6dmFsdWU8c3RkOjpzdHJpbmc+KCZjcHVmbXQpLT5kZWZhdWx0
X3ZhbHVlKCJzYzgiKSwgImNwdSBmb3JtYXQgKHNjOCwgc2MxNiwgZmMzMiwgb3IgZmM2NCkiKSgi
c2V0dXAiLCBwbzo6dmFsdWU8ZG91YmxlPigmc2V0dXBfdGltZSktPmRlZmF1bHRfdmFsdWUoMS4w
KSwgInNlY29uZHMgb2Ygc2V0dXAgdGltZSIpKCJpbnRlZ3JhdGlvbiIsIHBvOjp2YWx1ZTxkb3Vi
bGU+KCZpbnRlZ3JhdGlvbl90aW1lKS0+ZGVmYXVsdF92YWx1ZSgxLjApLCAidGltZSBvZiBidWZm
ZXIgbGVuZ3RoIik7CgoJcG86OnZhcmlhYmxlc19tYXAgdm07Cglwbzo6c3RvcmUocG86OnBhcnNl
X2NvbW1hbmRfbGluZShhcmdjLCBhcmd2LCBkZXNjKSwgdm0pOwoJcG86Om5vdGlmeSh2bSk7CgoJ
c3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIkluaXRpYWxpemluZy4uLlxuIik7CgoJLy9jcmVh
dGUgYSBVU1JQIGRldmljZQoJc3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIkNyZWF0aW5nIHRo
ZSB1c3JwIGRldmljZSB3aXRoOiAlcyIpICUgYXJncyA8PCBzdGQ6OmVuZGw7Cgl1aGQ6OnVzcnA6
Om11bHRpX3VzcnA6OnNwdHIgdXNycCA9IHVoZDo6dXNycDo6bXVsdGlfdXNycDo6bWFrZShhcmdz
KTsKCXN0ZDo6Y291dCA8PCBib29zdDo6Zm9ybWF0KCJVc2luZyBEZXZpY2U6ICVzIikgJSB1c3Jw
LT5nZXRfcHBfc3RyaW5nKCkgPDwgc3RkOjplbmRsOwoKCS8vc2V0IHRoZSBjZW50ZXIgZnJlcXVl
bmN5Cgl1c3JwLT5jbGVhcl9jb21tYW5kX3RpbWUoKTsKCgl1c3JwLT5zZXRfY29tbWFuZF90aW1l
KHVzcnAtPmdldF90aW1lX25vdygpICsgdWhkOjp0aW1lX3NwZWNfdCgwLjEpKTsgLy9zZXQgY21k
IHRpbWUgZm9yIC4xcyBpbiB0aGUgZnV0dXJlCgoJdWhkOjp0dW5lX3JlcXVlc3RfdCB0dW5lX3Jl
cXVlc3QoZnJlcSk7Cgl1c3JwLT5zZXRfcnhfZnJlcSh0dW5lX3JlcXVlc3QpOwoJYm9vc3Q6OnRo
aXNfdGhyZWFkOjpzbGVlcChib29zdDo6cG9zaXhfdGltZTo6bWlsbGlzZWNvbmRzKDExMDApKTsg
Ly9zbGVlcCAxMTBtcyAofjEwbXMgYWZ0ZXIgcmV0dW5lIG9jY3VycykgdG8gYWxsb3cgTE8gdG8g
bG9jawoKCXVzcnAtPmNsZWFyX2NvbW1hbmRfdGltZSgpOwoKCS8vc2V0IHRoZSByZiBnYWluCgl1
c3JwLT5zZXRfcnhfZ2FpbihnYWluLCAwKTsKCgkvL3NldCB0aGUgSUYgZmlsdGVyIGJhbmR3aWR0
aAoJdXNycC0+c2V0X3J4X2JhbmR3aWR0aChidywgMCk7CgoJLy9zZXQgc3ViZGV2Cgl1c3JwLT5z
ZXRfcnhfc3ViZGV2X3NwZWMoc3ViZGV2KTsKCgkvL3NldCB0aGUgc2FtcGxlIHJhdGUKCXVzcnAt
PnNldF9yeF9yYXRlKHJhdGUpOwoKCS8vU2V0IHJlZmVyZW5jZXMgdG8gR1BTRE8KCXVzcnAtPnNl
dF9jbG9ja19zb3VyY2UoImdwc2RvIiwgMCk7Cgl1c3JwLT5zZXRfdGltZV9zb3VyY2UoImdwc2Rv
IiwgMCk7CgoJLy9DaGVjayBmb3IgMTAgTUh6IGxvY2sKCXN0ZDo6dmVjdG9yPHN0ZDo6c3RyaW5n
PiBzZW5zb3JfbmFtZXMgPSB1c3JwLT5nZXRfbWJvYXJkX3NlbnNvcl9uYW1lcygwKTsKCWlmIChz
dGQ6OmZpbmQoc2Vuc29yX25hbWVzLmJlZ2luKCksIHNlbnNvcl9uYW1lcy5lbmQoKSwgInJlZl9s
b2NrZWQiKSAhPSBzZW5zb3JfbmFtZXMuZW5kKCkpCgl7CgkJLy9zdGQ6OmNvdXQgPDwgIldhaXRp
bmcgZm9yIHJlZmVyZW5jZSBsb2NrLi4uIiA8PCBzdGQ6OmZsdXNoOwoJCWJvb2wgcmVmX2xvY2tl
ZCA9IGZhbHNlOwoJCWZvciAoaW50IGkgPSAwOyBpIDwgMzAgJiYgIXJlZl9sb2NrZWQ7IGkrKykK
CQl7CgkJCXJlZl9sb2NrZWQgPSB1c3JwLT5nZXRfbWJvYXJkX3NlbnNvcigicmVmX2xvY2tlZCIs
IDApLnRvX2Jvb2woKTsKCQkJaWYgKCFyZWZfbG9ja2VkKQoJCQl7CgkJCQlzdGQ6OmNvdXQgPDwg
Ii4iIDw8IHN0ZDo6Zmx1c2g7CgkJCQlib29zdDo6dGhpc190aHJlYWQ6OnNsZWVwKGJvb3N0Ojpw
b3NpeF90aW1lOjpzZWNvbmRzKDEpKTsKCQkJfQoJCX0KCQlpZiAocmVmX2xvY2tlZCkKCQl7CgkJ
CXN0ZDo6Y291dCA8PCBzdGQ6OmVuZGwKCQkJCQkJCQk8PCAiMTAgTUh6IExvY2tlZCIgPDwgc3Rk
OjplbmRsOwoJCX0KCQllbHNlCgkJewoJCQlzdGQ6OmNvdXQgPDwgIkZhaWxlZCB0byBsb2NrIHRv
IEdQU0RPIDEwIE1IeiBSZWZlcmVuY2UuIEV4aXRpbmcuIiA8PCBzdGQ6OmVuZGw7CgkJCWV4aXQo
RVhJVF9GQUlMVVJFKTsKCQl9Cgl9CgllbHNlCgl7CgkJc3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3Jt
YXQoInJlZl9sb2NrZWQgc2Vuc29yIG5vdCBwcmVzZW50IG9uIHRoaXMgYm9hcmQuXG4iKTsKCX0K
CgkvL1dhaXQgZm9yIEdQUyBsb2NrCglpZiAoc3RkOjpmaW5kKHNlbnNvcl9uYW1lcy5iZWdpbigp
LCBzZW5zb3JfbmFtZXMuZW5kKCksICJyZWZfbG9ja2VkIikgIT0gc2Vuc29yX25hbWVzLmVuZCgp
KQoJewoJCWJvb2wgZ3BzX2xvY2tlZCA9IHRydWU7CgkJZm9yIChpbnQgaSA9IDA7IGkgPCAzMCAm
JiAhZ3BzX2xvY2tlZDsgaSsrKQoJCXsKCQkJZ3BzX2xvY2tlZCA9IHVzcnAtPmdldF9tYm9hcmRf
c2Vuc29yKCJncHNfbG9ja2VkIiwgMCkudG9fYm9vbCgpOwoJCQlpZiAoIWdwc19sb2NrZWQpCgkJ
CXsKCQkJCXN0ZDo6Y291dCA8PCAiLiIgPDwgc3RkOjpmbHVzaDsKCQkJCWJvb3N0Ojp0aGlzX3Ro
cmVhZDo6c2xlZXAoYm9vc3Q6OnBvc2l4X3RpbWU6OnNlY29uZHMoMSkpOwoJCQl9CgkJfQoJCWlm
IChncHNfbG9ja2VkKQoJCXsKCQkJc3RkOjpjb3V0IDw8ICJHUFMgTG9ja2VkIiA8PCBzdGQ6OmVu
ZGw7CgkJfQoJCWVsc2UKCQl7CgkJCXN0ZDo6Y291dCA8PCAiRmFpbGVkIHRvIGxvY2sgdG8gR1BT
IFRpbWUgUmVmZXJlbmNlLiBFeGl0aW5nLiIgPDwgc3RkOjplbmRsOwoJCQlleGl0KEVYSVRfRkFJ
TFVSRSk7CgkJfQoJfQoJZWxzZQoJewoJCXN0ZDo6Y291dCA8PCBib29zdDo6Zm9ybWF0KCJncHNf
bG9ja2VkIHNlbnNvciBub3QgcHJlc2VudCBvbiB0aGlzIGJvYXJkLlxuIik7Cgl9CgoJLy9TZXQg
dG8gR1BTIHRpbWUKCXVoZDo6dGltZV9zcGVjX3QgZ3BzX3RpbWUgPSB1aGQ6OnRpbWVfc3BlY190
KHRpbWVfdCh1c3JwLT5nZXRfbWJvYXJkX3NlbnNvcigiZ3BzX3RpbWUiLCAwKS50b19pbnQoKSkp
OwoJdXNycC0+c2V0X3RpbWVfbmV4dF9wcHMoZ3BzX3RpbWUgKyAxLjAsIDApOwoKCS8vV2FpdCAy
IHNlY29uZHMuIEtub3duIGlzc3VlCglib29zdDo6dGhpc190aHJlYWQ6OnNsZWVwKGJvb3N0Ojpw
b3NpeF90aW1lOjpzZWNvbmRzKDIpKTsKCgkvL0NoZWNrIHRpbWVzCglncHNfdGltZSA9IHVoZDo6
dGltZV9zcGVjX3QodGltZV90KHVzcnAtPmdldF9tYm9hcmRfc2Vuc29yKCJncHNfdGltZSIsIDAp
LnRvX2ludCgpKSk7Cgl1aGQ6OnRpbWVfc3BlY190IHRpbWVfbGFzdF9wcHMgPSB1c3JwLT5nZXRf
dGltZV9sYXN0X3BwcygwKTsKCS8vc3RkOjpjb3V0IDw8ICJVU1JQIHRpbWU6ICIgPDwgKGJvb3N0
Ojpmb3JtYXQoIiUwLjlmIikgJSB1c3JwLT5nZXRfdGltZV9sYXN0X3BwcygwKS5nZXRfcmVhbF9z
ZWNzKCkpIDw8IHN0ZDo6ZW5kbDsKCS8vc3RkOjpjb3V0IDw8ICJHUFNETyB0aW1lOiAiIDw8IChi
b29zdDo6Zm9ybWF0KCIlMC45ZiIpICUgZ3BzX3RpbWUuZ2V0X3JlYWxfc2VjcygpKSA8PCBzdGQ6
OmVuZGw7CglpZiAoZ3BzX3RpbWUuZ2V0X3JlYWxfc2VjcygpID09IHRpbWVfbGFzdF9wcHMuZ2V0
X3JlYWxfc2VjcygpKQoJCXN0ZDo6Y291dCA8PCAiVVNSUCB0aW1lIHN5bmNocm9uaXplZCB0byBH
UFMgdGltZSIgPDwgc3RkOjplbmRsCgkJCQkJCQk8PCBzdGQ6OmVuZGw7CgllbHNlCgkJc3RkOjpj
ZXJyIDw8ICJGYWlsZWQgdG8gc3luY2hyb25pemUgVVNSUCB0aW1lIHRvIEdQUyB0aW1lIiA8PCBz
dGQ6OmVuZGwKCQkJCQkJCTw8IHN0ZDo6ZW5kbDsKCgkvL3NldCByeHN0cmVhbQoJc3RkOjp2ZWN0
b3I8c2l6ZV90PiBjaGFubmVsX251bXM7CgljaGFubmVsX251bXMucHVzaF9iYWNrKDApOwoJdWhk
OjpzdHJlYW1fYXJnc190IHN0cmVhbV9hcmdzKGNwdWZtdCwgd2lyZWZtdCk7CglzdHJlYW1fYXJn
cy5jaGFubmVscyA9IGNoYW5uZWxfbnVtczsKCXVoZDo6cnhfc3RyZWFtZXI6OnNwdHIgcnhfc3Ry
ZWFtID0gdXNycC0+Z2V0X3J4X3N0cmVhbShzdHJlYW1fYXJncyk7Cgljb25zdCBzaXplX3Qgc2Ft
cHNfcGVyX2J1ZmYgPSByYXRlICogaW50ZWdyYXRpb25fdGltZSAvIDEwMDAuMDsKCWNvbnN0IHNp
emVfdCBzYW1wc19wZXJfdGVtcCA9IHJhdGU7Cglkb3VibGUgd2lyZV9yYXRlID0gdXNycC0+Z2V0
X3J4X3JhdGUoKSAqIHJ4X3N0cmVhbS0+Z2V0X251bV9jaGFubmVscygpICogdWhkOjpjb252ZXJ0
OjpnZXRfYnl0ZXNfcGVyX2l0ZW0od2lyZWZtdCk7Cglkb3VibGUgY3B1X3JhdGUgPSB1c3JwLT5n
ZXRfcnhfcmF0ZSgpICogcnhfc3RyZWFtLT5nZXRfbnVtX2NoYW5uZWxzKCkgKiB1aGQ6OmNvbnZl
cnQ6OmdldF9ieXRlc19wZXJfaXRlbShjcHVmbXQpOwoKCS8vIGNyZWF0ZSBidWZmZXIKCWNvbnN0
IHNpemVfdCBieXRlc19wZXJfc2FtcCA9IHVoZDo6Y29udmVydDo6Z2V0X2J5dGVzX3Blcl9pdGVt
KGNwdWZtdCk7CglzdGQ6OnZlY3RvcjxzdGQ6OnZlY3RvcjxjaGFyPj4gYnVmZnMocnhfc3RyZWFt
LT5nZXRfbnVtX2NoYW5uZWxzKCksIHN0ZDo6dmVjdG9yPGNoYXI+KHJhdGUgKiB0b3RhbF90aW1l
ICogYnl0ZXNfcGVyX3NhbXApKTsKCXN0ZDo6dmVjdG9yPGNoYXIgKj4gYnVmZl9wdHJzOwoJYnVm
Zl9wdHJzLnB1c2hfYmFjaygmYnVmZnNbMF0uZnJvbnQoKSk7CgoJLy90aGlzIGlzIGp1c3QgbWFr
aW5nIHRoZSBvYmplY3RzIHN0aWxsCgoJdWhkOjpyeF9tZXRhZGF0YV90IG1kOwoJdWhkOjpzdHJl
YW1fY21kX3QgY21kKHVoZDo6c3RyZWFtX2NtZF90OjpTVFJFQU1fTU9ERV9TVEFSVF9DT05USU5V
T1VTKTsKCgkvLyBjcmVhdGUgZmlsZXMKCXN0ZDo6b2ZzdHJlYW0gb3V0ZmlsZVsxXTsKCgkvLyBz
dGFydCByZWNvcmRpbmcKCXVoZDo6dGltZV9zcGVjX3QgbGFzdF90aW1lOwoJdW5zaWduZWQgbG9u
ZyBsb25nIG51bV9vdmVyZmxvd3MgPSAwOwoJdW5zaWduZWQgbG9uZyBsb25nIG51bV9ub3JtYWwg
PSAwOwoJdW5zaWduZWQgbG9uZyBsb25nIG51bV9kcm9wcGVkX3NhbXBzID0gMDsKCXVuc2lnbmVk
IGxvbmcgbG9uZyBsYXN0X292ZXJmbG93X251bV9zYW1wcyA9IDA7Cgl1bnNpZ25lZCBsb25nIGxv
bmcgbnVtX3RpbWVvdXQgPSAwOwoJc2l6ZV90IGFjY19yeF9zYW1wcyA9IDA7Cgljb25zdCBkb3Vi
bGUgc3RhcnRfZGVsYXkgPSAxOyAvL3RoaXMgd2FzIG9yZ2luYWxseSAwLjA1LCBidXQgSSB3b3Vs
ZCBsaWtlIHRvIHN0YXJ0IHRoaW5ncyBvbiBldmFuIHNlY29uZHMgdG8gYXZvaWQgYW1idWd1aXR5
Cglkb3VibGUgdGltZW91dCA9IDEwOwoJdGltZV90IHJlZl90aW1lOwoJc3RydWN0IHRtICp0aW1l
aW5mbzsKCWNoYXIgdGltZV9zdHJbMThdOwoKCS8vIFByaW50IHNldHRpbmcKCWludCBudW1fc2Vj
dGlvbiA9IDA7CglzdGQ6OnN0cmluZyBncHNfZ3BnZ2E7CglzdGQ6OnN0cmluZyBncHNfZ3BybWM7
CgoJc2l6ZV90IGYgPSAwOwoJc2l6ZV90IGEgPSAwOwoJc2l6ZV90IHN0YXJ0X2NvbGxlY3Rpb25f
ZmxhZyA9IDA7CgljaGFyIHRpbWVfc3RyX2NtcFsxNV07CgoJaWYgKG91dGZpbGVbMF0uaXNfb3Bl
bigpKQoJewoJCW91dGZpbGVbMF0uY2xvc2UoKTsKCX0KCgl0aW1lKCZyYXd0aW1lKTsKCXRpbWVp
bmZvID0gZ210aW1lKCZyYXd0aW1lKTsKCXN0cmZ0aW1lKHRpbWVfc3RyLCAxOCwgIiVZJW0lZFQl
SCVNJVNaIiwgdGltZWluZm8pOwoKCW91dGZpbGVbMF0ub3BlbigoYm9vc3Q6OmZvcm1hdCgiJXMl
c18lcy4lcyIpICUgZmlsZSAlIHRpbWVfc3RyICUgc2lnbmFsICUgd2lyZWZtdCkuc3RyKCkuY19z
dHIoKSwgc3RkOjpvZnN0cmVhbTo6YmluYXJ5KTsKCWdwc19ncGdnYSA9IHVzcnAtPmdldF9tYm9h
cmRfc2Vuc29yKCJncHNfZ3BnZ2EiKS50b19wcF9zdHJpbmcoKTsKCWdwc19ncHJtYyA9IHVzcnAt
PmdldF9tYm9hcmRfc2Vuc29yKCJncHNfZ3BybWMiKS50b19wcF9zdHJpbmcoKTsKCgljbWQuc3Ry
ZWFtX25vdyA9IChidWZmX3B0cnMuc2l6ZSgpID09IDEpOwoJY21kLnN0cmVhbV9tb2RlID0gdWhk
OjpzdHJlYW1fY21kX3Q6OlNUUkVBTV9NT0RFX1NUQVJUX0NPTlRJTlVPVVM7CgljbWQuc3RyZWFt
X25vdyA9IGZhbHNlOwoKCS8vQ2FsY3VsYXRlIG5leHQgMTAgc2Vjb25kIEdQUyB0aW1lIHRvIHN0
YXJ0Cglkb3VibGUgdGltZU5vdyA9IHVzcnAtPmdldF90aW1lX25vdygpLmdldF9yZWFsX3NlY3Mo
KTsKCWNtZC50aW1lX3NwZWMgPSB1aGQ6OnRpbWVfc3BlY190KGNlaWwodGltZU5vdyAvIDEwLjAp
ICogMTAuMCk7CgoJLyogICAgICAgICAgICAgICAgICAgICAKCQkvL09wZW4gRm9yIFRpbWluZyBE
ZWJ1Z2dpbmcKCQlzdGQ6OmNvdXQgPDwgIlJlY29yZCB0aW1lOiAiIDw8IChib29zdDo6Zm9ybWF0
KCIlMC45ZiIpICUgY21kLnRpbWVfc3BlYy5nZXRfcmVhbF9zZWNzKCkpIDw8IHN0ZDo6ZW5kbDsK
CQl1aGQ6OnRpbWVfc3BlY190IHRpbWVfbGFzdF9wcHMgPSB1c3JwLT5nZXRfdGltZV9ub3coMCk7
CgkJc3RkOjpjb3V0IDw8ICJVU1JQIHRpbWU6ICAgIiA8PCAoYm9vc3Q6OmZvcm1hdCgiJTAuOWYi
KSAlIHRpbWVfbGFzdF9wcHMuZ2V0X3JlYWxfc2VjcygpKSA8PCBzdGQ6OmVuZGw7CgkJZ3BzX3Rp
bWUgPSB1aGQ6OnRpbWVfc3BlY190KHRpbWVfdCh1c3JwLT5nZXRfbWJvYXJkX3NlbnNvcigiZ3Bz
X3RpbWUiLCAwKS50b19pbnQoKSkpOwoJCXN0ZDo6Y291dCA8PCAiR1BTRE8gdGltZTogICIgPDwg
KGJvb3N0Ojpmb3JtYXQoIiUwLjlmIikgJSBncHNfdGltZS5nZXRfcmVhbF9zZWNzKCkpIDw8IHN0
ZDo6ZW5kbDsgCgkqLwoKCXJ4X3N0cmVhbS0+aXNzdWVfc3RyZWFtX2NtZChjbWQpOwoKCS8vdGhp
cyBpcyB3aGVuIHRoZSB0aW1lIHN0YXJ0cwoJZG91YmxlIHRpbWUxID0gY21kLnRpbWVfc3BlYy5n
ZXRfcmVhbF9zZWNzKCk7CglzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiVGltZSBvZiBVU1JQ
IHdoZW4gcmVjb3JkaW5nIHN0YXJ0cyAlZlxuIikgJSB0aW1lMTsKCglhY2Nfcnhfc2FtcHMgPSAw
OwoJbnVtX292ZXJmbG93cyA9IDA7CgludW1fbm9ybWFsID0gMDsKCXN0ZDo6Y291dC5mbHVzaCgp
OwoKCXdoaWxlICgoYWNjX3J4X3NhbXBzIDwgdG90YWxfdGltZSAqIHJhdGUpKQoJewoKCQlzaXpl
X3QgbnVtX3J4X3NhbXBzID0gcnhfc3RyZWFtLT5yZWN2KGJ1ZmZfcHRycywgc2FtcHNfcGVyX2J1
ZmYsIG1kLCB0aW1lb3V0KTsgLy9meWksIHRoaXMgaXMgYmxvY2tpbmcKCgkJc2l6ZV90IG51bV9k
cm9wcGVkX3NhbXBzID0gKG1kLnRpbWVfc3BlYyAtIGxhc3RfdGltZSkudG9fdGlja3MocmF0ZSk7
CgkJbGFzdF90aW1lID0gbWQudGltZV9zcGVjOwoJCWFjY19yeF9zYW1wcyArPSBudW1fcnhfc2Ft
cHM7CgoJCS8vc3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIlJlY2VpdmVkIHBhY2tldDogJXUg
c2FtcGxlcywgJXUgZnVsbCBzZWNzLCAlLjE1ZiBmcmFjIHNlY3MiKSAlbnVtX3J4X3NhbXBzICUg
bWQudGltZV9zcGVjLmdldF9mdWxsX3NlY3MoKSAlIG1kLnRpbWVfc3BlYy5nZXRfZnJhY19zZWNz
KCkgPDwgc3RkOjplbmRsOwoKCQlidWZmX3B0cnMuY2xlYXIoKTsKCQlidWZmX3B0cnMucHVzaF9i
YWNrKCZidWZmc1swXVthY2Nfcnhfc2FtcHMgKiBieXRlc19wZXJfc2FtcF0pOwoJCWRvdWJsZSB0
aW1lX3RtcCA9IChtZC50aW1lX3NwZWMgLSBsYXN0X3RpbWUpLmdldF9yZWFsX3NlY3MoKTsKCQlp
ZiAodGltZV90bXAgPiAwLjAwMDAwMSkKCQl7CgkJCXN0ZDo6Y291dCA8PCBib29zdDo6Zm9ybWF0
KCJYWCAlZCBHZXQgVGltZSBvZiBVU1JQICVmXG4iKSAlIGYgJSBudW1fZHJvcHBlZF9zYW1wczsK
CQl9CgoJCXN3aXRjaCAobWQuZXJyb3JfY29kZSkKCQl7CgkJY2FzZSB1aGQ6OnJ4X21ldGFkYXRh
X3Q6OkVSUk9SX0NPREVfTk9ORToKCQkJbnVtX25vcm1hbCsrOwoJCQlicmVhazsKCQljYXNlIHVo
ZDo6cnhfbWV0YWRhdGFfdDo6RVJST1JfQ09ERV9PVkVSRkxPVzoKCQkJbnVtX292ZXJmbG93cysr
OwoJCQlzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiT3ZlcmZsb3dcbiIpOwoJCQlicmVhazsK
CQljYXNlIHVoZDo6cnhfbWV0YWRhdGFfdDo6RVJST1JfQ09ERV9USU1FT1VUOgoJCQludW1fdGlt
ZW91dCsrOwoJCQlzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiVGltZW91dFxuIik7CgkJCWJy
ZWFrOwoJCWNhc2UgdWhkOjpyeF9tZXRhZGF0YV90OjpFUlJPUl9DT0RFX0FMSUdOTUVOVDoKCQkJ
c3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIkFsaWdubWVudCBlcnJvclxuIik7CgkJCWJyZWFr
OwoJCWNhc2UgdWhkOjpyeF9tZXRhZGF0YV90OjpFUlJPUl9DT0RFX0JBRF9QQUNLRVQ6CgkJCXN0
ZDo6Y291dCA8PCBib29zdDo6Zm9ybWF0KCJCYWQgcGFja2V0XG4iKTsKCQkJYnJlYWs7CgkJZGVm
YXVsdDoKCQkJc3RkOjpjZXJyIDw8IGJvb3N0Ojpmb3JtYXQoIm1kLmVycm9yX2NvZGUJJWQiKSAl
IG1kLmVycm9yX2NvZGUgPDwgc3RkOjplbmRsOwoJCQlicmVhazsKCQl9Cgl9CgoJYnVmZl9wdHJz
LmNsZWFyKCk7CglidWZmX3B0cnMucHVzaF9iYWNrKCZidWZmc1swXS5mcm9udCgpKTsKCglzdGQ6
OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiU3RhcnQgd3JpdGluZy4uLi5cbiIpOwoJb3V0ZmlsZVsw
XS53cml0ZSgoY29uc3QgY2hhciAqKWJ1ZmZfcHRyc1swXSwgYWNjX3J4X3NhbXBzICogYnl0ZXNf
cGVyX3NhbXApOwoKCXN0ZDo6Y291dCA8PCBib29zdDo6Zm9ybWF0KCJUb3RhbCBTYW1wbGVzICVk
XG4iKSAlIGFjY19yeF9zYW1wczsKCWlmIChvdXRmaWxlWzBdLmlzX29wZW4oKSkKCXsKCQlvdXRm
aWxlWzBdLmNsb3NlKCk7Cgl9CgoJYnVmZnNbMF0uZXJhc2UoYnVmZnNbMF0uYmVnaW4oKSwgYnVm
ZnNbMF0uZW5kKCkpOwoJYnVmZnNbMF0uY2xlYXIoKTsKCWxvZ2ZpbGUub3BlbigoYm9vc3Q6OmZv
cm1hdCgiJXMiKSAlIHJmaWxlKS5zdHIoKS5jX3N0cigpKTsKCWxvZ2ZpbGUgPDwgYm9vc3Q6OmZv
cm1hdCgiMCIpOwoJbG9nZmlsZS5jbG9zZSgpOwoKCWFjY19yeF9zYW1wcyA9IDA7CgludW1fb3Zl
cmZsb3dzID0gMDsKCW51bV9ub3JtYWwgPSAwOwoJc3RkOjpjb3V0LmZsdXNoKCk7Cglib29zdDo6
dGhpc190aHJlYWQ6OnNsZWVwKGJvb3N0Ojpwb3NpeF90aW1lOjpzZWNvbmRzKHNldHVwX3RpbWUp
KTsKCXJldHVybiBFWElUX1NVQ0NFU1M7Cn0=
--0000000000006f5ab405a769e208
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--0000000000006f5ab405a769e208--

