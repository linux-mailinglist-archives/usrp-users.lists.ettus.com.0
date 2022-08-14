Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EFC591DC2
	for <lists+usrp-users@lfdr.de>; Sun, 14 Aug 2022 05:44:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8D6053830B7
	for <lists+usrp-users@lfdr.de>; Sat, 13 Aug 2022 23:44:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660448666; bh=/LSehEuoJ/ApSE0Y3XxOpKHFcsImekH/y87kqeghXgg=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MkB9rOZHEMCvxxGyKFmidU1WTVj8tED9RTr9D6qVjhpg1qpEs7NUC3m8GBXld3143
	 +1Gi4cssOZzjKL4F2tgUupYfg2gMamwttfQd6I7hkPro/ygUSh9op9qD2Px8oQCfuB
	 Kfzp+IFqPG1xFW9UqpywT9WHJWp5nDiQaN40shRem87JD9BtBeai6V2LAoLeBdrT5q
	 9myYIyHiaWBJ0AfgzBl97X2YMY5ruRZXnQCmqxX0clVHkZv+D5HuJrsWTKBOU4DSY/
	 3Cg8Haw00GqfYgKwI8TBOq75FMUlb+ECXYj+f3znRY8r1BaUfxUlmib/zPLf0mBxwo
	 kg2jk/vM0uf/w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 851EE3812DB
	for <usrp-users@lists.ettus.com>; Sat, 13 Aug 2022 23:42:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660448549; bh=x+OU5BS8aSIHoeXR/OSTQ29N6h9JhcnKnNL96i7BOb0=;
	h=Date:To:From:Subject:From;
	b=V53/ZMPWL3rloHMILIgYiiy/dTxCVAo14qLNorinzt05XI7qRGLkuF/3n1FB7wUUb
	 k7t6R1B4oXIfHFin6qX39uWQot8o3SqMzQda0DLJXQ4/wVMFiO75PGJ1+m6RXAw1f+
	 kUz0jEPV8nDbDWuVFw5Es9FyFW/JDzjhc6TPm9E89ljt0Wem7FClpB6jiW6adq2nq5
	 q251YyY8d6mTnURbg29GSckE/hIxn/vJgOZiWvrdi9La8VaqPEhav198whxTgx1Ap9
	 7GNTw/d+hTiv6p+QNoZySsWgc51UIUEg9e3EEiIBvjz9U91t7APJHN8jjr1jEsYvJr
	 gNf12JsP3F27A==
Date: Sun, 14 Aug 2022 03:42:29 +0000
To: usrp-users@lists.ettus.com
From: woznych@gmail.com
Message-ID: <hzWs3qF6xxBCBGcGPFmnJ1YsRfa3ViNGYjOzgGH9w@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: TUWUS5M2C7BBNGA7CYITQFZU4XSKP5ZT
X-Message-ID-Hash: TUWUS5M2C7BBNGA7CYITQFZU4XSKP5ZT
X-MailFrom: woznych@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Bus errors and UHD exceptions with simple I/Q recorder
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TUWUS5M2C7BBNGA7CYITQFZU4XSKP5ZT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4572872211958079583=="

This is a multi-part message in MIME format.

--===============4572872211958079583==
Content-Type: multipart/alternative;
 boundary="b1_hzWs3qF6xxBCBGcGPFmnJ1YsRfa3ViNGYjOzgGH9w"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_hzWs3qF6xxBCBGcGPFmnJ1YsRfa3ViNGYjOzgGH9w
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Looked around on this mailing list and couldn=E2=80=99t find an explanati=
on, but I=E2=80=99m running in to random exceptions being thrown sometime=
s in my C++ I/Q recorder application. I can=E2=80=99t seem to replicate i=
t with the example code found in =E2=80=9Crx_samples_to_file=E2=80=9D. Us=
ing g++ (Ubuntu 9.4.0-1ubuntu1\~20.04.1) 9.4.0.

Code can be found here:

https://github.com/cwozny/sdr_channelizer/blob/b3d96675e79b0e9d1e469c51dd=
45b1396432829b/cpp/record_iq_usrp.cpp

Here is the output which happens sometimes, but not all of the time (cmd =
line arguments are specifying to record 152.6 MHz at 60 Msps, 60 dB gain,=
 56 MHz IF bandwidth, with a buffer size of 0.5 seconds and to run for 10=
 seconds):

`XXXXX:~/workarea/sdr_channelizer/cpp$ ./a.out 152.6 56 60 60 0.5 10`

