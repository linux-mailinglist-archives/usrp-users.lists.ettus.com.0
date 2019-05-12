Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D25C1AC54
	for <lists+usrp-users@lfdr.de>; Sun, 12 May 2019 15:21:22 +0200 (CEST)
Received: from [::1] (port=52806 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hPoPj-00085C-Ti; Sun, 12 May 2019 09:21:15 -0400
Received: from mail-lj1-f177.google.com ([209.85.208.177]:41252)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <adray0001@gmail.com>) id 1hPoPB-0007x5-1Y
 for usrp-users@lists.ettus.com; Sun, 12 May 2019 09:21:11 -0400
Received: by mail-lj1-f177.google.com with SMTP id k8so8635439lja.8
 for <usrp-users@lists.ettus.com>; Sun, 12 May 2019 06:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=9YDWHfmXkasemQXFIOaJc6BgFqHDO8Wy/U09Wo5D4Qk=;
 b=o5NIqpVzsLmHZ3WTkSj/3lXqE99CD6VMWY5KlxN55K9abMp/LXWhqVj/JuikfyC0Sr
 VVbaZkDHWvvu7ojBQ9XlW0uu43jxkg/v+0tdYDUMu5ecpUDdvesDrT3Cjuh5vAdGhfgq
 GAh4Z07ZGk21soxyX50554IBI8TdU9UxqU8zhpYgsmjoqr9cHNRWHQfL+38Z4yiJu4Zj
 VquTkrFNXfjxoj1DUZ1/z+jba1kKtHS0AwJXIvwQ4+QPkGSCeu7bOd+ZYs7gLCVpZ9j+
 3TmfxnYe/zpUn7c3gi7xkBphbx9sG9qjvk0qJ4kl7vY+GnvRHv6QE5nzPMyWAtWoT8jO
 L1aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=9YDWHfmXkasemQXFIOaJc6BgFqHDO8Wy/U09Wo5D4Qk=;
 b=SAZLTWfEWaUY14rs2LAdecvDLFtAKvvqquF/kiXDnJSkwAPCX52gPJf9s3wNK6LvpP
 c9yTqlu7mMPhMJKpebvbwl9n5BU2wfTHFtoxKbiKmEilzXv+W77kwkqxvSoApbYW3K4X
 y+vsT2Bv6Aua6aDA5sjaxyWZzaSsD7tDTZ4yLCF1sjEmgq01GzsJBLZxtvwQoJgXkdY7
 JHAiHGeRdzvQpxr7dV8NDawUMQa9wM5QJ5d8WC4/ZCm4+r+lvfHJku1nuAjjGguOcmbh
 yQkKW3NUCEI8x/oVuFoVZVmaRIc5dzMnKM2T2R/mXxEWE7BDXjXIuJPNPLJDRrPcqU2a
 H8lg==
X-Gm-Message-State: APjAAAUCUFZfZ2LxO7XWWrge2/NTlstaSvao2qw9DH0yr2s0WkvrJgdl
 hW0v21Mkh1y9ztO6tnAxaM1xaeXqNUC7g/s0MYs=
X-Google-Smtp-Source: APXvYqw9OD/jcwymaNHM5RgLpk5G5cTJmVP/VPXXm49G+Ze0/UsThMsdG27tHcKlkQGGtY6DiQSmtrMaeSXHtIVEng4=
X-Received: by 2002:a2e:97d8:: with SMTP id m24mr1923757ljj.52.1557667199581; 
 Sun, 12 May 2019 06:19:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxuCDNGcewqw7Y6A=a-cgU8DN9s6Sbg7JVSHbuYHJBD=hA@mail.gmail.com>
 <5db613d9e0f5e53ad04b8e730a3aa4d9b25df12c.camel@ettus.com>
 <CAPRRyxtWDcpUEoJF6teLPVN8nrNXEuH0HULt2orMetOvCzEf8w@mail.gmail.com>
 <03752f22403f1915dd13039b82d10ca12ca69458.camel@ettus.com>
 <CAPRRyxvntD=kxZc6xnAx3HYRBVxpTrzCwYLOg74t1rRzSapWeg@mail.gmail.com>
 <9472ddef448b23a98a4b80e14151ad48206c534a.camel@ettus.com>
 <CAPRRyxvqe-n9W12pK4uQJxkuVy7c2XY+zyif=mAjA0+pBDaGNw@mail.gmail.com>
 <26c877406a7aaa5a4ce9a775bfc5322019b907ea.camel@ettus.com>
 <3034c6f859aca3fa5aa6f053fef111025a6c52e6.camel@ettus.com>
 <CAPRRyxs4k5WJfbmwpTyhQr+z6RFriEsUYXjr2mP988EDCV9Onw@mail.gmail.com>
 <e38e049e720494152d3ac8210322f040d4754e04.camel@ettus.com>
In-Reply-To: <e38e049e720494152d3ac8210322f040d4754e04.camel@ettus.com>
Date: Sun, 12 May 2019 13:19:48 +0300
Message-ID: <CAPRRyxueFt78uEXLRcYU97u2iuJmmyPR96=3DKTyPspNA61__Q@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============2930448814474338281=="
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

--===============2930448814474338281==
Content-Type: multipart/alternative; boundary="0000000000001c025b0588b0a8cf"

--0000000000001c025b0588b0a8cf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I think yes. If I had not received a certain number of samples, I would
have had errors with their further recording and processing. Since I attach
to this value throughout the entire program. If you have any suggestions on
how to verify this, I will be grateful.

=D0=B2=D1=81, 12 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 15:29, Marcus M=C3=
=BCller <marcus.mueller@ettus.com>:

> Hm, are you 100% sure that you really received as many samples as you
> ordered before?
>
>
> On Sun, 2019-05-12 at 12:41 +0300, Ivan Zahartchuk wrote:
> > Good morning. Thanks for your answers, I fixed the record in the data
> > array. But it did not help me. But I noticed that everything works
> > for me when I add a cycle
> >   while samps:
> >                  samps =3D self.streamer_rx.recv (self.recv_buff,
> > self.metadata_rx)
> > after
> > self.stream_cmd =3D lib.types.stream_cmd
> > (lib.types.stream_mode.stop_cont)
> >              self.streamer_rx.issue_stream_cmd (self.stream_cmd).
> > I don=E2=80=99t fully understand why this cycle after closing reads and
> > besides it very much slows down the work of the program, which for me
> > is a critical moment.
> >
> >
> > def test_reciev_2(self, freq, bandwich):
> >     complex_buffs =3D np.empty((len([0]), self.samples * len(freq)))
> >     buffs =3D np.empty((len([0]), self.samples * len(freq)))
> >     result =3D np.empty((len([0]), self.samples), dtype=3Dnp.complex64)
> >
> >     for i, freqq in enumerate(freq):
> >
> >         recv_samps =3D 0
> >         # self.usrp.set_rx_rate(bandwich[i])
> >         k =3D uhd.types.TuneRequest(freqq)
> >         # k.args(uhd.types.device_addr("mode_n=3Dinteger"))
> >         self.usrp.set_rx_freq(k)
> >         self.stream_cmd =3D
> > uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)
> >         self.stream_cmd.stream_now =3D True
> >         self.streamer_rx.issue_stream_cmd(self.stream_cmd)
> >         while self.usrp.get_rx_sensor("lo_locked").to_bool() !=3D True:
> >             continue
> >
> >         samps =3D np.array([], dtype=3Dnp.complex64)
> >         while recv_samps < self.samples:
> >
> >             samps =3D self.streamer_rx.recv(self.recv_buff,
> > self.metadata_rx)
> >             if self.metadata_rx.error_code !=3D
> > lib.types.rx_metadata_error_code.none:
> >                 print(self.metadata_rx.strerror())
> >             if samps:
> >                 real_samps =3D min(self.samples - recv_samps, samps)
> >                 result[:, recv_samps:recv_samps + real_samps] =3D
> > self.recv_buff[:, 0:real_samps]
> >                 recv_samps +=3D real_samps
> >         # print (self.usrp.get_rx_sensor('rssi'))
> >         # print(self.streamer_rx.get_max_num_samps())
> >
> >         # self.stream_cmd.time_spec =3D lib.types.time_spec(0)
> >         self.stream_cmd =3D
> > lib.types.stream_cmd(lib.types.stream_mode.stop_cont)
> >         self.streamer_rx.issue_stream_cmd(self.stream_cmd)
> >
> >         while samps:
> >             samps =3D self.streamer_rx.recv(self.recv_buff,
> > self.metadata_rx)
> >
> >         #complex_buffs =3D np.append(complex_buffs, result).ravel()
> >         # correct_result=3Dresult
> >         #correct_result_1 =3D result - (np.mean(result.real) +
> > np.mean(result.imag) * 1j)
> >         # correct_result.real=3Dresult.real-np.mean(result.real)
> >         # correct_result.imag =3D result.imag - np.mean(result.imag)
> >
> >         PSD =3D self.fft_test(result)
> >
> >         # PSD[8188:8202]=3Dnp.mean(PSD[8180:8188])
> >
> >         buffs[:, i * value.samples:value.samples * i + value.samples]
> > =3D PSD[:, 0:value.samples]
> >
> >     return complex_buffs, buffs.ravel()
> >
> > =D0=B2=D1=81, 12 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 02:35, Marcus M=
=C3=BCller <marcus.mueller@ettus.com>:
> > > Ah, I see you think that this burst can't be too hard on your
> > > computer,
> > > because it arrives "at once"? That's not the case.
> > > On Sun, 2019-05-12 at 01:18 +0200, Marcus M=C3=BCller wrote:
> > > > Um, sorry, I don't understand your sentence. Of course we have to
> > > > care
> > > > about these samples. Otherwise, we get an overflow. That is
> > > literally
> > > > what overflow means: Samples not getting received by the program
> > > > using
> > > > UHD in time before a buffer overflows.
> > > >
> > > > On Sat, 2019-05-11 at 22:29 +0300, Ivan Zahartchuk wrote:
> > > > > No, I meant that all system performance is enabled only when we
> > > > > make
> > > > > a request and not all the time. And we no longer care what we
> > > do
> > > > > next
> > > > > with these samples, they are just an array and the board does
> > > not
> > > > > require constant reading.
> > > > >
> > > > > =D0=B2=D1=81, 12 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 01:03, Ma=
rcus M=C3=BCller <
> > > marcus.mueller@ettus.com
> > > > > >:
> > > > > > I'm not quite sure how you come to the conclusion that we
> > > > > > wouldn't
> > > > > > be
> > > > > > tied to system performance in that case: that number of
> > > samples
> > > > > > still
> > > > > > needs to be received by the software running on the computer.
> > > > > >
> > > > > > Best regards,
> > > > > > Marcus
> > > > > >
> > > > > > On Sat, 2019-05-11 at 20:39 +0300, Ivan Zahartchuk wrote:
> > > > > > > Thanks for the help. I will try to fix everything tomorrow
> > > and
> > > > > > see
> > > > > > > the result. But tell me, maybe I don=E2=80=99t fully understa=
nd how
> > > > > > > num_sams_and_done works. If I understand correctly, this
> > > method
> > > > > > does
> > > > > > > not send a continuous stream of data but simply gives a
> > > certain
> > > > > > > number of samples upon request. And in this case, we are
> > > not
> > > > > > > tied
> > > > > > to
> > > > > > > system performance. Maybe I do not understand this. Could
> > > you
> > > > > > clarify
> > > > > > > this?
> > > > > > >
> > > > > > > =D1=81=D0=B1, 11 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 23:19=
, Marcus M=C3=BCller <
> > > > > > marcus.mueller@ettus.com>:
> > > > > > > > Dear Ivan,
> > > > > > > >
> > > > > > > > On Sat, 2019-05-11 at 20:00 +0300, Ivan Zahartchuk wrote:
> > > > > > > > > Sorry I did not specify. When working with the
> > > start_cont
> > > > > > mode
> > > > > > > > with a
> > > > > > > > > frequency of more than 5 MHz, I have an overflow
> > > error.
> > > > > > > >
> > > > > > > > Which probably happens due to the inefficient way you
> > > handle
> > > > > > the
> > > > > > > > data;
> > > > > > > > your program simply is too slow.
> > > > > > > >
> > > > > > > > > That leads to a chaotic change in the spectrum. I agree
> > > > > > > > > about
> > > > > > the
> > > > > > > > > wrong allocation of memory, but I created my own data
> > > array
> > > > > > and
> > > > > > > > ran
> > > > > > > > > it through the whole chain of changes and additions and
> > > had
> > > > > > what
> > > > > > > > I
> > > > > > > > > expected at the output.
> > > > > > > >
> > > > > > > > Huh? When using offline data, your computationally load
> > > > > > > > doesn't
> > > > > > > > matter;
> > > > > > > > I'm not sure I'm understanding you correctly here!
> > > > > > > >
> > > > > > > > > Moreover, the data array was much more than what I get
> > > from
> > > > > > the
> > > > > > > > > board. In this regard, I decided that the matter is in
> > > the
> > > > > > > > reading
> > > > > > > > > from the board.
> > > > > > > >
> > > > > > > > I'll allow myself to doubt that: Again, the fact that
> > > your
> > > > > > > > data
> > > > > > > > array
> > > > > > > > runs through smoothly is no indication for your software
> > > > > > > > being
> > > > > > fast
> > > > > > > > enough to keep up with the torrent of samples UHD will
> > > give
> > > > > > you!
> > > > > > > > When
> > > > > > > > it doesn't keep up, you see exactly what you're
> > > describing:
> > > > > > > > UHD
> > > > > > > > reporting overflows due to your software not fetching
> > > samples
> > > > > > fast
> > > > > > > > enough. Overflows aren't UHD bugs, they are problems in
> > > the
> > > > > > > > way
> > > > > > you
> > > > > > > > use
> > > > > > > > UHD!
> > > > > > > >
> > > > > > > > >  I have seen examples, but start_cont mode is used
> > > there
> > > > > > > > > and
> > > > > > > > there
> > > > > > > > > are not so many frequency adjustments. Therefore, I
> > > decided
> > > > > > to
> > > > > > > > use
> > > > > > > > > the num_sams_and_done mode, but there is also a problem
> > > > > > > > > with
> > > > > > it
> > > > > > > > which
> > > > > > > > > is described in the previous message. If you have more
> > > > > > > > suggestions, I
> > > > > > > > > will be very grateful to you.
> > > > > > > >
> > > > > > > > Well, exactly what I wrote in my previous mail: you need
> > > to
> > > > > > make
> > > > > > > > your
> > > > > > > > software fast enough. Preallocate the buffer; don't
> > > append to
> > > > > > its
> > > > > > > > end.
> > > > > > > >
> > > > > > > > Aside from that, do some profiling. Under linux, `perf
> > > top
> > > > > > > > -ag
> > > > > > > > python
> > > > > > > > yourscript.py` is your friend to figure out where your
> > > > > > > > program
> > > > > > > > spends
> > > > > > > > its CPU cycles.
> > > > > > > >
> > > > > > > > Best regards,
> > > > > > > > Marcus
> > > > > > > >
> > > > > > > > > =D1=81=D0=B1, 11 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 2=
2:27, Marcus M=C3=BCller <
> > > > > > > > marcus.mueller@ettus.com>:
> > > > > > > > > > Dear Ivan,
> > > > > > > > > >
> > > > > > > > > > it's not clear what you've modified. I'm not aware of
> > > any
> > > > > > UHD
> > > > > > > > > > function
> > > > > > > > > > that restricts any frequency to 5 MHz.
> > > > > > > > > > Could you elaborate on which code you're basing this
> > > on?
> > > > > > > > > >
> > > > > > > > > > Also, while I really like the Python interface, if
> > > you're
> > > > > > > > really
> > > > > > > > > > after
> > > > > > > > > > high-rate sampling, it might simply not be the
> > > optimal
> > > > > > thing to
> > > > > > > > > > use:
> > > > > > > > > > You'd have to be very careful in Pythonland to not
> > > run
> > > > > > > > > > into
> > > > > > > > > > performance
> > > > > > > > > > problems once you've gotten the samples from UHD:
> > > > > > > > > >
> > > > > > > > > >
> > > > > >  complex_buffs=3Dnp.append(complex_buffs,result).ravel()
> > > > > > > > > > A very bad idea. You're constantly re-allocating
> > > buffers
> > > > > > here.
> > > > > > > > > > Don't do
> > > > > > > > > > that. No matter in which programming language you'd
> > > do
> > > > > > this,
> > > > > > > > you'd
> > > > > > > > > > make
> > > > > > > > > > sure that the buffer is large enough for your data
> > > > > > collection
> > > > > > > > to
> > > > > > > > > > begin
> > > > > > > > > > with and then tell the UHD library to fill the
> > > > > > > > > > appropriate
> > > > > > part
> > > > > > > > in
> > > > > > > > > > that
> > > > > > > > > > buffer to avoid a) having to ask for a larger buffer
> > > > > > regularly
> > > > > > > > and
> > > > > > > > > > b)
> > > > > > > > > > avoid copying data.
> > > > > > > > > > Asking for an appended version of your last buffer
> > > means
> > > > > > that
> > > > > > > > > > something
> > > > > > > > > > has to allocate a larger buffer =E2=80=93 which comes a=
t very
> > > > > > > > > > large
> > > > > > > > cost!
> > > > > > > > > > Best regards,
> > > > > > > > > > Marcus
> > > > > > > > > >
> > > > > > > > > > On Sat, 2019-05-11 at 21:31 +0300, Ivan Zahartchuk
> > > via
> > > > > > USRP-
> > > > > > > > users
> > > > > > > > > > wrote:
> > > > > > > > > > > Hello. My task is to make a broadband spectrum
> > > analyzer
> > > > > > on
> > > > > > > > the
> > > > > > > > > > usrp
> > > > > > > > > > > b200 board. For this, the standard functions for
> > > > > > > > > > > reading
> > > > > > > > samples
> > > > > > > > > > in
> > > > > > > > > > > python are not suitable for me. Therefore, I edited
> > > > > > > > > > > them.
> > > > > > > > When
> > > > > > > > > > > reading samples using the start_con method, I
> > > cannot
> > > > > > specify
> > > > > > > > a
> > > > > > > > > > band
> > > > > > > > > > > greater than 5 MHz. Therefore, I use the
> > > > > > num_sams_and_done
> > > > > > > > > > method.
> > > > > > > > > > > But I have problems with him. The fact is that my
> > > > > > frequency
> > > > > > > > which
> > > > > > > > > > I
> > > > > > > > > > > know appears in the wrong place. For example, I
> > > > > > > > > > > generate
> > > > > > a
> > > > > > > > > > frequency
> > > > > > > > > > > of 910 MHz and it appears at 930 MHz (with a
> > > bandwidth
> > > > > > > > > > > of
> > > > > > 20
> > > > > > > > > > MHz). I
> > > > > > > > > > > can not understand what caused it. Here are my
> > > reading
> > > > > > > > functions
> > > > > > > > > > in
> > > > > > > > > > > two ways. I would be extremely grateful for the
> > > help.
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > > def test_reciev(self,freq,bandwich):
> > > > > > > > > > >     complex_buffs=3Dnp.array([])
> > > > > > > > > > >     buffs =3D np.array([])
> > > > > > > > > > >     result =3D np.empty((len([0]), self.samples),
> > > > > > > > > > dtype=3Dnp.complex64)
> > > > > > > > > > >     for i, freqq in enumerate(freq):
> > > > > > > > > > >
> > > > > > > > > > >         recv_samps =3D 0
> > > > > > > > > > >         #self.usrp.set_rx_rate(bandwich[i])
> > > > > > > > > > >         k=3Duhd.types.TuneRequest(freqq)
> > > > > > > > > > >
> > >  #k.args(uhd.types.device_addr("mode_n=3Dinteger")
> > > > > > > > > > > )
> > > > > > > > > > >         self.usrp.set_rx_freq(k)
> > > > > > > > > > >         self.stream_cmd =3D
> > > > > > > > > > >
> > > uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)
> > > > > > > > > > >         self.stream_cmd.stream_now =3D True
> > > > > > > > > > >
> > > > > >  self.streamer_rx.issue_stream_cmd(self.stream_cmd)
> > > > > > > > > > >         while
> > > > > > self.usrp.get_rx_sensor("lo_locked").to_bool()
> > > > > > > > !=3D
> > > > > > > > > > True:
> > > > > > > > > > >             continue
> > > > > > > > > > >
> > > > > > > > > > >         samps =3D np.array([], dtype=3Dnp.complex64)
> > > > > > > > > > >         while recv_samps < self.samples:
> > > > > > > > > > >
> > > > > > > > > > >             samps =3D
> > > > > > > > > > > self.streamer_rx.recv(self.recv_buff,
> > > > > > > > > > > self.metadata_rx)
> > > > > > > > > > >             if self.metadata_rx.error_code !=3D
> > > > > > > > > > > lib.types.rx_metadata_error_code.none:
> > > > > > > > > > >                 print(self.metadata_rx.strerror())
> > > > > > > > > > >             if samps:
> > > > > > > > > > >                 real_samps =3D min(self.samples -
> > > > > > recv_samps,
> > > > > > > > > > samps)
> > > > > > > > > > >                 result[:, recv_samps:recv_samps +
> > > > > > real_samps]
> > > > > > > > =3D
> > > > > > > > > > > self.recv_buff[:, 0:real_samps]
> > > > > > > > > > >                 recv_samps +=3D real_samps
> > > > > > > > > > >         #print (self.usrp.get_rx_sensor('rssi'))
> > > > > > > > > > >
> > >  #print(self.streamer_rx.get_max_num_samps())
> > > > > > > > > > >         #while samps:
> > > > > > > > > > >         #    samps =3D
> > > > > > self.streamer_rx.recv(self.recv_buff,
> > > > > > > > > > > self.metadata_rx)
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > >         #self.stream_cmd.time_spec =3D
> > > > > > lib.types.time_spec(0)
> > > > > > > > > > >         self.stream_cmd =3D
> > > > > > > > > > >
> > > lib.types.stream_cmd(lib.types.stream_mode.stop_cont)
> > > > > > > > > > >
> > > > > >  self.streamer_rx.issue_stream_cmd(self.stream_cmd)
> > > > > > > > > > >
> > > > > >  complex_buffs=3Dnp.append(complex_buffs,result).ravel()
> > > > > > > > > > >         #correct_result=3Dresult
> > > > > > > > > > >         correct_result_1=3Dresult-
> > > > > > > > > > > (np.mean(result.real)+np.mean(result.imag)*1j)
> > > > > > > > > > >         #correct_result.real=3Dresult.real-
> > > > > > np.mean(result.real)
> > > > > > > > > > >         #correct_result.imag =3D result.imag -
> > > > > > > > np.mean(result.imag)
> > > > > > > > > > >         PSD =3D  self.fft_test(result)
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > >         #PSD[8188:8202]=3Dnp.mean(PSD[8180:8188])
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > >         buffs =3D np.append(buffs,PSD)
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > >     return complex_buffs,
> > > > > > > > > > >
> > > > > > buffs#np.append(buffs[value.samples:],buffs[:value.samples])
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > > def test_reciev(self,freq,bandwich):
> > > > > > > > > > >     complex_buffs=3Dnp.array([])
> > > > > > > > > > >     buffs =3D np.array([])
> > > > > > > > > > >     result =3D np.empty((len([0]), self.samples),
> > > > > > > > > > dtype=3Dnp.complex64)
> > > > > > > > > > >     for i, freqq in enumerate(freq):
> > > > > > > > > > >
> > > > > > > > > > >         recv_samps =3D 0
> > > > > > > > > > >         #self.usrp.set_rx_rate(bandwich[i])
> > > > > > > > > > >         k=3Duhd.types.TuneRequest(freqq)
> > > > > > > > > > >
> > >  #k.args(uhd.types.device_addr("mode_n=3Dinteger")
> > > > > > > > > > > )
> > > > > > > > > > >         self.usrp.set_rx_freq(k)
> > > > > > > > > > >
> > > > > > > > > > >         while
> > > > > > self.usrp.get_rx_sensor("lo_locked").to_bool()
> > > > > > > > !=3D
> > > > > > > > > > True:
> > > > > > > > > > >             continue
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > >         while recv_samps < self.samples:
> > > > > > > > > > >
> > > > > > > > > > >             samps =3D
> > > > > > > > > > > self.streamer_rx.recv(self.recv_buff,
> > > > > > > > > > > self.metadata_rx)
> > > > > > > > > > >             if self.metadata_rx.error_code !=3D
> > > > > > > > > > > lib.types.rx_metadata_error_code.none:
> > > > > > > > > > >                 print(self.metadata_rx.strerror())
> > > > > > > > > > >             if samps:
> > > > > > > > > > >                 real_samps =3D min(self.samples -
> > > > > > recv_samps,
> > > > > > > > > > samps)
> > > > > > > > > > >                 result[:, recv_samps:recv_samps +
> > > > > > real_samps]
> > > > > > > > =3D
> > > > > > > > > > > self.recv_buff[:, 0:real_samps]
> > > > > > > > > > >                 recv_samps +=3D real_samps
> > > > > > > > > > >         #print (self.usrp.get_rx_sensor('rssi'))
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > >         self.stream_cmd.time_spec =3D
> > > > > > lib.types.time_spec(0)
> > > > > > > > > > >
> > > > > >  self.streamer_rx.issue_stream_cmd(self.stream_cmd)
> > > > > > > > > > >
> > > > > >  complex_buffs=3Dnp.append(complex_buffs,result).ravel()
> > > > > > > > > > >         correct_result=3Dresult
> > > > > > > > > > >         correct_result_1=3Dresult-
> > > > > > > > > > > (np.mean(result.real)+np.mean(result.imag)*1j)
> > > > > > > > > > >         correct_result.real=3Dresult.real-
> > > > > > np.mean(result.real)
> > > > > > > > > > >         correct_result.imag =3D result.imag -
> > > > > > > > np.mean(result.imag)
> > > > > > > > > > >         PSD =3D  self.fft_test(result)
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > >         #PSD[8188:8202]=3Dnp.mean(PSD[8180:8188])
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > >         buffs =3D np.append(buffs,PSD)
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > >     return complex_buffs,
> > > > > > > > > > >
> > > > > > buffs#np.append(buffs[value.samples:],buffs[:value.samples])
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > > _______________________________________________
> > > > > > > > > > > USRP-users mailing list
> > > > > > > > > > > USRP-users@lists.ettus.com
> > > > > > > > > > >
> > > > > >
> > > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> > >
>
>

