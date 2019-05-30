Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 631822F76C
	for <lists+usrp-users@lfdr.de>; Thu, 30 May 2019 08:21:32 +0200 (CEST)
Received: from [::1] (port=36814 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hWERK-0005Dx-4c; Thu, 30 May 2019 02:21:26 -0400
Received: from mail-lf1-f45.google.com ([209.85.167.45]:41523)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <adray0001@gmail.com>) id 1hWERG-00058T-Cq
 for usrp-users@lists.ettus.com; Thu, 30 May 2019 02:21:22 -0400
Received: by mail-lf1-f45.google.com with SMTP id 136so4057035lfa.8
 for <usrp-users@lists.ettus.com>; Wed, 29 May 2019 23:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=6C/8zPT3LtIrAvNJFD4xI0e7ID1S/2z0Y8hmneUGDDE=;
 b=YfT/+78FqLsmXM3cGsHsoFwnA1dvpCxRhwigzIwupuD/4NexXBoFyECE6TNcfUN71f
 d5WUMRJqhtBRlemRXpOFb5uUzpEFs6VKiieqIc0mjlyUBb33BJpKq4iCCcNUkFrz91Ml
 myshya5d/ZyY/CQqV/jXpm5ZnGOuxnjmzZp0CpTwUzzsXcWcuvUAhEsNKcpA47Ex5sYj
 aMxoTi2mC2/uJBMw1aAb3X8buT0ku+rhlJIzvGn1A4tjR4lte2FGHewu6ByJo5vHTRDM
 k+isFI6zATv149VBqVqggnXuak/WlLQpZbFZtaPsC5aAtyUsS6W0Ut3mluJgHT1G55DU
 JcWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=6C/8zPT3LtIrAvNJFD4xI0e7ID1S/2z0Y8hmneUGDDE=;
 b=htGiFaIrQk72SSuqQo2+ZdWAT25Rl+GdGFAq6LQKRSpmmRHusv/DL85nPMr/CmQGdr
 EI5frPnysxEC1kaWq47D35YY13qApQaowsiuzzuZtVN1vY0g6cahf/zkRbcqUTyszami
 D11AcRvavrpwsMpnUz1JiPMYtdI35a7GzTzM9TWDSFIGCHpe8LFoWeDaOQ/4zerJe905
 tZIm9orArQWaIUmqaPRcX5EXBT9O2+HSJv+abGN+vQdoqM/DdXYik7HKBbWs7XswKtds
 J2QyghBa/gOa8AiIVvYglXl8+mPDx0NsLa1rj6qsaVjzgU0fRYJNugIpxKuk9jPhUA1/
 MYPQ==
X-Gm-Message-State: APjAAAVXxnfUqG0Fo7ExbUausZh90ICWFa2xCJEy+TlWZCvaGrmzPUo4
 YbOfUPHGfxH4GgDqLADnIC+Qxc3uIC1+5MZKrvc=
X-Google-Smtp-Source: APXvYqybTsc6VCkEaKNssIPV27TSIlxwdMBOjBZJLVSE46VDTGcur6sgMdB7ohNXFeqrwZhEBUUoi+PF15N1z+fuhiA=
X-Received: by 2002:ac2:5490:: with SMTP id t16mr1056853lfk.154.1559197240907; 
 Wed, 29 May 2019 23:20:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxvvqL9BcOW3zWNVHpuo5ZqU5ML7kGjaig9mDbxB0+jJog@mail.gmail.com>
 <5CEBFCCE.5040702@gmail.com>
 <CAPRRyxvzjOHxFgwtUh4iRRc3a8y_1W8KOLO82O--OrrzqKT2Sw@mail.gmail.com>
 <5CEDD070.3000101@gmail.com>
 <CAPRRyxsmaWpU9Z8bettAgavkmfqeZ6voceM8ajxdjkPM=ki2jQ@mail.gmail.com>
 <CAPRRyxu2m=u9QAyCkBQ76DZN1vKy-FP9soRiMO3Oib9JZcvjXw@mail.gmail.com>
 <5CEEE3D1.1050607@gmail.com>
