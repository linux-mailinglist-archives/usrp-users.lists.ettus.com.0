Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EEAA1EB4
	for <lists+usrp-users@lfdr.de>; Thu, 29 Aug 2019 17:18:17 +0200 (CEST)
Received: from [::1] (port=36152 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i3MBj-0001NR-Q8; Thu, 29 Aug 2019 11:18:15 -0400
Received: from mail-ed1-f42.google.com ([209.85.208.42]:33158)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <r.vink@opnt.nl>) id 1i3MBg-00014Z-1J
 for usrp-users@lists.ettus.com; Thu, 29 Aug 2019 11:18:12 -0400
Received: by mail-ed1-f42.google.com with SMTP id l26so3860326edr.0
 for <usrp-users@lists.ettus.com>; Thu, 29 Aug 2019 08:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=opnt-nl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=9S++WksVXnri/1LuotaX8IWYVoxupgIbFGnLxmS4sMA=;
 b=si8UecWDXbcBeHn8xafr6jtUlbAVzxEMPf+E2TmqjDDBMmd3hCpxiR6vC4x6viPhyw
 3eGkwBi6/0sk1JPAcRJkDyi3uhVllO/iZtg78jMrfgvyxq5c2wkA6cyxsTXwWKsk9nle
 LEYvzPIAYWtp0D6S14cPAb0kvoPfeAs/1yDx5xV6zKxi8MHHkG4HR1iFhrrFkVqZJkHS
 vpOAmneHAnHijqvBdsNwFd6lortqnb8KN0PFmFjn5Xsp0w3kA7lvD1CONYa4nzx6sr2n
 /qMgyrWn3uEnmQOfN8J4qvJWemtbI7JwAezjBb1crMpqePNb/VoZn5p43wn/EuErktrt
 Ps5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=9S++WksVXnri/1LuotaX8IWYVoxupgIbFGnLxmS4sMA=;
 b=OAanDPeU7QPH7VEeKGMwlgCwdVAApGRCJH1Y8l6eVRB0zxdVCRGAnqpw5wY9a/ysbq
 INGXmmMNIAxl5JV4VjSEVHT43NwKMpcbeair3j8R0pqbqCN9C+XRtkehhYEXVxHlDpcU
 7XLv56YmMwPJFSjlu8lOtLkagH0vAp+taupjJrh7Xl681HmGSPPzwM1qMZ34Jzzm95pM
 h3eSY1eJ9bHHXkRgsjIhsSQciKELihEwth3A92Cp30KHXtfw3Oh45fbZvq/qQm8lJ0KI
 z59lzhQYPW3c7lhxcgKiGCRaMVJEZJkXRDJfM1DBvLK73ZKgON71Mlxq0yptiqB6qKkh
 AcYA==
X-Gm-Message-State: APjAAAWhyJTQJPFcAtl1t04pmr78igKoSzMupqgQk2NTu8F0gxNNz6n5
 0RPVytdvJFPxzTGXaylRydOlIMax6A+KDItLTLKeeyrFHJ0=
X-Google-Smtp-Source: APXvYqwwdP3SBO0NeMYzqLvgXhKgC9wkS5+Kw/SXEYWsbJSeWJS/I2koYyuW+XO0Dd+ebsl1vqavMOUwTzA7I/w7wDM=
X-Received: by 2002:a50:9f24:: with SMTP id b33mr10559562edf.24.1567091850618; 
 Thu, 29 Aug 2019 08:17:30 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.57.1567008003.12821.usrp-users_lists.ettus.com@lists.ettus.com>
In-Reply-To: <mailman.57.1567008003.12821.usrp-users_lists.ettus.com@lists.ettus.com>
Date: Thu, 29 Aug 2019 17:17:19 +0200
Message-ID: <CAJ4BvYGummyeZKVO28E8tCT_-8zPpf5AmNZX8dEmbG79_Tr1gQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Overrun on USB vs Ethernet
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
From: Remco Vink via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Remco Vink <r.vink@opnt.nl>
Content-Type: multipart/mixed; boundary="===============7989411420104323916=="
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

--===============7989411420104323916==
Content-Type: multipart/alternative; boundary="000000000000163acc0591430132"

--000000000000163acc0591430132
Content-Type: text/plain; charset="UTF-8"

Thank you Kyeong for the input.
I was able to find the "probe rate" in Gnuradio, but unfortunately my
program is indeed not build in Gnuradio. Does anyone know of a way to
achieve this by the use of C++ and the UHD Driver?

Op wo 28 aug. 2019 om 18:00 schreef <usrp-users-request@lists.ettus.com>:

> Send USRP-users mailing list submissions to
>         usrp-users@lists.ettus.com
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> or, via email, send a message with subject or body 'help' to
>         usrp-users-request@lists.ettus.com
>
> You can reach the person managing the list at
>         usrp-users-owner@lists.ettus.com
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of USRP-users digest..."
>
>
> Today's Topics:
>
>    1. Re: RFNoc Testbench / EOB (Timothy Kurp)
>    2. e320 GPIO pinout (Aaron Holtzman)
>    3. Re: e320 GPIO pinout (Robin Coxe)
>    4. Overrun on USB vs Ethernet (Remco Vink)
>    5. Re: Overrun on USB vs Ethernet (Kyeong Su Shin)
>    6. Re: RFNoc Testbench / EOB (Jonathon Pendlum)
>    7. Re: RFNoc Testbench / EOB (Timothy Kurp)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Tue, 27 Aug 2019 12:06:54 -0400
> From: Timothy Kurp <timothy.kurp@gmail.com>
> To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
> Cc: usrp-users <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] RFNoc Testbench / EOB
> Message-ID:
>         <CABsifTk8doL0VhOP+=OP9EPuXxPNqA0kuXmyM-s=
> B8CZ9YyRmg@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> Hi Jon,
>
> This doesn't answer my question, perhaps I didn't convey the problem
> clearly. I am trying to test the case where TLAST occurs on an odd sample,
> at the same time as EOB. Push word provides access to tlast, but not EOB.
> To throw eob I need to use send() which takes in pkt.payload and
> pkt.header. I can manipulate eob in the metadata there.  pkt.payload is of
> type cvita_payload_t, which is 64 bits wide. Send() will throw tlast at the
> end of the packet, which will always contain a multiple of 2 complex
> samples since the payload is defined at 64 bits. That is my problem.  There
> is no way to throw eob and tlast on a packet that contains an odd number of
> i/q samples.
>
> Tim
>
> On Tue, Aug 27, 2019 at 12:21 AM Timothy Kurp <timothy.kurp@gmail.com>
> wrote:
>
> > Thanks! I will look at that example.
> >
> > Tim
> >
> > On Tue, Aug 27, 2019 at 12:15 AM Jonathon Pendlum <
> > jonathon.pendlum@ettus.com> wrote:
> >
> >> Hi Tim,
> >>
> >> Look at noc_block_fft_tb.v for an example on how to operate on a 32-bit
> >> sample by sample basis. Unfortunately, if you want to do sizes smaller
> than
> >> 32-bit, you'll need to write your own version of send()/recv() or
> >> push_word()/pull_word() from sim_rfnoc_lib.svh.
> >>
> >> Jonathon
> >>
> >> On Tue, Aug 27, 2019 at 1:05 PM Timothy Kurp via USRP-users <
> >> usrp-users@lists.ettus.com> wrote:
> >>
> >>> Hey Users!
> >>>
> >>> I think this may be a possible deficiency in the test bench
> >>> architecture, or perhaps I just don't know how to instrument it
> properly. I
> >>> have a custom block that performs a 2:1 rate change roughly, performing
> >>> compression of the 16 bit I/Q from the radio down to a 16 bit word
> that is
> >>> compressed, I won't describe how. There is a corner case if EOB occurs
> when
> >>> there is an odd number of samples received from the radio. I have
> handled
> >>> this by using simple mode = 0, manipulating cvita header manually and
> >>> throwing tlast to make packets, with success. The noc block works, but
> I am
> >>> struggling with how to exercise the corner case in the testbench.
> >>>
> >>> From what I have seen, the testbench only allows for EOB to be
> >>> manipulated on sample counts that are a multiple of 2 (send() operates
> on
> >>> 64 bits, or 2 samples of 16 bit I/Q). We have looked at the source and
> >>> there doesn't seem to be an easy way to throw EOB/TLAST on odd
> samples.We
> >>> also think it is not guaranteed that this will never happen from the
> radio.
> >>> Thoughts?
> >>>
> >>> Tim
> >>> _______________________________________________
> >>> USRP-users mailing list
> >>> USRP-users@lists.ettus.com
> >>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>
> >>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190827/432a32e0/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 2
> Date: Tue, 27 Aug 2019 15:47:32 -0400
> From: Aaron Holtzman <aholtzma@gmail.com>
> To: USRP-users@lists.ettus.com
> Subject: [USRP-users] e320 GPIO pinout
> Message-ID:
>         <
> CAEhVi8SP6FCXO83bnN-_f3P0yx_6kw6-1qmFTi6iXwEQTZLJMQ@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> The pinout for the e320 GPIO connector at
> https://files.ettus.com/manual/page_gpio_api.html does not indicate which
> pin is used for the return current. Is it pin 17 (non-mini HDMI) which HDMI
> uses for the single ended signal return?
>
> On a related note, will the schematics for e320 ever be released?
>
> Thanks.
>
> cheers,
> Aaron
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190827/1d3175f3/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 3
> Date: Tue, 27 Aug 2019 15:50:04 -0700
> From: Robin Coxe <coxe@quanttux.com>
> To: Aaron Holtzman <aholtzma@gmail.com>
> Cc: Ettus Mail List <USRP-users@lists.ettus.com>
> Subject: Re: [USRP-users] e320 GPIO pinout
> Message-ID:
>         <
> CAKJyDkLUHxmpwmELAwBAMTs7Up0wJQEnwMMXspO1_QbwA3OUQQ@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> [image: e320_mini_hdmi.png]
> Here's the pinout of the E320 GPIO connector.   Someone from Ettus Support
> (i.e., who is still employed by NI) will have to comment on when the E320
> schematics will be available.
>
> On Tue, Aug 27, 2019 at 1:06 PM Aaron Holtzman via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> > The pinout for the e320 GPIO connector at
> > https://files.ettus.com/manual/page_gpio_api.html does not indicate
> which
> > pin is used for the return current. Is it pin 17 (non-mini HDMI) which
> HDMI
> > uses for the single ended signal return?
> >
> > On a related note, will the schematics for e320 ever be released?
> >
> > Thanks.
> >
> > cheers,
> > Aaron
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190827/0e5bbef6/attachment-0001.html
> >
> -------------- next part --------------
> A non-text attachment was scrubbed...
> Name: e320_mini_hdmi.png
> Type: image/png
> Size: 78640 bytes
> Desc: not available
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190827/0e5bbef6/attachment-0001.png
> >
>
> ------------------------------
>
> Message: 4
> Date: Wed, 28 Aug 2019 09:00:36 +0200
> From: Remco Vink <r.vink@opnt.nl>
> To: usrp-users@lists.ettus.com
> Subject: [USRP-users] Overrun on USB vs Ethernet
> Message-ID:
>         <CAJ4BvYETtM==
> U1NrFYJMeTdykP6NNuk0B3eWAmYj3ibKj-zVEA@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> All,
>
> I am experiencing some issues with overruns stopping the streamer of our
> USB B200 devices. Currently the computers in use are not the fastest in
> their kind, but I am wondering where the limitation is coming from. I
> haven't found a way to measure the throughput of the USB, so it might
> either be the USB controller or processor which is not fast enough to
> handle all the data. The benchmark_rate seems to run fine at the rx_rate
> the program is running on.
>
> If for instance I would to switch to a network based device and have the
> connection over ethernet, would this possibly fix the issue or would the
> processor or some other bottleneck still arise. Would like to hear your
> thoughts on this overrun and most likely bottleneck problem.
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190828/ecd8ec60/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 5
> Date: Wed, 28 Aug 2019 08:47:21 +0000
> From: Kyeong Su Shin <ksshin@postech.ac.kr>
> To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Remco
>         Vink <r.vink@opnt.nl>
> Subject: Re: [USRP-users] Overrun on USB vs Ethernet
> Message-ID:
>         <
> SL2P216MB0938126B83F61183B049D0FA93A30@SL2P216MB0938.KORP216.PROD.OUTLOOK.COM
> >
>
> Content-Type: text/plain; charset="euc-kr"
>
> Hello Remco:
>
> If benchmark_rate runs fine at the target rx rate, the processing speed of
> the CPU is probably the main bottleneck. If you want to test it further,
> you can check the "maximum throughput" of your software (maximum rx rate
> that your software can keep up).
>
> If your program is in GNU Radio, one thing that you can do is replacing
> the "USRP Source" to a file source with pre-recorded data (or maybe a
> random source, if the performance of your flow graph is not affected by the
> incoming data), and attaching a "Probe Rate" and  a"Message Debug" right
> after that. If the processing rate, printed to stdout, is slower than the
> target sampling rate, then your your CPU is not keeping up. If it is
> keeping up, the problem could be caused by some other issues, including but
> not limited to two-clock issues, USB controller issues, and USB connection
> issues (faulty USB 3.0 connection; it does happen!). You should be able to
> do something similar even if your program is not in GNU Radio (I don't have
> directions for that, though).
>
> In my experience, Ethernet-based USRPs (like N200s and X300s) are indeed a
> bit better at this. However, if the bottleneck is caused by the software,
> then replacing the SDR board won't fix the problem.
>
> Regards,
> Kyeong Su Shin
> ________________________________
> ?? ??: Remco Vink via USRP-users <usrp-users@lists.ettus.com> ??
> USRP-users <usrp-users-bounces@lists.ettus.com>
> ?? ??: 2019? 8? 28? ??? ?? 4:00
> ?? ??: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> ??: [USRP-users] Overrun on USB vs Ethernet
>
> All,
>
> I am experiencing some issues with overruns stopping the streamer of our
> USB B200 devices. Currently the computers in use are not the fastest in
> their kind, but I am wondering where the limitation is coming from. I
> haven't found a way to measure the throughput of the USB, so it might
> either be the USB controller or processor which is not fast enough to
> handle all the data. The benchmark_rate seems to run fine at the rx_rate
> the program is running on.
>
> If for instance I would to switch to a network based device and have the
> connection over ethernet, would this possibly fix the issue or would the
> processor or some other bottleneck still arise. Would like to hear your
> thoughts on this overrun and most likely bottleneck problem.
>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190828/4642a81b/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 6
> Date: Thu, 29 Aug 2019 00:23:13 +0900
> From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
> To: Timothy Kurp <timothy.kurp@gmail.com>
> Cc: usrp-users <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] RFNoc Testbench / EOB
> Message-ID:
>         <
> CAL7q81vNQFzbHh3iVbrBkpbjoteN2Qwnp2YwCeRa+uT9kozpaw@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> Hi Tim,
>
> My mistake on my original reply, you should use push_pkt()/pull_pkt(). You
> provide the header to that function (along with the payload), which is how
> you will be able to set EOB and a packet size with an odd number of 16-bit
> samples. If you really dig into sim_rfnoc_lib.svh, sim_cvita_lib.svh, and
> noc_block_export_io.v, you'll see that push_pkt() interfaces with noc_shell
> not axi_wrapper. Even though cvita_payload_t is a 64-bit wide queue, the
> packet size in the header is what matters. You'll also need to remove or
> modify line 236 in push_pkt() in sim_cvita_lib.svh, as that assertion
> checks if the header's packet size is a multiple of 4 bytes.
>
> Jonathon
>
> On Wed, Aug 28, 2019 at 1:07 AM Timothy Kurp <timothy.kurp@gmail.com>
> wrote:
>
> > Hi Jon,
> >
> > This doesn't answer my question, perhaps I didn't convey the problem
> > clearly. I am trying to test the case where TLAST occurs on an odd
> sample,
> > at the same time as EOB. Push word provides access to tlast, but not EOB.
> > To throw eob I need to use send() which takes in pkt.payload and
> > pkt.header. I can manipulate eob in the metadata there.  pkt.payload is
> of
> > type cvita_payload_t, which is 64 bits wide. Send() will throw tlast at
> the
> > end of the packet, which will always contain a multiple of 2 complex
> > samples since the payload is defined at 64 bits. That is my problem.
> There
> > is no way to throw eob and tlast on a packet that contains an odd number
> of
> > i/q samples.
> >
> > Tim
> >
> > On Tue, Aug 27, 2019 at 12:21 AM Timothy Kurp <timothy.kurp@gmail.com>
> > wrote:
> >
> >> Thanks! I will look at that example.
> >>
> >> Tim
> >>
> >> On Tue, Aug 27, 2019 at 12:15 AM Jonathon Pendlum <
> >> jonathon.pendlum@ettus.com> wrote:
> >>
> >>> Hi Tim,
> >>>
> >>> Look at noc_block_fft_tb.v for an example on how to operate on a 32-bit
> >>> sample by sample basis. Unfortunately, if you want to do sizes smaller
> than
> >>> 32-bit, you'll need to write your own version of send()/recv() or
> >>> push_word()/pull_word() from sim_rfnoc_lib.svh.
> >>>
> >>> Jonathon
> >>>
> >>> On Tue, Aug 27, 2019 at 1:05 PM Timothy Kurp via USRP-users <
> >>> usrp-users@lists.ettus.com> wrote:
> >>>
> >>>> Hey Users!
> >>>>
> >>>> I think this may be a possible deficiency in the test bench
> >>>> architecture, or perhaps I just don't know how to instrument it
> properly. I
> >>>> have a custom block that performs a 2:1 rate change roughly,
> performing
> >>>> compression of the 16 bit I/Q from the radio down to a 16 bit word
> that is
> >>>> compressed, I won't describe how. There is a corner case if EOB
> occurs when
> >>>> there is an odd number of samples received from the radio. I have
> handled
> >>>> this by using simple mode = 0, manipulating cvita header manually and
> >>>> throwing tlast to make packets, with success. The noc block works,
> but I am
> >>>> struggling with how to exercise the corner case in the testbench.
> >>>>
> >>>> From what I have seen, the testbench only allows for EOB to be
> >>>> manipulated on sample counts that are a multiple of 2 (send()
> operates on
> >>>> 64 bits, or 2 samples of 16 bit I/Q). We have looked at the source and
> >>>> there doesn't seem to be an easy way to throw EOB/TLAST on odd
> samples.We
> >>>> also think it is not guaranteed that this will never happen from the
> radio.
> >>>> Thoughts?
> >>>>
> >>>> Tim
> >>>> _______________________________________________
> >>>> USRP-users mailing list
> >>>> USRP-users@lists.ettus.com
> >>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>>
> >>>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190829/4d443d30/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 7
> Date: Wed, 28 Aug 2019 11:32:03 -0400
> From: Timothy Kurp <timothy.kurp@gmail.com>
> To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
> Cc: usrp-users <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] RFNoc Testbench / EOB
> Message-ID:
>         <CABsifT=
> GitkqEFU8++RxDTrqYbuCW_UC-kbDq8dx8giB0ocPyw@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> That sounds like it will do it. Thanks!
>
> Tim
>
> On Wed, Aug 28, 2019 at 11:23 AM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
> > Hi Tim,
> >
> > My mistake on my original reply, you should use push_pkt()/pull_pkt().
> You
> > provide the header to that function (along with the payload), which is
> how
> > you will be able to set EOB and a packet size with an odd number of
> 16-bit
> > samples. If you really dig into sim_rfnoc_lib.svh, sim_cvita_lib.svh, and
> > noc_block_export_io.v, you'll see that push_pkt() interfaces with
> noc_shell
> > not axi_wrapper. Even though cvita_payload_t is a 64-bit wide queue, the
> > packet size in the header is what matters. You'll also need to remove or
> > modify line 236 in push_pkt() in sim_cvita_lib.svh, as that assertion
> > checks if the header's packet size is a multiple of 4 bytes.
> >
> > Jonathon
> >
> > On Wed, Aug 28, 2019 at 1:07 AM Timothy Kurp <timothy.kurp@gmail.com>
> > wrote:
> >
> >> Hi Jon,
> >>
> >> This doesn't answer my question, perhaps I didn't convey the problem
> >> clearly. I am trying to test the case where TLAST occurs on an odd
> sample,
> >> at the same time as EOB. Push word provides access to tlast, but not
> EOB.
> >> To throw eob I need to use send() which takes in pkt.payload and
> >> pkt.header. I can manipulate eob in the metadata there.  pkt.payload is
> of
> >> type cvita_payload_t, which is 64 bits wide. Send() will throw tlast at
> the
> >> end of the packet, which will always contain a multiple of 2 complex
> >> samples since the payload is defined at 64 bits. That is my problem.
> There
> >> is no way to throw eob and tlast on a packet that contains an odd
> number of
> >> i/q samples.
> >>
> >> Tim
> >>
> >> On Tue, Aug 27, 2019 at 12:21 AM Timothy Kurp <timothy.kurp@gmail.com>
> >> wrote:
> >>
> >>> Thanks! I will look at that example.
> >>>
> >>> Tim
> >>>
> >>> On Tue, Aug 27, 2019 at 12:15 AM Jonathon Pendlum <
> >>> jonathon.pendlum@ettus.com> wrote:
> >>>
> >>>> Hi Tim,
> >>>>
> >>>> Look at noc_block_fft_tb.v for an example on how to operate on a
> 32-bit
> >>>> sample by sample basis. Unfortunately, if you want to do sizes
> smaller than
> >>>> 32-bit, you'll need to write your own version of send()/recv() or
> >>>> push_word()/pull_word() from sim_rfnoc_lib.svh.
> >>>>
> >>>> Jonathon
> >>>>
> >>>> On Tue, Aug 27, 2019 at 1:05 PM Timothy Kurp via USRP-users <
> >>>> usrp-users@lists.ettus.com> wrote:
> >>>>
> >>>>> Hey Users!
> >>>>>
> >>>>> I think this may be a possible deficiency in the test bench
> >>>>> architecture, or perhaps I just don't know how to instrument it
> properly. I
> >>>>> have a custom block that performs a 2:1 rate change roughly,
> performing
> >>>>> compression of the 16 bit I/Q from the radio down to a 16 bit word
> that is
> >>>>> compressed, I won't describe how. There is a corner case if EOB
> occurs when
> >>>>> there is an odd number of samples received from the radio. I have
> handled
> >>>>> this by using simple mode = 0, manipulating cvita header manually and
> >>>>> throwing tlast to make packets, with success. The noc block works,
> but I am
> >>>>> struggling with how to exercise the corner case in the testbench.
> >>>>>
> >>>>> From what I have seen, the testbench only allows for EOB to be
> >>>>> manipulated on sample counts that are a multiple of 2 (send()
> operates on
> >>>>> 64 bits, or 2 samples of 16 bit I/Q). We have looked at the source
> and
> >>>>> there doesn't seem to be an easy way to throw EOB/TLAST on odd
> samples.We
> >>>>> also think it is not guaranteed that this will never happen from the
> radio.
> >>>>> Thoughts?
> >>>>>
> >>>>> Tim
> >>>>> _______________________________________________
> >>>>> USRP-users mailing list
> >>>>> USRP-users@lists.ettus.com
> >>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>>>
> >>>>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190828/7473e877/attachment-0001.html
> >
>
> ------------------------------
>
> Subject: Digest Footer
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> ------------------------------
>
> End of USRP-users Digest, Vol 108, Issue 26
> *******************************************
>