--0000000000001c025b0588b0a8cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I think yes. If I had not received a cert=
ain number of samples, I would have had errors with their further recording=
 and processing. Since I attach to this value throughout the entire program=
. If you have any suggestions on how to verify this, I will be grateful.<br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">=D0=B2=D1=81, 12 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 15:29, Marcu=
s M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com">marcus.muelle=
r@ettus.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Hm, are you 100% sure that you really received as many samples as you<=
br>
ordered before?<br>
<br>
<br>
On Sun, 2019-05-12 at 12:41 +0300, Ivan Zahartchuk wrote:<br>
&gt; Good morning. Thanks for your answers, I fixed the record in the data<=
br>
&gt; array. But it did not help me. But I noticed that everything works<br>
&gt; for me when I add a cycle<br>
&gt;=C2=A0 =C2=A0while samps:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 samps =
=3D self.streamer_rx.recv (self.recv_buff,<br>
&gt; self.metadata_rx)<br>
&gt; after<br>
&gt; self.stream_cmd =3D lib.types.stream_cmd<br>
&gt; (lib.types.stream_mode.stop_cont)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.streamer_rx.issue=
_stream_cmd (self.stream_cmd).<br>
&gt; I don=E2=80=99t fully understand why this cycle after closing reads an=
d<br>
&gt; besides it very much slows down the work of the program, which for me<=
br>
&gt; is a critical moment.<br>
&gt; <br>
&gt; <br>
&gt; def test_reciev_2(self, freq, bandwich):<br>
&gt;=C2=A0 =C2=A0 =C2=A0complex_buffs =3D np.empty((len([0]), self.samples =
* len(freq)))<br>
&gt;=C2=A0 =C2=A0 =C2=A0buffs =3D np.empty((len([0]), self.samples * len(fr=
eq)))<br>
&gt;=C2=A0 =C2=A0 =C2=A0result =3D np.empty((len([0]), self.samples), dtype=
=3Dnp.complex64)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0for i, freqq in enumerate(freq):<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0recv_samps =3D 0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# self.usrp.set_rx_rate(bandwich[i])<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0k =3D uhd.types.TuneRequest(freqq)<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# k.args(uhd.types.device_addr(&quot;=
mode_n=3Dinteger&quot;))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.usrp.set_rx_freq(k)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.stream_cmd =3D<br>
&gt; uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.stream_cmd.stream_now =3D True<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.streamer_rx.issue_stream_cmd(sel=
f.stream_cmd)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while self.usrp.get_rx_sensor(&quot;l=
o_locked&quot;).to_bool() !=3D True:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0samps =3D np.array([], dtype=3Dnp.com=
plex64)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while recv_samps &lt; self.samples:<b=
r>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0samps =3D self.streamer=
_rx.recv(self.recv_buff,<br>
&gt; self.metadata_rx)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if self.metadata_rx.err=
or_code !=3D<br>
&gt; lib.types.rx_metadata_error_code.none:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0print(sel=
f.metadata_rx.strerror())<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if samps:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0real_samp=
s =3D min(self.samples - recv_samps, samps)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0result[:,=
 recv_samps:recv_samps + real_samps] =3D<br>