In-Reply-To: <5CEEE3D1.1050607@gmail.com>
Date: Thu, 30 May 2019 09:20:47 +0300
Message-ID: <CAPRRyxsyBYJ=7kFpdq07ChH43uc1E5hCO41TH0c7NcncpM6k8Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,
 usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Fwd: How to escape from overflow error?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Content-Type: multipart/mixed; boundary="===============3848343227393745664=="
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

--===============3848343227393745664==
Content-Type: multipart/alternative; boundary="000000000000addcff058a14e580"

--000000000000addcff058a14e580
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Unfortunately, Python is the only programming language I know. And I
somehow difficult to imagine how without delay delays frequency tuning and
continuous reading. I think that the NUM_AND_DONE mode will help me, but I
do not know how to insist on it correctly and whether my reasoning on this
is correct. Can you tell me some way out of this situation? I think I'm not
the first to want to implement such a project on Ettus boards.

=D1=81=D1=80, 29 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 22:56, Marcus D. Le=
ech via USRP-users <
usrp-users@lists.ettus.com>:

> On 05/29/2019 03:29 AM, Ivan Zahartchuk via USRP-users wrote:
>
>
>
> Yes, I expanded the buffer as suggested in the driver. I made a test file
> for working with the board, here is its code.
>
> import uhdimport numpy as npfrom uhd import libpyuhd as libimport timeimp=
ort scipy.signal as signalimport pyqtgraph as pg
> pw =3D pg.plot()import time
>
> num_samps=3D363*5usrp =3D uhd.usrp.MultiUSRP('')
> usrp.set_rx_subdev_spec(uhd.usrp.SubdevSpec('A:0'))print(usrp.get_pp_stri=
ng())
> usrp.set_rx_rate(25e6)print(usrp.get_rx_rate()/1e6)
>
> stream_args=3Duhd.usrp.StreamArgs("fc32",'sc16')
> stream_args.channels=3D[0]
> rx_streamer=3Dusrp.get_rx_stream(stream_args)
> stream_cmd=3Duhd.types.StreamCMD(uhd.types.StreamMode.start_cont)
> stream_cmd.num_samps=3Dnum_samps
> stream_cmd.stream_now=3DFalseusrp.set_time_now(uhd.types.TimeSpec(0.0))
> stream_cmd.time_spec=3Duhd.types.TimeSpec(0.001)
> rx_streamer.issue_stream_cmd(stream_cmd)
> md =3D uhd.types.RXMetadata()
> buffer_samps =3D rx_streamer.get_max_num_samps()
> recv_buffer =3D np.zeros((len([0]), buffer_samps), dtype=3Dnp.complex64)
> result =3D np.empty((len([0]), num_samps), dtype=3Dnp.complex64)
>
> def fft_slices(x):
>     #        x =3D self.butter_bandpass_filter(x, -12.5e6, 12.5e6, 100e6,=
 order=3D6)    window =3D signal.hanning(363*5)
>     fx =3D np.fft.fftshift(np.fft.fft(window[np.newaxis, :] * x, axis=3D1=
))
>
>     Pxx =3D np.abs(fx) ** 2 / (np.abs(window) ** 2).sum()
>     Pxx[:, 1:-1] *=3D 2    Pxx =3D 20 * np.log10(Pxx ** 0.5)
>     return Pxxdef fft_test(x):
>
>         sample_freq,power=3Dsignal.welch(x,fs=3D25e6,window=3D"hamm", npe=
rseg=3Dnum_samps,scaling=3D"spectrum")
>         power=3Dnp.fft.fftshift(power)/1.5        return 10 * np.log10(po=
wer)
>
>
>
> while True:
>
>     result =3D np.empty((len([0]), num_samps), dtype=3Dnp.complex64)
>     k =3D uhd.types.TuneRequest(np.random.randint(900e6, 1000e6))
>     usrp.set_rx_freq(k)
>     while usrp.get_rx_sensor("lo_locked").to_bool() !=3D True:
>         continue    #print(usrp.get_rx_freq())    recv_samps =3D 0    whi=
le recv_samps < num_samps:
>
>         samps =3D rx_streamer.recv(recv_buffer, md)
>         time.sleep(0.001)
>
>         if md.error_code !=3D lib.types.rx_metadata_error_code.none:
>             print(md.strerror())
>         if samps:
>             real_samps =3D min(num_samps - recv_samps, samps)
>             result[:, recv_samps:recv_samps + real_samps] =3D recv_buffer=
[:, 0:real_samps]
>             recv_samps +=3D real_samps
>         usrp.set_time_now(uhd.types.TimeSpec(0.0))
>         stream_cmd.time_spec =3D uhd.types.TimeSpec(0.001)
>         rx_streamer.issue_stream_cmd(stream_cmd)
>
>     k1=3Dfft_test(result).ravel()
>
>     if str(k1[0]) =3D=3D 'nan':
>         print(k1[0])
>     else:
>         pw.plot(k1, clear=3DTrue)
>         pg.QtGui.QApplication.processEvents()
>
> But as far as I still understand, in this case I open a continuous stream=
 of reading. And I would like to read samples on request since I need to tu=
