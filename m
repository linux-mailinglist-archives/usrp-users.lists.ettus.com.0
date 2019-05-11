Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 309BD1A9AF
	for <lists+usrp-users@lfdr.de>; Sun, 12 May 2019 00:30:42 +0200 (CEST)
Received: from [::1] (port=40946 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hPaVs-0008Cr-SQ; Sat, 11 May 2019 18:30:40 -0400
Received: from mail-lj1-f174.google.com ([209.85.208.174]:41147)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <adray0001@gmail.com>) id 1hPaVK-000856-OP
 for usrp-users@lists.ettus.com; Sat, 11 May 2019 18:30:37 -0400
Received: by mail-lj1-f174.google.com with SMTP id k8so7886656lja.8
 for <usrp-users@lists.ettus.com>; Sat, 11 May 2019 15:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=lPIa70mRF7T+kV2yV208nvnjr3XyC+Rg6VqyhwNZpG0=;
 b=E4B5itG8j2BYHp2BfGPA0hc4MxPEJaG8NyKixmOrKEIVvl0mFmibfqt1RoSLRQ0ahV
 46kNxp9WDPO9N6wyduYOv+VP6CAY5eGuIwZGx8JUpLMgOp1B/WrGmpby+upBeahKF7Q4
 glciN/6vqPHkS/dP4qV+kTRDK9x7y8LdumBW1o42GDG3+yn+PJQjVZbQyPPPgomwoTLp
 vgCmYpYY5PvQQtSD7TPqiYRSvxHM7R4xrS2eTF7ekZR7OJAwgI/CjuCaZJjTF0FFCUjK
 bRAUGEMzCh8T6c2441ZweVK4X3eO3zZFRgMhwzjgWoAf3VmvJVgh3YZsgQMG3+7lUwcF
 kheQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=lPIa70mRF7T+kV2yV208nvnjr3XyC+Rg6VqyhwNZpG0=;
 b=ZsM99X4GjLHb6vLrdhDJV7CNXdlN5J/ni4nJ+8WzglJllL9X8N+x1yDBsweCAze5uM
 puVI1LdSmh5vTyKP3VhKnQ8e8mG653mI9pTJBVMmEc5ynz0yZMyrXZR+S3f4o1cVdhJH
 lgvFt5qJPtCV2srtWoR+S0gzABkjhH5cfuhqu6ZTESR86dP6ccnyFUI9769dSeSo1uRN
 IXqQh83goZP+0xyOe64cQ2BCuPCi/Xv6Su33yA8aQgBgC8qZrhDUW/X4avUawwOJavC6
 qNpyRXr/QCMDaq232u6anxHElFSZMlDmtl/qRLJTuXrMjrRFjcjoAACXvmmnWaNNZhZQ
 XH9w==
X-Gm-Message-State: APjAAAXJAt/MzH6oNk6EnVA/vprG+W0Qb5pCHk0kZsV6GkjIgzcF8CSo
 fAJjkTgw7JfDq3LaAdfiZwYFmdAFQLtJJu5o1fk=
X-Google-Smtp-Source: APXvYqxqMpGmQUEn5qEj9wcAJm9gWpTQ9Su7XMUpAf4rewYH/3bWgXEAGB/BdiswyO2HRrhpLqSw12+F5pkTFu6AjAY=
X-Received: by 2002:a2e:7f13:: with SMTP id a19mr9649112ljd.35.1557613765408; 
 Sat, 11 May 2019 15:29:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxuCDNGcewqw7Y6A=a-cgU8DN9s6Sbg7JVSHbuYHJBD=hA@mail.gmail.com>
 <5db613d9e0f5e53ad04b8e730a3aa4d9b25df12c.camel@ettus.com>
 <CAPRRyxtWDcpUEoJF6teLPVN8nrNXEuH0HULt2orMetOvCzEf8w@mail.gmail.com>
 <03752f22403f1915dd13039b82d10ca12ca69458.camel@ettus.com>
 <CAPRRyxvntD=kxZc6xnAx3HYRBVxpTrzCwYLOg74t1rRzSapWeg@mail.gmail.com>
 <9472ddef448b23a98a4b80e14151ad48206c534a.camel@ettus.com>