&gt; self.recv_buff[:, 0:real_samps]<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0recv_samp=
s +=3D real_samps<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# print (self.usrp.get_rx_sensor(&#39=
;rssi&#39;))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# print(self.streamer_rx.get_max_num_=
samps())<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# self.stream_cmd.time_spec =3D lib.t=
ypes.time_spec(0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.stream_cmd =3D<br>
&gt; lib.types.stream_cmd(lib.types.stream_mode.stop_cont)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.streamer_rx.issue_stream_cmd(sel=
f.stream_cmd)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while samps:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0samps =3D self.streamer=
_rx.recv(self.recv_buff,<br>
&gt; self.metadata_rx)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#complex_buffs =3D np.append(complex_=
buffs, result).ravel()<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# correct_result=3Dresult<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#correct_result_1 =3D result - (np.me=
an(result.real) +<br>
&gt; np.mean(result.imag) * 1j)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# correct_result.real=3Dresult.real-n=
p.mean(result.real)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# correct_result.imag =3D result.imag=
 - np.mean(result.imag)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PSD =3D self.fft_test(result)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# PSD[8188:8202]=3Dnp.mean(PSD[8180:8=
188])<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0buffs[:, i * value.samples:value.samp=
les * i + value.samples]<br>
&gt; =3D PSD[:, 0:value.samples]<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0return complex_buffs, buffs.ravel()<br>
&gt; <br>
&gt; =D0=B2=D1=81, 12 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 02:35, Marcus =
M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com" target=3D"_blan=
k">marcus.mueller@ettus.com</a>&gt;:<br>
&gt; &gt; Ah, I see you think that this burst can&#39;t be too hard on your=
<br>
&gt; &gt; computer,<br>
&gt; &gt; because it arrives &quot;at once&quot;? That&#39;s not the case.<=
br>
&gt; &gt; On Sun, 2019-05-12 at 01:18 +0200, Marcus M=C3=BCller wrote:<br>
&gt; &gt; &gt; Um, sorry, I don&#39;t understand your sentence. Of course w=
e have to<br>
&gt; &gt; &gt; care<br>
&gt; &gt; &gt; about these samples. Otherwise, we get an overflow. That is<=
br>
&gt; &gt; literally<br>
&gt; &gt; &gt; what overflow means: Samples not getting received by the pro=
gram<br>
&gt; &gt; &gt; using<br>
&gt; &gt; &gt; UHD in time before a buffer overflows.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; On Sat, 2019-05-11 at 22:29 +0300, Ivan Zahartchuk wrote:<br=
>
&gt; &gt; &gt; &gt; No, I meant that all system performance is enabled only=
 when we<br>
