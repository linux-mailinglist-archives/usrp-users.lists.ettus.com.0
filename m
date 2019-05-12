Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6161AB7E
	for <lists+usrp-users@lfdr.de>; Sun, 12 May 2019 11:42:55 +0200 (CEST)
Received: from [::1] (port=58244 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hPl0G-0000hY-C5; Sun, 12 May 2019 05:42:44 -0400
Received: from mail-lj1-f172.google.com ([209.85.208.172]:39142)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <adray0001@gmail.com>) id 1hPkzh-0000XZ-Qv
 for usrp-users@lists.ettus.com; Sun, 12 May 2019 05:42:40 -0400
Received: by mail-lj1-f172.google.com with SMTP id a10so457947ljf.6
 for <usrp-users@lists.ettus.com>; Sun, 12 May 2019 02:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=bw9/wbXh3SM1i3huUmWlmzjCe+SHmAhsj3oW/fA4R68=;
 b=F1SnAgQn5hbvuPmUskLGWvHnw1INtE9jwAVSGRKVV3pZqQaC6uGx2jsLJjmtS64ZTW
 metUMfmDOx2PPWNs1SGZkyzXgMEI0Ge4ZLLBbESPI2AXY1yuvYEX3xLNosq3sy/XiClJ
 +565Vck9C6ifC0YF5tZHJhf9Gy6HawqWCFntXMY9N1qupVdOif4n508tPXiuqwtJBoxH
 fGz1r6EjUKOqt6tiL2XeBAUo4kv+AZDPoSTDhEI5nLgqP1/GGis1VVs+VFOhqziHHmGA
 czBS/titKtp57INvg3JQeL45rt6tgITRTEpueSYTGnZBdIto5TljK0UXXFZR3RzjZgri
 yd7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=bw9/wbXh3SM1i3huUmWlmzjCe+SHmAhsj3oW/fA4R68=;
 b=qPxw/qwg2KccfTOBeyxbLf7p9ZS+dfWh3MC9Y++PTMD+WrvOuRnONCF6Y24vEn1Ufy
 gK65X3lEAQyHhwVjOwn0ral99hKlZMs5aHhuLDo8b72Vt//9P9ubn4O6+yKVG1XITeZ4
 P7FMaCJ2Z414engdICWdulAXB1LGjuBO5CLGlFKgy+1EjdXnE3geWb15ko5Lx6DlajYr
 mDAP3Rd8ZOCR2E7CG6wp0uJK6uYCJtX0yFMdSVK1RjXOzinXNOYA/uudjx/SIjpE+rib
 Bbli683ZimnJTOKuUc3KN+69/LVg3483HFRmXHbVeHPCgwL76SLrbHuuyMePr/ceFFIK
 c3+g==
X-Gm-Message-State: APjAAAXWp6vY/JZWoVggTGKS7+wBhO0ecGFqrOgffUbRCWo4HZbF0nsH
 aBhMy8IeJ/P4llaXcaG0AFEqFN0/tii2grujEvR4HLAw
X-Google-Smtp-Source: APXvYqydpp0XPHSfpV+FJ66MDbyQQTHcrXgL95PJ1PRJRPiHEsfylv4QeH1hmQbK4oqABGLjSdU8zURQ0dwIlB38sSk=
X-Received: by 2002:a2e:9583:: with SMTP id w3mr5205577ljh.150.1557654088322; 
 Sun, 12 May 2019 02:41:28 -0700 (PDT)
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
In-Reply-To: <3034c6f859aca3fa5aa6f053fef111025a6c52e6.camel@ettus.com>
Date: Sun, 12 May 2019 12:41:17 +0300
Message-ID: <CAPRRyxs4k5WJfbmwpTyhQr+z6RFriEsUYXjr2mP988EDCV9Onw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============2156823377392538433=="
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

--===============2156823377392538433==
Content-Type: multipart/alternative; boundary="0000000000009e13510588ad9a4a"

--0000000000009e13510588ad9a4a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Good morning. Thanks for your answers, I fixed the record in the data
array. But
it did not help me. But I noticed that everything works for me when I add a
cycle
  while samps:
                 samps =3D self.streamer_rx.recv (self.recv_buff,
self.metadata_rx)
after
self.stream_cmd =3D lib.types.stream_cmd (lib.types.stream_mode.stop_cont)
             self.streamer_rx.issue_stream_cmd (self.stream_cmd).
I don=E2=80=99t fully understand why this cycle after closing reads and bes=
ides it
very much slows down the work of the program, which for me is a critical
moment.


def test_reciev_2(self, freq, bandwich):
    complex_buffs =3D np.empty((len([0]), self.samples * len(freq)))
    buffs =3D np.empty((len([0]), self.samples * len(freq)))
    result =3D np.empty((len([0]), self.samples), dtype=3Dnp.complex64)

    for i, freqq in enumerate(freq):

        recv_samps =3D 0
        # self.usrp.set_rx_rate(bandwich[i])
        k =3D uhd.types.TuneRequest(freqq)
        # k.args(uhd.types.device_addr("mode_n=3Dinteger"))
        self.usrp.set_rx_freq(k)
        self.stream_cmd =3D uhd.types.StreamCMD(uhd.types.StreamMode.start_=
cont)
        self.stream_cmd.stream_now =3D True
        self.streamer_rx.issue_stream_cmd(self.stream_cmd)
        while self.usrp.get_rx_sensor("lo_locked").to_bool() !=3D True:
            continue

        samps =3D np.array([], dtype=3Dnp.complex64)
        while recv_samps < self.samples:

            samps =3D self.streamer_rx.recv(self.recv_buff, self.metadata_r=
x)
            if self.metadata_rx.error_code !=3D
lib.types.rx_metadata_error_code.none:
                print(self.metadata_rx.strerror())
            if samps:
                real_samps =3D min(self.samples - recv_samps, samps)
                result[:, recv_samps:recv_samps + real_samps] =3D
self.recv_buff[:, 0:real_samps]
                recv_samps +=3D real_samps
        # print (self.usrp.get_rx_sensor('rssi'))
        # print(self.streamer_rx.get_max_num_samps())

        # self.stream_cmd.time_spec =3D lib.types.time_spec(0)
        self.stream_cmd =3D lib.types.stream_cmd(lib.types.stream_mode.stop=
_cont)
        self.streamer_rx.issue_stream_cmd(self.stream_cmd)

        while samps:
            samps =3D self.streamer_rx.recv(self.recv_buff, self.metadata_r=
x)

        #complex_buffs =3D np.append(complex_buffs, result).ravel()
        # correct_result=3Dresult
        #correct_result_1 =3D result - (np.mean(result.real) +
np.mean(result.imag) * 1j)
        # correct_result.real=3Dresult.real-np.mean(result.real)
        # correct_result.imag =3D result.imag - np.mean(result.imag)

        PSD =3D self.fft_test(result)

        # PSD[8188:8202]=3Dnp.mean(PSD[8180:8188])

        buffs[:, i * value.samples:value.samples * i + value.samples]
=3D PSD[:, 0:value.samples]

    return complex_buffs, buffs.ravel()