ne the frequency and type an array with several subranges.
>
> def test_reciev_2(self, freq, bandwich):
>     #complex_buffs =3D np.empty((len([0]), self.samples * len(freq)))    =
buffs =3D np.empty((len([0]), self.samples * len(freq)))
>     result =3D np.empty((len([0]), self.samples), dtype=3Dnp.complex64)
>
>     for i, freqq in enumerate(freq):
>
>
>         # self.usrp.set_rx_rate(bandwich[i])        k =3D uhd.types.TuneR=
equest(freqq)
>         # k.args(uhd.types.device_addr("mode_n=3Dinteger"))        self.u=
srp.set_rx_freq(k,0)
>
>         self.streamer_rx.issue_stream_cmd(self.stream_cmd)
>         while self.usrp.get_rx_sensor("lo_locked").to_bool() !=3D True:
>             continue        recv_samps =3D 0        while recv_samps < se=
lf.samples:
>
>             samps =3D self.streamer_rx.recv(self.recv_buff, self.metadata=
_rx)
>             if self.metadata_rx.error_code !=3D lib.types.rx_metadata_err=
or_code.none:
>                 print(self.metadata_rx.strerror())
>             if samps:
>                 real_samps =3D min(self.samples - recv_samps, samps)
>                 result[:, recv_samps:recv_samps + real_samps] =3D self.re=
cv_buff[:, 0:real_samps]
>                 recv_samps +=3D real_samps
>         # print (self.usrp.get_rx_sensor('rssi'))        # print(self.str=
eamer_rx.get_max_num_samps())        # self.stream_cmd.time_spec =3D lib.ty=
pes.time_spec(0)        #self.stream_cmd.stream_now =3D False        #self.=
stream_cmd =3D lib.types.stream_cmd(lib.types.stream_mode.stop_cont)       =
 #self.streamer_rx.issue_stream_cmd(self.stream_cmd)        while samps:
>             samps =3D self.streamer_rx.recv(self.recv_buff, self.metadata=
_rx)
>
>         #complex_buffs =3D np.append(complex_buffs, result).ravel()      =
  # correct_result=3Dresult        #correct_result_1 =3D result - (np.mean(=
result.real) + np.mean(result.imag) * 1j)        # correct_result.real=3Dre=
sult.real-np.mean(result.real)        # correct_result.imag =3D result.imag=
 - np.mean(result.imag)        PSD =3D self.fft_test(result)
>
>         # PSD[8188:8202]=3Dnp.mean(PSD[8180:8188])        buffs[:, i * va=
lue.samples:value.samples * i + value.samples] =3D PSD[:, 0:value.samples]
>
>     return complex_buffs, buffs.ravel()  # np.append(buffs[value.samples:=
],buffs[:value.samples])
>
>
> You are going to need to reconsider your code structure.
>
>
> (A) The Python API is *NOT* the way to process high-sample-rate data (and
> 25Msps is high-sample-rate in this context)
> (B) You intermingle tuning and (continuous) streaming in the same thread,
> AND, insert small sleeps after receiving samples--at
>       25Msps, every 1millisecond you aren't "paying attention" to the
> receive stream, there's 25,000 samples building up.
>       Tuning takes a finite amount of time--it's a fundamentally analog
> process, so several milliseconds of latency for tuning
>       is not unusual.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000addcff058a14e580
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span class=3D"gmail-tlid-translation gmail-translation" l=
ang=3D"en"><span title=3D"">Unfortunately, Python is the only programming l=
anguage I know.</span> <span title=3D"">And I somehow difficult to imagine =
how without delay delays frequency tuning and continuous reading.</span> <s=
pan title=3D"">I think that the NUM_AND_DONE mode will help me, but I do no=
t know how to insist on it correctly and whether my reasoning on this is co=
rrect.</span> <span title=3D"">Can you tell me some way out of this situati=
on?</span> <span title=3D"" class=3D"gmail-">I think I&#39;m not the first =
to want to implement such a project on Ettus boards.</span></span></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D1=
=80, 29 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 22:56, Marcus D. Leech via U=
SRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@list=
s.ettus.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_7720495069907110318moz-cite-prefix">On 05/29/2019=
 03:29 AM, Ivan Zahartchuk
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr"><br>
        <div class=3D"gmail_quote"><br>
          <div dir=3D"ltr">
            <div><span class=3D"gmail-m_7720495069907110318m_-9075795585464=