&gt; &gt; &gt; &gt; make<br>
&gt; &gt; &gt; &gt; a request and not all the time. And we no longer care w=
hat we<br>
&gt; &gt; do<br>
&gt; &gt; &gt; &gt; next<br>
&gt; &gt; &gt; &gt; with these samples, they are just an array and the boar=
d does<br>
&gt; &gt; not<br>
&gt; &gt; &gt; &gt; require constant reading.<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; =D0=B2=D1=81, 12 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2=
 01:03, Marcus M=C3=BCller &lt;<br>
&gt; &gt; <a href=3D"mailto:marcus.mueller@ettus.com" target=3D"_blank">mar=
cus.mueller@ettus.com</a><br>
&gt; &gt; &gt; &gt; &gt;:<br>
&gt; &gt; &gt; &gt; &gt; I&#39;m not quite sure how you come to the conclus=
ion that we<br>
&gt; &gt; &gt; &gt; &gt; wouldn&#39;t<br>
&gt; &gt; &gt; &gt; &gt; be<br>
&gt; &gt; &gt; &gt; &gt; tied to system performance in that case: that numb=
er of<br>
&gt; &gt; samples<br>
&gt; &gt; &gt; &gt; &gt; still<br>
&gt; &gt; &gt; &gt; &gt; needs to be received by the software running on th=
e computer.<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; Best regards,<br>
&gt; &gt; &gt; &gt; &gt; Marcus<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; On Sat, 2019-05-11 at 20:39 +0300, Ivan Zahartchuk=
 wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; Thanks for the help. I will try to fix everyt=