-- 

Met vriendelijke groet/With kind regards,

Remco Vink

OPNT B.V. | Time provisioning

De Boelelaan 1081 | Gebouw W&N |1081 HV Amsterdam

E: r.vink@opnt.nl  <r.vink@opnt.nl>| www.opnt.nl
<http://demo.altium.com/0a6ae56f2bc6e9fbbe>

--000000000000163acc0591430132
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you Kyeong for the input.<br></div><div>I was a=
ble to find the &quot;probe rate&quot; in Gnuradio, but unfortunately my=20
program is indeed not build in Gnuradio. Does anyone know of a way to=20
achieve this by the use of C++ and the UHD Driver?</div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Op wo 28 aug. 2019 om 18:=
00 schreef &lt;<a href=3D"mailto:usrp-users-request@lists.ettus.com">usrp-u=
sers-request@lists.ettus.com</a>&gt;:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">Send USRP-users mailing list submissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http:/=
/lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-request@lists.ettu=
s.com" target=3D"_blank">usrp-users-request@lists.ettus.com</a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-owner@lists.ettus.=
com" target=3D"_blank">usrp-users-owner@lists.ettus.com</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of USRP-users digest...&quot;<br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. Re: RFNoc Testbench / EOB (Timothy Kurp)<br>
=C2=A0 =C2=A02. e320 GPIO pinout (Aaron Holtzman)<br>
=C2=A0 =C2=A03. Re: e320 GPIO pinout (Robin Coxe)<br>
=C2=A0 =C2=A04. Overrun on USB vs Ethernet (Remco Vink)<br>
=C2=A0 =C2=A05. Re: Overrun on USB vs Ethernet (Kyeong Su Shin)<br>
=C2=A0 =C2=A06. Re: RFNoc Testbench / EOB (Jonathon Pendlum)<br>
=C2=A0 =C2=A07. Re: RFNoc Testbench / EOB (Timothy Kurp)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Tue, 27 Aug 2019 12:06:54 -0400<br>
From: Timothy Kurp &lt;<a href=3D"mailto:timothy.kurp@gmail.com" target=3D"=
_blank">timothy.kurp@gmail.com</a>&gt;<br>
To: Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" targ=
et=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;<br>
Cc: usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] RFNoc Testbench / EOB<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;CABsifTk8doL0VhOP+=3DOP9EPuXxPNqA0kuXmyM-s=
=3D<a href=3D"mailto:B8CZ9YyRmg@mail.gmail.com" target=3D"_blank">B8CZ9YyRm=
g@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hi Jon,<br>
<br>
This doesn&#39;t answer my question, perhaps I didn&#39;t convey the proble=
m<br>
clearly. I am trying to test the case where TLAST occurs on an odd sample,<=
br>
at the same time as EOB. Push word provides access to tlast, but not EOB.<b=
r>
To throw eob I need to use send() which takes in pkt.payload and<br>
pkt.header. I can manipulate eob in the metadata there.=C2=A0 pkt.payload i=
s of<br>
type cvita_payload_t, which is 64 bits wide. Send() will throw tlast at the=
<br>
end of the packet, which will always contain a multiple of 2 complex<br>
samples since the payload is defined at 64 bits. That is my problem.=C2=A0 =
There<br>
is no way to throw eob and tlast on a packet that contains an odd number of=
<br>
i/q samples.<br>
<br>
Tim<br>
<br>
On Tue, Aug 27, 2019 at 12:21 AM Timothy Kurp &lt;<a href=3D"mailto:timothy=
.kurp@gmail.com" target=3D"_blank">timothy.kurp@gmail.com</a>&gt;<br>
wrote:<br>
<br>
&gt; Thanks! I will look at that example.<br>
&gt;<br>
&gt; Tim<br>
&gt;<br>
&gt; On Tue, Aug 27, 2019 at 12:15 AM Jonathon Pendlum &lt;<br>
&gt; <a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jonath=
on.pendlum@ettus.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; Hi Tim,<br>
&gt;&gt;<br>
&gt;&gt; Look at noc_block_fft_tb.v for an example on how to operate on a 3=
2-bit<br>
&gt;&gt; sample by sample basis. Unfortunately, if you want to do sizes sma=
ller than<br>
&gt;&gt; 32-bit, you&#39;ll need to write your own version of send()/recv()=
 or<br>
