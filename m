Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AD54EC305
	for <lists+usrp-users@lfdr.de>; Wed, 30 Mar 2022 14:09:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8B2C538499E
	for <lists+usrp-users@lfdr.de>; Wed, 30 Mar 2022 08:09:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648642184; bh=fRIgSCG35KzqpKKipihWpzWfX85rK0xoSSqMJcQLB40=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PHJalf/rnl4G9efLEJ0ja0ndWTLWkV+sgpoOXQRiQTkbXaMiWcOU10uJtzBcj5RnN
	 lIQ9Zzy/yyPsAxdXTN9eCrCChXVaqsqyig8LsCkX9UFW3RyWvfKNK5PXQ2qFgdxd1V
	 Lysvq6laWbjtktSACOn/q2nHrk3bZWFyE7M8XdKb6errs1X38pj5bkWhWcSfw6WHaI
	 uE3kEg5xvfW+23HjxL3wkF0pT6glG0O6wsnEDWsCgrlZoXzPCy9sqIan8G6espYdyg
	 HY4ifKf3IHDO/LYKC434M2sKqrMdEUZSdfNacS2bog+KmwPDvQZodfYBy8WaujMzfk
	 FsMmHdQlv/wxA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1B3C1384967
	for <usrp-users@lists.ettus.com>; Wed, 30 Mar 2022 08:08:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648642124; bh=R9HS11qpEO+CVskkwjwxWBi1jlt9C9RVIp/7RNO0Rf0=;
	h=Date:To:From:Subject:From;
	b=gs5hOhK4fwlShcWWXX3uZNY4dUG76uQfpDuzlMP73qBHV93GHHEre9nh3CfWpUWNp
	 8VQ6tnrTc1OAFO1oPsgbl21+z4xLuASAy1PgYEwhuwaFbkN+o+QtQ5B8bWHN4Kmp/i
	 NvBKoA622nAhQrFmptuL+vP8AoY33xqcAaSc2lxLWOJoaMQKay1EmAmyON6teTi2S0
	 2PirKIPZdb7nVHOCSq3nMoYKeeASQgGUnO2i4kV6pGBFwUDqo3gbcNs16CD5yEzNxh
	 Z8D8rOZps3WUY0rUmTpPkGsQW+nTXNZLvEZ7Q/dZcRI7S3uW0N7d5TM4SPKIz8juyL
	 m883br/ckjFkQ==
Date: Wed, 30 Mar 2022 12:08:44 +0000
To: usrp-users@lists.ettus.com
From: vinci.22@osu.edu
Message-ID: <HXdIWyWnO6xtR479R7URL5cHEks26fhb9FcBcWCUek@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: QS66EAZITSRORWPR65LXD5AUHISQ55SB
X-Message-ID-Hash: QS66EAZITSRORWPR65LXD5AUHISQ55SB
X-MailFrom: vinci.22@osu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Timed Commands using two USRP-2955 (X310s with TwinRXs)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QS66EAZITSRORWPR65LXD5AUHISQ55SB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8993999397203686403=="

This is a multi-part message in MIME format.

--===============8993999397203686403==
Content-Type: multipart/alternative;
 boundary="b1_HXdIWyWnO6xtR479R7URL5cHEks26fhb9FcBcWCUek"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_HXdIWyWnO6xtR479R7URL5cHEks26fhb9FcBcWCUek
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I am trying to setup a multi-channel phase coherent receiver using X310s =
with TwinRXs installed. I have set up my radios such that the LO1 and LO2=
 signals from TwinRX 0 (channels 0 and 1) are put into splitters and then=
 shared to TwinRX 1, 2 and 3 (channels 2 and 3, etc.). Both radios (USRP =
0 and USRP 1) are connected to the same 10 MHz reference clock and PPS so=
urces. I am using GNURadio and set all the required settings to enable LO=
 sharing and multi-radio. The GNURadio generated Python file contains all=
 these settings as:

=C2=A0

self.uhd_usrp_source_0.set_clock_source('external', 0)

self.uhd_usrp_source_0.set_time_source('external', 0)

self.uhd_usrp_source_0.set_clock_source('external', 1)

self.uhd_usrp_source_0.set_time_source('external', 1)

...

=C2=A0

_last_pps_time =3D self.uhd_usrp_source_0.get_time_last_pps().get_real_se=
cs()

