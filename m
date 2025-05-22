Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 68115AC0D2E
	for <lists+usrp-users@lfdr.de>; Thu, 22 May 2025 15:48:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4BB593850FE
	for <lists+usrp-users@lfdr.de>; Thu, 22 May 2025 09:48:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747921714; bh=XK9LunvmZKwNhi6jIKrNg1fvsXT0dTEuKMd263X95fA=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=ZNDF0b6dnOWl4Iw8344jjB0S0tG4K3yZiCGyQ+kw7Bl2G0hFUzGUZlGDUmt/bMrMo
	 T2TxN2+QSGllgmgshsAN6PcgGObuaAfJgkgfjUviogIy0w3qMRmrxA3PkIe+QihPfZ
	 WnDbWU5INxIbRPmVEuCQSN++90Zvx+3G0rDgm9YFZwLLqZyEXze24Q1TaewcR2wVht
	 0pyYs1xo2Pk8vE+XMG7pRsh6bBWONe+1/jva3vT3XxiHVAOd/XkzL9SegA/hL0nvbt
	 UYX9cxry+CRDKOwPWmFFbDBpQcgtRlAxi5UyFryPh4bpxAorg4qOZK9tIaOYc4Ekd+
	 4ovioZtBW2v9g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1CE4380987
	for <usrp-users@lists.ettus.com>; Thu, 22 May 2025 09:48:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747921698; bh=3XkvVdjyejBfARL5+3n3PGj60DqNaaDdma9yEBoHu7o=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=QQkWJt9XVMrGvlVRwsby/ilf5kLw0XhNg1jfYHKsWhWrPUPN/xTO29+a9QkBnP4ZT
	 tWG6uFWUdsSwtFomt9CPEET1k+bH4akV2zLZh1BFYd489nEN091ljt0AJbPBGXKnZP
	 xlKTM4RqN1227d52fpVKAWREEIKCAh5Yo8oLRHsBGJ/8clz1Xeng0iQSzGI8OZLNoc
	 hEu/6/EI3S5+nEk4A8vqv0Xvs7ueKLt5EuM2u/sZ295dkDpCOC7m3RQsq0SUe5nnOA
	 M+pF1TLU0fd4huWd0ASr0bcOl2uaSYqIJOWajQETryOUW4h1Em5JVcXFoZQS6clzzj
	 KAbBLYs083tuw==
Date: Thu, 22 May 2025 13:48:17 +0000
To: usrp-users@lists.ettus.com
Message-ID: <O5bJRZAGk9bCRwwNZvPPlKe3S4orgtvBc9I0BdfuE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 328bee3e43a747c08792d6dd375da2d4@vastech.co.za
MIME-Version: 1.0
Message-ID-Hash: IFJPNOZCB55Q72EZFLBVG3QLSWD34EB3
X-Message-ID-Hash: IFJPNOZCB55Q72EZFLBVG3QLSWD34EB3
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: clarification of timestamp calculations
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IFJPNOZCB55Q72EZFLBVG3QLSWD34EB3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============0168111871756003349=="

This is a multi-part message in MIME format.

--===============0168111871756003349==
Content-Type: multipart/alternative;
 boundary="b1_O5bJRZAGk9bCRwwNZvPPlKe3S4orgtvBc9I0BdfuE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_O5bJRZAGk9bCRwwNZvPPlKe3S4orgtvBc9I0BdfuE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Kevin,\
\
As per the [RFNoC specification](https://files.ettus.com/app_notes/RFNoC_=
Specification.pdf) Section 2.2.2.1, if you are using bursts, only the fir=
st packet of each burst is required to have a timestamp. All subsequent p=
ackets of the same burst do not need to have a timestamp included.=20

The downside of a burst is, that there is the assumption that the data is=
 concurrent, meaning that you have to make sure that you send each packet=
 of the burst to the radio in time, such that the radio always has enough=
 data buffered, and no underflows occur because there are no samples to s=
end in a specific radio clock cycle.\
\
The timestamp itself specifies the time of the first sample within the pa=
cket payload. This timestamp signifies, when this first sample was receiv=
ed or when it is supposed to be transmitted, depending on what type of pa=
cket you have and the data flow direction, e.g. RX or TX.\
\
Blocks like the radio block (usually) process only one sample per clock c=
ycle per channel internally.\
Since the timestamps are derived from the radio clock this means that the=
 timestamp delta between two subsequent samples is 1. \
This means that for a TX packet with timestamp ts_0, the first sample of =
the packet will be transmitted at radio clock time ts_0, the second sampl=
e will be transmitted at time ts_0 +1, the third at time ts_0 + 2, and so=
 on.\
\
What this means in practice, is that if you take an existing packet with =
a timestamp and want to split it into two separate packet, both with a ti=
mestamp, what you can usually do is this:

* The first packet can just reuse the timestamp of the original packet.

* For the second packet, you have to check how many samples are included =
in the payload of the first packet, and then add add that number on top o=
f the timestamp of the original packet. I had a look at the new version o=
f the FFT rfnoc block recently and where it also calculated timestamps fo=
r each of the individual samples based on the timestamp of the overarchin=
g packet/burst, so maybe you can take a look at that if you need an examp=
le of how this can be done in practice [there](https://github.com/EttusRe=
search/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_fft/fft_de=
packetize.sv).=20

For your case, what might make this tricky, is that you might be breaking=
 the continuous sample assumption with your decimator, since the OTA time=