=D0=B2=D1=81, 12 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 02:35, Marcus M=C3=
=BCller <marcus.mueller@ettus.com>:

> Ah, I see you think that this burst can't be too hard on your computer,
> because it arrives "at once"? That's not the case.
> On Sun, 2019-05-12 at 01:18 +0200, Marcus M=C3=BCller wrote:
> > Um, sorry, I don't understand your sentence. Of course we have to
> > care
> > about these samples. Otherwise, we get an overflow. That is literally
> > what overflow means: Samples not getting received by the program
> > using
> > UHD in time before a buffer overflows.
> >
> > On Sat, 2019-05-11 at 22:29 +0300, Ivan Zahartchuk wrote:
> > > No, I meant that all system performance is enabled only when we
> > > make
> > > a request and not all the time. And we no longer care what we do
> > > next
> > > with these samples, they are just an array and the board does not
> > > require constant reading.
> > >
> > > =D0=B2=D1=81, 12 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 01:03, Marcus=
 M=C3=BCller <marcus.mueller@ettus.com
> > > >:
> > > > I'm not quite sure how you come to the conclusion that we
> > > > wouldn't
> > > > be
> > > > tied to system performance in that case: that number of samples
> > > > still
> > > > needs to be received by the software running on the computer.
> > > >
> > > > Best regards,
> > > > Marcus
> > > >
> > > > On Sat, 2019-05-11 at 20:39 +0300, Ivan Zahartchuk wrote:
> > > > > Thanks for the help. I will try to fix everything tomorrow and
> > > > see
> > > > > the result. But tell me, maybe I don=E2=80=99t fully understand h=
ow
> > > > > num_sams_and_done works. If I understand correctly, this method
> > > > does
> > > > > not send a continuous stream of data but simply gives a certain
> > > > > number of samples upon request. And in this case, we are not
> > > > > tied
> > > > to
> > > > > system performance. Maybe I do not understand this. Could you
> > > > clarify
> > > > > this?
> > > > >
> > > > > =D1=81=D0=B1, 11 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 23:19, Ma=
rcus M=C3=BCller <
> > > > marcus.mueller@ettus.com>:
> > > > > > Dear Ivan,
> > > > > >
> > > > > > On Sat, 2019-05-11 at 20:00 +0300, Ivan Zahartchuk wrote:
> > > > > > > Sorry I did not specify. When working with the start_cont
> > > > mode
> > > > > > with a
> > > > > > > frequency of more than 5 MHz, I have an overflow error.
> > > > > >
> > > > > > Which probably happens due to the inefficient way you handle
> > > > the
> > > > > > data;
> > > > > > your program simply is too slow.
> > > > > >
> > > > > > > That leads to a chaotic change in the spectrum. I agree
> > > > > > > about
> > > > the
> > > > > > > wrong allocation of memory, but I created my own data array
> > > > and
> > > > > > ran
> > > > > > > it through the whole chain of changes and additions and had
> > > > what
> > > > > > I
> > > > > > > expected at the output.
> > > > > >
> > > > > > Huh? When using offline data, your computationally load
> > > > > > doesn't
> > > > > > matter;
> > > > > > I'm not sure I'm understanding you correctly here!
> > > > > >
> > > > > > > Moreover, the data array was much more than what I get from
> > > > the
> > > > > > > board. In this regard, I decided that the matter is in the
> > > > > > reading
> > > > > > > from the board.
> > > > > >
> > > > > > I'll allow myself to doubt that: Again, the fact that your
> > > > > > data
> > > > > > array
> > > > > > runs through smoothly is no indication for your software
> > > > > > being
> > > > fast
> > > > > > enough to keep up with the torrent of samples UHD will give
> > > > you!
> > > > > > When
> > > > > > it doesn't keep up, you see exactly what you're describing:
> > > > > > UHD
> > > > > > reporting overflows due to your software not fetching samples
> > > > fast
> > > > > > enough. Overflows aren't UHD bugs, they are problems in the
> > > > > > way
> > > > you
> > > > > > use
> > > > > > UHD!
> > > > > >
> > > > > > >  I have seen examples, but start_cont mode is used there
> > > > > > > and
> > > > > > there
> > > > > > > are not so many frequency adjustments. Therefore, I decided
> > > > to
> > > > > > use
> > > > > > > the num_sams_and_done mode, but there is also a problem
> > > > > > > with
> > > > it
> > > > > > which
> > > > > > > is described in the previous message. If you have more
> > > > > > suggestions, I
> > > > > > > will be very grateful to you.
> > > > > >
> > > > > > Well, exactly what I wrote in my previous mail: you need to
> > > > make
> > > > > > your
> > > > > > software fast enough. Preallocate the buffer; don't append to
> > > > its
> > > > > > end.
> > > > > >
> > > > > > Aside from that, do some profiling. Under linux, `perf top
> > > > > > -ag
> > > > > > python
> > > > > > yourscript.py` is your friend to figure out where your
> > > > > > program
> > > > > > spends
> > > > > > its CPU cycles.
> > > > > >
> > > > > > Best regards,
> > > > > > Marcus
> > > > > >
> > > > > > > =D1=81=D0=B1, 11 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 22:27=
, Marcus M=C3=BCller <
> > > > > > marcus.mueller@ettus.com>:
> > > > > > > > Dear Ivan,
> > > > > > > >
> > > > > > > > it's not clear what you've modified. I'm not aware of any
> > > > UHD
> > > > > > > > function
> > > > > > > > that restricts any frequency to 5 MHz.
> > > > > > > > Could you elaborate on which code you're basing this on?
> > > > > > > >
> > > > > > > > Also, while I really like the Python interface, if you're
> > > > > > really
> > > > > > > > after
> > > > > > > > high-rate sampling, it might simply not be the optimal
> > > > thing to
> > > > > > > > use:
> > > > > > > > You'd have to be very careful in Pythonland to not run
> > > > > > > > into
> > > > > > > > performance
> > > > > > > > problems once you've gotten the samples from UHD:
> > > > > > > >
> > > > > > > >
> > > >  complex_buffs=3Dnp.append(complex_buffs,result).ravel()
> > > > > > > > A very bad idea. You're constantly re-allocating buffers
> > > > here.
> > > > > > > > Don't do
> > > > > > > > that. No matter in which programming language you'd do
> > > > this,
> > > > > > you'd
> > > > > > > > make
> > > > > > > > sure that the buffer is large enough for your data
> > > > collection
> > > > > > to
> > > > > > > > begin
> > > > > > > > with and then tell the UHD library to fill the
> > > > > > > > appropriate
> > > > part
> > > > > > in
> > > > > > > > that
> > > > > > > > buffer to avoid a) having to ask for a larger buffer
> > > > regularly
> > > > > > and
> > > > > > > > b)
> > > > > > > > avoid copying data.
> > > > > > > > Asking for an appended version of your last buffer means
> > > > that
> > > > > > > > something
> > > > > > > > has to allocate a larger buffer =E2=80=93 which comes at ve=
ry
> > > > > > > > large
> > > > > > cost!
> > > > > > > > Best regards,
> > > > > > > > Marcus
> > > > > > > >
> > > > > > > > On Sat, 2019-05-11 at 21:31 +0300, Ivan Zahartchuk via
> > > > USRP-
> > > > > > users
> > > > > > > > wrote:
> > > > > > > > > Hello. My task is to make a broadband spectrum analyzer
> > > > on
> > > > > > the
> > > > > > > > usrp
> > > > > > > > > b200 board. For this, the standard functions for
> > > > > > > > > reading
> > > > > > samples
> > > > > > > > in
> > > > > > > > > python are not suitable for me. Therefore, I edited
> > > > > > > > > them.
> > > > > > When
> > > > > > > > > reading samples using the start_con method, I cannot
> > > > specify
> > > > > > a
> > > > > > > > band
> > > > > > > > > greater than 5 MHz. Therefore, I use the
> > > > num_sams_and_done
> > > > > > > > method.
> > > > > > > > > But I have problems with him. The fact is that my
> > > > frequency
> > > > > > which
> > > > > > > > I
> > > > > > > > > know appears in the wrong place. For example, I
> > > > > > > > > generate
> > > > a
> > > > > > > > frequency
> > > > > > > > > of 910 MHz and it appears at 930 MHz (with a bandwidth
> > > > > > > > > of
> > > > 20
> > > > > > > > MHz). I
> > > > > > > > > can not understand what caused it. Here are my reading
> > > > > > functions
> > > > > > > > in
> > > > > > > > > two ways. I would be extremely grateful for the help.
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >
> > > > > > > > > def test_reciev(self,freq,bandwich):
> > > > > > > > >     complex_buffs=3Dnp.array([])
> > > > > > > > >     buffs =3D np.array([])
> > > > > > > > >     result =3D np.empty((len([0]), self.samples),
> > > > > > > > dtype=3Dnp.complex64)
> > > > > > > > >     for i, freqq in enumerate(freq):
> > > > > > > > >
> > > > > > > > >         recv_samps =3D 0
> > > > > > > > >         #self.usrp.set_rx_rate(bandwich[i])
> > > > > > > > >         k=3Duhd.types.TuneRequest(freqq)
> > > > > > > > >         #k.args(uhd.types.device_addr("mode_n=3Dinteger")
> > > > > > > > > )
> > > > > > > > >         self.usrp.set_rx_freq(k)
> > > > > > > > >         self.stream_cmd =3D
> > > > > > > > > uhd.types.StreamCMD(uhd.types.StreamMode.start_cont)
> > > > > > > > >         self.stream_cmd.stream_now =3D True
> > > > > > > > >
> > > >  self.streamer_rx.issue_stream_cmd(self.stream_cmd)
> > > > > > > > >         while
> > > > self.usrp.get_rx_sensor("lo_locked").to_bool()
> > > > > > !=3D
> > > > > > > > True:
> > > > > > > > >             continue
> > > > > > > > >
> > > > > > > > >         samps =3D np.array([], dtype=3Dnp.complex64)
> > > > > > > > >         while recv_samps < self.samples:
> > > > > > > > >
> > > > > > > > >             samps =3D
> > > > > > > > > self.streamer_rx.recv(self.recv_buff,
> > > > > > > > > self.metadata_rx)
> > > > > > > > >             if self.metadata_rx.error_code !=3D
> > > > > > > > > lib.types.rx_metadata_error_code.none:
> > > > > > > > >                 print(self.metadata_rx.strerror())
> > > > > > > > >             if samps:
> > > > > > > > >                 real_samps =3D min(self.samples -
> > > > recv_samps,
> > > > > > > > samps)
> > > > > > > > >                 result[:, recv_samps:recv_samps +
> > > > real_samps]
> > > > > > =3D
> > > > > > > > > self.recv_buff[:, 0:real_samps]
> > > > > > > > >                 recv_samps +=3D real_samps
> > > > > > > > >         #print (self.usrp.get_rx_sensor('rssi'))
> > > > > > > > >         #print(self.streamer_rx.get_max_num_samps())
> > > > > > > > >         #while samps:
> > > > > > > > >         #    samps =3D
> > > > self.streamer_rx.recv(self.recv_buff,
> > > > > > > > > self.metadata_rx)
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >         #self.stream_cmd.time_spec =3D
> > > > lib.types.time_spec(0)
> > > > > > > > >         self.stream_cmd =3D
> > > > > > > > > lib.types.stream_cmd(lib.types.stream_mode.stop_cont)
> > > > > > > > >
> > > >  self.streamer_rx.issue_stream_cmd(self.stream_cmd)
> > > > > > > > >
> > > >  complex_buffs=3Dnp.append(complex_buffs,result).ravel()
> > > > > > > > >         #correct_result=3Dresult
> > > > > > > > >         correct_result_1=3Dresult-
> > > > > > > > > (np.mean(result.real)+np.mean(result.imag)*1j)
> > > > > > > > >         #correct_result.real=3Dresult.real-
> > > > np.mean(result.real)
> > > > > > > > >         #correct_result.imag =3D result.imag -
> > > > > > np.mean(result.imag)
> > > > > > > > >         PSD =3D  self.fft_test(result)
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >         #PSD[8188:8202]=3Dnp.mean(PSD[8180:8188])
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >         buffs =3D np.append(buffs,PSD)
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >     return complex_buffs,
> > > > > > > > >
> > > > buffs#np.append(buffs[value.samples:],buffs[:value.samples])
> > > > > > > > >
> > > > > > > > >
> > > > > > > > > def test_reciev(self,freq,bandwich):
> > > > > > > > >     complex_buffs=3Dnp.array([])
> > > > > > > > >     buffs =3D np.array([])
> > > > > > > > >     result =3D np.empty((len([0]), self.samples),
> > > > > > > > dtype=3Dnp.complex64)
> > > > > > > > >     for i, freqq in enumerate(freq):
> > > > > > > > >
> > > > > > > > >         recv_samps =3D 0
> > > > > > > > >         #self.usrp.set_rx_rate(bandwich[i])
> > > > > > > > >         k=3Duhd.types.TuneRequest(freqq)
> > > > > > > > >         #k.args(uhd.types.device_addr("mode_n=3Dinteger")
> > > > > > > > > )
> > > > > > > > >         self.usrp.set_rx_freq(k)
> > > > > > > > >
> > > > > > > > >         while
> > > > self.usrp.get_rx_sensor("lo_locked").to_bool()
> > > > > > !=3D
> > > > > > > > True:
> > > > > > > > >             continue
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >         while recv_samps < self.samples:
> > > > > > > > >
> > > > > > > > >             samps =3D
> > > > > > > > > self.streamer_rx.recv(self.recv_buff,
> > > > > > > > > self.metadata_rx)
> > > > > > > > >             if self.metadata_rx.error_code !=3D
> > > > > > > > > lib.types.rx_metadata_error_code.none:
> > > > > > > > >                 print(self.metadata_rx.strerror())
> > > > > > > > >             if samps:
> > > > > > > > >                 real_samps =3D min(self.samples -
> > > > recv_samps,
> > > > > > > > samps)
> > > > > > > > >                 result[:, recv_samps:recv_samps +
> > > > real_samps]
> > > > > > =3D
> > > > > > > > > self.recv_buff[:, 0:real_samps]
> > > > > > > > >                 recv_samps +=3D real_samps
> > > > > > > > >         #print (self.usrp.get_rx_sensor('rssi'))
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >         self.stream_cmd.time_spec =3D
> > > > lib.types.time_spec(0)
> > > > > > > > >
> > > >  self.streamer_rx.issue_stream_cmd(self.stream_cmd)
> > > > > > > > >
> > > >  complex_buffs=3Dnp.append(complex_buffs,result).ravel()
> > > > > > > > >         correct_result=3Dresult
> > > > > > > > >         correct_result_1=3Dresult-
> > > > > > > > > (np.mean(result.real)+np.mean(result.imag)*1j)
> > > > > > > > >         correct_result.real=3Dresult.real-
> > > > np.mean(result.real)
> > > > > > > > >         correct_result.imag =3D result.imag -
> > > > > > np.mean(result.imag)
> > > > > > > > >         PSD =3D  self.fft_test(result)
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >         #PSD[8188:8202]=3Dnp.mean(PSD[8180:8188])
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >         buffs =3D np.append(buffs,PSD)
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >     return complex_buffs,
> > > > > > > > >
> > > > buffs#np.append(buffs[value.samples:],buffs[:value.samples])
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >
> > > > > > > > >
> > > > > > > > > _______________________________________________
> > > > > > > > > USRP-users mailing list
> > > > > > > > > USRP-users@lists.ettus.com
> > > > > > > > >
> > > > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--0000000000009e13510588ad9a4a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span class=3D"gmail-tlid-translation gmail-translation" l=
ang=3D"en"><span title=3D"">Good morning.</span> <span title=3D"">Thanks fo=
r your answers, I fixed the record in the data array.</span> <span title=3D=
"">But it did not help me.</span> <span title=3D"">But I noticed that every=
thing works for me when I add a cycle</span><br>=C2=A0 <span title=3D"">whi=
le samps:</span><br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <span title=3D"">samps =3D self.=
streamer_rx.recv (self.recv_buff, self.metadata_rx)</span><br><span title=
=3D"">after</span><br><span title=3D"">self.stream_cmd =3D lib.types.stream=
_cmd (lib.types.stream_mode.stop_cont)</span><br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <span title=3D"">self.stre=
amer_rx.issue_stream_cmd (self.stream_cmd).</span><br></span><div><span cla=
ss=3D"gmail-tlid-translation gmail-translation" lang=3D"en"><span title=3D"=
" class=3D"gmail-">I don=E2=80=99t fully understand why this cycle after cl=
osing reads and besides it very much slows down the work of the program, wh=
ich for me is a critical moment.</span></span></div><div><span class=3D"gma=
il-tlid-translation gmail-translation" lang=3D"en"><span title=3D"" class=
=3D"gmail-"><br></span></span></div><div><span class=3D"gmail-tlid-translat=
ion gmail-translation" lang=3D"en"><span title=3D"" class=3D"gmail-"><br></=
span></span></div><div><pre style=3D"background-color:rgb(39,40,34);color:r=
gb(248,248,242);font-family:&quot;DejaVu Sans Mono&quot;"><span style=3D"co=
lor:rgb(102,217,239);font-style:italic">def </span><span style=3D"color:rgb=
(166,226,46)">test_reciev_2</span>(<span style=3D"color:rgb(148,85,141)">se=
lf</span>, <span style=3D"color:rgb(253,151,31);font-style:italic">freq</sp=
an>, <span style=3D"color:rgb(128,128,127)">bandwich</span>)<span style=3D"=
color:rgb(249,38,114)">:<br></span><span style=3D"color:rgb(249,38,114)">  =
  </span>complex_buffs <span style=3D"color:rgb(249,38,114)">=3D </span>np.=
