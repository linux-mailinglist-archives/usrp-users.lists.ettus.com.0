Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF6B90BFF1
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2024 01:55:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB01B3854C8
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2024 19:55:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718668526; bh=iwsjoAGmkP65Nxpa+/6ojBoOYm5KGNXMffOzsJ7gCWw=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ZHtCFQNYfHKXHV+wY5x4GS/5WZ5gi8maojy/9yIWVF2NzYFZjB5VZFeA3WvVZWTFR
	 ayg0MYAeF3UWRjwAP9Y0Gc42FeNC9A/bkf2kBVr1ljDEL5/XVVFGRGologgPH2z12H
	 7wJf4vEm/Op8E6WY79HG0oh9wdooS0C4Gh/1T2CZyFHvCPJKR4xTfCx7Z3fJA2zR7m
	 jdevOdP5QGSQChrAqUVzbNSxQGHfMQldcYn170cExs9+jPyoA2p9z9rQB3qTk20oCR
	 d/0a7u/bl2o4ped9Ct5g7uxE1NF0F5XI0zc1FgIqVpS8zzm5+0TIW0C3ksJl9DO78c
	 NUkfDNIahOOwQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DDBFA385229
	for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2024 19:54:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718668462; bh=0jxpbqwEQpOzWH5tM8VHJ8SB0kM1OkWdisyRTMxxFGk=;
	h=Date:To:From:Subject:From;
	b=kIU6uMGEMMopt2Cibr3Kmzn2043+7hKOlSYn50WDaBcEHAhLUHJ6/FiMCNU01LrVu
	 rh4/1wVW1RfqoNPo9oXTvgvJr4CTPRm3I/ea2fv+e+wEmzcxsGskdRMNOkAEFQdRjN
	 UwhnnFjtx9oILasrJLGHV0kcHYe98QGC2rkDKnZG0Ft/lFcd0sR331zEGzJoN9iqxC
	 XX0vqV1+dPnoXs3+rZ2tqh3KMYNVIxcu7nLi8Y8yu4JIB5VJIEheKrk06bEhUgg6NL
	 2tw/+T6pewV+zJiL8tHx/rwBRSTv74PgAeUw8V++Ff/pH+fD6FkZ3br1x5Q/41H2D3
	 uMrmobyzMa+Kw==
Date: Mon, 17 Jun 2024 23:54:22 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <K0J14kPDEKsSActmBPQKdgOmqBrpgTukA2HVpSZUU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: P5LALBA6HSLEDTND4Z6IGTSZTEG3P5GX
X-Message-ID-Hash: P5LALBA6HSLEDTND4Z6IGTSZTEG3P5GX
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P5LALBA6HSLEDTND4Z6IGTSZTEG3P5GX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2899478898379545763=="

This is a multi-part message in MIME format.

--===============2899478898379545763==
Content-Type: multipart/alternative;
 boundary="b1_K0J14kPDEKsSActmBPQKdgOmqBrpgTukA2HVpSZUU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_K0J14kPDEKsSActmBPQKdgOmqBrpgTukA2HVpSZUU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

We have followed all instructions on the website and searched the forums =
with no solutions. I have provided much evidence below that USRP/UHD driv=
er is not behaving properly in this case.\
\
We are trying to send a 8192 byte packet to the x310 with the latest UHD =
4.6 (FPGA 39.2) which also didn=E2=80=99t seem to work with UHD 4.3 using=
 the 10GigE interface. We technically have a USRP-2974, but I think it is=
 irrelevant.

\
The 8192 data is being fragmented into 2 packets (Length 8042 and 266 on =
the wire using tcpdump).

**You will be able to demonstrate very similar behavior by making the fol=
lowing change to host/examples/tx_samples_c.c (which sends a Length 8034 =
and 258 on the the wire).**\
// Set up buffer\
\#if 1\
samps_per_buff =3D 2048; // (\~8192 bytes)\
\#else\
EXECUTE_OR_GOTO(\
free_tx_streamer, uhd_tx_streamer_max_num_samps(tx_streamer, &samps_per_b=
uff))\
fprintf(stderr, =E2=80=9CBuffer size in samples: %zu\\n=E2=80=9D, samps_p=
er_buff);#endif\
**Please note, the interface has been configured to MTU 9000 along with t=
he other changes mentioned in=C2=A0<https://files.ettus.com/manual/page_u=
srp_x3x0_config.html>**\
enp1s0f0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 9000inet=
 192.168.40.1 netmask 255.255.255.0 broadcast 192.168.40.255\
