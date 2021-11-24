Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAF645C0F2
	for <lists+usrp-users@lfdr.de>; Wed, 24 Nov 2021 14:09:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F152838445A
	for <lists+usrp-users@lfdr.de>; Wed, 24 Nov 2021 08:09:50 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 540553840DE
	for <usrp-users@lists.ettus.com>; Wed, 24 Nov 2021 08:08:52 -0500 (EST)
Date: Wed, 24 Nov 2021 13:08:52 +0000
To: usrp-users@lists.ettus.com
From: emanuele.tolomei@intecs.it
Message-ID: <G1q6uCzFj2BDywtELzLEjKrnqIpczJHyl97ohwgQrU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTQu+CNYObAwRapdHFcG4Fdba9impHrJ_R-Kd=8n8ohiHQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 725MWXNSV4ZGICFMB3YLX47SGJHS66FU
X-Message-ID-Hash: 725MWXNSV4ZGICFMB3YLX47SGJHS66FU
X-MailFrom: emanuele.tolomei@intecs.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble with TwinRX frequency tuning
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/725MWXNSV4ZGICFMB3YLX47SGJHS66FU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7274754963497258432=="

This is a multi-part message in MIME format.

--===============7274754963497258432==
Content-Type: multipart/alternative;
 boundary="b1_G1q6uCzFj2BDywtELzLEjKrnqIpczJHyl97ohwgQrU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_G1q6uCzFj2BDywtELzLEjKrnqIpczJHyl97ohwgQrU
Content-Type: text/plain; charset=us-ascii

Hi Rob,

yes it seems that the error is caused by an incorrect use of the set_time_now() command. For my application I need to synchronize the multi_usrp time with the system time and issue the command with a delay of less than 1s.

The error does not occur when I reset the multi_usrp time with command 'm_MultiUsrp->set_time_now(uhd::time_spec_t(0.0))' instead of setting it to the system time.

I moved the get_time_now() after the first set of tune commands and tried a delay of up to 3s between set_time_now() and get_time_now() function but the error still occurs (by the way it forces me to hard reset the x300). 

I did several tests and discovered the following two things:

1\. The only way to prevent the error from occurring is to reset the time of the multi_usrp with the command 'm_MultiUsrp->set_time_now(uhd::time_spec_t(0.0))' at each call of the ReceiveSamplesBurst function of the snippet attached in the first post, but this causes a phase shift of the channels. 

2\. The only way to have the channels phased is not to call 'm_MultiUsrp->set_time_now(uhd::time_spec_t(0.0))', but this causes the above error.

Supposing we can relax the synchronization constraint with the system time, how is it possible that the error occurs when inserting such high delays?

Thank you in advance.

Emanuele Tolomei

Rob Kossler wrote:

> Hi Emanuele,
> I'm not certain, but it looks like the command buffer to the radio may be
> filling up such that when it's full, you receive the "no response packet"
> error. Configuration commands such as set_rx_frequency are inserted into a
> command FIFO on the FPGA.  One thing that can cause the entire FIFO to be
> blocked is if the command at the head of the FIFO is a timed command and
> the time is still in the future. In this case, all commands behind the head
> command will block until the head command executes at the indicated time.
> And, the FIFO is not deep so it is pretty easy to fill it up if it is not
> simultaneously being consumed.  I didn't notice any bug that should cause
> the FIFO to block. But, the fact that you can run error-free if you don't
> use the timed commands is a clue.  I have 2 suggestions: 1) add a delay
> between the set_time_now() and the get_time_now(), and 2) move the
> get_time_now() below the first set of tune commands.
> Rob
>
> On Tue, Nov 23, 2021 at 4:06 AM [emanuele.tolomei@intecs.it](mailto:emanuele.tolomei@intecs.it) wrote:
>
> > Hi Marcus, thank you
> >
> > I tried both changing the command-time (up to 1 second) and using UHD
> > version 3.15.0.0.
> >
> > The application still crashes with the same error.
> >
> > terminate called after throwing an instance of 'uhd::io_error'
> >
> > what(): EnvironmentError: IOError: \[0/DDC_0\] sr_write() failed:
> > EnvironmentError: IOError: Block ctrl (CE_03_Port_60) no response packet -
> > AssertionError: bool(buff)
> >
> > in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) \[with
> > uhd::endianness_t _endianness = (uhd::endianness_t)0u; uint64_t = long
> > unsigned int\]
> >
> > at /home/emanuele/uhd/host/lib/rfnoc/ctrl_iface.cpp:151
> >
> > ---
> >
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--b1_G1q6uCzFj2BDywtELzLEjKrnqIpczJHyl97ohwgQrU
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi Rob,</p><p>yes it seems that the error is caused by an incorrect use =
of the set_time_now() command. For my application I need to synchronize the=
 multi_usrp time with the system time and issue the command with a delay of=
 less than 1s.</p><p>The error does not occur when I reset the multi_usrp t=
