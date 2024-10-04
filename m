Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C859498FB95
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2024 02:36:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B2862385956
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 20:35:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728002159; bh=OG/uwvCEYVAzcj3O68frcp+ElzF5awhLcftWXQkzW9Y=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Wm0et93SUq0lzUSw+w1Ny/YYbLv3g5ByF9XlI6czIiH+lYVxKR+PTjpQG+mFckYL/
	 Q1d/PM7vr63I5XMZFB/AgSFbNJwHiw8PzAGps1t9mGaIFy9hfyaiGcSOidnNtyTar+
	 mjHaHlRJieoPEq/X2eUjy+xdzoHeqxv9M5NVD/UXLqBP+3idQpUcyXl+e7r0NwDk9S
	 xLZlAHW30Gv5besMzTU8l8RB0x34JKJ35KcF/TStD1Dxapah9NwnMbGOaBggXCLkAa
	 1JsgNafF9EcN+3/k2UroReSJU89wLGo1KCIIeVSs4h4/0v2uqf/e18tBpxRFpp9ttW
	 bh5Q1qC2y4x+A==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id EC1C038592B
	for <usrp-users@lists.ettus.com>; Thu,  3 Oct 2024 20:35:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="g0lzzmUq";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5c88b5c375fso1745257a12.3
        for <usrp-users@lists.ettus.com>; Thu, 03 Oct 2024 17:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1728002102; x=1728606902; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oMuIGjz9H+YMsF6h99wcU3yjrk20h+2dPylZneUjEyc=;
        b=g0lzzmUqHmweYujNOAwtBz86fVWVATmD03ciVstTs3zEMajQTzYYToQuwUsfugbB/E
         eqoKtaVSNhEjHiP6W3KzPIpSE4qcqfmgQnsX8yutoT7OPcsqKyEmQm6rTdE/qZ9UkWKW
         +SEp0/k1BmdSlQ2Iv/oKHYrxWrANM2TY7r0L8ZjezoBVP52CS7Ztr7cYWp4olPW9xMDE
         bNv7gMVXhNrzJwa8eT9VCV+ceDf+PYZ0Ih3ez4M3sR+cXvA9bleW8nrKpsnPVoZRrEyY
         d9azYViOBpaQGB9c7XmD89zpFQlmeHNZ6yWCacZqAom53XcBwnuXSUc6sh7oRt8hiljn
         fBmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728002102; x=1728606902;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oMuIGjz9H+YMsF6h99wcU3yjrk20h+2dPylZneUjEyc=;
        b=BTpMWOc8VpzUP0o7XehTQOGCSgxsAqxEYe949NAee1nQQ05jUDj6reJup9NQBEEiwE
         Q3p0nlG2QXKHP1HD+AH/WNkPbktS6I0kPK9HUpPLzDKYEMG285FCYl/iNSykvI4/GiJ6
         gjQjFkdW6xcAQRWE+VkYkyDDElJYuUwwjdE0QpZUtTMkmpd2Y5oRQ7fzxkJoxshzytJ1
         wRki/2R4N7WbvfsLoQ+hWMZ77QOrcGi6ZXju6bAPt0AZix0jAk24yN5cNo+1AScMWahU
         OEn/Y4E0T7givrfCDcz6/iUXhhNrU/8PVVzp/ATcUmmi7GyivPxtbLvC3dnzDQ7WMJG6
         Ljuw==
X-Gm-Message-State: AOJu0YwUWtAAfvAI/AnGt45zk2V6STgDLrTN5NgGPtBlpX3rbgH16LVm
	eUhdAIx2OEsk1IOgD3DzCe0C8n8UGw/IVss2SsilNc3HHRXEQk681/mHMGQY/W73dp46uzDl0kR
	BWgC5yyN+SnS0bUNJ2MDKPEiMIJHR0HMPTYh10sZF
X-Google-Smtp-Source: AGHT+IGtujGwKO6eTKW99OTU3wsdP9+t3+LAjInrlDzWaQakAGnzvsQBaup826HfdNXm6j3X/ftpzUCz/+2LCHjEcWI=
X-Received: by 2002:a17:907:e692:b0:a86:96d1:d1f with SMTP id
 a640c23a62f3a-a991bd1a91amr85099666b.26.1728002101670; Thu, 03 Oct 2024
 17:35:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAEL-RA3vkebzVmq8+d6YuQa4z4u1eGo-osZ9gYeby8vq3Q0+hw@mail.gmail.com>