In-Reply-To: <9472ddef448b23a98a4b80e14151ad48206c534a.camel@ettus.com>
Date: Sat, 11 May 2019 22:29:14 +0300
Message-ID: <CAPRRyxvqe-n9W12pK4uQJxkuVy7c2XY+zyif=mAjA0+pBDaGNw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4512546228995004976=="
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

--===============4512546228995004976==
Content-Type: multipart/alternative; boundary="0000000000002f3e4d0588a43724"

--0000000000002f3e4d0588a43724
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

No, I meant that all system performance is enabled only when we make a
request and not all the time. And we no longer care what we do next with
these samples, they are just an array and the board does not require
constant reading.

=D0=B2=D1=81, 12 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 01:03, Marcus M=C3=
=BCller <marcus.mueller@ettus.com>:

> I'm not quite sure how you come to the conclusion that we wouldn't be
> tied to system performance in that case: that number of samples still
> needs to be received by the software running on the computer.
>
> Best regards,
> Marcus
>
> On Sat, 2019-05-11 at 20:39 +0300, Ivan Zahartchuk wrote:
> > Thanks for the help. I will try to fix everything tomorrow and see
> > the result. But tell me, maybe I don=E2=80=99t fully understand how
> > num_sams_and_done works. If I understand correctly, this method does
> > not send a continuous stream of data but simply gives a certain
> > number of samples upon request. And in this case, we are not tied to
> > system performance. Maybe I do not understand this. Could you clarify
> > this?
> >
> > =D1=81=D0=B1, 11 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 23:19, Marcus M=
=C3=BCller <marcus.mueller@ettus.com>:
> > > Dear Ivan,
> > >
> > > On Sat, 2019-05-11 at 20:00 +0300, Ivan Zahartchuk wrote:
> > > > Sorry I did not specify. When working with the start_cont mode
> > > with a
> > > > frequency of more than 5 MHz, I have an overflow error.
> > >
> > > Which probably happens due to the inefficient way you handle the
> > > data;
> > > your program simply is too slow.
> > >
> > > > That leads to a chaotic change in the spectrum. I agree about the
> > > > wrong allocation of memory, but I created my own data array and
> > > ran
> > > > it through the whole chain of changes and additions and had what
> > > I
> > > > expected at the output.
> > >
> > > Huh? When using offline data, your computationally load doesn't
> > > matter;
> > > I'm not sure I'm understanding you correctly here!
> > >
> > > > Moreover, the data array was much more than what I get from the
> > > > board. In this regard, I decided that the matter is in the
> > > reading
> > > > from the board.
> > >
> > > I'll allow myself to doubt that: Again, the fact that your data
> > > array
> > > runs through smoothly is no indication for your software being fast
> > > enough to keep up with the torrent of samples UHD will give you!
> > > When
> > > it doesn't keep up, you see exactly what you're describing: UHD
> > > reporting overflows due to your software not fetching samples fast
> > > enough. Overflows aren't UHD bugs, they are problems in the way you
> > > use
> > > UHD!
> > >
> > > >  I have seen examples, but start_cont mode is used there and
> > > there
> > > > are not so many frequency adjustments. Therefore, I decided to
> > > use
> > > > the num_sams_and_done mode, but there is also a problem with it
> > > which
> > > > is described in the previous message. If you have more
> > > suggestions, I
> > > > will be very grateful to you.
> > >
> > > Well, exactly what I wrote in my previous mail: you need to make
> > > your
> > > software fast enough. Preallocate the buffer; don't append to its
> > > end.
> > >
> > > Aside from that, do some profiling. Under linux, `perf top -ag
> > > python
> > > yourscript.py` is your friend to figure out where your program
> > > spends
> > > its CPU cycles.
> > >
> > > Best regards,
> > > Marcus
> > >
> > > >
> > > > =D1=81=D0=B1, 11 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 22:27, Marc=
us M=C3=BCller <
> > > marcus.mueller@ettus.com>:
> > > > > Dear Ivan,
> > > > >
> > > > > it's not clear what you've modified. I'm not aware of any UHD
> > > > > function
> > > > > that restricts any frequency to 5 MHz.
> > > > > Could you elaborate on which code you're basing this on?
> > > > >
> > > > > Also, while I really like the Python interface, if you're
> > > really
> > > > > after
> > > > > high-rate sampling, it might simply not be the optimal thing to
> > > > > use:
> > > > > You'd have to be very careful in Pythonland to not run into
> > > > > performance
> > > > > problems once you've gotten the samples from UHD:
> > > > >
> > > > >         complex_buffs=3Dnp.append(complex_buffs,result).ravel()
> > > > >
> > > > > A very bad idea. You're constantly re-allocating buffers here.
> > > > > Don't do
> > > > > that. No matter in which programming language you'd do this,
> > > you'd
> > > > > make
> > > > > sure that the buffer is large enough for your data collection
> > > to
> > > > > begin
> > > > > with and then tell the UHD library to fill the appropriate part
> > > in
> > > > > that
> > > > > buffer to avoid a) having to ask for a larger buffer regularly
> > > and
> > > > > b)
> > > > > avoid copying data.
> > > > > Asking for an appended version of your last buffer means that
> > > > > something
> > > > > has to allocate a larger buffer =E2=80=93 which comes at very lar=
ge
> > > cost!
> > > > >
> > > > > Best regards,
> > > > > Marcus
> > > > >
> > > > > On Sat, 2019-05-11 at 21:31 +0300, Ivan Zahartchuk via USRP-
> > > users
> > > > > wrote:
> > > > > > Hello. My task is to make a broadband spectrum analyzer on
> > > the
> > > > > usrp
> > > > > > b200 board. For this, the standard functions for reading
> > > samples
> > > > > in
> > > > > > python are not suitable for me. Therefore, I edited them.
> > > When
> > > > > > reading samples using the start_con method, I cannot specify
> > > a
> > > > > band
> > > > > > greater than 5 MHz. Therefore, I use the num_sams_and_done
> > > > > method.
> > > > > > But I have problems with him. The fact is that my frequency
> > > which
> > > > > I
> > > > > > know appears in the wrong place. For example, I generate a
> > > > > frequency
> > > > > > of 910 MHz and it appears at 930 MHz (with a bandwidth of 20
> > > > > MHz). I
> > > > > > can not understand what caused it. Here are my reading
> > > functions
> > > > > in
> > > > > > two ways. I would be extremely grateful for the help.
> > > > > >
> > > > > >
> > > > > >
> > > > > >
> > > > > > def test_reciev(self,freq,bandwich):
> > > > > >     complex_buffs=3Dnp.array([])
> > > > > >     buffs =3D np.array([])
> > > > > >     result =3D np.empty((len([0]), self.samples),
> > > > > dtype=3Dnp.complex64)
> > > > > >
> > > > > >     for i, freqq in enumerate(freq):
> > > > > >
> > > > > >         recv_samps =3D 0
> > > > > >         #self.usrp.set_rx_rate(bandwich[i])
> > > > > >         k=3Duhd.types.TuneRequest(freqq)
> > > > > >         #k.args(uhd.types.device_addr("mode_n=3Dinteger"))
> > > > > >         self.usrp.set_rx_freq(k)
> > > > > >         self.stream_cmd =3D
> > > > > > uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)
> > > > > >         self.stream_cmd.stream_now =3D True
> > > > > >         self.streamer_rx.issue_stream_cmd(self.stream_cmd)
> > > > > >         while self.usrp.get_rx_sensor("lo_locked").to_bool()
> > > !=3D
> > > > > True:
> > > > > >             continue
> > > > > >
> > > > > >         samps =3D np.array([], dtype=3Dnp.complex64)
> > > > > >         while recv_samps < self.samples:
> > > > > >
> > > > > >             samps =3D self.streamer_rx.recv(self.recv_buff,
> > > > > > self.metadata_rx)
> > > > > >             if self.metadata_rx.error_code !=3D
> > > > > > lib.types.rx_metadata_error_code.none:
> > > > > >                 print(self.metadata_rx.strerror())
> > > > > >             if samps:
> > > > > >                 real_samps =3D min(self.samples - recv_samps,
> > > > > samps)
> > > > > >                 result[:, recv_samps:recv_samps + real_samps]
> > > =3D
> > > > > > self.recv_buff[:, 0:real_samps]
> > > > > >                 recv_samps +=3D real_samps
> > > > > >         #print (self.usrp.get_rx_sensor('rssi'))
> > > > > >         #print(self.streamer_rx.get_max_num_samps())
> > > > > >         #while samps:
> > > > > >         #    samps =3D self.streamer_rx.recv(self.recv_buff,
> > > > > > self.metadata_rx)
> > > > > >
> > > > > >
> > > > > >         #self.stream_cmd.time_spec =3D lib.types.time_spec(0)
> > > > > >         self.stream_cmd =3D
> > > > > > lib.types.stream_cmd(lib.types.stream_mode.stop_cont)
> > > > > >         self.streamer_rx.issue_stream_cmd(self.stream_cmd)
> > > > > >
> > > > > >         complex_buffs=3Dnp.append(complex_buffs,result).ravel()
> > > > > >         #correct_result=3Dresult
> > > > > >         correct_result_1=3Dresult-
> > > > > > (np.mean(result.real)+np.mean(result.imag)*1j)
> > > > > >         #correct_result.real=3Dresult.real-np.mean(result.real)
> > > > > >         #correct_result.imag =3D result.imag -
> > > np.mean(result.imag)
> > > > > >
> > > > > >         PSD =3D  self.fft_test(result)
> > > > > >
> > > > > >
> > > > > >         #PSD[8188:8202]=3Dnp.mean(PSD[8180:8188])
> > > > > >
> > > > > >
> > > > > >         buffs =3D np.append(buffs,PSD)
> > > > > >
> > > > > >
> > > > > >
> > > > > >     return complex_buffs,
> > > > > > buffs#np.append(buffs[value.samples:],buffs[:value.samples])
> > > > > >
> > > > > >
> > > > > >
> > > > > > def test_reciev(self,freq,bandwich):
> > > > > >     complex_buffs=3Dnp.array([])
> > > > > >     buffs =3D np.array([])
> > > > > >     result =3D np.empty((len([0]), self.samples),
> > > > > dtype=3Dnp.complex64)
> > > > > >
> > > > > >     for i, freqq in enumerate(freq):
> > > > > >
> > > > > >         recv_samps =3D 0
> > > > > >         #self.usrp.set_rx_rate(bandwich[i])
> > > > > >         k=3Duhd.types.TuneRequest(freqq)
> > > > > >         #k.args(uhd.types.device_addr("mode_n=3Dinteger"))
> > > > > >         self.usrp.set_rx_freq(k)
> > > > > >
> > > > > >         while self.usrp.get_rx_sensor("lo_locked").to_bool()
> > > !=3D
> > > > > True:
> > > > > >             continue
> > > > > >
> > > > > >
> > > > > >         while recv_samps < self.samples:
> > > > > >
> > > > > >             samps =3D self.streamer_rx.recv(self.recv_buff,
> > > > > > self.metadata_rx)
> > > > > >             if self.metadata_rx.error_code !=3D
> > > > > > lib.types.rx_metadata_error_code.none:
> > > > > >                 print(self.metadata_rx.strerror())
> > > > > >             if samps:
> > > > > >                 real_samps =3D min(self.samples - recv_samps,
> > > > > samps)
> > > > > >                 result[:, recv_samps:recv_samps + real_samps]
> > > =3D
> > > > > > self.recv_buff[:, 0:real_samps]
> > > > > >                 recv_samps +=3D real_samps
> > > > > >         #print (self.usrp.get_rx_sensor('rssi'))
> > > > > >
> > > > > >
> > > > > >         self.stream_cmd.time_spec =3D lib.types.time_spec(0)
> > > > > >         self.streamer_rx.issue_stream_cmd(self.stream_cmd)
> > > > > >
> > > > > >         complex_buffs=3Dnp.append(complex_buffs,result).ravel()
> > > > > >         correct_result=3Dresult
> > > > > >         correct_result_1=3Dresult-
> > > > > > (np.mean(result.real)+np.mean(result.imag)*1j)
> > > > > >         correct_result.real=3Dresult.real-np.mean(result.real)
> > > > > >         correct_result.imag =3D result.imag -
> > > np.mean(result.imag)
> > > > > >
> > > > > >         PSD =3D  self.fft_test(result)
> > > > > >
> > > > > >
> > > > > >         #PSD[8188:8202]=3Dnp.mean(PSD[8180:8188])
> > > > > >
> > > > > >
> > > > > >         buffs =3D np.append(buffs,PSD)
> > > > > >
> > > > > >
> > > > > >
> > > > > >     return complex_buffs,
> > > > > > buffs#np.append(buffs[value.samples:],buffs[:value.samples])
> > > > > >
> > > > > >
> > > > > >
> > > > > >
> > > > > >
> > > > > >
> > > > > >
> > > > > >
> > > > > > _______________________________________________
> > > > > > USRP-users mailing list
> > > > > > USRP-users@lists.ettus.com
> > > > > >
> > > > >
> > > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> > > > >
> > >
>
>

