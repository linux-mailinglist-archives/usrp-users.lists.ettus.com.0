Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C363F52CB
	for <lists+usrp-users@lfdr.de>; Mon, 23 Aug 2021 23:22:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4FD91383BD7
	for <lists+usrp-users@lfdr.de>; Mon, 23 Aug 2021 17:22:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RjAC4f43";
	dkim-atps=neutral
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 9BC4B38392B
	for <usrp-users@lists.ettus.com>; Mon, 23 Aug 2021 17:21:20 -0400 (EDT)
Received: by mail-io1-f43.google.com with SMTP id n24so23657982ion.10
        for <usrp-users@lists.ettus.com>; Mon, 23 Aug 2021 14:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=NFpgKOjVAKK0s0uhcleYVGkq3dkDD8v25qYrAAeyEeI=;
        b=RjAC4f43C3drpSMvMN63/qEMzvpTuiOT/IRr/NhYri36gZt905Vu0bQdQMzgjz2Xgb
         qqe3GNocPs7kPqcs/1DCKzCDuPp0BPM0aQdWYZMtQ5VBi4/83nAC7uP0tUfxmUca9slb
         /7xJYBpeZ8I7mXhjguUa1VCHrFFd1o3f5Haa39irG+ujJdvaYCHkybK3nB83En1EE3le
         8nLrDjszDJsWnpLBgjlm95qJHgxxGv7ZI7cpgCN9wHMV5cSMFXr/MFAhlOHPiqaL/XrY
         lh0fs36So8co/kryOyzTK6tR3kzYlmImU5Gj6iltAzFSLnQLn+vFcQ1sb/bCBTEw42dL
         ZtYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=NFpgKOjVAKK0s0uhcleYVGkq3dkDD8v25qYrAAeyEeI=;
        b=DWFJFEDqoyJlYmMZwz1sXQDuEpnuefQHGzzLYj7Wfy4hZNn6vBrC86I7BCdzQe8cpO
         7haQ/MpEsCPNBlNGcxvjsWvJS4IZPTS7rf9DcKL8S87nRqujwbvCQ98fYC5JK4XuUVpk
         CnyUuM6sQ3KvYe8f3oEf71+qpspel+Wz8rgfDhSLparReZwOO9xKfQu5GBWnt5yVt3D8
         9IjAYJkQPSxmu1SDmym065z8QRvvgT/4bluMw/fjyp/7DzlPnJQBnD8kGYQxWeNMsTOt
         LtzgZYoaZjBsxPBJVTFm8KyUX11WIHNIKw12oF6a5mFtxEEJxESnyTuM6eQGx5vBQPEU
         UvZg==
X-Gm-Message-State: AOAM533IfKS85cixgjsDwXsfDpqdJXTopHunnD+wFffkG9IlhnwO6Lpk
	Rvylo5S1bCEvkeAhEhTJMGgFCIYQ0v71gDm6SDHtDM1R0bc=
X-Google-Smtp-Source: ABdhPJyQuddezRFNFtv9xBgUfRYFV58qtZ9eN7oKuaE4gkqJ7Yd4yCo+Fv2Xl4hq2Q5HE3UCGH1PGFBikOOLqL+yBN8=
X-Received: by 2002:a5d:9eda:: with SMTP id a26mr28537513ioe.166.1629753679420;
 Mon, 23 Aug 2021 14:21:19 -0700 (PDT)
MIME-Version: 1.0
From: Ivan Zahartchuk <adray0001@gmail.com>
Date: Tue, 24 Aug 2021 00:21:08 +0300
Message-ID: <CAPRRyxvOhiUu5uYoAStfJUHgkuAtt1Oc6j6qv6tXRFMOjRUm6w@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: YOHULZFR26PS2OJKP3SGI3STA65V7QXZ
X-Message-ID-Hash: YOHULZFR26PS2OJKP3SGI3STA65V7QXZ
X-MailFrom: adray0001@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Creating a graph for UHD4 with python
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YOHULZFR26PS2OJKP3SGI3STA65V7QXZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2286114852748150733=="

--===============2286114852748150733==
Content-Type: multipart/alternative; boundary="000000000000221f6405ca409914"

--000000000000221f6405ca409914
Content-Type: text/plain; charset="UTF-8"

Hello. I want to create a graph with two fft blocks for UHD4 and
manage them using python.
 I am using USRP E310. My FPGA connections look like this:
0/Radio#0:0==>0/FFT#0:0
0/FFT#0:0==>0/SEP#0:0
0/Radio#0:1==>0/FFT#1:0
0/FFT#1:0==>0/SEP#1:0
I want to receive data from two blocks at the same time.
But as a result, I get 0 samples. Here is my code:
```
import numpy as np
import uhd
graph = uhd.rfnoc.RfnocGraph('type=e3xx')
for i in graph.enumerate_static_connections():
    print(i.to_string())
fft_lenght = 1024
radio_noc_block = graph.get_block('0/Radio#0')
radio_block = uhd.rfnoc.RadioControl(radio_noc_block)

radio_block.set_rx_frequency(856e6,0)
radio_block.set_rx_gain(65,0)
radio_block.set_rx_antenna('RX2',0)
radio_block.set_rate(100e3)
fft_amplitude = uhd.libpyuhd.rfnoc.fft_magnitude.COMPLEX
fft_direction = uhd.libpyuhd.rfnoc.fft_direction.FORWARD
fft_shift = uhd.libpyuhd.rfnoc.fft_shift.REVERSE
fft = uhd.rfnoc.FftBlockControl(graph.get_block('0/FFT#0'))
fft.set_length(fft_lenght)
fft.set_magnitude(fft_amplitude)
fft.set_direction(fft_direction)
fft.set_shift_config(fft_shift)
fft1 = uhd.rfnoc.FftBlockControl(graph.get_block('0/FFT#1'))
fft1.set_length(fft_lenght)
fft1.set_magnitude(fft_amplitude)
fft1.set_direction(fft_direction)
fft1.set_shift_config(fft_shift)
graph.connect('0/Radio#0',0,'0/FFT#0',0,False)
graph.connect('0/Radio#0',1,'0/FFT#1',0,False)
sa = uhd.usrp.StreamArgs('fc32','sc16')
sa.args = 'spp='+str(fft_lenght)

rx_streamer = graph.create_rx_streamer(2,sa)
graph.connect('0/FFT#1',0,rx_streamer,1)
graph.connect('0/FFT#0',0,rx_streamer,0)
num_samps = int(fft.get_length()*5)
radio_zeros = np.zeros((2,num_samps),dtype=np.complex64)

graph.commit()
print(num_samps)
stream_cmd = uhd.types.StreamCMD(uhd.types.StreamMode.num_done)
stream_cmd.num_samps =num_samps
stream_cmd.stream_now = False
stream_cmd.time_spec =
graph.get_mb_controller(0).get_timekeeper(0).get_time_now()+0.1
rx_streamer.issue_stream_cmd(stream_cmd)
rx_metadata = uhd.types.RXMetadata()
num_samps = rx_streamer.recv(radio_zeros,rx_metadata,0.1)
print(num_samps)
print(rx_metadata)
print(radio_zeros)
```
And I am getting the following error:
Has timespec: No	Time of first sample: 0
Fragmented: No  Fragmentation offset: 0
Start of burst: No	End of burst: No
Error Code: ERROR_CODE_TIMEOUT	Out of sequence: No
Please tell me what the problem is,
since I did not find documentation and examples other than
https://www.youtube.com/watch?v=fbcxm7f-Tj0&t=290s

Thank you in advance

--000000000000221f6405ca409914
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre class=3D"gmail-tw-data-text gmail-tw-text-large gmail=
-XcVN5d gmail-tw-ta" id=3D"gmail-tw-target-text" style=3D"text-align:left" =
dir=3D"ltr"><span style=3D"font-family:georgia,serif"><span class=3D"gmail-=
Y2IQFc" lang=3D"en">Hello. I want to create a graph with two fft blocks for=
 UHD4 and manage them using python.<br> I am using USRP E310. My FPGA conne=