&gt;&gt; push_word()/pull_word() from sim_rfnoc_lib.svh.<br>
&gt;&gt;<br>
&gt;&gt; Jonathon<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Aug 27, 2019 at 1:05 PM Timothy Kurp via USRP-users &lt;<b=
r>
&gt;&gt; <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;&gt; Hey Users!<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I think this may be a possible deficiency in the test bench<br=
>
&gt;&gt;&gt; architecture, or perhaps I just don&#39;t know how to instrume=
nt it properly. I<br>
&gt;&gt;&gt; have a custom block that performs a 2:1 rate change roughly, p=
erforming<br>
&gt;&gt;&gt; compression of the 16 bit I/Q from the radio down to a 16 bit =
word that is<br>
&gt;&gt;&gt; compressed, I won&#39;t describe how. There is a corner case i=
f EOB occurs when<br>
&gt;&gt;&gt; there is an odd number of samples received from the radio. I h=
ave handled<br>
&gt;&gt;&gt; this by using simple mode =3D 0, manipulating cvita header man=
ually and<br>
&gt;&gt;&gt; throwing tlast to make packets, with success. The noc block wo=
rks, but I am<br>
&gt;&gt;&gt; struggling with how to exercise the corner case in the testben=
ch.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; From what I have seen, the testbench only allows for EOB to be=
<br>
&gt;&gt;&gt; manipulated on sample counts that are a multiple of 2 (send() =
operates on<br>
&gt;&gt;&gt; 64 bits, or 2 samples of 16 bit I/Q). We have looked at the so=
urce and<br>
&gt;&gt;&gt; there doesn&#39;t seem to be an easy way to throw EOB/TLAST on=
 odd samples.We<br>
