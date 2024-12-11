Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3579ECE0A
	for <lists+usrp-users@lfdr.de>; Wed, 11 Dec 2024 15:08:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2C526386113
	for <lists+usrp-users@lfdr.de>; Wed, 11 Dec 2024 09:08:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733926109; bh=J7oLKCRRrhxRj3xvvBL3Mt2L2KD/6j7E4Jw0i6YKE6Y=;
	h=From:To:References:In-Reply-To:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=dwf1nipOs/XVYjCOTboEETvPXJStIJ3kc0wgLhr73KnSZ+aNbIxoeWIsHOxYjuz36
	 2E0HUwjvaES5z8OUp7E35hXGkY2IalI4CBjDgROyfJYo4XFkcqFxmmjEDtnGw+VQXV
	 7u8i51mERZnJa8aWyh0RkMRx6jME2J1LKDFox38JQ7EK71bG4Xr+IDCdhTcB2nNGxW
	 5OoY21uiaIPckEYVDMV9Fca4M7aqvnmE/fwg5rinuQYMTnpxKyhfPi4XOYvLmB52qo
	 8MJMw97FZxdZrqVnQ9oV2cllNzLb8Bqyo4NUZ9spKDzGFOux4wS2UF5nv0+79QXoxN
	 5/zjyoBL7JTdw==
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 5E8CF385FCE
	for <usrp-users@lists.ettus.com>; Wed, 11 Dec 2024 09:07:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jaqjfN1a";
	dkim-atps=neutral
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-801986033f9so889598a12.1
        for <usrp-users@lists.ettus.com>; Wed, 11 Dec 2024 06:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733926072; x=1734530872; darn=lists.ettus.com;
        h=disposition-notification-to:content-language:thread-index
         :mime-version:message-id:date:subject:in-reply-to:references:to:from
         :return-receipt-to:from:to:cc:subject:date:message-id:reply-to;
        bh=EQNfpHKP2vjvJezXW81acZpWPVXpbbb+6Npk2dRFd1o=;
        b=jaqjfN1asCspD+IXwvHcuiebSVTiyO048rVkkCArfAXj8pxgS5bIdlBEZD11wIm6dP
         hdphaneFBNANdfSlHGViMzHMwz6AeyizTIQYmhLL98i8bSw9Yuz5/X0yfxYJCFs7gGUx
         ZDtD1dTchdS0AApxg6QKuAfptp2FEj1AxZ/n6aKEaiMcW1DuM2Uaxt69xAayg0jfK8jC
         RjVEgZfOfAVbbavndreshvognr2Ek/BaGPYVW5jHYsPiHB2m2CDMSCcqrhY1bscNJlcg
         Hiwmgi4WOZyj+UbQCTtJ17Vnanrt/8xVSqhb5M4/OS7wx+V6KaAUkgCLQUCdUxx9s2XA
         kilg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733926072; x=1734530872;
        h=disposition-notification-to:content-language:thread-index
         :mime-version:message-id:date:subject:in-reply-to:references:to:from
         :return-receipt-to:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EQNfpHKP2vjvJezXW81acZpWPVXpbbb+6Npk2dRFd1o=;
        b=uWvGcHEAqQm0x/1C2LbwtvwB4ilK4M0qV2IB1AeSQ97V5cjXeMm87+PThBeslOsSSE
         tmgj9uos7OqqH7VF4mPSx2rmwuGALfwjGrSwEa/GsIRbq+83XET1ih8mIoACocQw+jx7
         irP2KlGmlvVAT99gMzKCLvAj/O76aK4bU6H1Cq79gFMm5MNfoavzYCSPMW/ZUBKDX9Vf
         dmr8SDbzEiFcNZfdn8BJhZnTmY39YVasdyKVEJ+gxv4mlZH0GgkYM4a0U4iVwCRk4/qi
         FTndKr5ziQ6yMGl/p/JSU0rRgCjN0zMdXuweXH/JyFVdgs5fwHGJtbwtGd8OJNx8YY2e
         cGdw==
X-Forwarded-Encrypted: i=1; AJvYcCVAe1p7YV+7WCRweSKy40DuFNu3FEjrNXasekWoTbCz9hAKhvrG7vP0rZr5hSm5QadTgWS5T4wlbAnA@lists.ettus.com
X-Gm-Message-State: AOJu0YyuFgbAikYakggKoldnPvuGqIxuXIoRJ2SMrqggq9EGg+mjcexB
	TtwDDR49tnt0KwHjLe0wtp0MV4vD1jFiLyGJfpFy8jt9iwIhfRLSHbD98g==