<span style=3D"color:rgb(102,217,239)">empty</span>((<span style=3D"color:r=
gb(102,217,239)">len</span>([<span style=3D"color:rgb(174,129,255)">0</span=
>]), <span style=3D"color:rgb(148,85,141)">self</span>.samples <span style=
=3D"color:rgb(249,38,114)">* </span><span style=3D"color:rgb(102,217,239)">=
len</span>(<span style=3D"color:rgb(253,151,31);font-style:italic">freq</sp=
an>)))<br>    buffs <span style=3D"color:rgb(249,38,114)">=3D </span>np.<sp=
an style=3D"color:rgb(102,217,239)">empty</span>((<span style=3D"color:rgb(=
102,217,239)">len</span>([<span style=3D"color:rgb(174,129,255)">0</span>])=
, <span style=3D"color:rgb(148,85,141)">self</span>.samples <span style=3D"=
color:rgb(249,38,114)">* </span><span style=3D"color:rgb(102,217,239)">len<=
/span>(<span style=3D"color:rgb(253,151,31);font-style:italic">freq</span>)=
))<br>    result <span style=3D"color:rgb(249,38,114)">=3D </span>np.<span =
style=3D"color:rgb(102,217,239)">empty</span>((<span style=3D"color:rgb(102=
,217,239)">len</span>([<span style=3D"color:rgb(174,129,255)">0</span>]), <=
span style=3D"color:rgb(148,85,141)">self</span>.samples), <span style=3D"c=
olor:rgb(170,73,38)">dtype</span><span style=3D"color:rgb(249,38,114)">=3D<=
/span>np.complex64)<br><br>    <span style=3D"color:rgb(102,217,239);font-s=
tyle:italic">for </span>i, freqq <span style=3D"color:rgb(102,217,239);font=
-style:italic">in </span><span style=3D"color:rgb(102,217,239)">enumerate</=
span>(<span style=3D"color:rgb(253,151,31);font-style:italic">freq</span>)<=
span style=3D"color:rgb(249,38,114)">:<br></span><span style=3D"color:rgb(2=
49,38,114)"><br></span><span style=3D"color:rgb(249,38,114)">        </span=
>recv_samps <span style=3D"color:rgb(249,38,114)">=3D </span><span style=3D=
"color:rgb(174,129,255)">0<br></span><span style=3D"color:rgb(174,129,255)"=
>        </span><span style=3D"color:rgb(117,113,94)"># self.usrp.set_rx_ra=
te(bandwich[i])<br></span><span style=3D"color:rgb(117,113,94)">        </s=
pan>k <span style=3D"color:rgb(249,38,114)">=3D </span>uhd.types.<span styl=
e=3D"color:rgb(102,217,239)">TuneRequest</span>(freqq)<br>        <span sty=
le=3D"color:rgb(117,113,94)"># k.args(uhd.types.device_addr(&quot;mode_n=3D=
integer&quot;))<br></span><span style=3D"color:rgb(117,113,94)">        </s=
pan><span style=3D"color:rgb(148,85,141)">self</span>.usrp.<span style=3D"c=
olor:rgb(102,217,239)">set_rx_freq</span>(k)<br>        <span style=3D"colo=
r:rgb(148,85,141)">self</span>.stream_cmd <span style=3D"color:rgb(249,38,1=
14)">=3D </span>uhd.types.<span style=3D"color:rgb(102,217,239)">StreamCMD<=
/span>(uhd.types.StreamMode.start_cont)<br>        <span style=3D"color:rgb=
(148,85,141)">self</span>.stream_cmd.stream_now <span style=3D"color:rgb(24=
9,38,114)">=3D </span><span style=3D"color:rgb(102,217,239)">True<br></span=
><span style=3D"color:rgb(102,217,239)">        </span><span style=3D"color=
:rgb(148,85,141)">self</span>.streamer_rx.<span style=3D"color:rgb(102,217,=
239)">issue_stream_cmd</span>(<span style=3D"color:rgb(148,85,141)">self</s=
pan>.stream_cmd)<br>        <span style=3D"color:rgb(102,217,239);font-styl=
e:italic">while </span><span style=3D"color:rgb(148,85,141)">self</span>.us=
rp.<span style=3D"color:rgb(102,217,239)">get_rx_sensor</span>(<span style=
=3D"color:rgb(165,194,97)">&quot;lo_locked&quot;</span>).<span style=3D"col=
or:rgb(102,217,239)">to_bool</span>() <span style=3D"color:rgb(249,38,114)"=
>!=3D </span><span style=3D"color:rgb(102,217,239)">True</span><span style=
=3D"color:rgb(249,38,114)">:<br></span><span style=3D"color:rgb(249,38,114)=
">            </span><span style=3D"color:rgb(102,217,239);font-style:itali=
c">continue<br></span><span style=3D"color:rgb(102,217,239);font-style:ital=
ic"><br></span><span style=3D"color:rgb(102,217,239);font-style:italic">   =
     </span>samps <span style=3D"color:rgb(249,38,114)">=3D </span>np.<span=
 style=3D"color:rgb(102,217,239)">array</span>([], <span style=3D"color:rgb=
(170,73,38)">dtype</span><span style=3D"color:rgb(249,38,114)">=3D</span>np=
.complex64)<br>        <span style=3D"color:rgb(102,217,239);font-style:ita=
lic">while </span>recv_samps <span style=3D"color:rgb(249,38,114)">&lt; </s=
pan><span style=3D"color:rgb(148,85,141)">self</span>.samples<span style=3D=
"color:rgb(249,38,114)">:<br></span><span style=3D"color:rgb(249,38,114)"><=
br></span><span style=3D"color:rgb(249,38,114)">            </span>samps <s=
pan style=3D"color:rgb(249,38,114)">=3D </span><span style=3D"color:rgb(148=
,85,141)">self</span>.streamer_rx.<span style=3D"color:rgb(102,217,239)">re=
cv</span>(<span style=3D"color:rgb(148,85,141)">self</span>.recv_buff, <spa=
n style=3D"color:rgb(148,85,141)">self</span>.metadata_rx)<br>            <=
span style=3D"color:rgb(102,217,239);font-style:italic">if </span><span sty=
le=3D"color:rgb(148,85,141)">self</span>.metadata_rx.error_code <span style=
=3D"color:rgb(249,38,114)">!=3D </span>lib.types.rx_metadata_error_code.non=
e<span style=3D"color:rgb(249,38,114)">:<br></span><span style=3D"color:rgb=
(249,38,114)">                </span><span style=3D"color:rgb(102,217,239);=
font-style:italic">print</span>(<span style=3D"color:rgb(148,85,141)">self<=
/span>.metadata_rx.<span style=3D"color:rgb(102,217,239)">strerror</span>()=
)<br>            <span style=3D"color:rgb(102,217,239);font-style:italic">i=
f </span>samps<span style=3D"color:rgb(249,38,114)">:<br></span><span style=
=3D"color:rgb(249,38,114)">                </span>real_samps <span style=3D=
"color:rgb(249,38,114)">=3D </span><span style=3D"color:rgb(102,217,239)">m=
in</span>(<span style=3D"color:rgb(148,85,141)">self</span>.samples <span s=
tyle=3D"color:rgb(249,38,114)">- </span>recv_samps, samps)<br>             =
   result[<span style=3D"color:rgb(249,38,114)">:</span>, recv_samps<span s=
tyle=3D"color:rgb(249,38,114)">:</span>recv_samps <span style=3D"color:rgb(=
249,38,114)">+ </span>real_samps] <span style=3D"color:rgb(249,38,114)">=3D=
 </span><span style=3D"color:rgb(148,85,141)">self</span>.recv_buff[<span s=
tyle=3D"color:rgb(249,38,114)">:</span>, <span style=3D"color:rgb(174,129,2=
55)">0</span><span style=3D"color:rgb(249,38,114)">:</span>real_samps]<br> =
               recv_samps <span style=3D"color:rgb(249,38,114)">+=3D </span=
