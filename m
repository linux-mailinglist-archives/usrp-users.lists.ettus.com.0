Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 797251A970
	for <lists+usrp-users@lfdr.de>; Sat, 11 May 2019 22:40:56 +0200 (CEST)
Received: from [::1] (port=56520 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hPYnZ-0004Ln-JP; Sat, 11 May 2019 16:40:49 -0400
Received: from mail-lf1-f42.google.com ([209.85.167.42]:40564)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <adray0001@gmail.com>) id 1hPYn1-0004DN-MZ
 for usrp-users@lists.ettus.com; Sat, 11 May 2019 16:40:45 -0400
Received: by mail-lf1-f42.google.com with SMTP id h13so6414139lfc.7
 for <usrp-users@lists.ettus.com>; Sat, 11 May 2019 13:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=ZQK8gwjQ2BUArcGskw3LR9ZMcRDkklPjhSQyfVvs5cM=;
 b=rddsjxgDpAHMt0aauLdFPm6w0io/QSoszER1IquVnFu5uOKaENpEmmiJDWMoJPmRDD
 qDD4SfyzfiWvX67Ua9DzF2qB1onJf40+OYrviCnzFKwTl+iru5iaAE/sm4D1O8hrVBRZ
 KLuZ5oXpM+YKJfn4LC83h/ykMqo+2lwBR4wLUK1TdHbcSriVz4/Wi4KpHsLsY4dKrwaz
 98RDqp5npWC4RHk4JpORrwtjeE8v0d+PyL/t1FqKSj49+j9u1vMCuqujdJ1wb2b65YCh
 3UInBiFI2y8toPcZYfjvKX2mDRi5WbghtSZj0tNFYeT8r227WLIWJUOrHV2P8xJOL7SB
 g/CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=ZQK8gwjQ2BUArcGskw3LR9ZMcRDkklPjhSQyfVvs5cM=;
 b=SP1tFV1h7OuZyyEDAr/SWI7yI77FwT9+0CA/beXrn9KsrHeBfUHatuvHEIm1BKyOQq
 AG9X6cNGMkIj3575d41KpV4Nb0IlrdfwkhSFvuAxzrDypMhsJkeCQKd0PesYN2g4CXgb
 E4DqR6VDxa+X0kSKwcVSrlq3OLNIOUtvfxeQQVSoGHqYniPO8i6CeqgrXvCOCMvQpwOv
 jS5QwZbgD4KUT85Ab65DsIjt/26BuQ4ars/l64zja2cZmn2YdnacYOwBIisQC9URUylT
 2w7fvYLGtEWMNWXvzk2zgyS3eMIE+PtHWd6Dg6p2wO4846Vr+iaRHS3ocpxrY5Fh9CS3
 WMqw==
X-Gm-Message-State: APjAAAVcUd0OlCIAUU1bJ/C5bJ/A+ade7a3J0/1kpyxGcN2zIRqbTVvo
 NHbifamxfq5EUZEIAg6HfBuaIuceJzEBbvQUcH4=
X-Google-Smtp-Source: APXvYqzXtQ5EPFgieFH0EbsZQz16IfjL2areU7qPorBbBgMV+oNpkG/ZvPWuWe27o0aYpyFnXh+8Rn1pWBeblxKjcmE=
X-Received: by 2002:a19:ee11:: with SMTP id g17mr9143881lfb.5.1557607174321;
 Sat, 11 May 2019 13:39:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxuCDNGcewqw7Y6A=a-cgU8DN9s6Sbg7JVSHbuYHJBD=hA@mail.gmail.com>
 <5db613d9e0f5e53ad04b8e730a3aa4d9b25df12c.camel@ettus.com>
 <CAPRRyxtWDcpUEoJF6teLPVN8nrNXEuH0HULt2orMetOvCzEf8w@mail.gmail.com>
 <03752f22403f1915dd13039b82d10ca12ca69458.camel@ettus.com>