\# Poll get_time_last_pps() every 50 ms until a change is seen

while(self.uhd_usrp_source_0.get_time_last_pps().get_real_secs() =3D=3D _=
last_pps_time):

=C2=A0 =C2=A0 time.sleep(0.05)

\# Set the time to PC time on next PPS

self.uhd_usrp_source_0.set_time_next_pps(uhd.time_spec(int(time.time()) +=
 1.0))

\# Sleep 1 second to ensure next PPS has come

time.sleep(1)

...

=C2=A0

self.uhd_usrp_source_0.set_lo_source('internal', uhd.ALL_LOS, 0)\
self.uhd_usrp_source_0.set_lo_export_enabled(True, uhd.ALL_LOS, 0)

...

self.uhd_usrp_source_0.set_lo_source('companion', uhd.ALL_LOS, 1)\
self.uhd_usrp_source_0.set_lo_export_enabled(False, uhd.ALL_LOS, 1)

...

self.uhd_usrp_source_0.set_lo_source('external', uhd.ALL_LOS, 2)\
self.uhd_usrp_source_0.set_lo_export_enabled(False, uhd.ALL_LOS, 2)

...

self.uhd_usrp_source_0.set_lo_source('external', uhd.ALL_LOS, 3)\
self.uhd_usrp_source_0.set_lo_export_enabled(False, uhd.ALL_LOS, 3)

...

self.uhd_usrp_source_0.set_lo_source('external', uhd.ALL_LOS, 4)\
self.uhd_usrp_source_0.set_lo_export_enabled(False, uhd.ALL_LOS, 4)

...

... etc.

...

self.uhd_usrp_source_0.set_lo_source('external', uhd.ALL_LOS, 7)\
self.uhd_usrp_source_0.set_lo_export_enabled(False, uhd.ALL_LOS, 7)

=C2=A0

According to several guides, the next step is to make sure rx frequency t=
uning happens synchronously using timed commands. I converted this from C=
++ to python and implemented it in my set_fc() function as:

=C2=A0

def set_fc(self, fc):

=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.fc =3D fc

=C2=A0 =C2=A0 =C2=A0 =C2=A0 # get the actual tune frequency by tuning the=
 first channel

=C2=A0 =C2=A0 =C2=A0 =C2=A0 tune_resp =3D self.uhd_usrp_source_0.set_cent=
er_freq(self.fc,0)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 tune_req =3D uhd.tune_request(rf_freq=3Dself.=
fc, rf_freq_policy=3Duhd.tune_request.POLICY_MANUAL,

=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dsp_freq=3Dtune_resp.actual_dsp=
_freq, dsp_freq_policy=3Duhd.tune_request.POLICY_MANUAL)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 # all other channels anyway

=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_center_freq(tune_r=
eq, 1)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_center_freq(tune_r=
eq, 2)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_center_freq(tune_r=
eq, 3)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_center_freq(tune_r=
eq, 4)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_center_freq(tune_r=
eq, 5)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_center_freq(tune_r=
eq, 6)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_center_freq(tune_r=
eq, 7)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 # self.uhd_usrp_source_0.set_center_freq(tune=
_req)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 # create a time (from mboard 0) when followin=
g commands will happen simultaneously

=C2=A0 =C2=A0 =C2=A0 =C2=A0 cmd_time =3D self.uhd_usrp_source_0.get_time_=
now() + uhd.time_spec(0.1)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 # tell usrp to perform all following commands=
 at cmd_time

=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_command_time(cmd_t=
ime)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 # commands tuning all all channels to the sam=
e frequency, ready to be executed

=C2=A0 =C2=A0 =C2=A0 =C2=A0 #self.uhd_usrp_source_0.set_center_freq(tune_=
req) # tune all freqs at once

=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_center_freq(tune_r=
eq, 0)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_center_freq(tune_r=
eq, 1)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_center_freq(tune_r=
eq, 2)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_center_freq(tune_r=
eq, 3)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_center_freq(tune_r=
eq, 4)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_center_freq(tune_r=
eq, 5)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_center_freq(tune_r=
eq, 6)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.set_center_freq(tune_r=
eq, 7)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 # sleep and allow tunes to happen without int=
erfering commands (50ms after syncronuous retune occurs)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 time.sleep(0.15)

=C2=A0 =C2=A0 =C2=A0 =C2=A0 # clear command time so future commands are s=
ent ASAP