hing tomorrow<br>
&gt; &gt; and<br>
&gt; &gt; &gt; &gt; &gt; see<br>
&gt; &gt; &gt; &gt; &gt; &gt; the result. But tell me, maybe I don=E2=80=99=
t fully understand how<br>
&gt; &gt; &gt; &gt; &gt; &gt; num_sams_and_done works. If I understand corr=
ectly, this<br>
&gt; &gt; method<br>
&gt; &gt; &gt; &gt; &gt; does<br>
&gt; &gt; &gt; &gt; &gt; &gt; not send a continuous stream of data but simp=
ly gives a<br>
&gt; &gt; certain<br>
&gt; &gt; &gt; &gt; &gt; &gt; number of samples upon request. And in this c=
ase, we are<br>
&gt; &gt; not<br>
&gt; &gt; &gt; &gt; &gt; &gt; tied<br>
&gt; &gt; &gt; &gt; &gt; to<br>
&gt; &gt; &gt; &gt; &gt; &gt; system performance. Maybe I do not understand=
 this. Could<br>
&gt; &gt; you<br>
&gt; &gt; &gt; &gt; &gt; clarify<br>
&gt; &gt; &gt; &gt; &gt; &gt; this?<br>
&gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; =D1=81=D0=B1, 11 =D0=BC=D0=B0=D1=8F 2019 =D0=
=B3. =D0=B2 23:19, Marcus M=C3=BCller &lt;<br>
&gt; &gt; &gt; &gt; &gt; <a href=3D"mailto:marcus.mueller@ettus.com" target=
=3D"_blank">marcus.mueller@ettus.com</a>&gt;:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; Dear Ivan,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; On Sat, 2019-05-11 at 20:00 +0300, Ivan =
Zahartchuk wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Sorry I did not specify. When worki=
ng with the<br>
&gt; &gt; start_cont<br>
&gt; &gt; &gt; &gt; &gt; mode<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; with a<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; frequency of more than 5 MHz, I hav=
e an overflow<br>
&gt; &gt; error. <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; Which probably happens due to the ineffi=
cient way you<br>
&gt; &gt; handle<br>
&gt; &gt; &gt; &gt; &gt; the<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; data;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; your program simply is too slow.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; That leads to a chaotic change in t=
he spectrum. I agree<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; about<br>
&gt; &gt; &gt; &gt; &gt; the<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; wrong allocation of memory, but I c=
reated my own data<br>
&gt; &gt; array<br>
&gt; &gt; &gt; &gt; &gt; and<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; ran<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; it through the whole chain of chang=
es and additions and<br>
&gt; &gt; had<br>
&gt; &gt; &gt; &gt; &gt; what<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; I<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; expected at the output. <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; Huh? When using offline data, your compu=
tationally load<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; doesn&#39;t<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; matter;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; I&#39;m not sure I&#39;m understanding y=
ou correctly here! <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Moreover, the data array was much m=
ore than what I get<br>
&gt; &gt; from<br>
&gt; &gt; &gt; &gt; &gt; the<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; board. In this regard, I decided th=
at the matter is in<br>
&gt; &gt; the<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; reading<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; from the board.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; I&#39;ll allow myself to doubt that: Aga=
in, the fact that<br>
&gt; &gt; your<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; data<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; array<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; runs through smoothly is no indication f=
or your software<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; being<br>
&gt; &gt; &gt; &gt; &gt; fast<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; enough to keep up with the torrent of sa=
mples UHD will<br>
&gt; &gt; give<br>
&gt; &gt; &gt; &gt; &gt; you!<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; When<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; it doesn&#39;t keep up, you see exactly =
what you&#39;re<br>
&gt; &gt; describing:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; UHD<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; reporting overflows due to your software=
 not fetching<br>