In-Reply-To: <03752f22403f1915dd13039b82d10ca12ca69458.camel@ettus.com>
Date: Sat, 11 May 2019 20:39:23 +0300
Message-ID: <CAPRRyxvntD=kxZc6xnAx3HYRBVxpTrzCwYLOg74t1rRzSapWeg@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>, 
 usrp-users <usrp-users@lists.ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Reading samples with b200 using num_sams_and_done
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
Content-Type: multipart/mixed; boundary="===============1022004205308001711=="
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

--===============1022004205308001711==
Content-Type: multipart/alternative; boundary="000000000000533cbc0588a2aed5"

--000000000000533cbc0588a2aed5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the help. I will try to fix everything tomorrow and see the
result. But tell me, maybe I don=E2=80=99t fully understand how num_sams_an=
d_done
works. If I understand correctly, this method does not send a continuous
stream of data but simply gives a certain number of samples upon request.
And in this case, we are not tied to system performance. Maybe I do not
understand this. Could you clarify this?

=D1=81=D0=B1, 11 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 23:19, Marcus M=C3=
=BCller <marcus.mueller@ettus.com>:

> Dear Ivan,
>
> On Sat, 2019-05-11 at 20:00 +0300, Ivan Zahartchuk wrote:
> > Sorry I did not specify. When working with the start_cont mode with a
> > frequency of more than 5 MHz, I have an overflow error.
>
> Which probably happens due to the inefficient way you handle the data;
> your program simply is too slow.
>
> > That leads to a chaotic change in the spectrum. I agree about the
> > wrong allocation of memory, but I created my own data array and ran
> > it through the whole chain of changes and additions and had what I
> > expected at the output.
>
> Huh? When using offline data, your computationally load doesn't matter;
> I'm not sure I'm understanding you correctly here!
>
> > Moreover, the data array was much more than what I get from the
> > board. In this regard, I decided that the matter is in the reading
> > from the board.
>
> I'll allow myself to doubt that: Again, the fact that your data array
> runs through smoothly is no indication for your software being fast
> enough to keep up with the torrent of samples UHD will give you! When
> it doesn't keep up, you see exactly what you're describing: UHD
> reporting overflows due to your software not fetching samples fast
> enough. Overflows aren't UHD bugs, they are problems in the way you use
> UHD!
>
> >  I have seen examples, but start_cont mode is used there and there
> > are not so many frequency adjustments. Therefore, I decided to use
> > the num_sams_and_done mode, but there is also a problem with it which
> > is described in the previous message. If you have more suggestions, I
> > will be very grateful to you.
>
> Well, exactly what I wrote in my previous mail: you need to make your
> software fast enough. Preallocate the buffer; don't append to its end.
>
> Aside from that, do some profiling. Under linux, `perf top -ag python
> yourscript.py` is your friend to figure out where your program spends
> its CPU cycles.
>
> Best regards,
> Marcus
>
> >
> > =D1=81=D0=B1, 11 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 22:27, Marcus M=
=C3=BCller <marcus.mueller@ettus.com>:
> > > Dear Ivan,
> > >
> > > it's not clear what you've modified. I'm not aware of any UHD
> > > function
> > > that restricts any frequency to 5 MHz.
> > > Could you elaborate on which code you're basing this on?
> > >
> > > Also, while I really like the Python interface, if you're really
> > > after
> > > high-rate sampling, it might simply not be the optimal thing to
> > > use:
> > > You'd have to be very careful in Pythonland to not run into
> > > performance
> > > problems once you've gotten the samples from UHD:
> > >
> > >         complex_buffs=3Dnp.append(complex_buffs,result).ravel()
> > >
> > > A very bad idea. You're constantly re-allocating buffers here.
> > > Don't do
> > > that. No matter in which programming language you'd do this, you'd
> > > make
> > > sure that the buffer is large enough for your data collection to
> > > begin
> > > with and then tell the UHD library to fill the appropriate part in
> > > that
> > > buffer to avoid a) having to ask for a larger buffer regularly and
> > > b)
> > > avoid copying data.
> > > Asking for an appended version of your last buffer means that
> > > something
> > > has to allocate a larger buffer =E2=80=93 which comes at very large c=
ost!
> > >
> > > Best regards,
> > > Marcus
> > >
> > > On Sat, 2019-05-11 at 21:31 +0300, Ivan Zahartchuk via USRP-users
> > > wrote:
> > > > Hello. My task is to make a broadband spectrum analyzer on the
> > > usrp
> > > > b200 board. For this, the standard functions for reading samples
> > > in
> > > > python are not suitable for me. Therefore, I edited them. When
> > > > reading samples using the start_con method, I cannot specify a
> > > band
> > > > greater than 5 MHz. Therefore, I use the num_sams_and_done
> > > method.
> > > > But I have problems with him. The fact is that my frequency which
> > > I
> > > > know appears in the wrong place. For example, I generate a
> > > frequency
> > > > of 910 MHz and it appears at 930 MHz (with a bandwidth of 20
> > > MHz). I
> > > > can not understand what caused it. Here are my reading functions
> > > in
> > > > two ways. I would be extremely grateful for the help.
> > > >
> > > >
> > > >
> > > >
> > > > def test_reciev(self,freq,bandwich):
> > > >     complex_buffs=3Dnp.array([])
> > > >     buffs =3D np.array([])
> > > >     result =3D np.empty((len([0]), self.samples),
> > > dtype=3Dnp.complex64)
> > > >
> > > >     for i, freqq in enumerate(freq):
> > > >
> > > >         recv_samps =3D 0
> > > >         #self.usrp.set_rx_rate(bandwich[i])
> > > >         k=3Duhd.types.TuneRequest(freqq)
> > > >         #k.args(uhd.types.device_addr("mode_n=3Dinteger"))
> > > >         self.usrp.set_rx_freq(k)
> > > >         self.stream_cmd =3D
> > > > uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)
> > > >         self.stream_cmd.stream_now =3D True
> > > >         self.streamer_rx.issue_stream_cmd(self.stream_cmd)
> > > >         while self.usrp.get_rx_sensor("lo_locked").to_bool() !=3D
> > > True:
> > > >             continue
> > > >
> > > >         samps =3D np.array([], dtype=3Dnp.complex64)
> > > >         while recv_samps < self.samples:
> > > >
> > > >             samps =3D self.streamer_rx.recv(self.recv_buff,
> > > > self.metadata_rx)
> > > >             if self.metadata_rx.error_code !=3D
> > > > lib.types.rx_metadata_error_code.none:
> > > >                 print(self.metadata_rx.strerror())
> > > >             if samps:
> > > >                 real_samps =3D min(self.samples - recv_samps,
> > > samps)
> > > >                 result[:, recv_samps:recv_samps + real_samps] =3D
> > > > self.recv_buff[:, 0:real_samps]
> > > >                 recv_samps +=3D real_samps
> > > >         #print (self.usrp.get_rx_sensor('rssi'))
> > > >         #print(self.streamer_rx.get_max_num_samps())
> > > >         #while samps:
> > > >         #    samps =3D self.streamer_rx.recv(self.recv_buff,
> > > > self.metadata_rx)
> > > >
> > > >
> > > >         #self.stream_cmd.time_spec =3D lib.types.time_spec(0)
> > > >         self.stream_cmd =3D
> > > > lib.types.stream_cmd(lib.types.stream_mode.stop_cont)
> > > >         self.streamer_rx.issue_stream_cmd(self.stream_cmd)
> > > >
> > > >         complex_buffs=3Dnp.append(complex_buffs,result).ravel()
> > > >         #correct_result=3Dresult
> > > >         correct_result_1=3Dresult-
> > > > (np.mean(result.real)+np.mean(result.imag)*1j)
> > > >         #correct_result.real=3Dresult.real-np.mean(result.real)
> > > >         #correct_result.imag =3D result.imag - np.mean(result.imag)
> > > >
> > > >         PSD =3D  self.fft_test(result)
> > > >
> > > >
> > > >         #PSD[8188:8202]=3Dnp.mean(PSD[8180:8188])
> > > >
> > > >
> > > >         buffs =3D np.append(buffs,PSD)
> > > >
> > > >
> > > >
> > > >     return complex_buffs,
> > > > buffs#np.append(buffs[value.samples:],buffs[:value.samples])
> > > >
> > > >
> > > >
> > > > def test_reciev(self,freq,bandwich):
> > > >     complex_buffs=3Dnp.array([])
> > > >     buffs =3D np.array([])
> > > >     result =3D np.empty((len([0]), self.samples),
> > > dtype=3Dnp.complex64)
> > > >
> > > >     for i, freqq in enumerate(freq):
> > > >
> > > >         recv_samps =3D 0
> > > >         #self.usrp.set_rx_rate(bandwich[i])
> > > >         k=3Duhd.types.TuneRequest(freqq)
> > > >         #k.args(uhd.types.device_addr("mode_n=3Dinteger"))
> > > >         self.usrp.set_rx_freq(k)
> > > >
> > > >         while self.usrp.get_rx_sensor("lo_locked").to_bool() !=3D
> > > True:
> > > >             continue
> > > >
> > > >
> > > >         while recv_samps < self.samples:
> > > >
> > > >             samps =3D self.streamer_rx.recv(self.recv_buff,
> > > > self.metadata_rx)
> > > >             if self.metadata_rx.error_code !=3D
> > > > lib.types.rx_metadata_error_code.none:
> > > >                 print(self.metadata_rx.strerror())
> > > >             if samps:
> > > >                 real_samps =3D min(self.samples - recv_samps,
> > > samps)
> > > >                 result[:, recv_samps:recv_samps + real_samps] =3D
> > > > self.recv_buff[:, 0:real_samps]
> > > >                 recv_samps +=3D real_samps
> > > >         #print (self.usrp.get_rx_sensor('rssi'))
> > > >
> > > >
> > > >         self.stream_cmd.time_spec =3D lib.types.time_spec(0)
> > > >         self.streamer_rx.issue_stream_cmd(self.stream_cmd)
> > > >
> > > >         complex_buffs=3Dnp.append(complex_buffs,result).ravel()
> > > >         correct_result=3Dresult
> > > >         correct_result_1=3Dresult-
> > > > (np.mean(result.real)+np.mean(result.imag)*1j)
> > > >         correct_result.real=3Dresult.real-np.mean(result.real)
> > > >         correct_result.imag =3D result.imag - np.mean(result.imag)
> > > >
> > > >         PSD =3D  self.fft_test(result)
> > > >
> > > >
> > > >         #PSD[8188:8202]=3Dnp.mean(PSD[8180:8188])
> > > >
> > > >
> > > >         buffs =3D np.append(buffs,PSD)
> > > >
> > > >
> > > >
> > > >     return complex_buffs,
> > > > buffs#np.append(buffs[value.samples:],buffs[:value.samples])
> > > >
> > > >
> > > >
> > > >
> > > >
> > > >
> > > >
> > > >
> > > > _______________________________________________
> > > > USRP-users mailing list
> > > > USRP-users@lists.ettus.com
> > > >
> > > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> > >
>
>