X-Gm-Gg: ASbGncsJJ0ZocVnfLmnuIAr4eVL26rFJZ0GfOSEfSy497QLYMLNT6EEvTNg7BMmWaJT
	RtLJr22aw3m8fr/IuNYdzT0Vl0baz3oP7FC8D89JPv/Uclcm+gnbJC5EA/UIsPj1fCuQJXRk5sp
	g1YmT7+3pWhjnXMzV3KGqfxtmV4KxcuvU9EK3WUxlFhnu9H5TwotrBQxl7Isb3VPpgoac56c8lt
	YG0k+5Xeus5SL3J6Q4dJ2uU88IN4vhOw6A7zyBVt+nFd5UyosZMiA48a1J9+HPbzDft
X-Google-Smtp-Source: AGHT+IEhuDTpKJJ1CL3L2WYWVWkv81/iSM1boHEJCag7XIbiWTwTXtXpoegWTTLkpoZRap6i4rtV9w==
X-Received: by 2002:a17:90b:280a:b0:2ee:599e:f411 with SMTP id 98e67ed59e1d1-2f139326350mr38342a91.34.1733926071852;
        Wed, 11 Dec 2024 06:07:51 -0800 (PST)
Received: from DESKTOPF6HH3I0 ([2804:14d:5c5c:5cad:dc1e:5f87:85da:d3ed])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2ef7dd1f583sm9225296a91.14.2024.12.11.06.07.49
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Dec 2024 06:07:51 -0800 (PST)
From: <pav.vieira@gmail.com>
To: "'Q W'" <qanwang83@yahoo.com.au>,
	"'Usrp-users Mailing-list'" <usrp-users@lists.ettus.com>
References: <34378001.1123526.1733918318303.ref@mail.yahoo.com> <34378001.1123526.1733918318303@mail.yahoo.com>
In-Reply-To: <34378001.1123526.1733918318303@mail.yahoo.com>
Date: Wed, 11 Dec 2024 11:07:47 -0300
Message-ID: <004701db4bd6$0f909620$2eb1c260$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQErjS9+DAjvYh0KeU2KDmKXiBTVDgG2pbNLtDLb3PA=
Content-Language: pt-br
Message-ID-Hash: PTHII7I7RD5RYQX66KIU6IDLFAMONKGH
X-Message-ID-Hash: PTHII7I7RD5RYQX66KIU6IDLFAMONKGH
X-MailFrom: pav.vieira@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RES: UHD Python API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PTHII7I7RD5RYQX66KIU6IDLFAMONKGH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2941883481808963431=="

This is a multipart message in MIME format.

--===============2941883481808963431==
Content-Type: multipart/related;
	boundary="----=_NextPart_000_0048_01DB4BBC.EA4496A0"
Content-Language: pt-br

This is a multipart message in MIME format.

------=_NextPart_000_0048_01DB4BBC.EA4496A0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0049_01DB4BBC.EA4496A0"


------=_NextPart_001_0049_01DB4BBC.EA4496A0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Tom,

I=E2=80=99m also starting to use the X310 with Python, and I=E2=80=99d =
like to share some ideas.

I=E2=80=99ve noticed that even when using threads, some form of =
synchronization is necessary. This happens because threads are not =
executed simultaneously, which can cause a time difference between =
transmission (Tx) and reception (Rx).

It=E2=80=99s important to ensure that the termination of one thread =
waits for the others to finish. I recommend looking into thread.join() =
for this purpose. Here=E2=80=99s an introductory example that might be =
helpful:  <https://www.youtube.com/watch?v=3DIEEhzQoKtQU&t=3D900s> Video =
on threads. This is particularly relevant because when a thread is =
terminated, the processing returns to the main thread (i.e., the main =
program), and other ongoing threads might not be properly =
closed=E2=80=94this issue is especially common on Windows systems.

In addition to threads, you might also want to explore multiprocessing. =
This approach can be more efficient depending on your use case. =
Here=E2=80=99s a practical example (in Portuguese):  =
<https://www.youtube.com/watch?v=3Dg3PTQ87UvrE&t=3D103s> Video on =
multiprocessing. There are also plenty of resources available in English =
that cover this topic.

If you make any progress, please share it with us. It would be great to =
exchange experiences!

Best regards,



=20