>real_samps<br>        <span style=3D"color:rgb(117,113,94)"># print (self.=
usrp.get_rx_sensor(&#39;rssi&#39;))<br></span><span style=3D"color:rgb(117,=
113,94)">        # print(self.streamer_rx.get_max_num_samps())<br></span><s=
pan style=3D"color:rgb(117,113,94)"><br></span><span style=3D"color:rgb(117=
,113,94)">        # self.stream_cmd.time_spec =3D lib.types.time_spec(0)<br=
></span><span style=3D"color:rgb(117,113,94)">        </span><span style=3D=
"color:rgb(148,85,141)">self</span>.stream_cmd <span style=3D"color:rgb(249=
,38,114)">=3D </span>lib.types.<span style=3D"color:rgb(102,217,239)">strea=
m_cmd</span>(lib.types.stream_mode.stop_cont)<br>        <span style=3D"col=
or:rgb(148,85,141)">self</span>.streamer_rx.<span style=3D"color:rgb(102,21=
7,239)">issue_stream_cmd</span>(<span style=3D"color:rgb(148,85,141)">self<=
/span>.stream_cmd)<br><br>        <span style=3D"color:rgb(102,217,239);fon=
t-style:italic">while </span>samps<span style=3D"color:rgb(249,38,114)">:<b=
r></span><span style=3D"color:rgb(249,38,114)">            </span>samps <sp=
an style=3D"color:rgb(249,38,114)">=3D </span><span style=3D"color:rgb(148,=
85,141)">self</span>.streamer_rx.<span style=3D"color:rgb(102,217,239)">rec=
v</span>(<span style=3D"color:rgb(148,85,141)">self</span>.recv_buff, <span=
 style=3D"color:rgb(148,85,141)">self</span>.metadata_rx)<br><br>        <s=