=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_source_0.clear_command_time()

=C2=A0 =C2=A0 =C2=A0 =C2=A0

Running this code, (with a call to set_fc() at the start to synchronize) =
grants perfect phase alignment on channels 0 through 3, all on the first =
USRP. However, channels 4 through 7 have arbitrary multiples of 90 degree=
 phase offset between channels after tuning.=C2=A0

=C2=A0

To explore this, I configured each USRP to share the first channel LO sig=
nals with only the channels on that radio as you would for single radio L=
O sharing but kept them under the same usrp object in the code. Sure enou=
gh, the same error occurs where the first radio listed in=C2=A0"addr0=3D1=
92.168.40.2,addr1=3D192.168.40.3" is perfect but the second radio has amb=
iguous phase between channels. Switching the addr number of the IP addres=
ses ("addr0=3D192.168.40.3,addr1=3D192.168.40.2") gives the same result, =
where addr0 is perfect and addr1 has the ambiguity.

=C2=A0

I suspect there is a problem with my use of timed commands in the frequen=
cy tuning section. Maybe I am missing an important line which ensured USR=
P 0 and USRP 1 are governed by the same timed command.

=C2=A0

\-- UPDATE --

If I separate the timed command tunings for each mboard as:

=C2=A0

cmd_time0 =3D self.uhd_usrp_source_0.get_time_now(0) + uhd.time_spec(0.1)

cmd_time1 =3D self.uhd_usrp_source_0.get_time_now(1) + uhd.time_spec(0.1)

self.uhd_usrp_source_0.set_command_time(cmd_time0,0)

self.uhd_usrp_source_0.set_command_time(cmd_time1,1)

=E2=80=A6

self.uhd_usrp_source_0.clear_command_time(0)

self.uhd_usrp_source_0.clear_command_time(1)

=C2=A0

Then the second radio on addr1 now retunes synchronously for channels on =
that radio. However, there still exists random 90 degree phase ambiguity =
between mboard 0 and mboard1 after retunes. Perhaps mboard0 and mboard1 a=
re not synced?

--b1_HXdIWyWnO6xtR479R7URL5cHEks26fhb9FcBcWCUek
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I am trying to setup a multi-channel phase coherent receiver using X310s=
 with TwinRXs installed. I have set up my radios such that the LO1 and LO2 =
signals from TwinRX 0 (channels 0 and 1) are put into splitters and then sh=
ared to TwinRX 1, 2 and 3 (channels 2 and 3, etc.). Both radios (USRP 0 and=
 USRP 1) are connected to the same 10 MHz reference clock and PPS sources. =