**When I run the program, you can see an indication of a USRP problem**=C2=
=A0=E2=80=9CMaximum frame size: 8000 bytes.=E2=80=9D\
>: \~/uhd-4.6.0.0/host/build/examples$ ./tx_samples_c\
Creating USRP with args =E2=80=9C=E2=80=9D...\
\[INFO\] \[UHD\] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.6.0.0-=
1-ga9f0b4c7\
\[INFO\] \[X300\] X300 initialization sequence...\
\[INFO\] \[X300\] Maximum frame size: 8000 bytes.\
\[INFO\] \[GPS\] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a\
\[INFO\] \[X300\] Radio 1x clock: 200 MHz\
Setting TX Rate: 200000000.000000...\
Actual TX Rate: 200000000.000000...\
Setting TX Gain: 0.000000 db...\
Actual TX Gain: 0.000000...\
Setting TX frequency: 2000.000000 MHz...\
Actual TX frequency: 2000.000000 MHz...\
\[WARNING\] \[0/Radio#0\] Attempting to set tick rate to 0. Skipping.\
Press Ctrl+C to stop streaming...\
**I have change parameters (**send_frame_size)=C2=A0**to force the tx pac=
ket to 9000 in USRP stream, but I get this message which makes no sense.=C2=
=A0 Also tried 8500, same complaint.**\
\[WARNING\] \[X300\] You requested a send frame size of (9000) but your N=
IC=E2=80=99s max frame size is (8000).Please verify your NIC=E2=80=99s MT=
U setting using =E2=80=98ip link=E2=80=99 or set the send_frame_size argu=
ment appropriately.UHD will use the auto-detected max frame size for this=
 connection.\
Interesting enough, at 8000 it does not complain.=C2=A0 Of course we are =
fragmenting because 8192 bytes packet.\
\------\
**I have confirmed that ping with larger size packet doesn=E2=80=99t work=
.**\
cjohnson@USRP-1:\~$ ping -s 8200 192.168.40.2\
PING 192.168.40.2 (192.168.40.2) 8200(8228) bytes of data.\
^C\
\--- 192.168.40.2 ping statistics ---\
33 packets transmitted, 0 received, 100% packet loss, time 32758ms

--b1_K0J14kPDEKsSActmBPQKdgOmqBrpgTukA2HVpSZUU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>We have followed all instructions on the website and searched the forums=
 with no solutions. I have provided much evidence below that USRP/UHD drive=
r is not behaving properly in this case.<br><br>We are trying to send a 819=
2 byte packet to the x310 with the latest UHD 4.6 (FPGA 39.2) which also di=
dn=E2=80=99t seem to work with UHD 4.3 using the 10GigE interface. We techn=
ically have a USRP-2974, but I think it is irrelevant.</p><p><br>The 8192 d=
ata is being fragmented into 2 packets (Length 8042 and 266 on the wire usi=
ng tcpdump).<br><br></p><p><strong>You will be able to demonstrate very sim=
ilar behavior by making the following change to host/examples/tx_samples_c.=
c (which sends a Length 8034 and 258 on the the wire).</strong><br>// Set u=
p buffer<br>#if 1<br>samps_per_buff =3D 2048; // (~8192 bytes)<br>#else<br>=
EXECUTE_OR_GOTO(<br>free_tx_streamer, uhd_tx_streamer_max_num_samps(tx_stre=
amer, &amp;samps_per_buff))<br>fprintf(stderr, =E2=80=9CBuffer size in samp=
les: %zu\n=E2=80=9D, samps_per_buff);#endif<br><strong>Please note, the int=
erface has been configured to MTU 9000 along with the other changes mention=
ed in&nbsp;<a href=3D"https://files.ettus.com/manual/page_usrp_x3x0_config.=
html">https://files.ettus.com/manual/page_usrp_x3x0_config.html</a></strong=
><br>enp1s0f0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;&nbsp; mtu=
 9000inet 192.168.40.1 netmask 255.255.255.0 broadcast 192.168.40.255<br><s=
trong>When I run the program, you can see an indication of a USRP problem</=
strong>&nbsp;=E2=80=9CMaximum frame size: 8000 bytes.=E2=80=9D<br>&gt;: ~/u=
hd-4.6.0.0/host/build/examples$ ./tx_samples_c<br>Creating USRP with args =
=E2=80=9C=E2=80=9D...<br>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_1=
07100; UHD_4.6.0.0-1-ga9f0b4c7<br>[INFO] [X300] X300 initialization sequenc=
e...<br>[INFO] [X300] Maximum frame size: 8000 bytes.<br>[INFO] [GPS] Found=
 an internal GPSDO: LC_XO, Firmware Rev 0.929a<br>[INFO] [X300] Radio 1x cl=
ock: 200 MHz<br>Setting TX Rate: 200000000.000000...<br>Actual TX Rate: 200=
000000.000000...<br>Setting TX Gain: 0.000000 db...<br>Actual TX Gain: 0.00=
0000...<br>Setting TX frequency: 2000.000000 MHz...<br>Actual TX frequency:=
 2000.000000 MHz...<br>[WARNING] [0/Radio#0] Attempting to set tick rate to=
 0. Skipping.<br>Press Ctrl+C to stop streaming...<br><strong>I have change=
 parameters (</strong>send_frame_size)<strong>&nbsp;to force the tx packet =
to 9000 in USRP stream, but I get this message which makes no sense.&nbsp; =
Also tried 8500, same complaint.</strong><br>[WARNING] [X300] You requested=
 a send frame size of (9000) but your NIC=E2=80=99s max frame size is (8000=
).Please verify your NIC=E2=80=99s MTU setting using =E2=80=98ip link=
=E2=80=99 or set the send_frame_size argument appropriately.UHD will use th=
e auto-detected max frame size for this connection.<br>Interesting enough, =
at 8000 it does not complain.&nbsp; Of course we are fragmenting because 81=
92 bytes packet.<br>------<br><strong>I have confirmed that ping with large=
r size packet doesn=E2=80=99t work.</strong><br>cjohnson@USRP-1:~$ ping -s =
8200 192.168.40.2<br>PING 192.168.40.2 (192.168.40.2) 8200(8228) bytes of d=
ata.<br>^C<br>--- 192.168.40.2 ping statistics ---<br>33 packets transmitte=
d, 0 received, 100% packet loss, time 32758ms</p>

--b1_K0J14kPDEKsSActmBPQKdgOmqBrpgTukA2HVpSZUU--

--===============2899478898379545763==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2899478898379545763==--