--000000000000533cbc0588a2aed5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thanks for the help. I will try to fix ev=
erything tomorrow and see the result. But tell me, maybe I don=E2=80=99t fu=
lly understand how num_sams_and_done works. If I understand correctly, this=
 method does not send a continuous stream of data but simply gives a certai=
n number of samples upon request. And in this case, we are not tied to syst=
em performance. Maybe I do not understand this. Could you clarify this?<br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">=D1=81=D0=B1, 11 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 23:19, Marcus=
 M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com">marcus.mueller=
@ettus.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">Dear Ivan,<br>
<br>
On Sat, 2019-05-11 at 20:00 +0300, Ivan Zahartchuk wrote:<br>
&gt; Sorry I did not specify. When working with the start_cont mode with a<=
br>
&gt; frequency of more than 5 MHz, I have an overflow error. <br>
<br>
Which probably happens due to the inefficient way you handle the data;<br>
your program simply is too slow.<br>
<br>
&gt; That leads to a chaotic change in the spectrum. I agree about the<br>
&gt; wrong allocation of memory, but I created my own data array and ran<br=
>
&gt; it through the whole chain of changes and additions and had what I<br>
&gt; expected at the output. <br>
<br>
Huh? When using offline data, your computationally load doesn&#39;t matter;=
<br>
I&#39;m not sure I&#39;m understanding you correctly here! <br>
<br>
&gt; Moreover, the data array was much more than what I get from the<br>
&gt; board. In this regard, I decided that the matter is in the reading<br>
&gt; from the board.<br>
<br>
I&#39;ll allow myself to doubt that: Again, the fact that your data array<b=
r>
runs through smoothly is no indication for your software being fast<br>
enough to keep up with the torrent of samples UHD will give you! When<br>
it doesn&#39;t keep up, you see exactly what you&#39;re describing: UHD<br>
reporting overflows due to your software not fetching samples fast<br>
enough. Overflows aren&#39;t UHD bugs, they are problems in the way you use=
<br>
UHD!<br>
<br>
&gt;=C2=A0 I have seen examples, but start_cont mode is used there and ther=
e<br>
&gt; are not so many frequency adjustments. Therefore, I decided to use<br>
&gt; the num_sams_and_done mode, but there is also a problem with it which<=
br>
&gt; is described in the previous message. If you have more suggestions, I<=
br>
&gt; will be very grateful to you.<br>
<br>
Well, exactly what I wrote in my previous mail: you need to make your<br>
software fast enough. Preallocate the buffer; don&#39;t append to its end.<=
br>
<br>
Aside from that, do some profiling. Under linux, `perf top -ag python<br>
yourscript.py` is your friend to figure out where your program spends<br>
its CPU cycles.<br>
<br>
Best regards,<br>
Marcus<br>
<br>
&gt; <br>
&gt; =D1=81=D0=B1, 11 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 22:27, Marcus =
M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com" target=3D"_blan=
k">marcus.mueller@ettus.com</a>&gt;:<br>
&gt; &gt; Dear Ivan,<br>
&gt; &gt; <br>
&gt; &gt; it&#39;s not clear what you&#39;ve modified. I&#39;m not aware of=
 any UHD<br>