&gt;&gt;&gt; also think it is not guaranteed that this will never happen fr=
om the radio.<br>
&gt;&gt;&gt; Thoughts?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Tim<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank=
">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_=
lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190827/432a32e0/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20190827/432a32e0/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Tue, 27 Aug 2019 15:47:32 -0400<br>
From: Aaron Holtzman &lt;<a href=3D"mailto:aholtzma@gmail.com" target=3D"_b=
lank">aholtzma@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-us=
ers@lists.ettus.com</a><br>
Subject: [USRP-users] e320 GPIO pinout<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:CAEhVi8SP6FCXO83bnN-_f3P0=
yx_6kw6-1qmFTi6iXwEQTZLJMQ@mail.gmail.com" target=3D"_blank">CAEhVi8SP6FCXO=
83bnN-_f3P0yx_6kw6-1qmFTi6iXwEQTZLJMQ@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
The pinout for the e320 GPIO connector at<br>
<a href=3D"https://files.ettus.com/manual/page_gpio_api.html" rel=3D"norefe=
rrer" target=3D"_blank">https://files.ettus.com/manual/page_gpio_api.html</=
a> does not indicate which<br>
pin is used for the return current. Is it pin 17 (non-mini HDMI) which HDMI=
<br>
uses for the single ended signal return?<br>
<br>
On a related note, will the schematics for e320 ever be released?<br>
<br>
Thanks.<br>
<br>
cheers,<br>
Aaron<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190827/1d3175f3/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20190827/1d3175f3/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 3<br>
Date: Tue, 27 Aug 2019 15:50:04 -0700<br>
From: Robin Coxe &lt;<a href=3D"mailto:coxe@quanttux.com" target=3D"_blank"=
>coxe@quanttux.com</a>&gt;<br>
To: Aaron Holtzman &lt;<a href=3D"mailto:aholtzma@gmail.com" target=3D"_bla=
nk">aholtzma@gmail.com</a>&gt;<br>
Cc: Ettus Mail List &lt;<a href=3D"mailto:USRP-users@lists.ettus.com" targe=
t=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] e320 GPIO pinout<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:CAKJyDkLUHxmpwmELAwBAMTs7=
Up0wJQEnwMMXspO1_QbwA3OUQQ@mail.gmail.com" target=3D"_blank">CAKJyDkLUHxmpw=
mELAwBAMTs7Up0wJQEnwMMXspO1_QbwA3OUQQ@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
[image: e320_mini_hdmi.png]<br>
Here&#39;s the pinout of the E320 GPIO connector.=C2=A0 =C2=A0Someone from =
Ettus Support<br>
(i.e., who is still employed by NI) will have to comment on when the E320<b=
r>
schematics will be available.<br>
<br>
On Tue, Aug 27, 2019 at 1:06 PM Aaron Holtzman via USRP-users &lt;<br>
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br>
<br>
&gt; The pinout for the e320 GPIO connector at<br>
&gt; <a href=3D"https://files.ettus.com/manual/page_gpio_api.html" rel=3D"n=
oreferrer" target=3D"_blank">https://files.ettus.com/manual/page_gpio_api.h=
tml</a> does not indicate which<br>
&gt; pin is used for the return current. Is it pin 17 (non-mini HDMI) which=
 HDMI<br>
&gt; uses for the single ended signal return?<br>
&gt;<br>
&gt; On a related note, will the schematics for e320 ever be released?<br>
&gt;<br>
&gt; Thanks.<br>
&gt;<br>
&gt; cheers,<br>
&gt; Aaron<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190827/0e5bbef6/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20190827/0e5bbef6/attachment-0001.html</a>&gt;<br>
-------------- next part --------------<br>
A non-text attachment was scrubbed...<br>
Name: e320_mini_hdmi.png<br>
Type: image/png<br>
Size: 78640 bytes<br>
Desc: not available<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190827/0e5bbef6/attachment-0001.png" rel=3D"noreferrer" =
target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.c=
om/attachments/20190827/0e5bbef6/attachment-0001.png</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 4<br>
Date: Wed, 28 Aug 2019 09:00:36 +0200<br>
From: Remco Vink &lt;<a href=3D"mailto:r.vink@opnt.nl" target=3D"_blank">r.=
vink@opnt.nl</a>&gt;<br>
To: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: [USRP-users] Overrun on USB vs Ethernet<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;CAJ4BvYETtM=3D=3D<a href=3D"mailto:U1NrFYJM=
eTdykP6NNuk0B3eWAmYj3ibKj-zVEA@mail.gmail.com" target=3D"_blank">U1NrFYJMeT=
dykP6NNuk0B3eWAmYj3ibKj-zVEA@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
All,<br>
<br>
I am experiencing some issues with overruns stopping the streamer of our<br=
>
USB B200 devices. Currently the computers in use are not the fastest in<br>
their kind, but I am wondering where the limitation is coming from. I<br>
haven&#39;t found a way to measure the throughput of the USB, so it might<b=
r>
either be the USB controller or processor which is not fast enough to<br>
handle all the data. The benchmark_rate seems to run fine at the rx_rate<br=
>
the program is running on.<br>
<br>
If for instance I would to switch to a network based device and have the<br=
>
connection over ethernet, would this possibly fix the issue or would the<br=
>
processor or some other bottleneck still arise. Would like to hear your<br>
thoughts on this overrun and most likely bottleneck problem.<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190828/ecd8ec60/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20190828/ecd8ec60/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 5<br>
Date: Wed, 28 Aug 2019 08:47:21 +0000<br>
From: Kyeong Su Shin &lt;<a href=3D"mailto:ksshin@postech.ac.kr" target=3D"=
_blank">ksshin@postech.ac.kr</a>&gt;<br>
To: &quot;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">u=
srp-users@lists.ettus.com</a>&quot; &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;, Remco<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Vink &lt;<a href=3D"mailto:r.vink@opnt.nl" targ=
et=3D"_blank">r.vink@opnt.nl</a>&gt;<br>
Subject: Re: [USRP-users] Overrun on USB vs Ethernet<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:SL2P216MB0938126B83F61183=
B049D0FA93A30@SL2P216MB0938.KORP216.PROD.OUTLOOK.COM" target=3D"_blank">SL2=
P216MB0938126B83F61183B049D0FA93A30@SL2P216MB0938.KORP216.PROD.OUTLOOK.COM<=
/a>&gt;<br>
<br>
Content-Type: text/plain; charset=3D&quot;euc-kr&quot;<br>
<br>
Hello Remco:<br>
<br>
If benchmark_rate runs fine at the target rx rate, the processing speed of =
the CPU is probably the main bottleneck. If you want to test it further, yo=
u can check the &quot;maximum throughput&quot; of your software (maximum rx=
 rate that your software can keep up).<br>