stamp delta between subsequent samples within the payload of the packet i=
s no longer 1. This is probably fine, as long as you do not forward this =
decimated packet to another rfnoc block that is timestamp sensitive, e.g.=
 a DUC/DDC, radio, etc=E2=80=A6. .\
If you are transmitting the samples to the host, then you as long as you =
are aware in your application that the packet contains samples that corre=
spond to a sample rate that differs from the radio sample rate, you shoul=
d also most likely be fine.

Disclaimer: I am not 100% sure that all of the assumptions I made are cor=
rect, but I have recently done some work on a custom rfnoc_block, where I=
 had to deal with manual timestamping, so hopefully these insights are he=
lpful for you.

Regards,\
Niels

---

\
Kevin Williams wrote:

> Hi,
>
> Must the timestamp of every packet in an rfnoc network must remain lock=
ed to
> the time source the radio used when it timestamped the first adc sample=
 of
> that packet?
>
> In other words, if I have a decimator must I figure out the time offset=
 of
> the first sample of my decimated packets to within 1 sample of the orig=
inal
> data?
>
> This seems complex because the radio is delivering packets of some size
> related to an rfnoc mtu and most likely not related to my decimator rat=
io -
> so the timestamp of the first sample of my packets changes as it "beats=
"
> with the input packets?
>
> Thanks, Kevin

--b1_O5bJRZAGk9bCRwwNZvPPlKe3S4orgtvBc9I0BdfuE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Kevin,<br><br>As per the <a href=3D"https://files.ettus.com/app_notes=
/RFNoC_Specification.pdf" title=3D"">RFNoC specification</a> Section 2.2.2.=
1, if you are using bursts, only the first packet of each burst is required=
 to have a timestamp. All subsequent packets of the same burst do not need =
to have a timestamp included. </p><p>The downside of a burst is, that there=
 is the assumption that the data is concurrent, meaning that you have to ma=
ke sure that you send each packet of the burst to the radio in time, such t=
hat the radio always has enough data buffered, and no underflows occur beca=
use there are no samples to send in a specific radio clock cycle.<br><br>Th=
e timestamp itself specifies the time of the first sample within the packet=
 payload. This timestamp signifies, when this first sample was received or =
when it is supposed to be transmitted, depending on what type of packet you=
 have and the data flow direction, e.g. RX or TX.<br><br>Blocks like the ra=
dio block (usually) process only one sample per clock cycle per channel int=
ernally.<br>Since the timestamps are derived from the radio clock this mean=
s that the timestamp delta between two subsequent samples is 1. <br>This me=
ans that for a TX packet with timestamp ts_0, the first sample of the packe=
t will be transmitted at radio clock time ts_0, the second sample will be t=
ransmitted at time ts_0 +1, the third at time ts_0 + 2, and so on.<br><br>W=
hat this means in practice, is that if you take an existing packet with a t=
imestamp and want to split it into two separate packet, both with a timesta=
mp, what you can usually do is this:</p><ul><li><p>The first packet can jus=
t reuse the timestamp of the original packet.</p></li><li><p>For the second=
 packet, you have to check how many samples are included in the payload of =
the first packet, and then add add that number on top of the timestamp of t=
he original packet. I had a look at the new version of the FFT rfnoc block =
recently and where it also calculated timestamps for each of the individual=
 samples based on the timestamp of the overarching packet/burst, so maybe y=
ou can take a look at that if you need an example of how this can be done i=
n practice <a href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga=
/usrp3/lib/rfnoc/blocks/rfnoc_block_fft/fft_depacketize.sv" title=3D"">ther=
e</a>. </p></li></ul><p>For your case, what might make this tricky, is that=
 you might be breaking the continuous sample assumption with your decimator=
, since the OTA timestamp delta between subsequent samples within the paylo=
ad of the packet is no longer 1. This is probably fine, as long as you do n=
ot forward this decimated packet to another rfnoc block that is timestamp s=
ensitive, e.g. a DUC/DDC, radio, etc=E2=80=A6. .<br>If you are transmitting=
 the samples to the host, then you as long as you are aware in your applica=
tion that the packet contains samples that correspond to a sample rate that=
 differs from the radio sample rate, you should also most likely be fine.<b=
r><br></p><p>Disclaimer: I am not 100% sure that all of the assumptions I m=
ade are correct, but I have recently done some work on a custom rfnoc_block=
, where I had to deal with manual timestamping, so hopefully these insights=
 are helpful for you.</p><p><br></p><p>Regards,<br>Niels</p><p><br></p><div=
 contenteditable=3D"false" class=3D""><hr></div><p><br>Kevin Williams wrote=
:</p><blockquote><p>Hi,</p><p>Must the timestamp of every packet in an rfno=
c network must remain locked to
the time source the radio used when it timestamped the first adc sample of
that packet?</p><p>In other words, if I have a decimator must I figure out =
the time offset of
the first sample of my decimated packets to within 1 sample of the original
data?</p><p>This seems complex because the radio is delivering packets of s=
ome size
related to an rfnoc mtu and most likely not related to my decimator ratio -
so the timestamp of the first sample of my packets changes as it "beats"
with the input packets?</p><p>Thanks, Kevin</p></blockquote><p><br></p>

--b1_O5bJRZAGk9bCRwwNZvPPlKe3S4orgtvBc9I0BdfuE--

--===============0168111871756003349==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0168111871756003349==--