ctions look like this:<br>0/Radio#0:0=3D=3D&gt;0/FFT#0:0<br>0/FFT#0:0=3D=3D=
&gt;0/SEP#0:0<br>0/Radio#0:1=3D=3D&gt;0/FFT#1:0<br>0/FFT#1:0=3D=3D&gt;0/SEP=
#1:0<br><span class=3D"gmail-Y2IQFc" lang=3D"en">I want to receive data fro=
m two blocks at the same time. <br>But as a result, I get 0 samples. Here i=
s my code:<br>```<br><span style=3D"color:rgb(204,120,50)">import </span>nu=
mpy <span style=3D"color:rgb(204,120,50)">as </span>np<br><span style=3D"co=
lor:rgb(204,120,50)">import </span>uhd<br>graph =3D uhd.rfnoc.RfnocGraph(<s=
pan style=3D"color:rgb(106,135,89)">&#39;type=3De3xx&#39;</span>)<br><span =
style=3D"color:rgb(204,120,50)">for </span>i <span style=3D"color:rgb(204,1=
20,50)">in </span>graph.enumerate_static_connections():<br>    <span style=
=3D"color:rgb(136,136,198)">print</span>(i.to_string())<br>fft_lenght =3D <=
span style=3D"color:rgb(104,151,187)">1024<br></span>radio_noc_block =3D gr=
aph.get_block(<span style=3D"color:rgb(106,135,89)">&#39;0/Radio#0&#39;</sp=
an>)<br>radio_block =3D uhd.rfnoc.RadioControl(radio_noc_block)<br><br>radi=
o_block.set_rx_frequency(<span style=3D"color:rgb(104,151,187)">856e6</span=
><span style=3D"color:rgb(204,120,50)">,</span><span style=3D"color:rgb(104=
,151,187)">0</span>)<br>radio_block.set_rx_gain(<span style=3D"color:rgb(10=
4,151,187)">65</span><span style=3D"color:rgb(204,120,50)">,</span><span st=
yle=3D"color:rgb(104,151,187)">0</span>)<br>radio_block.set_rx_antenna(<spa=
n style=3D"color:rgb(106,135,89)">&#39;RX2&#39;</span><span style=3D"color:=
rgb(204,120,50)">,</span><span style=3D"color:rgb(104,151,187)">0</span>)<b=
r>radio_block.set_rate(<span style=3D"color:rgb(104,151,187)">100e3</span>)=
<br>fft_amplitude =3D uhd.libpyuhd.rfnoc.fft_magnitude.COMPLEX<br>fft_direc=
tion =3D uhd.libpyuhd.rfnoc.fft_direction.FORWARD<br>fft_shift =3D uhd.libp=
yuhd.rfnoc.fft_shift.REVERSE<br>fft =3D uhd.rfnoc.FftBlockControl(graph.get=
_block(<span style=3D"color:rgb(106,135,89)">&#39;0/FFT#0&#39;</span>))<br>=
fft.set_length(fft_lenght)<br>fft.set_magnitude(fft_amplitude)<br>fft.set_d=
irection(fft_direction)<br>fft.set_shift_config(fft_shift)<br>fft1 =3D uhd.=
rfnoc.FftBlockControl(graph.get_block(<span style=3D"color:rgb(106,135,89)"=
>&#39;0/FFT#1&#39;</span>))<br>fft1.set_length(fft_lenght)<br>fft1.set_magn=
itude(fft_amplitude)<br>fft1.set_direction(fft_direction)<br>fft1.set_shift=
_config(fft_shift)<br>graph.connect(<span style=3D"color:rgb(106,135,89)">&=
#39;0/Radio#0&#39;</span><span style=3D"color:rgb(204,120,50)">,</span><spa=
n style=3D"color:rgb(104,151,187)">0</span><span style=3D"color:rgb(204,120=
,50)">,</span><span style=3D"color:rgb(106,135,89)">&#39;0/FFT#0&#39;</span=
><span style=3D"color:rgb(204,120,50)">,</span><span style=3D"color:rgb(104=
,151,187)">0</span><span style=3D"color:rgb(204,120,50)">,False</span>)<br>=
graph.connect(<span style=3D"color:rgb(106,135,89)">&#39;0/Radio#0&#39;</sp=
an><span style=3D"color:rgb(204,120,50)">,</span><span style=3D"color:rgb(1=
04,151,187)">1</span><span style=3D"color:rgb(204,120,50)">,</span><span st=
yle=3D"color:rgb(106,135,89)">&#39;0/FFT#1&#39;</span><span style=3D"color:=
rgb(204,120,50)">,</span><span style=3D"color:rgb(104,151,187)">0</span><sp=
an style=3D"color:rgb(204,120,50)">,False</span>)<br>sa =3D uhd.usrp.Stream=
Args(<span style=3D"color:rgb(106,135,89)">&#39;fc32&#39;</span><span style=
=3D"color:rgb(204,120,50)">,</span><span style=3D"color:rgb(106,135,89)">&#=
39;sc16&#39;</span>)<br>sa.args =3D <span style=3D"color:rgb(106,135,89)">&=
#39;spp=3D&#39;</span>+<span style=3D"color:rgb(136,136,198)">str</span>(ff=
t_lenght)<br><br>rx_streamer =3D graph.create_rx_streamer(<span style=3D"co=
lor:rgb(104,151,187)">2</span><span style=3D"color:rgb(204,120,50)">,</span=
>sa)<br>graph.connect(<span style=3D"color:rgb(106,135,89)">&#39;0/FFT#1&#3=
9;</span><span style=3D"color:rgb(204,120,50)">,</span><span style=3D"color=
:rgb(104,151,187)">0</span><span style=3D"color:rgb(204,120,50)">,</span>rx=
_streamer<span style=3D"color:rgb(204,120,50)">,</span><span style=3D"color=
:rgb(104,151,187)">1</span>)<br>graph.connect(<span style=3D"color:rgb(106,=
135,89)">&#39;0/FFT#0&#39;</span><span style=3D"color:rgb(204,120,50)">,</s=
pan><span style=3D"color:rgb(104,151,187)">0</span><span style=3D"color:rgb=
(204,120,50)">,</span>rx_streamer<span style=3D"color:rgb(204,120,50)">,</s=
pan><span style=3D"color:rgb(104,151,187)">0</span>)<br>num_samps =3D <span=
 style=3D"color:rgb(136,136,198)">int</span>(fft.get_length()*<span style=
=3D"color:rgb(104,151,187)">5</span>)<br>radio_zeros =3D np.zeros((<span st=
yle=3D"color:rgb(104,151,187)">2</span><span style=3D"color:rgb(204,120,50)=
">,</span>num_samps)<span style=3D"color:rgb(204,120,50)">,</span><span sty=
le=3D"color:rgb(170,73,38)">dtype</span>=3Dnp.complex64)<br><br>graph.commi=
t()<br><span style=3D"color:rgb(136,136,198)">print</span>(num_samps)<br>st=
ream_cmd =3D uhd.types.StreamCMD(uhd.types.StreamMode.num_done)<br>stream_c=
md.num_samps =3Dnum_samps<br>stream_cmd.stream_now =3D <span style=3D"color=
:rgb(204,120,50)">False<br></span>stream_cmd.time_spec =3D graph.get_mb_con=
troller(<span style=3D"color:rgb(104,151,187)">0</span>).get_timekeeper(<sp=
an style=3D"color:rgb(104,151,187)">0</span>).get_time_now()+<span style=3D=
"color:rgb(104,151,187)">0.1<br></span>rx_streamer.issue_stream_cmd(stream_=
cmd)<br>rx_metadata =3D uhd.types.RXMetadata()<br>num_samps =3D rx_streamer=
.recv(radio_zeros<span style=3D"color:rgb(204,120,50)">,</span>rx_metadata<=
span style=3D"color:rgb(204,120,50)">,</span><span style=3D"color:rgb(104,1=
51,187)">0.1</span>)<br><span style=3D"color:rgb(136,136,198)">print</span>=
(num_samps)<br><span style=3D"color:rgb(136,136,198)">print</span>(rx_metad=
ata)<br><span style=3D"color:rgb(136,136,198)">print</span>(radio_zeros)<br=
><span style=3D"color:rgb(106,135,89)">```<span style=3D"background-color:r=
gb(243,243,243)"><br></span><span class=3D"gmail-Y2IQFc" lang=3D"en"><span =
style=3D"background-color:rgb(243,243,243)"><span style=3D"color:rgb(0,0,0)=
">And I am getting the following error:<br>Has timespec: No	Time of first s=
ample: 0<br>Fragmented: No =C2=A0Fragmentation offset: 0<br>Start of burst:=
 No	End of burst: No<br>Error Code: ERROR_CODE_TIMEOUT	Out of sequence: No<=
br></span></span><span class=3D"gmail-Y2IQFc" lang=3D"en"><span style=3D"ba=
ckground-color:rgb(243,243,243)"><span style=3D"color:rgb(0,0,0)">Please te=
ll me what the problem is, <br>since I did not find documentation and examp=
les other than <a href=3D"https://www.youtube.com/watch?v=3Dfbcxm7f-Tj0&amp=
;t=3D290s">https://www.youtube.com/watch?v=3Dfbcxm7f-Tj0&amp;t=3D290s</a></=
span></span><br></span></span></span></span></span></span></pre><div class=
=3D"gmail-tw-ta-container gmail-F0azHf gmail-tw-nfl" id=3D"gmail-tw-target-=
text-container" tabindex=3D"0"><pre class=3D"gmail-tw-data-text gmail-tw-te=
xt-large gmail-XcVN5d gmail-tw-ta" id=3D"gmail-tw-target-text" style=3D"tex=
t-align:left" dir=3D"ltr"><span style=3D"font-family:georgia,serif"><span c=
lass=3D"gmail-Y2IQFc" lang=3D"en">Thank you in advance</span></span></pre><=
/div></div>

--000000000000221f6405ca409914--

--===============2286114852748150733==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2286114852748150733==--