In-Reply-To: <CAEL-RA3vkebzVmq8+d6YuQa4z4u1eGo-osZ9gYeby8vq3Q0+hw@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 3 Oct 2024 19:34:45 -0500
Message-ID: <CAFche=hiPwN50gH=G1NLQ9psiL9BV=1sCe7-HXkaeinVT_=9Yw@mail.gmail.com>
To: hui cj <cjh416593819@gmail.com>
Message-ID-Hash: AK6VLZENZHZRDJQLGDL62VF4E7O3R4IZ
X-Message-ID-Hash: AK6VLZENZHZRDJQLGDL62VF4E7O3R4IZ
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Replay module (DRAM to PC)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AK6VLZENZHZRDJQLGDL62VF4E7O3R4IZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4086254552211559519=="

--===============4086254552211559519==
Content-Type: multipart/alternative; boundary="000000000000710cb106239bd730"

--000000000000710cb106239bd730
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Q1) Yes, only one channel is required. Each channel has both send and
receive capabilities and you can use both simultaneously. However, note
that sending and receiving between host and replay block, and between
replay block and radio, simultaneously, would require two channels. For
example, one channel for TX/RX between host and replay block, and another
channel for TX/RX between replay block and radio.

Q2) Notice that you have the same block ports being used in both (1) and
(2), so you can't do both graphs at the same time. You'll need to switch
between graphs or use additional ports on the Replay block if you want to
connect the replay block to the host and to the radio at the same time
while being able to transfer in both directions. But the routes you gave
look valid.

Q3) Yes. You can use timed commands for both Rx and Tx.

Here's an example for RX (record from radio to replay block, then transfer
to host):
https://github.com/EttusResearch/uhd/blob/master/host/examples/python/repla=
y_capture.py

Here's an example for TX (transfer from host, then playback to radio):
https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc_replay=
_samples_from_file.cpp

They both use timespecs to indicate the time to start receiving or
transmitting at the radio. The basic idea is that you tell it some known
time in the future to begin.

Wade

On Thu, Oct 3, 2024 at 12:29=E2=80=AFPM hui cj <cjh416593819@gmail.com> wro=
te:

> Hello all,
>
> I have some confusion regarding the RFNoC Replay module.
>
> Due to the limited transmission rate between my computer and the X310, I
> cannot transmit and receive waveforms in real-time. Therefore, I want to
> use the Replay module to transmit the waveform stored in DRAM and record
> the received signal into DRAM.
>
> Based on the following links:
>
>
> https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_can_the_DRAM_b=
e_used_for.3F
>
>
> https://kb.ettus.com/Using_the_RFNoC_Replay_Block_in_UHD_4
>
> I believe this functionality can be achieved.
>
> The provided example has already implemented the Record and Play
> functions, but I am still confused about how to store the waveform in DRA=
M
> and then transfer it to the computer.
>
> *Q1:*
>
> Is only one channel of the Replay module needed to achieve this
> functionality?
>
> *Q2:*
>
> (1) The example constructs the following graph to store the transmitted
> data in DRAM:
>
>    - TxStreamer#0:0 --> 0/Replay#0:0
>    - 0/Replay#0:0 --> 0/DUC#0:0
>    - 0/DUC#0:0 =3D=3D> 0/Radio#0:0
>    - 0/Radio#0:0 =3D=3D> 0/DDC#0:0
>    - 0/DDC#0:0 --> RxStreamer#0:0
>
> (2) To store the received data into DRAM at the same time, should I
> construct the following graph as well?
>
>    - 0/Replay#0:0 --> 0/DUC#0:0
>    - 0/DUC#0:0 =3D=3D> 0/Radio#0:0
>    - 0/Radio#0:0 =3D=3D> 0/DDC#0:0
>    - 0/DDC#0:0 --> 0/Replay#0:0
>
> (3) To read the data from DRAM and transfer it to the computer:
>
>    - 0/Replay#0:0 --> RxStreamer#0:0
>
> *Q3:*
>
> I want to start both the Record and Play functions of the Replay module a=
t
> the same time. Is this possible?
>
> Is there any example code available that shows how to transfer DRAM data
> to the computer?
>
> Thank you!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000710cb106239bd730
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Q1) Yes, only one channel is required. Each channel h=
as both send and receive capabilities and you can use both simultaneously. =
However, note that sending and receiving between host and replay block, and=
 between replay block and radio, simultaneously, would require two channels=