&gt; &gt; function<br>
&gt; &gt; that restricts any frequency to 5 MHz.<br>
&gt; &gt; Could you elaborate on which code you&#39;re basing this on?<br>
&gt; &gt; <br>
&gt; &gt; Also, while I really like the Python interface, if you&#39;re rea=
lly<br>
&gt; &gt; after<br>
&gt; &gt; high-rate sampling, it might simply not be the optimal thing to<b=
r>
&gt; &gt; use:<br>
&gt; &gt; You&#39;d have to be very careful in Pythonland to not run into<b=
r>
&gt; &gt; performance<br>
&gt; &gt; problems once you&#39;ve gotten the samples from UHD:<br>
&gt; &gt; <br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0complex_buffs=3Dnp.append(comple=
x_buffs,result).ravel()<br>
&gt; &gt; <br>
&gt; &gt; A very bad idea. You&#39;re constantly re-allocating buffers here=
.<br>
&gt; &gt; Don&#39;t do<br>
&gt; &gt; that. No matter in which programming language you&#39;d do this, =
you&#39;d<br>
&gt; &gt; make<br>
&gt; &gt; sure that the buffer is large enough for your data collection to<=
br>
&gt; &gt; begin<br>
&gt; &gt; with and then tell the UHD library to fill the appropriate part i=
n<br>
&gt; &gt; that<br>
&gt; &gt; buffer to avoid a) having to ask for a larger buffer regularly an=
d<br>
&gt; &gt; b)<br>
&gt; &gt; avoid copying data.<br>
&gt; &gt; Asking for an appended version of your last buffer means that<br>
&gt; &gt; something<br>
&gt; &gt; has to allocate a larger buffer =E2=80=93 which comes at very lar=
ge cost!<br>
&gt; &gt; <br>
&gt; &gt; Best regards,<br>
&gt; &gt; Marcus <br>
&gt; &gt; <br>
&gt; &gt; On Sat, 2019-05-11 at 21:31 +0300, Ivan Zahartchuk via USRP-users=
<br>
&gt; &gt; wrote:<br>
&gt; &gt; &gt; Hello. My task is to make a broadband spectrum analyzer on t=
he<br>
&gt; &gt; usrp<br>
&gt; &gt; &gt; b200 board. For this, the standard functions for reading sam=
ples<br>
&gt; &gt; in<br>
&gt; &gt; &gt; python are not suitable for me. Therefore, I edited them. Wh=
en<br>
&gt; &gt; &gt; reading samples using the start_con method, I cannot specify=
 a<br>