&gt; &gt; samples<br>
&gt; &gt; &gt; &gt; &gt; fast<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; enough. Overflows aren&#39;t UHD bugs, t=
hey are problems in<br>
&gt; &gt; the<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; way<br>
&gt; &gt; &gt; &gt; &gt; you<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; use<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; UHD!<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 I have seen examples, but sta=
rt_cont mode is used<br>
&gt; &gt; there<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; and<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; there<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; are not so many frequency adjustmen=
ts. Therefore, I<br>
&gt; &gt; decided<br>
&gt; &gt; &gt; &gt; &gt; to<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; use<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; the num_sams_and_done mode, but the=
re is also a problem<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; with<br>
&gt; &gt; &gt; &gt; &gt; it<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; which<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; is described in the previous messag=
e. If you have more<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; suggestions, I<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; will be very grateful to you.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; Well, exactly what I wrote in my previou=
s mail: you need<br>
&gt; &gt; to<br>
&gt; &gt; &gt; &gt; &gt; make<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; your<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; software fast enough. Preallocate the bu=
ffer; don&#39;t<br>
&gt; &gt; append to<br>
&gt; &gt; &gt; &gt; &gt; its<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; end.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; Aside from that, do some profiling. Unde=
r linux, `perf<br>
&gt; &gt; top<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; -ag<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; python<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; yourscript.py` is your friend to figure =
out where your<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; program<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; spends<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; its CPU cycles.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; Best regards,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; Marcus<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; =D1=81=D0=B1, 11 =D0=BC=D0=B0=D1=8F=
 2019 =D0=B3. =D0=B2 22:27, Marcus M=C3=BCller &lt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; <a href=3D"mailto:marcus.mueller@ettus.c=
om" target=3D"_blank">marcus.mueller@ettus.com</a>&gt;:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Dear Ivan,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; it&#39;s not clear what you&#3=
9;ve modified. I&#39;m not aware of<br>
&gt; &gt; any<br>
&gt; &gt; &gt; &gt; &gt; UHD<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; function<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; that restricts any frequency t=
o 5 MHz.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Could you elaborate on which c=
ode you&#39;re basing this<br>
&gt; &gt; on?<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Also, while I really like the =
Python interface, if<br>
&gt; &gt; you&#39;re<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; really<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; after<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; high-rate sampling, it might s=
imply not be the<br>
&gt; &gt; optimal<br>
&gt; &gt; &gt; &gt; &gt; thing to<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; use:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; You&#39;d have to be very care=
ful in Pythonland to not<br>
&gt; &gt; run<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; into<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; performance<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; problems once you&#39;ve gotte=
n the samples from UHD:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 complex_buffs=3Dnp.append(complex_buffs,resu=
lt).ravel()<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; A very bad idea. You&#39;re co=
nstantly re-allocating<br>
&gt; &gt; buffers<br>
&gt; &gt; &gt; &gt; &gt; here.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Don&#39;t do<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; that. No matter in which progr=
amming language you&#39;d<br>
&gt; &gt; do<br>
&gt; &gt; &gt; &gt; &gt; this,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; you&#39;d<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; make<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; sure that the buffer is large =
enough for your data<br>
&gt; &gt; &gt; &gt; &gt; collection<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; to<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; begin<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; with and then tell the UHD lib=
rary to fill the<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; appropriate<br>
&gt; &gt; &gt; &gt; &gt; part<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; in<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; that<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; buffer to avoid a) having to a=
sk for a larger buffer<br>
&gt; &gt; &gt; &gt; &gt; regularly<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; and<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; b)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; avoid copying data.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Asking for an appended version=
 of your last buffer<br>
&gt; &gt; means<br>
&gt; &gt; &gt; &gt; &gt; that<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; something<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; has to allocate a larger buffe=
r =E2=80=93 which comes at very<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; large<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; cost!<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Best regards,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Marcus <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; On Sat, 2019-05-11 at 21:31 +0=
300, Ivan Zahartchuk<br>
&gt; &gt; via<br>
&gt; &gt; &gt; &gt; &gt; USRP-<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; users<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Hello. My task is to make=
 a broadband spectrum<br>
&gt; &gt; analyzer<br>
&gt; &gt; &gt; &gt; &gt; on<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; the<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; usrp<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; b200 board. For this, the=
 standard functions for<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; reading<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; samples<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; in<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; python are not suitable f=
or me. Therefore, I edited<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; them.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; When<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; reading samples using the=
 start_con method, I<br>
&gt; &gt; cannot<br>
&gt; &gt; &gt; &gt; &gt; specify<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; a<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; band<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; greater than 5 MHz. There=
fore, I use the<br>
&gt; &gt; &gt; &gt; &gt; num_sams_and_done<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; method.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; But I have problems with =
him. The fact is that my<br>
&gt; &gt; &gt; &gt; &gt; frequency<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; which<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; I<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; know appears in the wrong=
 place. For example, I<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; generate<br>