--0000000000002f3e4d0588a43724
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">No, I meant that all system performance i=
s enabled only when we make a request and not all the time. And we no longe=
r care what we do next with these samples, they are just an array and the b=
oard does not require constant reading.<br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D0=B2=D1=81, 12 =D0=BC=D0=
=B0=D1=8F 2019 =D0=B3. =D0=B2 01:03, Marcus M=C3=BCller &lt;<a href=3D"mail=
to:marcus.mueller@ettus.com">marcus.mueller@ettus.com</a>&gt;:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">I&#39;m not quite sure how y=
ou come to the conclusion that we wouldn&#39;t be<br>
tied to system performance in that case: that number of samples still<br>
needs to be received by the software running on the computer.<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On Sat, 2019-05-11 at 20:39 +0300, Ivan Zahartchuk wrote:<br>
&gt; Thanks for the help. I will try to fix everything tomorrow and see<br>
&gt; the result. But tell me, maybe I don=E2=80=99t fully understand how<br=
>
&gt; num_sams_and_done works. If I understand correctly, this method does<b=
r>
&gt; not send a continuous stream of data but simply gives a certain<br>
&gt; number of samples upon request. And in this case, we are not tied to<b=
r>
&gt; system performance. Maybe I do not understand this. Could you clarify<=
br>
&gt; this?<br>
&gt; <br>
&gt; =D1=81=D0=B1, 11 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 23:19, Marcus =
M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com" target=3D"_blan=
k">marcus.mueller@ettus.com</a>&gt;:<br>
&gt; &gt; Dear Ivan,<br>
&gt; &gt; <br>
&gt; &gt; On Sat, 2019-05-11 at 20:00 +0300, Ivan Zahartchuk wrote:<br>
&gt; &gt; &gt; Sorry I did not specify. When working with the start_cont mo=
de<br>
&gt; &gt; with a<br>
&gt; &gt; &gt; frequency of more than 5 MHz, I have an overflow error. <br>
&gt; &gt; <br>
&gt; &gt; Which probably happens due to the inefficient way you handle the<=
br>
&gt; &gt; data;<br>
&gt; &gt; your program simply is too slow.<br>
&gt; &gt; <br>
&gt; &gt; &gt; That leads to a chaotic change in the spectrum. I agree abou=
t the<br>
&gt; &gt; &gt; wrong allocation of memory, but I created my own data array =
and<br>
&gt; &gt; ran<br>
&gt; &gt; &gt; it through the whole chain of changes and additions and had =
what<br>
&gt; &gt; I<br>
&gt; &gt; &gt; expected at the output. <br>
&gt; &gt; <br>
&gt; &gt; Huh? When using offline data, your computationally load doesn&#39=
;t<br>
&gt; &gt; matter;<br>
&gt; &gt; I&#39;m not sure I&#39;m understanding you correctly here! <br>
&gt; &gt; <br>
&gt; &gt; &gt; Moreover, the data array was much more than what I get from =
the<br>
&gt; &gt; &gt; board. In this regard, I decided that the matter is in the<b=
r>
&gt; &gt; reading<br>
&gt; &gt; &gt; from the board.<br>
&gt; &gt; <br>
&gt; &gt; I&#39;ll allow myself to doubt that: Again, the fact that your da=
ta<br>
&gt; &gt; array<br>
&gt; &gt; runs through smoothly is no indication for your software being fa=
st<br>
&gt; &gt; enough to keep up with the torrent of samples UHD will give you!<=
br>
&gt; &gt; When<br>
&gt; &gt; it doesn&#39;t keep up, you see exactly what you&#39;re describin=
g: UHD<br>
&gt; &gt; reporting overflows due to your software not fetching samples fas=
t<br>
&gt; &gt; enough. Overflows aren&#39;t UHD bugs, they are problems in the w=
ay you<br>
&gt; &gt; use<br>
&gt; &gt; UHD!<br>
&gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 I have seen examples, but start_cont mode is used ther=
e and<br>
&gt; &gt; there<br>
&gt; &gt; &gt; are not so many frequency adjustments. Therefore, I decided =
to<br>
&gt; &gt; use<br>
&gt; &gt; &gt; the num_sams_and_done mode, but there is also a problem with=
 it<br>