<br>
If your program is in GNU Radio, one thing that you can do is replacing the=
 &quot;USRP Source&quot; to a file source with pre-recorded data (or maybe =
a random source, if the performance of your flow graph is not affected by t=
he incoming data), and attaching a &quot;Probe Rate&quot; and=C2=A0 a&quot;=
Message Debug&quot; right after that. If the processing rate, printed to st=
dout, is slower than the target sampling rate, then your your CPU is not ke=
eping up. If it is keeping up, the problem could be caused by some other is=
sues, including but not limited to two-clock issues, USB controller issues,=
 and USB connection issues (faulty USB 3.0 connection; it does happen!). Yo=
u should be able to do something similar even if your program is not in GNU=
 Radio (I don&#39;t have directions for that, though).<br>
<br>
In my experience, Ethernet-based USRPs (like N200s and X300s) are indeed a =
bit better at this. However, if the bottleneck is caused by the software, t=
hen replacing the SDR board won&#39;t fix the problem.<br>
<br>
Regards,<br>
Kyeong Su Shin<br>
________________________________<br>
?? ??: Remco Vink via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; ?? USRP-users =
&lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com" target=3D"_blank"=
>usrp-users-bounces@lists.ettus.com</a>&gt;<br>
?? ??: 2019? 8? 28? ??? ?? 4:00<br>
?? ??: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp=
-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
??: [USRP-users] Overrun on USB vs Ethernet<br>
<br>
All,<br>
<br>
I am experiencing some issues with overruns stopping the streamer of our US=
B B200 devices. Currently the computers in use are not the fastest in their=
 kind, but I am wondering where the limitation is coming from. I haven&#39;=
t found a way to measure the throughput of the USB, so it might either be t=
he USB controller or processor which is not fast enough to handle all the d=
ata. The benchmark_rate seems to run fine at the rx_rate the program is run=
ning on.<br>
<br>
If for instance I would to switch to a network based device and have the co=
nnection over ethernet, would this possibly fix the issue or would the proc=
essor or some other bottleneck still arise. Would like to hear your thought=
s on this overrun and most likely bottleneck problem.<br>
<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190828/4642a81b/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20190828/4642a81b/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 6<br>
Date: Thu, 29 Aug 2019 00:23:13 +0900<br>
From: Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" ta=
rget=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;<br>
To: Timothy Kurp &lt;<a href=3D"mailto:timothy.kurp@gmail.com" target=3D"_b=
lank">timothy.kurp@gmail.com</a>&gt;<br>
Cc: usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] RFNoc Testbench / EOB<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:CAL7q81vNQFzbHh3iVbrBkpbj=
oteN2Qwnp2YwCeRa%2BuT9kozpaw@mail.gmail.com" target=3D"_blank">CAL7q81vNQFz=
bHh3iVbrBkpbjoteN2Qwnp2YwCeRa+uT9kozpaw@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hi Tim,<br>
<br>
My mistake on my original reply, you should use push_pkt()/pull_pkt(). You<=
br>
provide the header to that function (along with the payload), which is how<=
br>
you will be able to set EOB and a packet size with an odd number of 16-bit<=
br>
samples. If you really dig into sim_rfnoc_lib.svh, sim_cvita_lib.svh, and<b=
r>
noc_block_export_io.v, you&#39;ll see that push_pkt() interfaces with noc_s=
hell<br>
not axi_wrapper. Even though cvita_payload_t is a 64-bit wide queue, the<br=
>
packet size in the header is what matters. You&#39;ll also need to remove o=
r<br>
modify line 236 in push_pkt() in sim_cvita_lib.svh, as that assertion<br>
checks if the header&#39;s packet size is a multiple of 4 bytes.<br>
<br>
Jonathon<br>
<br>
On Wed, Aug 28, 2019 at 1:07 AM Timothy Kurp &lt;<a href=3D"mailto:timothy.=
kurp@gmail.com" target=3D"_blank">timothy.kurp@gmail.com</a>&gt; wrote:<br>
<br>
&gt; Hi Jon,<br>
&gt;<br>
&gt; This doesn&#39;t answer my question, perhaps I didn&#39;t convey the p=
roblem<br>
&gt; clearly. I am trying to test the case where TLAST occurs on an odd sam=
ple,<br>
&gt; at the same time as EOB. Push word provides access to tlast, but not E=
OB.<br>
&gt; To throw eob I need to use send() which takes in pkt.payload and<br>
&gt; pkt.header. I can manipulate eob in the metadata there.=C2=A0 pkt.payl=
oad is of<br>
&gt; type cvita_payload_t, which is 64 bits wide. Send() will throw tlast a=
t the<br>
&gt; end of the packet, which will always contain a multiple of 2 complex<b=
r>
&gt; samples since the payload is defined at 64 bits. That is my problem.=
=C2=A0 There<br>
&gt; is no way to throw eob and tlast on a packet that contains an odd numb=
er of<br>
&gt; i/q samples.<br>
&gt;<br>
&gt; Tim<br>
&gt;<br>
&gt; On Tue, Aug 27, 2019 at 12:21 AM Timothy Kurp &lt;<a href=3D"mailto:ti=
mothy.kurp@gmail.com" target=3D"_blank">timothy.kurp@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;<br>
&gt;&gt; Thanks! I will look at that example.<br>
&gt;&gt;<br>
&gt;&gt; Tim<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Aug 27, 2019 at 12:15 AM Jonathon Pendlum &lt;<br>
&gt;&gt; <a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jo=
nathon.pendlum@ettus.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;&gt; Hi Tim,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Look at noc_block_fft_tb.v for an example on how to operate on=
 a 32-bit<br>