&gt; &gt; &gt; &gt; &gt; a<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; frequency<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; of 910 MHz and it appears=
 at 930 MHz (with a<br>
&gt; &gt; bandwidth<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; of<br>
&gt; &gt; &gt; &gt; &gt; 20<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; MHz). I<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; can not understand what c=
aused it. Here are my<br>
&gt; &gt; reading<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; functions<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; in<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; two ways. I would be extr=
emely grateful for the<br>
&gt; &gt; help.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; def test_reciev(self,freq=
,bandwich):<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0comple=
x_buffs=3Dnp.array([])<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0buffs =
=3D np.array([])<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0result=
 =3D np.empty((len([0]), self.samples),<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; dtype=3Dnp.complex64)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0for i,=
 freqq in enumerate(freq):<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0recv_samps =3D 0<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0#self.usrp.set_rx_rate(bandwich[i])<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0k=3Duhd.types.TuneRequest(freqq)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0<br>
&gt; &gt;=C2=A0 #k.args(uhd.types.device_addr(&quot;mode_n=3Dinteger&quot;)=
<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; )<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0self.usrp.set_rx_freq(k)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0self.stream_cmd =3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0self.stream_cmd.stream_now =3D True<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 self.streamer_rx.issue_stream_cmd(self.strea=
m_cmd)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0while<br>
&gt; &gt; &gt; &gt; &gt; self.usrp.get_rx_sensor(&quot;lo_locked&quot;).to_=
bool()<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; !=3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; True:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0continue<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0samps =3D np.array([], dtype=3Dnp.complex64)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0while recv_samps &lt; self.samples:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0samps =3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; self.streamer_rx.recv(sel=
f.recv_buff,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; self.metadata_rx)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0if self.metadata_rx.error_code !=3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; lib.types.rx_metadata_err=
or_code.none:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0print(self.metadata_rx.strerror())<br=
>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0if samps:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0real_samps =3D min(self.samples -<br>
&gt; &gt; &gt; &gt; &gt; recv_samps,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; samps)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0result[:, recv_samps:recv_samps +<br>
&gt; &gt; &gt; &gt; &gt; real_samps]<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; =3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; self.recv_buff[:, 0:real_=
samps]<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0recv_samps +=3D real_samps<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0#print (self.usrp.get_rx_sensor(&#39;rssi&#39;))<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0<br>
&gt; &gt;=C2=A0 #print(self.streamer_rx.get_max_num_samps())<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0#while samps:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0#=C2=A0 =C2=A0 samps =3D<br>
&gt; &gt; &gt; &gt; &gt; self.streamer_rx.recv(self.recv_buff,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; self.metadata_rx)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0#self.stream_cmd.time_spec =3D<br>
&gt; &gt; &gt; &gt; &gt; lib.types.time_spec(0)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0self.stream_cmd =3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; lib.types.stream_cmd(lib.types.stream_mode.stop_cont)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 self.streamer_rx.issue_stream_cmd(self.strea=
m_cmd)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 complex_buffs=3Dnp.append(complex_buffs,resu=
lt).ravel()<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0#correct_result=3Dresult<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0correct_result_1=3Dresult-<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; (np.mean(result.real)+np.=
mean(result.imag)*1j)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0#correct_result.real=3Dresult.real-<br>
&gt; &gt; &gt; &gt; &gt; np.mean(result.real)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0#correct_result.imag =3D result.imag -<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; np.mean(result.imag)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0PSD =3D=C2=A0 self.fft_test(result)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0#PSD[8188:8202]=3Dnp.mean(PSD[8180:8188])<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0buffs =3D np.append(buffs,PSD)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0return=
 complex_buffs,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; buffs#np.append(buffs[value.samples:],buffs[:value=
.samples])<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; def test_reciev(self,freq=
,bandwich):<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0comple=
x_buffs=3Dnp.array([])<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0buffs =
=3D np.array([])<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0result=
 =3D np.empty((len([0]), self.samples),<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; dtype=3Dnp.complex64)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0for i,=
 freqq in enumerate(freq):<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0recv_samps =3D 0<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0#self.usrp.set_rx_rate(bandwich[i])<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0k=3Duhd.types.TuneRequest(freqq)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0<br>
&gt; &gt;=C2=A0 #k.args(uhd.types.device_addr(&quot;mode_n=3Dinteger&quot;)=
<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; )<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0self.usrp.set_rx_freq(k)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0while<br>
&gt; &gt; &gt; &gt; &gt; self.usrp.get_rx_sensor(&quot;lo_locked&quot;).to_=
bool()<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; !=3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; True:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0continue<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0while recv_samps &lt; self.samples:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0samps =3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; self.streamer_rx.recv(sel=
f.recv_buff,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; self.metadata_rx)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0if self.metadata_rx.error_code !=3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; lib.types.rx_metadata_err=
or_code.none:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0print(self.metadata_rx.strerror())<br=
>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0if samps:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0real_samps =3D min(self.samples -<br>
&gt; &gt; &gt; &gt; &gt; recv_samps,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; samps)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0result[:, recv_samps:recv_samps +<br>
&gt; &gt; &gt; &gt; &gt; real_samps]<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; =3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; self.recv_buff[:, 0:real_=
samps]<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0recv_samps +=3D real_samps<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0#print (self.usrp.get_rx_sensor(&#39;rssi&#39;))<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0self.stream_cmd.time_spec =3D<br>
&gt; &gt; &gt; &gt; &gt; lib.types.time_spec(0)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 self.streamer_rx.issue_stream_cmd(self.strea=
m_cmd)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 complex_buffs=3Dnp.append(complex_buffs,resu=
lt).ravel()<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0correct_result=3Dresult<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0correct_result_1=3Dresult-<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; (np.mean(result.real)+np.=
mean(result.imag)*1j)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0correct_result.real=3Dresult.real-<br>
&gt; &gt; &gt; &gt; &gt; np.mean(result.real)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0correct_result.imag =3D result.imag -<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; np.mean(result.imag)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0PSD =3D=C2=A0 self.fft_test(result)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0#PSD[8188:8202]=3Dnp.mean(PSD[8180:8188])<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0buffs =3D np.append(buffs,PSD)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0return=
 complex_buffs,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; buffs#np.append(buffs[value.samples:],buffs[:value=
.samples])<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; _________________________=
______________________<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; USRP-users mailing list<b=
r>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <a href=3D"mailto:USRP-us=
ers@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; &gt; <br>
<br>
</blockquote></div>

--0000000000001c025b0588b0a8cf--


--===============2930448814474338281==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2930448814474338281==--