pan style=3D"color:rgb(117,113,94)">#complex_buffs =3D np.append(complex_bu=
ffs, result).ravel()<br></span><span style=3D"color:rgb(117,113,94)">      =
  # correct_result=3Dresult<br></span><span style=3D"color:rgb(117,113,94)"=
>        #correct_result_1 =3D result - (np.mean(result.real) + np.mean(res=
ult.imag) * 1j)<br></span><span style=3D"color:rgb(117,113,94)">        # c=
orrect_result.real=3Dresult.real-np.mean(result.real)<br></span><span style=
=3D"color:rgb(117,113,94)">        # correct_result.imag =3D result.imag - =
np.mean(result.imag)<br></span><span style=3D"color:rgb(117,113,94)"><br></=
span><span style=3D"color:rgb(117,113,94)">        </span>PSD <span style=
=3D"color:rgb(249,38,114)">=3D </span><span style=3D"color:rgb(148,85,141)"=
>self</span>.<span style=3D"color:rgb(102,217,239)">fft_test</span>(result)=
<br><br>        <span style=3D"color:rgb(117,113,94)"># PSD[8188:8202]=3Dnp=
.mean(PSD[8180:8188])<br></span><span style=3D"color:rgb(117,113,94)"><br><=
/span><span style=3D"color:rgb(117,113,94)">        </span>buffs[<span styl=
e=3D"color:rgb(249,38,114)">:</span>, i <span style=3D"color:rgb(249,38,114=
)">* </span>value.samples<span style=3D"color:rgb(249,38,114)">:</span>valu=
e.samples <span style=3D"color:rgb(249,38,114)">* </span>i <span style=3D"c=
olor:rgb(249,38,114)">+ </span>value.samples] <span style=3D"color:rgb(249,=
38,114)">=3D </span>PSD[<span style=3D"color:rgb(249,38,114)">:</span>, <sp=
an style=3D"color:rgb(174,129,255)">0</span><span style=3D"color:rgb(249,38=
,114)">:</span>value.samples]<br><br>    <span style=3D"color:rgb(102,217,2=
39);font-style:italic">return </span>complex_buffs, buffs.<span style=3D"co=
lor:rgb(102,217,239)">ravel</span>()</pre><span class=3D"gmail-tlid-transla=
tion gmail-translation" lang=3D"en"><span title=3D"" class=3D"gmail-"></spa=
n></span></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">=D0=B2=D1=81, 12 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 02:=
35, Marcus M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com">marc=
us.mueller@ettus.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">Ah, I see you think that this burst can&#39;t be too hard on =
your computer,<br>
because it arrives &quot;at once&quot;? That&#39;s not the case.<br>
On Sun, 2019-05-12 at 01:18 +0200, Marcus M=C3=BCller wrote:<br>
&gt; Um, sorry, I don&#39;t understand your sentence. Of course we have to<=
br>
&gt; care<br>
&gt; about these samples. Otherwise, we get an overflow. That is literally<=
br>
&gt; what overflow means: Samples not getting received by the program<br>
&gt; using<br>
&gt; UHD in time before a buffer overflows.<br>
&gt; <br>
&gt; On Sat, 2019-05-11 at 22:29 +0300, Ivan Zahartchuk wrote:<br>
&gt; &gt; No, I meant that all system performance is enabled only when we<b=
r>
&gt; &gt; make<br>
&gt; &gt; a request and not all the time. And we no longer care what we do<=
br>
&gt; &gt; next<br>
&gt; &gt; with these samples, they are just an array and the board does not=
<br>
&gt; &gt; require constant reading.<br>
&gt; &gt; <br>
&gt; &gt; =D0=B2=D1=81, 12 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2 01:03, Ma=
rcus M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com" target=3D"=
_blank">marcus.mueller@ettus.com</a><br>
&gt; &gt; &gt;:<br>
&gt; &gt; &gt; I&#39;m not quite sure how you come to the conclusion that w=
e<br>
&gt; &gt; &gt; wouldn&#39;t<br>
&gt; &gt; &gt; be<br>
&gt; &gt; &gt; tied to system performance in that case: that number of samp=
les<br>
&gt; &gt; &gt; still<br>
&gt; &gt; &gt; needs to be received by the software running on the computer=
.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Best regards,<br>
&gt; &gt; &gt; Marcus<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; On Sat, 2019-05-11 at 20:39 +0300, Ivan Zahartchuk wrote:<br=
>
&gt; &gt; &gt; &gt; Thanks for the help. I will try to fix everything tomor=
row and<br>
&gt; &gt; &gt; see<br>
&gt; &gt; &gt; &gt; the result. But tell me, maybe I don=E2=80=99t fully un=
derstand how<br>
&gt; &gt; &gt; &gt; num_sams_and_done works. If I understand correctly, thi=
s method<br>
&gt; &gt; &gt; does<br>
&gt; &gt; &gt; &gt; not send a continuous stream of data but simply gives a=
 certain<br>