De: Q W via USRP-users <usrp-users@lists.ettus.com>=20
Enviada em: quarta-feira, 11 de dezembro de 2024 08:59
Para: Usrp-users Mailing-list <usrp-users@lists.ettus.com>
Assunto: [USRP-users] UHD Python API

=20

Hi there,

=20

I just started using UHD Python API to implement a simple =
transmission-reception experiment on an Ettus X310. I have a UBX 160 =
daughterboard installed on slot B, with its TX (TX/RX port) connected to =
RX (RX2 port) directly using a SMA cable and a 30dB attenuator. I plan =
to transmit a sequence of waveforms from TX/RX port and to see the =
waveforms received at the RX2 port. Ideally the two waveforms should be =
highly similar with some time shift in between, but the received =
waveforms turned out to be not quite right (see the diagram below, the =
upper diagram shows the real part of the transmitted waveform and the =
lower, the real part of the received.).



Some of the parameters are defined as following:

duration =3D 10 # second, the time length of the transmitter sending the =
waveforms

centre_freq=3D1e8

sample_rate=3D200000

num_samples=3D200000 # number of samples to be collected by the =
receiving side.

gain_tx=3D0 #dB

gain_rx=3D20

=20

USRP is defined as:

usrp =3D uhd.usrp.MultiUSRP()

usrp.set_tx_subdev_spec(uhd.usrp.SubdevSpec("B:0"))

usrp.set_tx_antenna("TX/RX")

=20

usrp.set_rx_subdev_spec(uhd.usrp.SubdevSpec("B:0"))

usrp.set_rx_antenna("RX2")

usrp.set_rx_bandwidth(sample_rate, 0)

=20

As the transmission and the reception happen at the same time, they are =
put in two separate threads, as below:

threads =3D []

rx_thread =3D threading.Thread(target=3Dreceive_data, args=3D(usrp, =
num_samples, centre_freq_rx, sample_rate, gain_rx))

threads.append(rx_thread)

rx_thread.start()

tx_thread =3D threading.Thread(target=3Dusrp.send_waveform, =
args=3D(tx_signal, duration, centre_freq_tx, sample_rate, [0], gain_tx))

threads.append(tx_thread)

tx_thread.start()

=20

Here the function, receive_data() in the first thread, is a user-defined =
(by me) function, receiving samples using the uhd provided method, =
usrp.recv_num_samps() and saving the samples to a .txt file. A little =
more on the data format saved in the file, I used np.savetxt() function =
to save the samples (a numpy array) to a text file. As the numpy array =
has a data type of np.complex64, the real and imaginary of the samples =
are saved in the same file in the format of np.float32. I can confirm =
that 200000 complex samples were collected in the file saved, which =
verifies (partially at least) that data format didn't go wrong.  =20

=20

I have been working on this script for a whole day, but couldn't fix it. =
I suspect I didn't configure the usrp variable correctly. Any =
suggestions would be appreciated.

=20

Kind regards,

Tom

=20

=20

=20

=20

=20

=20

=20

=20

=20

=20

As the transmission and reception happen simultaneously, the Python =
scritp=20

=20


------=_NextPart_001_0049_01DB4BBC.EA4496A0
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered medium)"><!--[if =
!mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EstiloDeEmail18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DPT-BR =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Hi Tom,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>I=E2=80=99m also starting to use =
the X310 with Python, and I=E2=80=99d like to share some =
ideas.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>I=E2=80=99ve noticed that even when =
using threads, some form of synchronization is necessary. This happens =
because threads are not executed simultaneously, which can cause a time =
difference between transmission (Tx) and reception =
(Rx).<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>It=E2=80=99s important to ensure =
that the termination of one thread waits for the others to finish. I =
recommend looking into thread.join() for this purpose. Here=E2=80=99s an =
introductory example that might be helpful: </span><span =
style=3D'mso-fareast-language:EN-US'><a =
href=3D"https://www.youtube.com/watch?v=3DIEEhzQoKtQU&amp;t=3D900s"><span=
 lang=3DEN-US>Video on threads</span></a><span lang=3DEN-US>. This is =
particularly relevant because when a thread is terminated, the =
processing returns to the main thread (i.e., the main program), and =
other ongoing threads might not be properly closed=E2=80=94this issue is =
especially common on Windows systems.<o:p></o:p></span></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>In addition to threads, you might =
also want to explore <b>multiprocessing</b>. This approach can be more =
efficient depending on your use case. Here=E2=80=99s a practical example =
(in Portuguese): </span><span style=3D'mso-fareast-language:EN-US'><a =
href=3D"https://www.youtube.com/watch?v=3Dg3PTQ87UvrE&amp;t=3D103s"><span=
 lang=3DEN-US>Video on multiprocessing</span></a><span lang=3DEN-US>. =