&gt; &gt; which<br>
&gt; &gt; &gt; is described in the previous message. If you have more<br>
&gt; &gt; suggestions, I<br>
&gt; &gt; &gt; will be very grateful to you.<br>
&gt; &gt; <br>
&gt; &gt; Well, exactly what I wrote in my previous mail: you need to make<=
br>
&gt; &gt; your<br>
&gt; &gt; software fast enough. Preallocate the buffer; don&#39;t append to=
 its<br>
&gt; &gt; end.<br>
&gt; &gt; <br>
&gt; &gt; Aside from that, do some profiling. Under linux, `perf top -ag<br=
>
&gt; &gt; python<br>
&gt; &gt; yourscript.py` is your friend to figure out where your program<br=
>
&gt; &gt; spends<br>
&gt; &gt; its CPU cycles.<br>
&gt; &gt; <br>
&gt; &gt; Best regards,<br>
&gt; &gt; Marcus<br>
&gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; =D1=81=D0=B1, 11 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 22:2=
7, Marcus M=C3=BCller &lt;<br>
&gt; &gt; <a href=3D"mailto:marcus.mueller@ettus.com" target=3D"_blank">mar=
cus.mueller@ettus.com</a>&gt;:<br>
&gt; &gt; &gt; &gt; Dear Ivan,<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; it&#39;s not clear what you&#39;ve modified. I&#39;m no=
t aware of any UHD<br>
&gt; &gt; &gt; &gt; function<br>
&gt; &gt; &gt; &gt; that restricts any frequency to 5 MHz.<br>
&gt; &gt; &gt; &gt; Could you elaborate on which code you&#39;re basing thi=
s on?<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; Also, while I really like the Python interface, if you&=
#39;re<br>
&gt; &gt; really<br>
&gt; &gt; &gt; &gt; after<br>
&gt; &gt; &gt; &gt; high-rate sampling, it might simply not be the optimal =
thing to<br>
&gt; &gt; &gt; &gt; use:<br>
&gt; &gt; &gt; &gt; You&#39;d have to be very careful in Pythonland to not =
run into<br>
&gt; &gt; &gt; &gt; performance<br>
&gt; &gt; &gt; &gt; problems once you&#39;ve gotten the samples from UHD:<b=
r>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0complex_buffs=3Dnp.app=
end(complex_buffs,result).ravel()<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; A very bad idea. You&#39;re constantly re-allocating bu=
ffers here.<br>
&gt; &gt; &gt; &gt; Don&#39;t do<br>
&gt; &gt; &gt; &gt; that. No matter in which programming language you&#39;d=
 do this,<br>