&gt; &gt; &gt; &gt; number of samples upon request. And in this case, we ar=
e not<br>
&gt; &gt; &gt; &gt; tied<br>
&gt; &gt; &gt; to<br>
&gt; &gt; &gt; &gt; system performance. Maybe I do not understand this. Cou=
ld you<br>
&gt; &gt; &gt; clarify<br>
&gt; &gt; &gt; &gt; this?<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; =D1=81=D0=B1, 11 =D0=BC=D0=B0=D1=8F 2019 =D0=B3. =D0=B2=
 23:19, Marcus M=C3=BCller &lt;<br>
&gt; &gt; &gt; <a href=3D"mailto:marcus.mueller@ettus.com" target=3D"_blank=
">marcus.mueller@ettus.com</a>&gt;:<br>
&gt; &gt; &gt; &gt; &gt; Dear Ivan,<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; On Sat, 2019-05-11 at 20:00 +0300, Ivan Zahartchuk=
 wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; Sorry I did not specify. When working with th=
e start_cont<br>
&gt; &gt; &gt; mode<br>
&gt; &gt; &gt; &gt; &gt; with a<br>
&gt; &gt; &gt; &gt; &gt; &gt; frequency of more than 5 MHz, I have an overf=
low error. <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; Which probably happens due to the inefficient way =
you handle<br>
&gt; &gt; &gt; the<br>
&gt; &gt; &gt; &gt; &gt; data;<br>
&gt; &gt; &gt; &gt; &gt; your program simply is too slow.<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; That leads to a chaotic change in the spectru=
m. I agree<br>
&gt; &gt; &gt; &gt; &gt; &gt; about<br>
&gt; &gt; &gt; the<br>
&gt; &gt; &gt; &gt; &gt; &gt; wrong allocation of memory, but I created my =
own data array<br>
&gt; &gt; &gt; and<br>
&gt; &gt; &gt; &gt; &gt; ran<br>
&gt; &gt; &gt; &gt; &gt; &gt; it through the whole chain of changes and add=
itions and had<br>
&gt; &gt; &gt; what<br>
&gt; &gt; &gt; &gt; &gt; I<br>
&gt; &gt; &gt; &gt; &gt; &gt; expected at the output. <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; Huh? When using offline data, your computationally=
 load<br>