I am using GNURadio and set all the required settings to enable LO sharing =
and multi-radio. The GNURadio generated Python file contains all these sett=
ings as:</p><p>&nbsp;</p><p>self.uhd_usrp_source_0.set_clock_source('extern=
al', 0)</p><p>self.uhd_usrp_source_0.set_time_source('external', 0)</p><p>s=
elf.uhd_usrp_source_0.set_clock_source('external', 1)</p><p>self.uhd_usrp_s=
ource_0.set_time_source('external', 1)</p><p>...</p><p>&nbsp;</p><p>_last_p=
ps_time =3D self.uhd_usrp_source_0.get_time_last_pps().get_real_secs()</p><=
p># Poll get_time_last_pps() every 50 ms until a change is seen</p><p>while=
(self.uhd_usrp_source_0.get_time_last_pps().get_real_secs() =3D=3D _last_pp=
s_time):</p><p>&nbsp; &nbsp; time.sleep(0.05)</p><p># Set the time to PC ti=
me on next PPS</p><p>self.uhd_usrp_source_0.set_time_next_pps(uhd.time_spec=
(int(time.time()) + 1.0))</p><p># Sleep 1 second to ensure next PPS has com=
e</p><p>time.sleep(1)</p><p>...</p><p>&nbsp;</p><p>self.uhd_usrp_source_0.s=
et_lo_source('internal', uhd.ALL_LOS, 0)<br>self.uhd_usrp_source_0.set_lo_e=
xport_enabled(True, uhd.ALL_LOS, 0)</p><p>...</p><p>self.uhd_usrp_source_0.=
set_lo_source('companion', uhd.ALL_LOS, 1)<br>self.uhd_usrp_source_0.set_lo=
_export_enabled(False, uhd.ALL_LOS, 1)</p><p>...</p><p>self.uhd_usrp_source=
_0.set_lo_source('external', uhd.ALL_LOS, 2)<br>self.uhd_usrp_source_0.set_=
lo_export_enabled(False, uhd.ALL_LOS, 2)</p><p>...</p><p>self.uhd_usrp_sour=
ce_0.set_lo_source('external', uhd.ALL_LOS, 3)<br>self.uhd_usrp_source_0.se=
t_lo_export_enabled(False, uhd.ALL_LOS, 3)</p><p>...</p><p>self.uhd_usrp_so=
urce_0.set_lo_source('external', uhd.ALL_LOS, 4)<br>self.uhd_usrp_source_0.=
set_lo_export_enabled(False, uhd.ALL_LOS, 4)</p><p>...</p><p>... etc.</p><p=
>...</p><p>self.uhd_usrp_source_0.set_lo_source('external', uhd.ALL_LOS, 7)=
<br>self.uhd_usrp_source_0.set_lo_export_enabled(False, uhd.ALL_LOS, 7)</p>=
<p>&nbsp;</p><p>According to several guides, the next step is to make sure =
rx frequency tuning happens synchronously using timed commands. I converted=
 this from C++ to python and implemented it in my set_fc() function as:</p>=
<p>&nbsp;</p><p>def set_fc(self, fc):</p><p>&nbsp; &nbsp; &nbsp; &nbsp; sel=
f.fc =3D fc</p><p>&nbsp; &nbsp; &nbsp; &nbsp; # get the actual tune frequen=
cy by tuning the first channel</p><p>&nbsp; &nbsp; &nbsp; &nbsp; tune_resp =
=3D self.uhd_usrp_source_0.set_center_freq(self.fc,0)</p><p>&nbsp; &nbsp; &=
nbsp; &nbsp; tune_req =3D uhd.tune_request(rf_freq=3Dself.fc, rf_freq_polic=
y=3Duhd.tune_request.POLICY_MANUAL,</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; dsp_freq=3Dtune_resp.actual_dsp_freq, dsp_freq_policy=3Duhd.tune_r=
equest.POLICY_MANUAL)</p><p>&nbsp; &nbsp; &nbsp; &nbsp; # all other channel=
s anyway</p><p>&nbsp; &nbsp; &nbsp; &nbsp; self.uhd_usrp_source_0.set_cente=
r_freq(tune_req, 1)</p><p>&nbsp; &nbsp; &nbsp; &nbsp; self.uhd_usrp_source_=
0.set_center_freq(tune_req, 2)</p><p>&nbsp; &nbsp; &nbsp; &nbsp; self.uhd_u=
srp_source_0.set_center_freq(tune_req, 3)</p><p>&nbsp; &nbsp; &nbsp; &nbsp;=
 self.uhd_usrp_source_0.set_center_freq(tune_req, 4)</p><p>&nbsp; &nbsp; &n=
bsp; &nbsp; self.uhd_usrp_source_0.set_center_freq(tune_req, 5)</p><p>&nbsp=
; &nbsp; &nbsp; &nbsp; self.uhd_usrp_source_0.set_center_freq(tune_req, 6)<=
/p><p>&nbsp; &nbsp; &nbsp; &nbsp; self.uhd_usrp_source_0.set_center_freq(tu=
ne_req, 7)</p><p>&nbsp; &nbsp; &nbsp; &nbsp; # self.uhd_usrp_source_0.set_c=
enter_freq(tune_req)</p><p>&nbsp; &nbsp; &nbsp; &nbsp; # create a time (fro=
m mboard 0) when following commands will happen simultaneously</p><p>&nbsp;=
 &nbsp; &nbsp; &nbsp; cmd_time =3D self.uhd_usrp_source_0.get_time_now() + =
uhd.time_spec(0.1)</p><p>&nbsp; &nbsp; &nbsp; &nbsp; # tell usrp to perform=
 all following commands at cmd_time</p><p>&nbsp; &nbsp; &nbsp; &nbsp; self.=