824595gmail-tlid-translation gmail-m_7720495069907110318m_-9075795585464824=
595gmail-translation" lang=3D"en"><span title=3D"">Yes, I expanded the buff=
er as suggested in
                  the driver.</span> <span title=3D"" class=3D"gmail-m_7720=
495069907110318m_-9075795585464824595gmail-">I made a test
                  file for working with the board, here is its code.</span>=
</span></div>
            <div>
              <pre style=3D"background-color:rgb(255,255,255);color:rgb(0,0=
,0);font-family:&quot;DejaVu Sans Mono&quot;"><span style=3D"color:rgb(0,0,=
128);font-weight:bold">import </span>uhd
<span style=3D"color:rgb(0,0,128);font-weight:bold">import </span>numpy <sp=
an style=3D"color:rgb(0,0,128);font-weight:bold">as </span>np
<span style=3D"color:rgb(0,0,128);font-weight:bold">from </span>uhd <span s=
tyle=3D"color:rgb(0,0,128);font-weight:bold">import </span>libpyuhd <span s=
tyle=3D"color:rgb(0,0,128);font-weight:bold">as </span>lib
<span style=3D"color:rgb(0,0,128);font-weight:bold">import </span>time
<span style=3D"color:rgb(0,0,128);font-weight:bold">import </span>scipy.sig=
nal <span style=3D"color:rgb(0,0,128);font-weight:bold">as </span>signal
<span style=3D"color:rgb(0,0,128);font-weight:bold">import </span>pyqtgraph=
 <span style=3D"color:rgb(0,0,128);font-weight:bold">as </span>pg
pw =3D pg.plot()
<span style=3D"color:rgb(0,0,128);font-weight:bold">import </span>time