&gt; &gt; &gt; &gt; &gt; doesn&#39;t<br>
&gt; &gt; &gt; &gt; &gt; matter;<br>
&gt; &gt; &gt; &gt; &gt; I&#39;m not sure I&#39;m understanding you correct=
ly here! <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; Moreover, the data array was much more than w=
hat I get from<br>
&gt; &gt; &gt; the<br>
&gt; &gt; &gt; &gt; &gt; &gt; board. In this regard, I decided that the mat=
ter is in the<br>
&gt; &gt; &gt; &gt; &gt; reading<br>
&gt; &gt; &gt; &gt; &gt; &gt; from the board.<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; I&#39;ll allow myself to doubt that: Again, the fa=
ct that your<br>
&gt; &gt; &gt; &gt; &gt; data<br>
&gt; &gt; &gt; &gt; &gt; array<br>
&gt; &gt; &gt; &gt; &gt; runs through smoothly is no indication for your so=
ftware<br>
&gt; &gt; &gt; &gt; &gt; being<br>
&gt; &gt; &gt; fast<br>
&gt; &gt; &gt; &gt; &gt; enough to keep up with the torrent of samples UHD =
will give<br>
&gt; &gt; &gt; you!<br>
&gt; &gt; &gt; &gt; &gt; When<br>
&gt; &gt; &gt; &gt; &gt; it doesn&#39;t keep up, you see exactly what you&#=
39;re describing:<br>
&gt; &gt; &gt; &gt; &gt; UHD<br>
&gt; &gt; &gt; &gt; &gt; reporting overflows due to your software not fetch=
ing samples<br>
&gt; &gt; &gt; fast<br>
&gt; &gt; &gt; &gt; &gt; enough. Overflows aren&#39;t UHD bugs, they are pr=
oblems in the<br>
&gt; &gt; &gt; &gt; &gt; way<br>
&gt; &gt; &gt; you<br>
&gt; &gt; &gt; &gt; &gt; use<br>
&gt; &gt; &gt; &gt; &gt; UHD!<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 I have seen examples, but start_cont mo=
de is used there<br>
&gt; &gt; &gt; &gt; &gt; &gt; and<br>
&gt; &gt; &gt; &gt; &gt; there<br>
&gt; &gt; &gt; &gt; &gt; &gt; are not so many frequency adjustments. Theref=
ore, I decided<br>
&gt; &gt; &gt; to<br>
&gt; &gt; &gt; &gt; &gt; use<br>
&gt; &gt; &gt; &gt; &gt; &gt; the num_sams_and_done mode, but there is also=
 a problem<br>
&gt; &gt; &gt; &gt; &gt; &gt; with<br>
&gt; &gt; &gt; it<br>
&gt; &gt; &gt; &gt; &gt; which<br>
&gt; &gt; &gt; &gt; &gt; &gt; is described in the previous message. If you =
have more<br>
&gt; &gt; &gt; &gt; &gt; suggestions, I<br>
&gt; &gt; &gt; &gt; &gt; &gt; will be very grateful to you.<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; Well, exactly what I wrote in my previous mail: yo=
u need to<br>
&gt; &gt; &gt; make<br>
&gt; &gt; &gt; &gt; &gt; your<br>
&gt; &gt; &gt; &gt; &gt; software fast enough. Preallocate the buffer; don&=
#39;t append to<br>
&gt; &gt; &gt; its<br>
&gt; &gt; &gt; &gt; &gt; end.<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; Aside from that, do some profiling. Under linux, `=
perf top<br>
&gt; &gt; &gt; &gt; &gt; -ag<br>
&gt; &gt; &gt; &gt; &gt; python<br>
&gt; &gt; &gt; &gt; &gt; yourscript.py` is your friend to figure out where =
your<br>
&gt; &gt; &gt; &gt; &gt; program<br>
&gt; &gt; &gt; &gt; &gt; spends<br>
&gt; &gt; &gt; &gt; &gt; its CPU cycles.<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; Best regards,<br>
&gt; &gt; &gt; &gt; &gt; Marcus<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; =D1=81=D0=B1, 11 =D0=BC=D0=B0=D1=8F 2019 =D0=
=B3. =D0=B2 22:27, Marcus M=C3=BCller &lt;<br>
&gt; &gt; &gt; &gt; &gt; <a href=3D"mailto:marcus.mueller@ettus.com" target=
=3D"_blank">marcus.mueller@ettus.com</a>&gt;:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; Dear Ivan,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; it&#39;s not clear what you&#39;ve modif=
ied. I&#39;m not aware of any<br>
&gt; &gt; &gt; UHD<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; function<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; that restricts any frequency to 5 MHz.<b=
r>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; Could you elaborate on which code you&#3=
9;re basing this on?<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; Also, while I really like the Python int=
erface, if you&#39;re<br>
&gt; &gt; &gt; &gt; &gt; really<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; after<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; high-rate sampling, it might simply not =
be the optimal<br>
&gt; &gt; &gt; thing to<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; use:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; You&#39;d have to be very careful in Pyt=
honland to not run<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; into<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; performance<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; problems once you&#39;ve gotten the samp=
les from UHD:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt; &gt; &gt;=C2=A0 complex_buffs=3Dnp.append(complex_buffs,result).ravel(=
)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; A very bad idea. You&#39;re constantly r=
e-allocating buffers<br>
&gt; &gt; &gt; here.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; Don&#39;t do<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; that. No matter in which programming lan=
guage you&#39;d do<br>
&gt; &gt; &gt; this,<br>
&gt; &gt; &gt; &gt; &gt; you&#39;d<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; make<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; sure that the buffer is large enough for=
 your data<br>
&gt; &gt; &gt; collection<br>
&gt; &gt; &gt; &gt; &gt; to<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; begin<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; with and then tell the UHD library to fi=
ll the<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; appropriate<br>
&gt; &gt; &gt; part<br>
&gt; &gt; &gt; &gt; &gt; in<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; that<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; buffer to avoid a) having to ask for a l=
arger buffer<br>
&gt; &gt; &gt; regularly<br>
&gt; &gt; &gt; &gt; &gt; and<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; b)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; avoid copying data.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; Asking for an appended version of your l=
ast buffer means<br>
&gt; &gt; &gt; that<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; something<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; has to allocate a larger buffer =E2=80=
=93 which comes at very<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; large<br>
&gt; &gt; &gt; &gt; &gt; cost!<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; Best regards,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; Marcus <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; On Sat, 2019-05-11 at 21:31 +0300, Ivan =
Zahartchuk via<br>
&gt; &gt; &gt; USRP-<br>
&gt; &gt; &gt; &gt; &gt; users<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Hello. My task is to make a broadba=
nd spectrum analyzer<br>
&gt; &gt; &gt; on<br>
&gt; &gt; &gt; &gt; &gt; the<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; usrp<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; b200 board. For this, the standard =
functions for<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; reading<br>
&gt; &gt; &gt; &gt; &gt; samples<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; in<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; python are not suitable for me. The=
refore, I edited<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; them.<br>
&gt; &gt; &gt; &gt; &gt; When<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; reading samples using the start_con=
 method, I cannot<br>