. For example, one channel for TX/RX between host and replay block, and ano=
ther channel for TX/RX between replay block and radio.<br></div><div><br></=
div><div>Q2) Notice that you have the same block ports being used in both (=
1) and (2), so you can&#39;t do both graphs at the same time. You&#39;ll ne=
ed to switch between graphs or use additional ports on the Replay block if =
you want to connect the replay block to the host and to the radio at the sa=
me time while being able to transfer in both directions. But the routes you=
 gave look valid.<br></div><div><br></div><div>Q3) Yes. You can use timed c=
ommands for both Rx and Tx.<br></div><div><br></div><div>Here&#39;s an exam=
ple for RX (record from radio to replay block, then transfer to host):<br><=
/div><div><a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/=
examples/python/replay_capture.py">https://github.com/EttusResearch/uhd/blo=
b/master/host/examples/python/replay_capture.py</a></div><div><br></div><di=
v>Here&#39;s an example for TX (transfer from host, then playback to radio)=
:</div><div><a href=3D"https://github.com/EttusResearch/uhd/blob/master/hos=
t/examples/rfnoc_replay_samples_from_file.cpp">https://github.com/EttusRese=
arch/uhd/blob/master/host/examples/rfnoc_replay_samples_from_file.cpp</a></=
div><div><br></div><div>They both use timespecs to indicate the time to sta=
rt receiving or transmitting at the radio. The basic idea is that you tell =
it some known time in the future to begin.<br></div><div><br></div><div>Wad=
e<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, Oct 3, 2024 at 12:29=E2=80=AFPM hui cj &lt;<a href=3D"ma=
ilto:cjh416593819@gmail.com">cjh416593819@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><p>Hell=
o all,</p><p>I have some confusion regarding the RFNoC Replay module.</p><p=
>Due to the limited transmission rate between my computer and the X310, I c=
annot transmit and receive waveforms in real-time. Therefore, I want to use=
 the Replay module to transmit the waveform stored in DRAM and record the r=
eceived signal into DRAM.</p><p>Based on the following links:</p><p><a href=
=3D"https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_can_the_DRAM=
_be_used_for.3F" target=3D"_blank">https://kb.ettus.com/RFNoC_Frequently_As=
ked_Questions#What_can_the_DRAM_be_used_for.3F</a>=C2=A0=C2=A0</p><p><a hre=
f=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_Block_in_UHD_4" target=3D"=
_blank">https://kb.ettus.com/Using_the_RFNoC_Replay_Block_in_UHD_4</a></p><=
p>I believe this functionality can be achieved.</p><p>The provided example =
has already implemented the Record and Play functions, but I am still confu=
sed about how to store the waveform in DRAM and then transfer it to the com=
puter.</p><p><strong>Q1:</strong>=C2=A0</p><p>Is only one channel of the Re=
play module needed to achieve this functionality?</p><p><strong>Q2:</strong=
>=C2=A0</p><p>(1) The example constructs the following graph to store the t=
ransmitted data in DRAM:</p><ul><li>TxStreamer#0:0 --&gt; 0/Replay#0:0</li>=
<li>0/Replay#0:0 --&gt; 0/DUC#0:0</li><li>0/DUC#0:0 =3D=3D&gt; 0/Radio#0:0<=
/li><li>0/Radio#0:0 =3D=3D&gt; 0/DDC#0:0</li><li>0/DDC#0:0 --&gt; RxStreame=
r#0:0</li></ul><p>(2) To store the received data into DRAM at the same time=
, should I construct the following graph as well?</p><ul><li>0/Replay#0:0 -=
-&gt; 0/DUC#0:0</li><li>0/DUC#0:0 =3D=3D&gt; 0/Radio#0:0</li><li>0/Radio#0:=
0 =3D=3D&gt; 0/DDC#0:0</li><li>0/DDC#0:0 --&gt; 0/Replay#0:0</li></ul><p>(3=
) To read the data from DRAM and transfer it to the computer:</p><ul><li>0/=
Replay#0:0 --&gt; RxStreamer#0:0</li></ul><p><strong>Q3:</strong>=C2=A0</p>=
<p>I want to start both the Record and Play functions of the Replay module =
at the same time. Is this possible?</p><p>Is there any example code availab=
le that shows how to transfer DRAM data to the computer?</p><p>Thank you!</=
p></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000710cb106239bd730--

--===============4086254552211559519==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4086254552211559519==--