&gt;&gt;&gt; sample by sample basis. Unfortunately, if you want to do sizes=
 smaller than<br>
&gt;&gt;&gt; 32-bit, you&#39;ll need to write your own version of send()/re=
cv() or<br>
&gt;&gt;&gt; push_word()/pull_word() from sim_rfnoc_lib.svh.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Jonathon<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Tue, Aug 27, 2019 at 1:05 PM Timothy Kurp via USRP-users &l=
t;<br>
&gt;&gt;&gt; <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Hey Users!<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; I think this may be a possible deficiency in the test benc=
h<br>
&gt;&gt;&gt;&gt; architecture, or perhaps I just don&#39;t know how to inst=
rument it properly. I<br>
&gt;&gt;&gt;&gt; have a custom block that performs a 2:1 rate change roughl=
y, performing<br>
&gt;&gt;&gt;&gt; compression of the 16 bit I/Q from the radio down to a 16 =
bit word that is<br>
&gt;&gt;&gt;&gt; compressed, I won&#39;t describe how. There is a corner ca=
se if EOB occurs when<br>
&gt;&gt;&gt;&gt; there is an odd number of samples received from the radio.=
 I have handled<br>
&gt;&gt;&gt;&gt; this by using simple mode =3D 0, manipulating cvita header=
 manually and<br>
&gt;&gt;&gt;&gt; throwing tlast to make packets, with success. The noc bloc=
k works, but I am<br>
&gt;&gt;&gt;&gt; struggling with how to exercise the corner case in the tes=
tbench.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; From what I have seen, the testbench only allows for EOB t=
o be<br>
&gt;&gt;&gt;&gt; manipulated on sample counts that are a multiple of 2 (sen=
d() operates on<br>
&gt;&gt;&gt;&gt; 64 bits, or 2 samples of 16 bit I/Q). We have looked at th=
e source and<br>
&gt;&gt;&gt;&gt; there doesn&#39;t seem to be an easy way to throw EOB/TLAS=
T on odd samples.We<br>
&gt;&gt;&gt;&gt; also think it is not guaranteed that this will never happe=
n from the radio.<br>
&gt;&gt;&gt;&gt; Thoughts?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Tim<br>
&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_b=
lank">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-us=
ers_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettu=
s.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190829/4d443d30/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20190829/4d443d30/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 7<br>
Date: Wed, 28 Aug 2019 11:32:03 -0400<br>
From: Timothy Kurp &lt;<a href=3D"mailto:timothy.kurp@gmail.com" target=3D"=
_blank">timothy.kurp@gmail.com</a>&gt;<br>
To: Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" targ=
et=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;<br>
Cc: usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] RFNoc Testbench / EOB<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;CABsifT=3D<a href=3D"mailto:GitkqEFU8%2B%2B=
RxDTrqYbuCW_UC-kbDq8dx8giB0ocPyw@mail.gmail.com" target=3D"_blank">GitkqEFU=
8++RxDTrqYbuCW_UC-kbDq8dx8giB0ocPyw@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
That sounds like it will do it. Thanks!<br>
<br>
Tim<br>
<br>
On Wed, Aug 28, 2019 at 11:23 AM Jonathon Pendlum &lt;<br>
<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pe=
ndlum@ettus.com</a>&gt; wrote:<br>
<br>
&gt; Hi Tim,<br>
&gt;<br>
&gt; My mistake on my original reply, you should use push_pkt()/pull_pkt().=
 You<br>
&gt; provide the header to that function (along with the payload), which is=
 how<br>
&gt; you will be able to set EOB and a packet size with an odd number of 16=
-bit<br>
&gt; samples. If you really dig into sim_rfnoc_lib.svh, sim_cvita_lib.svh, =
and<br>
&gt; noc_block_export_io.v, you&#39;ll see that push_pkt() interfaces with =
noc_shell<br>
&gt; not axi_wrapper. Even though cvita_payload_t is a 64-bit wide queue, t=
he<br>
&gt; packet size in the header is what matters. You&#39;ll also need to rem=
ove or<br>
&gt; modify line 236 in push_pkt() in sim_cvita_lib.svh, as that assertion<=
br>
&gt; checks if the header&#39;s packet size is a multiple of 4 bytes.<br>
&gt;<br>
&gt; Jonathon<br>
&gt;<br>
&gt; On Wed, Aug 28, 2019 at 1:07 AM Timothy Kurp &lt;<a href=3D"mailto:tim=
othy.kurp@gmail.com" target=3D"_blank">timothy.kurp@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;<br>
&gt;&gt; Hi Jon,<br>
&gt;&gt;<br>
&gt;&gt; This doesn&#39;t answer my question, perhaps I didn&#39;t convey t=
he problem<br>
&gt;&gt; clearly. I am trying to test the case where TLAST occurs on an odd=
 sample,<br>
&gt;&gt; at the same time as EOB. Push word provides access to tlast, but n=
ot EOB.<br>
&gt;&gt; To throw eob I need to use send() which takes in pkt.payload and<b=
r>
&gt;&gt; pkt.header. I can manipulate eob in the metadata there.=C2=A0 pkt.=
payload is of<br>
&gt;&gt; type cvita_payload_t, which is 64 bits wide. Send() will throw tla=
st at the<br>
&gt;&gt; end of the packet, which will always contain a multiple of 2 compl=
ex<br>
&gt;&gt; samples since the payload is defined at 64 bits. That is my proble=
m.=C2=A0 There<br>
&gt;&gt; is no way to throw eob and tlast on a packet that contains an odd =
number of<br>
&gt;&gt; i/q samples.<br>
&gt;&gt;<br>
&gt;&gt; Tim<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Aug 27, 2019 at 12:21 AM Timothy Kurp &lt;<a href=3D"mailt=
o:timothy.kurp@gmail.com" target=3D"_blank">timothy.kurp@gmail.com</a>&gt;<=
br>
&gt;&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;&gt; Thanks! I will look at that example.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Tim<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Tue, Aug 27, 2019 at 12:15 AM Jonathon Pendlum &lt;<br>
&gt;&gt;&gt; <a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank=
">jonathon.pendlum@ettus.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Hi Tim,<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Look at noc_block_fft_tb.v for an example on how to operat=
e on a 32-bit<br>
&gt;&gt;&gt;&gt; sample by sample basis. Unfortunately, if you want to do s=
izes smaller than<br>
&gt;&gt;&gt;&gt; 32-bit, you&#39;ll need to write your own version of send(=
)/recv() or<br>
&gt;&gt;&gt;&gt; push_word()/pull_word() from sim_rfnoc_lib.svh.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Jonathon<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On Tue, Aug 27, 2019 at 1:05 PM Timothy Kurp via USRP-user=
s &lt;<br>
&gt;&gt;&gt;&gt; <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_b=
lank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Hey Users!<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; I think this may be a possible deficiency in the test =
bench<br>
&gt;&gt;&gt;&gt;&gt; architecture, or perhaps I just don&#39;t know how to =
instrument it properly. I<br>
&gt;&gt;&gt;&gt;&gt; have a custom block that performs a 2:1 rate change ro=
ughly, performing<br>
&gt;&gt;&gt;&gt;&gt; compression of the 16 bit I/Q from the radio down to a=
 16 bit word that is<br>
