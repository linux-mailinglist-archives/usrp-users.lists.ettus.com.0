Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C4B5B09F9
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 18:19:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 72A66383B60
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 12:19:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662567574; bh=jOVax5gm7wvHfRO2Ef1H8h57U5YZZnccS7GsgKQj8Oc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=iHGYvzb+VXHo+Ig1PmLCb9w9aqsW77Z9lbOY/PdBRYdjCKxHuynsRhCH/Cj0PQqrR
	 nGte/51uat8u3fDsQIVaMUaaBrEXcylDGeS6+7+IYvaYh2MMlaTxuC2R2YlL6C9kVR
	 juTBuAnrGdzBnPDqXnmKOR0rs1yjb7Sk4YEX2NK9nlsvMp33qyXLnFESkV2q7GUK9l
	 uYU6XqiEERmr945f/lcEiXf5+bGGQg+DlmjCrbF8ii/sqkQidPZ1zYsBCGq4oUJaLs
	 NVLRKI6fGeBljmzutCNVOMHLGiwcK4oBqteTZUfzez+WbVYhi95nfOuuJ5mZye2KIT
	 LxPsiGgo7LShg==
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 5EAF138599C
	for <usrp-users@lists.ettus.com>; Wed,  7 Sep 2022 12:18:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="K9LRdqTd";
	dkim-atps=neutral
Received: by mail-yb1-f177.google.com with SMTP id 202so17679737ybe.13
        for <usrp-users@lists.ettus.com>; Wed, 07 Sep 2022 09:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=L6sGWsYqoz2vWeA/HJ100vXDuwJantZUhRe7Ew8aJNY=;
        b=K9LRdqTdGUoJtinMF0omKqT4L8HpCYBGKU+D6PAW5wZ7ah9oEstW4T60F8WYSEyaQ0
         +AvwaFAFq7twxu+ZlLIcon1Cb82euJ2zvh3mejIvL7xldlhK+qncI4r47a/NOu/H3dT9
         73rawEOC5YBzHjlqQRpXjybuAdk9sQoySzaKfRIi2+HYf6GyQh0Mov9ou51AUXffCeq2
         lcmbLXdKaAIPfE4CHjlUL2SA7PNsnSXTJf9HK9GKROGpddbAoHnrmUmZKtq1MoBWdWQ+
         cP9XJ7uuRC2ZNH9VAA2tFIakKG4FodV7VAS6OuEAVv82SU0WU2Qin1Ut6VAF4DEARtiD
         ZpiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=L6sGWsYqoz2vWeA/HJ100vXDuwJantZUhRe7Ew8aJNY=;
        b=EMIHlUk6nUjMLH29YeUxazb7VvUoo45IPwp8KqNNzAoB3Apbobf5zuqzwFjfbzmnDl
         eOmIYfSFgGSWrJQEL9UHr+YeeUFoXhf17vKo/DzaSRm4v0LC/TLq7Kry4oEBTXzioJYV
         RdGmUNz7eu8IkoU1/5UcLIkDWkPP4rhAuCpnOfWrqw9XoV8wTlMSSK81ZXJEDPpSbOF6
         BCDy5w8skWSk4wjOgCIWgKL7LPR2HddvH1YVOOsSvhB9Q3OiKbD/akw42cmbc5KnE4EZ
         c04v7X13uiI4v0SQEPO7ONiWBw2RDihocYvnSKZbeSBlgFrb3Sr9fZ/V4bXX/xYazs7L
         uY4g==
X-Gm-Message-State: ACgBeo3/bChmuQDnv0eWLXgfSb7OS5JkwJFEg8joHqWXgF3hYXC9t3kJ
	ZIdjUecM6Un5vKoAcBmHg0F6JZqTMUjlwfQVaFES8K52Bzo=
X-Google-Smtp-Source: AA6agR5XVKZ1MVJYExGLGovmW9Ge3729zS2+wz8ZkkFwORhsqT4I0znW+cq48oETAm+gMEFRocsjWeLR4WBlVuvK2KE=
X-Received: by 2002:a25:3cc4:0:b0:696:5790:438d with SMTP id
 j187-20020a253cc4000000b006965790438dmr3228846yba.563.1662567502346; Wed, 07
 Sep 2022 09:18:22 -0700 (PDT)
MIME-Version: 1.0
References: <YMFp481oKWLKHn6Gld6NW6T7ruuXTKrHxl9wgxfhLM8@lists.ettus.com>
 <CAB__hTSx=35DRBFwSuhTP54M-+yOXGpvJCouEu1q0iUAa82cpg@mail.gmail.com>
 <CAB__hTQj71KwcgLjOBYQdPLZ1K0L_JrRTh-CHp-JpG3OorhfxQ@mail.gmail.com>
 <CAP0o2sxysF4arBUXbf7-TUWv2gmsvc0nZ99e1g8XgQgJTqxhhA@mail.gmail.com>
 <CAFche=hpgCdrAs8OiWdcfqiubXt7NiNXtn3bVhfF8Fs=BAXhiw@mail.gmail.com>
 <CAP0o2szT7DJYWR_+CHeWLNRWhTPyZnM7y+7mVSHk93AHhAkrVg@mail.gmail.com>
 <CAFche=gcMcxK6-4vMpS9n7k-eV8JUZZacj=FRryOu=kd+ACywg@mail.gmail.com>
 <CAP0o2swJKe3SuHGtnZV12u0-G00TvTE5Ds5Peb7Em911qT5yUg@mail.gmail.com>
 <CAFche=jPOUCx+KjqfQHHxpiVMdqxdX_Xc7-4TgPiYE1jzsWs7g@mail.gmail.com>
 <CAP0o2syAqrQJtZrtHdfi9bbgn+VmpbZ_4cVzPgwXRPD6rcEyOw@mail.gmail.com> <36a083d4-631d-6299-032d-f546b4ca3163@o2.pl>
In-Reply-To: <36a083d4-631d-6299-032d-f546b4ca3163@o2.pl>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 7 Sep 2022 12:18:11 -0400
Message-ID: <CAB__hTQdfskJ-fH6bfDwavJuEre8gK441Pu0hCqjRk1g++iSZA@mail.gmail.com>
To: Piotr Krysik <perper@o2.pl>
Message-ID-Hash: J7OUU64YEZBIKG5F53BQ6AMEEPDYEP57
X-Message-ID-Hash: J7OUU64YEZBIKG5F53BQ6AMEEPDYEP57
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: AXI_RAM_FIFO Controller
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J7OUU64YEZBIKG5F53BQ6AMEEPDYEP57/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5074989809817627137=="

--===============5074989809817627137==
Content-Type: multipart/alternative; boundary="00000000000064d9e505e818a934"

--00000000000064d9e505e818a934
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You mentioned that your error happens when running from gnuradio.  What
happens if you remove gnuradio from the equation and run "uhd_usrp_probe"?
Do you still get the error?
Rob

On Wed, Sep 7, 2022 at 10:31 AM Piotr Krysik <perper@o2.pl> wrote:

> Hi Adri=C3=A1n,
>
> This error mean that the block didn't respond to a control message
> during initialization.
>
> I've seen such errors when element of RFNoC graphs wasn't working
> correctly.
> Those situations were when:
> 1. replay block wasn't working correctly due to wrong clock for DDR
> SDRAM controller module,
> 2. I removed implementation of one of Ethernet ports (in order to get
> quicker builds in Vivado) but its end-point was left in the RFNoC graph.
> So it was probed during initialization but there was nothing that could
> respond.
>
> Best Regards,
> Piotr Krysik
>
> W dniu 06.09.2022 o 14:59, Adri=C3=A1n Campos Ramos pisze:
> > HI everyone
> >
> > Thank you very much. I made a controller and, according to the
> > simulation, it's working fine, at least as I wanted. However, I am
> > facing problems to implementate in the fpga. There is not problem when
> > i generate the .bit buf when i call in gnuradio, this error appears:
> >
> > WARNING] [UDP] The current send_buff_size of 212992 is less than the
> > minimum recommended size of 307200 and may result in dropped packets
> > on some NICs
> > [ERROR] [RFNOC::GRAPH] Error during initialization of block 0/DmaFIFO#0=
!
> > [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
> > RfnocError: OpTimeout: Control operation timed out waiting for ACK
> > Traceback (most recent call last):
> >   File
> > "/home/integrasys/rfnoc/src/uhd/fpga/usrp3/top/e320/build/untitled.py",
> > line 181, in <module>
> >     main()
> >   File
> > "/home/integrasys/rfnoc/src/uhd/fpga/usrp3/top/e320/build/untitled.py",
> > line 157, in main
> >     tb =3D top_block_cls()
> >   File
> > "/home/integrasys/rfnoc/src/uhd/fpga/usrp3/top/e320/build/untitled.py",
> > line 76, in __init__
> >     self.rfnoc_graph =3D ettus_rfnoc_graph_0 =3D
> > ettus.rfnoc_graph(uhd.device_addr(",".join(("addr=3D192.168.1.23", ''))=
))
> >   File "/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py",
> > line 1153, in make
> >     return _ettus_swig.rfnoc_graph_make(dev_addr)
> > RuntimeError: RuntimeError: Failure to create rfnoc_grap
> >
> > I attached my image.yml:
> >
> >
> > Thanks in advance.
> >
> > El jue, 1 sept 2022 a las 22:24, Wade Fife (<wade.fife@ettus.com>)
> > escribi=C3=B3:
> >
> >     The DRAM on USRPs is half duplex, but the AXI bus is full duplex,
> >     which makes the real world behavior more complicated. If you want
> >     to simulate accurately for a specific USRP, you could pull in its
> >     AXI interconnect, the Xilinx memory interface IP, and a DRAM
> >     simulation model, then connect it together and match the USRP
> >     design exactly, but this is a lot of work. There are examples that
> >     are similar to this in fpga/usrp3/top/x300/sim/dram_fifo and
> >     fpga/usrp3/top/n3xx/sim/dram_fifo. There's no example for E320,
> >     but the idea is similar.
> >
> >     Wade
> >
> >     On Thu, Sep 1, 2022 at 5:38 AM Adri=C3=A1n Campos Ramos
> >     <adrian.campos@integrasys-sa.com> wrote:
> >
> >         Thank you very much! I was testing the code and I got
> >         something similar to what I wanted. However, in the simulation
> >         the sim_ram is half duplex and my question is if the
> >         implementation in the FPGA is also half or full duplex. And if
> >         it is full, is there any way to simulate?
> >
> >         Thanks in advance.
> >
> >         Adri=C3=A1n
> >
> >         El mi=C3=A9, 31 ago 2022 a las 16:22, Wade Fife
> >         (<wade.fife@ettus.com>) escribi=C3=B3:
> >
> >             OUT_FIFO_SIZE sets the size of the FIFO used to buffer
> >             data read from the external DRAM. But the unit for this
> >             parameter is log base 2 of the size. So, setting it to 20
> >             means the output FIFO will be 2^20 words or 8 MiB
> >             implemented in BRAM, which is too big for the FPGA to
> >             support. You should probably leave it at the default
> >             value. The amount of DRAM to use for the FIFO can be set
> >             by the FIFO_ADDR_MASK parameter.
> >
> >             It should behave like a true FIFO. So anything you write
> >             to the input will come out on the output, but you can
> >             buffer up to the size of the memory you have configured.
> >             I'm not sure I understand your application exactly, but if
> >             you only want to capture at a specific time, then you
> >             should add logic to only write the data to the input of
> >             the FIFO during those times and take care to handle
> >             overflow when the FIFO fills. And add logic on the output
> >             to only read when you want, taking care to handle
> >             underflow when the FIFO empties.
> >
> >             Wade
> >
> >             On Wed, Aug 31, 2022 at 4:42 AM Adri=C3=A1n Campos Ramos
> >             <adrian.campos@integrasys-sa.com> wrote:
> >
> >                 Hi,
> >
> >                 Thank you very much, now I understand how it works and
> >                 it runs perfectly. However, it's not what I expected
> >                 since it does not FIFO behaviour, or I'm
> >                 doing something wrong. What I need is a FIFO that
> >                 stores the data of a signal when I activate a flag and
> >                 reads when I activate another flag continuously and
> >                 constantly. Currently, I have the FIFO implemented in
> >                 the FPGA but it takes too much resources  so I want to
> >                 take advantage of the E320 RAM. I think the
> >                 axi_ram_fifo would be perfect for my project but as
> >                 far i can see, when space =3D 0 and occupied is full, i=
t
> >                 starts to lose the continuity. On the other hand, I
> >                 don't know why but I can't  increase the
> >                 FIFO_OUT_SIZE. With 10 there are outputs but if i
> >                 increase, for example, to 20 it doesn't.
> >
> >                 I attached a photo of the behavior of the
> >                 input_fifo/fifo_ram/ram.
> >                 p1.png
> >
> >                 El mar, 30 ago 2022 a las 19:54, Wade Fife
> >                 (<wade.fife@ettus.com>) escribi=C3=B3:
> >
> >                     Hello Adri=C3=A1n,
> >
> >                     REG_FIFO_FULLNESS is the number of bytes currently
> >                     stored in the RAM of the FIFO.
> >
> >                     FIFO_ADDR_W is a testbench parameter that defines
> >                     the amount of memory address space to use for the
> >                     simulated FIFOs. The unmodified testbench uses a
> >                     single memory to test two FIFOs. So the sum of the
> >                     memory used by both FIFOs must be less than the
> >                     size of the memory being simulated in order for
> >                     the testbench to work (i.e., 2 * 2**FIFO_ADDR_W
> >                     must not exceed 2**MEM_ADDR_W).
> >
> >                     IN_FIFO_SIZE and OUT_FIFO_SIZE control the size of
> >                     the input/output buffers used by the block. They
> >                     can affect the performance of the FIFO, but must
> >                     be large enough to hold two of the expected burst
> >                     memory transfer size, which I think is 512 words.
> >
> >                     The testbench is failing because it expects the
> >                     FIFO to be empty when the simulation begins.
> >                     Perhaps you have started inputting values before
> >                     it was expecting you to?
> >
> >                     Wade
> >
> >                     On Tue, Aug 30, 2022 at 3:13 AM Adri=C3=A1n Campos
> >                     Ramos <adrian.campos@integrasys-sa.com> wrote:
> >
> >                         Hi everyone,
> >
> >                         First of all, thank you very much Rob Kossler
> >                         for the explanation. I made a "controller"
> >                         that sends and receives information at certain
> >                         points in time. However, I am facing problems
> >                         in relation to REG_FIFO_FULLNESS. I've been
> >                         changing the values of FIFO_ADDR_W,
> >                         IN_FIFO_SIZE and OUT_FIFO_SIZE but it didn't
> >                         work. Furthermore, I don't understand the
> >                         problem at all, is the input fifo or the
> >                         output fifo? or the ram?. The controller
> >                         mentioned before has only two counters, one to
> >                         activate the valid flag to send information
> >                         and another to activate the ready flag to
> >                         receive the information and, as far i could
> >                         see, it was working until the assert.
> >
> >                         This is the error that returns me the
> >                         simulation (the number that appears in the
> >                         image is for: `ASSERT_ERROR(val64 =3D=3D 0,
> >                         $sformatf("Incorrect REG_FIFO_FULLNESS value!
> >                         %d",val64));
> >
> >                         Screenshot from 2022-08-30 10-10-52.png
> >                         On the other hand, the data that I send to RAM
> >                         is the value of a counter.
> >
> >                         I hope you can help me. Thanks in advance.
> >
> >                         Adri=C3=A1n Campos
> >
> >                         El jue, 18 ago 2022 a las 22:49, Rob Kossler
> >                         (<rkossler@nd.edu>) escribi=C3=B3:
> >
> >                             Replace "upstream" with "downstream" below.
> >
> >                             On Thu, Aug 18, 2022 at 1:28 PM Rob
> >                             Kossler <rkossler@nd.edu> wrote:
> >
> >                                 Hi Adrian,
> >                                 As you indicated, the RFNoC blocks
> >                                 axi_ram_fifo and Relay both use the
> >                                 FPGA RAM.  axi_ram_fifo doesn't need
> >                                 any registers for control because it
> >                                 just accepts an AXI stream on the
> >                                 input and forwards that exact stream
> >                                 on the output. The "control" is in the
> >                                 AXI tvalid/tready handshaking. Thus,
> >                                 if the upstream block is not ready,
> >                                 the FIFO starts filling up but does
> >                                 not empty until the upstream block is
> >                                 ready.  But, for the Replay block,
> >                                 this block stores the incoming stream
> >                                 to RAM until you later decide to play
> >                                 it out.  It can be used in the
> >                                 transmit path to load a waveform into
> >                                 RAM such that it can be played out to
> >                                 the Tx Radio without any help from the
> >                                 host PC.  Or, it can be used in the
> >                                 receive path to store receive samples
> >                                 as they arrive (up to the given RAM
> >                                 memory depth) and then later
> >                                 downloaded (played out) to the host PC
> >                                 in non-realtime.
> >
> >                                 While I don't know your specific
> >                                 application, I wondered if the Replay
> >                                 block (or the axi_ram_fifo) can
> >                                 already implement your desired
> >                                 functionality such that a custom block
> >                                 is not needed.
> >                                 Rob
> >
> >                                 On Thu, Aug 18, 2022 at 8:25 AM
> >                                 <adrian.campos@integrasys-sa.com> wrote=
:
> >
> >                                     I am making a custom block which
> >                                     has to start storing data to be
> >                                     read later, in other words store
> >                                     the data in a FIFO. I am
> >                                     interested in using the RAM
> >                                     provided by the E320 so I want to
> >                                     take advantage of the axi_ram_fifo
> >                                     code. However, I don't really
> >                                     understand the control of that
> >                                     block, how can I control when to
> >                                     start writing data to memory and
> >                                     when to start reading it? I have
> >                                     checked the registers in case it
> >                                     could be controlled from there
> >                                     like the replay block that has two
> >                                     registers to start reading and
> >                                     another one to do a restart but I
> >                                     haven't seen anything like that.
> >
> >                                     I hope you can help me. Thank you
> >                                     very much in advance
> >
> >
> >
>  _______________________________________________
> >                                     USRP-users mailing list --
> >                                     usrp-users@lists.ettus.com
> >                                     To unsubscribe send an email to
> >                                     usrp-users-leave@lists.ettus.com
> >
> >                         _______________________________________________
> >                         USRP-users mailing list --
> >                         usrp-users@lists.ettus.com
> >                         To unsubscribe send an email to
> >                         usrp-users-leave@lists.ettus.com
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000064d9e505e818a934
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdiBkaXI9Imx0ciI+WW91IG1lbnRpb25lZCB0aGF0IHlvdXIgZXJy
b3IgaGFwcGVucyB3aGVuIHJ1bm5pbmcgZnJvbSBnbnVyYWRpby7CoCBXaGF0IGhhcHBlbnMgaWYg
eW91IHJlbW92ZSBnbnVyYWRpbyBmcm9tIHRoZSBlcXVhdGlvbiBhbmQgcnVuICZxdW90O3VoZF91
c3JwX3Byb2JlJnF1b3Q7PyBEbyB5b3Ugc3RpbGwgZ2V0IHRoZSBlcnJvcj88ZGl2PlJvYjwvZGl2
PjwvZGl2Pjxicj48ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+PGRpdiBkaXI9Imx0ciIgY2xhc3M9
ImdtYWlsX2F0dHIiPk9uIFdlZCwgU2VwIDcsIDIwMjIgYXQgMTA6MzEgQU0gUGlvdHIgS3J5c2lr
ICZsdDs8YSBocmVmPSJtYWlsdG86cGVycGVyQG8yLnBsIj5wZXJwZXJAbzIucGw8L2E+Jmd0OyB3
cm90ZTo8YnI+PC9kaXY+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFy
Z2luOjBweCAwcHggMHB4IDAuOGV4O2JvcmRlci1sZWZ0OjFweCBzb2xpZCByZ2IoMjA0LDIwNCwy
MDQpO3BhZGRpbmctbGVmdDoxZXgiPkhpIEFkcmnDoW4sPGJyPg0KPGJyPg0KVGhpcyBlcnJvciBt
ZWFuIHRoYXQgdGhlIGJsb2NrIGRpZG4mIzM5O3QgcmVzcG9uZCB0byBhIGNvbnRyb2wgbWVzc2Fn
ZSA8YnI+DQpkdXJpbmcgaW5pdGlhbGl6YXRpb24uPGJyPg0KPGJyPg0KSSYjMzk7dmUgc2VlbiBz
dWNoIGVycm9ycyB3aGVuIGVsZW1lbnQgb2YgUkZOb0MgZ3JhcGhzIHdhc24mIzM5O3Qgd29ya2lu
ZyBjb3JyZWN0bHkuPGJyPg0KVGhvc2Ugc2l0dWF0aW9ucyB3ZXJlIHdoZW46PGJyPg0KMS4gcmVw
bGF5IGJsb2NrIHdhc24mIzM5O3Qgd29ya2luZyBjb3JyZWN0bHkgZHVlIHRvIHdyb25nIGNsb2Nr
IGZvciBERFIgPGJyPg0KU0RSQU0gY29udHJvbGxlciBtb2R1bGUsPGJyPg0KMi4gSSByZW1vdmVk
IGltcGxlbWVudGF0aW9uIG9mIG9uZSBvZiBFdGhlcm5ldCBwb3J0cyAoaW4gb3JkZXIgdG8gZ2V0
IDxicj4NCnF1aWNrZXIgYnVpbGRzIGluIFZpdmFkbykgYnV0IGl0cyBlbmQtcG9pbnQgd2FzIGxl
ZnQgaW4gdGhlIFJGTm9DIGdyYXBoLiA8YnI+DQpTbyBpdCB3YXMgcHJvYmVkIGR1cmluZyBpbml0
aWFsaXphdGlvbiBidXQgdGhlcmUgd2FzIG5vdGhpbmcgdGhhdCBjb3VsZCA8YnI+DQpyZXNwb25k
Ljxicj4NCjxicj4NCkJlc3QgUmVnYXJkcyw8YnI+DQpQaW90ciBLcnlzaWs8YnI+DQo8YnI+DQpX
IGRuaXUgMDYuMDkuMjAyMiBvwqAxNDo1OSwgQWRyacOhbiBDYW1wb3MgUmFtb3MgcGlzemU6PGJy
Pg0KJmd0OyBISSBldmVyeW9uZTxicj4NCiZndDs8YnI+DQomZ3Q7IFRoYW5rIHlvdSB2ZXJ5IG11
Y2guIEkgbWFkZSBhIGNvbnRyb2xsZXIgYW5kLCBhY2NvcmRpbmcgdG8gdGhlIDxicj4NCiZndDsg
c2ltdWxhdGlvbiwgaXQmIzM5O3Mgd29ya2luZyBmaW5lLMKgYXQgbGVhc3QgYXMgSSB3YW50ZWQu
IEhvd2V2ZXIsIEkgYW0gPGJyPg0KJmd0OyBmYWNpbmcgcHJvYmxlbXMgdG8gaW1wbGVtZW50YXRl
IGluIHRoZSBmcGdhLiBUaGVyZSBpcyBub3QgcHJvYmxlbSB3aGVuIDxicj4NCiZndDsgaSBnZW5l
cmF0ZSB0aGUgLmJpdCBidWYgd2hlbiBpIGNhbGwgaW4gZ251cmFkaW8sIHRoaXMgZXJyb3IgYXBw
ZWFyczo8YnI+DQomZ3Q7PGJyPg0KJmd0OyBXQVJOSU5HXSBbVURQXSBUaGUgY3VycmVudCBzZW5k
X2J1ZmZfc2l6ZSBvZiAyMTI5OTIgaXMgbGVzcyB0aGFuIHRoZSA8YnI+DQomZ3Q7IG1pbmltdW0g
cmVjb21tZW5kZWQgc2l6ZSBvZiAzMDcyMDAgYW5kIG1heSByZXN1bHQgaW4gZHJvcHBlZCBwYWNr
ZXRzIDxicj4NCiZndDsgb24gc29tZSBOSUNzPGJyPg0KJmd0OyBbRVJST1JdIFtSRk5PQzo6R1JB
UEhdIEVycm9yIGR1cmluZyBpbml0aWFsaXphdGlvbiBvZiBibG9jayAwL0RtYUZJRk8jMCE8YnI+
DQomZ3Q7IFtFUlJPUl0gW1JGTk9DOjpHUkFQSF0gQ2F1Z2h0IGV4Y2VwdGlvbiB3aGlsZSBpbml0
aWFsaXppbmcgZ3JhcGg6IDxicj4NCiZndDsgUmZub2NFcnJvcjogT3BUaW1lb3V0OiBDb250cm9s
IG9wZXJhdGlvbiB0aW1lZCBvdXQgd2FpdGluZyBmb3IgQUNLPGJyPg0KJmd0OyBUcmFjZWJhY2sg
KG1vc3QgcmVjZW50IGNhbGwgbGFzdCk6PGJyPg0KJmd0OyDCoCBGaWxlIDxicj4NCiZndDsgJnF1
b3Q7L2hvbWUvaW50ZWdyYXN5cy9yZm5vYy9zcmMvdWhkL2ZwZ2EvdXNycDMvdG9wL2UzMjAvYnVp
bGQvdW50aXRsZWQucHkmcXVvdDssIDxicj4NCiZndDsgbGluZSAxODEsIGluICZsdDttb2R1bGUm
Z3Q7PGJyPg0KJmd0OyDCoCDCoCBtYWluKCk8YnI+DQomZ3Q7IMKgIEZpbGUgPGJyPg0KJmd0OyAm
cXVvdDsvaG9tZS9pbnRlZ3Jhc3lzL3Jmbm9jL3NyYy91aGQvZnBnYS91c3JwMy90b3AvZTMyMC9i
dWlsZC91bnRpdGxlZC5weSZxdW90OywgPGJyPg0KJmd0OyBsaW5lIDE1NywgaW4gbWFpbjxicj4N
CiZndDsgwqAgwqAgdGIgPSB0b3BfYmxvY2tfY2xzKCk8YnI+DQomZ3Q7IMKgIEZpbGUgPGJyPg0K
Jmd0OyAmcXVvdDsvaG9tZS9pbnRlZ3Jhc3lzL3Jmbm9jL3NyYy91aGQvZnBnYS91c3JwMy90b3Av
ZTMyMC9idWlsZC91bnRpdGxlZC5weSZxdW90OywgPGJyPg0KJmd0OyBsaW5lIDc2LCBpbiBfX2lu
aXRfXzxicj4NCiZndDsgwqAgwqAgc2VsZi5yZm5vY19ncmFwaCA9IGV0dHVzX3Jmbm9jX2dyYXBo
XzAgPSA8YnI+DQomZ3Q7IGV0dHVzLnJmbm9jX2dyYXBoKHVoZC5kZXZpY2VfYWRkcigmcXVvdDss
JnF1b3Q7LmpvaW4oKCZxdW90O2FkZHI9MTkyLjE2OC4xLjIzJnF1b3Q7LCAmIzM5OyYjMzk7KSkp
KTxicj4NCiZndDsgwqAgRmlsZSAmcXVvdDsvdXNyL2xvY2FsL2xpYi9weXRob24zL2Rpc3QtcGFj
a2FnZXMvZXR0dXMvZXR0dXNfc3dpZy5weSZxdW90OywgPGJyPg0KJmd0OyBsaW5lIDExNTMsIGlu
IG1ha2U8YnI+DQomZ3Q7IMKgIMKgIHJldHVybiBfZXR0dXNfc3dpZy5yZm5vY19ncmFwaF9tYWtl
KGRldl9hZGRyKTxicj4NCiZndDsgUnVudGltZUVycm9yOiBSdW50aW1lRXJyb3I6IEZhaWx1cmUg
dG8gY3JlYXRlIHJmbm9jX2dyYXA8YnI+DQomZ3Q7PGJyPg0KJmd0OyBJIGF0dGFjaGVkIG15IGlt
YWdlLnltbDo8YnI+DQomZ3Q7PGJyPg0KJmd0Ozxicj4NCiZndDsgVGhhbmtzIGluIGFkdmFuY2Uu
PGJyPg0KJmd0Ozxicj4NCiZndDsgRWwganVlLCAxIHNlcHQgMjAyMiBhIGxhcyAyMjoyNCwgV2Fk
ZSBGaWZlICgmbHQ7PGEgaHJlZj0ibWFpbHRvOndhZGUuZmlmZUBldHR1cy5jb20iIHRhcmdldD0i
X2JsYW5rIj53YWRlLmZpZmVAZXR0dXMuY29tPC9hPiZndDspIDxicj4NCiZndDsgZXNjcmliacOz
Ojxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqBUaGUgRFJBTSBvbiBVU1JQcyBpcyBoYWxmIGR1
cGxleCwgYnV0IHRoZSBBWEkgYnVzIGlzIGZ1bGwgZHVwbGV4LDxicj4NCiZndDvCoCDCoCDCoHdo
aWNoIG1ha2VzIHRoZSByZWFsIHdvcmxkIGJlaGF2aW9yIG1vcmUgY29tcGxpY2F0ZWQuIElmIHlv
dSB3YW50PGJyPg0KJmd0O8KgIMKgIMKgdG8gc2ltdWxhdGUgYWNjdXJhdGVseSBmb3IgYSBzcGVj
aWZpYyBVU1JQLCB5b3UgY291bGQgcHVsbCBpbiBpdHM8YnI+DQomZ3Q7wqAgwqAgwqBBWEkgaW50
ZXJjb25uZWN0LCB0aGUgWGlsaW54IG1lbW9yeSBpbnRlcmZhY2UgSVAsIGFuZCBhIERSQU08YnI+
DQomZ3Q7wqAgwqAgwqBzaW11bGF0aW9uIG1vZGVsLCB0aGVuIGNvbm5lY3QgaXQgdG9nZXRoZXIg
YW5kIG1hdGNoIHRoZSBVU1JQPGJyPg0KJmd0O8KgIMKgIMKgZGVzaWduIGV4YWN0bHksIGJ1dCB0
aGlzIGlzIGEgbG90IG9mIHdvcmsuIFRoZXJlIGFyZSBleGFtcGxlcyB0aGF0PGJyPg0KJmd0O8Kg
IMKgIMKgYXJlIHNpbWlsYXIgdG8gdGhpcyBpbiBmcGdhL3VzcnAzL3RvcC94MzAwL3NpbS9kcmFt
X2ZpZm8gYW5kPGJyPg0KJmd0O8KgIMKgIMKgZnBnYS91c3JwMy90b3AvbjN4eC9zaW0vZHJhbV9m
aWZvLiBUaGVyZSYjMzk7cyBubyBleGFtcGxlIGZvciBFMzIwLDxicj4NCiZndDvCoCDCoCDCoGJ1
dCB0aGUgaWRlYSBpcyBzaW1pbGFyLjxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqBXYWRlPGJy
Pg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoE9uIFRodSwgU2VwIDEsIDIwMjIgYXQgNTozOCBBTSBB
ZHJpw6FuIENhbXBvcyBSYW1vczxicj4NCiZndDvCoCDCoCDCoCZsdDs8YSBocmVmPSJtYWlsdG86
YWRyaWFuLmNhbXBvc0BpbnRlZ3Jhc3lzLXNhLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPmFkcmlhbi5j
YW1wb3NAaW50ZWdyYXN5cy1zYS5jb208L2E+Jmd0OyB3cm90ZTo8YnI+DQomZ3Q7PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgVGhhbmsgeW91IHZlcnkgbXVjaCEgSSB3YXMgdGVzdGluZyB0aGUgY29k
ZSBhbmQgSSBnb3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBzb21ldGhpbmcgc2ltaWxhciB0byB3
aGF0IEkgd2FudGVkLiBIb3dldmVyLCBpbiB0aGUgc2ltdWxhdGlvbjxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoHRoZSBzaW1fcmFtIGlzIGhhbGYgZHVwbGV4IGFuZCBteSBxdWVzdGlvbiBpcyBpZiB0
aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBpbXBsZW1lbnRhdGlvbiBpbiB0aGUgRlBHQSBpcyBh
bHNvIGhhbGYgb3IgZnVsbCBkdXBsZXguIEFuZCBpZjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGl0
IGlzIGZ1bGwsIGlzIHRoZXJlIGFueSB3YXkgdG8gc2ltdWxhdGU/PGJyPg0KJmd0Ozxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoFRoYW5rcyBpbiBhZHZhbmNlLjxicj4NCiZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqBBZHJpw6FuPGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoEVsIG1p
w6ksIDMxIGFnbyAyMDIyIGEgbGFzIDE2OjIyLCBXYWRlIEZpZmU8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAoJmx0OzxhIGhyZWY9Im1haWx0bzp3YWRlLmZpZmVAZXR0dXMuY29tIiB0YXJnZXQ9Il9i
bGFuayI+d2FkZS5maWZlQGV0dHVzLmNvbTwvYT4mZ3Q7KSBlc2NyaWJpw7M6PGJyPg0KJmd0Ozxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoE9VVF9GSUZPX1NJWkUgc2V0cyB0aGUgc2l6ZSBv
ZiB0aGUgRklGTyB1c2VkIHRvIGJ1ZmZlcjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGRh
dGEgcmVhZCBmcm9tIHRoZSBleHRlcm5hbCBEUkFNLiBCdXQgdGhlIHVuaXQgZm9yIHRoaXM8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBwYXJhbWV0ZXIgaXMgbG9nIGJhc2UgMiBvZiB0aGUg
c2l6ZS4gU28sIHNldHRpbmcgaXQgdG8gMjA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBt
ZWFucyB0aGUgb3V0cHV0IEZJRk8gd2lsbCBiZSAyXjIwIHdvcmRzIG9yIDggTWlCPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgaW1wbGVtZW50ZWQgaW4gQlJBTSwgd2hpY2ggaXMgdG9vIGJp
ZyBmb3IgdGhlIEZQR0EgdG88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBzdXBwb3J0LiBZ
b3Ugc2hvdWxkIHByb2JhYmx5IGxlYXZlIGl0IGF0IHRoZSBkZWZhdWx0PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgdmFsdWUuIFRoZSBhbW91bnQgb2YgRFJBTSB0byB1c2UgZm9yIHRoZSBG
SUZPIGNhbiBiZSBzZXQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBieSB0aGUgRklGT19B
RERSX01BU0sgcGFyYW1ldGVyLjxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqBJdCBzaG91bGQgYmVoYXZlIGxpa2UgYSB0cnVlIEZJRk8uIFNvIGFueXRoaW5nIHlvdSB3cml0
ZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHRvIHRoZSBpbnB1dCB3aWxsIGNvbWUgb3V0
IG9uIHRoZSBvdXRwdXQsIGJ1dCB5b3UgY2FuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
YnVmZmVyIHVwIHRvIHRoZSBzaXplIG9mIHRoZSBtZW1vcnkgeW91IGhhdmUgY29uZmlndXJlZC48
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBJJiMzOTttIG5vdCBzdXJlIEkgdW5kZXJzdGFu
ZCB5b3VyIGFwcGxpY2F0aW9uIGV4YWN0bHksIGJ1dCBpZjxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoHlvdSBvbmx5IHdhbnQgdG8gY2FwdHVyZSBhdCBhIHNwZWNpZmljIHRpbWUsIHRoZW4g
eW91PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgc2hvdWxkIGFkZCBsb2dpYyB0byBvbmx5
IHdyaXRlIHRoZSBkYXRhIHRvIHRoZSBpbnB1dCBvZjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoHRoZSBGSUZPIGR1cmluZyB0aG9zZSB0aW1lcyBhbmQgdGFrZSBjYXJlIHRvIGhhbmRsZTxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoG92ZXJmbG93IHdoZW4gdGhlIEZJRk8gZmlsbHMu
IEFuZCBhZGQgbG9naWMgb24gdGhlIG91dHB1dDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oHRvIG9ubHkgcmVhZCB3aGVuIHlvdSB3YW50LCB0YWtpbmcgY2FyZSB0byBoYW5kbGU8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB1bmRlcmZsb3cgd2hlbiB0aGUgRklGTyBlbXB0aWVzLjxi
cj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBXYWRlPGJyPg0KJmd0Ozxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoE9uIFdlZCwgQXVnIDMxLCAyMDIyIGF0IDQ6NDIgQU0g
QWRyacOhbiBDYW1wb3MgUmFtb3M8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7PGEg
aHJlZj0ibWFpbHRvOmFkcmlhbi5jYW1wb3NAaW50ZWdyYXN5cy1zYS5jb20iIHRhcmdldD0iX2Js
YW5rIj5hZHJpYW4uY2FtcG9zQGludGVncmFzeXMtc2EuY29tPC9hPiZndDsgd3JvdGU6PGJyPg0K
Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoEhpLDxicj4NCiZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBUaGFuayB5b3UgdmVyeSBtdWNoLCBub3cg
SSB1bmRlcnN0YW5kIGhvdyBpdCB3b3JrcyBhbmQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBpdCBydW5zIHBlcmZlY3RseS4gSG93ZXZlciwgaXQmIzM5O3Mgbm90IHdoYXQgSSBl
eHBlY3RlZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHNpbmNlIGl0IGRvZXMg
bm90IEZJRk8gYmVoYXZpb3VyLCBvciBJJiMzOTttPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgZG9pbmfCoHNvbWV0aGluZyB3cm9uZy4gV2hhdCBJIG5lZWQgaXMgYSBGSUZPIHRo
YXQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBzdG9yZXMgdGhlIGRhdGEgb2Yg
YSBzaWduYWwgd2hlbiBJIGFjdGl2YXRlIGEgZmxhZyBhbmQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqByZWFkcyB3aGVuIEkgYWN0aXZhdGUgYW5vdGhlciBmbGFnIGNvbnRpbnVv
dXNseSBhbmQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBjb25zdGFudGx5LiBD
dXJyZW50bHksIEkgaGF2ZSB0aGUgRklGTyBpbXBsZW1lbnRlZCBpbjxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoHRoZSBGUEdBIGJ1dCBpdCB0YWtlcyB0b28gbXVjaCByZXNvdXJj
ZXMgwqBzbyBJIHdhbnQgdG88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB0YWtl
IGFkdmFudGFnZSBvZiB0aGUgRTMyMCBSQU0uIEkgdGhpbmsgdGhlPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgYXhpX3JhbV9maWZvIHdvdWxkIGJlIHBlcmZlY3QgZm9yIG15IHBy
b2plY3QgYnV0IGFzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZmFyIGkgY2Fu
IHNlZSwgd2hlbiBzcGFjZSA9IDAgYW5kIG9jY3VwaWVkIGlzIGZ1bGwsIGl0PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgc3RhcnRzIHRvIGxvc2UgdGhlIGNvbnRpbnVpdHkuIE9u
wqB0aGUgb3RoZXIgaGFuZCwgSTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGRv
biYjMzk7dCBrbm93IHdoeSBidXQgSSBjYW4mIzM5O3TCoCBpbmNyZWFzZSB0aGU8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBGSUZPX09VVF9TSVpFLiBXaXRoIDEwIHRoZXJlIGFy
ZSBvdXRwdXRzIGJ1dCBpZiBpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaW5j
cmVhc2UsIGZvciBleGFtcGxlLCB0byAyMCBpdCBkb2VzbiYjMzk7dC48YnI+DQomZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgSSBhdHRhY2hlZCBhIHBob3RvIG9mIHRoZSBi
ZWhhdmlvciBvZsKgdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaW5wdXRf
Zmlmby9maWZvX3JhbS9yYW0uPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcDEu
cG5nPGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoEVsIG1hciwg
MzAgYWdvIDIwMjIgYSBsYXMgMTk6NTQsIFdhZGUgRmlmZTxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCgmbHQ7PGEgaHJlZj0ibWFpbHRvOndhZGUuZmlmZUBldHR1cy5jb20iIHRh
cmdldD0iX2JsYW5rIj53YWRlLmZpZmVAZXR0dXMuY29tPC9hPiZndDspIGVzY3JpYmnDszo8YnI+
DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgSGVsbG8gQWRy
acOhbiw8YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
UkVHX0ZJRk9fRlVMTE5FU1MgaXMgdGhlIG51bWJlciBvZiBieXRlcyBjdXJyZW50bHk8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBzdG9yZWQgaW4gdGhlIFJBTSBvZiB0
aGUgRklGTy48YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgRklGT19BRERSX1cgaXMgYSB0ZXN0YmVuY2ggcGFyYW1ldGVyIHRoYXQgZGVmaW5lczxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHRoZSBhbW91bnQgb2YgbWVtb3J5
IGFkZHJlc3Mgc3BhY2UgdG8gdXNlIGZvciB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqBzaW11bGF0ZWQgRklGT3MuIFRoZSB1bm1vZGlmaWVkIHRlc3RiZW5jaCB1
c2VzIGE8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBzaW5nbGUgbWVt
b3J5IHRvIHRlc3QgdHdvIEZJRk9zLiBTbyB0aGUgc3VtIG9mIHRoZTxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoG1lbW9yeSB1c2VkIGJ5IGJvdGggRklGT3MgbXVzdCBi
ZSBsZXNzIHRoYW4gdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
c2l6ZSBvZiB0aGUgbWVtb3J5IGJlaW5nIHNpbXVsYXRlZCBpbiBvcmRlciBmb3I8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB0aGUgdGVzdGJlbmNoIHRvIHdvcmsgKGku
ZS4sIDIgKiAyKipGSUZPX0FERFJfVzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoG11c3Qgbm90IGV4Y2VlZCAyKipNRU1fQUREUl9XKS48YnI+DQomZ3Q7PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgSU5fRklGT19TSVpFIGFuZCBPVVRfRklG
T19TSVpFIGNvbnRyb2wgdGhlIHNpemUgb2Y8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqB0aGUgaW5wdXQvb3V0cHV0IGJ1ZmZlcnMgdXNlZCBieSB0aGUgYmxvY2suIFRo
ZXk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBjYW4gYWZmZWN0IHRo
ZSBwZXJmb3JtYW5jZSBvZiB0aGUgRklGTywgYnV0IG11c3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqBiZSBsYXJnZSBlbm91Z2ggdG8gaG9sZCB0d28gb2YgdGhlIGV4
cGVjdGVkIGJ1cnN0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgbWVt
b3J5IHRyYW5zZmVyIHNpemUsIHdoaWNoIEkgdGhpbmsgaXMgNTEyIHdvcmRzLjxicj4NCiZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBUaGUgdGVzdGJlbmNoIGlz
IGZhaWxpbmcgYmVjYXVzZSBpdCBleHBlY3RzIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoEZJRk8gdG8gYmUgZW1wdHkgd2hlbiB0aGUgc2ltdWxhdGlvbiBiZWdp
bnMuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgUGVyaGFwcyB5b3Ug
aGF2ZSBzdGFydGVkIGlucHV0dGluZyB2YWx1ZXMgYmVmb3JlPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgaXQgd2FzIGV4cGVjdGluZyB5b3UgdG8/PGJyPg0KJmd0Ozxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoFdhZGU8YnI+DQomZ3Q7PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgT24gVHVlLCBBdWcgMzAsIDIw
MjIgYXQgMzoxMyBBTSBBZHJpw6FuIENhbXBvczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoFJhbW9zICZsdDs8YSBocmVmPSJtYWlsdG86YWRyaWFuLmNhbXBvc0BpbnRl
Z3Jhc3lzLXNhLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPmFkcmlhbi5jYW1wb3NAaW50ZWdyYXN5cy1z
YS5jb208L2E+Jmd0OyB3cm90ZTo8YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgSGkgZXZlcnlvbmUsPGJyPg0KJmd0Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoEZpcnN0IG9mIGFsbCwgdGhhbmsgeW91
IHZlcnkgbXVjaCBSb2IgS29zc2xlcjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoGZvciB0aGUgZXhwbGFuYXRpb24uIEkgbWFkZSBhICZxdW90O2NvbnRyb2xs
ZXImcXVvdDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB0
aGF0IHNlbmRzIGFuZCByZWNlaXZlcyBpbmZvcm1hdGlvbiBhdCBjZXJ0YWluPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcG9pbnRzIGluIHRpbWUuIEhvd2V2
ZXIsIEkgYW0gZmFjaW5nIHByb2JsZW1zPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgaW4gcmVsYXRpb24gdG/CoFJFR19GSUZPX0ZVTExORVNTLiBJJiMzOTt2
ZSBiZWVuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgY2hh
bmdpbmcgdGhlIHZhbHVlcyBvZiBGSUZPX0FERFJfVyw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBJTl9GSUZPX1NJWkUgYW5kIE9VVF9GSUZPX1NJWkUgYnV0
IGl0IGRpZG4mIzM5O3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqB3b3JrLiBGdXJ0aGVybW9yZSwgSSBkb24mIzM5O3TCoHVuZGVyc3RhbmQgdGhlPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcHJvYmxlbSBhdCBhbGws
IGlzIHRoZSBpbnB1dCBmaWZvIG9yIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoG91dHB1dCBmaWZvPyBvciB0aGUgcmFtPy4gVGhlIGNvbnRyb2xsZXI8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBtZW50aW9uZWQg
YmVmb3JlIGhhcyBvbmx5IHR3byBjb3VudGVycywgb25lIHRvPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgYWN0aXZhdGUgdGhlIHZhbGlkIGZsYWcgdG8gc2Vu
ZCBpbmZvcm1hdGlvbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoGFuZCBhbm90aGVyIHRvIGFjdGl2YXRlIHRoZSByZWFkeSBmbGFnIHRvPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcmVjZWl2ZcKgdGhlIGluZm9ybWF0
aW9uIGFuZCwgYXMgZmFyIGkgY291bGQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqBzZWUsIGl0IHdhcyB3b3JraW5nIHVudGlsIHRoZSBhc3NlcnQuPGJyPg0K
Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoFRoaXMg
aXMgdGhlIGVycm9yIHRoYXQgcmV0dXJucyBtZSB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBzaW11bGF0aW9uICh0aGUgbnVtYmVyIHRoYXQgYXBwZWFy
cyBpbiB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBp
bWFnZSBpcyBmb3I6wqBgQVNTRVJUX0VSUk9SKHZhbDY0ID09IDAsPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgJHNmb3JtYXRmKCZxdW90O0luY29ycmVjdCBS
RUdfRklGT19GVUxMTkVTUyB2YWx1ZSE8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAlZCZxdW90Oyx2YWw2NCkpOzxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBTY3JlZW5zaG90IGZyb20gMjAyMi0wOC0z
MCAxMC0xMC01Mi5wbmc8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBPbiB0aGUgb3RoZXIgaGFuZCwgdGhlIGRhdGEgdGhhdCBJIHNlbmTCoHRvIFJBTTxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlzIHRoZSB2YWx1ZSBv
ZiBhIGNvdW50ZXIuPGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoEkgaG9wZSB5b3UgY2FuIGhlbHAgbWUuIFRoYW5rcyBpbiBhZHZhbmNlLjxi
cj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBB
ZHJpw6FuIENhbXBvczxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqBFbCBqdWUsIDE4IGFnbyAyMDIyIGEgbGFzIDIyOjQ5LCBSb2IgS29zc2xl
cjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCgmbHQ7PGEg
aHJlZj0ibWFpbHRvOnJrb3NzbGVyQG5kLmVkdSIgdGFyZ2V0PSJfYmxhbmsiPnJrb3NzbGVyQG5k
LmVkdTwvYT4mZ3Q7KSBlc2NyaWJpw7M6PGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoFJlcGxhY2UgJnF1b3Q7dXBzdHJlYW0mcXVv
dDsgd2l0aCAmcXVvdDtkb3duc3RyZWFtJnF1b3Q7IGJlbG93Ljxicj4NCiZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBPbiBUaHUsIEF1ZyAx
OCwgMjAyMiBhdCAxOjI4IFBNIFJvYjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoEtvc3NsZXIgJmx0OzxhIGhyZWY9Im1haWx0bzpya29zc2xlckBu
ZC5lZHUiIHRhcmdldD0iX2JsYW5rIj5ya29zc2xlckBuZC5lZHU8L2E+Jmd0OyB3cm90ZTo8YnI+
DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgSGkgQWRyaWFuLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoEFzIHlvdSBpbmRpY2F0ZWQsIHRoZSBSRk5vQyBibG9ja3M8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBheGlfcmFtX2ZpZm8gYW5kIFJlbGF5IGJvdGggdXNlIHRoZTxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoEZQR0EgUkFNLsKgIGF4aV9y
YW1fZmlmbyBkb2VzbiYjMzk7dCBuZWVkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgYW55IHJlZ2lzdGVycyBmb3IgY29udHJvbCBiZWNh
dXNlIGl0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKganVzdCBhY2NlcHRzIGFuIEFYSSBzdHJlYW0gb24gdGhlPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaW5wdXQgYW5kIGZv
cndhcmRzIHRoYXQgZXhhY3Qgc3RyZWFtPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgb24gdGhlIG91dHB1dC4gVGhlICZxdW90O2NvbnRy
b2wmcXVvdDsgaXMgaW4gdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgQVhJIHR2YWxpZC90cmVhZHkgaGFuZHNoYWtpbmcuIFRodXMs
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgaWYgdGhlIHVwc3RyZWFtIGJsb2NrIGlzIG5vdCByZWFkeSw8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB0aGUgRklGTyBzdGFydHMg
ZmlsbGluZyB1cCBidXQgZG9lczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoG5vdCBlbXB0eSB1bnRpbCB0aGUgdXBzdHJlYW0gYmxvY2sg
aXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqByZWFkeS7CoCBCdXQsIGZvciB0aGUgUmVwbGF5IGJsb2NrLDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHRoaXMgYmxvY2sgc3Rv
cmVzIHRoZSBpbmNvbWluZyBzdHJlYW08YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB0byBSQU0gdW50aWwgeW91IGxhdGVyIGRlY2lkZSB0
byBwbGF5PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgaXQgb3V0LsKgIEl0IGNhbiBiZSB1c2VkIGluIHRoZTxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHRyYW5zbWl0IHBhdGgg
dG8gbG9hZCBhIHdhdmVmb3JtIGludG88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBSQU0gc3VjaCB0aGF0IGl0IGNhbiBiZSBwbGF5ZWQg
b3V0IHRvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgdGhlIFR4IFJhZGlvIHdpdGhvdXQgYW55IGhlbHAgZnJvbSB0aGU8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBob3N0IFBD
LsKgIE9yLCBpdCBjYW4gYmUgdXNlZCBpbiB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqByZWNlaXZlIHBhdGggdG8gc3RvcmUgcmVj
ZWl2ZSBzYW1wbGVzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgYXMgdGhleSBhcnJpdmUgKHVwIHRvIHRoZSBnaXZlbiBSQU08YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBtZW1v
cnkgZGVwdGgpIGFuZCB0aGVuIGxhdGVyPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZG93bmxvYWRlZCAocGxheWVkIG91dCkgdG8gdGhl
IGhvc3QgUEM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBpbiBub24tcmVhbHRpbWUuPGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoFdoaWxlIEkgZG9uJiMzOTt0
IGtub3cgeW91ciBzcGVjaWZpYzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoGFwcGxpY2F0aW9uLCBJIHdvbmRlcmVkIGlmIHRoZSBSZXBs
YXk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBibG9jayAob3IgdGhlIGF4aV9yYW1fZmlmbykgY2FuPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgYWxyZWFkeSBpbXBsZW1lbnQg
eW91ciBkZXNpcmVkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgZnVuY3Rpb25hbGl0eSBzdWNoIHRoYXQgYSBjdXN0b20gYmxvY2s8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBp
cyBub3QgbmVlZGVkLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoFJvYjxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBPbiBUaHUsIEF1ZyAxOCwgMjAyMiBhdCA4
OjI1IEFNPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgJmx0OzxhIGhyZWY9Im1haWx0bzphZHJpYW4uY2FtcG9zQGludGVncmFzeXMtc2Eu
Y29tIiB0YXJnZXQ9Il9ibGFuayI+YWRyaWFuLmNhbXBvc0BpbnRlZ3Jhc3lzLXNhLmNvbTwvYT4m
Z3Q7IHdyb3RlOjxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBJIGFtIG1ha2luZyBhIGN1c3RvbSBibG9jayB3
aGljaDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoGhhcyB0byBzdGFydCBzdG9yaW5nIGRhdGEgdG8gYmU8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqByZWFk
IGxhdGVyLCBpbiBvdGhlciB3b3JkcyBzdG9yZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHRoZSBkYXRhIGluIGEgRklGTy4g
SSBhbTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoGludGVyZXN0ZWQgaW4gdXNpbmcgdGhlIFJBTTxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHByb3ZpZGVk
IGJ5IHRoZSBFMzIwIHNvIEkgd2FudCB0bzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHRha2UgYWR2YW50YWdlIG9mIHRoZSBh
eGlfcmFtX2ZpZm88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqBjb2RlLiBIb3dldmVyLCBJIGRvbiYjMzk7dCByZWFsbHk8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqB1bmRlcnN0YW5kIHRoZSBjb250cm9sIG9mIHRoYXQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBibG9jaywgaG93IGNh
biBJIGNvbnRyb2wgd2hlbiB0bzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHN0YXJ0IHdyaXRpbmcgZGF0YSB0byBtZW1vcnkg
YW5kPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgd2hlbiB0byBzdGFydCByZWFkaW5nIGl0PyBJIGhhdmU8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBjaGVj
a2VkIHRoZSByZWdpc3RlcnMgaW4gY2FzZSBpdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGNvdWxkIGJlIGNvbnRyb2xsZWQg
ZnJvbSB0aGVyZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoGxpa2UgdGhlIHJlcGxheSBibG9jayB0aGF0IGhhcyB0d288YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqByZWdpc3RlcnMgdG8gc3RhcnQgcmVhZGluZyBhbmQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBhbm90aGVyIG9uZSB0
byBkbyBhIHJlc3RhcnQgYnV0IEk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBoYXZlbiYjMzk7dCBzZWVuIGFueXRoaW5nIGxp
a2UgdGhhdC48YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgSSBob3BlIHlvdSBjYW4gaGVscCBtZS4gVGhhbmsg
eW91PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgdmVyeSBtdWNoIGluIGFkdmFuY2U8YnI+DQomZ3Q7PGJyPg0KJmd0Ozxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS08YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8YSBocmVmPSJtYWlsdG86dXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj51c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgPGEgaHJlZj0ibWFpbHRvOnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tIiB0
YXJnZXQ9Il9ibGFuayI+dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0K
Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS08YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8YSBocmVm
PSJtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj51c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPGEgaHJlZj0ibWFpbHRvOnVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+dXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0Ozxicj4NCiZndDs8YnI+DQomZ3Q7
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPGJyPg0KJmd0
OyBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSA8YSBocmVmPSJtYWlsdG86dXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj51c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bTwvYT48YnI+DQomZ3Q7IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gPGEgaHJlZj0i
bWFpbHRvOnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+
dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KPGJyPg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX188YnI+DQpVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdCAtLSA8YSBocmVmPSJtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20i
IHRhcmdldD0iX2JsYW5rIj51c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIDxhIGhyZWY9Im1haWx0bzp1c3JwLXVzZXJzLWxl
YXZlQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tPC9hPjxicj4NCjwvYmxvY2txdW90ZT48L2Rpdj48L2Rpdj4NCg==
--00000000000064d9e505e818a934--

--===============5074989809817627137==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5074989809817627137==--