There are also plenty of resources available in English that cover this =
topic.<o:p></o:p></span></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>If you make any =
progress, please share it with us. It would be great to exchange =
experiences!<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>Best =
regards,<br><br><o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><div><di=
v style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm'><p class=3DMsoNormal><b>De:</b> Q W via USRP-users =
&lt;usrp-users@lists.ettus.com&gt; <br><b>Enviada em:</b> quarta-feira, =
11 de dezembro de 2024 08:59<br><b>Para:</b> Usrp-users Mailing-list =
&lt;usrp-users@lists.ettus.com&gt;<br><b>Assunto:</b> [USRP-users] UHD =
Python API<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p =
class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>Hi =
there,<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'><o:p>&nbsp;=
</o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>I just =
started using UHD Python API to implement a simple =
transmission-reception experiment on an Ettus X310. I have a UBX 160 =
daughterboard installed on slot B, with its TX (TX/RX port) connected to =
RX (RX2 port) directly using a SMA cable and a 30dB attenuator. I plan =
to transmit a sequence of waveforms from TX/RX port and to see the =
waveforms received at the RX2 port. Ideally the two waveforms should be =
highly similar with some time shift in between, but the received =
waveforms turned out to be not quite right (see the diagram below, the =
upper diagram shows the real part of the transmitted waveform and the =
lower, the real part of the =
received.).<o:p></o:p></span></p></div><div><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'><img =
border=3D0 width=3D1353 height=3D546 =
style=3D'width:14.0937in;height:5.6875in' id=3D"Imagem_x0020_1" =
src=3D"cid:image001.png@01DB4BBC.E8EC59A0" alt=3D"Inline =
image"></span><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'><o:p></o:p>=
</span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>Some of =
the parameters are defined as =
following:<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>duration =
=3D 10 # second, the time length of the transmitter sending the =
waveforms<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>centre_freq=
=3D1e8<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>sample_rate=
=3D200000<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>num_samples=
=3D200000 # number of samples to be collected by the receiving =
side.<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>gain_tx=3D0=
 #dB<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>gain_rx=3D2=
0<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'><o:p>&nbsp;=
</o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>USRP is =
defined as:<o:p></o:p></span></p></div><div><div><div><p =
class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>usrp =3D =
uhd.usrp.MultiUSRP()<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>usrp.set_tx=
_subdev_spec(uhd.usrp.SubdevSpec(&quot;B:0&quot;))<o:p></o:p></span></p><=
/div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>usrp.set_tx=
_antenna(&quot;TX/RX&quot;)<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'><o:p>&nbsp;=
</o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>usrp.set_rx=
_subdev_spec(uhd.usrp.SubdevSpec(&quot;B:0&quot;))<o:p></o:p></span></p><=
/div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>usrp.set_rx=
_antenna(&quot;RX2&quot;)<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>usrp.set_rx=
_bandwidth(sample_rate, 0)<o:p></o:p></span></p></div></div><div><p =
class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'><o:p>&nbsp;=
</o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>As the =
transmission and the reception happen at the same time, they are put in =
two separate threads, as =
below:<o:p></o:p></span></p></div><div><div><div><p =
class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>threads =
=3D []<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>rx_thread =
=3D threading.Thread(target=3Dreceive_data, args=3D(usrp, num_samples, =
centre_freq_rx, sample_rate, =
gain_rx))<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>threads.app=
end(rx_thread)<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>rx_thread.s=
tart()<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>tx_thread =
=3D threading.Thread(target=3Dusrp.send_waveform, args=3D(tx_signal, =
duration, centre_freq_tx, sample_rate, [0], =
gain_tx))<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>threads.app=
end(tx_thread)<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>tx_thread.s=
tart()<o:p></o:p></span></p></div></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'><o:p>&nbsp;=
</o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>Here the =
function, receive_data() in the first thread, is a user-defined (by me) =
function, receiving samples using the uhd provided method, =
usrp.recv_num_samps() and saving the samples to a .txt file. A little =
more on the data format saved in the file, I used np.savetxt() function =
to save the samples (a numpy array) to a text file. As the numpy array =
has a data type of np.complex64, the real and imaginary of the samples =
are saved in the same file in the format of np.float32. I can confirm =
that&nbsp;<span style=3D'color:black'>200000 complex samples were =
collected in the file saved, which verifies (partially at least) that =
data format didn't go wrong.&nbsp; =
&nbsp;</span><o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'><o:p>&nbsp;=
</o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>I have =
been working on this script for a whole day, but couldn't fix it. I =
suspect I didn't configure the usrp variable correctly. Any suggestions =
would be appreciated.<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'><o:p>&nbsp;=
</o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>Kind =
regards,<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>Tom<o:p></o=
:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'><o:p>&nbsp;=
</o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'><o:p>&nbsp;=
</o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'><o:p>&nbsp;=
</o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'><o:p>&nbsp;=
</o:p></span></p></div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'><o:p>&nbsp;=
</o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'><o:p>&nbsp;=
</o:p></span></p></div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'><o:p>&nbsp;=
</o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'><o:p>&nbsp;=
</o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'><o:p>&nbsp;=
</o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'><o:p>&nbsp;=
</o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>As the =
transmission and reception happen simultaneously, the Python =
scritp&nbsp;<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica",sans-serif'>&nbsp;<o:p>=
</o:p></span></p></div></div></div></body></html>
------=_NextPart_001_0049_01DB4BBC.EA4496A0--