uhd_usrp_source_0.set_command_time(cmd_time)</p><p>&nbsp; &nbsp; &nbsp; &nb=
sp; # commands tuning all all channels to the same frequency, ready to be e=
xecuted</p><p>&nbsp; &nbsp; &nbsp; &nbsp; #self.uhd_usrp_source_0.set_cente=
r_freq(tune_req) # tune all freqs at once</p><p>&nbsp; &nbsp; &nbsp; &nbsp;=
 self.uhd_usrp_source_0.set_center_freq(tune_req, 0)</p><p>&nbsp; &nbsp; &n=
bsp; &nbsp; self.uhd_usrp_source_0.set_center_freq(tune_req, 1)</p><p>&nbsp=
; &nbsp; &nbsp; &nbsp; self.uhd_usrp_source_0.set_center_freq(tune_req, 2)<=
/p><p>&nbsp; &nbsp; &nbsp; &nbsp; self.uhd_usrp_source_0.set_center_freq(tu=
ne_req, 3)</p><p>&nbsp; &nbsp; &nbsp; &nbsp; self.uhd_usrp_source_0.set_cen=
ter_freq(tune_req, 4)</p><p>&nbsp; &nbsp; &nbsp; &nbsp; self.uhd_usrp_sourc=
e_0.set_center_freq(tune_req, 5)</p><p>&nbsp; &nbsp; &nbsp; &nbsp; self.uhd=
_usrp_source_0.set_center_freq(tune_req, 6)</p><p>&nbsp; &nbsp; &nbsp; &nbs=
p; self.uhd_usrp_source_0.set_center_freq(tune_req, 7)</p><p>&nbsp; &nbsp; =
&nbsp; &nbsp; # sleep and allow tunes to happen without interfering command=
s (50ms after syncronuous retune occurs)</p><p>&nbsp; &nbsp; &nbsp; &nbsp; =
time.sleep(0.15)</p><p>&nbsp; &nbsp; &nbsp; &nbsp; # clear command time so =
future commands are sent ASAP</p><p>&nbsp; &nbsp; &nbsp; &nbsp; self.uhd_us=
rp_source_0.clear_command_time()</p><p>&nbsp; &nbsp; &nbsp; &nbsp;</p><p>Ru=
nning this code, (with a call to set_fc() at the start to synchronize) gran=
ts perfect phase alignment on channels 0 through 3, all on the first USRP. =
However, channels 4 through 7 have arbitrary multiples of 90 degree phase o=
ffset between channels after tuning.&nbsp;</p><p>&nbsp;</p><p>To explore th=
is, I configured each USRP to share the first channel LO signals with only =
the channels on that radio as you would for single radio LO sharing but kep=
t them under the same usrp object in the code. Sure enough, the same error =
occurs where the first radio listed in&nbsp;"addr0=3D192.168.40.2,addr1=3D1=
92.168.40.3" is perfect but the second radio has ambiguous phase between ch=
annels. Switching the addr number of the IP addresses ("addr0=3D192.168.40.=
3,addr1=3D192.168.40.2") gives the same result, where addr0 is perfect and =
addr1 has the ambiguity.</p><p>&nbsp;</p><p>I suspect there is a problem wi=
th my use of timed commands in the frequency tuning section. Maybe I am mis=
sing an important line which ensured USRP 0 and USRP 1 are governed by the =
same timed command.</p><p>&nbsp;</p><p>-- UPDATE --</p><p>If I separate the=
 timed command tunings for each mboard as:</p><p>&nbsp;</p><p>cmd_time0 =3D=
 self.uhd_usrp_source_0.get_time_now(0) + uhd.time_spec(0.1)</p><p>cmd_time=
1 =3D self.uhd_usrp_source_0.get_time_now(1) + uhd.time_spec(0.1)</p><p>sel=
f.uhd_usrp_source_0.set_command_time(cmd_time0,0)</p><p>self.uhd_usrp_sourc=
e_0.set_command_time(cmd_time1,1)</p><p>=E2=80=A6</p><p>self.uhd_usrp_sourc=
e_0.clear_command_time(0)</p><p>self.uhd_usrp_source_0.clear_command_time(1=
)</p><p>&nbsp;</p><p>Then the second radio on addr1 now retunes synchronous=
ly for channels on that radio. However, there still exists random 90 degree=
 phase ambiguity between mboard 0 and mboard1 after retunes. Perhaps mboard=
0 and mboard1 are not synced?</p>

--b1_HXdIWyWnO6xtR479R7URL5cHEks26fhb9FcBcWCUek--

--===============8993999397203686403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8993999397203686403==--
