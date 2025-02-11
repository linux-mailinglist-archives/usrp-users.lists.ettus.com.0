Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C381CA30AEA
	for <lists+usrp-users@lfdr.de>; Tue, 11 Feb 2025 12:59:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 28F7C3860AD
	for <lists+usrp-users@lfdr.de>; Tue, 11 Feb 2025 06:59:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739275192; bh=hcGOIwjI6WIwxKQx+AKJ1cNNz1rjd69P+qis0ZIHd2Y=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=V1422FYFXnlvPTh8Jaq4cCq2f/EFvJVVS9bryVP82JSxrVfbvrKd1hk6N4013aMEg
	 0Z9jCIvBGIyHVbij+97frYdV9mHCdfa0oo7P3EH3lcOkRku1axwsGUUJUiQuUrhdkc
	 ibtzdQO5l5uSqHoIseDZx++jZFZbzrrWo6v8UmZO0rNKQvt/yQlp6hrxc6jB1yUGeI
	 lvkSaS12urbgBH+J4anh4nG35bqe6SmMHCPJR9LAdzfKkxs2xSFb0D2UKBN4Hwb+UA
	 chgt7YTIEyWyQOB1tytFGDQuAu6ZUr8AhVenA6WOKuOGRthxoS6d4dxbopR9i6dd0h
	 GFpqTw18gyU+g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9E590385E74
	for <usrp-users@lists.ettus.com>; Tue, 11 Feb 2025 06:59:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739275154; bh=lPsyV65+2yvUBendharAnCEQl34+2j/jdJ2yxYim0hI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=nXYWkAun1PU3fmx1hupqvr+YUjOZTC+VcDctBfIADp4OPXfhxHpYTTOM7CsdAS+uX
	 UNMh4I60rrEsKtJjspkAJRwAJMeO8Gp7rBr9g0G1dU/tooe2KUetFDU5jgK4nohMar
	 QCVprPH+66uSfhtolS3VF5dv27wNX0c69kJ8gtT5p9oTgo7AM4ciWR5Q1W7MxSDS2Z
	 FfCyad4xW1btO87n/DDNPG+ADxOOOOXUeWvQT/RW3hP402wdtHEbv2qwdF5OJxjeDK
	 7Skg1ryrcMBuve3dOCjQmA4Gq7fiqUdmXO5zycLELUwvKZ+aOBMpejJlp2+9WamknF
	 y9sU2ayg47Vfg==
Date: Tue, 11 Feb 2025 11:59:14 +0000
To: usrp-users@lists.ettus.com
Message-ID: <TLKgM9FBwt14dLggfYfEpIV00ByNIivTh39KlCmrzo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAOEzSFQ1VM1ahBwM+02saTafP7CxDoGKqRh59BTBpex16fLL=g@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: ZP3M6EJRPPJYQ4AGAFDIGTEGWUY5V7GO
X-Message-ID-Hash: ZP3M6EJRPPJYQ4AGAFDIGTEGWUY5V7GO
X-MailFrom: rilbert.silva@embedded.ufcg.edu.br
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error when running Benchmark on USRP X440: RfnocError - OpTimeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZP3M6EJRPPJYQ4AGAFDIGTEGWUY5V7GO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rilbert Lima via USRP-users <usrp-users@lists.ettus.com>
Reply-To: rilbert.silva@embedded.ufcg.edu.br
Content-Type: multipart/mixed; boundary="===============1352180699345740262=="

This is a multi-part message in MIME format.

--===============1352180699345740262==
Content-Type: multipart/alternative;
 boundary="b1_TLKgM9FBwt14dLggfYfEpIV00ByNIivTh39KlCmrzo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_TLKgM9FBwt14dLggfYfEpIV00ByNIivTh39KlCmrzo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Chris Rogers wrote:

> I=E2=80=99d suggest taking a look at this section of the manual
> https://files.ettus.com/manual/page_usrp_x4xx.html#x440_usage_mcrs and =
the
> link Marcus sent
> https://kb.ettus.com/About_Sampling_Rates_and_Master_Clock_Rates_for_th=
e_USRP_X440.
> This is a unique USRP architecture that requires some frequency and clo=
ck
> planning
>
> You should probably manually set your desired Master Clock Rate (MCR) a=
nd
> Converter Rate (Fc) based on your frequencies of interest. It=E2=80=99s=
 important
> to note that the X440 has no analog front end, so you cannot adjust any
> analog bandwidth filters, but you can reduce the MCR and Fc which will
> reduce the bandwidth digitally, and DDC will further reduce the bandwid=
th.
> You can set these clocks in the device arguments. So basically, if you =
set
> rx_rate=3D100e6, you=E2=80=99ll be getting 100 MHz of bandwidth, but wh=
ere in the
> spectrum that 100 MHz is located and how many aliases you=E2=80=99ll se=
e is decided
> by how you configure the clocks and what you set the RF center frequenc=
y to.
>
> Your timeout error is probably caused by running UHD programs on the X4=
40
> itself. It=E2=80=99s really designed to stream samples to it from a dif=
ferent host
> computer over the QSFP ports
>
> On Fri, Feb 7, 2025 at 8:44=E2=80=AFAM Rilbert Lima via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> > Thank you, Chris.
> >
> > I have updated the FPGA image from the USRP X440 to the X4_200, and u=
pon
> > executing, the sampling rate has been reduced to approximately 5 Msps=
.
> >
> > Another matter I would like to inquire about is whether it is possibl=
e to
> > reduce the analog bandwidth of the signal from 200 MHz to 100 MHz. I =
am
> > aiming to use the X440 with OpenAirInterface5G in FR1, but since the =
image
> > is from the X4_200, which is tied to a 200 MHz bandwidth, I would lik=
e to
> > know if there is any workaround to perform this downgrade."
> >
> > However, in some tests that were performed, the receive timeout error
> > appears, even using the 5e6 sampling rate, increasing the value to 99=
 *Num