&gt; &gt; band<br>
&gt; &gt; &gt; greater than 5 MHz. Therefore, I use the num_sams_and_done<b=
r>
&gt; &gt; method.<br>
&gt; &gt; &gt; But I have problems with him. The fact is that my frequency =
which<br>
&gt; &gt; I<br>
&gt; &gt; &gt; know appears in the wrong place. For example, I generate a<b=
r>
&gt; &gt; frequency<br>
&gt; &gt; &gt; of 910 MHz and it appears at 930 MHz (with a bandwidth of 20=
<br>
&gt; &gt; MHz). I<br>
&gt; &gt; &gt; can not understand what caused it. Here are my reading funct=
ions<br>
&gt; &gt; in<br>
&gt; &gt; &gt; two ways. I would be extremely grateful for the help.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; def test_reciev(self,freq,bandwich):<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0complex_buffs=3Dnp.array([])<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0buffs =3D np.array([])<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0result =3D np.empty((len([0]), self.sampl=
es),<br>
&gt; &gt; dtype=3Dnp.complex64)<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0for i, freqq in enumerate(freq):<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0recv_samps =3D 0<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#self.usrp.set_rx_rate(band=
wich[i])<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0k=3Duhd.types.TuneRequest(f=
reqq)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#k.args(uhd.types.device_ad=
dr(&quot;mode_n=3Dinteger&quot;))<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.usrp.set_rx_freq(k)<br=
>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.stream_cmd =3D<br>
&gt; &gt; &gt; uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.stream_cmd.stream_now =
=3D True<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.streamer_rx.issue_stre=
am_cmd(self.stream_cmd)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while self.usrp.get_rx_sens=
or(&quot;lo_locked&quot;).to_bool() !=3D<br>
&gt; &gt; True:<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0samps =3D np.array([], dtyp=
e=3Dnp.complex64)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while recv_samps &lt; self.=
samples:<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0samps =3D sel=
f.streamer_rx.recv(self.recv_buff,<br>
&gt; &gt; &gt; self.metadata_rx)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if self.metad=
ata_rx.error_code !=3D<br>
&gt; &gt; &gt; lib.types.rx_metadata_error_code.none:<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0print(self.metadata_rx.strerror())<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if samps:<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0real_samps =3D min(self.samples - recv_samps,<br>
&gt; &gt; samps)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0result[:, recv_samps:recv_samps + real_samps] =3D<br>
&gt; &gt; &gt; self.recv_buff[:, 0:real_samps]<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0recv_samps +=3D real_samps<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#print (self.usrp.get_rx_se=
nsor(&#39;rssi&#39;))<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#print(self.streamer_rx.get=
_max_num_samps())<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#while samps:<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#=C2=A0 =C2=A0 samps =3D se=
lf.streamer_rx.recv(self.recv_buff,<br>
&gt; &gt; &gt; self.metadata_rx)<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#self.stream_cmd.time_spec =
=3D lib.types.time_spec(0)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.stream_cmd =3D<br>
&gt; &gt; &gt; lib.types.stream_cmd(lib.types.stream_mode.stop_cont)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.streamer_rx.issue_stre=
am_cmd(self.stream_cmd)<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0complex_buffs=3Dnp.append(c=
omplex_buffs,result).ravel()<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#correct_result=3Dresult<br=
>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0correct_result_1=3Dresult-<=
br>
&gt; &gt; &gt; (np.mean(result.real)+np.mean(result.imag)*1j)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#correct_result.real=3Dresu=
lt.real-np.mean(result.real)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#correct_result.imag =3D re=
sult.imag - np.mean(result.imag)<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PSD =3D=C2=A0 self.fft_test=
(result)<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#PSD[8188:8202]=3Dnp.mean(P=
SD[8180:8188])<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0buffs =3D np.append(buffs,P=
SD)<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0return complex_buffs,<br>
&gt; &gt; &gt; buffs#np.append(buffs[value.samples:],buffs[:value.samples])=
<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; def test_reciev(self,freq,bandwich):<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0complex_buffs=3Dnp.array([])<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0buffs =3D np.array([])<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0result =3D np.empty((len([0]), self.sampl=
es),<br>
&gt; &gt; dtype=3Dnp.complex64)<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0for i, freqq in enumerate(freq):<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0recv_samps =3D 0<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#self.usrp.set_rx_rate(band=
wich[i])<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0k=3Duhd.types.TuneRequest(f=
reqq)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#k.args(uhd.types.device_ad=
dr(&quot;mode_n=3Dinteger&quot;))<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.usrp.set_rx_freq(k)<br=
>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while self.usrp.get_rx_sens=
or(&quot;lo_locked&quot;).to_bool() !=3D<br>
&gt; &gt; True:<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while recv_samps &lt; self.=
samples:<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0samps =3D sel=
f.streamer_rx.recv(self.recv_buff,<br>
&gt; &gt; &gt; self.metadata_rx)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if self.metad=
ata_rx.error_code !=3D<br>
&gt; &gt; &gt; lib.types.rx_metadata_error_code.none:<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0print(self.metadata_rx.strerror())<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if samps:<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0real_samps =3D min(self.samples - recv_samps,<br>
&gt; &gt; samps)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0result[:, recv_samps:recv_samps + real_samps] =3D<br>
&gt; &gt; &gt; self.recv_buff[:, 0:real_samps]<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0recv_samps +=3D real_samps<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#print (self.usrp.get_rx_se=
nsor(&#39;rssi&#39;))<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.stream_cmd.time_spec =
=3D lib.types.time_spec(0)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.streamer_rx.issue_stre=
am_cmd(self.stream_cmd)<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0complex_buffs=3Dnp.append(c=
omplex_buffs,result).ravel()<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0correct_result=3Dresult<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0correct_result_1=3Dresult-<=
br>
&gt; &gt; &gt; (np.mean(result.real)+np.mean(result.imag)*1j)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0correct_result.real=3Dresul=
t.real-np.mean(result.real)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0correct_result.imag =3D res=
ult.imag - np.mean(result.imag)<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PSD =3D=C2=A0 self.fft_test=
(result)<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#PSD[8188:8202]=3Dnp.mean(P=
SD[8180:8188])<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0buffs =3D np.append(buffs,P=
SD)<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0return complex_buffs,<br>
&gt; &gt; &gt; buffs#np.append(buffs[value.samples:],buffs[:value.samples])=
<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; _______________________________________________<br>
&gt; &gt; &gt; USRP-users mailing list<br>
&gt; &gt; &gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_bla=
nk">USRP-users@lists.ettus.com</a><br>
&gt; &gt; &gt; <br>
&gt; &gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; &gt; <br>
<br>
</blockquote></div>

--000000000000533cbc0588a2aed5--


--===============1022004205308001711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1022004205308001711==--