`[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.2.0.HEAD-=
0-g321295fb`

`[INFO] [B200] Detected Device: B200mini`

`[INFO] [B200] Operating over USB 3.`

`[INFO] [B200] Initialize CODEC control...`

`[INFO] [B200] Initialize Radio control...`

`[INFO] [B200] Performing register loopback test... `

`[INFO] [B200] Register loopback test passed`

`[INFO] [B200] Setting master clock rate selection to 'automatic'.`

`[INFO] [B200] Asking for clock rate 16.000000 MHz... `

`[INFO] [B200] Actually got clock rate 16.000000 MHz.`

`FPGA version: `

`Firmware version: pp=EF=BF=BD0=EF=BF=BD`

`Using B200mini serial number `

`Frequency =3D 152.6 MHz`

`[INFO] [B200] Asking for clock rate 60.000000 MHz... `

`[INFO] [B200] Actually got clock rate 60.000000 MHz.`

`Sample Rate =3D 60 Msps`

`Bandwidth =3D 56 MHz`

`Disabled automatic gain control`

`Gain =3D 60 dB`

`[ERROR] [UHD] Exception caught in safe-call.`

`  in ~tx_vita_core_3000_impl`

`  at XXXXX/workarea/uhd/host/lib/usrp/cores/tx_vita_core_3000.cpp:49`

`this->clear(); -> AssertionError: accum_timeout < _timeout`

`  in wait_for_ack`

`  at XXXXX/workarea/uhd/host/lib/usrp/b200/b200_radio_ctrl_core.cpp:227`

`[ERROR] [UHD] Exception caught in safe-call.`

`  in ~b200_radio_ctrl_core_impl`

`  at XXXXX/workarea/uhd/host/lib/usrp/b200/b200_radio_ctrl_core.cpp:65`

`this->peek32(0); _async_task.reset(); -> AssertionError: accum_timeout <=
 _timeout`

`  in wait_for_ack`

`  at XXXXX/workarea/uhd/host/lib/usrp/b200/b200_radio_ctrl_core.cpp:227`

`[ERROR] [UHD] Exception caught in safe-call.`

`  in ~b200_radio_ctrl_core_impl`

`  at XXXXX/workarea/uhd/host/lib/usrp/b200/b200_radio_ctrl_core.cpp:65`

`this->peek32(0); _async_task.reset(); -> AssertionError: accum_timeout <=
 _timeout`

`  in wait_for_ack`

`  at XXXXX/workarea/uhd/host/lib/usrp/b200/b200_radio_ctrl_core.cpp:227`

When the application doesn=E2=80=99t throw this error and runs to executi=
on, it will **always** display =E2=80=9CBus error (core dumped)=E2=80=9D =
after it prints out the number of overruns that occurred. Unsure if that =
is related or not. Here is an example of it running to completion, but th=
rowing the bus error at the end:

`XXXXX:~/workarea/sdr_channelizer/cpp$ ./a.out 152.6 56 60 60 0.3 10`

`[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.2.0.HEAD-=
0-g321295fb`

`[INFO] [B200] Detected Device: B200mini`

`[INFO] [B200] Operating over USB 3.`

`[INFO] [B200] Initialize CODEC control...`

`[INFO] [B200] Initialize Radio control...`

`[INFO] [B200] Performing register loopback test... `

`[INFO] [B200] Register loopback test passed`

`[INFO] [B200] Setting master clock rate selection to 'automatic'.`

`[INFO] [B200] Asking for clock rate 16.000000 MHz... `

`[INFO] [B200] Actually got clock rate 16.000000 MHz.`

`FPGA version: `

`Firmware version: =EF=BF=BD`

`Using B200mini serial number `

`Frequency =3D 152.6 MHz`

`[INFO] [B200] Asking for clock rate 60.000000 MHz... `

`[INFO] [B200] Actually got clock rate 60.000000 MHz.`

`Sample Rate =3D 60 Msps`

`Bandwidth =3D 56 MHz`

`Disabled automatic gain control`

`Gain =3D 60 dB`

`Received 18000960`

`Gain =3D 59 dB`

`Received 18000570`

`Gain =3D 58 dB`

`Received 18000525`

`Received 18000206`

`Received 18000475`

`Received 18000848`

`Received 18000572`

`Received 18000386`

`Received 18001343`

`Received 18000548`

`Received 18000222`

`Received 18000420`

`Received 18000553`

`Received 18000247`

`Received 18000365`

`Received 18000567`

`Received 18000261`