> > timeouts (Rx): 99*. And I don't know why these receive errors appeare=
d.
> >
> > root@ni-x4xx-342597F:/usr/lib/uhd/examples# ./benchmark_rate --rx_rat=
e
> > 5e6 --tx_rate 5e6
> >
> > \[INFO\] \[UHD\] linux; GNU C++ version 11.4.0; Boost_107800;
> > UHD_4.7.0.0-0-ga5ed1872
> >
> > \[00:00:00.029460\] Creating the usrp device with: ...
> >
> > \[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args:
> > mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx440,serial=3D342597F,nam=
e=3Dni-x4xx-342597F,fpga=3DX4_200,claimed=3DFalse
> >
> > \[WARNING\] \[MPM.RPCServer\] A timeout event occured!
> >
> > \[INFO\] \[MPM.PeriphManager\] init() called with device args
> > \`fpga=3DX4_200,mgmt_addr=3D127.0.0.1,name=3Dni-x4xx-342597F,product=3D=
x440,clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.
> >
> > Using Device: Single USRP:
> >
> > Device: X400-Series Device
> >
> > Mboard 0: x440
> >
> > RX Channel: 0
> >
> > RX DSP: 0
> >
> > RX Dboard: A
> >
> > RX Subdev: 0
> >
> > RX Channel: 1
> >
> > RX DSP: 1
> >
> > RX Dboard: A
> >
> > RX Subdev: 1
> >
> > RX Channel: 2
> >
> > RX DSP: 2
> >
> > RX Dboard: A
> >
> > RX Subdev: 2
> >
> > RX Channel: 3
> >
> > RX DSP: 3
> >
> > RX Dboard: A
> >
> > RX Subdev: 3
> >
> > RX Channel: 4
> >
> > RX DSP: 4
> >
> > RX Dboard: B
> >
> > RX Subdev: 0
> >
> > RX Channel: 5
> >
> > RX DSP: 5
> >
> > RX Dboard: B
> >
> > RX Subdev: 1
> >
> > RX Channel: 6
> >
> > RX DSP: 6
> >
> > RX Dboard: B
> >
> > RX Subdev: 2
> >
> > RX Channel: 7
> >
> > RX DSP: 7
> >
> > RX Dboard: B
> >
> > RX Subdev: 3
> >
> > TX Channel: 0
> >
> > TX DSP: 0
> >
> > TX Dboard: A
> >
> > TX Subdev: 0
> >
> > TX Channel: 1
> >
> > TX DSP: 1
> >
> > TX Dboard: A
> >
> > TX Subdev: 1
> >
> > TX Channel: 2
> >
> > TX DSP: 2
> >
> > TX Dboard: A
> >
> > TX Subdev: 2
> >
> > TX Channel: 3
> >
> > TX DSP: 3
> >
> > TX Dboard: A
> >
> > TX Subdev: 3
> >
> > TX Channel: 4
> >
> > TX DSP: 4
> >
> > TX Dboard: B
> >
> > TX Subdev: 0
> >
> > TX Channel: 5
> >
> > TX DSP: 5
> >
> > TX Dboard: B
> >
> > TX Subdev: 1
> >
> > TX Channel: 6
> >
> > TX DSP: 6
> >
> > TX Dboard: B
> >
> > TX Subdev: 2
> >
> > TX Channel: 7
> >
> > TX DSP: 7
> >
> > TX Dboard: B
> >
> > TX Subdev: 3
> >
> > \[00:00:04.112276974\] Setting device timestamp to 0...
> >
> > \[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user sho=
uld
> > expect passband CIC rolloff.
> >
> > Select an even decimation to ensure that a halfband filter is enabled=
.
> >
> > Decimations factorable by 4 will enable 2 halfbands, those factorable=
 by 8
> > will enable 3 halfbands.
> >
> > decimation =3D dsp_rate/samp_rate -> 49
> >
> > \[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user sho=
uld
> > expect passband CIC rolloff.
> >
> > Select an even decimation to ensure that a halfband filter is enabled=
.
> >
> > Decimations factorable by 4 will enable 2 halfbands, those factorable=
 by 8
> > will enable 3 halfbands.
> >
> > decimation =3D dsp_rate/samp_rate -> 49
> >
> > \[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual=
 rate is
> > 5\.016 MHz
> >
> > \[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user sho=
uld
> > expect passband CIC rolloff.
> >
> > Select an even decimation to ensure that a halfband filter is enabled=
.
> >
> > Decimations factorable by 4 will enable 2 halfbands, those factorable=
 by 8
> > will enable 3 halfbands.
> >
> > decimation =3D dsp_rate/samp_rate -> 49
> >
> > \[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user sho=
uld
> > expect passband CIC rolloff.
> >
> > Select an even decimation to ensure that a halfband filter is enabled=
.
> >
> > Decimations factorable by 4 will enable 2 halfbands, those factorable=
 by 8
> > will enable 3 halfbands.
> >
> > decimation =3D dsp_rate/samp_rate -> 49
> >
> > \[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual=
 rate is
> > 5\.016 MHz
> >
> > \[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user sho=
uld
> > expect passband CIC rolloff.
> >
> > Select an even decimation to ensure that a halfband filter is enabled=
.
> >
> > Decimations factorable by 4 will enable 2 halfbands, those factorable=
 by 8
> > will enable 3 halfbands.
> >
> > decimation =3D dsp_rate/samp_rate -> 49
> >
> > \[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user sho=
uld
> > expect passband CIC rolloff.
> >
> > Select an even decimation to ensure that a halfband filter is enabled=
.
> >
> > Decimations factorable by 4 will enable 2 halfbands, those factorable=
 by 8
> > will enable 3 halfbands.
> >
> > decimation =3D dsp_rate/samp_rate -> 49
> >
> > \[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual=
 rate is
> > 5\.016 MHz
> >
> > \[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user sho=
uld
> > expect passband CIC rolloff.
> >
> > Select an even decimation to ensure that a halfband filter is enabled=
.
> >
> > Decimations factorable by 4 will enable 2 halfbands, those factorable=
 by 8
> > will enable 3 halfbands.
> >
> > decimation =3D dsp_rate/samp_rate -> 49
> >
> > \[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user sho=
uld
> > expect passband CIC rolloff.
> >
> > Select an even decimation to ensure that a halfband filter is enabled=
.
> >
> > Decimations factorable by 4 will enable 2 halfbands, those factorable=
 by 8
> > will enable 3 halfbands.
> >
> > decimation =3D dsp_rate/samp_rate -> 49
> >
> > \[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual=
 rate is
> > 5\.016 MHz
> >
> > \[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user sho=
uld
> > expect passband CIC rolloff.
> >
> > Select an even decimation to ensure that a halfband filter is enabled=
.
> >
> > Decimations factorable by 4 will enable 2 halfbands, those factorable=
 by 8
> > will enable 3 halfbands.
> >
> > decimation =3D dsp_rate/samp_rate -> 49
> >
> > \[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user sho=
uld
> > expect passband CIC rolloff.
> >
> > Select an even decimation to ensure that a halfband filter is enabled=
.
> >
> > Decimations factorable by 4 will enable 2 halfbands, those factorable=
 by 8
> > will enable 3 halfbands.
> >
> > decimation =3D dsp_rate/samp_rate -> 49
> >
> > \[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual=
 rate is
> > 5\.016 MHz
> >
> > \[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user sho=
uld
> > expect passband CIC rolloff.
> >
> > Select an even decimation to ensure that a halfband filter is enabled=
.
> >
> > Decimations factorable by 4 will enable 2 halfbands, those factorable=
 by 8
> > will enable 3 halfbands.
> >
> > decimation =3D dsp_rate/samp_rate -> 49
> >
> > \[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user sho=
uld
> > expect passband CIC rolloff.
> >
> > Select an even decimation to ensure that a halfband filter is enabled=
.
> >
> > Decimations factorable by 4 will enable 2 halfbands, those factorable=
 by 8
> > will enable 3 halfbands.
> >
> > decimation =3D dsp_rate/samp_rate -> 49
> >
> > \[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual=
 rate is
> > 5\.016 MHz
> >
> > \[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user sho=
uld
> > expect passband CIC rolloff.
> >
> > Select an even decimation to ensure that a halfband filter is enabled=
.
> >
> > Decimations factorable by 4 will enable 2 halfbands, those factorable=
 by 8
> > will enable 3 halfbands.
> >
> > decimation =3D dsp_rate/samp_rate -> 49
> >
> > \[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user sho=
uld
> > expect passband CIC rolloff.
> >
> > Select an even decimation to ensure that a halfband filter is enabled=
.
> >
> > Decimations factorable by 4 will enable 2 halfbands, those factorable=
 by 8
> > will enable 3 halfbands.
> >
> > decimation =3D dsp_rate/samp_rate -> 49
> >
> > \[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual=
 rate is
> > 5\.016 MHz
> >
> > \[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user sho=
uld
> > expect passband CIC rolloff.
> >
> > Select an even decimation to ensure that a halfband filter is enabled=
.
> >
> > Decimations factorable by 4 will enable 2 halfbands, those factorable=
 by 8
> > will enable 3 halfbands.
> >
> > decimation =3D dsp_rate/samp_rate -> 49
> >
> > \[WARNING\] \[MULTI_USRP\] Could not set RX rate to 5.000 MHz. Actual=
 rate is
> > 5\.016 MHz
> >
> > \[00:00:04.465504150\] Testing receive rate 5.015510 Msps on 1 channe=
ls
> >
> > \[WARNING\] \[0/DUC#0\] The requested interpolation is odd; the user =
should
> > expect passband CIC rolloff.
> >
> > Select an even interpolation to ensure that a halfband filter is enab=
led.
> >
> > \[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual=
 rate is
> > 5\.016 MHz
> >
> > \[WARNING\] \[0/DUC#0\] The requested interpolation is odd; the user =
should
> > expect passband CIC rolloff.
> >
> > Select an even interpolation to ensure that a halfband filter is enab=
led.
> >
> > \[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual=
 rate is
> > 5\.016 MHz
> >
> > \[WARNING\] \[0/DUC#0\] The requested interpolation is odd; the user =
should
> > expect passband CIC rolloff.
> >
> > Select an even interpolation to ensure that a halfband filter is enab=
led.
> >
> > \[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual=
 rate is
> > 5\.016 MHz
> >
> > \[WARNING\] \[0/DUC#0\] The requested interpolation is odd; the user =
should
> > expect passband CIC rolloff.
> >
> > Select an even interpolation to ensure that a halfband filter is enab=
led.
> >
> > \[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual=
 rate is
> > 5\.016 MHz
> >
> > \[WARNING\] \[0/DUC#1\] The requested interpolation is odd; the user =
should
> > expect passband CIC rolloff.
> >
> > Select an even interpolation to ensure that a halfband filter is enab=
led.
> >
> > \[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual=
 rate is
> > 5\.016 MHz
> >
> > \[WARNING\] \[0/DUC#1\] The requested interpolation is odd; the user =
should
> > expect passband CIC rolloff.
> >
> > Select an even interpolation to ensure that a halfband filter is enab=
led.
> >
> > \[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual=
 rate is
> > 5\.016 MHz
> >
> > \[WARNING\] \[0/DUC#1\] The requested interpolation is odd; the user =
should
> > expect passband CIC rolloff.
> >
> > Select an even interpolation to ensure that a halfband filter is enab=
led.
> >
> > \[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual=
 rate is
> > 5\.016 MHz
> >
> > \[WARNING\] \[0/DUC#1\] The requested interpolation is odd; the user =
should
> > expect passband CIC rolloff.
> >
> > Select an even interpolation to ensure that a halfband filter is enab=
led.
> >
> > \[WARNING\] \[MULTI_USRP\] Could not set TX rate to 5.000 MHz. Actual=
 rate is
> > 5\.016 MHz
> >
> > Setting TX spp to 352
> >
> > \[00:00:04.801908845\] Testing transmit rate 5.015510 Msps on 1 chann=
els
> >
> > \[00:00:14.826000429\] Benchmark complete.
> >
> > Benchmark rate summary:
> >
> > Num received samples: 50161056
> >
> > Num dropped samples: 0
> >
> > Num overruns detected: 0
> >
> > Num transmitted samples: 50201888
> >
> > Num sequence errors (Tx): 0
> >
> > Num sequence errors (Rx): 0
> >
> > Num underruns detected: 0
> >
> > Num late commands: 0
> >
> > Num timeouts (Tx): 0
> >
> > Num timeouts (Rx): 0
> >
> > Done!
> >
> > ---
> >
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com

Hi Chris.

I ran tests using another host with UHD 4.7, but the timeout error still =
continues, initially I considered 10e6 rate. I'm using QSFP28 on the X440=
 with MTU 9000.

The logs are below. Is there anything else I can analyze to see what migh=
t be causing these timeouts?

> openran@openran:/usr/local/lib/uhd/examples$ sudo ./benchmark_rate --tx=
_rate 10e6 --rx_rate 10e6 --args=3D"type=3Dx4xx,fpga=3Dx4_200,mgmt_addr=3D=
192.168.100.2,addr=3D192.168.100.2"
>
> \[INFO\] \[UHD\] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.8.0=
.0-0-g308126a4
>
> \[00:00:00.000665\] Creating the usrp device with: type=3Dx4xx,fpga=3Dx=
4_200,mgmt_addr=3D192.168.100.2,addr=3D192.168.100.2...
>
> \[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_=
addr=3D192.168.100.2,type=3Dx4xx,product=3Dx440,serial=3D342597F,name=3Dn=
i-x4xx-342597F,fpga=3DX4_200,claimed=3DFalse,addr=3D192.168.100.2
>
> \[WARNING\] \[MPM.RPCServer\] A timeout event occured!
>
> \[INFO\] \[MPM.PeriphManager\] init() called with device args \`fpga=3D=
X4_200,mgmt_addr=3D192.168.100.2,name=3Dni-x4xx-342597F,product=3Dx440,cl=
ock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.
>
> \[ERROR\] \[RPC\] ADC tiles failed to sync properly.
>
> \[ERROR\] \[MPMD\] Synchronization error: RuntimeError: Error during RP=
C call to \`synchronize'. Error message: ADC tiles failed to sync properl=
y.
>
> Using Device: Single USRP:
>
>   Device: X400-Series Device
>
>   Mboard 0: x440
>
>   RX Channel: 0
>
>     RX DSP: 0
>
>     RX Dboard: A
>
>     RX Subdev: 0
>
>   RX Channel: 1
>
>     RX DSP: 1
>
>     RX Dboard: A
>
>     RX Subdev: 1
>
>   RX Channel: 2
>
>     RX DSP: 2
>
>     RX Dboard: A
>
>     RX Subdev: 2
>
>   RX Channel: 3
>
>     RX DSP: 3
>
>     RX Dboard: A
>
>     RX Subdev: 3
>
>   RX Channel: 4
>
>     RX DSP: 4
>
>     RX Dboard: B
>
>     RX Subdev: 0
>
>   RX Channel: 5
>
>     RX DSP: 5
>
>     RX Dboard: B
>
>     RX Subdev: 1
>
>   RX Channel: 6
>
>     RX DSP: 6
>
>     RX Dboard: B
>
>     RX Subdev: 2
>
>   RX Channel: 7
>
>     RX DSP: 7
>
>     RX Dboard: B
>
>     RX Subdev: 3
>
>   TX Channel: 0
>
>     TX DSP: 0
>
>     TX Dboard: A
>
>     TX Subdev: 0
>
>   TX Channel: 1
>
>     TX DSP: 1
>
>     TX Dboard: A
>
>     TX Subdev: 1
>
>   TX Channel: 2
>
>     TX DSP: 2
>
>     TX Dboard: A
>
>     TX Subdev: 2
>
>   TX Channel: 3
>
>     TX DSP: 3
>
>     TX Dboard: A
>
>     TX Subdev: 3
>
>   TX Channel: 4
>
>     TX DSP: 4
>
>     TX Dboard: B
>
>     TX Subdev: 0
>
>   TX Channel: 5
>
>     TX DSP: 5
>
>     TX Dboard: B
>
>     TX Subdev: 1
>
>   TX Channel: 6
>
>     TX DSP: 6
>
>     TX Dboard: B
>
>     TX Subdev: 2
>
>   TX Channel: 7
>
>     TX DSP: 7
>
>     TX Dboard: B
>
>     TX Subdev: 3
>
> \[00:00:02.327707281\] Setting device timestamp to 0...
>
> \[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user shoul=
d expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable b=
y 8 will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 25
>
> \[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user shoul=
d expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable b=
y 8 will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 25
>
> \[WARNING\] \[MULTI_USRP\] Could not set RX rate to 10.000 MHz. Actual =
rate is 9.830 MHz
>
> \[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user shoul=
d expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable b=
y 8 will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 25
>
> \[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user shoul=
d expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable b=
y 8 will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 25
>
> \[WARNING\] \[MULTI_USRP\] Could not set RX rate to 10.000 MHz. Actual =
rate is 9.830 MHz
>
> \[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user shoul=
d expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable b=
y 8 will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 25
>
> \[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user shoul=
d expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable b=
y 8 will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 25
>
> \[WARNING\] \[MULTI_USRP\] Could not set RX rate to 10.000 MHz. Actual =
rate is 9.830 MHz
>
> \[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user shoul=
d expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable b=
y 8 will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 25
>
> \[WARNING\] \[0/DDC#0\] The requested decimation is odd; the user shoul=
d expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable b=
y 8 will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 25
>
> \[WARNING\] \[MULTI_USRP\] Could not set RX rate to 10.000 MHz. Actual =
rate is 9.830 MHz
>
> \[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user shoul=
d expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable b=
y 8 will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 25
>
> \[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user shoul=
d expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable b=
y 8 will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 25
>
> \[WARNING\] \[MULTI_USRP\] Could not set RX rate to 10.000 MHz. Actual =
rate is 9.830 MHz
>
> \[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user shoul=
d expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable b=
y 8 will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 25
>
> \[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user shoul=
d expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable b=
y 8 will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 25
>
> \[WARNING\] \[MULTI_USRP\] Could not set RX rate to 10.000 MHz. Actual =
rate is 9.830 MHz
>
> \[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user shoul=
d expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable b=
y 8 will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 25
>
> \[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user shoul=
d expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable b=
y 8 will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 25
>
> \[WARNING\] \[MULTI_USRP\] Could not set RX rate to 10.000 MHz. Actual =
rate is 9.830 MHz
>
> \[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user shoul=
d expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable b=
y 8 will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 25
>
> \[WARNING\] \[0/DDC#1\] The requested decimation is odd; the user shoul=
d expect passband CIC rolloff.
>
> Select an even decimation to ensure that a halfband filter is enabled.
>
> Decimations factorable by 4 will enable 2 halfbands, those factorable b=
y 8 will enable 3 halfbands.
>
> decimation =3D dsp_rate/samp_rate -> 25
>
> \[WARNING\] \[MULTI_USRP\] Could not set RX rate to 10.000 MHz. Actual =
rate is 9.830 MHz
>
> \[WARNING\] \[0/DUC#0\] The requested interpolation is odd; the user sh=
ould expect passband CIC rolloff.
>
> Select an even interpolation to ensure that a halfband filter is enable=
d.
>
> \[WARNING\] \[MULTI_USRP\] Could not set TX rate to 10.000 MHz. Actual =
rate is 9.830 MHz
>
> \[WARNING\] \[0/DUC#0\] The requested interpolation is odd; the user sh=
ould expect passband CIC rolloff.
>
> Select an even interpolation to ensure that a halfband filter is enable=
d.
>
> \[WARNING\] \[MULTI_USRP\] Could not set TX rate to 10.000 MHz. Actual =
rate is 9.830 MHz
>
> \[WARNING\] \[0/DUC#0\] The requested interpolation is odd; the user sh=
ould expect passband CIC rolloff.
>
> Select an even interpolation to ensure that a halfband filter is enable=
d.
>
> \[WARNING\] \[MULTI_USRP\] Could not set TX rate to 10.000 MHz. Actual =
rate is 9.830 MHz
>
> \[WARNING\] \[0/DUC#0\] The requested interpolation is odd; the user sh=
ould expect passband CIC rolloff.
>
> Select an even interpolation to ensure that a halfband filter is enable=
d.
>
> \[WARNING\] \[MULTI_USRP\] Could not set TX rate to 10.000 MHz. Actual =
rate is 9.830 MHz
>
> \[WARNING\] \[0/DUC#1\] The requested interpolation is odd; the user sh=
ould expect passband CIC rolloff.
>
> Select an even interpolation to ensure that a halfband filter is enable=
d.
>
> \[WARNING\] \[MULTI_USRP\] Could not set TX rate to 10.000 MHz. Actual =
rate is 9.830 MHz
>
> \[WARNING\] \[0/DUC#1\] The requested interpolation is odd; the user sh=
ould expect passband CIC rolloff.
>
> Select an even interpolation to ensure that a halfband filter is enable=
d.
>
> \[WARNING\] \[MULTI_USRP\] Could not set TX rate to 10.000 MHz. Actual =
rate is 9.830 MHz
>
> \[WARNING\] \[0/DUC#1\] The requested interpolation is odd; the user sh=
ould expect passband CIC rolloff.
>
> Select an even interpolation to ensure that a halfband filter is enable=
d.
>
> \[WARNING\] \[MULTI_USRP\] Could not set TX rate to 10.000 MHz. Actual =
rate is 9.830 MHz
>
> \[WARNING\] \[0/DUC#1\] The requested interpolation is odd; the user sh=
ould expect passband CIC rolloff.
>
> Select an even interpolation to ensure that a halfband filter is enable=
d.
>
> \[WARNING\] \[MULTI_USRP\] Could not set TX rate to 10.000 MHz. Actual =
rate is 9.830 MHz
>
> Setting TX samples per packet (spp) to 368
>
> Setting TX samples per burst (spb) to 368
>
> \[00:00:02.337324507\] Testing receive rate 9.830400 Msps on 1 channels
>
> \[00:00:02.345582152\] Testing transmit rate 9.830400 Msps on 1 channel=
s
>
> \[00:00:02.446541050\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:02.546901331\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:02.647266308\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:02.747632634\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:02.848013443\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:02.948317247\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:03.48680558\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:03.149035736\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:03.249397254\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:03.349761815\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:03.450124448\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:03.550480742\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:03.650727970\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:03.751091047\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:03.851363463\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:03.951753209\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:04.52095287\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:04.152417981\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:04.252733609\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:04.353112482\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:04.453421285\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:04.553727218\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:04.654033649\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:04.754346377\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:04.854655425\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:04.954958663\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:05.55331178\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:05.155636726\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:05.255971669\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:05.356280233\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:05.456588375\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:05.556891926\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:05.657266691\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:05.757636100\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:05.858000589\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:05.958370394\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:06.58734012\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:06.159094031\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:06.259461239\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:06.359822684\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:06.460209899\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:06.560572853\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:06.660932671\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:06.761301248\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:06.861663224\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:06.962025353\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:07.62381930\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:07.162740188\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:07.263105434\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:07.363496155\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:07.463808486\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:07.564138076\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:07.664452105\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:07.764759587\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:07.865136362\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:07.965446513\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:08.65750188\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:08.166126030\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:08.266437786\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:08.366745804\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:08.467145533\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:08.567482709\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:08.667799437\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:08.768118148\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:08.868459063\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:08.968755210\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:09.69060021\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:09.169379514\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:09.269689636\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:09.370002277\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:09.470363669\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:09.570675756\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:09.670981187\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:09.771283246\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:09.871572257\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:09.971907479\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:10.72212490\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:10.172529591\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:10.272840361\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:10.373148803\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:10.473461588\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:10.573765550\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:10.674077822\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:10.774378923\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:10.874689347\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:10.974993661\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:11.75367740\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:11.175674052\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:11.276009655\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:11.376327466\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:11.476645912\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:11.576959022\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:11.677272004\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:11.777582722\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:11.877965205\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:11.978269763\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:12.78567789\] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>
> \[00:00:12.178886080\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:12.279226079\] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.
>
> \[00:00:12.383774613\] Benchmark complete.
>
> Benchmark rate summary:
>
>   Num received samples:     0
>
>   Num dropped samples:      0
>
>   Num overruns detected:    0
>
>   Num transmitted samples:  100050368
>
>   Num sequence errors (Tx): 0
>
>   Num sequence errors (Rx): 0
>
>   Num underruns detected:   0
>
>   Num late commands:        0
>
>   Num timeouts (Tx):        0
>
>   Num timeouts (Rx):        99
>
> Done!
>
> \[ERROR\] \[UHD\] An unexpected exception was caught in a task loop.The=
 task loop will now exit, things may not work.rpc::timeout: Timeout of 10=
000ms while calling RPC function 'get_log_buf'
>
> \[WARNING\] \[UHD\] Exception caught in safe-call.
>
>   in \~mpmd_mboard_impl
>
>   at /home/openran/uhd/host/lib/usrp/mpmd/mpmd_mboard_impl.cpp:322
>
> dump_logs(); _claimer_task.reset(); if (not rpc->request_with_token<boo=
l>("unclaim")) { uhd::_log::log(uhd::log::warning, "/home/openran/uhd/hos=
t/lib/usrp/mpmd/mpmd_mboard_impl.cpp", 324, "MPMD", std::this_thread::get=
_id()) << "Failure to ack unclaim!";; } -> rpc::timeout: Timeout of 10000=
ms while calling RPC function 'get_log_buf'

--b1_TLKgM9FBwt14dLggfYfEpIV00ByNIivTh39KlCmrzo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Chris Rogers wrote:</p><blockquote><p>I=E2=80=99d suggest taking a look =
at this section of the manual
https://files.ettus.com/manual/page_usrp_x4xx.html#x440_usage_mcrs and the
link Marcus sent
https://kb.ettus.com/About_Sampling_Rates_and_Master_Clock_Rates_for_the_US=
RP_X440.
This is a unique USRP architecture that requires some frequency and clock
planning</p><p>You should probably manually set your desired Master Clock R=
ate (MCR) and
Converter Rate (Fc) based on your frequencies of interest. It=E2=80=99s imp=
ortant
to note that the X440 has no analog front end, so you cannot adjust any
analog bandwidth filters, but you can reduce the MCR and Fc which will
reduce the bandwidth digitally, and DDC will further reduce the bandwidth.
You can set these clocks in the device arguments. So basically, if you set
rx_rate=3D100e6, you=E2=80=99ll be getting 100 MHz of bandwidth, but where =
in the
spectrum that 100 MHz is located and how many aliases you=E2=80=99ll see is=
 decided
by how you configure the clocks and what you set the RF center frequency to=
.</p><p>Your timeout error is probably caused by running UHD programs on th=
e X440
itself. It=E2=80=99s really designed to stream samples to it from a differe=
nt host
computer over the QSFP ports</p><p>On Fri, Feb 7, 2025 at 8:44=E2=80=AFAM R=
ilbert Lima via USRP-users &lt;
usrp-users@lists.ettus.com&gt; wrote:</p><blockquote><p>Thank you, Chris.</=
p><p>I have updated the FPGA image from the USRP X440 to the X4_200, and up=
on
executing, the sampling rate has been reduced to approximately 5 Msps.</p><=
p>Another matter I would like to inquire about is whether it is possible to
reduce the analog bandwidth of the signal from 200 MHz to 100 MHz. I am
aiming to use the X440 with OpenAirInterface5G in FR1, but since the image
is from the X4_200, which is tied to a 200 MHz bandwidth, I would like to
know if there is any workaround to perform this downgrade."</p><p>However, =
in some tests that were performed, the receive timeout error
appears, even using the 5e6 sampling rate, increasing the value to 99 <em>N=
um
timeouts (Rx): 99</em>. And I don't know why these receive errors appeared.=
</p><p>root@ni-x4xx-342597F:/usr/lib/uhd/examples# ./benchmark_rate --rx_ra=
te
5e6 --tx_rate 5e6</p><p>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_1=
07800;
UHD_4.7.0.0-0-ga5ed1872</p><p>[00:00:00.029460] Creating the usrp device wi=
th: ...</p><p>[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx440,serial=3D342597F,name=3Dni=
-x4xx-342597F,fpga=3DX4_200,claimed=3DFalse</p><p>[WARNING] [MPM.RPCServer]=
 A timeout event occured!</p><p>[INFO] [MPM.PeriphManager] init() called wi=
th device args
`fpga=3DX4_200,mgmt_addr=3D127.0.0.1,name=3Dni-x4xx-342597F,product=3Dx440,=
clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.</p><p>=
Using Device: Single USRP:</p><p>Device: X400-Series Device</p><p>Mboard 0:=
 x440</p><p>RX Channel: 0</p><p>RX DSP: 0</p><p>RX Dboard: A</p><p>RX Subde=
v: 0</p><p>RX Channel: 1</p><p>RX DSP: 1</p><p>RX Dboard: A</p><p>RX Subdev=
: 1</p><p>RX Channel: 2</p><p>RX DSP: 2</p><p>RX Dboard: A</p><p>RX Subdev:=
 2</p><p>RX Channel: 3</p><p>RX DSP: 3</p><p>RX Dboard: A</p><p>RX Subdev: =
3</p><p>RX Channel: 4</p><p>RX DSP: 4</p><p>RX Dboard: B</p><p>RX Subdev: 0=
</p><p>RX Channel: 5</p><p>RX DSP: 5</p><p>RX Dboard: B</p><p>RX Subdev: 1<=
/p><p>RX Channel: 6</p><p>RX DSP: 6</p><p>RX Dboard: B</p><p>RX Subdev: 2</=
p><p>RX Channel: 7</p><p>RX DSP: 7</p><p>RX Dboard: B</p><p>RX Subdev: 3</p=
><p>TX Channel: 0</p><p>TX DSP: 0</p><p>TX Dboard: A</p><p>TX Subdev: 0</p>=
<p>TX Channel: 1</p><p>TX DSP: 1</p><p>TX Dboard: A</p><p>TX Subdev: 1</p><=
p>TX Channel: 2</p><p>TX DSP: 2</p><p>TX Dboard: A</p><p>TX Subdev: 2</p><p=
>TX Channel: 3</p><p>TX DSP: 3</p><p>TX Dboard: A</p><p>TX Subdev: 3</p><p>=
TX Channel: 4</p><p>TX DSP: 4</p><p>TX Dboard: B</p><p>TX Subdev: 0</p><p>T=
X Channel: 5</p><p>TX DSP: 5</p><p>TX Dboard: B</p><p>TX Subdev: 1</p><p>TX=
 Channel: 6</p><p>TX DSP: 6</p><p>TX Dboard: B</p><p>TX Subdev: 2</p><p>TX =
Channel: 7</p><p>TX DSP: 7</p><p>TX Dboard: B</p><p>TX Subdev: 3</p><p>[00:=
00:04.112276974] Setting device timestamp to 0...</p><p>[WARNING] [0/DDC#0]=
 The requested decimation is odd; the user should
expect passband CIC rolloff.</p><p>Select an even decimation to ensure that=
 a halfband filter is enabled.</p><p>Decimations factorable by 4 will enabl=
e 2 halfbands, those factorable by 8
will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</=
p><p>[WARNING] [0/DDC#0] The requested decimation is odd; the user should
expect passband CIC rolloff.</p><p>Select an even decimation to ensure that=
 a halfband filter is enabled.</p><p>Decimations factorable by 4 will enabl=
e 2 halfbands, those factorable by 8
will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</=
p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate=
 is
5.016 MHz</p><p>[WARNING] [0/DDC#0] The requested decimation is odd; the us=
er should
expect passband CIC rolloff.</p><p>Select an even decimation to ensure that=
 a halfband filter is enabled.</p><p>Decimations factorable by 4 will enabl=
e 2 halfbands, those factorable by 8
will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</=
p><p>[WARNING] [0/DDC#0] The requested decimation is odd; the user should
expect passband CIC rolloff.</p><p>Select an even decimation to ensure that=
 a halfband filter is enabled.</p><p>Decimations factorable by 4 will enabl=
e 2 halfbands, those factorable by 8
will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</=
p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate=
 is
5.016 MHz</p><p>[WARNING] [0/DDC#0] The requested decimation is odd; the us=
er should
expect passband CIC rolloff.</p><p>Select an even decimation to ensure that=
 a halfband filter is enabled.</p><p>Decimations factorable by 4 will enabl=
e 2 halfbands, those factorable by 8
will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</=
p><p>[WARNING] [0/DDC#0] The requested decimation is odd; the user should
expect passband CIC rolloff.</p><p>Select an even decimation to ensure that=
 a halfband filter is enabled.</p><p>Decimations factorable by 4 will enabl=
e 2 halfbands, those factorable by 8
will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</=
p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate=
 is
5.016 MHz</p><p>[WARNING] [0/DDC#0] The requested decimation is odd; the us=
er should
expect passband CIC rolloff.</p><p>Select an even decimation to ensure that=
 a halfband filter is enabled.</p><p>Decimations factorable by 4 will enabl=
e 2 halfbands, those factorable by 8
will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</=
p><p>[WARNING] [0/DDC#0] The requested decimation is odd; the user should
expect passband CIC rolloff.</p><p>Select an even decimation to ensure that=
 a halfband filter is enabled.</p><p>Decimations factorable by 4 will enabl=
e 2 halfbands, those factorable by 8
will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</=
p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate=
 is
5.016 MHz</p><p>[WARNING] [0/DDC#1] The requested decimation is odd; the us=
er should
expect passband CIC rolloff.</p><p>Select an even decimation to ensure that=
 a halfband filter is enabled.</p><p>Decimations factorable by 4 will enabl=
e 2 halfbands, those factorable by 8
will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</=
p><p>[WARNING] [0/DDC#1] The requested decimation is odd; the user should
expect passband CIC rolloff.</p><p>Select an even decimation to ensure that=
 a halfband filter is enabled.</p><p>Decimations factorable by 4 will enabl=
e 2 halfbands, those factorable by 8
will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</=
p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate=
 is
5.016 MHz</p><p>[WARNING] [0/DDC#1] The requested decimation is odd; the us=
er should
expect passband CIC rolloff.</p><p>Select an even decimation to ensure that=
 a halfband filter is enabled.</p><p>Decimations factorable by 4 will enabl=
e 2 halfbands, those factorable by 8
will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</=
p><p>[WARNING] [0/DDC#1] The requested decimation is odd; the user should
expect passband CIC rolloff.</p><p>Select an even decimation to ensure that=
 a halfband filter is enabled.</p><p>Decimations factorable by 4 will enabl=
e 2 halfbands, those factorable by 8
will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</=
p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate=
 is
5.016 MHz</p><p>[WARNING] [0/DDC#1] The requested decimation is odd; the us=
er should
expect passband CIC rolloff.</p><p>Select an even decimation to ensure that=
 a halfband filter is enabled.</p><p>Decimations factorable by 4 will enabl=
e 2 halfbands, those factorable by 8
will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</=
p><p>[WARNING] [0/DDC#1] The requested decimation is odd; the user should
expect passband CIC rolloff.</p><p>Select an even decimation to ensure that=
 a halfband filter is enabled.</p><p>Decimations factorable by 4 will enabl=
e 2 halfbands, those factorable by 8
will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</=
p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate=
 is
5.016 MHz</p><p>[WARNING] [0/DDC#1] The requested decimation is odd; the us=
er should
expect passband CIC rolloff.</p><p>Select an even decimation to ensure that=
 a halfband filter is enabled.</p><p>Decimations factorable by 4 will enabl=
e 2 halfbands, those factorable by 8
will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 49</=
p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 5.000 MHz. Actual rate=
 is
5.016 MHz</p><p>[00:00:04.465504150] Testing receive rate 5.015510 Msps on =
1 channels</p><p>[WARNING] [0/DUC#0] The requested interpolation is odd; th=
e user should
expect passband CIC rolloff.</p><p>Select an even interpolation to ensure t=
hat a halfband filter is enabled.</p><p>[WARNING] [MULTI_USRP] Could not se=
t TX rate to 5.000 MHz. Actual rate is
5.016 MHz</p><p>[WARNING] [0/DUC#0] The requested interpolation is odd; the=
 user should
expect passband CIC rolloff.</p><p>Select an even interpolation to ensure t=
hat a halfband filter is enabled.</p><p>[WARNING] [MULTI_USRP] Could not se=
t TX rate to 5.000 MHz. Actual rate is
5.016 MHz</p><p>[WARNING] [0/DUC#0] The requested interpolation is odd; the=
 user should
expect passband CIC rolloff.</p><p>Select an even interpolation to ensure t=
hat a halfband filter is enabled.</p><p>[WARNING] [MULTI_USRP] Could not se=
t TX rate to 5.000 MHz. Actual rate is
5.016 MHz</p><p>[WARNING] [0/DUC#0] The requested interpolation is odd; the=
 user should
expect passband CIC rolloff.</p><p>Select an even interpolation to ensure t=
hat a halfband filter is enabled.</p><p>[WARNING] [MULTI_USRP] Could not se=
t TX rate to 5.000 MHz. Actual rate is
5.016 MHz</p><p>[WARNING] [0/DUC#1] The requested interpolation is odd; the=
 user should
expect passband CIC rolloff.</p><p>Select an even interpolation to ensure t=
hat a halfband filter is enabled.</p><p>[WARNING] [MULTI_USRP] Could not se=
t TX rate to 5.000 MHz. Actual rate is
5.016 MHz</p><p>[WARNING] [0/DUC#1] The requested interpolation is odd; the=
 user should
expect passband CIC rolloff.</p><p>Select an even interpolation to ensure t=
hat a halfband filter is enabled.</p><p>[WARNING] [MULTI_USRP] Could not se=
t TX rate to 5.000 MHz. Actual rate is
5.016 MHz</p><p>[WARNING] [0/DUC#1] The requested interpolation is odd; the=
 user should
expect passband CIC rolloff.</p><p>Select an even interpolation to ensure t=
hat a halfband filter is enabled.</p><p>[WARNING] [MULTI_USRP] Could not se=
t TX rate to 5.000 MHz. Actual rate is
5.016 MHz</p><p>[WARNING] [0/DUC#1] The requested interpolation is odd; the=
 user should
expect passband CIC rolloff.</p><p>Select an even interpolation to ensure t=
hat a halfband filter is enabled.</p><p>[WARNING] [MULTI_USRP] Could not se=
t TX rate to 5.000 MHz. Actual rate is
5.016 MHz</p><p>Setting TX spp to 352</p><p>[00:00:04.801908845] Testing tr=
ansmit rate 5.015510 Msps on 1 channels</p><p>[00:00:14.826000429] Benchmar=
k complete.</p><p>Benchmark rate summary:</p><p>Num received samples: 50161=
056</p><p>Num dropped samples: 0</p><p>Num overruns detected: 0</p><p>Num t=
ransmitted samples: 50201888</p><p>Num sequence errors (Tx): 0</p><p>Num se=
quence errors (Rx): 0</p><p>Num underruns detected: 0</p><p>Num late comman=
ds: 0</p><p>Num timeouts (Tx): 0</p><p>Num timeouts (Rx): 0</p><p>Done!</p>=
<div contenteditable=3D"false"><hr></div><p>USRP-users mailing list -- usrp=
-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com</p></block=
quote></blockquote><p>Hi Chris.</p><p>I ran tests using another host with U=
HD 4.7, but the timeout error still continues, initially I considered 10e6 =
rate. I'm using QSFP28 on the X440 with MTU 9000.</p><p>The logs are below.=
 Is there anything else I can analyze to see what might be causing these ti=
meouts?</p><p><br></p><blockquote><p>openran@openran:/usr/local/lib/uhd/exa=
mples$ sudo ./benchmark_rate --tx_rate 10e6 --rx_rate 10e6 --args=3D"type=
=3Dx4xx,fpga=3Dx4_200,mgmt_addr=3D192.168.100.2,addr=3D192.168.100.2"</p><p=
>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.8.0.0-0-g3=
08126a4</p><p>[00:00:00.000665] Creating the usrp device with: type=3Dx4xx,=
fpga=3Dx4_200,mgmt_addr=3D192.168.100.2,addr=3D192.168.100.2...</p><p>[INFO=
] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D192.16=
8.100.2,type=3Dx4xx,product=3Dx440,serial=3D342597F,name=3Dni-x4xx-342597F,=
fpga=3DX4_200,claimed=3DFalse,addr=3D192.168.100.2</p><p>[WARNING] [MPM.RPC=
Server] A timeout event occured!</p><p>[INFO] [MPM.PeriphManager] init() ca=
lled with device args `fpga=3DX4_200,mgmt_addr=3D192.168.100.2,name=3Dni-x4=
xx-342597F,product=3Dx440,clock_source=3Dinternal,time_source=3Dinternal,in=
itializing=3DTrue'.</p><p>[ERROR] [RPC] ADC tiles failed to sync properly.<=
/p><p>[ERROR] [MPMD] Synchronization error: RuntimeError: Error during RPC =
call to `synchronize'. Error message: ADC tiles failed to sync properly.</p=
><p>Using Device: Single USRP:</p><p>  Device: X400-Series Device</p><p>  M=
board 0: x440</p><p>  RX Channel: 0</p><p>    RX DSP: 0</p><p>    RX Dboard=
: A</p><p>    RX Subdev: 0</p><p>  RX Channel: 1</p><p>    RX DSP: 1</p><p>=
    RX Dboard: A</p><p>    RX Subdev: 1</p><p>  RX Channel: 2</p><p>    RX =
DSP: 2</p><p>    RX Dboard: A</p><p>    RX Subdev: 2</p><p>  RX Channel: 3<=
/p><p>    RX DSP: 3</p><p>    RX Dboard: A</p><p>    RX Subdev: 3</p><p>  R=
X Channel: 4</p><p>    RX DSP: 4</p><p>    RX Dboard: B</p><p>    RX Subdev=
: 0</p><p>  RX Channel: 5</p><p>    RX DSP: 5</p><p>    RX Dboard: B</p><p>=
    RX Subdev: 1</p><p>  RX Channel: 6</p><p>    RX DSP: 6</p><p>    RX Dbo=
ard: B</p><p>    RX Subdev: 2</p><p>  RX Channel: 7</p><p>    RX DSP: 7</p>=
<p>    RX Dboard: B</p><p>    RX Subdev: 3</p><p>  TX Channel: 0</p><p>    =
TX DSP: 0</p><p>    TX Dboard: A</p><p>    TX Subdev: 0</p><p>  TX Channel:=
 1</p><p>    TX DSP: 1</p><p>    TX Dboard: A</p><p>    TX Subdev: 1</p><p>=
  TX Channel: 2</p><p>    TX DSP: 2</p><p>    TX Dboard: A</p><p>    TX Sub=
dev: 2</p><p>  TX Channel: 3</p><p>    TX DSP: 3</p><p>    TX Dboard: A</p>=
<p>    TX Subdev: 3</p><p>  TX Channel: 4</p><p>    TX DSP: 4</p><p>    TX =
Dboard: B</p><p>    TX Subdev: 0</p><p>  TX Channel: 5</p><p>    TX DSP: 5<=
/p><p>    TX Dboard: B</p><p>    TX Subdev: 1</p><p>  TX Channel: 6</p><p> =
   TX DSP: 6</p><p>    TX Dboard: B</p><p>    TX Subdev: 2</p><p>  TX Chann=
el: 7</p><p>    TX DSP: 7</p><p>    TX Dboard: B</p><p>    TX Subdev: 3</p>=
<p>[00:00:02.327707281] Setting device timestamp to 0...</p><p>[WARNING] [0=
/DDC#0] The requested decimation is odd; the user should expect passband CI=
C rolloff.</p><p>Select an even decimation to ensure that a halfband filter=
 is enabled.</p><p>Decimations factorable by 4 will enable 2 halfbands, tho=
se factorable by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/s=
amp_rate -&gt; 25</p><p>[WARNING] [0/DDC#0] The requested decimation is odd=
; the user should expect passband CIC rolloff.</p><p>Select an even decimat=
ion to ensure that a halfband filter is enabled.</p><p>Decimations factorab=
le by 4 will enable 2 halfbands, those factorable by 8 will enable 3 halfba=
nds.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 25</p><p>[WARNING] [MULT=
I_USRP] Could not set RX rate to 10.000 MHz. Actual rate is 9.830 MHz</p><p=
>[WARNING] [0/DDC#0] The requested decimation is odd; the user should expec=
t passband CIC rolloff.</p><p>Select an even decimation to ensure that a ha=
lfband filter is enabled.</p><p>Decimations factorable by 4 will enable 2 h=
alfbands, those factorable by 8 will enable 3 halfbands.</p><p>decimation =
=3D dsp_rate/samp_rate -&gt; 25</p><p>[WARNING] [0/DDC#0] The requested dec=
imation is odd; the user should expect passband CIC rolloff.</p><p>Select a=
n even decimation to ensure that a halfband filter is enabled.</p><p>Decima=
tions factorable by 4 will enable 2 halfbands, those factorable by 8 will e=
nable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 25</p><p>[=
WARNING] [MULTI_USRP] Could not set RX rate to 10.000 MHz. Actual rate is 9=
.830 MHz</p><p>[WARNING] [0/DDC#0] The requested decimation is odd; the use=
r should expect passband CIC rolloff.</p><p>Select an even decimation to en=
sure that a halfband filter is enabled.</p><p>Decimations factorable by 4 w=
ill enable 2 halfbands, those factorable by 8 will enable 3 halfbands.</p><=
p>decimation =3D dsp_rate/samp_rate -&gt; 25</p><p>[WARNING] [0/DDC#0] The =
requested decimation is odd; the user should expect passband CIC rolloff.</=
p><p>Select an even decimation to ensure that a halfband filter is enabled.=
</p><p>Decimations factorable by 4 will enable 2 halfbands, those factorabl=
e by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&g=
t; 25</p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 10.000 MHz. Act=
ual rate is 9.830 MHz</p><p>[WARNING] [0/DDC#0] The requested decimation is=
 odd; the user should expect passband CIC rolloff.</p><p>Select an even dec=
imation to ensure that a halfband filter is enabled.</p><p>Decimations fact=
orable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 ha=
lfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 25</p><p>[WARNING] [=
0/DDC#0] The requested decimation is odd; the user should expect passband C=
IC rolloff.</p><p>Select an even decimation to ensure that a halfband filte=
r is enabled.</p><p>Decimations factorable by 4 will enable 2 halfbands, th=
ose factorable by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/=
samp_rate -&gt; 25</p><p>[WARNING] [MULTI_USRP] Could not set RX rate to 10=
.000 MHz. Actual rate is 9.830 MHz</p><p>[WARNING] [0/DDC#1] The requested =
decimation is odd; the user should expect passband CIC rolloff.</p><p>Selec=
t an even decimation to ensure that a halfband filter is enabled.</p><p>Dec=
imations factorable by 4 will enable 2 halfbands, those factorable by 8 wil=
l enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 25</p><=
p>[WARNING] [0/DDC#1] The requested decimation is odd; the user should expe=
ct passband CIC rolloff.</p><p>Select an even decimation to ensure that a h=
alfband filter is enabled.</p><p>Decimations factorable by 4 will enable 2 =
halfbands, those factorable by 8 will enable 3 halfbands.</p><p>decimation =
=3D dsp_rate/samp_rate -&gt; 25</p><p>[WARNING] [MULTI_USRP] Could not set =
RX rate to 10.000 MHz. Actual rate is 9.830 MHz</p><p>[WARNING] [0/DDC#1] T=
he requested decimation is odd; the user should expect passband CIC rolloff=
.</p><p>Select an even decimation to ensure that a halfband filter is enabl=
ed.</p><p>Decimations factorable by 4 will enable 2 halfbands, those factor=
able by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate =
-&gt; 25</p><p>[WARNING] [0/DDC#1] The requested decimation is odd; the use=
r should expect passband CIC rolloff.</p><p>Select an even decimation to en=
sure that a halfband filter is enabled.</p><p>Decimations factorable by 4 w=
ill enable 2 halfbands, those factorable by 8 will enable 3 halfbands.</p><=
p>decimation =3D dsp_rate/samp_rate -&gt; 25</p><p>[WARNING] [MULTI_USRP] C=
ould not set RX rate to 10.000 MHz. Actual rate is 9.830 MHz</p><p>[WARNING=
] [0/DDC#1] The requested decimation is odd; the user should expect passban=
d CIC rolloff.</p><p>Select an even decimation to ensure that a halfband fi=
lter is enabled.</p><p>Decimations factorable by 4 will enable 2 halfbands,=
 those factorable by 8 will enable 3 halfbands.</p><p>decimation =3D dsp_ra=
te/samp_rate -&gt; 25</p><p>[WARNING] [0/DDC#1] The requested decimation is=
 odd; the user should expect passband CIC rolloff.</p><p>Select an even dec=
imation to ensure that a halfband filter is enabled.</p><p>Decimations fact=
orable by 4 will enable 2 halfbands, those factorable by 8 will enable 3 ha=
lfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 25</p><p>[WARNING] [=
MULTI_USRP] Could not set RX rate to 10.000 MHz. Actual rate is 9.830 MHz</=
p><p>[WARNING] [0/DDC#1] The requested decimation is odd; the user should e=
xpect passband CIC rolloff.</p><p>Select an even decimation to ensure that =
a halfband filter is enabled.</p><p>Decimations factorable by 4 will enable=
 2 halfbands, those factorable by 8 will enable 3 halfbands.</p><p>decimati=
on =3D dsp_rate/samp_rate -&gt; 25</p><p>[WARNING] [0/DDC#1] The requested =
decimation is odd; the user should expect passband CIC rolloff.</p><p>Selec=
t an even decimation to ensure that a halfband filter is enabled.</p><p>Dec=
imations factorable by 4 will enable 2 halfbands, those factorable by 8 wil=
l enable 3 halfbands.</p><p>decimation =3D dsp_rate/samp_rate -&gt; 25</p><=
p>[WARNING] [MULTI_USRP] Could not set RX rate to 10.000 MHz. Actual rate i=
s 9.830 MHz</p><p>[WARNING] [0/DUC#0] The requested interpolation is odd; t=
he user should expect passband CIC rolloff.</p><p>Select an even interpolat=
ion to ensure that a halfband filter is enabled.</p><p>[WARNING] [MULTI_USR=
P] Could not set TX rate to 10.000 MHz. Actual rate is 9.830 MHz</p><p>[WAR=
NING] [0/DUC#0] The requested interpolation is odd; the user should expect =
passband CIC rolloff.</p><p>Select an even interpolation to ensure that a h=
alfband filter is enabled.</p><p>[WARNING] [MULTI_USRP] Could not set TX ra=
te to 10.000 MHz. Actual rate is 9.830 MHz</p><p>[WARNING] [0/DUC#0] The re=
quested interpolation is odd; the user should expect passband CIC rolloff.<=
/p><p>Select an even interpolation to ensure that a halfband filter is enab=
led.</p><p>[WARNING] [MULTI_USRP] Could not set TX rate to 10.000 MHz. Actu=
al rate is 9.830 MHz</p><p>[WARNING] [0/DUC#0] The requested interpolation =
is odd; the user should expect passband CIC rolloff.</p><p>Select an even i=
nterpolation to ensure that a halfband filter is enabled.</p><p>[WARNING] [=
MULTI_USRP] Could not set TX rate to 10.000 MHz. Actual rate is 9.830 MHz</=
p><p>[WARNING] [0/DUC#1] The requested interpolation is odd; the user shoul=
d expect passband CIC rolloff.</p><p>Select an even interpolation to ensure=
 that a halfband filter is enabled.</p><p>[WARNING] [MULTI_USRP] Could not =
set TX rate to 10.000 MHz. Actual rate is 9.830 MHz</p><p>[WARNING] [0/DUC#=
1] The requested interpolation is odd; the user should expect passband CIC =
rolloff.</p><p>Select an even interpolation to ensure that a halfband filte=
r is enabled.</p><p>[WARNING] [MULTI_USRP] Could not set TX rate to 10.000 =
MHz. Actual rate is 9.830 MHz</p><p>[WARNING] [0/DUC#1] The requested inter=
polation is odd; the user should expect passband CIC rolloff.</p><p>Select =
an even interpolation to ensure that a halfband filter is enabled.</p><p>[W=
ARNING] [MULTI_USRP] Could not set TX rate to 10.000 MHz. Actual rate is 9.=
830 MHz</p><p>[WARNING] [0/DUC#1] The requested interpolation is odd; the u=
ser should expect passband CIC rolloff.</p><p>Select an even interpolation =
to ensure that a halfband filter is enabled.</p><p>[WARNING] [MULTI_USRP] C=
ould not set TX rate to 10.000 MHz. Actual rate is 9.830 MHz</p><p>Setting =
TX samples per packet (spp) to 368</p><p>Setting TX samples per burst (spb)=
 to 368</p><p>[00:00:02.337324507] Testing receive rate 9.830400 Msps on 1 =
channels</p><p>[00:00:02.345582152] Testing transmit rate 9.830400 Msps on =
1 channels</p><p>[00:00:02.446541050] Receiver error: ERROR_CODE_TIMEOUT, c=
ontinuing...</p><p>[00:00:02.546901331] Receiver error: ERROR_CODE_TIMEOUT,=
 continuing...</p><p>[00:00:02.647266308] Receiver error: ERROR_CODE_TIMEOU=
T, continuing...</p><p>[00:00:02.747632634] Receiver error: ERROR_CODE_TIME=
OUT, continuing...</p><p>[00:00:02.848013443] Receiver error: ERROR_CODE_TI=
MEOUT, continuing...</p><p>[00:00:02.948317247] Receiver error: ERROR_CODE_=
TIMEOUT, continuing...</p><p>[00:00:03.48680558] Receiver error: ERROR_CODE=
_TIMEOUT, continuing...</p><p>[00:00:03.149035736] Receiver error: ERROR_CO=
DE_TIMEOUT, continuing...</p><p>[00:00:03.249397254] Receiver error: ERROR_=
CODE_TIMEOUT, continuing...</p><p>[00:00:03.349761815] Receiver error: ERRO=
R_CODE_TIMEOUT, continuing...</p><p>[00:00:03.450124448] Receiver error: ER=
ROR_CODE_TIMEOUT, continuing...</p><p>[00:00:03.550480742] Receiver error: =
ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:03.650727970] Receiver error=
: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:03.751091047] Receiver err=
or: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:03.851363463] Receiver e=
rror: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:03.951753209] Receiver=
 error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:04.52095287] Receive=
r error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:04.152417981] Recei=
ver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:04.252733609] Rec=
eiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:04.353112482] R=
eceiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:04.453421285]=
 Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:04.55372721=
8] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:04.654033=
649] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:04.7543=
46377] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:04.85=
4655425] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:04.=
954958663] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:0=
5.55331178] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:=
05.155636726] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:0=
0:05.255971669] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00=
:00:05.356280233] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[=
00:00:05.456588375] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p=
>[00:00:05.556891926] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p>=
<p>[00:00:05.657266691] Receiver error: ERROR_CODE_TIMEOUT, continuing...</=
p><p>[00:00:05.757636100] Receiver error: ERROR_CODE_TIMEOUT, continuing...=
</p><p>[00:00:05.858000589] Receiver error: ERROR_CODE_TIMEOUT, continuing.=
..</p><p>[00:00:05.958370394] Receiver error: ERROR_CODE_TIMEOUT, continuin=
g...</p><p>[00:00:06.58734012] Receiver error: ERROR_CODE_TIMEOUT, continui=
ng...</p><p>[00:00:06.159094031] Receiver error: ERROR_CODE_TIMEOUT, contin=
uing...</p><p>[00:00:06.259461239] Receiver error: ERROR_CODE_TIMEOUT, cont=
inuing...</p><p>[00:00:06.359822684] Receiver error: ERROR_CODE_TIMEOUT, co=
ntinuing...</p><p>[00:00:06.460209899] Receiver error: ERROR_CODE_TIMEOUT, =
continuing...</p><p>[00:00:06.560572853] Receiver error: ERROR_CODE_TIMEOUT=
, continuing...</p><p>[00:00:06.660932671] Receiver error: ERROR_CODE_TIMEO=
UT, continuing...</p><p>[00:00:06.761301248] Receiver error: ERROR_CODE_TIM=
EOUT, continuing...</p><p>[00:00:06.861663224] Receiver error: ERROR_CODE_T=
IMEOUT, continuing...</p><p>[00:00:06.962025353] Receiver error: ERROR_CODE=
_TIMEOUT, continuing...</p><p>[00:00:07.62381930] Receiver error: ERROR_COD=
E_TIMEOUT, continuing...</p><p>[00:00:07.162740188] Receiver error: ERROR_C=
ODE_TIMEOUT, continuing...</p><p>[00:00:07.263105434] Receiver error: ERROR=
_CODE_TIMEOUT, continuing...</p><p>[00:00:07.363496155] Receiver error: ERR=
OR_CODE_TIMEOUT, continuing...</p><p>[00:00:07.463808486] Receiver error: E=
RROR_CODE_TIMEOUT, continuing...</p><p>[00:00:07.564138076] Receiver error:=
 ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:07.664452105] Receiver erro=
r: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:07.764759587] Receiver er=
ror: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:07.865136362] Receiver =
error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:07.965446513] Receive=
r error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:08.65750188] Receiv=
er error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:08.166126030] Rece=
iver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:08.266437786] Re=
ceiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:08.366745804] =
Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:08.467145533=
] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:08.5674827=
09] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:08.66779=
9437] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:08.768=
118148] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:08.8=
68459063] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:08=
.968755210] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:=
09.69060021] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00=
:09.169379514] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:=
00:09.269689636] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[0=
0:00:09.370002277] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>=
[00:00:09.470363669] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p><=
p>[00:00:09.570675756] Receiver error: ERROR_CODE_TIMEOUT, continuing...</p=
><p>[00:00:09.670981187] Receiver error: ERROR_CODE_TIMEOUT, continuing...<=
/p><p>[00:00:09.771283246] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.</p><p>[00:00:09.871572257] Receiver error: ERROR_CODE_TIMEOUT, continuing=
...</p><p>[00:00:09.971907479] Receiver error: ERROR_CODE_TIMEOUT, continui=
ng...</p><p>[00:00:10.72212490] Receiver error: ERROR_CODE_TIMEOUT, continu=
ing...</p><p>[00:00:10.172529591] Receiver error: ERROR_CODE_TIMEOUT, conti=
nuing...</p><p>[00:00:10.272840361] Receiver error: ERROR_CODE_TIMEOUT, con=
tinuing...</p><p>[00:00:10.373148803] Receiver error: ERROR_CODE_TIMEOUT, c=
ontinuing...</p><p>[00:00:10.473461588] Receiver error: ERROR_CODE_TIMEOUT,=
 continuing...</p><p>[00:00:10.573765550] Receiver error: ERROR_CODE_TIMEOU=
T, continuing...</p><p>[00:00:10.674077822] Receiver error: ERROR_CODE_TIME=
OUT, continuing...</p><p>[00:00:10.774378923] Receiver error: ERROR_CODE_TI=
MEOUT, continuing...</p><p>[00:00:10.874689347] Receiver error: ERROR_CODE_=
TIMEOUT, continuing...</p><p>[00:00:10.974993661] Receiver error: ERROR_COD=
E_TIMEOUT, continuing...</p><p>[00:00:11.75367740] Receiver error: ERROR_CO=
DE_TIMEOUT, continuing...</p><p>[00:00:11.175674052] Receiver error: ERROR_=
CODE_TIMEOUT, continuing...</p><p>[00:00:11.276009655] Receiver error: ERRO=
R_CODE_TIMEOUT, continuing...</p><p>[00:00:11.376327466] Receiver error: ER=
ROR_CODE_TIMEOUT, continuing...</p><p>[00:00:11.476645912] Receiver error: =
ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:11.576959022] Receiver error=
: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:11.677272004] Receiver err=
or: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:11.777582722] Receiver e=
rror: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:11.877965205] Receiver=
 error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:11.978269763] Receiv=
er error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:12.78567789] Recei=
ver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:12.178886080] Rec=
eiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:12.279226079] R=
eceiver error: ERROR_CODE_TIMEOUT, continuing...</p><p>[00:00:12.383774613]=
 Benchmark complete.</p><p>Benchmark rate summary:</p><p>  Num received sam=
ples:     0</p><p>  Num dropped samples:      0</p><p>  Num overruns detect=
ed:    0</p><p>  Num transmitted samples:  100050368</p><p>  Num sequence e=
rrors (Tx): 0</p><p>  Num sequence errors (Rx): 0</p><p>  Num underruns det=
ected:   0</p><p>  Num late commands:        0</p><p>  Num timeouts (Tx):  =
      0</p><p>  Num timeouts (Rx):        99</p><p>Done!</p><p>[ERROR] [UHD=
] An unexpected exception was caught in a task loop.The task loop will now =
exit, things may not work.rpc::timeout: Timeout of 10000ms while calling RP=
C function 'get_log_buf'</p><p>[WARNING] [UHD] Exception caught in safe-cal=
l.</p><p>  in ~mpmd_mboard_impl</p><p>  at /home/openran/uhd/host/lib/usrp/=
mpmd/mpmd_mboard_impl.cpp:322</p><p>dump_logs(); _claimer_task.reset(); if =
(not rpc-&gt;request_with_token&lt;bool&gt;("unclaim")) { uhd::_log::log(uh=
d::log::warning, "/home/openran/uhd/host/lib/usrp/mpmd/mpmd_mboard_impl.cpp=
", 324, "MPMD", std::this_thread::get_id()) &lt;&lt; "Failure to ack unclai=
m!";; } -&gt; rpc::timeout: Timeout of 10000ms while calling RPC function '=
get_log_buf'</p></blockquote>

--b1_TLKgM9FBwt14dLggfYfEpIV00ByNIivTh39KlCmrzo--

--===============1352180699345740262==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1352180699345740262==--