&gt; &gt; you&#39;d<br>
&gt; &gt; &gt; &gt; make<br>
&gt; &gt; &gt; &gt; sure that the buffer is large enough for your data coll=
ection<br>
&gt; &gt; to<br>
&gt; &gt; &gt; &gt; begin<br>
&gt; &gt; &gt; &gt; with and then tell the UHD library to fill the appropri=
ate part<br>
&gt; &gt; in<br>
&gt; &gt; &gt; &gt; that<br>
&gt; &gt; &gt; &gt; buffer to avoid a) having to ask for a larger buffer re=
gularly<br>
&gt; &gt; and<br>
&gt; &gt; &gt; &gt; b)<br>
&gt; &gt; &gt; &gt; avoid copying data.<br>
&gt; &gt; &gt; &gt; Asking for an appended version of your last buffer mean=
s that<br>
&gt; &gt; &gt; &gt; something<br>
&gt; &gt; &gt; &gt; has to allocate a larger buffer =E2=80=93 which comes a=
t very large<br>
&gt; &gt; cost!<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; Best regards,<br>
&gt; &gt; &gt; &gt; Marcus <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; On Sat, 2019-05-11 at 21:31 +0300, Ivan Zahartchuk via =
USRP-<br>
&gt; &gt; users<br>
&gt; &gt; &gt; &gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; Hello. My task is to make a broadband spectrum ana=
lyzer on<br>
&gt; &gt; the<br>
&gt; &gt; &gt; &gt; usrp<br>
&gt; &gt; &gt; &gt; &gt; b200 board. For this, the standard functions for r=
eading<br>
&gt; &gt; samples<br>
&gt; &gt; &gt; &gt; in<br>
&gt; &gt; &gt; &gt; &gt; python are not suitable for me. Therefore, I edite=
d them.<br>
&gt; &gt; When<br>
&gt; &gt; &gt; &gt; &gt; reading samples using the start_con method, I cann=
ot specify<br>
&gt; &gt; a<br>
&gt; &gt; &gt; &gt; band<br>
&gt; &gt; &gt; &gt; &gt; greater than 5 MHz. Therefore, I use the num_sams_=
and_done<br>
&gt; &gt; &gt; &gt; method.<br>
&gt; &gt; &gt; &gt; &gt; But I have problems with him. The fact is that my =
frequency<br>
&gt; &gt; which<br>
&gt; &gt; &gt; &gt; I<br>
&gt; &gt; &gt; &gt; &gt; know appears in the wrong place. For example, I ge=
nerate a<br>
&gt; &gt; &gt; &gt; frequency<br>
&gt; &gt; &gt; &gt; &gt; of 910 MHz and it appears at 930 MHz (with a bandw=
idth of 20<br>
&gt; &gt; &gt; &gt; MHz). I<br>
&gt; &gt; &gt; &gt; &gt; can not understand what caused it. Here are my rea=
ding<br>
&gt; &gt; functions<br>
&gt; &gt; &gt; &gt; in<br>
&gt; &gt; &gt; &gt; &gt; two ways. I would be extremely grateful for the he=
lp.<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; def test_reciev(self,freq,bandwich):<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0complex_buffs=3Dnp.array([])<br=
>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0buffs =3D np.array([])<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0result =3D np.empty((len([0]), =
self.samples),<br>
&gt; &gt; &gt; &gt; dtype=3Dnp.complex64)<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0for i, freqq in enumerate(freq)=
:<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0recv_samps =3D 0<=
br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#self.usrp.set_rx=
_rate(bandwich[i])<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0k=3Duhd.types.Tun=
eRequest(freqq)<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#k.args(uhd.types=
.device_addr(&quot;mode_n=3Dinteger&quot;))<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.usrp.set_rx_=
freq(k)<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.stream_cmd =
=3D<br>
&gt; &gt; &gt; &gt; &gt; uhd.types.StreamCMD(uhd.types.StreamMode.start_con=
t)<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.stream_cmd.s=
tream_now =3D True<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.streamer_rx.=
issue_stream_cmd(self.stream_cmd)<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while self.usrp.g=
et_rx_sensor(&quot;lo_locked&quot;).to_bool()<br>
&gt; &gt; !=3D<br>
&gt; &gt; &gt; &gt; True:<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0con=
tinue<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0samps =3D np.arra=
y([], dtype=3Dnp.complex64)<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while recv_samps =
&lt; self.samples:<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sam=
ps =3D self.streamer_rx.recv(self.recv_buff,<br>
&gt; &gt; &gt; &gt; &gt; self.metadata_rx)<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if =
self.metadata_rx.error_code !=3D<br>
&gt; &gt; &gt; &gt; &gt; lib.types.rx_metadata_error_code.none:<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0print(self.metadata_rx.strerror())<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if =
samps:<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0real_samps =3D min(self.samples - recv_samps,<br>
&gt; &gt; &gt; &gt; samps)<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0result[:, recv_samps:recv_samps + real_samps]<br>
&gt; &gt; =3D<br>
&gt; &gt; &gt; &gt; &gt; self.recv_buff[:, 0:real_samps]<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0recv_samps +=3D real_samps<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#print (self.usrp=
.get_rx_sensor(&#39;rssi&#39;))<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#print(self.strea=
mer_rx.get_max_num_samps())<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#while samps:<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#=C2=A0 =C2=A0 sa=
mps =3D self.streamer_rx.recv(self.recv_buff,<br>
&gt; &gt; &gt; &gt; &gt; self.metadata_rx)<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#self.stream_cmd.=
time_spec =3D lib.types.time_spec(0)<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.stream_cmd =
=3D<br>
&gt; &gt; &gt; &gt; &gt; lib.types.stream_cmd(lib.types.stream_mode.stop_co=
nt)<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.streamer_rx.=
issue_stream_cmd(self.stream_cmd)<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0complex_buffs=3Dn=
p.append(complex_buffs,result).ravel()<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#correct_result=
=3Dresult<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0correct_result_1=
=3Dresult-<br>
&gt; &gt; &gt; &gt; &gt; (np.mean(result.real)+np.mean(result.imag)*1j)<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#correct_result.r=
eal=3Dresult.real-np.mean(result.real)<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#correct_result.i=
mag =3D result.imag -<br>
&gt; &gt; np.mean(result.imag)<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PSD =3D=C2=A0 sel=
f.fft_test(result)<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#PSD[8188:8202]=
=3Dnp.mean(PSD[8180:8188])<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0buffs =3D np.appe=
nd(buffs,PSD)<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0return complex_buffs,<br>
&gt; &gt; &gt; &gt; &gt; buffs#np.append(buffs[value.samples:],buffs[:value=
.samples])<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; def test_reciev(self,freq,bandwich):<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0complex_buffs=3Dnp.array([])<br=
>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0buffs =3D np.array([])<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0result =3D np.empty((len([0]), =
self.samples),<br>
&gt; &gt; &gt; &gt; dtype=3Dnp.complex64)<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0for i, freqq in enumerate(freq)=
:<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0recv_samps =3D 0<=
br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#self.usrp.set_rx=
_rate(bandwich[i])<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0k=3Duhd.types.Tun=
eRequest(freqq)<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#k.args(uhd.types=
.device_addr(&quot;mode_n=3Dinteger&quot;))<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.usrp.set_rx_=
freq(k)<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while self.usrp.g=
et_rx_sensor(&quot;lo_locked&quot;).to_bool()<br>
&gt; &gt; !=3D<br>
&gt; &gt; &gt; &gt; True:<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0con=
tinue<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while recv_samps =
&lt; self.samples:<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sam=
ps =3D self.streamer_rx.recv(self.recv_buff,<br>
&gt; &gt; &gt; &gt; &gt; self.metadata_rx)<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if =
self.metadata_rx.error_code !=3D<br>
&gt; &gt; &gt; &gt; &gt; lib.types.rx_metadata_error_code.none:<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0print(self.metadata_rx.strerror())<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if =
samps:<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0real_samps =3D min(self.samples - recv_samps,<br>
&gt; &gt; &gt; &gt; samps)<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0result[:, recv_samps:recv_samps + real_samps]<br>
&gt; &gt; =3D<br>
&gt; &gt; &gt; &gt; &gt; self.recv_buff[:, 0:real_samps]<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0recv_samps +=3D real_samps<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#print (self.usrp=
.get_rx_sensor(&#39;rssi&#39;))<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.stream_cmd.t=
ime_spec =3D lib.types.time_spec(0)<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.streamer_rx.=
issue_stream_cmd(self.stream_cmd)<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0complex_buffs=3Dn=
p.append(complex_buffs,result).ravel()<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0correct_result=3D=
result<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0correct_result_1=
=3Dresult-<br>
&gt; &gt; &gt; &gt; &gt; (np.mean(result.real)+np.mean(result.imag)*1j)<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0correct_result.re=
al=3Dresult.real-np.mean(result.real)<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0correct_result.im=
ag =3D result.imag -<br>
&gt; &gt; np.mean(result.imag)<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PSD =3D=C2=A0 sel=
f.fft_test(result)<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#PSD[8188:8202]=
=3Dnp.mean(PSD[8180:8188])<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0buffs =3D np.appe=
nd(buffs,PSD)<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0return complex_buffs,<br>
&gt; &gt; &gt; &gt; &gt; buffs#np.append(buffs[value.samples:],buffs[:value=
.samples])<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; _______________________________________________<br=
>
&gt; &gt; &gt; &gt; &gt; USRP-users mailing list<br>
&gt; &gt; &gt; &gt; &gt; <a href=3D"mailto:USRP-users@lists.ettus.com" targ=
et=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; <br>
<br>
</blockquote></div>

--0000000000002f3e4d0588a43724--


--===============4512546228995004976==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4512546228995004976==--