ime with command 'm_MultiUsrp-&gt;set_time_now(uhd::time_spec_t(0.0))' inst=
ead of setting it to the system time.</p><p>I moved the get_time_now() afte=
r the first set of tune commands and tried a delay of up to 3s between set_=
time_now() and get_time_now() function but the error still occurs (by the w=
ay it forces me to hard reset the x300). </p><p>I did several tests and dis=
covered the following two things:</p><p>1. The only way to prevent the erro=
r from occurring is to reset the time of the multi_usrp with the command 'm=
_MultiUsrp-&gt;set_time_now(uhd::time_spec_t(0.0))' at each call of the Rec=
eiveSamplesBurst function of the snippet attached in the first post, but th=
is causes a phase shift of the channels. </p><p>2. The only way to have the=
 channels phased is not to call 'm_MultiUsrp-&gt;set_time_now(uhd::time_spe=
c_t(0.0))', but this causes the above error.</p><p>Supposing we can relax t=
he synchronization constraint with the system time, how is it possible that=
 the error occurs when inserting such high delays?</p><p>Thank you in advan=
ce.</p><p>Emanuele Tolomei</p><p>Rob Kossler wrote:</p><blockquote><p>Hi Em=
anuele,
I'm not certain, but it looks like the command buffer to the radio may be
filling up such that when it's full, you receive the "no response packet"
error. Configuration commands such as set_rx_frequency are inserted into a
command FIFO on the FPGA.  One thing that can cause the entire FIFO to be
blocked is if the command at the head of the FIFO is a timed command and
the time is still in the future. In this case, all commands behind the head
command will block until the head command executes at the indicated time.
And, the FIFO is not deep so it is pretty easy to fill it up if it is not
simultaneously being consumed.  I didn't notice any bug that should cause
the FIFO to block. But, the fact that you can run error-free if you don't
use the timed commands is a clue.  I have 2 suggestions: 1) add a delay
between the set_time_now() and the get_time_now(), and 2) move the
get_time_now() below the first set of tune commands.
Rob</p><p>On Tue, Nov 23, 2021 at 4:06 AM <a href=3D"mailto:emanuele.tolome=
i@intecs.it">emanuele.tolomei@intecs.it</a> wrote:</p><blockquote><p>Hi Mar=
cus, thank you</p><p>I tried both changing the command-time (up to 1 second=
) and using UHD
version 3.15.0.0.</p><p>The application still crashes with the same error.<=
/p><p>terminate called after throwing an instance of 'uhd::io_error'</p><p>=
what(): EnvironmentError: IOError: [0/DDC_0] sr_write() failed:
EnvironmentError: IOError: Block ctrl (CE_03_Port_60) no response packet -
AssertionError: bool(buff)</p><p>in uint64_t ctrl_iface_impl&lt;_endianness=
&gt;::wait_for_ack(bool, double) [with
uhd::endianness_t _endianness =3D (uhd::endianness_t)0u; uint64_t =3D long
unsigned int]</p><p>at /home/emanuele/uhd/host/lib/rfnoc/ctrl_iface.cpp:151=
</p><div contenteditable=3D"false"><hr></div><p>USRP-users mailing list -- =
usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com</p></block=
quote></blockquote><p><br></p>

--b1_G1q6uCzFj2BDywtELzLEjKrnqIpczJHyl97ohwgQrU--

--===============7274754963497258432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7274754963497258432==--