`Received 18000336`

`Received 18000582`

`Received 18000305`

`Gain =3D 57 dB`

`Received 18000874`

`Received 18000711`

`Received 18000311`

`Received 18000868`

`Received 18000378`

`Received 18000096`

`Received 18000653`

`Received 18000582`

`Received 18000450`

`Received 18000517`

`Received 18001303`

`Received 18000844`

`Received 18000571`

`Received 18001314`

`Disabled RX`

`There were 0 overruns.`

`Bus error (core dumped)`

Has anyone run in to this before?

--b1_hzWs3qF6xxBCBGcGPFmnJ1YsRfa3ViNGYjOzgGH9w
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Looked around on this mailing list and couldn=E2=80=99t find an explanat=
ion, but I=E2=80=99m running in to random exceptions being thrown sometimes=
 in my C++ I/Q recorder application. I can=E2=80=99t seem to replicate it w=
ith the example code found in =E2=80=9Crx_samples_to_file=E2=80=9D. Using g=
++ (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0.</p><p>Code can be found here:</p>=
<p>https://github.com/cwozny/sdr_channelizer/blob/b3d96675e79b0e9d1e469c51d=
d45b1396432829b/cpp/record_iq_usrp.cpp</p><p>Here is the output which happe=
ns sometimes, but not all of the time (cmd line arguments are specifying to=
 record 152.6 MHz at 60 Msps, 60 dB gain, 56 MHz IF bandwidth, with a buffe=
r size of 0.5 seconds and to run for 10 seconds):</p><p><code>XXXXX:~/worka=
rea/sdr_channelizer/cpp$ ./a.out 152.6 56 60 60 0.5 10</code></p><p><code>[=
INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.2.0.HEAD-0-g3=
21295fb</code></p><p><code>[INFO] [B200] Detected Device: B200mini</code></=
p><p><code>[INFO] [B200] Operating over USB 3.</code></p><p><code>[INFO] [B=
200] Initialize CODEC control...</code></p><p><code>[INFO] [B200] Initializ=
e Radio control...</code></p><p><code>[INFO] [B200] Performing register loo=
pback test... </code></p><p><code>[INFO] [B200] Register loopback test pass=
ed</code></p><p><code>[INFO] [B200] Setting master clock rate selection to =
'automatic'.</code></p><p><code>[INFO] [B200] Asking for clock rate 16.0000=
00 MHz... </code></p><p><code>[INFO] [B200] Actually got clock rate 16.0000=
00 MHz.</code></p><p><code>FPGA version: </code></p><p><code>Firmware versi=
on: pp=EF=BF=BD0=EF=BF=BD</code></p><p><code>Using B200mini serial number <=
/code></p><p><code>Frequency =3D 152.6 MHz</code></p><p><code>[INFO] [B200]=
 Asking for clock rate 60.000000 MHz... </code></p><p><code>[INFO] [B200] A=
ctually got clock rate 60.000000 MHz.</code></p><p><code>Sample Rate =3D 60=
 Msps</code></p><p><code>Bandwidth =3D 56 MHz</code></p><p><code>Disabled a=
utomatic gain control</code></p><p><code>Gain =3D 60 dB</code></p><p><code>=
[ERROR] [UHD] Exception caught in safe-call.</code></p><p><code>  in ~tx_vi=
ta_core_3000_impl</code></p><p><code>  at XXXXX/workarea/uhd/host/lib/usrp/=
cores/tx_vita_core_3000.cpp:49</code></p><p><code>this-&gt;clear(); -&gt; A=
ssertionError: accum_timeout &lt; _timeout</code></p><p><code>  in wait_for=
_ack</code></p><p><code>  at XXXXX/workarea/uhd/host/lib/usrp/b200/b200_rad=
io_ctrl_core.cpp:227</code></p><p><code>[ERROR] [UHD] Exception caught in s=
afe-call.</code></p><p><code>  in ~b200_radio_ctrl_core_impl</code></p><p><=
code>  at XXXXX/workarea/uhd/host/lib/usrp/b200/b200_radio_ctrl_core.cpp:65=
</code></p><p><code>this-&gt;peek32(0); _async_task.reset(); -&gt; Assertio=
nError: accum_timeout &lt; _timeout</code></p><p><code>  in wait_for_ack</c=
ode></p><p><code>  at XXXXX/workarea/uhd/host/lib/usrp/b200/b200_radio_ctrl=
_core.cpp:227</code></p><p><code>[ERROR] [UHD] Exception caught in safe-cal=
l.</code></p><p><code>  in ~b200_radio_ctrl_core_impl</code></p><p><code>  =
at XXXXX/workarea/uhd/host/lib/usrp/b200/b200_radio_ctrl_core.cpp:65</code>=
</p><p><code>this-&gt;peek32(0); _async_task.reset(); -&gt; AssertionError:=
 accum_timeout &lt; _timeout</code></p><p><code>  in wait_for_ack</code></p=
><p><code>  at XXXXX/workarea/uhd/host/lib/usrp/b200/b200_radio_ctrl_core.c=
pp:227</code></p><p>When the application doesn=E2=80=99t throw this error a=
nd runs to execution, it will <strong>always</strong> display =E2=80=9CBus =
error (core dumped)=E2=80=9D after it prints out the number of overruns tha=
t occurred. Unsure if that is related or not. Here is an example of it runn=
ing to completion, but throwing the bus error at the end:</p><p><code>XXXXX=
:~/workarea/sdr_channelizer/cpp$ ./a.out 152.6 56 60 60 0.3 10</code></p><p=
><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.2.0.H=
EAD-0-g321295fb</code></p><p><code>[INFO] [B200] Detected Device: B200mini<=
/code></p><p><code>[INFO] [B200] Operating over USB 3.</code></p><p><code>[=
INFO] [B200] Initialize CODEC control...</code></p><p><code>[INFO] [B200] I=
nitialize Radio control...</code></p><p><code>[INFO] [B200] Performing regi=
ster loopback test... </code></p><p><code>[INFO] [B200] Register loopback t=
est passed</code></p><p><code>[INFO] [B200] Setting master clock rate selec=
tion to 'automatic'.</code></p><p><code>[INFO] [B200] Asking for clock rate=
 16.000000 MHz... </code></p><p><code>[INFO] [B200] Actually got clock rate=
 16.000000 MHz.</code></p><p><code>FPGA version: </code></p><p><code>Firmwa=
re version: =EF=BF=BD</code></p><p><code>Using B200mini serial number </cod=
e></p><p><code>Frequency =3D 152.6 MHz</code></p><p><code>[INFO] [B200] Ask=
ing for clock rate 60.000000 MHz... </code></p><p><code>[INFO] [B200] Actua=
lly got clock rate 60.000000 MHz.</code></p><p><code>Sample Rate =3D 60 Msp=
s</code></p><p><code>Bandwidth =3D 56 MHz</code></p><p><code>Disabled autom=
atic gain control</code></p><p><code>Gain =3D 60 dB</code></p><p><code>Rece=
ived 18000960</code></p><p><code>Gain =3D 59 dB</code></p><p><code>Received=
 18000570</code></p><p><code>Gain =3D 58 dB</code></p><p><code>Received 180=
00525</code></p><p><code>Received 18000206</code></p><p><code>Received 1800=
0475</code></p><p><code>Received 18000848</code></p><p><code>Received 18000=
572</code></p><p><code>Received 18000386</code></p><p><code>Received 180013=
43</code></p><p><code>Received 18000548</code></p><p><code>Received 1800022=
2</code></p><p><code>Received 18000420</code></p><p><code>Received 18000553=
</code></p><p><code>Received 18000247</code></p><p><code>Received 18000365<=
/code></p><p><code>Received 18000567</code></p><p><code>Received 18000261</=
code></p><p><code>Received 18000336</code></p><p><code>Received 18000582</c=
ode></p><p><code>Received 18000305</code></p><p><code>Gain =3D 57 dB</code>=
</p><p><code>Received 18000874</code></p><p><code>Received 18000711</code><=
/p><p><code>Received 18000311</code></p><p><code>Received 18000868</code></=
p><p><code>Received 18000378</code></p><p><code>Received 18000096</code></p=
><p><code>Received 18000653</code></p><p><code>Received 18000582</code></p>=
<p><code>Received 18000450</code></p><p><code>Received 18000517</code></p><=
p><code>Received 18001303</code></p><p><code>Received 18000844</code></p><p=
><code>Received 18000571</code></p><p><code>Received 18001314</code></p><p>=
<code>Disabled RX</code></p><p><code>There were 0 overruns.</code></p><p><c=
ode>Bus error (core dumped)</code></p><p>Has anyone run in to this before?<=
/p>

--b1_hzWs3qF6xxBCBGcGPFmnJ1YsRfa3ViNGYjOzgGH9w--

--===============4572872211958079583==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4572872211958079583==--