------=_NextPart_000_0048_01DB4BBC.EA4496A0
Content-Type: image/png;
	name="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <image001.png@01DB4BBC.E8EC59A0>

iVBORw0KGgoAAAANSUhEUgAABUkAAAIiCAYAAAD1iEkuAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAP+lSURBVHhe7J0HnBXV+fcP7NLbAktvi4gK0quo
WBAUwZZEEzXGbv4x0RQTjSUI2Ft8k2gSo7ElsSTG2BVFEQu9dynSO8uyu7DU3eW9z+wMXO7OzHlO
u3Pm3ufrZ+TOvefOzp3TnvM7z3NOjcMJGEEQBEEQBEEQBEEQBEEQRJZS0/2XIAiCIAiCIAiCIAiC
IAgiKyGRlCAIgiAIgiAIgiAIgiCIrIZEUoIgCIIgCIIgCIIgCIIgshoSSQmCIAiCIAiCIAiCIAiC
yGpIJCUIgiAIgiAIgiAIgiAIIqshkZQgCIIgCIIgCIIgCIIgiKyGRFKCIAiCIAiCIAiCIAiCILIa
EkkJgiAIgiAIgiAIgiAIgshqSCQlCIIgCIIgCIIgCIIgCCKrIZGUIAiCIAiCIAiCIAiCIIishkRS
giAIgiAIgiAIgiAIgiCyGhJJCYIgCIIgCIIgCIIgCILIakgkJQiCIAiCIAiCIAiCIAgiqyGRlCAI
giAIgiAIgiAIgiCIrIZEUoIgCIIgCIIgCIIgCIIgshoSSQmCIAiCIAiCIAiCIAiCyGpIJCUIgiAI
giAIgiAIgiAIIqshkZQgCIIgCIIgCIIgCIIgiKyGRFKCIAiCIAiCIAiCIAiCILIaEkkJgiAIgiAI
giAIgiAIgshqSCQlCIIgCIIgCIIgCIIgCCKrIZGUIAiCIAiCIAiCIAiCIIishkRSgiAIgiAIgiAI
giAIgiCyGhJJCYIgCIIgCIIgCIIgCILIakgkJQiCIAiCIAiCIAiCIAgiqyGRlCAIgiAIgiAIgiAI
giCIrIZEUoIgCIIgCIIgCIIgCIIgshoSSQmCIAiCIAiCIAiCIAiCyGpIJCUIgiAIgiAIgiAIgiAI
IqshkZQgCIIgCIIgCIIgCIIgiKyGRFKCIAiCIAiCIAiCIAiCILIaEkkJgiAIgiAIgiAIgiAIgshq
SCQlCIIgCIIgCIIgCIIgCCKrIZGUIAiCIAiCIAiCIAiCIIishkRSgiAIgiAIgiAIgiAIgiCyGhJJ
CYIgCIIgCIIgCIIgCILIakgkJQiCIAiCIAiCIAiCIAgiqyGRlCAIgiAIgiAIgiAIgiCIrIZEUoIg
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
RK5CYII=

------=_NextPart_000_0048_01DB4BBC.EA4496A0--

--===============2941883481808963431==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2941883481808963431==--