&gt; &gt; &gt; specify<br>
&gt; &gt; &gt; &gt; &gt; a<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; band<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; greater than 5 MHz. Therefore, I us=
e the<br>
&gt; &gt; &gt; num_sams_and_done<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; method.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; But I have problems with him. The f=
act is that my<br>
&gt; &gt; &gt; frequency<br>
&gt; &gt; &gt; &gt; &gt; which<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; I<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; know appears in the wrong place. Fo=
r example, I<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; generate<br>
&gt; &gt; &gt; a<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; frequency<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; of 910 MHz and it appears at 930 MH=
z (with a bandwidth<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; of<br>
&gt; &gt; &gt; 20<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; MHz). I<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; can not understand what caused it. =
Here are my reading<br>
&gt; &gt; &gt; &gt; &gt; functions<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; in<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; two ways. I would be extremely grat=
eful for the help.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; def test_reciev(self,freq,bandwich)=
:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0complex_buffs=3D=
np.array([])<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0buffs =3D np.arr=
ay([])<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0result =3D np.em=
pty((len([0]), self.samples),<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; dtype=3Dnp.complex64)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0for i, freqq in =
enumerate(freq):<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0re=
cv_samps =3D 0<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#s=
elf.usrp.set_rx_rate(bandwich[i])<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0k=
=3Duhd.types.TuneRequest(freqq)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#k=
.args(uhd.types.device_addr(&quot;mode_n=3Dinteger&quot;)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; )<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0se=
lf.usrp.set_rx_freq(k)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0se=
lf.stream_cmd =3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; uhd.types.StreamCMD(uhd.types.Strea=
mMode.start_cont)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0se=
lf.stream_cmd.stream_now =3D True<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt; &gt; &gt;=C2=A0 self.streamer_rx.issue_stream_cmd(self.stream_cmd)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0wh=
ile<br>
&gt; &gt; &gt; self.usrp.get_rx_sensor(&quot;lo_locked&quot;).to_bool()<br>
&gt; &gt; &gt; &gt; &gt; !=3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; True:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0continue<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sa=
mps =3D np.array([], dtype=3Dnp.complex64)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0wh=
ile recv_samps &lt; self.samples:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0samps =3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; self.streamer_rx.recv(self.recv_buf=
f,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; self.metadata_rx)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if self.metadata_rx.error_code !=3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; lib.types.rx_metadata_error_code.no=
ne:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0print(self.metadata_rx.strerror())<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if samps:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0real_samps =3D min(self.samples -<br>
&gt; &gt; &gt; recv_samps,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; samps)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0result[:, recv_samps:recv_samps +<br>
&gt; &gt; &gt; real_samps]<br>
&gt; &gt; &gt; &gt; &gt; =3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; self.recv_buff[:, 0:real_samps]<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0recv_samps +=3D real_samps<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#p=
rint (self.usrp.get_rx_sensor(&#39;rssi&#39;))<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#p=
rint(self.streamer_rx.get_max_num_samps())<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#w=
hile samps:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#=
=C2=A0 =C2=A0 samps =3D<br>
&gt; &gt; &gt; self.streamer_rx.recv(self.recv_buff,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; self.metadata_rx)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#s=
elf.stream_cmd.time_spec =3D<br>
&gt; &gt; &gt; lib.types.time_spec(0)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0se=
lf.stream_cmd =3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; lib.types.stream_cmd(lib.types.stre=
am_mode.stop_cont)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt; &gt; &gt;=C2=A0 self.streamer_rx.issue_stream_cmd(self.stream_cmd)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt; &gt; &gt;=C2=A0 complex_buffs=3Dnp.append(complex_buffs,result).ravel(=
)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#c=
orrect_result=3Dresult<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0co=
rrect_result_1=3Dresult-<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; (np.mean(result.real)+np.mean(resul=
t.imag)*1j)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#c=
orrect_result.real=3Dresult.real-<br>
&gt; &gt; &gt; np.mean(result.real)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#c=
orrect_result.imag =3D result.imag -<br>
&gt; &gt; &gt; &gt; &gt; np.mean(result.imag)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PS=
D =3D=C2=A0 self.fft_test(result)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#P=
SD[8188:8202]=3Dnp.mean(PSD[8180:8188])<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bu=
ffs =3D np.append(buffs,PSD)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0return complex_b=
uffs,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; buffs#np.append(buffs[value.samples:],buffs[:value.samples])=
<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; def test_reciev(self,freq,bandwich)=
:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0complex_buffs=3D=
np.array([])<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0buffs =3D np.arr=
ay([])<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0result =3D np.em=
pty((len([0]), self.samples),<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; dtype=3Dnp.complex64)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0for i, freqq in =
enumerate(freq):<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0re=
cv_samps =3D 0<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#s=
elf.usrp.set_rx_rate(bandwich[i])<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0k=
=3Duhd.types.TuneRequest(freqq)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#k=
.args(uhd.types.device_addr(&quot;mode_n=3Dinteger&quot;)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; )<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0se=
lf.usrp.set_rx_freq(k)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0wh=
ile<br>
&gt; &gt; &gt; self.usrp.get_rx_sensor(&quot;lo_locked&quot;).to_bool()<br>
&gt; &gt; &gt; &gt; &gt; !=3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; True:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0continue<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0wh=
ile recv_samps &lt; self.samples:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0samps =3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; self.streamer_rx.recv(self.recv_buf=
f,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; self.metadata_rx)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if self.metadata_rx.error_code !=3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; lib.types.rx_metadata_error_code.no=
ne:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0print(self.metadata_rx.strerror())<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if samps:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0real_samps =3D min(self.samples -<br>
&gt; &gt; &gt; recv_samps,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; samps)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0result[:, recv_samps:recv_samps +<br>
&gt; &gt; &gt; real_samps]<br>
&gt; &gt; &gt; &gt; &gt; =3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; self.recv_buff[:, 0:real_samps]<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0recv_samps +=3D real_samps<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#p=
rint (self.usrp.get_rx_sensor(&#39;rssi&#39;))<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0se=
lf.stream_cmd.time_spec =3D<br>
&gt; &gt; &gt; lib.types.time_spec(0)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt; &gt; &gt;=C2=A0 self.streamer_rx.issue_stream_cmd(self.stream_cmd)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt; &gt; &gt;=C2=A0 complex_buffs=3Dnp.append(complex_buffs,result).ravel(=
)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0co=
rrect_result=3Dresult<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0co=
rrect_result_1=3Dresult-<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; (np.mean(result.real)+np.mean(resul=
t.imag)*1j)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0co=
rrect_result.real=3Dresult.real-<br>
&gt; &gt; &gt; np.mean(result.real)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0co=
rrect_result.imag =3D result.imag -<br>
&gt; &gt; &gt; &gt; &gt; np.mean(result.imag)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PS=
D =3D=C2=A0 self.fft_test(result)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#P=
SD[8188:8202]=3Dnp.mean(PSD[8180:8188])<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bu=
ffs =3D np.append(buffs,PSD)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0return complex_b=
uffs,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; buffs#np.append(buffs[value.samples:],buffs[:value.samples])=
<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; ___________________________________=
____________<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; USRP-users mailing list<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <a href=3D"mailto:USRP-users@lists.=
ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-user=
s_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.=
com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
</blockquote></div>

--0000000000009e13510588ad9a4a--


--===============2156823377392538433==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2156823377392538433==--