num_samps=3D<span style=3D"color:rgb(0,0,255)">363</span>*<span style=3D"co=
lor:rgb(0,0,255)">5
</span>usrp =3D uhd.usrp.MultiUSRP(<span style=3D"color:rgb(0,128,0);font-w=
eight:bold">&#39;&#39;</span>)
usrp.set_rx_subdev_spec(uhd.usrp.SubdevSpec(<span style=3D"color:rgb(0,128,=
0);font-weight:bold">&#39;A:0&#39;</span>))
<span style=3D"color:rgb(0,0,128);font-weight:bold">print</span>(usrp.get_p=
p_string())
usrp.set_rx_rate(<span style=3D"color:rgb(0,0,255)">25e6</span>)
<span style=3D"color:rgb(0,0,128);font-weight:bold">print</span>(usrp.get_r=
x_rate()/<span style=3D"color:rgb(0,0,255)">1e6</span>)

stream_args=3Duhd.usrp.StreamArgs(<span style=3D"color:rgb(0,128,0);font-we=
ight:bold">&quot;fc32&quot;</span>,<span style=3D"color:rgb(0,128,0);font-w=
eight:bold">&#39;sc16&#39;</span>)
stream_args.channels=3D[<span style=3D"color:rgb(0,0,255)">0</span>]
rx_streamer=3Dusrp.get_rx_stream(stream_args)
stream_cmd=3Duhd.types.StreamCMD(uhd.types.StreamMode.start_cont)
stream_cmd.num_samps=3Dnum_samps
stream_cmd.stream_now=3D<span style=3D"color:rgb(0,0,128)">False
</span>usrp.set_time_now(uhd.types.TimeSpec(<span style=3D"color:rgb(0,0,25=
5)">0.0</span>))
stream_cmd.time_spec=3Duhd.types.TimeSpec(<span style=3D"color:rgb(0,0,255)=
">0.001</span>)
rx_streamer.issue_stream_cmd(stream_cmd)
md =3D uhd.types.RXMetadata()
buffer_samps =3D rx_streamer.get_max_num_samps()
recv_buffer =3D np.zeros((<span style=3D"color:rgb(0,0,128)">len</span>([<s=
pan style=3D"color:rgb(0,0,255)">0</span>]), buffer_samps), <span style=3D"=
color:rgb(102,0,153)">dtype</span>=3Dnp.complex64)
result =3D np.empty((<span style=3D"color:rgb(0,0,128)">len</span>([<span s=
tyle=3D"color:rgb(0,0,255)">0</span>]), num_samps), <span style=3D"color:rg=
b(102,0,153)">dtype</span>=3Dnp.complex64)


<span style=3D"color:rgb(0,0,128);font-weight:bold">def </span>fft_slices(x=
):
    <span style=3D"color:rgb(128,128,128);font-style:italic">#        x =3D=
 self.butter_bandpass_filter(x, -12.5e6, 12.5e6, 100e6, order=3D6)
</span><span style=3D"color:rgb(128,128,128);font-style:italic">    </span>=
window =3D signal.hanning(<span style=3D"color:rgb(0,0,255)">363</span>*<sp=
an style=3D"color:rgb(0,0,255)">5</span>)
    fx =3D np.fft.fftshift(np.fft.fft(window[np.newaxis, :] * x, <span styl=
e=3D"color:rgb(102,0,153)">axis</span>=3D<span style=3D"color:rgb(0,0,255)"=
>1</span>))

    Pxx =3D np.abs(fx) ** <span style=3D"color:rgb(0,0,255)">2 </span>/ (np=
.abs(window) ** <span style=3D"color:rgb(0,0,255)">2</span>).sum()
    Pxx[:, <span style=3D"color:rgb(0,0,255)">1</span>:-<span style=3D"colo=
r:rgb(0,0,255)">1</span>] *=3D <span style=3D"color:rgb(0,0,255)">2
</span><span style=3D"color:rgb(0,0,255)">
</span><span style=3D"color:rgb(0,0,255)">    </span>Pxx =3D <span style=3D=
"color:rgb(0,0,255)">20 </span>* np.log10(Pxx ** <span style=3D"color:rgb(0=
,0,255)">0.5</span>)
    <span style=3D"color:rgb(0,0,128);font-weight:bold">return </span>Pxx
<span style=3D"color:rgb(0,0,128);font-weight:bold">def </span>fft_test(x):

        sample_freq,power=3Dsignal.welch(x,<span style=3D"color:rgb(102,0,1=
53)">fs</span>=3D<span style=3D"color:rgb(0,0,255)">25e6</span>,<span style=
=3D"color:rgb(102,0,153)">window</span>=3D<span style=3D"color:rgb(0,128,0)=
;font-weight:bold">&quot;hamm&quot;</span>, <span style=3D"color:rgb(102,0,=
153)">nperseg</span>=3Dnum_samps,<span style=3D"color:rgb(102,0,153)">scali=
ng</span>=3D<span style=3D"color:rgb(0,128,0);font-weight:bold">&quot;spect=
rum&quot;</span>)
        power=3Dnp.fft.fftshift(power)/<span style=3D"color:rgb(0,0,255)">1=
.5
</span><span style=3D"color:rgb(0,0,255)">        </span><span style=3D"col=
or:rgb(0,0,128);font-weight:bold">return </span><span style=3D"color:rgb(0,=
0,255)">10 </span>* np.log10(power)




<span style=3D"color:rgb(0,0,128);font-weight:bold">while </span><span styl=
e=3D"color:rgb(0,0,128)">True</span>:

    result =3D np.empty((<span style=3D"color:rgb(0,0,128)">len</span>([<sp=
an style=3D"color:rgb(0,0,255)">0</span>]), num_samps), <span style=3D"colo=
r:rgb(102,0,153)">dtype</span>=3Dnp.complex64)
    k =3D uhd.types.TuneRequest(np.random.randint(<span style=3D"color:rgb(=
0,0,255)">900e6</span>, <span style=3D"color:rgb(0,0,255)">1000e6</span>))
    usrp.set_rx_freq(k)
    <span style=3D"color:rgb(0,0,128);font-weight:bold">while </span>usrp.g=
et_rx_sensor(<span style=3D"color:rgb(0,128,0);font-weight:bold">&quot;lo_l=
ocked&quot;</span>).to_bool() !=3D <span style=3D"color:rgb(0,0,128)">True<=
/span>:
        <span style=3D"color:rgb(0,0,128);font-weight:bold">continue
</span><span style=3D"color:rgb(0,0,128);font-weight:bold">    </span><span=
 style=3D"color:rgb(128,128,128);font-style:italic">#print(usrp.get_rx_freq=
())
</span><span style=3D"color:rgb(128,128,128);font-style:italic">    </span>=
recv_samps =3D <span style=3D"color:rgb(0,0,255)">0
</span><span style=3D"color:rgb(0,0,255)">
</span><span style=3D"color:rgb(0,0,255)">    </span><span style=3D"color:r=
gb(0,0,128);font-weight:bold">while </span>recv_samps &lt; num_samps:

        samps =3D rx_streamer.recv(recv_buffer, md)
        time.sleep(<span style=3D"color:rgb(0,0,255)">0.001</span>)

        <span style=3D"color:rgb(0,0,128);font-weight:bold">if </span>md.er=
ror_code !=3D lib.types.rx_metadata_error_code.none:
            <span style=3D"color:rgb(0,0,128);font-weight:bold">print</span=
>(md.strerror())
        <span style=3D"color:rgb(0,0,128);font-weight:bold">if </span>samps=
:
            real_samps =3D <span style=3D"color:rgb(0,0,128)">min</span>(nu=
m_samps - recv_samps, samps)
            result[:, recv_samps:recv_samps + real_samps] =3D recv_buffer[:=
, <span style=3D"color:rgb(0,0,255)">0</span>:real_samps]
            recv_samps +=3D real_samps
        usrp.set_time_now(uhd.types.TimeSpec(<span style=3D"color:rgb(0,0,2=
55)">0.0</span>))
        stream_cmd.time_spec =3D uhd.types.TimeSpec(<span style=3D"color:rg=
b(0,0,255)">0.001</span>)
        rx_streamer.issue_stream_cmd(stream_cmd)

    k1=3Dfft_test(result).ravel()

    <span style=3D"color:rgb(0,0,128);font-weight:bold">if </span><span sty=
le=3D"color:rgb(0,0,128)">str</span>(k1[<span style=3D"color:rgb(0,0,255)">=
0</span>]) =3D=3D <span style=3D"color:rgb(0,128,0);font-weight:bold">&#39;=
nan&#39;</span>:
        <span style=3D"color:rgb(0,0,128);font-weight:bold">print</span>(k1=
[<span style=3D"color:rgb(0,0,255)">0</span>])
    <span style=3D"color:rgb(0,0,128);font-weight:bold">else</span>:
        pw.plot(k1, <span style=3D"color:rgb(102,0,153)">clear</span>=3D<sp=
an style=3D"color:rgb(0,0,128)">True</span>)
        pg.QtGui.QApplication.processEvents()


<span class=3D"gmail-m_7720495069907110318m_-9075795585464824595gmail-tlid-=
translation gmail-m_7720495069907110318m_-9075795585464824595gmail-translat=
ion" lang=3D"en"><span title=3D"" class=3D"gmail-m_7720495069907110318m_-90=
75795585464824595gmail-">But as far as I still understand, in this case I o=
pen a continuous stream of reading.</span> <span title=3D"" class=3D"gmail-=
m_7720495069907110318m_-9075795585464824595gmail-">And I would like to read=
 samples on request since I need to tune the frequency and type an array wi=
th several subranges.
<span style=3D"color:rgb(0,0,128);font-weight:bold">

def </span>test_reciev_2(<span style=3D"color:rgb(148,85,141)">self</span>,=
 freq, <span style=3D"color:rgb(128,128,128)">bandwich</span>):
    <span style=3D"color:rgb(128,128,128);font-style:italic">#complex_buffs=
 =3D np.empty((len([0]), self.samples * len(freq)))
</span><span style=3D"color:rgb(128,128,128);font-style:italic">
</span><span style=3D"color:rgb(128,128,128);font-style:italic">    </span>=
buffs =3D np.empty((<span style=3D"color:rgb(0,0,128)">len</span>([<span st=
yle=3D"color:rgb(0,0,255)">0</span>]), <span style=3D"color:rgb(148,85,141)=
">self</span>.samples * <span style=3D"color:rgb(0,0,128)">len</span>(freq)=
))
    result =3D np.empty((<span style=3D"color:rgb(0,0,128)">len</span>([<sp=
an style=3D"color:rgb(0,0,255)">0</span>]), <span style=3D"color:rgb(148,85=
,141)">self</span>.samples), <span style=3D"color:rgb(102,0,153)">dtype</sp=
an>=3Dnp.complex64)

    <span style=3D"color:rgb(0,0,128);font-weight:bold">for </span>i, freqq=
 <span style=3D"color:rgb(0,0,128);font-weight:bold">in </span><span style=
=3D"color:rgb(0,0,128)">enumerate</span>(freq):


        <span style=3D"color:rgb(128,128,128);font-style:italic"># self.usr=
p.set_rx_rate(bandwich[i])
</span><span style=3D"color:rgb(128,128,128);font-style:italic">        </s=
pan>k =3D uhd.types.TuneRequest(freqq)
        <span style=3D"color:rgb(128,128,128);font-style:italic"># k.args(u=
hd.types.device_addr(&quot;mode_n=3Dinteger&quot;))
</span><span style=3D"color:rgb(128,128,128);font-style:italic">        </s=
pan><span style=3D"color:rgb(148,85,141)">self</span>.usrp.set_rx_freq(k,<s=
pan style=3D"color:rgb(0,0,255)">0</span>)

        <span style=3D"color:rgb(148,85,141)">self</span>.streamer_rx.issue=
_stream_cmd(<span style=3D"color:rgb(148,85,141)">self</span>.stream_cmd)
        <span style=3D"color:rgb(0,0,128);font-weight:bold">while </span><s=
pan style=3D"color:rgb(148,85,141)">self</span>.usrp.get_rx_sensor(<span st=
yle=3D"color:rgb(0,128,0);font-weight:bold">&quot;lo_locked&quot;</span>).t=
o_bool() !=3D <span style=3D"color:rgb(0,0,128)">True</span>:
            <span style=3D"color:rgb(0,0,128);font-weight:bold">continue
</span><span style=3D"color:rgb(0,0,128);font-weight:bold">        </span>r=
ecv_samps =3D <span style=3D"color:rgb(0,0,255)">0
</span><span style=3D"color:rgb(0,0,255)">
</span><span style=3D"color:rgb(0,0,255)">        </span><span style=3D"col=
or:rgb(0,0,128);font-weight:bold">while </span>recv_samps &lt; <span style=
=3D"color:rgb(148,85,141)">self</span>.samples:

            samps =3D <span style=3D"color:rgb(148,85,141)">self</span>.str=
eamer_rx.recv(<span style=3D"color:rgb(148,85,141)">self</span>.recv_buff, =
<span style=3D"color:rgb(148,85,141)">self</span>.metadata_rx)
            <span style=3D"color:rgb(0,0,128);font-weight:bold">if </span><=
span style=3D"color:rgb(148,85,141)">self</span>.metadata_rx.error_code !=
=3D lib.types.rx_metadata_error_code.none:
                <span style=3D"color:rgb(0,0,128);font-weight:bold">print</=
span>(<span style=3D"color:rgb(148,85,141)">self</span>.metadata_rx.strerro=
r())
            <span style=3D"color:rgb(0,0,128);font-weight:bold">if </span>s=
amps:
                real_samps =3D <span style=3D"color:rgb(0,0,128)">min</span=
>(<span style=3D"color:rgb(148,85,141)">self</span>.samples - recv_samps, s=
amps)
                result[:, recv_samps:recv_samps + real_samps] =3D <span sty=
le=3D"color:rgb(148,85,141)">self</span>.recv_buff[:, <span style=3D"color:=
rgb(0,0,255)">0</span>:real_samps]
                recv_samps +=3D real_samps
        <span style=3D"color:rgb(128,128,128);font-style:italic"># print (s=
elf.usrp.get_rx_sensor(&#39;rssi&#39;))
</span><span style=3D"color:rgb(128,128,128);font-style:italic">        # p=
rint(self.streamer_rx.get_max_num_samps())
</span><span style=3D"color:rgb(128,128,128);font-style:italic">
</span><span style=3D"color:rgb(128,128,128);font-style:italic">        # s=
elf.stream_cmd.time_spec =3D lib.types.time_spec(0)
</span><span style=3D"color:rgb(128,128,128);font-style:italic">        #se=
lf.stream_cmd.stream_now =3D False
</span><span style=3D"color:rgb(128,128,128);font-style:italic">
</span><span style=3D"color:rgb(128,128,128);font-style:italic">        #se=
lf.stream_cmd =3D lib.types.stream_cmd(lib.types.stream_mode.stop_cont)
</span><span style=3D"color:rgb(128,128,128);font-style:italic">        #se=
lf.streamer_rx.issue_stream_cmd(self.stream_cmd)
</span><span style=3D"color:rgb(128,128,128);font-style:italic">
</span><span style=3D"color:rgb(128,128,128);font-style:italic">        </s=
pan><span style=3D"color:rgb(0,0,128);font-weight:bold">while </span>samps:
            samps =3D <span style=3D"color:rgb(148,85,141)">self</span>.str=
eamer_rx.recv(<span style=3D"color:rgb(148,85,141)">self</span>.recv_buff, =
<span style=3D"color:rgb(148,85,141)">self</span>.metadata_rx)

        <span style=3D"color:rgb(128,128,128);font-style:italic">#complex_b=
uffs =3D np.append(complex_buffs, result).ravel()
</span><span style=3D"color:rgb(128,128,128);font-style:italic">        # c=
orrect_result=3Dresult
</span><span style=3D"color:rgb(128,128,128);font-style:italic">        #co=
rrect_result_1 =3D result - (np.mean(result.real) + np.mean(result.imag) * =
1j)
</span><span style=3D"color:rgb(128,128,128);font-style:italic">        # c=
orrect_result.real=3Dresult.real-np.mean(result.real)
</span><span style=3D"color:rgb(128,128,128);font-style:italic">        # c=
orrect_result.imag =3D result.imag - np.mean(result.imag)
</span><span style=3D"color:rgb(128,128,128);font-style:italic">
</span><span style=3D"color:rgb(128,128,128);font-style:italic">        </s=
pan>PSD =3D <span style=3D"color:rgb(148,85,141)">self</span>.fft_test(resu=
lt)

        <span style=3D"color:rgb(128,128,128);font-style:italic"># PSD[8188=
:8202]=3Dnp.mean(PSD[8180:8188])
</span><span style=3D"color:rgb(128,128,128);font-style:italic">
</span><span style=3D"color:rgb(128,128,128);font-style:italic">        </s=
pan>buffs[:, i * value.samples:value.samples * i + value.samples] =3D PSD[:=
, <span style=3D"color:rgb(0,0,255)">0</span>:value.samples]

    <span style=3D"color:rgb(0,0,128);font-weight:bold">return </span>compl=
ex_buffs, buffs.ravel()  <span style=3D"color:rgb(128,128,128);font-style:i=
talic"># np.append(buffs[value.samples:],buffs[:value.samples])
</span></span></span></pre>
              <br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    You are going to need to reconsider your code structure.<br>
    <br>
    <br>
    (A) The Python API is *NOT* the way to process high-sample-rate data
    (and 25Msps is high-sample-rate in this context)<br>
    (B) You intermingle tuning and (continuous) streaming in the same
    thread, AND, insert small sleeps after receiving samples--at<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 25Msps, every 1millisecond you aren&#39;=
t &quot;paying attention&quot; to
    the receive stream, there&#39;s 25,000 samples building up.<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Tuning takes a finite amount of time--it=
&#39;s a fundamentally
    analog process, so several milliseconds of latency for tuning<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 is not unusual.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000addcff058a14e580--


--===============3848343227393745664==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3848343227393745664==--