&gt;&gt;&gt;&gt;&gt; compressed, I won&#39;t describe how. There is a corne=
r case if EOB occurs when<br>
&gt;&gt;&gt;&gt;&gt; there is an odd number of samples received from the ra=
dio. I have handled<br>
&gt;&gt;&gt;&gt;&gt; this by using simple mode =3D 0, manipulating cvita he=
ader manually and<br>
&gt;&gt;&gt;&gt;&gt; throwing tlast to make packets, with success. The noc =
block works, but I am<br>
&gt;&gt;&gt;&gt;&gt; struggling with how to exercise the corner case in the=
 testbench.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; From what I have seen, the testbench only allows for E=
OB to be<br>
&gt;&gt;&gt;&gt;&gt; manipulated on sample counts that are a multiple of 2 =
(send() operates on<br>
&gt;&gt;&gt;&gt;&gt; 64 bits, or 2 samples of 16 bit I/Q). We have looked a=
t the source and<br>
&gt;&gt;&gt;&gt;&gt; there doesn&#39;t seem to be an easy way to throw EOB/=
TLAST on odd samples.We<br>
&gt;&gt;&gt;&gt;&gt; also think it is not guaranteed that this will never h=
appen from the radio.<br>
&gt;&gt;&gt;&gt;&gt; Thoughts?<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Tim<br>
&gt;&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=
=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usr=
p-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.=
ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190828/7473e877/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20190828/7473e877/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Subject: Digest Footer<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
<br>
<br>
------------------------------<br>
<br>
End of USRP-users Digest, Vol 108, Issue 26<br>
*******************************************<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font color=3D"#8888=
88"><span><p style=3D"line-height:1.2;margin-top:0pt;margin-bottom:12pt"><s=
pan style=3D"background-color:transparent;color:rgb(89,89,89);font-family:A=
rial;font-size:11pt;font-weight:700;white-space:pre-wrap">Met vriendelijke =
groet/With kind regards,</span><br></p><p dir=3D"ltr" style=3D"line-height:=
1.2;margin-top:0pt;margin-bottom:12pt"><span style=3D"font-size:11pt;font-f=
amily:Arial;color:rgb(89,89,89);background-color:transparent;font-weight:70=
0;vertical-align:baseline;white-space:pre-wrap">Remco Vink</span></p><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span =
style=3D"font-size:9.5pt;font-family:Arial;color:rgb(255,0,0);background-co=
lor:transparent;font-weight:700;vertical-align:baseline;white-space:pre-wra=
p">O</span><span style=3D"font-size:9.5pt;font-family:Arial;color:rgb(50,62=
,79);background-color:transparent;font-weight:700;vertical-align:baseline;w=
hite-space:pre-wrap">PNT</span><span style=3D"font-size:9.5pt;font-family:A=
rial;color:rgb(132,150,176);background-color:transparent;font-weight:700;ve=
rtical-align:baseline;white-space:pre-wrap">=C2=A0</span><span style=3D"fon=
t-size:9.5pt;font-family:Arial;color:rgb(89,89,89);background-color:transpa=
rent;font-weight:700;vertical-align:baseline;white-space:pre-wrap">B.V.</sp=
an><span style=3D"font-size:9.5pt;font-family:Arial;color:rgb(89,89,89);bac=
kground-color:transparent;vertical-align:baseline;white-space:pre-wrap">=C2=
=A0| Time provisioning</span></p><p dir=3D"ltr" style=3D"line-height:1.38;m=
argin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:10pt;font-family:=
Arial;color:rgb(65,65,65);background-color:transparent;vertical-align:basel=
ine;white-space:pre-wrap">De Boelelaan 1081=C2=A0</span><span style=3D"font=
-size:10pt;font-family:Arial;color:rgb(65,65,65);background-color:transpare=
nt;font-weight:700;vertical-align:baseline;white-space:pre-wrap">|=C2=A0</s=
pan><span style=3D"font-size:10pt;font-family:Arial;color:rgb(65,65,65);bac=
kground-color:transparent;vertical-align:baseline;white-space:pre-wrap">Geb=
ouw W&amp;N</span><span style=3D"font-size:10pt;font-family:Arial;color:rgb=
(65,65,65);background-color:transparent;font-weight:700;vertical-align:base=
line;white-space:pre-wrap">=C2=A0|</span><span style=3D"font-size:10pt;font=
-family:Arial;color:rgb(65,65,65);background-color:transparent;vertical-ali=
gn:baseline;white-space:pre-wrap">1081 HV Amsterdam</span></p><p dir=3D"ltr=
" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=
=3D"font-size:10pt;font-family:Arial;color:rgb(65,65,65);background-color:t=
ransparent;vertical-align:baseline;white-space:pre-wrap">E: </span><a href=
=3D"mailto:r.vink@opnt.nl" target=3D"_blank"><span style=3D"font-size:9.5pt=
;font-family:Arial;color:rgb(0,0,0);background-color:transparent;vertical-a=
lign:baseline;white-space:pre-wrap">r.vink@opnt.nl</span><span style=3D"fon=
t-size:10pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent=
;vertical-align:baseline;white-space:pre-wrap">=C2=A0</span></a><span style=
=3D"font-size:10pt;font-family:Arial;color:rgb(65,65,65);background-color:t=
ransparent;font-weight:700;vertical-align:baseline;white-space:pre-wrap">|<=
/span><span style=3D"font-size:10pt;font-family:Arial;color:rgb(65,65,65);b=
ackground-color:transparent;vertical-align:baseline;white-space:pre-wrap">=
=C2=A0</span><a href=3D"http://demo.altium.com/0a6ae56f2bc6e9fbbe" target=
=3D"_blank"><span style=3D"font-size:10pt;font-family:Arial;color:rgb(0,0,0=
);background-color:transparent;vertical-align:baseline;white-space:pre-wrap=
">www.opnt.nl</span></a><span style=3D"font-size:10pt;font-family:Arial;col=
or:rgb(65,65,65);background-color:transparent;font-weight:700;vertical-alig=
n:baseline;white-space:pre-wrap">=C2=A0</span></p><div><span style=3D"font-=
size:10pt;font-family:Arial;color:rgb(65,65,65);background-color:transparen=
t;font-weight:700;vertical-align:baseline;white-space:pre-wrap"><br></span>=
</div></span></font></div></div></div></div></div>

--000000000000163acc0591430132--


--===============7989411420104323916==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7989411420104323916==--

